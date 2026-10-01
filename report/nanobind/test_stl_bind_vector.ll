Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_stl_bind_vector?download=true
inline.NumInlined: 4430
inline.NumDeleted: 1793
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceERKS5_E_vJSH_SK_SM_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSS_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSW_jPNS0_12cleanup_listEE_8__invokeES1A_S1B_jS1D_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.s

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceERKS5_E_vJSH_SK_SM_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSS_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSW_jPNS0_12cleanup_listEE_clES1A_S1B_jS1D_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.015.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ @_Py_NoneStruct, %bb.d ]
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.015.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden void @_ZZN8nanobind11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_RKNS_5sliceERKS3_E_clESF_SI_SK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.191", align 8 ; 8 uses
  %5 = alloca %"class.std::vector", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = load ptr, ptr %1, align 8, !tbaa !67
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2
  call void @_ZNK8nanobind5slice7computeEm(ptr dead_on_unwind nonnull writable sret(%"struct.nanobind::detail::tuple.191") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.g) #29
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load i64, ptr %4, align 8, !tbaa !81     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  %.not = icmp eq i64 %i.j, %i.q
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  invoke void @_ZN8nanobind11index_errorEPKc(ptr dead_on_unwind writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %i.r, ptr noundef nonnull @.str.56) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr %i.r, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.s

bb.e:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %3, %1
  br i1 %i.t, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not34 = icmp eq i64 %i.j, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.u = load ptr, ptr %1, align 8, !tbaa !67
  %i.v = load i64, ptr %i.i, align 8, !tbaa !81
  %.promoted = load i64, ptr %i.h, align 8, !tbaa !81
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZNSt6vectorIjSaIjEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #29
  %i.w = load i64, ptr %4, align 8, !tbaa !81     ; 2 uses
  %.not35 = icmp eq i64 %i.w, 0
  %.pre = load ptr, ptr %5, align 8, !tbaa !67    ; 4 uses
  br i1 %.not35, label %bb.g, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.f
  %i.x = load ptr, ptr %1, align 8, !tbaa !67
  %i.y = load i64, ptr %i.i, align 8, !tbaa !81
  %.promoted32 = load i64, ptr %i.h, align 8, !tbaa !81
  br label %bb.i

.thread:                                          ; preds = %bb.i
  store i64 %i.ai, ptr %i.h, align 8, !tbaa !81
  br label %bb.h

bb.g:                                             ; preds = %bb.f
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
  br i1 %exitcond37.not, label %.thread, label %bb.i, !llvm.loop !286

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
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !287

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
  br i1 %i.ag, label %bb.g, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %.pre.i.a = load ptr, ptr %i.k, align 8, !tbaa !64
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %6 = load ptr, ptr %i.j, align 8, !tbaa !64     ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ad
  %i.ai = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = invoke ptr @_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr %i.ah, ptr nonnull %i.aj) #29
          to label %.loopexit unwind label %bb.l  ; 0 uses

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i, %.lr.ph.preheader.i
  %i.al = phi i64 [ %i.ax, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i ], [ %i.u, %.lr.ph.preheader.i ] ; 3 uses
  %i.am = phi i64 [ %i.az, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 3 uses
  %i.an = phi ptr [ %i.bb, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i ], [ %.pre.i.a, %.lr.ph.preheader.i ] ; 5 uses
  %i.ao = phi i64 [ %i.bc, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i ], [ %i.ae, %.lr.ph.preheader.i ] ; 4 uses
  %.037.i = phi i64 [ %i.bd, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i ], [ 0, %.lr.ph.preheader.i ]
  %7 = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.ap = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %i.an
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp sgt i64 %i.at, 4
  br i1 %i.au, label %bb.i, label %bb.j, !prof !69

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ap, ptr nonnull align 4 %i.aq, i64 %i.at, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !68
  %.pre38.i = load i64, ptr %i.t, align 8, !tbaa !81
  %.pre39.i = load i64, ptr %i.s, align 8, !tbaa !81
  %.pre40.i = load i64, ptr %4, align 8, !tbaa !81
  br label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i

bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.at, 4
  br i1 %i.av, label %bb.k, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.aq, align 4, !tbaa !33
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !33
  br label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i

_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %.lr.ph.i
  %i.ax = phi i64 [ %i.al, %bb.k ], [ %i.al, %bb.j ], [ %.pre40.i, %bb.i ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %i.ay = phi i64 [ %i.ao, %bb.k ], [ %i.ao, %bb.j ], [ %.pre39.i, %bb.i ], [ %i.ao, %.lr.ph.i ]
  %i.az = phi i64 [ %i.am, %bb.k ], [ %i.am, %bb.j ], [ %.pre38.i, %bb.i ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %i.ba = phi ptr [ %i.an, %bb.k ], [ %i.an, %bb.j ], [ %.pre.i.i.i, %bb.i ], [ %i.an, %.lr.ph.i ]
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4 ; 2 uses
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !68
  %i.bc = sub nsw i64 %i.ay, %i.az                ; 2 uses
  store i64 %i.bc, ptr %i.s, align 8, !tbaa !81
  %i.bd = add nuw i64 %.037.i, 1                  ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.ax
  br i1 %i.be, label %.lr.ph.i, label %.loopexit, !llvm.loop !288

.loopexit:                                        ; preds = %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit.i, %.noexc, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceEE_vJSH_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.l:                                             ; preds = %bb.g, %bb.c
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.bf

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIjSaIjEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKNS_5sliceEE_vJSH_SK_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.a, %bb.b, %.loopexit
  %.012.i = phi ptr [ @_Py_NoneStruct, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28 ; 0 uses
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
  %i.p = phi ptr [ %.pre.i, %bb.d ], [ %i.j, %bb.f ], [ %i.j, %bb.e ], [ %i.h, %bb.b ]
  %i.q = sub i64 %.pre-phi14.i, %i.f
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 %i.q ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPjS1_EES5_.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i
  store ptr %i.r, ptr %i.i, align 8, !tbaa !68
  br label %_ZNSt6vectorIjSaIjEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPjS1_EES5_.exit

_ZNSt6vectorIjSaIjEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPjS1_EES5_.exit: ; preds = %bb.a, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  ret ptr %i.e
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZNK8nanobind6detail3op_ILNS0_5op_idE25ELNS0_7op_typeE0ENS0_6self_tES4_E7executeINS_6class_ISt6vectorIjSaIjEEJEEEJNS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEvRT_DpRKT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
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
end_hunk_0
begin_hunk_1_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS7_RKNS_5sliceERKS7_E_vJSJ_SM_SO_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSU_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSY_jPNS0_12cleanup_listEE_8__invokeES1C_S1D_jS1F_:bb.a
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = load i64, ptr %4, align 8, !tbaa !81     ; 3 uses
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !123 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val29.i = load ptr, ptr %i.y, align 8, !tbaa !124
  %i.z = ptrtoint ptr %.val29.i to i64
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
  br i1 %i.ad, label %bb.g, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %.val9.i.i.pre.i = load ptr, ptr %i.j, align 8, !tbaa !120
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %.val31.i = load ptr, ptr %.val, align 8, !tbaa !120 ; 2 uses
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
  %.011.i = phi i64 [ %i.be, %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i ], [ 0, %.lr.ph.preheader.i ]
  %.val29.i = load ptr, ptr %.val, align 8, !tbaa !120
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
  %.pre.i = load i64, ptr %i.q, align 8, !tbaa !81
  %.pre13.i = load i64, ptr %i.p, align 8, !tbaa !81
  %.pre14.i = load i64, ptr %4, align 8, !tbaa !81
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ax = icmp eq i64 %i.av, 4
  br i1 %i.ax, label %bb.p, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i

bb.p:                                             ; preds = %bb.o
  %.val.i.i.i.i.i.i.i41.i = load i32, ptr %i.as, align 4, !tbaa !33
  store i32 %.val.i.i.i.i.i.i.i41.i, ptr %i.ar, align 4, !tbaa !33
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph.i
  %i.ay = phi i64 [ %i.ao, %bb.p ], [ %i.ao, %bb.o ], [ %.pre14.i, %bb.n ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %i.az = phi i64 [ %i.aq, %bb.p ], [ %i.aq, %bb.o ], [ %.pre13.i, %bb.n ], [ %i.aq, %.lr.ph.i ]
  %i.ba = phi i64 [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], [ %.pre.i, %bb.n ], [ %i.ap, %.lr.ph.i ] ; 2 uses
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

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

_ZNSt15__new_allocatorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEE8allocateEmPKv.exit: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %0, 24
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt15__new_allocatorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEE8allocateEmPKv.exit
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEE8allocateEmPKv.exit ], [ null, %bb.a ]
  ret ptr %i.e
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal fastcc void @_ZSt8_DestroyIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvT_S7_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvPT_.exit.i
  %.06.i = phi ptr [ %i.e, %_ZSt8_DestroyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %.0.val.i = load ptr, ptr %.06.i, align 8       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.a = getelementptr i8, ptr %.06.i, i64 16
  %.0.val4.i = load ptr, ptr %i.a, align 8
  %i.b = ptrtoint ptr %.0.val4.i to i64
  %i.c = ptrtoint ptr %.0.val.i to i64
  %i.d = sub i64 %i.b, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.val.i, i64 noundef %i.d) #32
  br label %_ZSt8_DestroyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvPT_.exit.i

_ZSt8_DestroyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !4

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS5_EEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal fastcc void @_ZNSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
