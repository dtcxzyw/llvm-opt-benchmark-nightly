Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_stl_bind_vector?download=true
inline.NumInlined: 4430
inline.NumDeleted: 1793
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bISt13_Bit_iteratorS3_EET0_T_S5_S4_:bb.a

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
  %i.z = icmp sgt i64 %.024, 1
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !318
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
  %i.h = icmp eq ptr %i.g, @_Py_TrueStruct        ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %i.g, @_Py_FalseStruct
  br i1 %i.i, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  store i8 %.sink.i, ptr %4, align 8, !tbaa !111
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !106
  call void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i1 noundef zeroext %i.h) #29
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

bb.f:                                             ; preds = %bb.e
  %i.ad = add i64 %i.ac, %i.q                     ; 2 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.f
  %.024.i = phi i64 [ %i.ad, %bb.f ], [ %i.q, %bb.e ] ; 3 uses
  %i.af = icmp ugt i64 %.024.i, %i.ac
  br i1 %i.af, label %bb.g, label %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lRKbE_clESF_lSH_.exit

bb.g:                                             ; preds = %.thread.i, %bb.f
  %i.ag = call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  invoke void @_ZN8nanobind11index_errorEPKc(ptr dead_on_unwind writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %i.ag, ptr noundef null) #29
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @__cxa_throw(ptr %i.ag, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.ag) #30
  resume { ptr, i32 } %i.ah

_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lRKbE_clESF_lSH_.exit: ; preds = %.thread.i
  %i.ai = lshr i64 %.024.i, 6
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ai
  %i.ak = trunc i64 %.024.i to i32
  %i.al = and i32 %i.ak, 63
  %i.am = call { ptr, i32 } @_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr %i.aj, i32 %i.al, ptr noundef nonnull align 1 dereferenceable(1) %4) #29 ; 0 uses
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.d, %bb.a, %bb.b, %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lRKbE_clESF_lSH_.exit
  %.0.i = phi ptr [ @_Py_NoneStruct, %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lRKbE_clESF_lSH_.exit ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr { ptr, i32 } @_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.f = icmp eq ptr %1, %i.c
  %i.g = icmp eq i32 %2, %.sroa.2.0.copyload.i
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %3, align 1, !tbaa !112, !range !113, !noundef !114
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = add i32 %2, 1
  store i32 %i.k, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  %i.l = icmp eq i32 %2, 63
  br i1 %i.l, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %i.b, align 8, !tbaa !99
  br label %_ZNSt13_Bit_iteratorppEi.exit

_ZNSt13_Bit_iteratorppEi.exit:                    ; preds = %bb.c, %bb.d
  %i.n = zext i32 %2 to i64                       ; 3 uses
  %i.o = shl nuw i64 1, %i.n                      ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.p = load i64, ptr %i.c, align 8, !tbaa !81
  %i.q = or i64 %i.p, %i.o
  store i64 %i.q, ptr %i.c, align 8, !tbaa !81
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.r = xor i64 %i.o, -1
  %i.s = load i64, ptr %i.c, align 8, !tbaa !81
  %i.t = and i64 %i.s, %i.r
  store i64 %i.t, ptr %i.c, align 8, !tbaa !81
  br label %_ZNSt14_Bit_referenceaSEb.exit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.u = load i8, ptr %3, align 1, !tbaa !112, !range !113, !noundef !114
  %i.v = trunc nuw i8 %i.u to i1
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %i.v) #29
  %.pre = load ptr, ptr %0, align 8, !tbaa !99
  %.pre58 = zext i32 %2 to i64
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.f, %bb.e, %.critedge
  %.pre-phi = phi i64 [ %i.n, %bb.f ], [ %i.n, %bb.e ], [ %.pre58, %.critedge ]
  %i.w = phi ptr [ %i.a, %bb.f ], [ %i.a, %bb.e ], [ %.pre, %.critedge ]
  %i.x = ptrtoint ptr %1 to i64
  %i.y = ptrtoint ptr %i.a to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = add nsw i64 %i.aa, %.pre-phi            ; 3 uses
  %i.ac = sdiv i64 %i.ab, 64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ac
  %i.ae = and i64 %i.ab, -9223372036854775745
  %i.af = icmp ugt i64 %i.ae, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.af, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.ad, i64 %storemerge.idx.i.i.i
  %i.ag = trunc i64 %i.ab to i32
  %i.ah = and i32 %i.ag, 63
  %.fca.0.insert.i40 = insertvalue { ptr, i32 } poison, ptr %storemerge.i.i.i, 0
  %.fca.1.insert.i41 = insertvalue { ptr, i32 } %.fca.0.insert.i40, i32 %i.ah, 1
  ret { ptr, i32 } %.fca.1.insert.i41
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lE0_bJSH_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_7arg_v_tILj1ELb0EEENS_9lock_selfEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.340", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lE0_bJSH_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_7arg_v_tILj1ELb0EEENS_9lock_selfEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail8load_i64EPNS0_12nb_internalsEP7_objectjPl(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.j, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lE0_bJSH_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_7arg_v_tILj1ELb0EEENS_9lock_selfEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !106  ; 4 uses
  %i.l = load i64, ptr %4, align 8, !tbaa !81     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKS5_E_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPST_jPNS0_12cleanup_listEE_8__invokeES17_S18_jS1A_:bb.a

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = shl nsw i64 %i.v, 3
  %i.x = zext i32 %i.r to i64
  %i.y = add nsw i64 %i.w, %i.x                   ; 3 uses
  %i.z = shl i64 %i.y, 1
  call void @_ZNSt6vectorIbSaIbEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 noundef %i.z) #29
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKS5_E_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.037.i = phi i64 [ %i.ak, %.lr.ph.i ], [ 0, %bb.d ] ; 4 uses
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.ab = sdiv i64 %.037.i, 64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = and i64 %.037.i, -9223372036854775745
  %i.ae = icmp ugt i64 %i.ad, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.ae, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ac, i64 %storemerge.idx.i.i.i.i.i.i
  %i.af = and i64 %.037.i, 63
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !81
  %i.ai = and i64 %i.ah, %i.ag
  %i.aj = icmp ne i64 %i.ai, 0
  call void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i1 noundef zeroext %i.aj) #29
  %i.ak = add nuw i64 %.037.i, 1                  ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.y
  br i1 %i.al, label %.lr.ph.i, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKS5_E_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit, !llvm.loop !319

bb.e:                                             ; preds = %bb.c
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.ao, ptr %4, align 8
  %.sroa.2.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.aq, ptr %.sroa.2.0..sroa_idx31.i, align 8
  call void @_ZNSt6vectorIbSaIbEE15_M_insert_rangeISt19_Bit_const_iteratorEEvSt13_Bit_iteratorT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr %i.p, i32 %i.r, ptr %i.am, i32 0, ptr noundef nonnull byval(%"struct.std::_Bit_const_iterator") align 8 %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKS5_E_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKS5_E_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.d, %bb.a, %bb.b
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %bb.e ], [ @_Py_NoneStruct, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE15_M_insert_rangeISt19_Bit_const_iteratorEEvSt13_Bit_iteratorT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef byval(%"struct.std::_Bit_const_iterator") align 8 %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !99     ; 4 uses
  %i.b = icmp ne ptr %3, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp ne i32 %4, %i.d
  %.not3.i = select i1 %i.b, i1 true, i1 %i.e
  br i1 %.not3.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl nsw i64 %i.h, 3
  %i.j = zext i32 %i.d to i64
  %i.k = zext i32 %4 to i64
  %i.l = sub nsw i64 %i.j, %i.k
  %i.m = add i64 %i.l, %i.i                       ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.p = load ptr, ptr %0, align 8, !tbaa !99
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = shl nsw i64 %i.s, 3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !100  ; 2 uses
  %i.y = ptrtoint ptr %i.v to i64
  %.neg = sub i64 %i.r, %i.y
  %i.z = zext i32 %i.x to i64                     ; 2 uses
  %.neg128 = shl i64 %.neg, 3
  %.neg129 = sub i64 %i.t, %i.z
  %i.aa = add i64 %.neg129, %.neg128
  %.not = icmp ult i64 %i.aa, %i.m
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = add nsw i64 %i.m, %i.z                  ; 3 uses
  %i.ac = sdiv i64 %i.ab, 64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ac
  %i.ae = and i64 %i.ab, -9223372036854775745
  %i.af = icmp ugt i64 %i.ae, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.af, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.ad, i64 %storemerge.idx.i.i.i
  %i.ag = trunc i64 %i.ab to i32
  %i.ah = and i32 %i.ag, 63
  %i.ai = tail call { ptr, i32 } @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bISt13_Bit_iteratorS3_EET0_T_S5_S4_(ptr %1, i32 %2, ptr %i.v, i32 %i.x, ptr %storemerge.i.i.i, i32 %i.ah) #29 ; 0 uses
  %i.aj = tail call { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(ptr %3, i32 %4, ptr %i.a, i32 %i.d, ptr %1, i32 %2) #29 ; 0 uses
  %i.ak = load i32, ptr %i.w, align 8, !tbaa !100
  %i.al = zext i32 %i.ak to i64
  %i.am = add nsw i64 %i.m, %i.al                 ; 3 uses
  %i.an = sdiv i64 %i.am, 64
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !99
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = and i64 %i.am, -9223372036854775745
  %i.ar = icmp ugt i64 %i.aq, -9223372036854775808
  %storemerge.idx.i.i = select i1 %i.ar, i64 -8, i64 0
  %storemerge.i.i = getelementptr inbounds i8, ptr %i.ap, i64 %storemerge.idx.i.i
  store ptr %storemerge.i.i, ptr %i.u, align 8, !tbaa !99
  %i.as = trunc i64 %i.am to i32
  %i.at = and i32 %i.as, 63
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.au = tail call noundef i64 @_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.m, ptr noundef nonnull @.str.60) #29
  %i.av = load ptr, ptr %0, align 8, !tbaa !99    ; 3 uses
  %.sroa.0.0.copyload.i89 = load ptr, ptr %i.u, align 8
  %.sroa.2.0.copyload.i91 = load i32, ptr %i.w, align 8
  %i.aw = add i64 %i.au, 63
  %i.ax = lshr i64 %i.aw, 6                       ; 2 uses
  %i.ay = tail call noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.ax, ptr noundef null) #29 ; 5 uses
  %i.az = ptrtoint ptr %1 to i64
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.e, label %bb.f, !prof !69

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ay, ptr align 8 %i.av, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

bb.f:                                             ; preds = %bb.d
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.g, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

bb.g:                                             ; preds = %bb.f
  %i.be = load i64, ptr %i.av, align 8, !tbaa !81
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !81
  br label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  %i.bg = tail call { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(ptr %1, i32 0, ptr %1, i32 %2, ptr %i.bf, i32 0) #29 ; 2 uses
  %.fca.0.extract26 = extractvalue { ptr, i32 } %i.bg, 0
  %.fca.1.extract27 = extractvalue { ptr, i32 } %i.bg, 1
  %i.bh = tail call { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(ptr %3, i32 %4, ptr %i.a, i32 %i.d, ptr %.fca.0.extract26, i32 %.fca.1.extract27) #29 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.bh, 0
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.bh, 1
  %i.bi = tail call { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt13_Bit_iteratorS3_EET0_T_S5_S4_(ptr %1, i32 %2, ptr %.sroa.0.0.copyload.i89, i32 %.sroa.2.0.copyload.i91, ptr %.fca.0.extract10, i32 %.fca.1.extract11) #29 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bi, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bi, 1
  tail call void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #29
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  store ptr %i.bj, ptr %i.n, align 8, !tbaa !103
  store ptr %i.ay, ptr %0, align 8
  %.sroa.5.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx98, align 8
  store ptr %.fca.0.extract, ptr %i.u, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, %bb.c
  %.sink = phi i32 [ %i.at, %bb.c ], [ %.fca.1.extract, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ]
  store i32 %.sink, ptr %i.w, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE0_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSQ_jPNS0_12cleanup_listEE_8__invokeES14_S15_jS17_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.378", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE0_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSQ_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = and i32 %2, -35
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail8load_i64EPNS0_12nb_internalsEP7_objectjPl(ptr noundef %i.j, ptr noundef %i.h, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE0_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSQ_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %i.n = icmp eq ptr %i.m, @_Py_TrueStruct        ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq ptr %i.m, @_Py_FalseStruct
  br i1 %i.o, label %bb.e, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE0_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSQ_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.p = phi i8 [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %i.p, ptr %4, align 8, !tbaa !111
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !106  ; 3 uses
  %i.r = load i64, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !100
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !99   ; 2 uses
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = zext i32 %i.v to i64
  %i.ac = add nsw i64 %i.aa, %i.ab                ; 2 uses
  %i.ad = icmp slt i64 %i.r, 0
  %i.ae = select i1 %i.ad, i64 %i.ac, i64 0
  %spec.select.i.i = add nsw i64 %i.ae, %i.r      ; 4 uses
  %i.af = icmp sgt i64 %spec.select.i.i, -1
  %.not.i.i = icmp ult i64 %spec.select.i.i, %i.ac
  %or.cond.i.i = and i1 %i.af, %.not.i.i
  br i1 %or.cond.i.i, label %_ZN8nanobind6detail4wrapElm.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  invoke void @_ZN8nanobind11index_errorEPKc(ptr dead_on_unwind writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %i.ag, ptr noundef null) #29
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr %i.ag, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.ag) #30
  resume { ptr, i32 } %i.ah

_ZN8nanobind6detail4wrapElm.exit.i:               ; preds = %bb.e
  %i.ai = lshr i64 %spec.select.i.i, 6
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ai ; 3 uses
  %i.ak = and i64 %spec.select.i.i, 63
  %i.al = shl nuw i64 1, %i.ak                    ; 2 uses
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN8nanobind6detail4wrapElm.exit.i
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !81
  %i.an = or i64 %i.am, %i.al
  br label %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lRKbE0_clESF_lSH_.exit

bb.j:                                             ; preds = %_ZN8nanobind6detail4wrapElm.exit.i
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !81
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lRKbE0_clESF_lSH_.exit

_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lRKbE0_clESF_lSH_.exit: ; preds = %bb.i, %bb.j
  %storemerge.i = phi i64 [ %i.aq, %bb.j ], [ %i.an, %bb.i ]
  store i64 %storemerge.i, ptr %i.aj, align 8, !tbaa !81
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE0_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSQ_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE0_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSQ_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit: ; preds = %bb.d, %bb.a, %bb.b, %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lRKbE0_clESF_lSH_.exit
  %.0.i = phi ptr [ @_Py_NoneStruct, %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lRKbE0_clESF_lSH_.exit ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lE1_vJSH_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSO_jPNS0_12cleanup_listEE_8__invokeES12_S13_jS15_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.340", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lE1_vJSH_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSO_jPNS0_12cleanup_listEE_clES12_S13_jS15_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail8load_i64EPNS0_12nb_internalsEP7_objectjPl(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.j, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lE1_vJSH_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSO_jPNS0_12cleanup_listEE_clES12_S13_jS15_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !106  ; 4 uses
  %i.l = load i64, ptr %4, align 8, !tbaa !81     ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !99   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !100
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = shl nsw i64 %i.t, 3
  %i.v = zext i32 %i.q to i64
  %i.w = add nsw i64 %i.u, %i.v                   ; 2 uses
  %i.x = icmp slt i64 %i.l, 0
  %i.y = select i1 %i.x, i64 %i.w, i64 0
  %spec.select.i.i = add nsw i64 %i.y, %i.l       ; 4 uses
  %i.z = icmp sgt i64 %spec.select.i.i, -1
  %.not.i.i = icmp ult i64 %spec.select.i.i, %i.w
  %or.cond.i.i = and i1 %i.z, %.not.i.i
  br i1 %or.cond.i.i, label %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lE1_clESF_l.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  invoke void @_ZN8nanobind11index_errorEPKc(ptr dead_on_unwind writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %i.aa, ptr noundef null) #29
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr %i.aa, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.aa) #30
  resume { ptr, i32 } %i.ab

_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lE1_clESF_l.exit: ; preds = %bb.c
  %i.ac = lshr i64 %spec.select.i.i, 6
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ac
  %i.ae = trunc i64 %spec.select.i.i to i32
  %i.af = and i32 %i.ae, 63
  %i.ag = call { ptr, i32 } @_ZNSt6vectorIbSaIbEE8_M_eraseESt13_Bit_iterator(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr %i.ad, i32 %i.af) #29 ; 0 uses
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lE1_vJSH_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSO_jPNS0_12cleanup_listEE_clES12_S13_jS15_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lE1_vJSH_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSO_jPNS0_12cleanup_listEE_clES12_S13_jS15_.exit: ; preds = %bb.a, %bb.b, %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lE1_clESF_l.exit
  %.0.i = phi ptr [ @_Py_NoneStruct, %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lE1_clESF_l.exit ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKNS_5sliceEE_PS5_JSI_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPST_jPNS0_12cleanup_listEE_8__invokeES17_S18_jS1A_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.402", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr null, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKNS_5sliceEE_PS5_JSI_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_5sliceEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #28
  br i1 %i.i, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKNS_5sliceEE_PS5_JSI_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.k = invoke noundef ptr @_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKNS_5sliceEE_clESG_SJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
          to label %_ZN8nanobind6detail12infer_policyIPSt6vectorIbSaIbEEEENS_9rv_policyES6_.exit unwind label %bb.d

_ZN8nanobind6detail12infer_policyIPSt6vectorIbSaIbEEEENS_9rv_policyES6_.exit: ; preds = %bb.c
  %i.l = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.m = call noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef %i.l, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef null, ptr noundef %i.k, i8 2, ptr noundef %3, ptr noundef null) #28
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKNS_5sliceEE_PS5_JSI_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.n

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKNS_5sliceEE_PS5_JSI_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit: ; preds = %bb.a, %bb.b, %_ZN8nanobind6detail12infer_policyIPSt6vectorIbSaIbEEEENS_9rv_policyES6_.exit
  %.0.i = phi ptr [ %i.m, %_ZN8nanobind6detail12infer_policyIPSt6vectorIbSaIbEEEENS_9rv_policyES6_.exit ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRKS3_RKNS_5sliceEE_clESG_SJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.nanobind::detail::tuple.191", align 8 ; 9 uses
  %4 = alloca %"class.std::unique_ptr.404", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !100
  %i.e = load ptr, ptr %1, align 8, !tbaa !99
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl nsw i64 %i.h, 3
  %i.j = zext i32 %i.d to i64
  %i.k = add nsw i64 %i.i, %i.j
  call void @_ZNK8nanobind5slice7computeEm(ptr dead_on_unwind nonnull writable sret(%"struct.nanobind::detail::tuple.191") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.k) #29
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.n = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34, !noalias !323 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i8 0, i64 40, i1 false), !noalias !323
  store ptr %i.n, ptr %4, align 8, !tbaa !324, !alias.scope !323
  %i.o = load i64, ptr %3, align 8, !tbaa !81
  invoke void @_ZNSt6vectorIbSaIbEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 noundef %i.o) #29
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.a
  %i.p = load i64, ptr %3, align 8, !tbaa !81
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %_ZNSt10unique_ptrISt6vectorIbSaIbEESt14default_deleteIS2_EED2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load i64, ptr %i.l, align 8, !tbaa !81
  br label %.lr.ph

_ZNSt10unique_ptrISt6vectorIbSaIbEESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %i.n

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.q = phi i64 [ %i.ad, %bb.b ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %.016 = phi i64 [ %i.ae, %bb.b ], [ 0, %.lr.ph.preheader ]
  %i.r = load ptr, ptr %1, align 8, !tbaa !99
  %i.s = sdiv i64 %i.q, 64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  %i.u = and i64 %i.q, -9223372036854775745
  %i.v = icmp ugt i64 %i.u, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.v, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.t, i64 %storemerge.idx.i.i.i.i.i
  %i.w = and i64 %i.q, 63
  %i.x = shl nuw i64 1, %i.w
  %i.y = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !81
  %i.z = and i64 %i.y, %i.x
  %i.aa = icmp ne i64 %i.z, 0
  invoke void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i1 noundef zeroext %i.aa) #29
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.lr.ph
end_hunk_1
