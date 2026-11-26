Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_thread?download=true
inline.NumInlined: 2074
inline.NumDeleted: 893
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZZN8nanobind11bind_vectorISt6vectorIlSaIlEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKNS_5sliceERKS3_E_clESF_SI_SK_:bb.a
._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %.pre35 to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %.pre35, i64 noundef %i.ab) #30
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph31, %bb.g
  %i.ac = phi i64 [ %.pre34, %.lr.ph31 ], [ %i.ai, %bb.g ]
  %.02530 = phi i64 [ 0, %.lr.ph31 ], [ %i.aj, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.pre35, i64 %.02530
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ac
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !71
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !71
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !71
  %i.ai = add nsw i64 %i.ah, %i.ag                ; 2 uses
  store i64 %i.ai, ptr %i.h, align 8, !tbaa !71
  %i.aj = add nuw i64 %.02530, 1                  ; 2 uses
  %i.ak = load i64, ptr %4, align 8, !tbaa !71
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %._crit_edge.thread, !llvm.loop !321

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.am = phi i64 [ %.pre, %.lr.ph ], [ %i.as, %bb.h ]
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.at, %bb.h ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.029
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.am
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !71
  %i.aq = load i64, ptr %i.i, align 8, !tbaa !71
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !71
  %i.as = add nsw i64 %i.ar, %i.aq                ; 2 uses
  store i64 %i.as, ptr %i.h, align 8, !tbaa !71
  %i.at = add nuw i64 %.029, 1                    ; 2 uses
  %i.au = load i64, ptr %4, align 8, !tbaa !71
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %bb.h, label %.loopexit, !llvm.loop !322

.loopexit:                                        ; preds = %bb.h, %.preheader, %_ZNSt6vectorIlSaIlEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIlSaIlEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceEE_vJSH_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.341", align 8 ; 8 uses
  %5 = alloca %"struct.nanobind::detail::tuple.337", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !11
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIlSaIlEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIlSaIlEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceEE_vJSH_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = and i32 %2, -35
  %i.i = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_5sliceEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #25
  br i1 %i.i, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIlSaIlEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceEE_vJSH_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !96   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !91
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  invoke void @_ZNK8nanobind5slice7computeEm(ptr dead_on_unwind nonnull writable sret(%"struct.nanobind::detail::tuple.341") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.q) #27
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.u = load i64, ptr %4, align 8, !tbaa !71     ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.w = load i64, ptr %i.r, align 8, !tbaa !71   ; 4 uses
  %i.x = add nsw i64 %i.u, -1
  %i.y = load i64, ptr %i.t, align 8, !tbaa !71   ; 3 uses
  %i.z = mul nsw i64 %i.y, %i.x                   ; 2 uses
  %i.aa = add nsw i64 %i.z, %i.w                  ; 4 uses
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !71
  %i.ab = icmp slt i64 %i.z, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.aa, ptr %i.r, align 8, !tbaa !71
  store i64 %i.w, ptr %i.s, align 8, !tbaa !71
  %i.ac = sub nsw i64 0, %i.y                     ; 2 uses
  store i64 %i.ac, ptr %i.t, align 8, !tbaa !71
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ]
  %i.ae = phi i64 [ %i.w, %bb.e ], [ %i.aa, %bb.d ] ; 2 uses
  %i.af = phi i64 [ %i.ac, %bb.e ], [ %i.y, %bb.d ]
  %i.ag = icmp eq i64 %i.af, 1
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !88  ; 3 uses
  br i1 %i.ag, label %bb.g, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %.pre39.i = load ptr, ptr %i.k, align 8, !tbaa !88
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ad
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = invoke ptr @_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr %i.ai, ptr nonnull %i.ak) #27
          to label %.loopexit unwind label %bb.l  ; 0 uses

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EE.exit.i, %.lr.ph.preheader.i
  %i.am = phi ptr [ %i.az, %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EE.exit.i ], [ %.pre39.i, %.lr.ph.preheader.i ] ; 5 uses
  %i.an = phi i64 [ %i.bc, %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EE.exit.i ], [ %i.ae, %.lr.ph.preheader.i ]
  %i.ao = phi ptr [ %i.ax, %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EE.exit.i ], [ %i.ah, %.lr.ph.preheader.i ] ; 4 uses
  %.037.i = phi i64 [ %i.bd, %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EE.exit.i ], [ 0, %.lr.ph.preheader.i ]
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.an ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %i.am
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EE.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp sgt i64 %i.at, 8
  br i1 %i.au, label %bb.i, label %bb.j, !prof !93

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ap, ptr nonnull align 8 %i.aq, i64 %i.at, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !92
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !88
  br label %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EE.exit.i

bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.at, 8
  br i1 %i.av, label %bb.k, label %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !71
  store i64 %i.aw, ptr %i.ap, align 8, !tbaa !71
  br label %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EE.exit.i

_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EE.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %.lr.ph.i
  %i.ax = phi ptr [ %i.ao, %bb.k ], [ %i.ao, %bb.j ], [ %.pre.i, %bb.i ], [ %i.ao, %.lr.ph.i ]
  %i.ay = phi ptr [ %i.am, %bb.k ], [ %i.am, %bb.j ], [ %.pre.i.i.i, %bb.i ], [ %i.am, %.lr.ph.i ]
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8 ; 2 uses
  store ptr %i.az, ptr %i.k, align 8, !tbaa !92
  %i.ba = load i64, ptr %i.t, align 8, !tbaa !71
  %i.bb = load i64, ptr %i.s, align 8, !tbaa !71
  %i.bc = sub nsw i64 %i.bb, %i.ba                ; 2 uses
  store i64 %i.bc, ptr %i.s, align 8, !tbaa !71
  %i.bd = add nuw i64 %.037.i, 1                  ; 2 uses
  %i.be = load i64, ptr %4, align 8, !tbaa !71
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.i, label %.loopexit, !llvm.loop !323

.loopexit:                                        ; preds = %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EE.exit.i, %.noexc, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIlSaIlEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceEE_vJSH_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.l:                                             ; preds = %bb.g, %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.bg

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIlSaIlEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceEE_vJSH_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.a, %bb.b, %.loopexit
  %.012.i = phi ptr [ @_Py_NoneStruct, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %.012.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr ptr @_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88     ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.f, %i.c
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 2 uses
  %.not.i = icmp eq ptr %1, %2
  br i1 %.not.i, label %_ZNSt6vectorIlSaIlEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPlS1_EES5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !88   ; 5 uses
  %.not11.i = icmp eq ptr %2, %i.j
  br i1 %.not11.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %i.m = icmp sgt i64 %i.l, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !93

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.e, ptr align 8 %i.h, i64 %i.l, i1 false)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !88
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %bb.f, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.h, align 8, !tbaa !71
  store i64 %i.o, ptr %i.e, align 8, !tbaa !71
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.b, %bb.f, %bb.e, %bb.d
  %3 = phi ptr [ %.pre.i, %bb.d ], [ %i.j, %bb.f ], [ %i.j, %bb.e ], [ %i.j, %bb.b ] ; 2 uses
  %4 = ptrtoint ptr %3 to i64
  %i.p = sub i64 %4, %i.f
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p ; 2 uses
  %.not.i.i = icmp eq ptr %3, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIlSaIlEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPlS1_EES5_.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i
  store ptr %i.q, ptr %i.i, align 8, !tbaa !92
  br label %_ZNSt6vectorIlSaIlEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPlS1_EES5_.exit

_ZNSt6vectorIlSaIlEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPlS1_EES5_.exit: ; preds = %bb.a, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  ret ptr %i.e
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZNK8nanobind6detail3op_ILNS0_5op_idE25ELNS0_7op_typeE0ENS0_6self_tES4_E7executeINS_6class_ISt6vectorIlSaIlEEJEEEJNS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEvRT_DpRKT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %5 = alloca %"struct.nanobind::detail::func_data_init.54", align 8 ; 14 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @_ZTISt6vectorIlSaIlEE, ptr %i.a, align 16, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZTISt6vectorIlSaIlEE, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 16, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @_ZN8nanobind6detail7op_implILNS0_5op_idE25ELNS0_7op_typeE0ESt6vectorIlSaIlEES6_S6_E7executeERKS6_S9_, ptr %5, align 8, !tbaa !123
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIlSaIlEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSN_jPNS0_12cleanup_listEE_8__invokeES11_S12_jS14_, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIlSaIlEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.a, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 60
  store <2 x i16> splat (i16 2), ptr %i.h, align 4, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i32 0, ptr %i.l, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 4683, ptr %i.d, align 8, !tbaa !35
  %i.n = load ptr, ptr %2, align 8, !tbaa !67
  store ptr %i.n, ptr %i.m, align 8, !tbaa !34
  %i.o = load <2 x ptr>, ptr %4, align 8, !tbaa !64
  store <2 x ptr> %i.o, ptr %i.i, align 8, !tbaa !64
  store ptr null, ptr %i.j, align 8, !tbaa !65
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.q = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.p, ptr noundef nonnull %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail7op_implILNS0_5op_idE25ELNS0_7op_typeE0ESt6vectorIlSaIlEES6_S6_E7executeERKS6_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !91     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.i = load ptr, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.f, %i.l
  br i1 %i.m, label %bb.b, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit

bb.b:                                             ; preds = %bb.a
  %.not.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.not.i.i.i.i.i, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.c, ptr %i.i, i64 %i.f)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.a, %bb.b, %bb.c
  %i.n = phi i1 [ false, %bb.a ], [ %.not9.i.i.i.i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIlSaIlEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSN_jPNS0_12cleanup_listEE_8__invokeES11_S12_jS14_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.324", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !11
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIlSaIlEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIlSaIlEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSN_jPNS0_12cleanup_listEE_clES11_S12_jS14_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = and i32 %2, -43
  %i.i = or disjoint i32 %i.h, 8
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.j, ptr noundef nonnull @_ZTISt6vectorIlSaIlEE, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIlSaIlEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSN_jPNS0_12cleanup_listEE_clES11_S12_jS14_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !123
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.n = load ptr, ptr %4, align 8, !tbaa !96
  %i.o = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n) #27, !inline_history !324
  %spec.select.i = select i1 %i.o, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIlSaIlEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSN_jPNS0_12cleanup_listEE_clES11_S12_jS14_.exit

_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIlSaIlEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSN_jPNS0_12cleanup_listEE_clES11_S12_jS14_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %spec.select.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZNK8nanobind6detail3op_ILNS0_5op_idE26ELNS0_7op_typeE0ENS0_6self_tES4_E7executeINS_6class_ISt6vectorIlSaIlEEJEEEJNS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEvRT_DpRKT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %5 = alloca %"struct.nanobind::detail::func_data_init.54", align 8 ; 14 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @_ZTISt6vectorIlSaIlEE, ptr %i.a, align 16, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZTISt6vectorIlSaIlEE, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 16, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @_ZN8nanobind6detail7op_implILNS0_5op_idE26ELNS0_7op_typeE0ESt6vectorIlSaIlEES6_S6_E7executeERKS6_S9_, ptr %5, align 8, !tbaa !123
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIlSaIlEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSN_jPNS0_12cleanup_listEE_8__invokeES11_S12_jS14_, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIlSaIlEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.a, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 60
  store <2 x i16> splat (i16 2), ptr %i.h, align 4, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i32 0, ptr %i.l, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 4683, ptr %i.d, align 8, !tbaa !35
  %i.n = load ptr, ptr %2, align 8, !tbaa !67
  store ptr %i.n, ptr %i.m, align 8, !tbaa !34
  %i.o = load <2 x ptr>, ptr %4, align 8, !tbaa !64
  store <2 x ptr> %i.o, ptr %i.i, align 8, !tbaa !64
  store ptr null, ptr %i.j, align 8, !tbaa !65
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.q = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.p, ptr noundef nonnull %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail7op_implILNS0_5op_idE26ELNS0_7op_typeE0ESt6vectorIlSaIlEES6_S6_E7executeERKS6_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !91     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.i = load ptr, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.f, %i.l
  br i1 %i.m, label %bb.b, label %_ZStneIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit

bb.b:                                             ; preds = %bb.a
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.not.i.i.i.i.i.i, label %_ZStneIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.c, ptr %i.i, i64 %i.f)
  %.not9.i.i.i.i.i.i = icmp ne i32 %bcmp.i.i.i.i.i.i, 0
  br label %_ZStneIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit

_ZStneIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.a, %bb.b, %bb.c
  %i.n = phi i1 [ true, %bb.a ], [ %.not9.i.i.i.i.i.i, %bb.c ], [ false, %bb.b ]
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIlSaIlEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKS5_RKlE_bJSI_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
