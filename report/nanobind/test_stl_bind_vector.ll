Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_stl_bind_vector?download=true
inline.NumInlined: 4430
inline.NumDeleted: 1793
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt10unique_ptrISt6vectorI3CntSaIS1_EESt14default_deleteIS3_EED2Ev:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteISt6vectorI3CntSaIS1_EEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS6_RKNS_5sliceERKS6_E_vJSI_SL_SN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENST_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSX_jPNS0_12cleanup_listEE_8__invokeES1B_S1C_jS1E_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.1270", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23
  %i.d = and i32 %2, -2
  %i.e = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.f = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.e, ptr noundef nonnull @_ZTISt6vectorI3CntSaIS0_EE, ptr noundef %i.c, i32 noundef %i.d, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br i1 %i.f, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS6_RKNS_5sliceERKS6_E_vJSI_SL_SN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENST_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = and i32 %2, -35
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_5sliceEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr %i.h, i32 noundef %i.i, ptr noundef %3) #28
  br i1 %i.j, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS6_RKNS_5sliceERKS6_E_vJSI_SL_SN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENST_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = and i32 %2, -43
  %i.n = or disjoint i32 %i.m, 8
  %i.o = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.p = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.o, ptr noundef nonnull @_ZTISt6vectorI3CntSaIS0_EE, ptr noundef %i.l, i32 noundef %i.n, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.p, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS6_RKNS_5sliceERKS6_E_vJSI_SL_SN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENST_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !173
  %i.r = load ptr, ptr %4, align 8, !tbaa !173
  invoke void @_ZZN8nanobind11bind_vectorISt6vectorI3CntSaIS2_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS4_RKNS_5sliceERKS4_E_clESG_SJ_SL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.r) #29
          to label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS6_RKNS_5sliceERKS6_E_vJSI_SL_SN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENST_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.s

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS6_RKNS_5sliceERKS6_E_vJSI_SL_SN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENST_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.015.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ @_Py_NoneStruct, %bb.d ]
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.015.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden void @_ZZN8nanobind11bind_vectorISt6vectorI3CntSaIS2_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS4_RKNS_5sliceERKS4_E_clESG_SJ_SL_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.191", align 8 ; 8 uses
  %5 = alloca %"class.std::vector.1125", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = load ptr, ptr %1, align 8, !tbaa !170
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  call void @_ZNK8nanobind5slice7computeEm(ptr dead_on_unwind nonnull writable sret(%"struct.nanobind::detail::tuple.191") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.f) #29
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %4, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !169
  %i.l = load ptr, ptr %3, align 8, !tbaa !170
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.not = icmp eq i64 %i.i, %i.o
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  invoke void @_ZN8nanobind11index_errorEPKc(ptr dead_on_unwind writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %i.p, ptr noundef nonnull @.str.56) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr %i.p, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.p) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %bb.a
  %i.r = icmp eq ptr %3, %1
  br i1 %i.r, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZNSt6vectorI3CntSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #29
  %i.s = load i64, ptr %4, align 8, !tbaa !81     ; 2 uses
  %.not35 = icmp eq i64 %i.s, 0
  br i1 %.not35, label %bb.g, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.f
  %.promoted30 = load i64, ptr %i.g, align 8
  %i.t = load i64, ptr %i.h, align 8, !tbaa !81
  %i.u = mul i64 %i.t, %i.s
  %i.v = add i64 %.promoted30, %i.u
  store i64 %i.v, ptr %i.g, align 8, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph32, %bb.f
  call void @_ZNSt6vectorI3CntSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS6_RKNS_5sliceEE_vJSI_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSS_jPNS0_12cleanup_listEE_8__invokeES16_S17_jS19_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.191", align 8 ; 6 uses
  %5 = alloca %"struct.nanobind::detail::tuple.1253", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr null, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorI3CntSaIS0_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS6_RKNS_5sliceEE_vJSI_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_5sliceEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #28
  br i1 %i.i, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS6_RKNS_5sliceEE_vJSI_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !173  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !170
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  invoke void @_ZNK8nanobind5slice7computeEm(ptr dead_on_unwind nonnull writable sret(%"struct.nanobind::detail::tuple.191") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.p) #29
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  %i.q = load i64, ptr %4, align 8, !tbaa !81     ; 4 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !81   ; 3 uses
  %i.v = add nsw i64 %i.q, -1
  %i.w = load i64, ptr %i.s, align 8, !tbaa !81   ; 3 uses
  %i.x = mul nsw i64 %i.w, %i.v                   ; 2 uses
  %i.y = add nsw i64 %i.x, %i.u                   ; 2 uses
  %i.z = icmp slt i64 %i.x, 0                     ; 3 uses
  %i.aa = sub nsw i64 0, %i.w
  %i.ab = select i1 %i.z, i64 %i.y, i64 %i.u      ; 2 uses
  %i.ac = select i1 %i.z, i64 %i.aa, i64 %i.w
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %.promoted37.i = load ptr, ptr %i.k, align 8, !tbaa !166
  %_ZN3Cnt5aliveE.promoted.i = load i32, ptr @_ZN3Cnt5aliveE, align 4, !tbaa !33
  %i.ae = sub i64 0, %i.q
  %scevgep.i = getelementptr i8, ptr %.promoted37.i, i64 %i.ae
  %i.af = trunc i64 %i.q to i32
  %i.ag = sub i32 %_ZN3Cnt5aliveE.promoted.i, %i.af
  store ptr %scevgep.i, ptr %i.k, align 8, !tbaa !166
  store i32 %i.ag, ptr @_ZN3Cnt5aliveE, align 4, !tbaa !33
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ah = select i1 %i.z, i64 %i.u, i64 %i.y
  %i.ai = add nsw i64 %i.ah, 1                    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, %i.ai
  br i1 %.not.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !166 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ai
  %6 = ptrtoint ptr %i.al to i64
  %7 = load ptr, ptr %i.k, align 8, !tbaa !166    ; 2 uses
  %i.am = ptrtoint ptr %7 to i64                  ; 2 uses
  %i.an = sub i64 %i.am, %6
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %7, %i.ao
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %_ZN3Cnt5aliveE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN3Cnt5aliveE, align 4
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = trunc i64 %i.am to i32
  %i.as = sub i32 %i.aq, %i.ar
  %i.at = add i32 %i.as, %_ZN3Cnt5aliveE.promoted.i.i.i.i.i.i
  store i32 %i.at, ptr @_ZN3Cnt5aliveE, align 4, !tbaa !33
  store ptr %i.ao, ptr %i.k, align 8, !tbaa !169
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %.preheader.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS6_RKNS_5sliceEE_vJSI_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit

bb.i:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.au

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS6_RKNS_5sliceEE_vJSI_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit: ; preds = %bb.a, %bb.b, %bb.h
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE3$_0iJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS7_jPNS0_12cleanup_listEE_8__invokeESL_SM_jSO_"(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3) #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr @_ZN3Cnt5aliveE, align 4, !tbaa !33
  %i.b = sext i32 %i.a to i64
  %i.c = invoke ptr @PyLong_FromLong(i64 noundef %i.b) #29
          to label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE3$_0iJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #31
  unreachable

"_ZZN8nanobind6detail11func_createILb0ELb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE3$_0iJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit": ; preds = %bb.a
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE3$_1vJiEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS7_jPNS0_12cleanup_listEE_8__invokeESL_SM_jSO_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #8 align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.456", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.b, ptr noundef %i.a, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #28
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE3$_1vJiEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !33
  store i32 %i.d, ptr @_ZN3Cnt11throw_afterE, align 4, !tbaa !33
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE3$_1vJiEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE3$_1vJiEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit": ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EEiE_vJSG_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSM_jPNS0_12cleanup_listEE_8__invokeES10_S11_jS13_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::type_caster.1298", align 8 ; 5 uses
  %5 = alloca %"struct.nanobind::detail::tuple.1294", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 4 uses
  %i.d = and i32 %2, 32
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.thread

_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.thread: ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  store i64 %i.e, ptr %i.a, align 8
  %i.f = tail call noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %i.c) #28
  store ptr %i.f, ptr %i.b, align 8, !tbaa !600
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %2, -34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.i = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.h, ptr noundef nonnull @_ZTIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_nc, ptr noundef %i.c, i32 noundef %i.g, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.i, label %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.thread6, label %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit

_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.thread6: ; preds = %bb.b
  %i.j = ptrtoint ptr %i.c to i64
  store i64 %i.j, ptr %i.a, align 8
  %.val.i = load ptr, ptr %4, align 8, !tbaa !179
  store ptr %.val.i, ptr %i.b, align 8, !tbaa !600
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.c

_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EEiE_vJSG_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSM_jPNS0_12cleanup_listEE_clES10_S11_jS13_.exit

bb.c:                                             ; preds = %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.thread6, %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = and i32 %2, -35
  %i.n = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.o = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.n, ptr noundef %i.l, i32 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(4) %5) #28
  br i1 %i.o, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EEiE_vJSG_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSM_jPNS0_12cleanup_listEE_clES10_S11_jS13_.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  %i.p = load i32, ptr %5, align 8, !tbaa !33
  store i32 %i.p, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !181
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EEiE_vJSG_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSM_jPNS0_12cleanup_listEE_clES10_S11_jS13_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EEiE_vJSG_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSM_jPNS0_12cleanup_listEE_clES10_S11_jS13_.exit: ; preds = %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit, %bb.c, %bb.d
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %_ZN8nanobind6detail11type_casterINS_18pointer_and_handleIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEE6def_rwIS4_iJEEERS5_PKcMT_T0_DpRKT1_EUlRKS4_E_RKiJSI_EJLm0EEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSO_5valueE6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPST_jPNS0_12cleanup_listEE_8__invokeES17_S18_jS1A_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.1306", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !23
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_nc, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEE6def_rwIS4_iJEEERS5_PKcMT_T0_DpRKT1_EUlRKS4_E_RKiJSI_EJLm0EEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSO_5valueE6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %4, align 8, !tbaa !179
  %.val3 = load i64, ptr %0, align 8, !tbaa !602
  %i.e = getelementptr inbounds i8, ptr %.val, i64 %.val3
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %i.g = sext i32 %i.f to i64
  %i.h = invoke ptr @PyLong_FromLong(i64 noundef %i.g) #29
          to label %_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEE6def_rwIS4_iJEEERS5_PKcMT_T0_DpRKT1_EUlRKS4_E_RKiJSI_EJLm0EEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSO_5valueE6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEE6def_rwIS4_iJEEERS5_PKcMT_T0_DpRKT1_EUlRKS4_E_RKiJSI_EJLm0EEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSO_5valueE6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit: ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEE6def_rwIS4_iJEEERS5_PKcMT_T0_DpRKT1_EUlRS4_OiE_vJSH_SI_EJLm0ELm1EEJNS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSM_jPNS0_12cleanup_listEE_8__invokeES10_S11_jS13_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #8 align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.1311", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_nc, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEE6def_rwIS4_iJEEERS5_PKcMT_T0_DpRKT1_EUlRS4_OiE_vJSH_SI_EJLm0ELm1EEJNS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSM_jPNS0_12cleanup_listEE_clES10_S11_jS13_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %4) #28
  br i1 %i.j, label %bb.c, label %_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEE6def_rwIS4_iJEEERS5_PKcMT_T0_DpRKT1_EUlRS4_OiE_vJSH_SI_EJLm0ELm1EEJNS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSM_jPNS0_12cleanup_listEE_clES10_S11_jS13_.exit

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !179
  %.val3 = load i64, ptr %0, align 8, !tbaa !604
  %.val4 = load i32, ptr %4, align 8, !tbaa !33
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %.val3
  store i32 %.val4, ptr %i.k, align 4, !tbaa !33
  br label %_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEE6def_rwIS4_iJEEERS5_PKcMT_T0_DpRKT1_EUlRS4_OiE_vJSH_SI_EJLm0ELm1EEJNS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSM_jPNS0_12cleanup_listEE_clES10_S11_jS13_.exit

_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncJEE6def_rwIS4_iJEEERS5_PKcMT_T0_DpRKT1_EUlRS4_OiE_vJSH_SI_EJLm0ELm1EEJNS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSM_jPNS0_12cleanup_listEE_clES10_S11_jS13_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN8nanobind6detail9wrap_moveISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS4_EEEEvPvS7_(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef captures(none) %1) #18 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !182
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !182
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184
  store ptr %i.d, ptr %i.b, align 8, !tbaa !184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
end_hunk_0
