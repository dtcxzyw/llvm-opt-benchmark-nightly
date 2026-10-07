Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_functions?download=true
inline.NumInlined: 2619
inline.NumDeleted: 1034
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN8nanobind6detail11type_casterISt4pairImmEiE8from_cppIS3_EENS_6handleEOT_NS_9rv_policyEPNS0_12cleanup_listE:bb.a
  store ptr %i.h, ptr %i.k, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %_ZN8nanobind6detail11type_casterImiE8from_cppEmNS_9rv_policyEPNS0_12cleanup_listE.exit, %_ZN8nanobind6detail11type_casterImiE8from_cppEmNS_9rv_policyEPNS0_12cleanup_listE.exit7
  %i.l = call noundef ptr @_ZN8nanobind6detail9tuple_newEPP7_objectm(ptr noundef nonnull %i.a, i64 noundef 2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %i.l
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail9tuple_newEPP7_objectm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_18St4pairImmEJiiNS_4argsENS_6kwargsEEJLm0ELm1ELm2ELm3EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESB_SB_SB_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSD_jPNS0_12cleanup_listEE_8__invokeESR_SS_jSU_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.350", align 16 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 5 uses
  %6 = alloca %"class.nanobind::args", align 8    ; 4 uses
  %7 = alloca %"class.nanobind::kwargs", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.b = load ptr, ptr %1, align 8, !tbaa !17
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !19
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.c, ptr noundef %i.b, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #33
  br i1 %i.d, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_18St4pairImmEJiiNS_4argsENS_6kwargsEEJLm0ELm1ELm2ELm3EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESB_SB_SB_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSD_jPNS0_12cleanup_listEE_clESR_SS_jSU_.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = and i32 %2, -35                          ; 3 uses
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !19
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.e) #33
  br i1 %i.j, label %bb.c, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_18St4pairImmEJiiNS_4argsENS_6kwargsEEJLm0ELm1ELm2ELm3EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESB_SB_SB_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSD_jPNS0_12cleanup_listEE_clESR_SS_jSU_.exit"

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_4argsEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr %i.m, i32 noundef %i.h, ptr noundef %3) #33
  br i1 %i.n, label %bb.d, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_18St4pairImmEJiiNS_4argsENS_6kwargsEEJLm0ELm1ELm2ELm3EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESB_SB_SB_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSD_jPNS0_12cleanup_listEE_clESR_SS_jSU_.exit"

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_6kwargsEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr %i.p, i32 noundef %i.h, ptr noundef %3) #33
  br i1 %i.q, label %bb.e, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_18St4pairImmEJiiNS_4argsENS_6kwargsEEJLm0ELm1ELm2ELm3EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESB_SB_SB_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSD_jPNS0_12cleanup_listEE_clESR_SS_jSU_.exit"

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.r = load i64, ptr %i.k, align 8              ; 2 uses
  store i64 %i.r, ptr %6, align 8
  %i.s = load i64, ptr %4, align 16               ; 2 uses
  store i64 %i.s, ptr %7, align 8
  store <2 x ptr> splat (ptr null), ptr %4, align 16, !tbaa !51
  %.val.cast = inttoptr i64 %i.r to ptr
  %.val3.cast = inttoptr i64 %i.s to ptr
  %i.t = getelementptr i8, ptr %.val.cast, i64 16
  %.val.val = load i64, ptr %i.t, align 8, !tbaa !88
  %i.u = getelementptr i8, ptr %.val3.cast, i64 16
  %.val3.val = load i64, ptr %i.u, align 8, !tbaa !92
  store i64 %.val.val, ptr %5, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.val3.val, ptr %i.v, align 8
  %i.w = call ptr @_ZN8nanobind6detail11type_casterISt4pairImmEiE8from_cppIS3_EENS_6handleEOT_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, ptr noundef %3) #33
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #33 ; 0 uses
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_18St4pairImmEJiiNS_4argsENS_6kwargsEEJLm0ELm1ELm2ELm3EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESB_SB_SB_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSD_jPNS0_12cleanup_listEE_clESR_SS_jSU_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_18St4pairImmEJiiNS_4argsENS_6kwargsEEJLm0ELm1ELm2ELm3EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESB_SB_SB_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSD_jPNS0_12cleanup_listEE_clESR_SS_jSU_.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.021.i = phi ptr [ %i.w, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.d ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #33 ; 0 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #33 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %.021.i
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_19iJiiiiiiiiEJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS7_jPNS0_12cleanup_listEE_8__invokeESL_SM_jSO_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.367", align 4 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.b = load ptr, ptr %1, align 8, !tbaa !17
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !19
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.c, ptr noundef %i.b, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #33
  br i1 %i.d, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_19iJiiiiiiiiEJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = and i32 %2, -35                          ; 7 uses
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !19
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.e) #33
  br i1 %i.j, label %bb.c, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_19iJiiiiiiiiEJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit"

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !19
  %i.o = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.n, ptr noundef %i.m, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #33
  br i1 %i.o, label %bb.d, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_19iJiiiiiiiiEJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit"

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !19
  %i.t = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.s, ptr noundef %i.r, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.p) #33
  br i1 %i.t, label %bb.e, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_19iJiiiiiiiiEJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit"

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.x = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !19
  %i.y = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.x, ptr noundef %i.w, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.u) #33
  br i1 %i.y, label %bb.f, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_19iJiiiiiiiiEJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit"

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17
  %i.ac = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !19
  %i.ad = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.ac, ptr noundef %i.ab, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.z) #33
  br i1 %i.ad, label %bb.g, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_19iJiiiiiiiiEJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit"

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17
  %i.ah = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !19
  %i.ai = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.ah, ptr noundef %i.ag, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.ae) #33
  br i1 %i.ai, label %bb.h, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_19iJiiiiiiiiEJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit"

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.al = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !19
  %i.am = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.al, ptr noundef %i.ak, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %4) #33
  br i1 %i.am, label %bb.i, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_19iJiiiiiiiiEJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit"

bb.i:                                             ; preds = %bb.h
  %i.an = load <4 x i32>, ptr %i.p, align 4, !tbaa !49
  %i.ao = load i32, ptr %i.u, align 4, !tbaa !49
  %i.ap = load i32, ptr %i.z, align 4, !tbaa !49
  %i.aq = load i32, ptr %i.ae, align 4, !tbaa !49
  %i.ar = load i32, ptr %4, align 4, !tbaa !49
  %i.as = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.an)
  %op.rdx = add i32 %i.as, %i.ao
  %op.rdx21 = add i32 %i.ap, %i.aq
  %op.rdx22 = add i32 %op.rdx, %op.rdx21
  %i.at = sub i32 %op.rdx22, %i.ar
  %i.au = sext i32 %i.at to i64
  %i.av = invoke ptr @PyLong_FromLong(i64 noundef %i.au) #30
          to label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_19iJiiiiiiiiEJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit" unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #32
  unreachable

"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_19iJiiiiiiiiEJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit": ; preds = %bb.i, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.h ], [ inttoptr (i64 1 to ptr), %bb.g ], [ inttoptr (i64 1 to ptr), %bb.f ], [ inttoptr (i64 1 to ptr), %bb.e ], [ inttoptr (i64 1 to ptr), %bb.d ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ %i.av, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_20NS_5typedINS_5tupleEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSG_jPNS0_12cleanup_listEE_8__invokeESU_SV_jSX_"(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::tuple", align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.nanobind::typed", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !271
  store i32 123, ptr %i.a, align 4, !tbaa !49, !noalias !271
  call void @_ZN8nanobind10make_tupleILNS_9rv_policy5valueE0EJRA6_KciEEENS_5tupleEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::tuple") align 8 %4, ptr noundef nonnull align 1 dereferenceable(6) @.str.176, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #30, !noalias !271
  %i.b = load i64, ptr %4, align 8, !noalias !271 ; 3 uses
  store i64 %i.b, ptr %5, align 8, !alias.scope !271
  store ptr null, ptr %4, align 8, !tbaa !51, !noalias !271
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33, !noalias !271 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !271
  %i.d = inttoptr i64 %i.b to ptr                 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN8nanobind6detail11type_casterINS_5typedINS_5tupleEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEiE8from_cppERKSA_NS_9rv_policyEPNS0_12cleanup_listE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %i.f = add i32 %i.e, 1                          ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN8nanobind6detail11type_casterINS_5typedINS_5tupleEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEiE8from_cppERKSA_NS_9rv_policyEPNS0_12cleanup_listE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.f, ptr %i.d, align 8, !tbaa !20
  br label %_ZN8nanobind6detail11type_casterINS_5typedINS_5tupleEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEiE8from_cppERKSA_NS_9rv_policyEPNS0_12cleanup_listE.exit

_ZN8nanobind6detail11type_casterINS_5typedINS_5tupleEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEiE8from_cppERKSA_NS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #33 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret ptr %i.d
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind10make_tupleILNS_9rv_policy5valueE0EJRA6_KciEEENS_5tupleEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.nanobind::tuple") align 8 %0, ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = invoke ptr @PyUnicode_FromString(ptr noundef nonnull %1) #30
          to label %_ZN8nanobind6detail11type_casterIciE8from_cppEPKcNS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #32
  unreachable

_ZN8nanobind6detail11type_casterIciE8from_cppEPKcNS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 16, !tbaa !17
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN8nanobind6detail11type_casterIciE8from_cppEPKcNS_9rv_policyEPNS0_12cleanup_listE.exit
  %i.e = load i32, ptr %2, align 4, !tbaa !49
  %i.f = sext i32 %i.e to i64
  %i.g = invoke ptr @PyLong_FromLong(i64 noundef %i.f) #30
          to label %_ZN8nanobind6detail11type_casterIiiE8from_cppEiNS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #32
  unreachable

_ZN8nanobind6detail11type_casterIiiE8from_cppEiNS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.j, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %_ZN8nanobind6detail11type_casterIiiE8from_cppEiNS_9rv_policyEPNS0_12cleanup_listE.exit, %_ZN8nanobind6detail11type_casterIciE8from_cppEPKcNS_9rv_policyEPNS0_12cleanup_listE.exit
  %i.k = call noundef ptr @_ZN8nanobind6detail9tuple_newEPP7_objectm(ptr noundef nonnull %i.a, i64 noundef 2) #33 ; 2 uses
  %.not5 = icmp eq ptr %i.k, null
  br i1 %.not5, label %bb.f, label %bb.g, !prof !93

bb.f:                                             ; preds = %bb.e
  call void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #36
  unreachable

bb.g:                                             ; preds = %bb.e
  store ptr %i.k, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_21NS_5typedINS_6objectEJSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEEEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSI_jPNS0_12cleanup_listEE_8__invokeESW_SX_jSZ_"(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %4 = alloca %"class.nanobind::tuple", align 8   ; 4 uses
  %5 = alloca %struct.Foo, align 1                ; 3 uses
  %6 = alloca %"class.nanobind::typed.383", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !276
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29, !noalias !276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !277
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !noalias !277
  %i.b = invoke ptr @PyUnicode_FromString(ptr noundef nonnull @.str.176) #30
          to label %_ZN8nanobind6detail11type_casterIciE8from_cppEPKcNS_9rv_policyEPNS0_12cleanup_listE.exit.i.i unwind label %bb.b, !noalias !277 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #32, !noalias !277
  unreachable

_ZN8nanobind6detail11type_casterIciE8from_cppEPKcNS_9rv_policyEPNS0_12cleanup_listE.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 16, !tbaa !17, !noalias !277
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %"_ZN8nanobind6detail12infer_policyIZZL37nanobind_test_functions_ext_exec_implNS_7module_EENK4$_21clB5cxx11EvE3FooEENS_9rv_policyES5_.exit.i.i"

"_ZN8nanobind6detail12infer_policyIZZL37nanobind_test_functions_ext_exec_implNS_7module_EENK4$_21clB5cxx11EvE3FooEENS_9rv_policyES5_.exit.i.i": ; preds = %_ZN8nanobind6detail11type_casterIciE8from_cppEPKcNS_9rv_policyEPNS0_12cleanup_listE.exit.i.i
  %i.e = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !19, !noalias !277
  %i.f = call noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef %i.e, ptr noundef nonnull @"_ZTIZZL37nanobind_test_functions_ext_exec_implN8nanobind7module_EENK4$_21clB5cxx11EvE3Foo", ptr noundef null, ptr noundef nonnull align 1 dereferenceable(1) %5, i8 4, ptr noundef null, ptr noundef null) #33, !noalias !277
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !17, !noalias !277
  br label %bb.c

bb.c:                                             ; preds = %"_ZN8nanobind6detail12infer_policyIZZL37nanobind_test_functions_ext_exec_implNS_7module_EENK4$_21clB5cxx11EvE3FooEENS_9rv_policyES5_.exit.i.i", %_ZN8nanobind6detail11type_casterIciE8from_cppEPKcNS_9rv_policyEPNS0_12cleanup_listE.exit.i.i
  %i.h = call noundef ptr @_ZN8nanobind6detail9tuple_newEPP7_objectm(ptr noundef nonnull %i.a, i64 noundef 2) #33, !noalias !277 ; 5 uses
  %.not5.i.i = icmp eq ptr %i.h, null
  br i1 %.not5.i.i, label %bb.d, label %bb.e, !prof !93

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #36, !noalias !277
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !277
  %.cast.i = ptrtoint ptr %i.h to i64
  store i64 %.cast.i, ptr %6, align 8, !alias.scope !276
  store ptr null, ptr %4, align 8, !tbaa !51, !noalias !276
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33, !noalias !276 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29, !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !276
  %i.j = load i32, ptr %i.h, align 8, !tbaa !20
  %i.k = add i32 %i.j, 1                          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN8nanobind6detail11type_casterINS_5typedINS_6objectEJSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_EEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.k, ptr %i.h, align 8, !tbaa !20
  br label %_ZN8nanobind6detail11type_casterINS_5typedINS_6objectEJSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_EEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit

_ZN8nanobind6detail11type_casterINS_5typedINS_6objectEJSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_EEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %bb.e, %bb.f
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret ptr %i.h
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_22NS_5tupleEJNS_4listEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS9_jPNS0_12cleanup_listEE_8__invokeESN_SO_jSQ_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.392", align 8 ; 9 uses
  %5 = alloca %"class.nanobind::tuple", align 8   ; 5 uses
  %6 = alloca %"class.nanobind::list", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr null, ptr %4, align 8
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_4listEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr %i.a, i32 noundef %2, ptr noundef %3) #33
  br i1 %i.b, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL37nanobind_test_functions_ext_exec_implNS_7module_EE4$_22NS_5tupleEJNS_4listEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS9_jPNS0_12cleanup_listEE_clESN_SO_jSQ_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.c = load i64, ptr %4, align 8                ; 2 uses
  store i64 %i.c, ptr %6, align 8
  store ptr null, ptr %4, align 8, !tbaa !51
  %.cast = inttoptr i64 %i.c to ptr               ; 2 uses
  %i.d = getelementptr i8, ptr %.cast, i64 16     ; 2 uses
  %.val.i.i = load i64, ptr %i.d, align 8, !tbaa !88, !noalias !282 ; 2 uses
  %i.e = invoke ptr @PyTuple_New(i64 noundef %.val.i.i) #30
          to label %_ZN8nanobind6detail11seq_builderILb1EEC2Em.exit.i unwind label %bb.c, !noalias !282 ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #32, !noalias !282
  unreachable

_ZN8nanobind6detail11seq_builderILb1EEC2Em.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.g, !prof !93

bb.d:                                             ; preds = %_ZN8nanobind6detail11seq_builderILb1EEC2Em.exit.i
  invoke void @_ZN8nanobind6detail18raise_python_errorEv() #36
          to label %bb.e unwind label %bb.f, !noalias !282

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %_ZN8nanobind6detail11seq_builderILb1EEC2Em.exit.i
  %.val.i.i.i = load i64, ptr %i.d, align 8, !tbaa !88, !noalias !282 ; 2 uses
  %.not2123.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not2123.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %.cast, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.pre26.i = load ptr, ptr %i.i, align 8, !tbaa !96, !noalias !282
  br label %bb.l

._crit_edge.i:                                    ; preds = %_ZN8nanobind7builderINS_5tupleEE3putIRNS_6handleEEEbOT_.exit.i, %bb.g
  %.sroa.11.0.lcssa.i = phi i64 [ 0, %bb.g ], [ %.sroa.11.1.i, %_ZN8nanobind7builderINS_5tupleEE3putIRNS_6handleEEEbOT_.exit.i ]
  %i.k = icmp eq i64 %.sroa.11.0.lcssa.i, %.val.i.i
  br i1 %i.k, label %bb.q, label %bb.h, !prof !97

bb.h:                                             ; preds = %._crit_edge.i
  %i.l = load i64, ptr %i.e, align 8, !tbaa !20, !noalias !283 ; 2 uses
  %i.m = and i64 %i.l, 2147483648
  %.not22.i = icmp eq i64 %i.m, 0
  br i1 %.not22.i, label %bb.i, label %_ZN8nanobind6detail11seq_builderILb1EE6commitEv.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i64 %i.l, -1                     ; 2 uses
  store i64 %i.n, ptr %i.e, align 8, !tbaa !20, !noalias !283
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.j, label %_ZN8nanobind6detail11seq_builderILb1EE6commitEv.exit.thread.i
end_hunk_0
