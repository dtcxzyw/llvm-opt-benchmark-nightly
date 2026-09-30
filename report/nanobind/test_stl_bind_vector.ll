Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_stl_bind_vector?download=true
inline.NumInlined: 4430
inline.NumDeleted: 1793
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKNS_5sliceERKS9_E_vJSL_SO_SQ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb0EEENSW_ILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS10_jPNS0_12cleanup_listEE_8__invokeES1E_S1F_jS1H_:bb.a

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
  %.011.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %.val3, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %.val, %bb.b ] ; 2 uses
  %.08.val.i.i.i.i.i = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !156 ; 2 uses
  %.0.val.i.i.i.i.i = load ptr, ptr %.011.i.i.i.i.i, align 8, !tbaa !156 ; 2 uses
  %.not = icmp ne ptr %.08.val.i.i.i.i.i, %.0.val.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.j, %.val2
  %or.cond.not = select i1 %.not, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.not, label %_ZSteqISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !12

_ZSteqISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %2 = icmp eq ptr %.08.val.i.i.i.i.i, %.0.val.i.i.i.i.i
  br label %_ZSteqISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit

_ZSteqISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit: ; preds = %_ZSteqISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.loopexit, %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %2, %_ZSteqISt10shared_ptrIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit.loopexit ]
  ret i1 %i.l
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
  %i.z = icmp sgt i64 %.059.i.i.i.i, 1
  br i1 %i.z, label %bb.d, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !557

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.h
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre67.i.i.i.i = sub i64 %i.k, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.c
  %.pre-phi68.i.i.i.i = phi i64 [ %.pre67.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.m, %bb.c ]
  %.sroa.041.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.val3, %bb.c ] ; 5 uses
  %i.aa = ashr exact i64 %.pre-phi68.i.i.i.i, 4
  switch i64 %i.aa, label %.loopexit [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i29.i.i.i.i = load ptr, ptr %.sroa.041.0.lcssa.i.i.i.i, align 8, !tbaa !156
  %i.ab = icmp eq ptr %.val.i29.i.i.i.i, %.val5
  br i1 %i.ab, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.041.0.lcssa.i.i.i.i, i64 16
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.sroa.041.1.i.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.sroa.041.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.val.i30.i.i.i.i = load ptr, ptr %.sroa.041.1.i.i.i.i, align 8, !tbaa !156
  %i.ad = icmp eq ptr %.val.i30.i.i.i.i, %.val5
  br i1 %i.ad, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.041.1.i.i.i.i, i64 16
  br label %._crit_edge._crit_edge65.i.i.i.i

._crit_edge._crit_edge65.i.i.i.i:                 ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.sroa.041.2.i.i.i.i = phi ptr [ %i.ae, %bb.k ], [ %.sroa.041.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.val.i31.i.i.i.i = load ptr, ptr %.sroa.041.2.i.i.i.i, align 8, !tbaa !156
  %i.af = icmp eq ptr %.val.i31.i.i.i.i, %.val5
  %spec.select.i.i.i.i = select i1 %i.af, ptr %.sroa.041.2.i.i.i.i, ptr %.val4
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 48
  br label %.loopexit

.loopexit.loopexit.split.loop.exit22:             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 32
  br label %.loopexit

.loopexit.loopexit.split.loop.exit24:             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.041.058.i.i.i.i, i64 16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit22, %.loopexit.loopexit.split.loop.exit24, %._crit_edge._crit_edge65.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.i, %._crit_edge.i.i.i.i
end_hunk_0
