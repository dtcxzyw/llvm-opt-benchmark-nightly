Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_stl_bind_vector?download=true
inline.NumInlined: 4430
inline.NumDeleted: 1793
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJRKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EEEE7executeINS_6class_IS7_JEEEJNS_5arg_tILj1ELb1EEEA17_cEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EES9_E_vJSO_S9_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodESF_SG_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSU_jPNS0_12cleanup_listEE_8__invokeES18_S19_jS1B_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23
  %i.d = and i32 %2, -2
  %i.e = call fastcc noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_18pointer_and_handleISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr %i.c, i32 noundef %i.d, ptr noundef %3) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJRKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EEEE7executeINS_6class_IS7_JEEEJNS_5arg_tILj1ELb1EEEA17_cEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EES9_E_vJSO_S9_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodESF_SG_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSU_jPNS0_12cleanup_listEE_clES18_S19_jS1B_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -43
  %i.i = or disjoint i32 %i.h, 8
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.j, ptr noundef nonnull @_ZTISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJRKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EEEE7executeINS_6class_IS7_JEEEJNS_5arg_tILj1ELb1EEEA17_cEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EES9_E_vJSO_S9_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodESF_SG_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSU_jPNS0_12cleanup_listEE_clES18_S19_jS1B_.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  %.val = load ptr, ptr %4, align 8, !tbaa !127
  call fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.copyload.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val) #29
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJRKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EEEE7executeINS_6class_IS7_JEEEJNS_5arg_tILj1ELb1EEEA17_cEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EES9_E_vJSO_S9_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodESF_SG_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSU_jPNS0_12cleanup_listEE_clES18_S19_jS1B_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJRKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EEEE7executeINS_6class_IS7_JEEEJNS_5arg_tILj1ELb1EEEA17_cEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EES9_E_vJSO_S9_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodESF_SG_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSU_jPNS0_12cleanup_listEE_clES18_S19_jS1B_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS7_NS_5typedINS_8iterableEJS5_EEEE_vJSJ_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPST_jPNS0_12cleanup_listEE_8__invokeES17_S18_jS1A_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::type_caster.461", align 8 ; 5 uses
  %5 = alloca %struct.raii_cleanup.600, align 8   ; 10 uses
  %6 = alloca %"class.nanobind::iterator", align 8 ; 10 uses
  %7 = alloca %"class.nanobind::iterator", align 8 ; 8 uses
  %8 = alloca %"class.nanobind::handle", align 8  ; 4 uses
  %9 = alloca %"struct.nanobind::detail::type_caster.146", align 8 ; 9 uses
  %10 = alloca %"struct.nanobind::detail::tuple.595", align 8 ; 11 uses
  %11 = alloca %"class.nanobind::typed.598", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr null, ptr %10, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS7_NS_5typedINS_8iterableEJS5_EEEE_vJSJ_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr null, ptr %9, align 8
  %i.i = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_8iterableEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #28
  br i1 %i.i, label %bb.c, label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit

_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit: ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS7_NS_5typedINS_8iterableEJS5_EEEE_vJSJ_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.k = load ptr, ptr %10, align 8, !tbaa !35
  store ptr %i.k, ptr %8, align 8, !tbaa !35
  %i.l = load ptr, ptr %9, align 8, !tbaa !35
  store ptr %i.l, ptr %10, align 8, !tbaa !35
  store ptr null, ptr %9, align 8, !tbaa !35
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %.val = load ptr, ptr %i.a, align 8, !tbaa !127 ; 8 uses
  %i.o = load i64, ptr %10, align 8               ; 2 uses
  store i64 %i.o, ptr %11, align 8
  store ptr null, ptr %10, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val, i8 0, i64 24, i1 false)
  %.sroa.0.0.copyload.i.cast = inttoptr i64 %i.o to ptr
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.q = call noundef i64 @_ZN8nanobind6detail8len_hintEPNS0_12nb_internalsEP7_object(ptr noundef %i.p, ptr noundef %.sroa.0.0.copyload.i.cast) #28
  invoke fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.q) #29
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.r = load ptr, ptr %11, align 8, !tbaa !35, !noalias !371
  %i.s = invoke ptr @PyObject_GetIter(ptr noundef %i.r) #29
          to label %.noexc.i unwind label %bb.j   ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.f, !prof !70

bb.e:                                             ; preds = %.noexc.i
  invoke void @_ZN8nanobind6detail18raise_python_errorEv() #33
          to label %.noexc11.i unwind label %bb.j

.noexc11.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  store ptr %i.s, ptr %6, align 8, !alias.scope !372
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr null, ptr %i.t, align 8, !tbaa !35, !alias.scope !372
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !alias.scope !373
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE9push_backEOS2_.exit.i, %bb.f
  %i.aa = invoke ptr @_ZNK8nanobind8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
          to label %.noexc12.i unwind label %bb.k ; 0 uses

.noexc12.i:                                       ; preds = %bb.g
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.ac = invoke ptr @_ZNK8nanobind8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #29
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %.noexc12.i
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.ac, label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.k:                                             ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE9push_backEOS2_.exit.i, %.noexc12.i, %bb.g
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

bb.l:                                             ; preds = %bb.h
  %i.ah = invoke ptr @_ZNK8nanobind8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ai = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25 ; 2 uses
  store <2 x i32> <i32 1, i32 5>, ptr %5, align 8, !tbaa !33
  store ptr %i.w, ptr %i.v, align 8, !tbaa !91
  store ptr %i.ai, ptr %i.x, align 8, !tbaa !92
  store ptr null, ptr %i.w, align 8, !tbaa !23
  %i.aj = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.ai, ptr noundef nonnull @_ZTIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2El, ptr noundef %i.ah, i32 noundef 17, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.aj, label %bb.n, label %.critedge.i.i

bb.n:                                             ; preds = %bb.m
  %.val2.i.i = load ptr, ptr %4, align 8, !tbaa !119 ; 2 uses
  %.not.i.i = icmp eq ptr %.val2.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.q

.critedge.i.i:                                    ; preds = %bb.n, %bb.m
  invoke void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #33
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.critedge.i.i
  unreachable

bb.p:                                             ; preds = %.critedge.i.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  call fastcc void @_ZZN8nanobind6detail9cast_implILb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body.i

bb.q:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i.i = load i32, ptr %.val2.i.i, align 4, !tbaa !33 ; 2 uses
  call fastcc void @_ZZN8nanobind6detail9cast_implILb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !124 ; 6 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !122
  %.not.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.al, align 4, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store ptr %i.an, ptr %i.y, align 8, !tbaa !124
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE9push_backEOS2_.exit.i

bb.s:                                             ; preds = %bb.q
  %.val18.i.i.i.i = load ptr, ptr %.val, align 8, !tbaa !123 ; 5 uses
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %.val18.i.i.i.i to i64     ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775804
  br i1 %i.ar, label %bb.t, label %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #33
          to label %.noexc14.i unwind label %.loopexit.split-lp.i

.noexc14.i:                                       ; preds = %bb.t
  unreachable

_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.as = ashr exact i64 %i.aq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %12 = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.as ; 2 uses
  %i.at = icmp ult i64 %12, %i.as
  %i.au = call i64 @llvm.umin.i64(i64 %12, i64 2305843009213693951)
  %i.av = select i1 %i.at, i64 2305843009213693951, i64 %i.au ; 2 uses
  %i.aw = invoke fastcc noundef ptr @_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_M_allocateEm(i64 noundef %i.av) #29
          to label %.noexc15.i unwind label %.loopexit.i ; 5 uses

.noexc15.i:                                       ; preds = %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ax, align 4, !tbaa !33
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.val18.i.i.i.i, %i.al
  br i1 %.not1.i.i.i.i.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc15.i, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aw, %.noexc15.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.val18.i.i.i.i, %.noexc15.i ] ; 2 uses
  %.09.val.i.i.i.i.i.i.i = load i32, ptr %.092.i.i.i.i.i.i.i, align 4, !tbaa !33
  store i32 %.09.val.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i.i, align 4, !tbaa !33, !alias.scope !374
  %i.ay = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.al
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc15.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.noexc15.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %.val18.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i.i.i
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !122
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %.val18.i.i.i.i, i64 noundef %i.bd) #32
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i.i.i
  store ptr %i.aw, ptr %.val, align 8, !tbaa !123
  store ptr %i.ba, ptr %i.y, align 8, !tbaa !124
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.av
  store ptr %i.be, ptr %i.z, align 8, !tbaa !122
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.r
  %i.bf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nanobind8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.v:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.t
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.v, %bb.p, %bb.k
  %.pn8.i = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.bg, %bb.v ], [ %i.ak, %bb.p ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #28 ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #28 ; 0 uses
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.body.i, %bb.j
  %.pn8.pn.pn.i = phi { ptr, i32 } [ %.pn8.i, %.body.i ], [ %i.af, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.i
  %.pn8.pn.pn.pn.i = phi { ptr, i32 } [ %.pn8.pn.pn.i, %bb.w ], [ %i.ae, %bb.i ]
  %.4.i = extractvalue { ptr, i32 } %.pn8.pn.pn.pn.i, 0
  %i.bl = call ptr @__cxa_begin_catch(ptr %.4.i) #30 ; 0 uses
  %.val.i = load ptr, ptr %.val, align 8          ; 3 uses
  %.not.i.i.i16.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i16.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = getelementptr i8, ptr %.val, i64 16
  %.val9.i = load ptr, ptr %i.bm, align 8
  %i.bn = ptrtoint ptr %.val9.i to i64
  %i.bo = ptrtoint ptr %.val.i to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.bp) #32
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i: ; preds = %bb.y, %bb.x
  invoke void @__cxa_rethrow() #35
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #31
  unreachable

bb.ab:                                            ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i
  unreachable

bb.ac:                                            ; preds = %bb.h
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #28 ; 0 uses
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #28 ; 0 uses
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #28 ; 0 uses
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS7_NS_5typedINS_8iterableEJS5_EEEE_vJSJ_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

.body:                                            ; preds = %bb.z
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #28 ; 0 uses
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  resume { ptr, i32 } %i.bq

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS7_NS_5typedINS_8iterableEJS5_EEEE_vJSJ_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit: ; preds = %_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit, %bb.a, %bb.ac
  %.013.i = phi ptr [ @_Py_NoneStruct, %bb.ac ], [ inttoptr (i64 1 to ptr), %_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  ret ptr %.013.i
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE7reserveEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val9 = load ptr, ptr %0, align 8, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val10 = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.c = ptrtoint ptr %.val10 to i64
  %i.d = ptrtoint ptr %.val9 to i64               ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val8 = load ptr, ptr %i.h, align 8, !tbaa !124
  %i.i = ptrtoint ptr %.val8 to i64
  %i.j = sub i64 %i.i, %i.d
  %i.k = tail call fastcc noundef ptr @_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_M_allocateEm(i64 noundef %1) #29 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !123    ; 5 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !124  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not1.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %.092.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  %.09.val.i.i.i = load i32, ptr %.092.i.i.i, align 4, !tbaa !33
  store i32 %.09.val.i.i.i, ptr %.03.i.i.i, align 4, !tbaa !33, !alias.scope !377
  %i.n = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.d
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.s) #32
  br label %_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.k, ptr %0, align 8, !tbaa !123
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store ptr %i.t, ptr %i.h, align 8, !tbaa !124
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %1
  store ptr %i.u, ptr %i.b, align 8, !tbaa !122
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal fastcc void @_ZZN8nanobind6detail9cast_implILb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(64) dereferenceable(64) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
          to label %_ZL9Py_DECREFP7_object.exit.i unwind label %.loopexit.i

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
          to label %_ZN8nanobind6detail12cleanup_list7releaseEv.exit unwind label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.s = extractvalue { ptr, i32 } %lpad.phi.i, 0
  tail call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

_ZN8nanobind6detail12cleanup_list7releaseEv.exit: ; preds = %._crit_edge.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef zeroext i1 @_ZZN8nanobind22implicitly_convertibleINS_8iterableESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS4_EEEEvvENUlP11_typeobjectP7_objectPNS_6detail12cleanup_listEE_8__invokeES8_SA_SD_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #8 align 2 personality ptr @__gxx_personality_v0 {
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
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKS5_E_vJSJ_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPST_jPNS0_12cleanup_listEE_8__invokeES17_S18_jS1A_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.607", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKS5_E_vJSJ_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -43
  %i.i = or disjoint i32 %i.h, 8
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.j, ptr noundef nonnull @_ZTIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2El, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKS5_E_vJSJ_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !127 ; 3 uses
  %.val3 = load ptr, ptr %4, align 8, !tbaa !119  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !122
  %.not.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %.val3, align 4, !tbaa !33
  store i32 %i.p, ptr %i.m, align 4, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store ptr %i.q, ptr %i.l, align 8, !tbaa !124
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKS5_E_vJSJ_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.val, ptr %i.m, ptr noundef nonnull readonly align 4 dereferenceable(4) %.val3) #29
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKS5_E_vJSJ_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKS5_E_vJSJ_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit: ; preds = %bb.e, %bb.d, %bb.a, %bb.b
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #2 align 2 {
bb.a:
  %.val18 = load ptr, ptr %0, align 8, !tbaa !123 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !124 ; 3 uses
  %i.b = ptrtoint ptr %.val19 to i64
  %i.c = ptrtoint ptr %.val18 to i64              ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp eq i64 %i.d, 9223372036854775804
  br i1 %i.e, label %bb.b, label %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #33
  unreachable

_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.f = ashr exact i64 %i.d, 2                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.f      ; 2 uses
  %i.g = icmp ult i64 %3, %i.f
  %i.h = tail call i64 @llvm.umin.i64(i64 %3, i64 2305843009213693951)
  %i.i = select i1 %i.g, i64 2305843009213693951, i64 %i.h ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = sub i64 %i.j, %i.c
  %i.l = tail call fastcc noundef ptr @_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_M_allocateEm(i64 noundef %i.i) #29 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.n = load i32, ptr %2, align 4, !tbaa !33
  store i32 %i.n, ptr %i.m, align 4, !tbaa !33
  %.not1.i.i.i = icmp eq ptr %.val18, %1
  br i1 %.not1.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.l, %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.092.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.val18, %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.09.val.i.i.i = load i32, ptr %.092.i.i.i, align 4, !tbaa !33
  store i32 %.09.val.i.i.i, ptr %.03.i.i.i, align 4, !tbaa !33, !alias.scope !382
  %i.o = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.l, %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.p, %.lr.ph.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 4 ; 2 uses
  %.not1.i.i.i20 = icmp eq ptr %1, %.val19
  br i1 %.not1.i.i.i20, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27, label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i21
  %.03.i.i.i22 = phi ptr [ %i.s, %.lr.ph.i.i.i21 ], [ %i.q, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.092.i.i.i23 = phi ptr [ %i.r, %.lr.ph.i.i.i21 ], [ %1, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.09.val.i.i.i24 = load i32, ptr %.092.i.i.i23, align 4, !tbaa !33
  store i32 %.09.val.i.i.i24, ptr %.03.i.i.i22, align 4, !tbaa !33, !alias.scope !383
  %i.r = getelementptr inbounds nuw i8, ptr %.092.i.i.i23, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03.i.i.i22, i64 4 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.r, %.val19
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27, label %.lr.ph.i.i.i21, !llvm.loop !2

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27: ; preds = %.lr.ph.i.i.i21, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.q, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.s, %.lr.ph.i.i.i21 ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.val18, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !122
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val18, i64 noundef %i.w) #32
  br label %_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27, %bb.c
  store ptr %i.l, ptr %0, align 8, !tbaa !123
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8, !tbaa !124
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i
  store ptr %i.x, ptr %i.t, align 8, !tbaa !122
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lRKS5_E_vJSJ_lSL_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPST_jPNS0_12cleanup_listEE_8__invokeES17_S18_jS1A_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.613", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lRKS5_E_vJSJ_lSL_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = and i32 %2, -35
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail8load_i64EPNS0_12nb_internalsEP7_objectjPl(ptr noundef %i.j, ptr noundef %i.h, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lRKS5_E_vJSJ_lSL_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = and i32 %2, -43
  %i.o = or disjoint i32 %i.n, 8
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.q = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.p, ptr noundef nonnull @_ZTIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2El, ptr noundef %i.m, i32 noundef %i.o, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.q, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lRKS5_E_vJSJ_lSL_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.a, align 8, !tbaa !127 ; 4 uses
  %i.r = load i64, ptr %i.f, align 8, !tbaa !81   ; 3 uses
  %.val3 = load ptr, ptr %4, align 8, !tbaa !119  ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.val.pre.i = load ptr, ptr %.val, align 8, !tbaa !123 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %.val14.i = load ptr, ptr %i.t, align 8, !tbaa !124 ; 9 uses
  %i.u = ptrtoint ptr %.val14.i to i64
  %i.v = ptrtoint ptr %.val.pre.i to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2                   ; 2 uses
  br i1 %i.s, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.y = add nsw i64 %i.x, %i.r                   ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %.04.i = phi i64 [ %i.y, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.aa = icmp ugt i64 %.04.i, %i.x
  br i1 %i.aa, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.thread.i, %bb.e
  %i.ab = call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  invoke void @_ZN8nanobind11index_errorEPKc(ptr dead_on_unwind writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %i.ab, ptr noundef null) #29
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr %i.ab, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.ab) #30
  resume { ptr, i32 } %i.ac

bb.i:                                             ; preds = %.thread.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val.pre.i, i64 %.04.i ; 6 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !122
  %.not.i.i = icmp eq ptr %.val14.i, %i.ag
  br i1 %.not.i.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.pre.i) ]
  %i.ah = icmp eq ptr %i.ad, %.val14.i
  %i.ai = load i32, ptr %.val3, align 4, !tbaa !33 ; 2 uses
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ai, ptr %.val14.i, align 4, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %.val14.i, i64 4
  store ptr %i.aj, ptr %i.t, align 8, !tbaa !124
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lRKS5_E_vJSJ_lSL_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds i8, ptr %.val14.i, i64 -4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !33
  store i32 %i.al, ptr %.val14.i, align 4, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %.val14.i, i64 4
  store ptr %i.am, ptr %i.t, align 8, !tbaa !124
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.an, %i.ae                    ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 2                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.m, label %bb.n, !prof !69

bb.m:                                             ; preds = %bb.l
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [4 x i8], ptr %.val14.i, i64 %i.ar
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.as, ptr nonnull align 4 %i.ad, i64 %i.ao, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.at = icmp eq i64 %i.ao, 4
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !33
  store i32 %.val.i.i.i.i.i.i.i.i, ptr %i.ak, align 4, !tbaa !33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  store i32 %i.ai, ptr %i.ad, align 4, !tbaa !33
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lRKS5_E_vJSJ_lSL_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.q:                                             ; preds = %bb.i
  call fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.val, ptr %i.ad, ptr noundef nonnull readonly align 4 dereferenceable(4) %.val3) #29
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lRKS5_E_vJSJ_lSL_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lRKS5_E_vJSJ_lSL_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit: ; preds = %bb.q, %bb.p, %bb.k, %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ @_Py_NoneStruct, %bb.k ], [ @_Py_NoneStruct, %bb.p ], [ @_Py_NoneStruct, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_lE0_S5_JSJ_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_7arg_v_tILj1ELb0EEENS_9lock_selfEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPST_jPNS0_12cleanup_listEE_8__invokeES17_S18_jS1A_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.577", align 8 ; 5 uses
  %5 = alloca %struct.El, align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
end_hunk_0
begin_hunk_1_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS9_NS_5typedINS_8iterableEJS7_EEEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSV_jPNS0_12cleanup_listEE_8__invokeES19_S1A_jS1C_:bb.a
  %5 = alloca %struct.raii_cleanup.786, align 8   ; 10 uses
  %6 = alloca %"class.nanobind::iterator", align 8 ; 10 uses
  %7 = alloca %"class.nanobind::iterator", align 8 ; 8 uses
  %8 = alloca %"class.std::vector.511", align 16  ; 8 uses
  %9 = alloca %"class.nanobind::handle", align 8  ; 4 uses
  %10 = alloca %"struct.nanobind::detail::type_caster.146", align 8 ; 9 uses
  %11 = alloca %"struct.nanobind::detail::tuple.781", align 8 ; 11 uses
  %12 = alloca %"class.nanobind::typed.784", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr null, ptr %11, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS9_NS_5typedINS_8iterableEJS7_EEEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr null, ptr %10, align 8
  %i.i = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_8iterableEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #28
  br i1 %i.i, label %bb.c, label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS6_EEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit

_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS6_EEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit: ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS9_NS_5typedINS_8iterableEJS7_EEEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.k = load ptr, ptr %11, align 8, !tbaa !35
  store ptr %i.k, ptr %9, align 8, !tbaa !35
  %i.l = load ptr, ptr %10, align 8, !tbaa !35
  store ptr %i.l, ptr %11, align 8, !tbaa !35
  store ptr null, ptr %10, align 8, !tbaa !35
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %.val = load ptr, ptr %i.a, align 8, !tbaa !137 ; 7 uses
  %i.o = load i64, ptr %11, align 8               ; 2 uses
  store i64 %i.o, ptr %12, align 8
  store ptr null, ptr %11, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val, i8 0, i64 24, i1 false)
  %.sroa.0.0.copyload.i.cast = inttoptr i64 %i.o to ptr
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.q = call noundef i64 @_ZN8nanobind6detail8len_hintEPNS0_12nb_internalsEP7_object(ptr noundef %i.p, ptr noundef %.sroa.0.0.copyload.i.cast) #28
  invoke fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.q) #29
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.r = load ptr, ptr %12, align 8, !tbaa !35, !noalias !428
  %i.s = invoke ptr @PyObject_GetIter(ptr noundef %i.r) #29
          to label %.noexc.i unwind label %bb.j   ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.f, !prof !70

bb.e:                                             ; preds = %.noexc.i
  invoke void @_ZN8nanobind6detail18raise_python_errorEv() #33
          to label %.noexc12.i unwind label %bb.j

.noexc12.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  store ptr %i.s, ptr %6, align 8, !alias.scope !429
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr null, ptr %i.t, align 8, !tbaa !35, !alias.scope !429
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !alias.scope !430
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i, %bb.f
  %i.ab = invoke ptr @_ZNK8nanobind8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
          to label %.noexc13.i unwind label %bb.k ; 0 uses

.noexc13.i:                                       ; preds = %bb.g
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.ad = invoke ptr @_ZNK8nanobind8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #29
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %.noexc13.i
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.af, label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

bb.k:                                             ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i, %.noexc13.i, %bb.g
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.z

bb.l:                                             ; preds = %bb.h
  %i.ai = invoke ptr @_ZNK8nanobind8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !431
  %i.aj = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25, !noalias !431 ; 2 uses
  store <2 x i32> <i32 1, i32 5>, ptr %5, align 8, !tbaa !33, !noalias !431
  store ptr %i.w, ptr %i.v, align 8, !tbaa !91, !noalias !431
  store ptr %i.aj, ptr %i.x, align 8, !tbaa !92, !noalias !431
  store ptr null, ptr %i.w, align 8, !tbaa !23, !noalias !431
  %i.ak = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.aj, ptr noundef nonnull @_ZTISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE, ptr noundef %i.ai, i32 noundef 17, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #28, !noalias !431
  br i1 %i.ak, label %bb.n, label %.critedge.i.i

bb.n:                                             ; preds = %bb.m
  %.val2.i.i = load ptr, ptr %4, align 8, !tbaa !127, !noalias !431 ; 2 uses
  %.not.i.i = icmp eq ptr %.val2.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.q

.critedge.i.i:                                    ; preds = %bb.n, %bb.m
  invoke void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #33
          to label %bb.o unwind label %.loopexit.split-lp.i, !noalias !431

bb.o:                                             ; preds = %.critedge.i.i
  unreachable

.loopexit.i:                                      ; preds = %bb.q
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

.loopexit.split-lp.i:                             ; preds = %.critedge.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call fastcc void @_ZZN8nanobind6detail9cast_implILb1ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS4_EEEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28, !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !431
  br label %.body.i

bb.q:                                             ; preds = %bb.n
  invoke fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.val2.i.i) #29
          to label %bb.r unwind label %.loopexit.i

bb.r:                                             ; preds = %bb.q
  call fastcc void @_ZZN8nanobind6detail9cast_implILb1ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS4_EEEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28, !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !431
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !134 ; 7 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = load <2 x ptr>, ptr %8, align 16, !tbaa !120
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !120
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load ptr, ptr %i.aa, align 16, !tbaa !122
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !122
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !134
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i

bb.t:                                             ; preds = %bb.r
  %.val18.i.i.i.i = load ptr, ptr %.val, align 8, !tbaa !133 ; 5 uses
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = ptrtoint ptr %.val18.i.i.i.i to i64     ; 2 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.u, label %_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #33
          to label %.noexc15.i unwind label %.loopexit.split-lp4.i

.noexc15.i:                                       ; preds = %bb.u
  unreachable

_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.t
  %i.av = sdiv exact i64 %i.at, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %13 = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.av ; 2 uses
  %i.aw = icmp ult i64 %13, %i.av
  %i.ax = call i64 @llvm.umin.i64(i64 %13, i64 384307168202282325)
  %i.ay = select i1 %i.aw, i64 384307168202282325, i64 %i.ax ; 2 uses
  %i.az = invoke fastcc noundef ptr @_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE11_M_allocateEm(i64 noundef %i.ay) #29
          to label %.noexc16.i unwind label %.loopexit3.i ; 5 uses

.noexc16.i:                                       ; preds = %_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at ; 2 uses
  %i.bb = load <2 x ptr>, ptr %8, align 16, !tbaa !120
  store <2 x ptr> %i.bb, ptr %i.ba, align 8, !tbaa !120
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bd = load ptr, ptr %i.aa, align 16, !tbaa !122
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !122
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.val18.i.i.i.i, %i.al
  br i1 %.not1.i.i.i.i.i.i.i, label %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc16.i, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.az, %.noexc16.i ] ; 3 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.val18.i.i.i.i, %.noexc16.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.be = load <2 x ptr>, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !120, !alias.scope !433, !noalias !432
  store <2 x ptr> %i.be, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !120, !alias.scope !432, !noalias !433
  %i.bf = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !122, !alias.scope !433, !noalias !432
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !122, !alias.scope !432, !noalias !433
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !433, !noalias !432
  %i.bi = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.al
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc16.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.az, %.noexc16.i ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %.val18.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26.i.i.i.i
  %i.bl = load ptr, ptr %i.z, align 8, !tbaa !132
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %.val18.i.i.i.i, i64 noundef %i.bn) #32
  br label %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.v, %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26.i.i.i.i
  store ptr %i.az, ptr %.val, align 8, !tbaa !133
  store ptr %i.bk, ptr %i.y, align 8, !tbaa !134
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ay
  store ptr %i.bo, ptr %i.z, align 8, !tbaa !132
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.bp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nanobind8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.w:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.z

.loopexit3.i:                                     ; preds = %_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit5.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

.loopexit.split-lp4.i:                            ; preds = %bb.u
  %lpad.loopexit.split-lp6.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp4.i, %.loopexit3.i
  %lpad.phi7.i = phi { ptr, i32 } [ %lpad.loopexit5.i, %.loopexit3.i ], [ %lpad.loopexit.split-lp6.i, %.loopexit.split-lp4.i ] ; 2 uses
  %.val.i = load ptr, ptr %8, align 16            ; 3 uses
  %.not.i.i.i18.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i18.i, label %.body.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val9.i = load ptr, ptr %i.aa, align 16
  %i.br = ptrtoint ptr %.val9.i to i64
  %i.bs = ptrtoint ptr %.val.i to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.bt) #32
  br label %.body.i

.body.i:                                          ; preds = %bb.y, %bb.x, %bb.p
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.p ], [ %lpad.phi7.i, %bb.y ], [ %lpad.phi7.i, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.z

bb.z:                                             ; preds = %.body.i, %bb.w, %bb.k
  %.pn8.i = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %.pn.i, %.body.i ], [ %i.bq, %bb.w ]
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #28 ; 0 uses
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #28 ; 0 uses
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.j
  %.pn8.pn.pn.i = phi { ptr, i32 } [ %.pn8.i, %bb.z ], [ %i.ag, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.i
  %.pn8.pn.pn.pn.i = phi { ptr, i32 } [ %.pn8.pn.pn.i, %bb.aa ], [ %i.af, %bb.i ]
  %.5.i = extractvalue { ptr, i32 } %.pn8.pn.pn.pn.i, 0
  %i.by = call ptr @__cxa_begin_catch(ptr %.5.i) #30 ; 0 uses
  call fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.val) #28
  invoke void @__cxa_rethrow() #35
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #31
  unreachable

bb.ae:                                            ; preds = %bb.ab
  unreachable

bb.af:                                            ; preds = %bb.h
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #28 ; 0 uses
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #28 ; 0 uses
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #28 ; 0 uses
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS9_NS_5typedINS_8iterableEJS7_EEEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

.body:                                            ; preds = %bb.ac
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #28 ; 0 uses
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  resume { ptr, i32 } %i.bz

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS9_NS_5typedINS_8iterableEJS7_EEEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit: ; preds = %_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS6_EEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit, %bb.a, %bb.af
  %.013.i = phi ptr [ @_Py_NoneStruct, %bb.af ], [ inttoptr (i64 1 to ptr), %_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS6_EEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  ret ptr %.013.i
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE7reserveEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 384307168202282325
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val9 = load ptr, ptr %0, align 8, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val10 = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.c = ptrtoint ptr %.val10 to i64
  %i.d = ptrtoint ptr %.val9 to i64               ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 24
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val8 = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.i = ptrtoint ptr %.val8 to i64
  %i.j = sub i64 %i.i, %i.d
  %i.k = tail call fastcc noundef ptr @_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE11_M_allocateEm(i64 noundef %1) #29 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !133    ; 3 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !134  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not1.i.i.i, label %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %.092.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.l, %bb.d ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.n = load <2 x ptr>, ptr %.092.i.i.i, align 8, !tbaa !120, !alias.scope !438, !noalias !437
  store <2 x ptr> %i.n, ptr %.03.i.i.i, align 8, !tbaa !120, !alias.scope !437, !noalias !438
  %i.o = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !122, !alias.scope !438, !noalias !437
  store ptr %i.q, ptr %i.o, align 8, !tbaa !122, !alias.scope !437, !noalias !438
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i, i8 0, i64 24, i1 false), !alias.scope !438, !noalias !437
  %i.r = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exitthread-pre-split: ; preds = %.lr.ph.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !133
  br label %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exitthread-pre-split, %bb.d
  %i.t = phi ptr [ %.pr, %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exitthread-pre-split ], [ %i.l, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #32
  br label %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.e
  store ptr %i.k, ptr %0, align 8, !tbaa !133
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store ptr %i.y, ptr %i.h, align 8, !tbaa !134
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %1
  store ptr %i.z, ptr %i.b, align 8, !tbaa !132
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal fastcc void @_ZZN8nanobind6detail9cast_implILb1ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS4_EEEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(64) dereferenceable(64) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
          to label %_ZL9Py_DECREFP7_object.exit.i unwind label %.loopexit.i

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
          to label %_ZN8nanobind6detail12cleanup_list7releaseEv.exit unwind label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.s = extractvalue { ptr, i32 } %lpad.phi.i, 0
  tail call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

_ZN8nanobind6detail12cleanup_list7releaseEv.exit: ; preds = %._crit_edge.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef zeroext i1 @_ZZN8nanobind22implicitly_convertibleINS_8iterableESt6vectorIS2_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS4_EESaIS6_EEEEvvENUlP11_typeobjectP7_objectPNS_6detail12cleanup_listEE_8__invokeESA_SC_SF_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #8 align 2 personality ptr @__gxx_personality_v0 {
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
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSV_jPNS0_12cleanup_listEE_8__invokeES19_S1A_jS1C_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.793", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -43
  %i.i = or disjoint i32 %i.h, 8
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.j, ptr noundef nonnull @_ZTISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.c:                                             ; preds = %bb.b
  %.val3 = load ptr, ptr %i.a, align 8, !tbaa !137
  %.val = load ptr, ptr %4, align 8, !tbaa !127
  call fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.val3, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val) #29
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE9push_backERKS4_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1) #29
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.f, ptr %i.a, align 8, !tbaa !134
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val30 = load ptr, ptr %0, align 8, !tbaa !133 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val31 = load ptr, ptr %i.a, align 8, !tbaa !134 ; 3 uses
  %i.b = ptrtoint ptr %.val31 to i64
  %i.c = ptrtoint ptr %.val30 to i64              ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp eq i64 %i.d, 9223372036854775800
  br i1 %i.e, label %bb.b, label %_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #33
  unreachable

_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.f = sdiv exact i64 %i.d, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.f      ; 2 uses
  %i.g = icmp ult i64 %3, %i.f
  %i.h = tail call i64 @llvm.umin.i64(i64 %3, i64 384307168202282325)
  %i.i = select i1 %i.g, i64 384307168202282325, i64 %i.h ; 3 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = sub i64 %i.j, %i.c
  %i.l = tail call fastcc noundef ptr @_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE11_M_allocateEm(i64 noundef %i.i) #29 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  invoke fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2) #29
          to label %_ZNSt16allocator_traitsISaISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %.not1.i.i.i = icmp eq ptr %.val30, %1
  br i1 %.not1.i.i.i, label %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.l, %_ZNSt16allocator_traitsISaISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_.exit ] ; 3 uses
  %.092.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %.val30, %_ZNSt16allocator_traitsISaISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.n = load <2 x ptr>, ptr %.092.i.i.i, align 8, !tbaa !120, !alias.scope !446, !noalias !445
  store <2 x ptr> %i.n, ptr %.03.i.i.i, align 8, !tbaa !120, !alias.scope !445, !noalias !446
  %i.o = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !122, !alias.scope !446, !noalias !445
  store ptr %i.q, ptr %i.o, align 8, !tbaa !122, !alias.scope !445, !noalias !446
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i, i8 0, i64 24, i1 false), !alias.scope !446, !noalias !445
  %i.r = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.l, %_ZNSt16allocator_traitsISaISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not1.i.i.i32 = icmp eq ptr %1, %.val31
  br i1 %.not1.i.i.i32, label %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit38, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i33
  %.03.i.i.i34 = phi ptr [ %i.z, %.lr.ph.i.i.i33 ], [ %i.t, %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  %.092.i.i.i35 = phi ptr [ %i.y, %.lr.ph.i.i.i33 ], [ %1, %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.u = load <2 x ptr>, ptr %.092.i.i.i35, align 8, !tbaa !120, !alias.scope !448, !noalias !447
  store <2 x ptr> %i.u, ptr %.03.i.i.i34, align 8, !tbaa !120, !alias.scope !447, !noalias !448
  %i.v = getelementptr inbounds nuw i8, ptr %.03.i.i.i34, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.092.i.i.i35, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !122, !alias.scope !448, !noalias !447
  store ptr %i.x, ptr %i.v, align 8, !tbaa !122, !alias.scope !447, !noalias !448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i35, i8 0, i64 24, i1 false), !alias.scope !448, !noalias !447
  %i.y = getelementptr inbounds nuw i8, ptr %.092.i.i.i35, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.03.i.i.i34, i64 24 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.y, %.val31
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit38, label %.lr.ph.i.i.i33, !llvm.loop !5

_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit38: ; preds = %.lr.ph.i.i.i33, %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.t, %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.z, %.lr.ph.i.i.i33 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.val30, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit38
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !132
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val30, i64 noundef %i.ad) #32
  br label %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit38, %bb.c
  store ptr %i.l, ptr %0, align 8, !tbaa !133
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !134
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.i
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !132
  ret void

bb.d:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %i.ah) #30 ; 0 uses
  %i.aj = mul nuw nsw i64 %i.i, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.aj) #32
  invoke void @__cxa_rethrow() #35
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.af

bb.g:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #31
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSV_jPNS0_12cleanup_listEE_8__invokeES19_S1A_jS1C_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::vector<std::vector<El>>::_Temporary_value", align 8 ; 4 uses
  %5 = alloca %"struct.nanobind::detail::tuple.799", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = and i32 %2, -35
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail8load_i64EPNS0_12nb_internalsEP7_objectjPl(ptr noundef %i.j, ptr noundef %i.h, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = and i32 %2, -43
  %i.o = or disjoint i32 %i.n, 8
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.q = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.p, ptr noundef nonnull @_ZTISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE, ptr noundef %i.m, i32 noundef %i.o, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  br i1 %i.q, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.d:                                             ; preds = %bb.c
  %.val3 = load ptr, ptr %i.a, align 8, !tbaa !137 ; 4 uses
  %i.r = load i64, ptr %i.f, align 8, !tbaa !81   ; 3 uses
  %.val = load ptr, ptr %5, align 8, !tbaa !127   ; 3 uses
  %i.s = icmp slt i64 %i.r, 0
  %.val.pre.i = load ptr, ptr %.val3, align 8, !tbaa !133 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 6 uses
  %.val14.i = load ptr, ptr %i.t, align 8, !tbaa !134 ; 4 uses
  %i.u = ptrtoint ptr %.val14.i to i64
  %i.v = ptrtoint ptr %.val.pre.i to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24                  ; 2 uses
  br i1 %i.s, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.y = add nsw i64 %i.x, %i.r                   ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %.04.i = phi i64 [ %i.y, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.aa = icmp ugt i64 %.04.i, %i.x
  br i1 %i.aa, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.thread.i, %bb.e
  %i.ab = call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  invoke void @_ZN8nanobind11index_errorEPKc(ptr dead_on_unwind writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %i.ab, ptr noundef null) #29
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr %i.ab, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.ab) #30
  resume { ptr, i32 } %i.ac

bb.i:                                             ; preds = %.thread.i
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.val.pre.i, i64 %.04.i ; 6 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !132
  %.not.i.i = icmp eq ptr %.val14.i, %i.ag
  br i1 %.not.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.pre.i) ]
  %i.ah = icmp eq ptr %i.ad, %.val14.i
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.val14.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val) #29
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !134
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.t, align 8, !tbaa !134
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i8 0, ptr %i.ak, align 8, !tbaa !26
  call fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val) #29
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !134 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJRKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EEEE7executeINS_6class_IS9_JEEEJNS_5arg_tILj1ELb1EEEA17_cEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS9_EESB_E_vJSQ_SB_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodESH_SI_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSW_jPNS0_12cleanup_listEE_8__invokeES1A_S1B_jS1D_:bb.a
  %i.i = or disjoint i32 %i.h, 8
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.j, ptr noundef nonnull @_ZTISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJRKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EEEE7executeINS_6class_IS9_JEEEJNS_5arg_tILj1ELb1EEEA17_cEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS9_EESB_E_vJSQ_SB_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodESH_SI_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSW_jPNS0_12cleanup_listEE_clES1A_S1B_jS1D_.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  %.val = load ptr, ptr %4, align 8, !tbaa !152
  call fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.copyload.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val) #29
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJRKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EEEE7executeINS_6class_IS9_JEEEJNS_5arg_tILj1ELb1EEEA17_cEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS9_EESB_E_vJSQ_SB_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodESH_SI_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSW_jPNS0_12cleanup_listEE_clES1A_S1B_jS1D_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJRKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EEEE7executeINS_6class_IS9_JEEEJNS_5arg_tILj1ELb1EEEA17_cEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS9_EESB_E_vJSQ_SB_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodESH_SI_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSW_jPNS0_12cleanup_listEE_clES1A_S1B_jS1D_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS9_NS_5typedINS_8iterableEJS7_EEEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSV_jPNS0_12cleanup_listEE_8__invokeES19_S1A_jS1C_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::type_caster.985", align 16 ; 8 uses
  %5 = alloca %struct.raii_cleanup.986, align 8   ; 10 uses
  %6 = alloca %"class.nanobind::iterator", align 8 ; 10 uses
  %7 = alloca %"class.nanobind::iterator", align 8 ; 8 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 9 uses
  %9 = alloca %"class.nanobind::handle", align 8  ; 4 uses
  %10 = alloca %"struct.nanobind::detail::type_caster.146", align 8 ; 9 uses
  %11 = alloca %"struct.nanobind::detail::tuple.980", align 8 ; 11 uses
  %12 = alloca %"class.nanobind::typed.983", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr null, ptr %11, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS9_NS_5typedINS_8iterableEJS7_EEEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr null, ptr %10, align 8
  %i.i = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_8iterableEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #28
  br i1 %i.i, label %bb.c, label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit

_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit: ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS9_NS_5typedINS_8iterableEJS7_EEEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.k = load ptr, ptr %11, align 8, !tbaa !35
  store ptr %i.k, ptr %9, align 8, !tbaa !35
  %i.l = load ptr, ptr %10, align 8, !tbaa !35
  store ptr %i.l, ptr %11, align 8, !tbaa !35
  store ptr null, ptr %10, align 8, !tbaa !35
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %.val = load ptr, ptr %i.a, align 8, !tbaa !152 ; 7 uses
  %i.o = load i64, ptr %11, align 8               ; 2 uses
  store i64 %i.o, ptr %12, align 8
  store ptr null, ptr %11, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val, i8 0, i64 24, i1 false)
  %.sroa.0.0.copyload.i.cast = inttoptr i64 %i.o to ptr
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.q = call noundef i64 @_ZN8nanobind6detail8len_hintEPNS0_12nb_internalsEP7_object(ptr noundef %i.p, ptr noundef %.sroa.0.0.copyload.i.cast) #28
  invoke fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.q) #29
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.r = load ptr, ptr %12, align 8, !tbaa !35, !noalias !501
  %i.s = invoke ptr @PyObject_GetIter(ptr noundef %i.r) #29
          to label %.noexc.i unwind label %bb.j   ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.f, !prof !70

bb.e:                                             ; preds = %.noexc.i
  invoke void @_ZN8nanobind6detail18raise_python_errorEv() #33
          to label %.noexc9.i unwind label %bb.j

.noexc9.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  store ptr %i.s, ptr %6, align 8, !alias.scope !502
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr null, ptr %i.t, align 8, !tbaa !35, !alias.scope !502
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !alias.scope !503
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE9push_backEOS4_.exit.i, %bb.f
  %i.ac = invoke ptr @_ZNK8nanobind8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
          to label %.noexc10.i unwind label %bb.k ; 0 uses

.noexc10.i:                                       ; preds = %bb.g
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.ae = invoke ptr @_ZNK8nanobind8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #29
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %.noexc10.i
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i, label %bb.ac, label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.k:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE9push_backEOS4_.exit.i, %.noexc10.i, %bb.g
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.l:                                             ; preds = %bb.h
  %i.aj = invoke ptr @_ZNK8nanobind8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false), !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !504
  %i.ak = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25, !noalias !504
  store <2 x i32> <i32 1, i32 5>, ptr %5, align 8, !tbaa !33, !noalias !504
  store ptr %i.w, ptr %i.v, align 8, !tbaa !91, !noalias !504
  store ptr %i.ak, ptr %i.x, align 8, !tbaa !92, !noalias !504
  store ptr null, ptr %i.w, align 8, !tbaa !23, !noalias !504
  %i.al = call fastcc noundef zeroext i1 @_ZN8nanobind6detail11type_casterISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.aj, i32 noundef 17, ptr noundef nonnull %5) #28, !noalias !504
  br i1 %i.al, label %bb.p, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.m
  invoke void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #33
          to label %bb.n unwind label %bb.o, !noalias !504

bb.n:                                             ; preds = %.critedge.i.i
  unreachable

bb.o:                                             ; preds = %.critedge.i.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  call fastcc void @_ZZN8nanobind6detail9cast_implILb1ESt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28, !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !504
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #28, !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !504
  br label %.body.i

bb.p:                                             ; preds = %bb.m
  %i.an = load <2 x ptr>, ptr %4, align 16, !tbaa !49, !noalias !504
  store <2 x ptr> %i.an, ptr %8, align 16, !tbaa !49, !alias.scope !504
  store <2 x ptr> splat (ptr null), ptr %4, align 16, !tbaa !49, !noalias !504
  call fastcc void @_ZZN8nanobind6detail9cast_implILb1ESt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28, !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !504
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #28, !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !504
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !146 ; 7 uses
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !144
  %.not.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !149
  %i.ar = load <2 x ptr>, ptr %8, align 16, !tbaa !49
  store ptr null, ptr %i.y, align 8, !tbaa !149
  store <2 x ptr> %i.ar, ptr %i.ao, align 8, !tbaa !49
  store ptr null, ptr %8, align 16, !tbaa !156
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.as, ptr %i.aa, align 8, !tbaa !146
  br label %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE9push_backEOS4_.exit.i

bb.r:                                             ; preds = %bb.p
  %.val18.i.i.i.i = load ptr, ptr %.val, align 8, !tbaa !145 ; 5 uses
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %.val18.i.i.i.i to i64     ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775792
  br i1 %i.aw, label %bb.s, label %_ZNKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #33
          to label %.noexc12.i unwind label %.loopexit.split-lp.i

.noexc12.i:                                       ; preds = %bb.s
  unreachable

_ZNKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = ashr exact i64 %i.av, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %13 = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ax ; 2 uses
  %i.ay = icmp ult i64 %13, %i.ax
  %i.az = call i64 @llvm.umin.i64(i64 %13, i64 576460752303423487)
  %i.ba = select i1 %i.ay, i64 576460752303423487, i64 %i.az ; 2 uses
  %i.bb = invoke fastcc noundef ptr @_ZNSt12_Vector_baseISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_M_allocateEm(i64 noundef %i.ba) #29
          to label %.noexc13.i unwind label %.loopexit.i ; 5 uses

.noexc13.i:                                       ; preds = %_ZNKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.av
  %i.bd = load <2 x ptr>, ptr %8, align 16, !tbaa !49
  store <2 x ptr> %i.bd, ptr %i.bc, align 8, !tbaa !49
  store <2 x ptr> splat (ptr null), ptr %8, align 16, !tbaa !49
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.val18.i.i.i.i, %i.ao
  br i1 %.not1.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc13.i, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bb, %.noexc13.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ], [ %.val18.i.i.i.i, %.noexc13.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.be = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8
  %i.bf = load <2 x ptr>, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !49, !alias.scope !506, !noalias !505
  store <2 x ptr> %i.bf, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !49, !alias.scope !505, !noalias !506
  store <2 x ptr> splat (ptr null), ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !49, !alias.scope !506, !noalias !505
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.be) #28, !noalias !505
  %i.bg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.ao
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !10

_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc13.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.noexc13.i ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %.val18.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26.i.i.i.i
  %i.bj = load ptr, ptr %i.ab, align 8, !tbaa !144
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %.val18.i.i.i.i, i64 noundef %i.bl) #32
  br label %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.t, %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26.i.i.i.i
  store ptr %i.bb, ptr %.val, align 8, !tbaa !145
  store ptr %i.bi, ptr %i.aa, align 8, !tbaa !146
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.ba
  store ptr %i.bm, ptr %i.ab, align 8, !tbaa !144
  br label %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE9push_backEOS4_.exit.i

_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE9push_backEOS4_.exit.i: ; preds = %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.q
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nanobind8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.u:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

.loopexit.i:                                      ; preds = %_ZNKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

.loopexit.split-lp.i:                             ; preds = %bb.s
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #28
  br label %.body.i

.body.i:                                          ; preds = %bb.v, %bb.o
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.v ], [ %i.am, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.w

bb.w:                                             ; preds = %.body.i, %bb.u, %bb.k
  %.pn8.i = phi { ptr, i32 } [ %i.ai, %bb.k ], [ %.pn.i, %.body.i ], [ %i.bo, %bb.u ]
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #28 ; 0 uses
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #28 ; 0 uses
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn8.pn.pn.i = phi { ptr, i32 } [ %.pn8.i, %bb.w ], [ %i.ah, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.i
  %.pn8.pn.pn.pn.i = phi { ptr, i32 } [ %.pn8.pn.pn.i, %bb.x ], [ %i.ag, %bb.i ]
  %.5.i = extractvalue { ptr, i32 } %.pn8.pn.pn.pn.i, 0
  %i.bt = call ptr @__cxa_begin_catch(ptr %.5.i) #30 ; 0 uses
  call fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.val) #28
  invoke void @__cxa_rethrow() #35
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #31
  unreachable

bb.ab:                                            ; preds = %bb.y
  unreachable

bb.ac:                                            ; preds = %bb.h
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #28 ; 0 uses
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #28 ; 0 uses
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #28 ; 0 uses
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS9_NS_5typedINS_8iterableEJS7_EEEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

.body:                                            ; preds = %bb.z
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #28 ; 0 uses
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  resume { ptr, i32 } %i.bu

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlPS9_NS_5typedINS_8iterableEJS7_EEEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEA34_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit: ; preds = %_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit, %bb.a, %bb.ac
  %.013.i = phi ptr [ @_Py_NoneStruct, %bb.ac ], [ inttoptr (i64 1 to ptr), %_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  ret ptr %.013.i
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE7reserveEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val9 = load ptr, ptr %0, align 8, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val10 = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.c = ptrtoint ptr %.val10 to i64
  %i.d = ptrtoint ptr %.val9 to i64               ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val8 = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.i = ptrtoint ptr %.val8 to i64
  %i.j = sub i64 %i.i, %i.d
  %i.k = tail call fastcc noundef ptr @_ZNSt12_Vector_baseISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_M_allocateEm(i64 noundef %1) #29 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !145    ; 3 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !146  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not1.i.i.i, label %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %.092.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.l, %bb.d ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.n = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %i.o = load <2 x ptr>, ptr %.092.i.i.i, align 8, !tbaa !49, !alias.scope !511, !noalias !510
  store <2 x ptr> %i.o, ptr %.03.i.i.i, align 8, !tbaa !49, !alias.scope !510, !noalias !511
  store <2 x ptr> splat (ptr null), ptr %.092.i.i.i, align 8, !tbaa !49, !alias.scope !511, !noalias !510
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #28, !noalias !510
  %i.p = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.p, %i.m
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !10

_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exitthread-pre-split: ; preds = %.lr.ph.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !145
  br label %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exitthread-pre-split, %bb.d
  %i.r = phi ptr [ %.pr, %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exitthread-pre-split ], [ %i.l, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !144
end_hunk_2
begin_hunk_3_@_ZN8nanobind6detail10py_deleterclEPv:bb.a
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.c) #29
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  tail call void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef nonnull %i.b) #28
  br label %_ZN8nanobind6detail13cleanup_guardD2Ev.exit

_ZN8nanobind6detail13cleanup_guardD2Ev.exit:      ; preds = %bb.a, %_ZN8nanobind6detail13cleanup_guardC2Ev.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #31
  unreachable
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPvN8nanobind6detail10py_deleterESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #32
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPvN8nanobind6detail10py_deleterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !519
  tail call void @_ZN8nanobind6detail10py_deleterclEPv(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c) #28
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPvN8nanobind6detail10py_deleterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPvN8nanobind6detail10py_deleterESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #32
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPvN8nanobind6detail10py_deleterESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !521  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSN8nanobind6detail10py_deleterE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(31) @_ZTSN8nanobind6detail10py_deleterE) #28
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nounwind optsize
declare noundef zeroext i1 @_ZN8nanobind6detail8is_aliveEv() local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail13tstate_ensureEv() local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN8nanobind6detail14tstate_releaseEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef zeroext i1 @_ZZN8nanobind22implicitly_convertibleINS_8iterableESt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS6_EEEEvvENUlP11_typeobjectP7_objectPNS_6detail12cleanup_listEE_8__invokeESA_SC_SF_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #8 align 2 personality ptr @__gxx_personality_v0 {
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
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSV_jPNS0_12cleanup_listEE_8__invokeES19_S1A_jS1C_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.998", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = call fastcc noundef zeroext i1 @_ZN8nanobind6detail11type_casterISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #28
  br i1 %i.i, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !152
  invoke fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.val, ptr noundef nonnull readonly align 8 dereferenceable(16) %4) #29
          to label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.j

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS7_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.012.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ], [ @_Py_NoneStruct, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.012.i
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE9push_backERKS4_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.e, align 8, !tbaa !149 ; 2 uses
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !49
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !49
  %.not.i.i.i = icmp eq ptr %.val4, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.g, align 4, !tbaa !33
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !33
  br label %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !146
  br label %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit

_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.l = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.d ], [ %.pre, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.a, align 8, !tbaa !146
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val20 = load ptr, ptr %0, align 8, !tbaa !145 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val21 = load ptr, ptr %i.a, align 8, !tbaa !146 ; 3 uses
  %i.b = ptrtoint ptr %.val21 to i64
  %i.c = ptrtoint ptr %.val20 to i64              ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp eq i64 %i.d, 9223372036854775792
  br i1 %i.e, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #33
  unreachable

_ZNKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.f = ashr exact i64 %i.d, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.f      ; 2 uses
  %i.g = icmp ult i64 %3, %i.f
  %i.h = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.i = select i1 %i.g, i64 576460752303423487, i64 %i.h ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = sub i64 %i.j, %i.c
  %i.l = tail call fastcc noundef ptr @_ZNSt12_Vector_baseISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_M_allocateEm(i64 noundef %i.i) #29 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val19 = load ptr, ptr %i.n, align 8, !tbaa !149 ; 2 uses
  %i.o = load <2 x ptr>, ptr %2, align 8, !tbaa !49
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !49
  %.not.i.i.i = icmp eq ptr %.val19, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE12_M_check_lenEmPKc.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.val19, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.p, align 4, !tbaa !33
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !33
  br label %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit

_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not1.i.i.i = icmp eq ptr %.val20, %1
  br i1 %.not1.i.i.i, label %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.l, %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit ] ; 2 uses
  %.092.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.val20, %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.u = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %i.v = load <2 x ptr>, ptr %.092.i.i.i, align 8, !tbaa !49, !alias.scope !529, !noalias !528
  store <2 x ptr> %i.v, ptr %.03.i.i.i, align 8, !tbaa !49, !alias.scope !528, !noalias !529
  store <2 x ptr> splat (ptr null), ptr %.092.i.i.i, align 8, !tbaa !49, !alias.scope !529, !noalias !528
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #28, !noalias !528
  %i.w = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.w, %1
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !10

_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.l, %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit ], [ %i.x, %.lr.ph.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not1.i.i.i23 = icmp eq ptr %1, %.val21
  br i1 %.not1.i.i.i23, label %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i24
  %.03.i.i.i25 = phi ptr [ %i.ac, %.lr.ph.i.i.i24 ], [ %i.y, %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.092.i.i.i26 = phi ptr [ %i.ab, %.lr.ph.i.i.i24 ], [ %1, %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.z = getelementptr inbounds nuw i8, ptr %.092.i.i.i26, i64 8
  %i.aa = load <2 x ptr>, ptr %.092.i.i.i26, align 8, !tbaa !49, !alias.scope !531, !noalias !530
  store <2 x ptr> %i.aa, ptr %.03.i.i.i25, align 8, !tbaa !49, !alias.scope !530, !noalias !531
  store <2 x ptr> splat (ptr null), ptr %.092.i.i.i26, align 8, !tbaa !49, !alias.scope !531, !noalias !530
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #28, !noalias !530
  %i.ab = getelementptr inbounds nuw i8, ptr %.092.i.i.i26, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03.i.i.i25, i64 16 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.ab, %.val21
  br i1 %.not.i.i.i27, label %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29, label %.lr.ph.i.i.i24, !llvm.loop !10

_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29: ; preds = %.lr.ph.i.i.i24, %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i28 = phi ptr [ %i.y, %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ac, %.lr.ph.i.i.i24 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.val20, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !144
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val20, i64 noundef %i.ag) #32
  br label %_ZNSt12_Vector_baseISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29, %bb.f
  store ptr %i.l, ptr %0, align 8, !tbaa !145
  store ptr %.0.lcssa.i.i.i28, ptr %i.a, align 8, !tbaa !146
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.i
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !144
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSV_jPNS0_12cleanup_listEE_8__invokeES19_S1A_jS1C_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__shared_ptr", align 16 ; 4 uses
  %5 = alloca %"class.std::__shared_ptr", align 16 ; 4 uses
  %6 = alloca %"struct.std::vector<std::shared_ptr<El>>::_Temporary_value", align 8 ; 5 uses
  %7 = alloca %"struct.nanobind::detail::tuple.1005", align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = and i32 %2, -35                          ; 2 uses
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail8load_i64EPNS0_12nb_internalsEP7_objectjPl(ptr noundef %i.j, ptr noundef %i.h, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = call fastcc noundef zeroext i1 @_ZN8nanobind6detail11type_casterISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.m, i32 noundef %i.i, ptr noundef %3) #28
  br i1 %i.n, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.a, align 8, !tbaa !152 ; 5 uses
  %i.o = load i64, ptr %i.f, align 16, !tbaa !81  ; 3 uses
  %i.p = icmp slt i64 %i.o, 0
  %.val.pre.i = load ptr, ptr %.val, align 8, !tbaa !145 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 5 uses
  %.val14.i = load ptr, ptr %i.q, align 8, !tbaa !146 ; 8 uses
  %i.r = ptrtoint ptr %.val14.i to i64
  %i.s = ptrtoint ptr %.val.pre.i to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 4                   ; 2 uses
  br i1 %i.p, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i64 %i.u, %i.o                   ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %.04.i = phi i64 [ %i.v, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %i.x = icmp ugt i64 %.04.i, %i.u
  br i1 %i.x, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.thread.i, %bb.e
  %i.y = call ptr @__cxa_allocate_exception(i64 24) #30 ; 5 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.y, ptr noundef nonnull @.str.1) #29
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi117builtin_exceptionE, i64 16), ptr %i.y, align 8, !tbaa !60, !alias.scope !535
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 2, ptr %i.z, align 8, !tbaa !86, !alias.scope !535
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.y) #30
  br label %.body

bb.i:                                             ; preds = %.thread.i
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.val.pre.i, i64 %.04.i ; 6 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !144
  %.not.i.i = icmp eq ptr %.val14.i, %i.ae
  br i1 %.not.i.i, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.pre.i) ]
  %i.af = icmp eq ptr %i.ab, %.val14.i
  br i1 %i.af, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val23.i.i = load ptr, ptr %i.ag, align 8, !tbaa !149 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %7, align 16, !tbaa !49
  store <2 x ptr> %i.ah, ptr %.val14.i, align 8, !tbaa !49
  %.not.i.i.i.i.i = icmp eq ptr %.val23.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.val23.i.i, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !33
  br label %_ZNSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEC2ERKS3_.exit.i.i

bb.n:                                             ; preds = %bb.l
end_hunk_3
