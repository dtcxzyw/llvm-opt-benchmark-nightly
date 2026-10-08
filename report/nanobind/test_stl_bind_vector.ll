Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_stl_bind_vector?download=true
inline.NumInlined: 4430
inline.NumDeleted: 1793
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKNS_5sliceERKS7_E_vJSJ_SM_SO_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSU_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSY_jPNS0_12cleanup_listEE_8__invokeES1C_S1D_jS1F_:bb.a
  %i.aa = ptrtoint ptr %.val.i to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %.not.i = icmp eq i64 %i.x, %i.ac
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.ad = call ptr @__cxa_allocate_exception(i64 24) #30 ; 5 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.ad, ptr noundef nonnull @.str.56) #29
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi117builtin_exceptionE, i64 16), ptr %i.ad, align 8, !tbaa !60, !alias.scope !394
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 2, ptr %i.ae, align 8, !tbaa !86, !alias.scope !394
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %.noexc4 unwind label %bb.n

.noexc4:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ad) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body

bb.h:                                             ; preds = %.noexc
  %i.ag = icmp eq ptr %.val, %.val3
  br i1 %i.ag, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %.not6.i = icmp eq i64 %i.x, 0
  br i1 %.not6.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.val34.i = load ptr, ptr %.val3, align 8, !tbaa !123
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !81
  %.promoted.i = load i64, ptr %i.v, align 8, !tbaa !81
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val) #29
          to label %.noexc5 unwind label %bb.n

.noexc5:                                          ; preds = %bb.i
  %i.ai = load i64, ptr %4, align 8, !tbaa !81    ; 2 uses
  %.not7.i = icmp eq i64 %i.ai, 0
  %.val32.pre.i = load ptr, ptr %5, align 8       ; 4 uses
  br i1 %.not7.i, label %bb.j, label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.noexc5
  %.val35.i = load ptr, ptr %.val3, align 8, !tbaa !123
  %i.aj = load i64, ptr %i.w, align 8, !tbaa !81
  %.promoted4.i = load i64, ptr %i.v, align 8, !tbaa !81
  br label %bb.l

.thread.i:                                        ; preds = %bb.l
  store i64 %i.as, ptr %i.v, align 8, !tbaa !81
  br label %bb.k

bb.j:                                             ; preds = %.noexc5
  %.not.i.i.i.i = icmp eq ptr %.val32.pre.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val33.i = load ptr, ptr %i.ak, align 8
  %i.al = ptrtoint ptr %.val33.i to i64
  %i.am = ptrtoint ptr %.val32.pre.i to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %.val32.pre.i, i64 noundef %i.an) #32
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit

bb.l:                                             ; preds = %bb.l, %.lr.ph3.i
  %i.ao = phi i64 [ %.promoted4.i, %.lr.ph3.i ], [ %i.as, %bb.l ] ; 2 uses
  %.0252.i = phi i64 [ 0, %.lr.ph3.i ], [ %i.at, %bb.l ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val32.pre.i, i64 %.0252.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val35.i, i64 %i.ao
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !33
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !33
  %i.as = add nsw i64 %i.ao, %i.aj                ; 2 uses
  %i.at = add nuw i64 %.0252.i, 1                 ; 2 uses
  %exitcond9.not.i = icmp eq i64 %i.at, %i.ai
  br i1 %exitcond9.not.i, label %.thread.i, label %bb.l, !llvm.loop !392

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %i.au = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ay, %bb.m ] ; 2 uses
  %.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.az, %bb.m ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.01.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val34.i, i64 %i.au
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !33
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !33
  %i.ay = add nsw i64 %i.au, %i.ah
  %i.az = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %i.x
  br i1 %exitcond.not.i, label %.loopexit, label %bb.m, !llvm.loop !393

.loopexit:                                        ; preds = %bb.m, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKNS_5sliceERKS7_E_vJSJ_SM_SO_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSU_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSY_jPNS0_12cleanup_listEE_clES1C_S1D_jS1F_.exit

bb.n:                                             ; preds = %bb.i, %bb.f, %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ba, %bb.n ]
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %.pn.i

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKNS_5sliceERKS7_E_vJSJ_SM_SO_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSU_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSY_jPNS0_12cleanup_listEE_clES1C_S1D_jS1F_.exit: ; preds = %bb.a, %bb.b, %bb.c, %.loopexit
  %.015.i = phi ptr [ @_Py_NoneStruct, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret ptr %.015.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKNS_5sliceEE_vJSJ_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPST_jPNS0_12cleanup_listEE_8__invokeES17_S18_jS1A_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.191", align 8 ; 8 uses
  %5 = alloca %"struct.nanobind::detail::tuple.639", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr null, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKNS_5sliceEE_vJSJ_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_5sliceEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #28
  br i1 %i.i, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKNS_5sliceEE_vJSJ_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !127 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 7 uses
  %.val28.i = load ptr, ptr %i.j, align 8, !tbaa !124
  %i.k = ptrtoint ptr %.val28.i to i64
  %i.l = ptrtoint ptr %.val.i to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2
  invoke void @_ZNK8nanobind5slice7computeEm(ptr dead_on_unwind nonnull writable sret(%"struct.nanobind::detail::tuple.191") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.n) #29
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.r = load i64, ptr %4, align 8, !tbaa !81     ; 3 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.t = load i64, ptr %i.o, align 8, !tbaa !81   ; 4 uses
  %i.u = add nsw i64 %i.r, -1
  %i.v = load i64, ptr %i.q, align 8, !tbaa !81   ; 3 uses
  %i.w = mul nsw i64 %i.v, %i.u                   ; 2 uses
  %i.x = add nsw i64 %i.w, %i.t                   ; 4 uses
  store i64 %i.x, ptr %i.p, align 8, !tbaa !81
  %i.y = icmp slt i64 %i.w, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.x, ptr %i.o, align 8, !tbaa !81
  store i64 %i.t, ptr %i.p, align 8, !tbaa !81
  %i.z = sub nsw i64 0, %i.v                      ; 2 uses
  store i64 %i.z, ptr %i.q, align 8, !tbaa !81
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi i64 [ %i.x, %bb.e ], [ %i.t, %bb.d ]
  %i.ab = phi i64 [ %i.t, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  %i.ac = phi i64 [ %i.z, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 1
  %.val31.i = load ptr, ptr %.val, align 8, !tbaa !120 ; 3 uses
  br i1 %i.ad, label %bb.g, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %.val9.i.i.pre.i = load ptr, ptr %i.j, align 8, !tbaa !120
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %.idx.i = shl nsw i64 %i.aa, 2                  ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.val31.i, i64 %.idx.i ; 3 uses
  %.idx10.i = shl nsw i64 %i.ab, 2
  %i.af = add nsw i64 %.idx10.i, 4                ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.val31.i, i64 %i.af ; 5 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 3 uses
  %.not.i.i.i = icmp eq i64 %.idx.i, %i.af
  br i1 %.not.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val10.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !120 ; 4 uses
  %.not16.i.i.i = icmp eq ptr %i.ag, %.val10.i.i.i
  br i1 %.not16.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = ptrtoint ptr %.val10.i.i.i to i64       ; 3 uses
  %i.aj = sub i64 %i.ai, %i.ah                    ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, 4
  br i1 %i.ak, label %bb.j, label %bb.k, !prof !69

bb.j:                                             ; preds = %bb.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ae, ptr nonnull align 4 %i.ag, i64 %i.aj, i1 false)
  %.val8.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !120 ; 2 uses
  %.pre18.i.i.i = ptrtoint ptr %.val8.pre.i.i.i to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = icmp eq i64 %i.aj, 4
  br i1 %i.al, label %bb.l, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !33
  store i32 %.val.i.i.i.i.i.i.i.i, ptr %i.ae, align 4, !tbaa !33
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %.pre-phi19.i.i.i = phi i64 [ %.pre18.i.i.i, %bb.j ], [ %i.ai, %bb.l ], [ %i.ai, %bb.k ], [ %i.ah, %bb.h ]
  %.val8.i.i.i = phi ptr [ %.val8.pre.i.i.i, %bb.j ], [ %.val10.i.i.i, %bb.l ], [ %.val10.i.i.i, %bb.k ], [ %i.ag, %bb.h ]
  %i.am = sub i64 %.pre-phi19.i.i.i, %i.ah
  %i.an = getelementptr inbounds i8, ptr %i.ae, i64 %i.am ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val8.i.i.i, %i.an
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZSt8_DestroyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElS2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElS2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i
  store ptr %i.an, ptr %i.j, align 8, !tbaa !124
  br label %.loopexit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i, %.lr.ph.preheader.i
  %i.ao = phi i64 [ %i.ay, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i ], [ %i.r, %.lr.ph.preheader.i ] ; 3 uses
  %i.ap = phi i64 [ %i.ba, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i ], [ %i.ac, %.lr.ph.preheader.i ] ; 3 uses
  %.val9.i.i.i = phi ptr [ %i.bc, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i ], [ %.val9.i.i.pre.i, %.lr.ph.preheader.i ] ; 5 uses
  %i.aq = phi i64 [ %i.bd, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i ], [ %i.ab, %.lr.ph.preheader.i ] ; 4 uses
  %.val29.i = phi ptr [ %.val2913.i, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i ], [ %.val31.i, %.lr.ph.preheader.i ] ; 4 uses
  %.011.i = phi i64 [ %i.be, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i ], [ 0, %.lr.ph.preheader.i ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val29.i, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 4 uses
  %.not.i.i40.i = icmp eq ptr %i.as, %.val9.i.i.i
  br i1 %.not.i.i40.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.at = ptrtoint ptr %.val9.i.i.i to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp sgt i64 %i.av, 4
  br i1 %i.aw, label %bb.n, label %bb.o, !prof !69

bb.n:                                             ; preds = %bb.m
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ar, ptr nonnull align 4 %i.as, i64 %i.av, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !124
  %.val29.pre.i = load ptr, ptr %.val, align 8, !tbaa !120
  %.pre.i = load i64, ptr %i.q, align 8, !tbaa !81
  %.pre16.i = load i64, ptr %i.p, align 8, !tbaa !81
  %.pre17.i = load i64, ptr %4, align 8, !tbaa !81
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ax = icmp eq i64 %i.av, 4
  br i1 %i.ax, label %bb.p, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i

bb.p:                                             ; preds = %bb.o
  %.val.i.i.i.i.i.i.i41.i = load i32, ptr %i.as, align 4, !tbaa !33
  store i32 %.val.i.i.i.i.i.i.i41.i, ptr %i.ar, align 4, !tbaa !33
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph.i
  %i.ay = phi i64 [ %i.ao, %bb.p ], [ %i.ao, %bb.o ], [ %.pre17.i, %bb.n ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %i.az = phi i64 [ %i.aq, %bb.p ], [ %i.aq, %bb.o ], [ %.pre16.i, %bb.n ], [ %i.aq, %.lr.ph.i ]
  %i.ba = phi i64 [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], [ %.pre.i, %bb.n ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %.val2913.i = phi ptr [ %.val29.i, %bb.p ], [ %.val29.i, %bb.o ], [ %.val29.pre.i, %bb.n ], [ %.val29.i, %.lr.ph.i ]
  %i.bb = phi ptr [ %.val9.i.i.i, %bb.p ], [ %.val9.i.i.i, %bb.o ], [ %.pre.i.i.i, %bb.n ], [ %.val9.i.i.i, %.lr.ph.i ]
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4 ; 2 uses
  store ptr %i.bc, ptr %i.j, align 8, !tbaa !124
  %i.bd = sub nsw i64 %i.az, %i.ba                ; 2 uses
  store i64 %i.bd, ptr %i.p, align 8, !tbaa !81
  %i.be = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.ay
  br i1 %i.bf, label %.lr.ph.i, label %.loopexit, !llvm.loop !395

.loopexit:                                        ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i, %_ZSt8_DestroyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElS2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i, %bb.g, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKNS_5sliceEE_vJSJ_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.q:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.bg

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKNS_5sliceEE_vJSJ_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit: ; preds = %bb.a, %bb.b, %.loopexit
  %.0.i = phi ptr [ @_Py_NoneStruct, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN8nanobind6detail9wrap_copyISt6vectorIS2_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS4_EESaIS6_EEEEvPvPKv(ptr nofree noundef nonnull captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly captures(none) %1) #2 {
bb.a:
  tail call fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN8nanobind6detail9wrap_moveISt6vectorIS2_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS4_EESaIS6_EEEEvPvS9_(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef captures(none) %1) #18 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !130
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !130
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132
  store ptr %i.d, ptr %i.b, align 8, !tbaa !132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN8nanobind6detail13wrap_destructISt6vectorIS2_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS4_EESaIS6_EEEEvPv(ptr nofree noundef nonnull readonly captures(none) %0) #0 {
bb.a:
  tail call fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EEC2ERKS6_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !133
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val9 = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.b = ptrtoint ptr %.val9 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.f = tail call fastcc noundef ptr @_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE11_M_allocateEm(i64 noundef range(i64 -384307168202282325, 384307168202282326) %i.e) #29 ; 6 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !133
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !134
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !132
  %.val10 = load ptr, ptr %1, align 8, !tbaa !130 ; 2 uses
  %.val11 = load ptr, ptr %i.a, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %.val10, %.val11
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EES2_IS7_SaIS7_EEEEPS7_S7_ET0_T_SF_SE_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.k, %_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %.sroa.010.013.i.i.i.i = phi ptr [ %i.j, %_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %.val10, %bb.a ] ; 2 uses
  invoke fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.014.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.010.013.i.i.i.i) #29
          to label %_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.b

_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %.val11
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EES2_IS7_SaIS7_EEEEPS7_S7_ET0_T_SF_SE_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #30 ; 0 uses
  tail call fastcc void @_ZSt8_DestroyIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvT_S7_(ptr noundef %i.f, ptr noundef nonnull %.014.i.i.i.i) #29
  invoke void @__cxa_rethrow() #35
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #31
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EES2_IS7_SaIS7_EEEEPS7_S7_ET0_T_SF_SE_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i, %bb.a
  %.0.lcssa.i.i.i.i = phi ptr [ %i.f, %bb.a ], [ %i.k, %_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ]
end_hunk_0
begin_hunk_1_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceERKS9_E_vJSL_SO_SQ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSW_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS10_jPNS0_12cleanup_listEE_8__invokeES1E_S1F_jS1H_:bb.a
  %i.ad = call ptr @__cxa_allocate_exception(i64 24) #30 ; 5 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.ad, ptr noundef nonnull @.str.56) #29
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi117builtin_exceptionE, i64 16), ptr %i.ad, align 8, !tbaa !60, !alias.scope !464
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 2, ptr %i.ae, align 8, !tbaa !86, !alias.scope !464
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %.noexc5 unwind label %.loopexit.split-lp

.noexc5:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ad) #30
  br label %bb.m

bb.h:                                             ; preds = %.noexc
  %i.ag = icmp eq ptr %.val, %.val3
  br i1 %i.ag, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %.not4.i = icmp eq i64 %i.x, 0
  br i1 %.not4.i, label %.loopexit13, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.pre.i = load i64, ptr %i.v, align 8, !tbaa !81
  br label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val) #29
          to label %.noexc6 unwind label %.loopexit.split-lp

.noexc6:                                          ; preds = %bb.i
  %i.ah = load i64, ptr %4, align 8, !tbaa !81
  %.not5.i = icmp eq i64 %i.ah, 0
  br i1 %.not5.i, label %._crit_edge.i, label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.noexc6
  %.val37.i = load ptr, ptr %5, align 8, !tbaa !133
  %.pre6.i = load i64, ptr %i.v, align 8, !tbaa !81
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.k, %.noexc6
  call fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit13

bb.j:                                             ; preds = %bb.k, %.lr.ph3.i
  %i.ai = phi i64 [ %.pre6.i, %.lr.ph3.i ], [ %i.ao, %bb.k ]
  %.0252.i = phi i64 [ 0, %.lr.ph3.i ], [ %i.ap, %bb.k ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.val37.i, i64 %.0252.i
  %.val36.i = load ptr, ptr %.val3, align 8, !tbaa !133
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %.val36.i, i64 %i.ai
  %i.al = invoke fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #29
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.am = load i64, ptr %i.w, align 8, !tbaa !81
  %i.an = load i64, ptr %i.v, align 8, !tbaa !81
  %i.ao = add nsw i64 %i.an, %i.am                ; 2 uses
  store i64 %i.ao, ptr %i.v, align 8, !tbaa !81
  %i.ap = add nuw i64 %.0252.i, 1                 ; 2 uses
  %i.aq = load i64, ptr %4, align 8, !tbaa !81
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.j, label %._crit_edge.i, !llvm.loop !462

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.m

.lr.ph.i:                                         ; preds = %.noexc7, %.lr.ph.preheader.i
  %i.at = phi i64 [ %i.az, %.noexc7 ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.01.i = phi i64 [ %i.ba, %.noexc7 ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.val38.i = load ptr, ptr %.val, align 8, !tbaa !133
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.val38.i, i64 %.01.i
  %.val35.i = load ptr, ptr %.val3, align 8, !tbaa !133
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %.val35.i, i64 %i.at
  %i.aw = invoke fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.au) #29
          to label %.noexc7 unwind label %.loopexit ; 0 uses

.noexc7:                                          ; preds = %.lr.ph.i
  %i.ax = load i64, ptr %i.w, align 8, !tbaa !81
  %i.ay = load i64, ptr %i.v, align 8, !tbaa !81
  %i.az = add nsw i64 %i.ay, %i.ax                ; 2 uses
  store i64 %i.az, ptr %i.v, align 8, !tbaa !81
  %i.ba = add nuw i64 %.01.i, 1                   ; 2 uses
  %i.bb = load i64, ptr %4, align 8, !tbaa !81
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph.i, label %.loopexit13, !llvm.loop !463

bb.m:                                             ; preds = %bb.l, %bb.g
  %.pn.i4 = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.as, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body

.loopexit13:                                      ; preds = %.noexc7, %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceERKS9_E_vJSL_SO_SQ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSW_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS10_jPNS0_12cleanup_listEE_clES1E_S1F_jS1H_.exit

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.d, %bb.f, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.pn.i = phi { ptr, i32 } [ %.pn.i4, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %.pn.i

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceERKS9_E_vJSL_SO_SQ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSW_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS10_jPNS0_12cleanup_listEE_clES1E_S1F_jS1H_.exit: ; preds = %bb.a, %bb.b, %bb.c, %.loopexit13
  %.015.i = phi ptr [ @_Py_NoneStruct, %.loopexit13 ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret ptr %.015.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSV_jPNS0_12cleanup_listEE_8__invokeES19_S1A_jS1C_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.191", align 8 ; 8 uses
  %5 = alloca %"struct.nanobind::detail::tuple.825", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr null, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_5sliceEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #28
  br i1 %i.i, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !137 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !133
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %.val28.i = load ptr, ptr %i.j, align 8, !tbaa !134
  %i.k = ptrtoint ptr %.val28.i to i64
  %i.l = ptrtoint ptr %.val.i to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24
  invoke void @_ZNK8nanobind5slice7computeEm(ptr dead_on_unwind nonnull writable sret(%"struct.nanobind::detail::tuple.191") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.n) #29
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.r = load i64, ptr %4, align 8, !tbaa !81     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.t = load i64, ptr %i.o, align 8, !tbaa !81   ; 4 uses
  %i.u = add nsw i64 %i.r, -1
  %i.v = load i64, ptr %i.q, align 8, !tbaa !81   ; 3 uses
  %i.w = mul nsw i64 %i.v, %i.u                   ; 2 uses
  %i.x = add nsw i64 %i.w, %i.t                   ; 4 uses
  store i64 %i.x, ptr %i.p, align 8, !tbaa !81
  %i.y = icmp slt i64 %i.w, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.x, ptr %i.o, align 8, !tbaa !81
  store i64 %i.t, ptr %i.p, align 8, !tbaa !81
  %i.z = sub nsw i64 0, %i.v                      ; 2 uses
  store i64 %i.z, ptr %i.q, align 8, !tbaa !81
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi i64 [ %i.x, %bb.e ], [ %i.t, %bb.d ]
  %i.ab = phi i64 [ %i.t, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  %i.ac = phi i64 [ %i.z, %bb.e ], [ %i.v, %bb.d ]
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %.val31.i = load ptr, ptr %.val, align 8, !tbaa !130 ; 2 uses
  %.idx.i = mul nsw i64 %i.aa, 24                 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.val31.i, i64 %.idx.i ; 2 uses
  %.idx10.i = mul nsw i64 %i.ab, 24
  %i.af = add nsw i64 %.idx10.i, 24               ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.val31.i, i64 %i.af ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 3 uses
  %.not.i.i.i = icmp eq i64 %.idx.i, %i.af
  br i1 %.not.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val10.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !130 ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.ag, %.val10.i.i.i
  br i1 %.not16.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = ptrtoint ptr %.val10.i.i.i to i64       ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ah                    ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.i
  %i.al = udiv exact i64 %i.aj, 24
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.al, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.am = call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i.i.i.i) #28 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 24
  %i.ap = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.aq = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i.i, !llvm.loop !6

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.val8.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !130
  %.pre18.i.i.i = ptrtoint ptr %.val8.pre.i.i.i to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i.i, %bb.i, %bb.h
  %.pre-phi19.i.i.i = phi i64 [ %i.ai, %bb.i ], [ %.pre18.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i.i ], [ %i.ah, %bb.h ]
  %i.ar = sub i64 %.pre-phi19.i.i.i, %i.ah
  %i.as = getelementptr inbounds i8, ptr %i.ae, i64 %i.ar
  call fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE15_M_erase_at_endEPS4_(ptr noundef nonnull align 8 dereferenceable(24) %.val, ptr noundef %i.as) #28
  br label %.loopexit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.at = phi i64 [ %i.ax, %.lr.ph.i ], [ %i.ab, %bb.f ]
  %.011.i = phi i64 [ %i.ay, %.lr.ph.i ], [ 0, %bb.f ]
  %.val29.i = load ptr, ptr %.val, align 8, !tbaa !130
  %i.au = getelementptr inbounds [24 x i8], ptr %.val29.i, i64 %i.at
  call fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %.val, ptr %i.au) #29
  %i.av = load i64, ptr %i.q, align 8, !tbaa !81
  %i.aw = load i64, ptr %i.p, align 8, !tbaa !81
  %i.ax = sub nsw i64 %i.aw, %i.av                ; 2 uses
  store i64 %i.ax, ptr %i.p, align 8, !tbaa !81
  %i.ay = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.az = load i64, ptr %4, align 8, !tbaa !81
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph.i, label %.loopexit, !llvm.loop !465

.loopexit:                                        ; preds = %.lr.ph.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.i.i.i, %bb.g, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.j:                                             ; preds = %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.bb

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit: ; preds = %bb.a, %bb.b, %.loopexit
  %.0.i = phi ptr [ @_Py_NoneStruct, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN8nanobind6detail9wrap_copyISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS6_EEEEvPvPKv(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly captures(none) %1) #2 {
bb.a:
  tail call fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN8nanobind6detail9wrap_moveISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS6_EEEEvPvS9_(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef captures(none) %1) #18 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !142
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !142
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144
  store ptr %i.d, ptr %i.b, align 8, !tbaa !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN8nanobind6detail13wrap_destructISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS6_EEEEvPv(ptr nofree noundef nonnull readonly captures(none) %0) #0 {
bb.a:
  tail call fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEC2ERKS6_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !145
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val9 = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.b = ptrtoint ptr %.val9 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.f = tail call fastcc noundef ptr @_ZNSt12_Vector_baseISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_M_allocateEm(i64 noundef range(i64 -576460752303423488, 576460752303423488) %i.e) #29 ; 5 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !146
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !144
  %.val10 = load ptr, ptr %1, align 8, !tbaa !142 ; 2 uses
  %.val11 = load ptr, ptr %i.a, align 8, !tbaa !142 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.val10, %.val11
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt10_ConstructISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.08.010.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i ], [ %.val10, %bb.a ] ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.08.010.i.i.i.i, i64 8
  %.val7.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.k = load <2 x ptr>, ptr %.sroa.08.010.i.i.i.i, align 8, !tbaa !49
  store <2 x ptr> %i.k, ptr %.011.i.i.i.i, align 8, !tbaa !49
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val7.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !33
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !33
  br label %_ZSt10_ConstructISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.010.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %.val11
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i, %bb.a
  %.0.lcssa.i.i.i.i = phi ptr [ %i.f, %bb.a ], [ %i.r, %_ZSt10_ConstructISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.g, align 8, !tbaa !146
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc noalias noundef ptr @_ZNSt12_Vector_baseISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE11_M_allocateEm(i64 noundef %0) unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %0, 576460752303423487
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEE8allocateEmPKv.exit, !prof !70

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %0, 1152921504606846975
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEE8allocateEmPKv.exit: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %0, 4
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt15__new_allocatorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEE8allocateEmPKv.exit
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElEE8allocateEmPKv.exit ], [ null, %bb.a ]
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !149    ; 7 uses
  %.not = icmp eq ptr %i.a, null
end_hunk_1
begin_hunk_2_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceERKS9_E_vJSL_SO_SQ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSW_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS10_jPNS0_12cleanup_listEE_8__invokeES1E_S1F_jS1H_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = load i64, ptr %4, align 8, !tbaa !81     ; 2 uses
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !145
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val29.i = load ptr, ptr %i.y, align 8, !tbaa !146
  %i.z = ptrtoint ptr %.val29.i to i64
  %i.aa = ptrtoint ptr %.val.i to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 4
  %.not.i = icmp eq i64 %i.x, %i.ac
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.ad = call ptr @__cxa_allocate_exception(i64 24) #30 ; 5 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.ad, ptr noundef nonnull @.str.56) #29
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi117builtin_exceptionE, i64 16), ptr %i.ad, align 8, !tbaa !60, !alias.scope !554
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 2, ptr %i.ae, align 8, !tbaa !86, !alias.scope !554
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %.noexc4 unwind label %bb.k

.noexc4:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ad) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body

bb.h:                                             ; preds = %.noexc
  %i.ag = icmp eq ptr %.val, %.val3
  br i1 %i.ag, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %.not4.i = icmp eq i64 %i.x, 0
  br i1 %.not4.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.pre.i = load i64, ptr %i.v, align 8, !tbaa !81
  br label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val) #29
          to label %.noexc5 unwind label %bb.k

.noexc5:                                          ; preds = %bb.i
  %i.ah = load i64, ptr %4, align 8, !tbaa !81
  %.not5.i = icmp eq i64 %i.ah, 0
  br i1 %.not5.i, label %._crit_edge.i, label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.noexc5
  %.val34.i = load ptr, ptr %5, align 8, !tbaa !145
  %.pre6.i = load i64, ptr %i.v, align 8, !tbaa !81
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.j, %.noexc5
  call fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit

bb.j:                                             ; preds = %bb.j, %.lr.ph3.i
  %i.ai = phi i64 [ %.pre6.i, %.lr.ph3.i ], [ %i.ar, %bb.j ]
  %.0252.i = phi i64 [ 0, %.lr.ph3.i ], [ %i.as, %bb.j ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.val34.i, i64 %.0252.i ; 2 uses
  %.val33.i = load ptr, ptr %.val3, align 8, !tbaa !145
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.val33.i, i64 %i.ai ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !156
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !156
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.an) #28 ; 0 uses
  %i.ap = load i64, ptr %i.w, align 8, !tbaa !81
  %i.aq = load i64, ptr %i.v, align 8, !tbaa !81
  %i.ar = add nsw i64 %i.aq, %i.ap                ; 2 uses
  store i64 %i.ar, ptr %i.v, align 8, !tbaa !81
  %i.as = add nuw i64 %.0252.i, 1                 ; 2 uses
  %i.at = load i64, ptr %4, align 8, !tbaa !81
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %bb.j, label %._crit_edge.i, !llvm.loop !552

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.av = phi i64 [ %i.be, %.lr.ph.i ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.01.i = phi i64 [ %i.bf, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.val35.i = load ptr, ptr %.val, align 8, !tbaa !145
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.val35.i, i64 %.01.i ; 2 uses
  %.val32.i = load ptr, ptr %.val3, align 8, !tbaa !145
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.val32.i, i64 %i.av ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !156
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !156
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.ba) #28 ; 0 uses
  %i.bc = load i64, ptr %i.w, align 8, !tbaa !81
  %i.bd = load i64, ptr %i.v, align 8, !tbaa !81
  %i.be = add nsw i64 %i.bd, %i.bc                ; 2 uses
  store i64 %i.be, ptr %i.v, align 8, !tbaa !81
  %i.bf = add nuw i64 %.01.i, 1                   ; 2 uses
  %i.bg = load i64, ptr %4, align 8, !tbaa !81
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph.i, label %.loopexit, !llvm.loop !553

.loopexit:                                        ; preds = %.lr.ph.i, %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceERKS9_E_vJSL_SO_SQ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSW_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS10_jPNS0_12cleanup_listEE_clES1E_S1F_jS1H_.exit

bb.k:                                             ; preds = %bb.i, %bb.f, %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.bi, %bb.k ]
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %.pn.i

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceERKS9_E_vJSL_SO_SQ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSW_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS10_jPNS0_12cleanup_listEE_clES1E_S1F_jS1H_.exit: ; preds = %bb.a, %bb.b, %bb.c, %.loopexit
  %.015.i = phi ptr [ @_Py_NoneStruct, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret ptr %.015.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSV_jPNS0_12cleanup_listEE_8__invokeES19_S1A_jS1C_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__shared_ptr", align 16 ; 4 uses
  %5 = alloca %"struct.nanobind::detail::tuple.191", align 8 ; 8 uses
  %6 = alloca %"struct.nanobind::detail::tuple.1031", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr null, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_5sliceEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #28
  br i1 %i.i, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceEE_vJSL_SO_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSV_jPNS0_12cleanup_listEE_clES19_S1A_jS1C_.exit

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !152 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !145
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %.val28.i = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.k = ptrtoint ptr %.val28.i to i64
  %i.l = ptrtoint ptr %.val.i to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4
  invoke void @_ZNK8nanobind5slice7computeEm(ptr dead_on_unwind nonnull writable sret(%"struct.nanobind::detail::tuple.191") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %i.n) #29
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.r = load i64, ptr %5, align 8, !tbaa !81     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.t = load i64, ptr %i.o, align 8, !tbaa !81   ; 4 uses
  %i.u = add nsw i64 %i.r, -1
  %i.v = load i64, ptr %i.q, align 8, !tbaa !81   ; 3 uses
  %i.w = mul nsw i64 %i.v, %i.u                   ; 2 uses
  %i.x = add nsw i64 %i.w, %i.t                   ; 4 uses
  store i64 %i.x, ptr %i.p, align 8, !tbaa !81
  %i.y = icmp slt i64 %i.w, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.x, ptr %i.o, align 8, !tbaa !81
  store i64 %i.t, ptr %i.p, align 8, !tbaa !81
  %i.z = sub nsw i64 0, %i.v                      ; 2 uses
  store i64 %i.z, ptr %i.q, align 8, !tbaa !81
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi i64 [ %i.x, %bb.e ], [ %i.t, %bb.d ]
  %i.ab = phi i64 [ %i.t, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  %i.ac = phi i64 [ %i.z, %bb.e ], [ %i.v, %bb.d ]
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %.val31.i = load ptr, ptr %.val, align 8, !tbaa !142 ; 2 uses
  %.idx.i = shl nsw i64 %i.aa, 4                  ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.val31.i, i64 %.idx.i ; 2 uses
  %.idx10.i = shl nsw i64 %i.ab, 4
  %i.af = add nsw i64 %.idx10.i, 16               ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.val31.i, i64 %i.af ; 4 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 3 uses
  %.not.i.i.i = icmp eq i64 %.idx.i, %i.af
  br i1 %.not.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val6.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !142 ; 3 uses
  %.not16.i.i.i = icmp eq ptr %i.ag, %.val6.i.i.i
  br i1 %.not16.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = ptrtoint ptr %.val6.i.i.i to i64        ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = ashr exact i64 %i.aj, 4                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.au, %bb.j ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.at, %bb.j ] ; 4 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.as, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.an = load ptr, ptr %.0910.i.i.i.i.i.i.i.i, align 8, !tbaa !156
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 8
  %i.ar = load <2 x ptr>, ptr %.0811.i.i.i.i.i.i.i.i, align 8, !tbaa !49
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !149
  store <2 x ptr> %i.ar, ptr %4, align 16, !tbaa !49
  store ptr %i.an, ptr %.0811.i.i.i.i.i.i.i.i, align 8, !tbaa !120
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 16
  %i.au = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.av = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i.i, !llvm.loop !11

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i.i: ; preds = %bb.j
  %.val.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !142 ; 2 uses
  %.pre18.i.i.i = ptrtoint ptr %.val.pre.i.i.i to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i.i, %bb.i, %bb.h
  %.pre-phi19.i.i.i = phi i64 [ %i.ai, %bb.i ], [ %.pre18.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i.i ], [ %i.ah, %bb.h ]
  %.val.i.i.i = phi ptr [ %.val6.i.i.i, %bb.i ], [ %.val.pre.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i.i ], [ %i.ag, %bb.h ] ; 2 uses
  %i.aw = sub i64 %.pre-phi19.i.i.i, %i.ah
  %i.ax = getelementptr inbounds i8, ptr %i.ae, i64 %i.aw ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, %i.ax
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %i.ax, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #28
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, %.val.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.ax, ptr %i.j, align 8, !tbaa !146
  br label %.loopexit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.ba = phi i64 [ %i.be, %.lr.ph.i ], [ %i.ab, %bb.f ]
  %.011.i = phi i64 [ %i.bf, %.lr.ph.i ], [ 0, %bb.f ]
  %.val29.i = load ptr, ptr %.val, align 8, !tbaa !142
  %i.bb = getelementptr inbounds [16 x i8], ptr %.val29.i, i64 %i.ba
  call fastcc void @_ZNSt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %.val, ptr %i.bb) #29
  %i.bc = load i64, ptr %i.q, align 8, !tbaa !81
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !81
  %i.be = sub nsw i64 %i.bd, %i.bc                ; 2 uses
  store i64 %i.be, ptr %i.p, align 8, !tbaa !81
  %i.bf = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.bg = load i64, ptr %5, align 8, !tbaa !81
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
end_hunk_2
begin_hunk_3_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS6_RKNS_5sliceEE_PS6_JSJ_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSU_jPNS0_12cleanup_listEE_8__invokeES18_S19_jS1B_:bb.a
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %.pn.i, %bb.g ]
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %eh.lpad-body

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS6_RKNS_5sliceEE_PS6_JSJ_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSU_jPNS0_12cleanup_listEE_clES18_S19_jS1B_.exit: ; preds = %bb.a, %bb.b, %_ZN8nanobind6detail12infer_policyIPSt6vectorI3CntSaIS3_EEEENS_9rv_policyES7_.exit
  %.0.i = phi ptr [ %i.aj, %_ZN8nanobind6detail12infer_policyIPSt6vectorI3CntSaIS3_EEEENS_9rv_policyES7_.exit ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrISt6vectorI3CntSaIS1_EESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !176    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteISt6vectorI3CntSaIS1_EEEclEPS3_.exit

_ZNKSt14default_deleteISt6vectorI3CntSaIS1_EEEclEPS3_.exit: ; preds = %bb.a
  tail call void @_ZNSt6vectorI3CntSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #32
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
  %6 = select i1 %i.z, i64 %i.u, i64 %i.y
  %i.ah = add nsw i64 %6, 1                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, %i.ah
  br i1 %.not.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !166 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.ab
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.ah
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !166 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.aj, i64 %i.ao ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.ap
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %_ZN3Cnt5aliveE.promoted.i.i.i.i.i.i = load i32, ptr @_ZN3Cnt5aliveE, align 4
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = trunc i64 %i.aq to i32
  %i.as = trunc i64 %i.am to i32
  %i.at = sub i32 %i.ar, %i.as
  %i.au = add i32 %i.at, %_ZN3Cnt5aliveE.promoted.i.i.i.i.i.i
  store i32 %i.au, ptr @_ZN3Cnt5aliveE, align 4, !tbaa !33
  store ptr %i.ap, ptr %i.k, align 8, !tbaa !169
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %.preheader.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS6_RKNS_5sliceEE_vJSI_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit

bb.i:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.av

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorI3CntSaIS4_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS6_RKNS_5sliceEE_vJSI_SL_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit: ; preds = %bb.a, %bb.b, %bb.h
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28 ; 0 uses
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
end_hunk_3
