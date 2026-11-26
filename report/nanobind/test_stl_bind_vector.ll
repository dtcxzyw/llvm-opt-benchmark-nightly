Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_stl_bind_vector?download=true
inline.NumInlined: 4430
inline.NumDeleted: 1793
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKNS_5sliceERKS3_E_clESF_SI_SK_:bb.a
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !66
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.pre to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ad) #32
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph31, %bb.i
  %i.ae = phi i64 [ %.promoted32, %.lr.ph31 ], [ %i.ai, %bb.i ] ; 2 uses
  %.02530 = phi i64 [ 0, %.lr.ph31 ], [ %i.aj, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.02530
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ae
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !33
  %i.ai = add nsw i64 %i.y, %i.ae                 ; 2 uses
  %i.aj = add nuw i64 %.02530, 1                  ; 2 uses
  %exitcond37.not = icmp eq i64 %i.aj, %i.w
  br i1 %exitcond37.not, label %.thread, label %bb.i, !llvm.loop !299

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %i.ak = phi i64 [ %.promoted, %.lr.ph ], [ %i.ao, %bb.j ] ; 2 uses
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.j ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.029
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ak
  store i32 %i.am, ptr %i.an, align 4, !tbaa !33
  %i.ao = add nsw i64 %i.v, %i.ak
  %i.ap = add nuw i64 %.029, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.j
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !300

.loopexit:                                        ; preds = %bb.j, %.preheader, %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceEE_vJSH_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.191", align 8 ; 8 uses
  %5 = alloca %"struct.nanobind::detail::tuple.186", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr null, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIjSaIjEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceEE_vJSH_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_5sliceEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %i.g, i32 noundef %i.h, ptr noundef %3) #28
  br i1 %i.i, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceEE_vJSH_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !73   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  invoke void @_ZNK8nanobind5slice7computeEm(ptr dead_on_unwind nonnull writable sret(%"struct.nanobind::detail::tuple.191") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.q) #29
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.u = load i64, ptr %4, align 8, !tbaa !81     ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.w = load i64, ptr %i.r, align 8, !tbaa !81   ; 4 uses
  %i.x = add nsw i64 %i.u, -1
  %i.y = load i64, ptr %i.t, align 8, !tbaa !81   ; 3 uses
  %i.z = mul nsw i64 %i.y, %i.x                   ; 2 uses
  %i.aa = add nsw i64 %i.z, %i.w                  ; 4 uses
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !81
  %i.ab = icmp slt i64 %i.z, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.aa, ptr %i.r, align 8, !tbaa !81
  store i64 %i.w, ptr %i.s, align 8, !tbaa !81
  %i.ac = sub nsw i64 0, %i.y                     ; 2 uses
  store i64 %i.ac, ptr %i.t, align 8, !tbaa !81
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ]
  %i.ae = phi i64 [ %i.w, %bb.e ], [ %i.aa, %bb.d ] ; 2 uses
  %i.af = phi i64 [ %i.ac, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !64  ; 3 uses
  br i1 %i.ag, label %bb.g, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %.pre39.i = load ptr, ptr %i.k, align 8, !tbaa !64
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ad
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = invoke ptr @_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr %i.ai, ptr nonnull %i.ak) #29
          to label %.loopexit unwind label %bb.l  ; 0 uses

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i, %.lr.ph.preheader.i
  %i.am = phi i64 [ %i.az, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i ], [ %i.u, %.lr.ph.preheader.i ] ; 3 uses
  %i.an = phi i64 [ %i.bb, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 3 uses
  %i.ao = phi ptr [ %i.be, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i ], [ %.pre39.i, %.lr.ph.preheader.i ] ; 5 uses
  %i.ap = phi i64 [ %i.bf, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i ], [ %i.ae, %.lr.ph.preheader.i ] ; 4 uses
  %i.aq = phi ptr [ %i.bc, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i ], [ %i.ah, %.lr.ph.preheader.i ] ; 4 uses
  %.037.i = phi i64 [ %i.bg, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i ], [ 0, %.lr.ph.preheader.i ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ap ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.ao
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp sgt i64 %i.av, 4
  br i1 %i.aw, label %bb.i, label %bb.j, !prof !69

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ar, ptr nonnull align 4 %i.as, i64 %i.av, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !68
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !64
  %.pre40.i = load i64, ptr %i.t, align 8, !tbaa !81
  %.pre41.i = load i64, ptr %i.s, align 8, !tbaa !81
  %.pre42.i = load i64, ptr %4, align 8, !tbaa !81
  br label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ax = icmp eq i64 %i.av, 4
  br i1 %i.ax, label %bb.k, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !33
  store i32 %i.ay, ptr %i.ar, align 4, !tbaa !33
  br label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i

_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %.lr.ph.i
  %i.az = phi i64 [ %i.am, %bb.k ], [ %i.am, %bb.j ], [ %.pre42.i, %bb.i ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %i.ba = phi i64 [ %i.ap, %bb.k ], [ %i.ap, %bb.j ], [ %.pre41.i, %bb.i ], [ %i.ap, %.lr.ph.i ]
  %i.bb = phi i64 [ %i.an, %bb.k ], [ %i.an, %bb.j ], [ %.pre40.i, %bb.i ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %i.bc = phi ptr [ %i.aq, %bb.k ], [ %i.aq, %bb.j ], [ %.pre.i, %bb.i ], [ %i.aq, %.lr.ph.i ]
  %i.bd = phi ptr [ %i.ao, %bb.k ], [ %i.ao, %bb.j ], [ %.pre.i.i.i, %bb.i ], [ %i.ao, %.lr.ph.i ]
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4 ; 2 uses
  store ptr %i.be, ptr %i.k, align 8, !tbaa !68
  %i.bf = sub nsw i64 %i.ba, %i.bb                ; 2 uses
  store i64 %i.bf, ptr %i.s, align 8, !tbaa !81
  %i.bg = add nuw i64 %.037.i, 1                  ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.az
  br i1 %i.bh, label %.lr.ph.i, label %.loopexit, !llvm.loop !301

.loopexit:                                        ; preds = %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i, %.noexc, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceEE_vJSH_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.l:                                             ; preds = %bb.g, %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.bi

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceEE_vJSH_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.a, %bb.b, %.loopexit
  %.012.i = phi ptr [ @_Py_NoneStruct, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.012.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr ptr @_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.g = sub i64 %i.f, %i.c
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 3 uses
  %.not.i = icmp eq ptr %1, %2
  br i1 %.not.i, label %_ZNSt6vectorIjSaIjEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPjS1_EES5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64   ; 4 uses
  %.not11.i = icmp eq ptr %2, %i.j
  br i1 %.not11.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %i.m = icmp sgt i64 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.e, !prof !69

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.e, ptr align 4 %i.h, i64 %i.l, i1 false)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !64 ; 2 uses
  %.pre13.i = ptrtoint ptr %.pre.i to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.f, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.h, align 4, !tbaa !33
  store i32 %i.o, ptr %i.e, align 4, !tbaa !33
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.b, %bb.f, %bb.e, %bb.d
  %.pre-phi14.i = phi i64 [ %.pre13.i, %bb.d ], [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.f, %bb.b ]
  %3 = phi ptr [ %.pre.i, %bb.d ], [ %i.j, %bb.f ], [ %i.j, %bb.e ], [ %i.h, %bb.b ]
  %i.p = sub i64 %.pre-phi14.i, %i.f
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p ; 2 uses
  %.not.i.i = icmp eq ptr %3, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPjS1_EES5_.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i
  store ptr %i.q, ptr %i.i, align 8, !tbaa !68
  br label %_ZNSt6vectorIjSaIjEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPjS1_EES5_.exit

_ZNSt6vectorIjSaIjEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPjS1_EES5_.exit: ; preds = %bb.a, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  ret ptr %i.e
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZNK8nanobind6detail3op_ILNS0_5op_idE25ELNS0_7op_typeE0ENS0_6self_tES4_E7executeINS_6class_ISt6vectorIjSaIjEEJEEEJNS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEvRT_DpRKT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
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
  store ptr @_ZN8nanobind6detail7op_implILNS0_5op_idE25ELNS0_7op_typeE0ESt6vectorIjSaIjEES6_S6_E7executeERKS6_S9_, ptr %5, align 8, !tbaa !96
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
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail7op_implILNS0_5op_idE25ELNS0_7op_typeE0ESt6vectorIjSaIjEES6_S6_E7executeERKS6_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #2 comdat align 2 {
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
  br i1 %i.m, label %bb.b, label %_ZSteqIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit

bb.b:                                             ; preds = %bb.a
  %.not.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.not.i.i.i.i.i, label %_ZSteqIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
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
  %i.o = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n) #29, !inline_history !302
  %spec.select.i = select i1 %i.o, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIjSaIjEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSN_jPNS0_12cleanup_listEE_clES11_S12_jS14_.exit

_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt6vectorIjSaIjEES6_EbJS6_S6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSE_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSN_jPNS0_12cleanup_listEE_clES11_S12_jS14_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %spec.select.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZNK8nanobind6detail3op_ILNS0_5op_idE26ELNS0_7op_typeE0ENS0_6self_tES4_E7executeINS_6class_ISt6vectorIjSaIjEEJEEEJNS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEvRT_DpRKT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
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
end_hunk_0
begin_hunk_1_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKNS_5sliceERKS7_E_vJSJ_SM_SO_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSU_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSY_jPNS0_12cleanup_listEE_8__invokeES1C_S1D_jS1F_:bb.a
  %i.ac = ashr exact i64 %i.ab, 2
  %.not.i = icmp eq i64 %i.x, %i.ac
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.ad = call ptr @__cxa_allocate_exception(i64 24) #30 ; 5 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.ad, ptr noundef nonnull @.str.56) #29
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi117builtin_exceptionE, i64 16), ptr %i.ad, align 8, !tbaa !60, !alias.scope !415
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 2, ptr %i.ae, align 8, !tbaa !86, !alias.scope !415
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
  br i1 %exitcond9.not.i, label %.thread.i, label %bb.l, !llvm.loop !413

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
  br i1 %exitcond.not.i, label %.loopexit, label %bb.m, !llvm.loop !414

.loopexit:                                        ; preds = %bb.m, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EED2Ev.exit.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKNS_5sliceERKS7_E_vJSJ_SM_SO_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSU_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSY_jPNS0_12cleanup_listEE_clES1C_S1D_jS1F_.exit

bb.n:                                             ; preds = %bb.i, %bb.f, %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.n ], [ %i.af, %bb.g ]
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %eh.lpad-body

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
  br i1 %i.bf, label %.lr.ph.i, label %.loopexit, !llvm.loop !416

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
  store ptr %.0.lcssa.i.i.i.i, ptr %i.g, align 8, !tbaa !134
  ret void

.body:                                            ; preds = %bb.c
  %.val12 = load ptr, ptr %0, align 8, !tbaa !133 ; 3 uses
  %.not.i.i = icmp eq ptr %.val12, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %.val13 = load ptr, ptr %i.i, align 8, !tbaa !132
  %i.r = ptrtoint ptr %.val13 to i64
  %i.s = ptrtoint ptr %.val12 to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %.val12, i64 noundef %i.t) #32
  br label %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EED2Ev.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc noalias noundef ptr @_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE11_M_allocateEm(i64 noundef %0) unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %0, 384307168202282325
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEE8allocateEmPKv.exit, !prof !70

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %0, 768614336404564650
  br i1 %i.b, label %bb.d, label %bb.e

end_hunk_1
begin_hunk_2_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceERKS9_E_vJSL_SO_SQ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSW_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS10_jPNS0_12cleanup_listEE_8__invokeES1E_S1F_jS1H_:bb.a

bb.e:                                             ; preds = %.noexc
  %i.ad = call ptr @__cxa_allocate_exception(i64 24) #30 ; 5 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.ad, ptr noundef nonnull @.str.56) #29
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi117builtin_exceptionE, i64 16), ptr %i.ad, align 8, !tbaa !60, !alias.scope !489
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 2, ptr %i.ae, align 8, !tbaa !86, !alias.scope !489
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4:                                          ; preds = %bb.f
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
  br i1 %.not4.i, label %.loopexit12, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.pre.i = load i64, ptr %i.v, align 8, !tbaa !81
  br label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val) #29
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.i
  %i.ah = load i64, ptr %4, align 8, !tbaa !81
  %.not5.i = icmp eq i64 %i.ah, 0
  br i1 %.not5.i, label %._crit_edge.i, label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.noexc5
  %.val37.i = load ptr, ptr %5, align 8, !tbaa !133
  %.pre6.i = load i64, ptr %i.v, align 8, !tbaa !81
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.k, %.noexc5
  call fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit12

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
  br i1 %i.ar, label %bb.j, label %._crit_edge.i, !llvm.loop !487

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.m

.lr.ph.i:                                         ; preds = %.noexc6, %.lr.ph.preheader.i
  %i.at = phi i64 [ %i.az, %.noexc6 ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.01.i = phi i64 [ %i.ba, %.noexc6 ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.val38.i = load ptr, ptr %.val, align 8, !tbaa !133
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.val38.i, i64 %.01.i
  %.val35.i = load ptr, ptr %.val3, align 8, !tbaa !133
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %.val35.i, i64 %i.at
  %i.aw = invoke fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.au) #29
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc6:                                          ; preds = %.lr.ph.i
  %i.ax = load i64, ptr %i.w, align 8, !tbaa !81
  %i.ay = load i64, ptr %i.v, align 8, !tbaa !81
  %i.az = add nsw i64 %i.ay, %i.ax                ; 2 uses
  store i64 %i.az, ptr %i.v, align 8, !tbaa !81
  %i.ba = add nuw i64 %.01.i, 1                   ; 2 uses
  %i.bb = load i64, ptr %4, align 8, !tbaa !81
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph.i, label %.loopexit12, !llvm.loop !488

bb.m:                                             ; preds = %bb.l, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.as, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body

.loopexit12:                                      ; preds = %.noexc6, %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceERKS9_E_vJSL_SO_SQ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSW_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS10_jPNS0_12cleanup_listEE_clES1E_S1F_jS1H_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.i, %bb.f, %bb.d
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.m ], [ %lpad.loopexit.split-lp16, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %eh.lpad-body

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceERKS9_E_vJSL_SO_SQ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSW_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS10_jPNS0_12cleanup_listEE_clES1E_S1F_jS1H_.exit: ; preds = %bb.a, %bb.b, %bb.c, %.loopexit12
  %.015.i = phi ptr [ @_Py_NoneStruct, %.loopexit12 ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
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
  br i1 %i.ba, label %.lr.ph.i, label %.loopexit, !llvm.loop !490

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
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store <2 x i32> zeroinitializer, ptr %i.b, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #28, !inline_history !8
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #28, !inline_history !8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.e, -1
  store i32 %i.m, ptr %i.b, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i, 1
end_hunk_2
begin_hunk_3_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceERKS9_E_vJSL_SO_SQ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSW_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS10_jPNS0_12cleanup_listEE_8__invokeES1E_S1F_jS1H_:bb.a
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi117builtin_exceptionE, i64 16), ptr %i.ad, align 8, !tbaa !60, !alias.scope !586
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 2, ptr %i.ae, align 8, !tbaa !86, !alias.scope !586
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
  br i1 %i.au, label %bb.j, label %._crit_edge.i, !llvm.loop !584

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
  br i1 %i.bh, label %.lr.ph.i, label %.loopexit, !llvm.loop !585

.loopexit:                                        ; preds = %.lr.ph.i, %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceERKS9_E_vJSL_SO_SQ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSW_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS10_jPNS0_12cleanup_listEE_clES1E_S1F_jS1H_.exit

bb.k:                                             ; preds = %bb.i, %bb.f, %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.bi, %bb.k ], [ %i.af, %bb.g ]
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %eh.lpad-body

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
  br i1 %i.bh, label %.lr.ph.i, label %.loopexit, !llvm.loop !587

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
  %i.m = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %.val3, ptr noundef nonnull align 8 dereferenceable(24) %.val) #29, !inline_history !588
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

end_hunk_3
begin_hunk_4_@_ZN8nanobind6detail13wrap_destructINS0_20index_iterator_stateILNS_9rv_policy5valueE6ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS7_EEEEEEvPv:bb.a
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #28 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_20index_iterator_stateILNS_9rv_policy5valueE6ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS8_EEEELS5_6EEEvNS_6handleEPKcEUlSC_E_SC_JSC_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSK_jPNS0_12cleanup_listEE_8__invokeESY_SZ_jS11_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !23     ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_20index_iterator_stateILNS_9rv_policy5valueE6ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS8_EEEELS5_6EEEvNS_6handleEPKcEUlSC_E_SC_JSC_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSK_jPNS0_12cleanup_listEE_clESY_SZ_jS11_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_20index_iterator_stateILNS_9rv_policy5valueE6ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS8_EEEELS5_6EEEvNS_6handleEPKcEUlSC_E_SC_JSC_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSK_jPNS0_12cleanup_listEE_clESY_SZ_jS11_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %i.a, align 8, !tbaa !26
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_20index_iterator_stateILNS_9rv_policy5valueE6ESt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS8_EEEELS5_6EEEvNS_6handleEPKcEUlSC_E_SC_JSC_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSK_jPNS0_12cleanup_listEE_clESY_SZ_jS11_.exit

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
  %.val = load ptr, ptr %4, align 8, !tbaa !659   ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !666
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
  store i32 %storemerge9.i, ptr %i.h, align 4, !tbaa !181, !noalias !666
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.i, ptr %i.e, align 8, !tbaa !189, !alias.scope !666
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12emplace_backIJRiEEERS2_DpOT_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %.val26.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775804
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #33
          to label %.noexc.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !666

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
          to label %.noexc5.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !666 ; 6 uses

.noexc5.i:                                        ; preds = %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i32 %storemerge9.i, ptr %i.v, align 4, !tbaa !181, !noalias !666
  br i1 %i.o, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc5.i, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %.noexc5.i ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %.val26.i.i.i, %.noexc5.i ] ; 2 uses
  %.09.val.i.i.i.i.i.i = load i32, ptr %.092.i.i.i.i.i.i, align 4, !tbaa !33, !noalias !666
  store i32 %.09.val.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i, align 4, !tbaa !33, !alias.scope !667, !noalias !666
  %i.w = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !664

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc5.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc5.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i38.i.i.i = icmp eq ptr %.val26.i.i.i, null
  br i1 %.not.i38.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val26.i.i.i, i64 noundef %i.l) #32, !noalias !666
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i.i.i
  store ptr %i.u, ptr %5, align 8, !tbaa !188, !alias.scope !666
  store ptr %i.y, ptr %i.e, align 8, !tbaa !189, !alias.scope !666
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s ; 2 uses
  store ptr %i.z, ptr %i.f, align 8, !tbaa !184, !alias.scope !666
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12emplace_backIJRiEEERS2_DpOT_.exit.i

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12emplace_backIJRiEEERS2_DpOT_.exit.i: ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.d
  %.val26.i.i19.i = phi ptr [ %i.u, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.val26.i.i.i, %bb.d ]
  %i.aa = phi ptr [ %i.z, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.g, %bb.d ]
  %i.ab = phi ptr [ %i.y, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.i, %bb.d ]
  %i.ac = add nuw i32 %storemerge9.i, 1
  %exitcond.not.i = icmp eq i32 %storemerge9.i, %i.d
  br i1 %exitcond.not.i, label %_ZN8nanobind6detail12infer_policyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE4E_ncSaIS4_EEEENS_9rv_policyES7_.exit, label %bb.c, !llvm.loop !665

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i6.i = icmp eq ptr %.val26.i.i.i, null
  br i1 %.not.i.i.i6.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPvm(ptr noundef nonnull %.val26.i.i.i, i64 noundef %i.l) #32, !noalias !666
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EED2Ev.exit.i

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE4E_ncSaIS2_EED2Ev.exit.i: ; preds = %bb.h, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp36

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
end_hunk_4
