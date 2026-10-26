Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_stl_bind_vector?download=true
inline.NumInlined: 4430
inline.NumDeleted: 1793
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN8nanobind6detail7op_implILNS0_5op_idE25ELNS0_7op_typeE0ESt6vectorIjSaIjEES6_S6_E7executeERKS6_S9_:bb.a
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.c, ptr %i.i, i64 %i.f)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSteqIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit

_ZSteqIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.a, %bb.b, %bb.c
  %i.n = phi i1 [ false, %bb.a ], [ %.not9.i.i.i.i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIjSaIjEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSN_jPNS0_12cleanup_listEE_8__invokeES11_S12_jS14_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.173", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIjSaIjEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIjSaIjEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSN_jPNS0_12cleanup_listEE_clES11_S12_jS14_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -43
  %i.i = or disjoint i32 %i.h, 8
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.j, ptr noundef nonnull @_ZTISt6vectorIjSaIjEE, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIjSaIjEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSN_jPNS0_12cleanup_listEE_clES11_S12_jS14_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !96
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.n = load ptr, ptr %4, align 8, !tbaa !73
  %i.o = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n) #29, !inline_history !289
  %spec.select.i = select i1 %i.o, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIjSaIjEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSN_jPNS0_12cleanup_listEE_clES11_S12_jS14_.exit

_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIjSaIjEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSN_jPNS0_12cleanup_listEE_clES11_S12_jS14_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %spec.select.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZNK8nanobind6detail3op_ILNS0_5op_idE26ELNS0_7op_typeE0ENS0_6self_tES4_E7executeINS_6class_ISt6vectorIjSaIjEEJEEEJNS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEvRT_DpRKT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
_ZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIjSaIjEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_.exit:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %5 = alloca %"struct.nanobind::detail::func_data_init.131", align 8 ; 14 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr @_ZTISt6vectorIjSaIjEE, ptr %i.a, align 16, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZTISt6vectorIjSaIjEE, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 16, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @_ZN8nanobind6detail7op_implILNS0_5op_idE26ELNS0_7op_typeE0ESt6vectorIjSaIjEES6_S6_E7executeERKS6_S9_, ptr %5, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIjSaIjEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSN_jPNS0_12cleanup_listEE_8__invokeES11_S12_jS14_, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIjSaIjEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr, ptr %i.f, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.a, ptr %i.g, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 60
  store <2 x i16> splat (i16 2), ptr %i.h, align 4, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i32 0, ptr %i.l, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.k, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 4683, ptr %i.d, align 8, !tbaa !47
  %i.n = load ptr, ptr %2, align 8, !tbaa !62
  store ptr %i.n, ptr %i.m, align 8, !tbaa !46
  %i.o = load <2 x ptr>, ptr %4, align 8, !tbaa !51
  store <2 x ptr> %i.o, ptr %i.i, align 8, !tbaa !51
  store ptr null, ptr %i.j, align 8, !tbaa !55
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.q = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.p, ptr noundef nonnull %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail7op_implILNS0_5op_idE26ELNS0_7op_typeE0ESt6vectorIjSaIjEES6_S6_E7executeERKS6_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !67     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.f, %i.l
  br i1 %i.m, label %bb.b, label %_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit

bb.b:                                             ; preds = %bb.a
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.not.i.i.i.i.i.i, label %_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.c, ptr %i.i, i64 %i.f)
  %.not9.i.i.i.i.i.i = icmp ne i32 %bcmp.i.i.i.i.i.i, 0
  br label %_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit

_ZStneIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.a, %bb.b, %bb.c
  %i.n = phi i1 [ true, %bb.a ], [ %.not9.i.i.i.i.i.i, %bb.c ], [ false, %bb.b ]
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKjE_bJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.154", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIjSaIjEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKjE_bJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail8load_u32EPNS0_12nb_internalsEP7_objectjPj(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %4) #28
  br i1 %i.j, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKjE_bJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.o = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops16_Iter_equals_valIS2_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr %i.l, ptr %i.n, ptr nonnull align 4 dereferenceable(4) %4) #29
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !64
  %.not = icmp eq ptr %i.o, %i.p
  %spec.select.i = select i1 %.not, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKjE_bJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKjE_bJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %spec.select.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS0_5__ops16_Iter_equals_valIS2_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 4                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i32, ptr %2, align 4, !tbaa !33     ; 4 uses
  %i.g = and i64 %i.c, -16
  %scevgep = getelementptr i8, ptr %0, i64 %i.g   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.052 = phi i64 [ %i.d, %.lr.ph ], [ %i.t, %bb.f ] ; 2 uses
  %.sroa.032.051 = phi ptr [ %0, %.lr.ph ], [ %i.s, %bb.f ] ; 9 uses
  %i.h = load i32, ptr %.sroa.032.051, align 4, !tbaa !33
  %i.i = icmp eq i32 %i.h, %i.f
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33
  %i.l = icmp eq i32 %i.k, %i.f
  br i1 %i.l, label %.loopexit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %i.o = icmp eq i32 %i.n, %i.f
  br i1 %i.o, label %.loopexit.loopexit.split.loop.exit65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !33
  %i.r = icmp eq i32 %i.q, %i.f
  br i1 %i.r, label %.loopexit.loopexit.split.loop.exit67, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16
  %i.t = add nsw i64 %.052, -1
  %3 = icmp samesign ugt i64 %.052, 1
  br i1 %3, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !290

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre59 = ptrtoint ptr %scevgep to i64
  %.pre60 = sub i64 %i.a, %.pre59
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi61 = phi i64 [ %.pre60, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.032.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 5 uses
  %i.u = ashr exact i64 %.pre-phi61, 2
  switch i64 %i.u, label %.loopexit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge57
  ]

._crit_edge._crit_edge57:                         ; preds = %._crit_edge
  %.pre58 = load i32, ptr %2, align 4, !tbaa !33
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %2, align 4, !tbaa !33
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.v = load i32, ptr %.sroa.032.0.lcssa, align 4, !tbaa !33
  %i.w = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %i.z = phi i32 [ %i.w, %bb.h ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.032.1 = phi ptr [ %i.y, %bb.h ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge ] ; 3 uses
  %i.aa = load i32, ptr %.sroa.032.1, align 4, !tbaa !33
  %i.ab = icmp eq i32 %i.aa, %i.z
  br i1 %i.ab, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 4
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge57, %bb.j
  %i.ad = phi i32 [ %i.z, %bb.j ], [ %.pre58, %._crit_edge._crit_edge57 ]
  %.sroa.032.2 = phi ptr [ %i.ac, %bb.j ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge57 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.032.2, align 4, !tbaa !33
  %i.af = icmp eq i32 %i.ae, %i.ad
  %spec.select = select i1 %i.af, ptr %.sroa.032.2, ptr %1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 4
  br label %.loopexit

.loopexit.loopexit.split.loop.exit65:             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  br label %.loopexit

.loopexit.loopexit.split.loop.exit67:             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit65, %.loopexit.loopexit.split.loop.exit67, %bb.k, %._crit_edge, %bb.i, %bb.g
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.032.1, %bb.i ], [ %spec.select, %bb.k ], [ %1, %._crit_edge ], [ %.sroa.032.0.lcssa, %bb.g ], [ %i.ai, %.loopexit.loopexit.split.loop.exit67 ], [ %i.ag, %.loopexit.loopexit.split.loop.exit ], [ %i.ah, %.loopexit.loopexit.split.loop.exit65 ], [ %.sroa.032.051, %bb.b ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_SB_E_bJSI_SB_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSO_jPNS0_12cleanup_listEE_8__invokeES12_S13_jS15_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_SB_E_bJSI_SB_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSO_jPNS0_12cleanup_listEE_clES12_S13_jS15_.exit:
  %4 = alloca %"struct.nanobind::detail::tuple.222", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr null, ptr %4, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIjSaIjEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  %spec.select = select i1 %i.e, ptr @_Py_FalseStruct, ptr inttoptr (i64 1 to ptr)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %spec.select
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKjE0_lJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSS_jPNS0_12cleanup_listEE_8__invokeES16_S17_jS19_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.154", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIjSaIjEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKjE0_lJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail8load_u32EPNS0_12nb_internalsEP7_objectjPj(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %4) #28
  br i1 %i.j, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKjE0_lJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not5.i.i.i, label %_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKjE0_clESG_SI_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.o = load i32, ptr %4, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %bb.d ]
  %.sroa.03.06.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %i.p = load i32, ptr %.sroa.03.06.i.i.i, align 4, !tbaa !33
  %i.q = icmp eq i32 %i.p, %i.o
  %i.r = zext i1 %i.q to i64
  %spec.select.i.i.i = add nuw nsw i64 %.07.i.i.i, %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i.i.i, label %_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKjE0_clESG_SI_.exit, label %bb.d, !llvm.loop !291

_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKjE0_clESG_SI_.exit: ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %spec.select.i.i.i, %bb.d ]
  %i.t = invoke ptr @PyLong_FromLong(i64 noundef %.0.lcssa.i.i.i) #29
          to label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKjE0_lJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKjE0_clESG_SI_.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKjE0_lJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit: ; preds = %_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKjE0_clESG_SI_.exit, %bb.a, %bb.b
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ], [ %i.t, %_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKjE0_clESG_SI_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKjE0_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.154", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIjSaIjEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKjE0_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail8load_u32EPNS0_12nb_internalsEP7_objectjPj(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %4) #28
  br i1 %i.j, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKjE0_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.o = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops16_Iter_equals_valIKjEEET_SB_SB_T0_St26random_access_iterator_tag(ptr %i.l, ptr %i.n, ptr nonnull align 4 dereferenceable(4) %4) #29 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !64   ; 6 uses
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !64   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.p
  br i1 %.not.i.i.i, label %_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKjE0_clESF_SH_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp sgt i64 %i.y, 4
  br i1 %i.z, label %bb.f, label %bb.g, !prof !69

bb.f:                                             ; preds = %bb.e
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr nonnull align 4 %i.v, i64 %i.y, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !68
  br label %_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKjE0_clESF_SH_.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp eq i64 %i.y, 4
  br i1 %i.aa, label %bb.h, label %_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKjE0_clESF_SH_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !33
  store i32 %i.ab, ptr %i.u, align 4, !tbaa !33
  br label %_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKjE0_clESF_SH_.exit

bb.i:                                             ; preds = %bb.c
  %i.ac = call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  invoke void @_ZN8nanobind11value_errorEPKc(ptr dead_on_unwind writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %i.ac, ptr noundef null) #29
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_throw(ptr %i.ac, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.ac) #30
  resume { ptr, i32 } %i.ad

_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKjE0_clESF_SH_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  %i.ae = phi ptr [ %i.p, %bb.h ], [ %i.p, %bb.g ], [ %.pre.i.i.i, %bb.f ], [ %i.p, %bb.d ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4
  store ptr %i.af, ptr %i.m, align 8, !tbaa !68
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKjE0_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKjE0_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.a, %bb.b, %_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKjE0_clESF_SH_.exit
  %.0.i = phi ptr [ @_Py_NoneStruct, %_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKjE0_clESF_SH_.exit ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind11value_errorEPKc(ptr dead_on_unwind noalias writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %0, ptr noundef %1) local_unnamed_addr #12 comdat {
bb.a:
  %.not.i = icmp eq ptr %1, null
  %i.a = select i1 %.not.i, ptr @.str.1, ptr %1
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %i.a) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi117builtin_exceptionE, i64 16), ptr %0, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 4, ptr %i.b, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops16_Iter_equals_valIKjEEET_SB_SB_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 4                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i32, ptr %2, align 4, !tbaa !33     ; 4 uses
  %i.g = and i64 %i.c, -16
  %scevgep = getelementptr i8, ptr %0, i64 %i.g   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.052 = phi i64 [ %i.d, %.lr.ph ], [ %i.t, %bb.f ] ; 2 uses
  %.sroa.032.051 = phi ptr [ %0, %.lr.ph ], [ %i.s, %bb.f ] ; 9 uses
  %i.h = load i32, ptr %.sroa.032.051, align 4, !tbaa !33
  %i.i = icmp eq i32 %i.h, %i.f
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33
  %i.l = icmp eq i32 %i.k, %i.f
  br i1 %i.l, label %.loopexit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %i.o = icmp eq i32 %i.n, %i.f
  br i1 %i.o, label %.loopexit.loopexit.split.loop.exit65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !33
  %i.r = icmp eq i32 %i.q, %i.f
  br i1 %i.r, label %.loopexit.loopexit.split.loop.exit67, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16
  %i.t = add nsw i64 %.052, -1
  %3 = icmp samesign ugt i64 %.052, 1
  br i1 %3, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !292

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre59 = ptrtoint ptr %scevgep to i64
  %.pre60 = sub i64 %i.a, %.pre59
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi61 = phi i64 [ %.pre60, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.032.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 5 uses
  %i.u = ashr exact i64 %.pre-phi61, 2
  switch i64 %i.u, label %.loopexit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge57
  ]

._crit_edge._crit_edge57:                         ; preds = %._crit_edge
  %.pre58 = load i32, ptr %2, align 4, !tbaa !33
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %2, align 4, !tbaa !33
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.v = load i32, ptr %.sroa.032.0.lcssa, align 4, !tbaa !33
  %i.w = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %i.z = phi i32 [ %i.w, %bb.h ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.032.1 = phi ptr [ %i.y, %bb.h ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge ] ; 3 uses
  %i.aa = load i32, ptr %.sroa.032.1, align 4, !tbaa !33
  %i.ab = icmp eq i32 %i.aa, %i.z
  br i1 %i.ab, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 4
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge57, %bb.j
  %i.ad = phi i32 [ %i.z, %bb.j ], [ %.pre58, %._crit_edge._crit_edge57 ]
  %.sroa.032.2 = phi ptr [ %i.ac, %bb.j ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge57 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.032.2, align 4, !tbaa !33
  %i.af = icmp eq i32 %i.ae, %i.ad
  %spec.select = select i1 %i.af, ptr %.sroa.032.2, ptr %1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 4
  br label %.loopexit

.loopexit.loopexit.split.loop.exit65:             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  br label %.loopexit

.loopexit.loopexit.split.loop.exit67:             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit65, %.loopexit.loopexit.split.loop.exit67, %bb.k, %._crit_edge, %bb.i, %bb.g
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.032.1, %bb.i ], [ %spec.select, %bb.k ], [ %1, %._crit_edge ], [ %.sroa.032.0.lcssa, %bb.g ], [ %i.ai, %.loopexit.loopexit.split.loop.exit67 ], [ %i.ag, %.loopexit.loopexit.split.loop.exit ], [ %i.ah, %.loopexit.loopexit.split.loop.exit65 ], [ %.sroa.032.051, %bb.b ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_copyISt6vectorIbSaIbEEEEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat {
bb.a:
  tail call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #29
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_moveISt6vectorIbSaIbEEEEvPvS5_(ptr noundef %0, ptr noundef %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  store ptr null, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.51.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.72.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %.sroa.72.0..sroa_idx.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail13wrap_destructISt6vectorIbSaIbEEEEvPv(ptr noundef %0) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #29
          to label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #31
  unreachable

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !99
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.d, align 8, !tbaa !103
  %i.e = load ptr, ptr %1, align 8, !tbaa !99     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !100  ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = shl nsw i64 %i.l, 3
  %i.n = zext i32 %i.i to i64
  %i.o = add nsw i64 %i.m, %i.n
  invoke void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.o) #29
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !99     ; 3 uses
  %i.q = icmp sgt i64 %i.l, 8
  br i1 %i.q, label %bb.c, label %bb.d, !prof !69

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.p, ptr align 8 %i.e, i64 %i.l, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.l, 8
  br i1 %i.r, label %bb.e, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.e, align 8, !tbaa !81
  store i64 %i.s, ptr %i.p, align 8, !tbaa !81
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.e, %bb.d, %bb.c
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.l
  %i.u = invoke { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(ptr %i.g, i32 0, ptr %i.g, i32 %i.i, ptr %i.t, i32 0) #29
          to label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit unwind label %bb.f ; 0 uses

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  ret void

bb.f:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #29
          to label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #31
  unreachable

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.f
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %1, 63
  %i.b = lshr i64 %i.a, 6                         ; 2 uses
  %i.c = tail call noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.b, ptr noundef null) #29 ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.e, align 8, !tbaa !103
  store ptr %i.c, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = sdiv i64 %1, 64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = and i64 %1, -9223372036854775745
  %i.i = icmp ugt i64 %i.h, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.i, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.g, i64 %storemerge.idx.i.i.i
  %i.j = trunc i64 %1 to i32
  %i.k = and i32 %i.j, 63
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %storemerge.i.i.i, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %bb.e, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %1, 3
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #34
  ret ptr %i.d
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = shl nsw i64 %i.c, 3
  %i.e = zext i32 %3 to i64
  %i.f = zext i32 %1 to i64
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = add i64 %i.g, %i.d                       ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt14_Bit_referenceaSEb.exit, %bb.a
  %.sroa.55.0.lcssa = phi i32 [ %5, %bb.a ], [ %.sroa.55.1, %_ZNSt14_Bit_referenceaSEb.exit ]
  %.sroa.03.0.lcssa = phi ptr [ %4, %bb.a ], [ %.sroa.03.1, %_ZNSt14_Bit_referenceaSEb.exit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.03.0.lcssa, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.55.0.lcssa, 1
  ret { ptr, i32 } %.fca.1.insert

.lr.ph:                                           ; preds = %bb.a, %_ZNSt14_Bit_referenceaSEb.exit
  %.020 = phi i64 [ %i.y, %_ZNSt14_Bit_referenceaSEb.exit ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.03.019 = phi ptr [ %.sroa.03.1, %_ZNSt14_Bit_referenceaSEb.exit ], [ %4, %bb.a ] ; 4 uses
  %.sroa.55.018 = phi i32 [ %.sroa.55.1, %_ZNSt14_Bit_referenceaSEb.exit ], [ %5, %bb.a ] ; 3 uses
  %.sroa.512.017 = phi i32 [ %spec.select15, %_ZNSt14_Bit_referenceaSEb.exit ], [ %1, %bb.a ] ; 3 uses
  %.sroa.09.016 = phi ptr [ %spec.select, %_ZNSt14_Bit_referenceaSEb.exit ], [ %0, %bb.a ] ; 2 uses
  %i.j = zext nneg i32 %.sroa.512.017 to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = load i64, ptr %.sroa.09.016, align 8, !tbaa !81
  %i.m = and i64 %i.l, %i.k
  %.not = icmp eq i64 %i.m, 0
  %i.n = zext nneg i32 %.sroa.55.018 to i64
  %i.o = shl nuw i64 1, %i.n                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = load i64, ptr %.sroa.03.019, align 8, !tbaa !81
  %i.q = or i64 %i.p, %i.o
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.c:                                             ; preds = %.lr.ph
  %i.r = xor i64 %i.o, -1
  %i.s = load i64, ptr %.sroa.03.019, align 8, !tbaa !81
  %i.t = and i64 %i.s, %i.r
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.b, %bb.c
  %storemerge = phi i64 [ %i.t, %bb.c ], [ %i.q, %bb.b ]
  store i64 %storemerge, ptr %.sroa.03.019, align 8, !tbaa !81
  %i.u = add i32 %.sroa.512.017, 1
  %i.v = icmp eq i32 %.sroa.512.017, 63           ; 2 uses
  %spec.select.idx = select i1 %i.v, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 %spec.select.idx
  %spec.select15 = select i1 %i.v, i32 0, i32 %i.u
  %i.w = add i32 %.sroa.55.018, 1
  %i.x = icmp eq i32 %.sroa.55.018, 63            ; 2 uses
  %.sroa.55.1 = select i1 %i.x, i32 0, i32 %i.w   ; 2 uses
  %.sroa.03.1.idx = select i1 %i.x, i64 8, i64 0
  %.sroa.03.1 = getelementptr inbounds nuw i8, ptr %.sroa.03.019, i64 %.sroa.03.1.idx ; 2 uses
  %i.y = add nsw i64 %.020, -1
  %6 = icmp samesign ugt i64 %.020, 1
  br i1 %6, label %.lr.ph, label %._crit_edge, !llvm.loop !293
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.h
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.f) #32
  store ptr null, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.51.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 8
  store ptr null, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_ISt6vectorIbSaIbEEJEEEJA20_cEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS8_EEE_vJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodESA_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSO_jPNS0_12cleanup_listEE_8__invokeES12_S13_jS15_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.288", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !35
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_18pointer_and_handleISt6vectorIbSaIbEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.b, i32 noundef %i.c, ptr noundef %3) #28
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_ISt6vectorIbSaIbEEJEEEJA20_cEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS8_EEE_vJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodESA_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSO_jPNS0_12cleanup_listEE_clES12_S13_jS15_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %4, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.copyload.i, i8 0, i64 40, i1 false)
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_ISt6vectorIbSaIbEEJEEEJA20_cEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS8_EEE_vJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodESA_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSO_jPNS0_12cleanup_listEE_clES12_S13_jS15_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_ISt6vectorIbSaIbEEJEEEJA20_cEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS8_EEE_vJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodESA_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSO_jPNS0_12cleanup_listEE_clES12_S13_jS15_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_18pointer_and_handleISt6vectorIbSaIbEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::type_caster.292", align 8 ; 4 uses
  %i.a = and i32 %2, 32
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = ptrtoint ptr %1 to i64
  store i64 %i.c, ptr %i.b, align 8
  %i.d = tail call noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %1) #28
  store ptr %i.d, ptr %0, align 8, !tbaa !296
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.e = and i32 %2, 16
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = and i32 %2, -34
  %spec.select.i = select i1 %.not.i, i32 %2, i32 %i.f
  %i.g = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.h = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.g, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %1, i32 noundef %spec.select.i, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = ptrtoint ptr %1 to i64
  store i64 %i.j, ptr %i.i, align 8
  %i.k = load ptr, ptr %4, align 8, !tbaa !106
  store ptr %i.k, ptr %0, align 8, !tbaa !296
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i1 [ true, %bb.b ], [ %i.h, %bb.e ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_E_mJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSP_jPNS0_12cleanup_listEE_8__invokeES13_S14_jS16_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.298", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_E_mJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSP_jPNS0_12cleanup_listEE_clES13_S14_jS16_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !106    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !100
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = shl nsw i64 %i.m, 3
  %i.o = zext i32 %i.i to i64
  %i.p = add nsw i64 %i.n, %i.o
  %i.q = invoke ptr @PyLong_FromUnsignedLong(i64 noundef %i.p) #29
          to label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_E_mJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSP_jPNS0_12cleanup_listEE_clES13_S14_jS16_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_E_mJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSP_jPNS0_12cleanup_listEE_clES13_S14_jS16_.exit: ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.q, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_E0_bJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA37_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSQ_jPNS0_12cleanup_listEE_8__invokeES14_S15_jS17_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.298", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_E0_bJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA37_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSQ_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !106    ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !100
  %i.k = icmp ne ptr %i.f, %i.h
  %i.l = icmp ne i32 %i.j, 0
  %.not2.i = select i1 %i.k, i1 true, i1 %i.l
  %spec.select.i = select i1 %.not2.i, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_E0_bJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA37_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSQ_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_E0_bJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA37_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSQ_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %spec.select.i, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlNS_8handle_tIS5_EEE_NS_3strEJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSP_jPNS0_12cleanup_listEE_8__invokeES13_S14_jS16_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::str", align 8     ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.b = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.c = tail call noundef zeroext i1 @_ZN8nanobind6detail18nb_type_isinstanceEPNS0_12nb_internalsEP7_objectPKSt9type_info(ptr noundef %i.b, ptr noundef %i.a, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE) #28
  br i1 %i.c, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlNS_8handle_tIS5_EEE_NS_3strEJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSP_jPNS0_12cleanup_listEE_clES13_S14_jS16_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.d = tail call noundef ptr @_ZN8nanobind6detail9repr_listEP7_object(ptr noundef %i.a) #29, !noalias !299
  store ptr null, ptr %4, align 8, !tbaa !35
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlNS_8handle_tIS5_EEE_NS_3strEJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSP_jPNS0_12cleanup_listEE_clES13_S14_jS16_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlNS_8handle_tIS5_EEE_NS_3strEJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSP_jPNS0_12cleanup_listEE_clES13_S14_jS16_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlNS_8handle_tIS5_EEE0_NS_5typedINS_8iteratorEJbEEEJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::typed.316", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.b = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.c = tail call noundef zeroext i1 @_ZN8nanobind6detail18nb_type_isinstanceEPNS0_12nb_internalsEP7_objectPKSt9type_info(ptr noundef %i.b, ptr noundef %i.a, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE) #28
  br i1 %i.c, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlNS_8handle_tIS5_EEE0_NS_5typedINS_8iteratorEJbEEEJSI_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb:bb.a

bb.b:                                             ; preds = %bb.a
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.sroa.235.0.copyload = load i32, ptr %.sroa.235.0..sroa_idx, align 8 ; 2 uses
  %i.e = zext i32 %.sroa.235.0.copyload to i64
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.g = lshr i64 %i.f, 6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.g
  %i.i = trunc i64 %i.f to i32
  %i.j = and i32 %i.i, 63
  %i.k = tail call { ptr, i32 } @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bISt13_Bit_iteratorS3_EET0_T_S5_S4_(ptr %1, i32 %2, ptr %i.b, i32 %.sroa.235.0.copyload, ptr %i.h, i32 %i.j) #29 ; 0 uses
  %i.l = zext nneg i32 %2 to i64
  %i.m = shl nuw i64 1, %i.l                      ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %1, align 8, !tbaa !81
  %i.o = or i64 %i.n, %i.m
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.d:                                             ; preds = %bb.b
  %i.p = xor i64 %i.m, -1
  %i.q = load i64, ptr %1, align 8, !tbaa !81
  %i.r = and i64 %i.q, %i.p
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.c, %bb.d
  %storemerge = phi i64 [ %i.r, %bb.d ], [ %i.o, %bb.c ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !81
  %i.s = load i32, ptr %.sroa.235.0..sroa_idx, align 8, !tbaa !100 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %.sroa.235.0..sroa_idx, align 8, !tbaa !100
  %i.u = icmp eq i32 %i.s, 63
  br i1 %i.u, label %bb.e, label %_ZNSt13_Bit_iteratorppEv.exit

bb.e:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %.sroa.235.0..sroa_idx, align 8, !tbaa !100
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.a, align 8, !tbaa !99
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.f:                                             ; preds = %bb.a
  %i.x = tail call noundef i64 @_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 1, ptr noundef nonnull @.str.59) #29
  %i.y = add i64 %i.x, 63
  %i.z = lshr i64 %i.y, 6                         ; 2 uses
  %i.aa = tail call noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.z, ptr noundef null) #29 ; 5 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !99    ; 3 uses
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 8
  br i1 %i.af, label %bb.g, label %bb.h, !prof !69

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aa, ptr align 8 %i.ab, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = icmp eq i64 %i.ae, 8
  br i1 %i.ag, label %bb.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !81
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !81
  br label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.aj = tail call { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(ptr %1, i32 0, ptr %1, i32 %2, ptr %i.ai, i32 0) #29 ; 2 uses
  %.fca.0.extract17 = extractvalue { ptr, i32 } %i.aj, 0 ; 4 uses
  %.fca.1.extract18 = extractvalue { ptr, i32 } %i.aj, 1 ; 3 uses
  %i.ak = add i32 %.fca.1.extract18, 1
  %i.al = icmp eq i32 %.fca.1.extract18, 63       ; 2 uses
  %spec.select = select i1 %i.al, i32 0, i32 %i.ak
  %spec.select88.idx = select i1 %i.al, i64 8, i64 0
  %spec.select88 = getelementptr inbounds nuw i8, ptr %.fca.0.extract17, i64 %spec.select88.idx
  %i.am = zext nneg i32 %.fca.1.extract18 to i64
  %i.an = shl nuw i64 1, %i.am                    ; 2 uses
  br i1 %3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %i.ao = load i64, ptr %.fca.0.extract17, align 8, !tbaa !81
  %i.ap = or i64 %i.ao, %i.an
  br label %_ZNSt14_Bit_referenceaSEb.exit52

bb.k:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %i.aq = xor i64 %i.an, -1
  %i.ar = load i64, ptr %.fca.0.extract17, align 8, !tbaa !81
  %i.as = and i64 %i.ar, %i.aq
  br label %_ZNSt14_Bit_referenceaSEb.exit52

_ZNSt14_Bit_referenceaSEb.exit52:                 ; preds = %bb.j, %bb.k
  %storemerge89 = phi i64 [ %i.as, %bb.k ], [ %i.ap, %bb.j ]
  store i64 %storemerge89, ptr %.fca.0.extract17, align 8, !tbaa !81
  %.sroa.0.0.copyload.i53 = load ptr, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i54 = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.at = tail call { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt13_Bit_iteratorS3_EET0_T_S5_S4_(ptr %1, i32 %2, ptr %.sroa.0.0.copyload.i53, i32 %.sroa.2.0.copyload.i54, ptr nonnull %spec.select88, i32 %spec.select) #29 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.at, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.at, 1
  tail call void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #29
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store ptr %i.au, ptr %i.c, align 8, !tbaa !103
  store ptr %i.aa, ptr %0, align 8
  %.sroa.570.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.570.0..sroa_idx71, align 8
  store ptr %.fca.0.extract, ptr %i.a, align 8
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.e, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt14_Bit_referenceaSEb.exit52
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr noundef i64 @_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !100
  %i.e = load ptr, ptr %0, align 8, !tbaa !99
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl nsw i64 %i.h, 3
  %i.j = zext i32 %i.d to i64
  %i.k = add nsw i64 %i.i, %i.j                   ; 4 uses
  %i.l = sub i64 9223372036854775744, %i.k
  %i.m = icmp ult i64 %i.l, %1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %1)
  %i.n = add i64 %.sroa.speculated, %i.k          ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.k
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 9223372036854775744)
  %i.q = select i1 %i.o, i64 9223372036854775744, i64 %i.p
  ret i64 %i.q
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr { ptr, i32 } @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bISt13_Bit_iteratorS3_EET0_T_S5_S4_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = shl nsw i64 %i.c, 3
  %i.e = zext i32 %3 to i64
  %i.f = zext i32 %1 to i64
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = add i64 %i.g, %i.d                       ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZNSt13_Bit_iteratormmEv.exit, label %._crit_edge

_ZNSt13_Bit_iteratormmEv.exit:                    ; preds = %bb.a, %_ZNSt14_Bit_referenceaSERKS_.exit
  %.024 = phi i64 [ %i.y, %_ZNSt14_Bit_referenceaSERKS_.exit ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.07.023 = phi ptr [ %.sroa.07.1, %_ZNSt14_Bit_referenceaSERKS_.exit ], [ %4, %bb.a ]
  %.sroa.59.022 = phi i32 [ %.sroa.59.1, %_ZNSt14_Bit_referenceaSERKS_.exit ], [ %5, %bb.a ] ; 2 uses
  %.sroa.012.021 = phi ptr [ %spec.select19, %_ZNSt14_Bit_referenceaSERKS_.exit ], [ %2, %bb.a ]
  %.sroa.515.020 = phi i32 [ %spec.select, %_ZNSt14_Bit_referenceaSERKS_.exit ], [ %3, %bb.a ] ; 2 uses
  %i.j = add i32 %.sroa.515.020, -1
  %i.k = icmp eq i32 %.sroa.515.020, 0            ; 2 uses
  %spec.select = select i1 %i.k, i32 63, i32 %i.j ; 2 uses
  %spec.select19.idx = select i1 %i.k, i64 -8, i64 0
  %spec.select19 = getelementptr inbounds i8, ptr %.sroa.012.021, i64 %spec.select19.idx ; 2 uses
  %i.l = zext nneg i32 %spec.select to i64
  %i.m = shl nuw i64 1, %i.l
  %i.n = add i32 %.sroa.59.022, -1
  %i.o = icmp eq i32 %.sroa.59.022, 0             ; 2 uses
  %.sroa.59.1 = select i1 %i.o, i32 63, i32 %i.n  ; 3 uses
  %.sroa.07.1.idx = select i1 %i.o, i64 -8, i64 0
  %.sroa.07.1 = getelementptr inbounds i8, ptr %.sroa.07.023, i64 %.sroa.07.1.idx ; 5 uses
  %i.p = zext nneg i32 %.sroa.59.1 to i64
  %i.q = shl nuw i64 1, %i.p                      ; 2 uses
  %i.r = load i64, ptr %spec.select19, align 8, !tbaa !81
  %i.s = and i64 %i.r, %i.m
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit
  %i.t = load i64, ptr %.sroa.07.1, align 8, !tbaa !81
  %i.u = or i64 %i.t, %i.q
  br label %_ZNSt14_Bit_referenceaSERKS_.exit

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit
  %i.v = xor i64 %i.q, -1
  %i.w = load i64, ptr %.sroa.07.1, align 8, !tbaa !81
  %i.x = and i64 %i.w, %i.v
  br label %_ZNSt14_Bit_referenceaSERKS_.exit

_ZNSt14_Bit_referenceaSERKS_.exit:                ; preds = %bb.b, %bb.c
  %storemerge = phi i64 [ %i.u, %bb.b ], [ %i.x, %bb.c ]
  store i64 %storemerge, ptr %.sroa.07.1, align 8, !tbaa !81
  %i.y = add nsw i64 %.024, -1
  %6 = icmp samesign ugt i64 %.024, 1
  br i1 %6, label %_ZNSt13_Bit_iteratormmEv.exit, label %._crit_edge, !llvm.loop !317

._crit_edge:                                      ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit, %bb.a
  %.sroa.59.0.lcssa = phi i32 [ %5, %bb.a ], [ %.sroa.59.1, %_ZNSt14_Bit_referenceaSERKS_.exit ]
  %.sroa.07.0.lcssa = phi ptr [ %4, %bb.a ], [ %.sroa.07.1, %_ZNSt14_Bit_referenceaSERKS_.exit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.07.0.lcssa, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.59.0.lcssa, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt13_Bit_iteratorS3_EET0_T_S5_S4_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = shl nsw i64 %i.c, 3
  %i.e = zext i32 %3 to i64
  %i.f = zext i32 %1 to i64
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = add i64 %i.g, %i.d                       ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit, %bb.a
  %.sroa.59.0.lcssa = phi i32 [ %5, %bb.a ], [ %.sroa.59.1, %_ZNSt14_Bit_referenceaSERKS_.exit ]
  %.sroa.07.0.lcssa = phi ptr [ %4, %bb.a ], [ %.sroa.07.1, %_ZNSt14_Bit_referenceaSERKS_.exit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.07.0.lcssa, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.59.0.lcssa, 1
  ret { ptr, i32 } %.fca.1.insert

.lr.ph:                                           ; preds = %bb.a, %_ZNSt14_Bit_referenceaSERKS_.exit
  %.024 = phi i64 [ %i.y, %_ZNSt14_Bit_referenceaSERKS_.exit ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.07.023 = phi ptr [ %.sroa.07.1, %_ZNSt14_Bit_referenceaSERKS_.exit ], [ %4, %bb.a ] ; 4 uses
  %.sroa.59.022 = phi i32 [ %.sroa.59.1, %_ZNSt14_Bit_referenceaSERKS_.exit ], [ %5, %bb.a ] ; 3 uses
  %.sroa.516.021 = phi i32 [ %spec.select19, %_ZNSt14_Bit_referenceaSERKS_.exit ], [ %1, %bb.a ] ; 3 uses
  %.sroa.013.020 = phi ptr [ %spec.select, %_ZNSt14_Bit_referenceaSERKS_.exit ], [ %0, %bb.a ] ; 2 uses
  %i.j = zext nneg i32 %.sroa.516.021 to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = zext nneg i32 %.sroa.59.022 to i64
  %i.m = shl nuw i64 1, %i.l                      ; 2 uses
  %i.n = load i64, ptr %.sroa.013.020, align 8, !tbaa !81
  %i.o = and i64 %i.n, %i.k
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = load i64, ptr %.sroa.07.023, align 8, !tbaa !81
  %i.q = or i64 %i.p, %i.m
  br label %_ZNSt14_Bit_referenceaSERKS_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.r = xor i64 %i.m, -1
  %i.s = load i64, ptr %.sroa.07.023, align 8, !tbaa !81
  %i.t = and i64 %i.s, %i.r
  br label %_ZNSt14_Bit_referenceaSERKS_.exit

_ZNSt14_Bit_referenceaSERKS_.exit:                ; preds = %bb.b, %bb.c
  %storemerge = phi i64 [ %i.q, %bb.b ], [ %i.t, %bb.c ]
  store i64 %storemerge, ptr %.sroa.07.023, align 8, !tbaa !81
  %i.u = add i32 %.sroa.516.021, 1
  %i.v = icmp eq i32 %.sroa.516.021, 63           ; 2 uses
  %spec.select.idx = select i1 %i.v, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.013.020, i64 %spec.select.idx
  %spec.select19 = select i1 %i.v, i32 0, i32 %i.u
  %i.w = add i32 %.sroa.59.022, 1
  %i.x = icmp eq i32 %.sroa.59.022, 63            ; 2 uses
  %.sroa.59.1 = select i1 %i.x, i32 0, i32 %i.w   ; 2 uses
  %.sroa.07.1.idx = select i1 %i.x, i64 8, i64 0
  %.sroa.07.1 = getelementptr inbounds nuw i8, ptr %.sroa.07.023, i64 %.sroa.07.1.idx ; 2 uses
  %i.y = add nsw i64 %.024, -1
  %6 = icmp samesign ugt i64 %.024, 1
  br i1 %6, label %.lr.ph, label %._crit_edge, !llvm.loop !318
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail9cast_implILb1EbEET0_NS_6handleE(ptr %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.raii_cleanup.364, align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  store <2 x i32> <i32 1, i32 5>, ptr %1, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.a, ptr %i.d, align 8, !tbaa !92
  store ptr null, ptr %i.c, align 8, !tbaa !23
  %i.e = icmp eq ptr %0, @_Py_TrueStruct          ; 2 uses
  %i.f = icmp eq ptr %0, @_Py_FalseStruct
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %.sink.split.i, label %.critedge

.critedge:                                        ; preds = %bb.a
  invoke void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #33
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.critedge
  unreachable

bb.c:                                             ; preds = %.critedge
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN8nanobind6detail9cast_implILb1EbEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %i.g

.sink.split.i:                                    ; preds = %bb.a
  call void @_ZZN8nanobind6detail9cast_implILb1EbEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZZN8nanobind6detail9cast_implILb1EbEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !93
  %i.b = icmp ugt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge.i:                                    ; preds = %_ZL9Py_DECREFP7_object.exit.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !94
  %.not.i = icmp eq i32 %i.e, 5
  br i1 %.not.i, label %_ZN8nanobind6detail12cleanup_list7releaseEv.exit, label %bb.e

bb.b:                                             ; preds = %_ZL9Py_DECREFP7_object.exit.i, %.lr.ph.i
  %.04.i = phi i64 [ 1, %.lr.ph.i ], [ %i.m, %_ZL9Py_DECREFP7_object.exit.i ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = and i64 %i.i, 2147483648
  %.not3.i = icmp eq i64 %i.j, 0
  br i1 %.not3.i, label %bb.c, label %_ZL9Py_DECREFP7_object.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !26
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZL9Py_DECREFP7_object.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.h) #29
          to label %_ZL9Py_DECREFP7_object.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL9Py_DECREFP7_object.exit.i:                    ; preds = %bb.d, %bb.c, %bb.b
  %i.m = add nuw nsw i64 %.04.i, 1                ; 2 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !93
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge.i, !llvm.loop !0

bb.e:                                             ; preds = %._crit_edge.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !91
  invoke void @PyMem_Free(ptr noundef %i.r) #29
          to label %_ZN8nanobind6detail12cleanup_list7releaseEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2, 0
  tail call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

_ZN8nanobind6detail12cleanup_list7releaseEv.exit: ; preds = %._crit_edge.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZZN8nanobind22implicitly_convertibleINS_8iterableESt6vectorIbSaIbEEEEvvENUlP11_typeobjectP7_objectPNS_6detail12cleanup_listEE_8__invokeES6_S8_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.nanobind::detail::type_caster.146", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr null, ptr %3, align 8
  %i.a = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_8iterableEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %1, i32 noundef 1, ptr noundef %2) #28
  %i.b = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.371", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = icmp eq ptr %i.g, @_Py_TrueStruct
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %i.g, @_Py_FalseStruct
  br i1 %i.i, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]    ; 2 uses
  store i8 %.sink.i, ptr %4, align 8, !tbaa !111
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.k = trunc nuw i8 %.sink.i to i1
  call void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i1 noundef zeroext %i.k) #29
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.c, %bb.a, %bb.d
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.378", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = and i32 %2, -35
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail8load_i64EPNS0_12nb_internalsEP7_objectjPl(ptr noundef %i.j, ptr noundef %i.h, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %i.n = icmp eq ptr %i.m, @_Py_TrueStruct
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq ptr %i.m, @_Py_FalseStruct
  br i1 %i.o, label %bb.e, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink.i = phi i8 [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %.sink.i, ptr %4, align 8, !tbaa !111
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !106  ; 4 uses
  %i.q = load i64, ptr %i.f, align 8, !tbaa !81   ; 3 uses
  %i.r = icmp slt i64 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !100
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !99   ; 2 uses
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = zext i32 %i.v to i64
  %i.ac = add i64 %i.aa, %i.ab                    ; 2 uses
  br i1 %i.r, label %bb.f, label %.thread.i

end_hunk_1
begin_hunk_2_@_ZNK8nanobind6detail3op_ILNS0_5op_idE26ELNS0_7op_typeE0ENS0_6self_tES4_E7executeINS_6class_ISt6vectorIbSaIbEEJEEEJNS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEvRT_DpRKT0_:_ZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIbSaIbEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail7op_implILNS0_5op_idE26ELNS0_7op_typeE0ESt6vectorIbSaIbEES6_S6_E7executeERKS6_S9_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !99     ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl nsw i64 %i.h, 3
  %i.j = zext i32 %i.d to i64
  %i.k = add nsw i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !100
  %i.p = load ptr, ptr %1, align 8, !tbaa !99     ; 2 uses
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = shl nsw i64 %i.s, 3
  %i.u = zext i32 %i.o to i64
  %i.v = add nsw i64 %i.t, %i.u
  %i.w = icmp eq i64 %i.k, %i.v
  br i1 %i.w, label %bb.b, label %_ZStneIbSaIbEEbRKSt6vectorIT_T0_ES6_.exit

bb.b:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_ZNSt7__equalILb0EE5equalISt19_Bit_const_iteratorS2_EEbT_S3_T0_(ptr %i.e, i32 0, ptr %i.b, i32 %i.d, ptr %i.p, i32 0) #29
  %i.y = xor i1 %i.x, true
  br label %_ZStneIbSaIbEEbRKSt6vectorIT_T0_ES6_.exit

_ZStneIbSaIbEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.a, %bb.b
  %i.z = phi i1 [ true, %bb.a ], [ %i.y, %bb.b ]
  ret i1 %i.z
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKbE_bJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.371", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKbE_bJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = icmp eq ptr %i.g, @_Py_TrueStruct
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %i.g, @_Py_FalseStruct
  br i1 %i.i, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKbE_bJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  store i8 %.sink.i, ptr %4, align 8, !tbaa !111
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !106  ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !100
  %i.p = call { ptr, i32 } @_ZSt9__find_ifISt19_Bit_const_iteratorN9__gnu_cxx5__ops16_Iter_equals_valIKbEEET_S6_S6_T0_St26random_access_iterator_tag(ptr %i.k, i32 0, ptr %i.m, i32 %i.o, ptr nonnull align 1 dereferenceable(1) %4) #29 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.p, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.p, 1
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.r = load i32, ptr %i.n, align 8, !tbaa !100
  %i.s = icmp ne ptr %.fca.0.extract1.i, %i.q
  %i.t = icmp ne i32 %.fca.1.extract2.i, %i.r
  %.not3.i.i = select i1 %i.s, i1 true, i1 %i.t
  %spec.select.i = select i1 %.not3.i.i, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKbE_bJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKbE_bJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.c, %bb.a, %bb.d
  %.0.i = phi ptr [ %spec.select.i, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden { ptr, i32 } @_ZSt9__find_ifISt19_Bit_const_iteratorN9__gnu_cxx5__ops16_Iter_equals_valIKbEEET_S6_S6_T0_St26random_access_iterator_tag(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %i.f = zext i32 %1 to i64                       ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f                   ; 2 uses
  %i.h = add i64 %i.g, %i.d
  %i.i = ashr i64 %i.h, 2                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = load i8, ptr %4, align 1, !tbaa !112, !range !113, !noundef !114 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt19_Bit_const_iteratorppEv.exit58
  %.0142 = phi i64 [ %i.i, %.lr.ph ], [ %i.be, %_ZNSt19_Bit_const_iteratorppEv.exit58 ] ; 2 uses
  %.sroa.31.0141 = phi i32 [ %1, %.lr.ph ], [ %.sroa.31.6, %_ZNSt19_Bit_const_iteratorppEv.exit58 ] ; 5 uses
  %.sroa.079.0140 = phi ptr [ %0, %.lr.ph ], [ %.sroa.079.6, %_ZNSt19_Bit_const_iteratorppEv.exit58 ] ; 5 uses
  %i.l = zext nneg i32 %.sroa.31.0141 to i64
  %i.m = load i64, ptr %.sroa.079.0140, align 8, !tbaa !81 ; 2 uses
  %i.n = lshr i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i8
  %i.p = and i8 %i.o, 1
  %i.q = icmp eq i8 %i.k, %i.p
  br i1 %i.q, label %_ZNSt19_Bit_const_iteratorppEv.exit61, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = add i32 %.sroa.31.0141, 1                ; 3 uses
  %i.s = icmp eq i32 %.sroa.31.0141, 63
  br i1 %i.s, label %_ZNSt19_Bit_const_iteratorppEv.exit.thread, label %_ZNSt19_Bit_const_iteratorppEv.exit

_ZNSt19_Bit_const_iteratorppEv.exit:              ; preds = %bb.c
  %i.t = zext nneg i32 %i.r to i64
  %i.u = lshr i64 %i.m, %i.t
  %i.v = trunc i64 %i.u to i8
  %i.w = and i8 %i.v, 1
  %i.x = icmp eq i8 %i.k, %i.w
  br i1 %i.x, label %_ZNSt19_Bit_const_iteratorppEv.exit61, label %_ZNSt19_Bit_const_iteratorppEv.exit56

_ZNSt19_Bit_const_iteratorppEv.exit.thread:       ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.079.0140, i64 8 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !81   ; 3 uses
  %i.aa = trunc i64 %i.z to i8
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.k, %i.ab
  br i1 %i.ac, label %_ZNSt19_Bit_const_iteratorppEv.exit61, label %_ZNSt19_Bit_const_iteratorppEv.exit56.thread

_ZNSt19_Bit_const_iteratorppEv.exit56:            ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit
  %i.ad = add i32 %.sroa.31.0141, 2
  %i.ae = icmp eq i32 %i.r, 63                    ; 2 uses
  %spec.select.idx = select i1 %i.ae, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.079.0140, i64 %spec.select.idx ; 4 uses
  %spec.select128 = select i1 %i.ae, i32 0, i32 %i.ad ; 5 uses
  %.pre = load i64, ptr %spec.select, align 8, !tbaa !81 ; 2 uses
  %i.af = zext nneg i32 %spec.select128 to i64
  %i.ag = lshr i64 %.pre, %i.af
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = and i8 %i.ah, 1
  %i.aj = icmp eq i8 %i.k, %i.ai
  br i1 %i.aj, label %_ZNSt19_Bit_const_iteratorppEv.exit61, label %bb.d

_ZNSt19_Bit_const_iteratorppEv.exit56.thread:     ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit.thread
  %i.ak = trunc i64 %i.z to i8
  %i.al = lshr i8 %i.ak, 1
  %i.am = and i8 %i.al, 1
  %i.an = icmp eq i8 %i.k, %i.am
  br i1 %i.an, label %_ZNSt19_Bit_const_iteratorppEv.exit61, label %_ZNSt19_Bit_const_iteratorppEv.exit57

bb.d:                                             ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit56
  %i.ao = add i32 %spec.select128, 1
  %i.ap = icmp eq i32 %spec.select128, 63
  br i1 %i.ap, label %_ZNSt19_Bit_const_iteratorppEv.exit57.thread, label %_ZNSt19_Bit_const_iteratorppEv.exit57

_ZNSt19_Bit_const_iteratorppEv.exit57:            ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit56.thread, %bb.d
  %i.aq = phi i32 [ %i.ao, %bb.d ], [ 2, %_ZNSt19_Bit_const_iteratorppEv.exit56.thread ] ; 3 uses
  %i.ar = phi i64 [ %.pre, %bb.d ], [ %i.z, %_ZNSt19_Bit_const_iteratorppEv.exit56.thread ]
  %.sroa.079.4165170 = phi ptr [ %spec.select, %bb.d ], [ %i.y, %_ZNSt19_Bit_const_iteratorppEv.exit56.thread ] ; 2 uses
  %.sroa.31.4166169 = phi i32 [ %spec.select128, %bb.d ], [ 1, %_ZNSt19_Bit_const_iteratorppEv.exit56.thread ]
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = lshr i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i8
  %i.av = and i8 %i.au, 1
  %i.aw = icmp eq i8 %i.k, %i.av
  br i1 %i.aw, label %_ZNSt19_Bit_const_iteratorppEv.exit61, label %bb.e

_ZNSt19_Bit_const_iteratorppEv.exit57.thread:     ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !81
  %i.az = trunc i64 %i.ay to i8
  %i.ba = and i8 %i.az, 1
  %i.bb = icmp eq i8 %i.k, %i.ba
  br i1 %i.bb, label %_ZNSt19_Bit_const_iteratorppEv.exit61, label %_ZNSt19_Bit_const_iteratorppEv.exit58

bb.e:                                             ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit57
  %i.bc = add i32 %.sroa.31.4166169, 2
  %i.bd = icmp eq i32 %i.aq, 63                   ; 2 uses
  %spec.select129.idx = select i1 %i.bd, i64 8, i64 0
  %spec.select129 = getelementptr inbounds nuw i8, ptr %.sroa.079.4165170, i64 %spec.select129.idx
  %spec.select130 = select i1 %i.bd, i32 0, i32 %i.bc
  br label %_ZNSt19_Bit_const_iteratorppEv.exit58

_ZNSt19_Bit_const_iteratorppEv.exit58:            ; preds = %bb.e, %_ZNSt19_Bit_const_iteratorppEv.exit57.thread
  %.sroa.079.6 = phi ptr [ %i.ax, %_ZNSt19_Bit_const_iteratorppEv.exit57.thread ], [ %spec.select129, %bb.e ] ; 3 uses
  %.sroa.31.6 = phi i32 [ 1, %_ZNSt19_Bit_const_iteratorppEv.exit57.thread ], [ %spec.select130, %bb.e ] ; 3 uses
  %i.be = add nsw i64 %.0142, -1
  %5 = icmp samesign ugt i64 %.0142, 1
  br i1 %5, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !330

._crit_edge.loopexit:                             ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit58
  %.pre147 = ptrtoint ptr %.sroa.079.6 to i64
  %.pre148 = sub i64 %i.a, %.pre147
  %.pre150 = shl nsw i64 %.pre148, 3
  %.pre152 = zext i32 %.sroa.31.6 to i64          ; 2 uses
  %.pre154 = sub nsw i64 %i.e, %.pre152
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi155 = phi i64 [ %.pre154, %._crit_edge.loopexit ], [ %i.g, %bb.a ]
  %.pre-phi153 = phi i64 [ %.pre152, %._crit_edge.loopexit ], [ %i.f, %bb.a ] ; 3 uses
  %.pre-phi151 = phi i64 [ %.pre150, %._crit_edge.loopexit ], [ %i.d, %bb.a ]
  %.sroa.079.0.lcssa = phi ptr [ %.sroa.079.6, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %.sroa.31.0.lcssa = phi i32 [ %.sroa.31.6, %._crit_edge.loopexit ], [ %1, %bb.a ] ; 5 uses
  %i.bf = add i64 %.pre-phi155, %.pre-phi151
  switch i64 %i.bf, label %_ZNSt19_Bit_const_iteratorppEv.exit61 [
    i64 3, label %bb.f
    i64 2, label %._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit59_crit_edge
    i64 1, label %._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge
  ]

._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge: ; preds = %._crit_edge
  %.pre145 = load i64, ptr %.sroa.079.0.lcssa, align 8, !tbaa !81
  %.pre146 = load i8, ptr %4, align 1, !tbaa !112, !range !113
  br label %_ZNSt19_Bit_const_iteratorppEv.exit60

._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit59_crit_edge: ; preds = %._crit_edge
  %.pre144 = load i8, ptr %4, align 1, !tbaa !112, !range !113
  br label %_ZNSt19_Bit_const_iteratorppEv.exit59

bb.f:                                             ; preds = %._crit_edge
  %i.bg = load i64, ptr %.sroa.079.0.lcssa, align 8, !tbaa !81
  %i.bh = load i8, ptr %4, align 1, !tbaa !112, !range !113, !noundef !114 ; 2 uses
  %i.bi = lshr i64 %i.bg, %.pre-phi153
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = and i8 %i.bj, 1
  %i.bl = icmp eq i8 %i.bh, %i.bk
  br i1 %i.bl, label %_ZNSt19_Bit_const_iteratorppEv.exit61, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = add i32 %.sroa.31.0.lcssa, 1
  %i.bn = icmp eq i32 %.sroa.31.0.lcssa, 63       ; 2 uses
  %spec.select131.idx = select i1 %i.bn, i64 8, i64 0
  %spec.select131 = getelementptr inbounds nuw i8, ptr %.sroa.079.0.lcssa, i64 %spec.select131.idx
  %spec.select132 = select i1 %i.bn, i32 0, i32 %i.bm ; 2 uses
  %.pre156 = zext nneg i32 %spec.select132 to i64
  br label %_ZNSt19_Bit_const_iteratorppEv.exit59

_ZNSt19_Bit_const_iteratorppEv.exit59:            ; preds = %._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit59_crit_edge, %bb.g
  %.pre-phi157 = phi i64 [ %.pre-phi153, %._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit59_crit_edge ], [ %.pre156, %bb.g ]
  %i.bo = phi i8 [ %.pre144, %._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit59_crit_edge ], [ %i.bh, %bb.g ] ; 3 uses
  %.sroa.079.1 = phi ptr [ %.sroa.079.0.lcssa, %._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit59_crit_edge ], [ %spec.select131, %bb.g ] ; 4 uses
  %.sroa.31.1 = phi i32 [ %.sroa.31.0.lcssa, %._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit59_crit_edge ], [ %spec.select132, %bb.g ] ; 3 uses
  %i.bp = load i64, ptr %.sroa.079.1, align 8, !tbaa !81 ; 2 uses
  %i.bq = lshr i64 %i.bp, %.pre-phi157
  %i.br = trunc i64 %i.bq to i8
  %i.bs = and i8 %i.br, 1
  %i.bt = icmp eq i8 %i.bo, %i.bs
  br i1 %i.bt, label %_ZNSt19_Bit_const_iteratorppEv.exit61, label %bb.h

bb.h:                                             ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit59
  %i.bu = icmp eq i32 %.sroa.31.1, 63
  br i1 %i.bu, label %_ZNSt19_Bit_const_iteratorppEv.exit60.thread, label %._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge

._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge: ; preds = %bb.h
  %i.bv = add i32 %.sroa.31.1, 1                  ; 2 uses
  %.pre158 = zext nneg i32 %i.bv to i64
  br label %_ZNSt19_Bit_const_iteratorppEv.exit60

_ZNSt19_Bit_const_iteratorppEv.exit60:            ; preds = %._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge, %._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge
  %.pre-phi159 = phi i64 [ %.pre158, %._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge ], [ %.pre-phi153, %._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge ]
  %i.bw = phi i8 [ %i.bo, %._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge ], [ %.pre146, %._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge ]
  %i.bx = phi i64 [ %i.bp, %._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge ], [ %.pre145, %._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge ]
  %.sroa.079.2 = phi ptr [ %.sroa.079.1, %._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge ], [ %.sroa.079.0.lcssa, %._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge ]
  %.sroa.31.2 = phi i32 [ %i.bv, %._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge ], [ %.sroa.31.0.lcssa, %._crit_edge._ZNSt19_Bit_const_iteratorppEv.exit60_crit_edge ]
  %i.by = lshr i64 %i.bx, %.pre-phi159
  %i.bz = trunc i64 %i.by to i8
  %i.ca = and i8 %i.bz, 1
  %i.cb = icmp eq i8 %i.bw, %i.ca                 ; 2 uses
  %spec.select133 = select i1 %i.cb, ptr %.sroa.079.2, ptr %2
  %spec.select134 = select i1 %i.cb, i32 %.sroa.31.2, i32 %3
  br label %_ZNSt19_Bit_const_iteratorppEv.exit61

_ZNSt19_Bit_const_iteratorppEv.exit60.thread:     ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.079.1, i64 8 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !81
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = and i8 %i.ce, 1
  %i.cg = icmp eq i8 %i.bo, %i.cf                 ; 2 uses
  %spec.select135 = select i1 %i.cg, ptr %i.cc, ptr %2
  %spec.select136 = select i1 %i.cg, i32 0, i32 %3
  br label %_ZNSt19_Bit_const_iteratorppEv.exit61

_ZNSt19_Bit_const_iteratorppEv.exit61:            ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit57.thread, %_ZNSt19_Bit_const_iteratorppEv.exit57, %_ZNSt19_Bit_const_iteratorppEv.exit56, %_ZNSt19_Bit_const_iteratorppEv.exit.thread, %_ZNSt19_Bit_const_iteratorppEv.exit, %bb.b, %_ZNSt19_Bit_const_iteratorppEv.exit56.thread, %_ZNSt19_Bit_const_iteratorppEv.exit60.thread, %_ZNSt19_Bit_const_iteratorppEv.exit60, %._crit_edge, %_ZNSt19_Bit_const_iteratorppEv.exit59, %bb.f
  %.sroa.020.0.in.sroa.speculated = phi ptr [ %.sroa.079.1, %_ZNSt19_Bit_const_iteratorppEv.exit59 ], [ %2, %._crit_edge ], [ %.sroa.079.0.lcssa, %bb.f ], [ %spec.select133, %_ZNSt19_Bit_const_iteratorppEv.exit60 ], [ %spec.select135, %_ZNSt19_Bit_const_iteratorppEv.exit60.thread ], [ %i.y, %_ZNSt19_Bit_const_iteratorppEv.exit56.thread ], [ %.sroa.079.4165170, %_ZNSt19_Bit_const_iteratorppEv.exit57 ], [ %.sroa.079.0140, %_ZNSt19_Bit_const_iteratorppEv.exit ], [ %i.ax, %_ZNSt19_Bit_const_iteratorppEv.exit57.thread ], [ %spec.select, %_ZNSt19_Bit_const_iteratorppEv.exit56 ], [ %i.y, %_ZNSt19_Bit_const_iteratorppEv.exit.thread ], [ %.sroa.079.0140, %bb.b ]
  %.sroa.9.0 = phi i32 [ %.sroa.31.1, %_ZNSt19_Bit_const_iteratorppEv.exit59 ], [ %3, %._crit_edge ], [ %.sroa.31.0.lcssa, %bb.f ], [ %spec.select134, %_ZNSt19_Bit_const_iteratorppEv.exit60 ], [ %spec.select136, %_ZNSt19_Bit_const_iteratorppEv.exit60.thread ], [ 1, %_ZNSt19_Bit_const_iteratorppEv.exit56.thread ], [ %i.aq, %_ZNSt19_Bit_const_iteratorppEv.exit57 ], [ %i.r, %_ZNSt19_Bit_const_iteratorppEv.exit ], [ 0, %_ZNSt19_Bit_const_iteratorppEv.exit57.thread ], [ %spec.select128, %_ZNSt19_Bit_const_iteratorppEv.exit56 ], [ 0, %_ZNSt19_Bit_const_iteratorppEv.exit.thread ], [ %.sroa.31.0141, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.020.0.in.sroa.speculated, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.9.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_SB_E_bJSI_SB_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSO_jPNS0_12cleanup_listEE_8__invokeES12_S13_jS15_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_SB_E_bJSI_SB_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSO_jPNS0_12cleanup_listEE_clES12_S13_jS15_.exit:
  %4 = alloca %"struct.nanobind::detail::tuple.439", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr null, ptr %4, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  %spec.select = select i1 %i.e, ptr @_Py_FalseStruct, ptr inttoptr (i64 1 to ptr)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %spec.select
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKbE0_lJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSS_jPNS0_12cleanup_listEE_8__invokeES16_S17_jS19_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.371", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKbE0_lJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = icmp eq ptr %i.g, @_Py_TrueStruct
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %i.g, @_Py_FalseStruct
  br i1 %i.i, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKbE0_lJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]        ; 2 uses
  store i8 %i.j, ptr %4, align 8, !tbaa !111
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !106  ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !100  ; 2 uses
  %i.q = icmp ne ptr %i.l, %i.n
  %i.r = icmp ne i32 %i.p, 0
  %.not3.i9.i.i.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %.not3.i9.i.i.i, label %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i, label %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKbE0_clESG_SI_.exit

_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i:        ; preds = %bb.d, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i
  %.012.i.i.i = phi i64 [ %spec.select.i.i.i, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i ], [ 0, %bb.d ]
  %.sroa.5.011.i.i.i = phi i32 [ %spec.select8.i.i.i, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %.sroa.03.010.i.i.i = phi ptr [ %spec.select7.i.i.i, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  %i.s = zext nneg i32 %.sroa.5.011.i.i.i to i64
  %i.t = load i64, ptr %.sroa.03.010.i.i.i, align 8, !tbaa !81
  %i.u = lshr i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i8
  %i.w = and i8 %i.v, 1
  %i.x = icmp eq i8 %i.j, %i.w
  %i.y = zext i1 %i.x to i64
  %spec.select.i.i.i = add nuw nsw i64 %.012.i.i.i, %i.y ; 2 uses
  %i.z = add i32 %.sroa.5.011.i.i.i, 1
  %i.aa = icmp eq i32 %.sroa.5.011.i.i.i, 63      ; 2 uses
  %spec.select7.idx.i.i.i = select i1 %i.aa, i64 8, i64 0
  %spec.select7.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i.i.i, i64 %spec.select7.idx.i.i.i ; 2 uses
  %spec.select8.i.i.i = select i1 %i.aa, i32 0, i32 %i.z ; 2 uses
  %i.ab = icmp ne ptr %spec.select7.i.i.i, %i.n
  %i.ac = icmp ne i32 %spec.select8.i.i.i, %i.p
  %.not3.i.i.i.i = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %.not3.i.i.i.i, label %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i, label %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKbE0_clESG_SI_.exit, !llvm.loop !331

_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKbE0_clESG_SI_.exit: ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %spec.select.i.i.i, %_ZNSt19_Bit_const_iteratorppEv.exit.i.i.i ]
  %i.ad = invoke ptr @PyLong_FromLong(i64 noundef %.0.lcssa.i.i.i) #29
          to label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKbE0_lJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKbE0_clESG_SI_.exit
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #31
  unreachable

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKbE0_lJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit: ; preds = %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKbE0_clESG_SI_.exit, %bb.c, %bb.a
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.ad, %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKbE0_clESG_SI_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE0_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.371", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE0_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = icmp eq ptr %i.g, @_Py_TrueStruct
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %i.g, @_Py_FalseStruct
  br i1 %i.i, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE0_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  store i8 %.sink.i, ptr %4, align 8, !tbaa !111
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !106  ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.l, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.m = call { ptr, i32 } @_ZSt9__find_ifISt13_Bit_iteratorN9__gnu_cxx5__ops16_Iter_equals_valIKbEEET_S6_S6_T0_St26random_access_iterator_tag(ptr %i.k, i32 0, ptr %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i, ptr nonnull align 1 dereferenceable(1) %4) #29 ; 2 uses
  %.fca.0.extract2.i = extractvalue { ptr, i32 } %i.m, 0 ; 2 uses
  %.fca.1.extract3.i = extractvalue { ptr, i32 } %i.m, 1 ; 2 uses
  %.sroa.0.0.copyload.i25.i = load ptr, ptr %i.l, align 8
  %.sroa.2.0.copyload.i27.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.n = icmp ne ptr %.fca.0.extract2.i, %.sroa.0.0.copyload.i25.i
  %i.o = icmp ne i32 %.fca.1.extract3.i, %.sroa.2.0.copyload.i27.i
  %.not3.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %.not3.i.i, label %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKbE0_clESF_SH_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  invoke void @_ZN8nanobind11value_errorEPKc(ptr dead_on_unwind writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %i.p, ptr noundef null) #29
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__cxa_throw(ptr %i.p, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.p) #30
  resume { ptr, i32 } %i.q

_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKbE0_clESF_SH_.exit: ; preds = %bb.d
  %i.r = call { ptr, i32 } @_ZNSt6vectorIbSaIbEE8_M_eraseESt13_Bit_iterator(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr %.fca.0.extract2.i, i32 %.fca.1.extract3.i) #29 ; 0 uses
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE0_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE0_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.c, %bb.a, %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKbE0_clESF_SH_.exit
  %.0.i = phi ptr [ @_Py_NoneStruct, %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKbE0_clESF_SH_.exit ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden { ptr, i32 } @_ZSt9__find_ifISt13_Bit_iteratorN9__gnu_cxx5__ops16_Iter_equals_valIKbEEET_S6_S6_T0_St26random_access_iterator_tag(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %i.f = zext i32 %1 to i64                       ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f                   ; 2 uses
  %i.h = add i64 %i.g, %i.d
  %i.i = ashr i64 %i.h, 2                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = load i8, ptr %4, align 1, !tbaa !112, !range !113, !noundef !114 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt13_Bit_iteratorppEv.exit58
  %.0142 = phi i64 [ %i.i, %.lr.ph ], [ %i.be, %_ZNSt13_Bit_iteratorppEv.exit58 ] ; 2 uses
  %.sroa.31.0141 = phi i32 [ %1, %.lr.ph ], [ %.sroa.31.6, %_ZNSt13_Bit_iteratorppEv.exit58 ] ; 5 uses
  %.sroa.079.0140 = phi ptr [ %0, %.lr.ph ], [ %.sroa.079.6, %_ZNSt13_Bit_iteratorppEv.exit58 ] ; 5 uses
  %i.l = zext nneg i32 %.sroa.31.0141 to i64
  %i.m = load i64, ptr %.sroa.079.0140, align 8, !tbaa !81 ; 2 uses
  %i.n = lshr i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i8
  %i.p = and i8 %i.o, 1
  %i.q = icmp eq i8 %i.k, %i.p
  br i1 %i.q, label %_ZNSt13_Bit_iteratorppEv.exit61, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = add i32 %.sroa.31.0141, 1                ; 3 uses
  %i.s = icmp eq i32 %.sroa.31.0141, 63
  br i1 %i.s, label %_ZNSt13_Bit_iteratorppEv.exit.thread, label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.c
  %i.t = zext nneg i32 %i.r to i64
  %i.u = lshr i64 %i.m, %i.t
  %i.v = trunc i64 %i.u to i8
  %i.w = and i8 %i.v, 1
  %i.x = icmp eq i8 %i.k, %i.w
  br i1 %i.x, label %_ZNSt13_Bit_iteratorppEv.exit61, label %_ZNSt13_Bit_iteratorppEv.exit56

_ZNSt13_Bit_iteratorppEv.exit.thread:             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.079.0140, i64 8 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !81   ; 3 uses
  %i.aa = trunc i64 %i.z to i8
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.k, %i.ab
  br i1 %i.ac, label %_ZNSt13_Bit_iteratorppEv.exit61, label %_ZNSt13_Bit_iteratorppEv.exit56.thread

_ZNSt13_Bit_iteratorppEv.exit56:                  ; preds = %_ZNSt13_Bit_iteratorppEv.exit
  %i.ad = add i32 %.sroa.31.0141, 2
  %i.ae = icmp eq i32 %i.r, 63                    ; 2 uses
  %spec.select.idx = select i1 %i.ae, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.079.0140, i64 %spec.select.idx ; 4 uses
  %spec.select128 = select i1 %i.ae, i32 0, i32 %i.ad ; 5 uses
  %.pre = load i64, ptr %spec.select, align 8, !tbaa !81 ; 2 uses
  %i.af = zext nneg i32 %spec.select128 to i64
  %i.ag = lshr i64 %.pre, %i.af
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = and i8 %i.ah, 1
  %i.aj = icmp eq i8 %i.k, %i.ai
  br i1 %i.aj, label %_ZNSt13_Bit_iteratorppEv.exit61, label %bb.d

_ZNSt13_Bit_iteratorppEv.exit56.thread:           ; preds = %_ZNSt13_Bit_iteratorppEv.exit.thread
  %i.ak = trunc i64 %i.z to i8
  %i.al = lshr i8 %i.ak, 1
  %i.am = and i8 %i.al, 1
  %i.an = icmp eq i8 %i.k, %i.am
  br i1 %i.an, label %_ZNSt13_Bit_iteratorppEv.exit61, label %_ZNSt13_Bit_iteratorppEv.exit57

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratorppEv.exit56
  %i.ao = add i32 %spec.select128, 1
  %i.ap = icmp eq i32 %spec.select128, 63
  br i1 %i.ap, label %_ZNSt13_Bit_iteratorppEv.exit57.thread, label %_ZNSt13_Bit_iteratorppEv.exit57

_ZNSt13_Bit_iteratorppEv.exit57:                  ; preds = %_ZNSt13_Bit_iteratorppEv.exit56.thread, %bb.d
  %i.aq = phi i32 [ %i.ao, %bb.d ], [ 2, %_ZNSt13_Bit_iteratorppEv.exit56.thread ] ; 3 uses
  %i.ar = phi i64 [ %.pre, %bb.d ], [ %i.z, %_ZNSt13_Bit_iteratorppEv.exit56.thread ]
  %.sroa.079.4165170 = phi ptr [ %spec.select, %bb.d ], [ %i.y, %_ZNSt13_Bit_iteratorppEv.exit56.thread ] ; 2 uses
  %.sroa.31.4166169 = phi i32 [ %spec.select128, %bb.d ], [ 1, %_ZNSt13_Bit_iteratorppEv.exit56.thread ]
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = lshr i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i8
  %i.av = and i8 %i.au, 1
  %i.aw = icmp eq i8 %i.k, %i.av
  br i1 %i.aw, label %_ZNSt13_Bit_iteratorppEv.exit61, label %bb.e

_ZNSt13_Bit_iteratorppEv.exit57.thread:           ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !81
  %i.az = trunc i64 %i.ay to i8
  %i.ba = and i8 %i.az, 1
  %i.bb = icmp eq i8 %i.k, %i.ba
  br i1 %i.bb, label %_ZNSt13_Bit_iteratorppEv.exit61, label %_ZNSt13_Bit_iteratorppEv.exit58

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEv.exit57
  %i.bc = add i32 %.sroa.31.4166169, 2
  %i.bd = icmp eq i32 %i.aq, 63                   ; 2 uses
  %spec.select129.idx = select i1 %i.bd, i64 8, i64 0
  %spec.select129 = getelementptr inbounds nuw i8, ptr %.sroa.079.4165170, i64 %spec.select129.idx
  %spec.select130 = select i1 %i.bd, i32 0, i32 %i.bc
  br label %_ZNSt13_Bit_iteratorppEv.exit58

_ZNSt13_Bit_iteratorppEv.exit58:                  ; preds = %bb.e, %_ZNSt13_Bit_iteratorppEv.exit57.thread
  %.sroa.079.6 = phi ptr [ %i.ax, %_ZNSt13_Bit_iteratorppEv.exit57.thread ], [ %spec.select129, %bb.e ] ; 3 uses
  %.sroa.31.6 = phi i32 [ 1, %_ZNSt13_Bit_iteratorppEv.exit57.thread ], [ %spec.select130, %bb.e ] ; 3 uses
  %i.be = add nsw i64 %.0142, -1
  %5 = icmp samesign ugt i64 %.0142, 1
  br i1 %5, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !332

._crit_edge.loopexit:                             ; preds = %_ZNSt13_Bit_iteratorppEv.exit58
  %.pre147 = ptrtoint ptr %.sroa.079.6 to i64
  %.pre148 = sub i64 %i.a, %.pre147
  %.pre150 = shl nsw i64 %.pre148, 3
  %.pre152 = zext i32 %.sroa.31.6 to i64          ; 2 uses
  %.pre154 = sub nsw i64 %i.e, %.pre152
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi155 = phi i64 [ %.pre154, %._crit_edge.loopexit ], [ %i.g, %bb.a ]
  %.pre-phi153 = phi i64 [ %.pre152, %._crit_edge.loopexit ], [ %i.f, %bb.a ] ; 3 uses
  %.pre-phi151 = phi i64 [ %.pre150, %._crit_edge.loopexit ], [ %i.d, %bb.a ]
  %.sroa.079.0.lcssa = phi ptr [ %.sroa.079.6, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %.sroa.31.0.lcssa = phi i32 [ %.sroa.31.6, %._crit_edge.loopexit ], [ %1, %bb.a ] ; 5 uses
  %i.bf = add i64 %.pre-phi155, %.pre-phi151
  switch i64 %i.bf, label %_ZNSt13_Bit_iteratorppEv.exit61 [
    i64 3, label %bb.f
    i64 2, label %._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge
    i64 1, label %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge
  ]

._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge: ; preds = %._crit_edge
  %.pre145 = load i64, ptr %.sroa.079.0.lcssa, align 8, !tbaa !81
  %.pre146 = load i8, ptr %4, align 1, !tbaa !112, !range !113
  br label %_ZNSt13_Bit_iteratorppEv.exit60

._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge: ; preds = %._crit_edge
  %.pre144 = load i8, ptr %4, align 1, !tbaa !112, !range !113
  br label %_ZNSt13_Bit_iteratorppEv.exit59

bb.f:                                             ; preds = %._crit_edge
  %i.bg = load i64, ptr %.sroa.079.0.lcssa, align 8, !tbaa !81
  %i.bh = load i8, ptr %4, align 1, !tbaa !112, !range !113, !noundef !114 ; 2 uses
  %i.bi = lshr i64 %i.bg, %.pre-phi153
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = and i8 %i.bj, 1
  %i.bl = icmp eq i8 %i.bh, %i.bk
  br i1 %i.bl, label %_ZNSt13_Bit_iteratorppEv.exit61, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = add i32 %.sroa.31.0.lcssa, 1
  %i.bn = icmp eq i32 %.sroa.31.0.lcssa, 63       ; 2 uses
  %spec.select131.idx = select i1 %i.bn, i64 8, i64 0
  %spec.select131 = getelementptr inbounds nuw i8, ptr %.sroa.079.0.lcssa, i64 %spec.select131.idx
  %spec.select132 = select i1 %i.bn, i32 0, i32 %i.bm ; 2 uses
  %.pre156 = zext nneg i32 %spec.select132 to i64
  br label %_ZNSt13_Bit_iteratorppEv.exit59

_ZNSt13_Bit_iteratorppEv.exit59:                  ; preds = %._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge, %bb.g
  %.pre-phi157 = phi i64 [ %.pre-phi153, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge ], [ %.pre156, %bb.g ]
  %i.bo = phi i8 [ %.pre144, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge ], [ %i.bh, %bb.g ] ; 3 uses
  %.sroa.079.1 = phi ptr [ %.sroa.079.0.lcssa, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge ], [ %spec.select131, %bb.g ] ; 4 uses
  %.sroa.31.1 = phi i32 [ %.sroa.31.0.lcssa, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit59_crit_edge ], [ %spec.select132, %bb.g ] ; 3 uses
  %i.bp = load i64, ptr %.sroa.079.1, align 8, !tbaa !81 ; 2 uses
  %i.bq = lshr i64 %i.bp, %.pre-phi157
  %i.br = trunc i64 %i.bq to i8
  %i.bs = and i8 %i.br, 1
  %i.bt = icmp eq i8 %i.bo, %i.bs
  br i1 %i.bt, label %_ZNSt13_Bit_iteratorppEv.exit61, label %bb.h

bb.h:                                             ; preds = %_ZNSt13_Bit_iteratorppEv.exit59
  %i.bu = icmp eq i32 %.sroa.31.1, 63
  br i1 %i.bu, label %_ZNSt13_Bit_iteratorppEv.exit60.thread, label %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge

._ZNSt13_Bit_iteratorppEv.exit60_crit_edge:       ; preds = %bb.h
  %i.bv = add i32 %.sroa.31.1, 1                  ; 2 uses
  %.pre158 = zext nneg i32 %i.bv to i64
  br label %_ZNSt13_Bit_iteratorppEv.exit60

_ZNSt13_Bit_iteratorppEv.exit60:                  ; preds = %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge
  %.pre-phi159 = phi i64 [ %.pre158, %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ], [ %.pre-phi153, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ]
  %i.bw = phi i8 [ %i.bo, %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ], [ %.pre146, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ]
  %i.bx = phi i64 [ %i.bp, %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ], [ %.pre145, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ]
  %.sroa.079.2 = phi ptr [ %.sroa.079.1, %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ], [ %.sroa.079.0.lcssa, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ]
  %.sroa.31.2 = phi i32 [ %i.bv, %._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ], [ %.sroa.31.0.lcssa, %._crit_edge._ZNSt13_Bit_iteratorppEv.exit60_crit_edge ]
  %i.by = lshr i64 %i.bx, %.pre-phi159
  %i.bz = trunc i64 %i.by to i8
  %i.ca = and i8 %i.bz, 1
  %i.cb = icmp eq i8 %i.bw, %i.ca                 ; 2 uses
  %spec.select133 = select i1 %i.cb, ptr %.sroa.079.2, ptr %2
  %spec.select134 = select i1 %i.cb, i32 %.sroa.31.2, i32 %3
  br label %_ZNSt13_Bit_iteratorppEv.exit61

_ZNSt13_Bit_iteratorppEv.exit60.thread:           ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.079.1, i64 8 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !81
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = and i8 %i.ce, 1
  %i.cg = icmp eq i8 %i.bo, %i.cf                 ; 2 uses
  %spec.select135 = select i1 %i.cg, ptr %i.cc, ptr %2
  %spec.select136 = select i1 %i.cg, i32 0, i32 %3
  br label %_ZNSt13_Bit_iteratorppEv.exit61

_ZNSt13_Bit_iteratorppEv.exit61:                  ; preds = %_ZNSt13_Bit_iteratorppEv.exit57.thread, %_ZNSt13_Bit_iteratorppEv.exit57, %_ZNSt13_Bit_iteratorppEv.exit56, %_ZNSt13_Bit_iteratorppEv.exit.thread, %_ZNSt13_Bit_iteratorppEv.exit, %bb.b, %_ZNSt13_Bit_iteratorppEv.exit56.thread, %_ZNSt13_Bit_iteratorppEv.exit60.thread, %_ZNSt13_Bit_iteratorppEv.exit60, %._crit_edge, %_ZNSt13_Bit_iteratorppEv.exit59, %bb.f
  %.sroa.020.0.in.sroa.speculated = phi ptr [ %.sroa.079.1, %_ZNSt13_Bit_iteratorppEv.exit59 ], [ %2, %._crit_edge ], [ %.sroa.079.0.lcssa, %bb.f ], [ %spec.select133, %_ZNSt13_Bit_iteratorppEv.exit60 ], [ %spec.select135, %_ZNSt13_Bit_iteratorppEv.exit60.thread ], [ %i.y, %_ZNSt13_Bit_iteratorppEv.exit56.thread ], [ %.sroa.079.4165170, %_ZNSt13_Bit_iteratorppEv.exit57 ], [ %.sroa.079.0140, %_ZNSt13_Bit_iteratorppEv.exit ], [ %i.ax, %_ZNSt13_Bit_iteratorppEv.exit57.thread ], [ %spec.select, %_ZNSt13_Bit_iteratorppEv.exit56 ], [ %i.y, %_ZNSt13_Bit_iteratorppEv.exit.thread ], [ %.sroa.079.0140, %bb.b ]
  %.sroa.9.0 = phi i32 [ %.sroa.31.1, %_ZNSt13_Bit_iteratorppEv.exit59 ], [ %3, %._crit_edge ], [ %.sroa.31.0.lcssa, %bb.f ], [ %spec.select134, %_ZNSt13_Bit_iteratorppEv.exit60 ], [ %spec.select136, %_ZNSt13_Bit_iteratorppEv.exit60.thread ], [ 1, %_ZNSt13_Bit_iteratorppEv.exit56.thread ], [ %i.aq, %_ZNSt13_Bit_iteratorppEv.exit57 ], [ %i.r, %_ZNSt13_Bit_iteratorppEv.exit ], [ 0, %_ZNSt13_Bit_iteratorppEv.exit57.thread ], [ %spec.select128, %_ZNSt13_Bit_iteratorppEv.exit56 ], [ 0, %_ZNSt13_Bit_iteratorppEv.exit.thread ], [ %.sroa.31.0141, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.020.0.in.sroa.speculated, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.9.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EEiE_vJSG_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSM_jPNS0_12cleanup_listEE_8__invokeES10_S11_jS13_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::type_caster.461", align 8 ; 5 uses
  %5 = alloca %"struct.nanobind::detail::tuple.455", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 4 uses
  %i.d = and i32 %2, 32
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.thread

_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.thread: ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  store i64 %i.e, ptr %i.a, align 8
  %i.f = tail call noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %i.c) #28
  store ptr %i.f, ptr %i.b, align 8, !tbaa !335
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %2, -34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.i = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.h, ptr noundef nonnull @_ZTIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2El, ptr noundef %i.c, i32 noundef %i.g, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.i, label %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.thread6, label %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit

_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.thread6: ; preds = %bb.b
  %i.j = ptrtoint ptr %i.c to i64
  store i64 %i.j, ptr %i.a, align 8
  %.val.i = load ptr, ptr %4, align 8, !tbaa !119
  store ptr %.val.i, ptr %i.b, align 8, !tbaa !335
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.c

_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EEiE_vJSG_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSM_jPNS0_12cleanup_listEE_clES10_S11_jS13_.exit

bb.c:                                             ; preds = %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.thread6, %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = and i32 %2, -35
  %i.n = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.o = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.n, ptr noundef %i.l, i32 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(4) %5) #28
  br i1 %i.o, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EEiE_vJSG_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSM_jPNS0_12cleanup_listEE_clES10_S11_jS13_.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  %i.p = load i32, ptr %5, align 8, !tbaa !33
  store i32 %i.p, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !337
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EEiE_vJSG_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSM_jPNS0_12cleanup_listEE_clES10_S11_jS13_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EEiE_vJSG_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSM_jPNS0_12cleanup_listEE_clES10_S11_jS13_.exit: ; preds = %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit, %bb.c, %bb.d
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.0.i
}

; Function Attrs: nounwind optsize
declare noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN8nanobind6detail16property_installEPNS0_12nb_internalsEP7_objectPKcS4_S4_b(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElJEE6def_rwIS4_iJEEERS5_PKcMT_T0_DpRKT1_EUlRKS4_E_RKiJSI_EJLm0EEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSO_5valueE6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPST_jPNS0_12cleanup_listEE_8__invokeES17_S18_jS1A_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.469", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2El, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElJEE6def_rwIS4_iJEEERS5_PKcMT_T0_DpRKT1_EUlRKS4_E_RKiJSI_EJLm0EEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSO_5valueE6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %4, align 8, !tbaa !119
  %.val3 = load i64, ptr %0, align 8, !tbaa !339
  %i.e = getelementptr inbounds i8, ptr %.val, i64 %.val3
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %i.g = sext i32 %i.f to i64
  %i.h = invoke ptr @PyLong_FromLong(i64 noundef %i.g) #29
          to label %_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElJEE6def_rwIS4_iJEEERS5_PKcMT_T0_DpRKT1_EUlRKS4_E_RKiJSI_EJLm0EEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSO_5valueE6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElJEE6def_rwIS4_iJEEERS5_PKcMT_T0_DpRKT1_EUlRKS4_E_RKiJSI_EJLm0EEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSO_5valueE6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit: ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}
end_hunk_2
begin_hunk_3_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSV_jPNS0_12cleanup_listEE_8__invokeES19_S1A_jS1C_:bb.a
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph.i, label %.loopexit, !llvm.loop !555

.loopexit:                                        ; preds = %.lr.ph.i, %_ZSt8_DestroyIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i, %bb.g, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.k:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.bi

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit: ; preds = %bb.a, %bb.b, %.loopexit
  %.0.i = phi ptr [ @_Py_NoneStruct, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN8nanobind6detail7op_implILNS0_5op_idE25ELNS0_7op_typeE0ESt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS8_EESA_SA_E7executeERKSA_SD_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) #23 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !145   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !146 ; 3 uses
  %.val3 = load ptr, ptr %1, align 8, !tbaa !145  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.c = ptrtoint ptr %.val2 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ptrtoint ptr %.val4 to i64
  %i.g = ptrtoint ptr %.val3 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp eq i64 %i.e, %i.h
  br i1 %i.i, label %bb.b, label %_ZSteqISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit

bb.b:                                             ; preds = %bb.a
  %.not9.i.i.i.i.i = icmp eq ptr %.val, %.val2
  br i1 %.not9.i.i.i.i.i, label %_ZSteqISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %.val3, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %.val, %bb.b ] ; 2 uses
  %.08.val.i.i.i.i.i = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !156
  %.0.val.i.i.i.i.i = load ptr, ptr %.011.i.i.i.i.i, align 8, !tbaa !156
  %i.j = icmp eq ptr %.08.val.i.i.i.i.i, %.0.val.i.i.i.i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp ne ptr %i.k, %.val2
  %or.cond.not = select i1 %i.j, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZSteqISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit, !llvm.loop !12

_ZSteqISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a, %bb.b
  %i.m = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.j, %.lr.ph.i.i.i.i.i ]
  ret i1 %i.m
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS6_EESA_EbJSA_SA_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSI_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.1016", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS6_EESA_EbJSA_SA_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSI_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -43
  %i.i = or disjoint i32 %i.h, 8
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.j, ptr noundef nonnull @_ZTISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS6_EESA_EbJSA_SA_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSI_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !57
  %.val3 = load ptr, ptr %i.a, align 8, !tbaa !152
  %.val = load ptr, ptr %4, align 8, !tbaa !152
  %i.m = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %.val3, ptr noundef nonnull align 8 dereferenceable(24) %.val) #29, !inline_history !556
  %spec.select.i = select i1 %i.m, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS6_EESA_EbJSA_SA_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSI_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS6_EESA_EbJSA_SA_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSI_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %spec.select.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN8nanobind6detail7op_implILNS0_5op_idE26ELNS0_7op_typeE0ESt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS8_EESA_SA_E7executeERKSA_SD_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) #23 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !145   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !146 ; 3 uses
  %.val3 = load ptr, ptr %1, align 8, !tbaa !145  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.c = ptrtoint ptr %.val2 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ptrtoint ptr %.val4 to i64
  %i.g = ptrtoint ptr %.val3 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp eq i64 %i.e, %i.h
  br i1 %i.i, label %bb.b, label %_ZStneISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit

bb.b:                                             ; preds = %bb.a
  %.not9.i.i.i.i.i.i = icmp eq ptr %.val, %.val2
  br i1 %.not9.i.i.i.i.i.i, label %_ZStneISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i ], [ %.val3, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i ], [ %.val, %bb.b ] ; 2 uses
  %.08.val.i.i.i.i.i.i = load ptr, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !156
  %.0.val.i.i.i.i.i.i = load ptr, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !156
  %.not.i.not = icmp ne ptr %.08.val.i.i.i.i.i.i, %.0.val.i.i.i.i.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, %.val2
  %or.cond = select i1 %.not.i.not, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond, label %_ZStneISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !12

_ZStneISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a, %bb.b
  %i.l = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %.not.i.not, %.lr.ph.i.i.i.i.i.i ]
  ret i1 %i.l
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS9_RKS7_E_bJSM_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSV_jPNS0_12cleanup_listEE_8__invokeES19_S1A_jS1C_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.998", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS9_RKS7_E_bJSM_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = call fastcc noundef zeroext i1 @_ZN8nanobind6detail11type_casterISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #28
  br i1 %i.i, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS9_RKS7_E_bJSM_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %.val3 = load ptr, ptr %.val, align 8, !tbaa !142 ; 4 uses
  %i.j = getelementptr i8, ptr %.val, i64 8
  %.val4 = load ptr, ptr %i.j, align 8, !tbaa !142 ; 4 uses
  %.val5 = load ptr, ptr %4, align 8              ; 7 uses
  %i.k = ptrtoint ptr %.val4 to i64               ; 2 uses
  %i.l = ptrtoint ptr %.val3 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = ashr i64 %i.m, 6                         ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.p = and i64 %i.m, -64
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val3, i64 %i.p ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.059.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i ], [ %i.y, %bb.h ] ; 2 uses
  %.sroa.041.058.i.i.i.i = phi ptr [ %.val3, %.lr.ph.i.i.i.i ], [ %i.x, %bb.h ] ; 9 uses
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.041.058.i.i.i.i, align 8, !tbaa !156
  %i.q = icmp eq ptr %.val.i.i.i.i.i, %.val5
  br i1 %i.q, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 16
  %.val.i26.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !156
  %i.s = icmp eq ptr %.val.i26.i.i.i.i, %.val5
  br i1 %i.s, label %.loopexit.loopexit.split.loop.exit24, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 32
  %.val.i27.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !156
  %i.u = icmp eq ptr %.val.i27.i.i.i.i, %.val5
  br i1 %i.u, label %.loopexit.loopexit.split.loop.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 48
  %.val.i28.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !156
  %i.w = icmp eq ptr %.val.i28.i.i.i.i, %.val5
  br i1 %i.w, label %.loopexit.loopexit.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 64
  %i.y = add nsw i64 %.059.i.i.i.i, -1
  %5 = icmp samesign ugt i64 %.059.i.i.i.i, 1
  br i1 %5, label %bb.d, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !557

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.h
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre67.i.i.i.i = sub i64 %i.k, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.c
  %.pre-phi68.i.i.i.i = phi i64 [ %.pre67.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.m, %bb.c ]
  %.sroa.041.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.val3, %bb.c ] ; 5 uses
  %i.z = ashr exact i64 %.pre-phi68.i.i.i.i, 4
  switch i64 %i.z, label %.loopexit [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i29.i.i.i.i = load ptr, ptr %.sroa.041.0.lcssa.i.i.i.i, align 8, !tbaa !156
  %i.aa = icmp eq ptr %.val.i29.i.i.i.i, %.val5
  br i1 %i.aa, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.041.0.lcssa.i.i.i.i, i64 16
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.sroa.041.1.i.i.i.i = phi ptr [ %i.ab, %bb.j ], [ %.sroa.041.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.val.i30.i.i.i.i = load ptr, ptr %.sroa.041.1.i.i.i.i, align 8, !tbaa !156
  %i.ac = icmp eq ptr %.val.i30.i.i.i.i, %.val5
  br i1 %i.ac, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.041.1.i.i.i.i, i64 16
  br label %._crit_edge._crit_edge65.i.i.i.i

._crit_edge._crit_edge65.i.i.i.i:                 ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.sroa.041.2.i.i.i.i = phi ptr [ %i.ad, %bb.k ], [ %.sroa.041.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.val.i31.i.i.i.i = load ptr, ptr %.sroa.041.2.i.i.i.i, align 8, !tbaa !156
  %i.ae = icmp eq ptr %.val.i31.i.i.i.i, %.val5
  %spec.select.i.i.i.i = select i1 %i.ae, ptr %.sroa.041.2.i.i.i.i, ptr %.val4
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 48
  br label %.loopexit

.loopexit.loopexit.split.loop.exit22:             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 32
  br label %.loopexit

.loopexit.loopexit.split.loop.exit24:             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit22, %.loopexit.loopexit.split.loop.exit24, %._crit_edge._crit_edge65.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.i, %._crit_edge.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.041.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge65.i.i.i.i ], [ %.val4, %._crit_edge.i.i.i.i ], [ %.sroa.041.0.lcssa.i.i.i.i, %bb.i ], [ %i.ah, %.loopexit.loopexit.split.loop.exit24 ], [ %i.ag, %.loopexit.loopexit.split.loop.exit22 ], [ %i.af, %.loopexit.loopexit.split.loop.exit ], [ %.sroa.041.058.i.i.i.i, %bb.d ]
  %.not = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.val4
  %spec.select.i = select i1 %.not, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS9_RKS7_E_bJSM_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS9_RKS7_E_bJSM_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit: ; preds = %bb.a, %bb.b, %.loopexit
  %.013.i = phi ptr [ %spec.select.i, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.013.i
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS9_SF_E_bJSM_SF_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSS_jPNS0_12cleanup_listEE_8__invokeES16_S17_jS19_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #8 align 2 personality ptr @__gxx_personality_v0 {
_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS9_SF_E_bJSM_SF_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit:
  %4 = alloca %"struct.nanobind::detail::tuple.1068", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr null, ptr %4, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  %spec.select = select i1 %i.e, ptr @_Py_FalseStruct, ptr inttoptr (i64 1 to ptr)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %spec.select
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS9_RKS7_E0_lJSM_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSW_jPNS0_12cleanup_listEE_8__invokeES1A_S1B_jS1D_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.998", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS9_RKS7_E0_lJSM_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSW_jPNS0_12cleanup_listEE_clES1A_S1B_jS1D_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = call fastcc noundef zeroext i1 @_ZN8nanobind6detail11type_casterISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #28
  br i1 %i.i, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS9_RKS7_E0_lJSM_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSW_jPNS0_12cleanup_listEE_clES1A_S1B_jS1D_.exit

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %.val3 = load ptr, ptr %.val, align 8, !tbaa !142 ; 2 uses
  %i.j = getelementptr i8, ptr %.val, i64 8
  %.val4 = load ptr, ptr %i.j, align 8, !tbaa !142 ; 2 uses
  %.val5 = load ptr, ptr %4, align 8
  %.not6.i.i.i = icmp eq ptr %.val3, %.val4
  br i1 %.not6.i.i.i, label %_ZZN8nanobind11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS7_RKS5_E0_clESK_SM_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.08.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.c ]
  %.sroa.05.07.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.val3, %bb.c ] ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.05.07.i.i.i, align 8, !tbaa !156
  %i.k = icmp eq ptr %.val.i.i.i.i, %.val5
  %i.l = zext i1 %i.k to i64
  %spec.select.i.i.i = add nuw nsw i64 %.08.i.i.i, %i.l ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %.val4
  br i1 %.not.i.i.i, label %_ZZN8nanobind11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS7_RKS5_E0_clESK_SM_.exit, label %.lr.ph.i.i.i, !llvm.loop !558

_ZZN8nanobind11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS7_RKS5_E0_clESK_SM_.exit: ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.n = invoke ptr @PyLong_FromLong(i64 noundef %.0.lcssa.i.i.i) #29
          to label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS9_RKS7_E0_lJSM_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSW_jPNS0_12cleanup_listEE_clES1A_S1B_jS1D_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZZN8nanobind11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS7_RKS5_E0_clESK_SM_.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #31
  unreachable

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS9_RKS7_E0_lJSM_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSW_jPNS0_12cleanup_listEE_clES1A_S1B_jS1D_.exit: ; preds = %_ZZN8nanobind11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS7_RKS5_E0_clESK_SM_.exit, %bb.a, %bb.b
  %.013.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ], [ %i.n, %_ZZN8nanobind11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS7_RKS5_E0_clESK_SM_.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.013.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E0_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSV_jPNS0_12cleanup_listEE_8__invokeES19_S1A_jS1C_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.998", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E0_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = call fastcc noundef zeroext i1 @_ZN8nanobind6detail11type_casterISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #28
  br i1 %i.i, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E0_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !152 ; 3 uses
  %.val3 = load ptr, ptr %4, align 8              ; 7 uses
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !142 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val9.i = load ptr, ptr %i.j, align 8, !tbaa !142 ; 3 uses
  %i.k = ptrtoint ptr %.val9.i to i64             ; 2 uses
  %i.l = ptrtoint ptr %.val.i to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = ashr i64 %i.m, 6                         ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.p = and i64 %i.m, -64
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val.i, i64 %i.p ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.059.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i ], [ %i.y, %bb.h ] ; 2 uses
  %.sroa.041.058.i.i.i.i = phi ptr [ %.val.i, %.lr.ph.i.i.i.i ], [ %i.x, %bb.h ] ; 9 uses
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.041.058.i.i.i.i, align 8, !tbaa !156
  %i.q = icmp eq ptr %.val.i.i.i.i.i, %.val3
  br i1 %i.q, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 16
  %.val.i26.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !156
  %i.s = icmp eq ptr %.val.i26.i.i.i.i, %.val3
  br i1 %i.s, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 32
  %.val.i27.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !156
  %i.u = icmp eq ptr %.val.i27.i.i.i.i, %.val3
  br i1 %i.u, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit19, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 48
  %.val.i28.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !156
  %i.w = icmp eq ptr %.val.i28.i.i.i.i, %.val3
  br i1 %i.w, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 64
  %i.y = add nsw i64 %.059.i.i.i.i, -1
  %5 = icmp samesign ugt i64 %.059.i.i.i.i, 1
  br i1 %5, label %bb.d, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !559

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.h
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre67.i.i.i.i = sub i64 %i.k, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.c
  %.pre-phi68.i.i.i.i = phi i64 [ %.pre67.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.m, %bb.c ]
  %.sroa.041.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.val.i, %bb.c ] ; 5 uses
  %i.z = ashr exact i64 %.pre-phi68.i.i.i.i, 4
  switch i64 %i.z, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.thread.i [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i29.i.i.i.i = load ptr, ptr %.sroa.041.0.lcssa.i.i.i.i, align 8, !tbaa !156
  %i.aa = icmp eq ptr %.val.i29.i.i.i.i, %.val3
  br i1 %i.aa, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.041.0.lcssa.i.i.i.i, i64 16
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.sroa.041.1.i.i.i.i = phi ptr [ %i.ab, %bb.j ], [ %.sroa.041.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.val.i30.i.i.i.i = load ptr, ptr %.sroa.041.1.i.i.i.i, align 8, !tbaa !156
  %i.ac = icmp eq ptr %.val.i30.i.i.i.i, %.val3
  br i1 %i.ac, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.041.1.i.i.i.i, i64 16
  br label %._crit_edge._crit_edge65.i.i.i.i

._crit_edge._crit_edge65.i.i.i.i:                 ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.sroa.041.2.i.i.i.i = phi ptr [ %i.ad, %bb.k ], [ %.sroa.041.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.val.i31.i.i.i.i = load ptr, ptr %.sroa.041.2.i.i.i.i, align 8, !tbaa !156
  %i.ae = icmp eq ptr %.val.i31.i.i.i.i, %.val3
  %spec.select.i.i.i.i = select i1 %i.ae, ptr %.sroa.041.2.i.i.i.i, ptr %.val9.i
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit19: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 32
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit21: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 48
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i: ; preds = %bb.d, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit19, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit21, %._crit_edge._crit_edge65.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.041.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge65.i.i.i.i ], [ %.sroa.041.0.lcssa.i.i.i.i, %bb.i ], [ %i.ah, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit21 ], [ %i.af, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.ag, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit19 ], [ %.sroa.041.058.i.i.i.i, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.val9.i
  br i1 %.not.i, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.thread.i, label %bb.n

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.thread.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i, %._crit_edge.i.i.i.i
  %i.ai = call ptr @__cxa_allocate_exception(i64 24) #30 ; 5 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.ai, ptr noundef nonnull @.str.1) #29
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.thread.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi117builtin_exceptionE, i64 16), ptr %i.ai, align 8, !tbaa !60, !alias.scope !562
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 4, ptr %i.aj, align 8, !tbaa !86, !alias.scope !562
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.thread.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #30
  br label %.body

bb.n:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.i
  call fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %.val, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i) #29
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E0_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.o:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.o ], [ %i.ak, %bb.m ]
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %eh.lpad-body

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E0_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA36_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit: ; preds = %bb.a, %bb.b, %bb.n
  %.012.i = phi ptr [ @_Py_NoneStruct, %bb.n ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.012.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_copyI3CntEEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat {
bb.a:
  tail call void @_ZN3CntC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #29
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_moveI3CntEEvPvS3_(ptr noundef %0, ptr noundef %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr @_ZN3Cnt5aliveE, align 4, !tbaa !33
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @_ZN3Cnt5aliveE, align 4, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail13wrap_destructI3CntEEvPv(ptr noundef %0) #0 comdat {
bb.a:
  %i.a = load i32, ptr @_ZN3Cnt5aliveE, align 4, !tbaa !33
  %i.b = add nsw i32 %i.a, -1
  store i32 %i.b, ptr @_ZN3Cnt5aliveE, align 4, !tbaa !33
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN3CntC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr @_ZN3Cnt11throw_afterE, align 4, !tbaa !33 ; 3 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.61) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #30
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %i.a, 0
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = add nsw i32 %i.a, -1
  store i32 %i.f, ptr @_ZN3Cnt11throw_afterE, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = load i32, ptr @_ZN3Cnt5aliveE, align 4, !tbaa !33
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr @_ZN3Cnt5aliveE, align 4, !tbaa !33
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_I3CntJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS6_EEE_vJSF_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSL_jPNS0_12cleanup_listEE_8__invokeESZ_S10_jS12_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.1084", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !35
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_18pointer_and_handleI3CntEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.b, i32 noundef %i.c, ptr noundef %3) #28
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_I3CntJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS6_EEE_vJSF_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @_ZN3Cnt5aliveE, align 4, !tbaa !33
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr @_ZN3Cnt5aliveE, align 4, !tbaa !33
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_I3CntJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS6_EEE_vJSF_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_I3CntJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS6_EEE_vJSF_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_18pointer_and_handleI3CntEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_3
begin_hunk_4_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_20index_iterator_stateILNS_9rv_policy5valueE6ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS8_EEEELS5_6EEEvNS_6handleEPKcEUlSC_E_SC_JSC_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSK_jPNS0_12cleanup_listEE_8__invokeESY_SZ_jS11_:bb.a

_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_20index_iterator_stateILNS_9rv_policy5valueE6ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS8_EEEELS5_6EEEvNS_6handleEPKcEUlSC_E_SC_JSC_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSK_jPNS0_12cleanup_listEE_clESY_SZ_jS11_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_20index_iterator_stateILNS_9rv_policy5valueE6ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS8_EEEELS5_6EEEvNS_6handleEPKcEUlRSB_E_NS0_9next_stepISB_EEJSF_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS4_10policy_tagILS5_6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSP_jPNS0_12cleanup_listEE_8__invokeES13_S14_jS16_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.1379", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIN8nanobind6detail20index_iterator_stateILNS_9rv_policy5valueE6ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS6_EEEE, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_20index_iterator_stateILNS_9rv_policy5valueE6ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS8_EEEELS5_6EEEvNS_6handleEPKcEUlRSB_E_NS0_9next_stepISB_EEJSF_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS4_10policy_tagILS5_6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSP_jPNS0_12cleanup_listEE_clES13_S14_jS16_.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %4, align 8, !tbaa !620   ; 2 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %.val, align 8
  %i.e = call noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %.sroa.01.0.copyload.i) #28 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !191  ; 3 uses
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !188 ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %.val12.i = load ptr, ptr %i.h, align 8, !tbaa !189
  %i.i = ptrtoint ptr %.val12.i to i64
  %i.j = ptrtoint ptr %.val.i to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2
  %.not.i = icmp ult i64 %i.g, %i.l
  br i1 %.not.i, label %_ZN8nanobind6detail12infer_policyIRZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEENS_9rv_policyES5_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.f, align 8, !tbaa !191
  %i.m = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !23
  invoke void @PyErr_SetNone(ptr noundef %i.m) #29
          to label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_20index_iterator_stateILNS_9rv_policy5valueE6ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS8_EEEELS5_6EEEvNS_6handleEPKcEUlRSB_E_NS0_9next_stepISB_EEJSF_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS4_10policy_tagILS5_6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSP_jPNS0_12cleanup_listEE_clES13_S14_jS16_.exit unwind label %bb.d

_ZN8nanobind6detail12infer_policyIRZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEENS_9rv_policyES5_.exit.i: ; preds = %bb.b
  %i.n = add nuw i64 %i.g, 1
  store i64 %i.n, ptr %i.f, align 8, !tbaa !191
  %i.o = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.g
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.q = call noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef %i.p, ptr noundef nonnull @_ZTIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_nc, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.o, i8 6, ptr noundef %3, ptr noundef null) #28
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_20index_iterator_stateILNS_9rv_policy5valueE6ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS8_EEEELS5_6EEEvNS_6handleEPKcEUlRSB_E_NS0_9next_stepISB_EEJSF_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS4_10policy_tagILS5_6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSP_jPNS0_12cleanup_listEE_clES13_S14_jS16_.exit

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_20index_iterator_stateILNS_9rv_policy5valueE6ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS8_EEEELS5_6EEEvNS_6handleEPKcEUlRSB_E_NS0_9next_stepISB_EEJSF_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS4_10policy_tagILS5_6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSP_jPNS0_12cleanup_listEE_clES13_S14_jS16_.exit: ; preds = %_ZN8nanobind6detail12infer_policyIRZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEENS_9rv_policyES5_.exit.i, %bb.c, %bb.a
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.q, %_ZN8nanobind6detail12infer_policyIRZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEENS_9rv_policyES5_.exit.i ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS5_EELNS_9rv_policy5valueE6EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lE_RS5_JSJ_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS8_10policy_tagILS9_6EEENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPST_jPNS0_12cleanup_listEE_8__invokeES17_S18_jS1A_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.1390", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS5_EELNS_9rv_policy5valueE6EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lE_RS5_JSJ_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS8_10policy_tagILS9_6EEENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail8load_i64EPNS0_12nb_internalsEP7_objectjPl(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.j, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS5_EELNS_9rv_policy5valueE6EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lE_RS5_JSJ_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS8_10policy_tagILS9_6EEENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !187 ; 2 uses
  %i.k = load i64, ptr %4, align 8, !tbaa !81     ; 2 uses
  %.val3 = load ptr, ptr %.val, align 8, !tbaa !188 ; 2 uses
  %i.l = getelementptr i8, ptr %.val, i64 8
  %.val4 = load ptr, ptr %i.l, align 8, !tbaa !189
  %i.m = ptrtoint ptr %.val4 to i64
  %i.n = ptrtoint ptr %.val3 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 2 uses
  %i.q = icmp slt i64 %i.k, 0
  %i.r = select i1 %i.q, i64 %i.p, i64 0
  %spec.select.i.i = add nsw i64 %i.r, %i.k       ; 3 uses
  %i.s = icmp sgt i64 %spec.select.i.i, -1
  %.not.i.i = icmp ult i64 %spec.select.i.i, %i.p
  %or.cond.i.i = and i1 %i.s, %.not.i.i
  br i1 %or.cond.i.i, label %_ZN8nanobind6detail12infer_policyIRZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEENS_9rv_policyES5_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  invoke void @_ZN8nanobind11index_errorEPKc(ptr dead_on_unwind writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %i.t, ptr noundef null) #29
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.t) #30
  resume { ptr, i32 } %i.u

_ZN8nanobind6detail12infer_policyIRZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEENS_9rv_policyES5_.exit.i: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val3, i64 %spec.select.i.i
  %i.w = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.x = call noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef %i.w, ptr noundef nonnull @_ZTIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_nc, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.v, i8 6, ptr noundef %3, ptr noundef null) #28
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS5_EELNS_9rv_policy5valueE6EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lE_RS5_JSJ_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS8_10policy_tagILS9_6EEENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS5_EELNS_9rv_policy5valueE6EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lE_RS5_JSJ_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS8_10policy_tagILS9_6EEENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit: ; preds = %bb.a, %bb.b, %_ZN8nanobind6detail12infer_policyIRZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEENS_9rv_policyES5_.exit.i
  %.0.i = phi ptr [ %i.x, %_ZN8nanobind6detail12infer_policyIRZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEENS_9rv_policyES5_.exit.i ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS5_EELNS_9rv_policy5valueE6EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_E_vJSJ_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA28_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.1346", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS5_EELNS_9rv_policy5valueE6EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_E_vJSJ_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA28_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %4, align 8, !tbaa !187   ; 2 uses
  %i.e = load ptr, ptr %.val, align 8, !tbaa !188 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !189
  %.not.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS5_EELNS_9rv_policy5valueE6EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_E_vJSJ_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA28_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit, label %_ZSt8_DestroyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncS2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncS2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.b
  store ptr %i.e, ptr %i.f, align 8, !tbaa !189
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS5_EELNS_9rv_policy5valueE6EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_E_vJSJ_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA28_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS5_EELNS_9rv_policy5valueE6EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_E_vJSJ_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA28_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %_ZSt8_DestroyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncS2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.b, %bb.a
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ @_Py_NoneStruct, %bb.b ], [ @_Py_NoneStruct, %_ZSt8_DestroyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncS2_EvT_S4_RSaIT0_E.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE3$_2St6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implS2_E4E_ncSaIS5_EEJiEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.456", align 4 ; 4 uses
  %5 = alloca %"class.std::vector.1325", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.b, ptr noundef %i.a, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #28
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE3$_2St6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implS2_E4E_ncSaIS5_EEJiEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.d = load i32, ptr %4, align 4, !tbaa !33     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !627
  %.not8.i = icmp slt i32 %i.d, 1
  br i1 %.not8.i, label %_ZN8nanobind6detail12infer_policyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS4_EEEENS_9rv_policyES7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12emplace_backIJRiEEERS2_DpOT_.exit.i, %.lr.ph.i
  %.val26.i.i.i = phi ptr [ null, %.lr.ph.i ], [ %.val26.i.i19.i, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12emplace_backIJRiEEERS2_DpOT_.exit.i ] ; 8 uses
  %i.g = phi ptr [ null, %.lr.ph.i ], [ %i.aa, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12emplace_backIJRiEEERS2_DpOT_.exit.i ] ; 5 uses
  %i.h = phi ptr [ null, %.lr.ph.i ], [ %i.ab, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12emplace_backIJRiEEERS2_DpOT_.exit.i ] ; 3 uses
  %storemerge9.i = phi i32 [ 1, %.lr.ph.i ], [ %i.ac, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12emplace_backIJRiEEERS2_DpOT_.exit.i ] ; 4 uses
  %.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %storemerge9.i, ptr %i.h, align 4, !tbaa !181, !noalias !627
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.i, ptr %i.e, align 8, !tbaa !189, !alias.scope !627
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12emplace_backIJRiEEERS2_DpOT_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %.val26.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775804
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #33
          to label %.noexc.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !627

.noexc.i:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.n = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.o = icmp eq ptr %i.g, %.val26.i.i.i          ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.o, i64 1, i64 %i.n
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = call i64 @llvm.umin.i64(i64 %i.p, i64 2305843009213693951)
  %i.s = select i1 %i.q, i64 2305843009213693951, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #34
          to label %.noexc5.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit, !noalias !627 ; 6 uses

.noexc5.i:                                        ; preds = %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i32 %storemerge9.i, ptr %i.v, align 4, !tbaa !181, !noalias !627
  br i1 %i.o, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc5.i, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %.noexc5.i ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %.val26.i.i.i, %.noexc5.i ] ; 2 uses
  %.09.val.i.i.i.i.i.i = load i32, ptr %.092.i.i.i.i.i.i, align 4, !tbaa !33, !noalias !627
  store i32 %.09.val.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i, align 4, !tbaa !33, !alias.scope !628, !noalias !627
  %i.w = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !625

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc5.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc5.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i38.i.i.i = icmp eq ptr %.val26.i.i.i, null
  br i1 %.not.i38.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val26.i.i.i, i64 noundef %i.l) #32, !noalias !627
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i.i
  store ptr %i.u, ptr %5, align 8, !tbaa !188, !alias.scope !627
  store ptr %i.y, ptr %i.e, align 8, !tbaa !189, !alias.scope !627
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s ; 2 uses
  store ptr %i.z, ptr %i.f, align 8, !tbaa !184, !alias.scope !627
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12emplace_backIJRiEEERS2_DpOT_.exit.i

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12emplace_backIJRiEEERS2_DpOT_.exit.i: ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.d
  %.val26.i.i19.i = phi ptr [ %i.u, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.val26.i.i.i, %bb.d ]
  %i.aa = phi ptr [ %i.z, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.g, %bb.d ]
  %i.ab = phi ptr [ %i.y, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.i, %bb.d ]
  %i.ac = add nuw i32 %storemerge9.i, 1
  %exitcond.not.i = icmp eq i32 %storemerge9.i, %i.d
  br i1 %exitcond.not.i, label %_ZN8nanobind6detail12infer_policyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS4_EEEENS_9rv_policyES7_.exit, label %bb.c, !llvm.loop !626

.loopexit.split-lp.i.loopexit.split-lp.loopexit:  ; preds = %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.a

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.a

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.a: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.loopexit
  %6 = phi i64 [ %i.l, %.loopexit.split-lp.i.loopexit.split-lp.loopexit ], [ 9223372036854775804, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.i.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp36, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i6.i = icmp eq ptr %.val26.i.i.i, null
  br i1 %.not.i.i.i6.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.a
  call void @_ZdlPvm(ptr noundef nonnull %.val26.i.i.i, i64 noundef %6) #32, !noalias !627
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EED2Ev.exit.i

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EED2Ev.exit.i: ; preds = %bb.h, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.a
  resume { ptr, i32 } %lpad.phi

_ZN8nanobind6detail12infer_policyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS4_EEEENS_9rv_policyES7_.exit: ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12emplace_backIJRiEEERS2_DpOT_.exit.i, %bb.b
  %i.ad = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.ae = call noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef %i.ad, ptr noundef nonnull @_ZTISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %5, i8 4, ptr noundef %3, ptr noundef null) #28
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8nanobind6detail12infer_policyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS4_EEEENS_9rv_policyES7_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val3 = load ptr, ptr %i.af, align 8
  %i.ag = ptrtoint ptr %.val3 to i64
  %i.ah = ptrtoint ptr %.val to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.ai) #32
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EED2Ev.exit

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EED2Ev.exit: ; preds = %_ZN8nanobind6detail12infer_policyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS4_EEEENS_9rv_policyES7_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE3$_2St6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implS2_E4E_ncSaIS5_EEJiEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE3$_2St6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implS2_E4E_ncSaIS5_EEJiEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit": ; preds = %bb.a, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EED2Ev.exit
  %.0.i = phi ptr [ %i.ae, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EED2Ev.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: nounwind optsize
declare void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN8nanobind6detail7chain_vEP7_objectPKcP13__va_list_tag(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

attributes #0 = { mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { inlinehint mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind optsize }
attributes #29 = { optsize }
attributes #30 = { nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { builtin nounwind optsize }
attributes #33 = { noreturn optsize }
attributes #34 = { builtin optsize allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #35 = { noreturn }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !77}
!1 = distinct !{!1, !77}
!2 = distinct !{!2, !77}
!3 = distinct !{!3, !77}
!4 = distinct !{!4, !77}
!5 = distinct !{!5, !77}
!6 = distinct !{!6, !77}
!7 = distinct !{!7, !77}
!8 = distinct !{null}
!9 = distinct !{!9, !77}
!10 = distinct !{!10, !77}
!11 = distinct !{!11, !77}
!12 = distinct !{!12, !77}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"p1 _ZTS7_object", !21, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTSN8nanobind6detail12nb_internalsE", !21, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!17, !17, i64 0}
!27 = !{!"p1 omnipotent char", !21, i64 0}
!28 = !{!"p1 _ZTSSt9type_info", !21, i64 0}
!29 = !{!"p1 _ZTS11_typeobject", !21, i64 0}
!30 = !{!"_ZTSN8nanobind6detail14type_data_initE", !18, i64 0, !18, i64 4, !27, i64 8, !28, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !22, i64 64, !28, i64 72, !29, i64 80, !27, i64 88, !21, i64 96, !18, i64 104, !18, i64 108}
!31 = !{!30, !27, i64 8}
!32 = !{!30, !22, i64 64}
!33 = !{!18, !18, i64 0}
!34 = !{!"_ZTSN8nanobind6handleE", !22, i64 0}
!35 = !{!34, !22, i64 0}
!36 = !{!28, !28, i64 0}
!37 = !{!"any p2 pointer", !21, i64 0}
!38 = !{!"p2 _ZTSSt9type_info", !37, i64 0}
!39 = !{!"short", !17, i64 0}
!40 = !{!"_ZTSN8nanobind6detail19func_data_init_baseE", !17, i64 0, !21, i64 24, !21, i64 32, !27, i64 40, !38, i64 48, !18, i64 56, !39, i64 60, !39, i64 62, !27, i64 64, !27, i64 72, !22, i64 80}
!41 = !{!40, !21, i64 32}
!42 = !{!40, !27, i64 40}
!43 = !{!40, !38, i64 48}
!44 = !{!39, !39, i64 0}
!45 = !{!40, !22, i64 80}
!46 = !{!40, !27, i64 64}
!47 = !{!40, !18, i64 56}
!48 = !{!30, !21, i64 40}
!49 = !{!21, !21, i64 0}
!50 = !{!40, !27, i64 72}
!51 = !{!27, !27, i64 0}
!52 = !{!"_ZTSN8nanobind6detail13arg_data_initE", !27, i64 0, !27, i64 8, !22, i64 16, !18, i64 24, !18, i64 28}
!53 = !{!52, !27, i64 0}
!54 = !{!52, !27, i64 8}
!55 = !{!52, !22, i64 16}
!56 = !{!"_ZTSZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS6_EESA_EbJSA_SA_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSI_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E7capture", !21, i64 0}
!57 = !{!56, !21, i64 0}
!58 = !{!"_ZTSSt9exception"}
!59 = !{!"vtable pointer", !16, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"_ZTSN8nanobind3sigE", !27, i64 0}
!62 = !{!61, !27, i64 0}
!63 = !{!"p1 int", !21, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!66 = !{!65, !63, i64 16}
!67 = !{!65, !63, i64 0}
!68 = !{!65, !63, i64 8}
!69 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!70 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!71 = !{!"p1 _ZTSSt6vectorIjSaIjEE", !21, i64 0}
!72 = !{!"_ZTSN8nanobind6detail16type_caster_baseISt6vectorIjSaIjEEEE", !71, i64 0}
!73 = !{!72, !71, i64 0}
!74 = !{!"long", !17, i64 0}
!75 = !{!"_ZTSN8nanobind6detail8accessorINS0_8num_itemEEE", !22, i64 0, !22, i64 8, !74, i64 16}
!76 = !{!75, !22, i64 8}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"_ZTSN8nanobind6objectE", !34, i64 0}
!79 = !{!"_ZTSN8nanobind6detail20index_iterator_stateILNS_9rv_policy5valueE1ESt6vectorIjSaIjEEEE", !78, i64 0, !74, i64 8}
!80 = !{!79, !74, i64 8}
!81 = !{!74, !74, i64 0}
!82 = !{!"_ZTSSt12__cow_string", !17, i64 0}
!83 = !{!"_ZTSSt13runtime_error", !58, i64 0, !82, i64 8}
!84 = !{!"_ZTSN8nanobind14exception_typeE", !17, i64 0}
!85 = !{!"_ZTSN8nanobind4abi117builtin_exceptionE", !83, i64 0, !84, i64 16}
!86 = !{!85, !84, i64 16}
!87 = !{!"_ZTS7_object", !17, i64 0, !29, i64 8}
!88 = !{!87, !29, i64 8}
!89 = !{!"p2 _ZTS7_object", !37, i64 0}
!90 = !{!"_ZTSN8nanobind6detail12cleanup_listE", !18, i64 0, !18, i64 4, !89, i64 8, !24, i64 16, !17, i64 24}
!91 = !{!90, !89, i64 8}
!92 = !{!90, !24, i64 16}
!93 = !{!90, !18, i64 0}
!94 = !{!90, !18, i64 4}
!95 = !{!"_ZTSZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIjSaIjEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E7capture", !21, i64 0}
!96 = !{!95, !21, i64 0}
!97 = !{!"p1 long", !21, i64 0}
!98 = !{!"_ZTSSt18_Bit_iterator_base", !97, i64 0, !18, i64 8}
!99 = !{!98, !97, i64 0}
!100 = !{!98, !18, i64 8}
!101 = !{!"_ZTSSt13_Bit_iterator", !98, i64 0}
!102 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !101, i64 0, !101, i64 16, !97, i64 32}
!103 = !{!102, !97, i64 32}
!104 = !{!"p1 _ZTSSt6vectorIbSaIbEE", !21, i64 0}
!105 = !{!"_ZTSN8nanobind6detail16type_caster_baseISt6vectorIbSaIbEEEE", !104, i64 0}
!106 = !{!105, !104, i64 0}
!107 = !{!"_ZTSN8nanobind6detail20index_iterator_stateILNS_9rv_policy5valueE1ESt6vectorIbSaIbEEEE", !78, i64 0, !74, i64 8}
!108 = !{!107, !74, i64 8}
!109 = !{!"bool", !17, i64 0}
!110 = !{!"_ZTSN8nanobind6detail11type_casterIbiEE", !109, i64 0}
end_hunk_4
