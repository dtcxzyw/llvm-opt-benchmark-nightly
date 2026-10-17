Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_stl_bind_vector?download=true
inline.NumInlined: 4430
inline.NumDeleted: 1793
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS9_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSX_jPNS0_12cleanup_listEE_8__invokeES1B_S1C_jS1E_:bb.a
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %.val22.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit68.i.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = call ptr @__cxa_begin_catch(ptr %i.ak) #30 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvT_S7_(ptr noundef %.val20.i, ptr noundef nonnull %.014.i.i.i.i.i.i.i) #29
  invoke void @__cxa_rethrow() #35
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume.i.i.i unwind label %bb.i

common.resume.i.i.i:                              ; preds = %bb.t, %bb.h
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.am, %bb.h ], [ %i.by, %bb.t ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #31
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_move_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit68.i.thread.i.i: ; preds = %_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !134
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.ab
  store ptr %i.ap, ptr %i.u, align 8, !tbaa !134
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS9_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit

bb.k:                                             ; preds = %bb.f
  %i.aq = sdiv exact i64 %i.y, 24                 ; 4 uses
  %i.ar = sub nsw i64 384307168202282325, %i.aq
  %i.as = icmp ult i64 %i.ar, %i.ac
  br i1 %i.as, label %bb.l, label %_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #33
  unreachable

_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ac)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.aq
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 384307168202282325)
  %i.aw = select i1 %i.au, i64 384307168202282325, i64 %i.av ; 3 uses
  %i.ax = call fastcc noundef ptr @_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE11_M_allocateEm(i64 noundef %i.aw) #29 ; 7 uses
  %.not11.i.i.i.i.i76.i.i.i = icmp eq ptr %.val9.i.i, %.val20.i ; 2 uses
  br i1 %.not11.i.i.i.i.i76.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i.i, label %.lr.ph.i.i.i.i.i77.i.i.i

.lr.ph.i.i.i.i.i77.i.i.i:                         ; preds = %_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i77.i.i.i
  %.013.i.i.i.i.i78.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i77.i.i.i ], [ %i.ax, %_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 3 uses
  %.sroa.010.012.i.i.i.i.i79.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i77.i.i.i ], [ %.val9.i.i, %_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 4 uses
  %i.ay = load <2 x ptr>, ptr %.sroa.010.012.i.i.i.i.i79.i.i.i, align 8, !tbaa !120
  store <2 x ptr> %i.ay, ptr %.013.i.i.i.i.i78.i.i.i, align 8, !tbaa !120
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i78.i.i.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.010.012.i.i.i.i.i79.i.i.i, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !122
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.012.i.i.i.i.i79.i.i.i, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.010.012.i.i.i.i.i79.i.i.i, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i78.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i80.i.i.i = icmp eq ptr %i.bc, %.val20.i
  br i1 %.not.i.i.i.i.i80.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i.i, label %.lr.ph.i.i.i.i.i77.i.i.i, !llvm.loop !454

_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i77.i.i.i, %_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i81.i.i.i = phi ptr [ %i.ax, %_ZNKSt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bd, %.lr.ph.i.i.i.i.i77.i.i.i ] ; 3 uses
  br label %.lr.ph.i.i.i.i83.i.i.i

.lr.ph.i.i.i.i83.i.i.i:                           ; preds = %_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i86.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i.i
  %.014.i.i.i.i84.i.i.i = phi ptr [ %i.bf, %_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i86.i.i.i ], [ %.0.lcssa.i.i.i.i.i81.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i.i ] ; 3 uses
  %.sroa.010.013.i.i.i.i85.i.i.i = phi ptr [ %i.be, %_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i86.i.i.i ], [ %.val21.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i.i ] ; 2 uses
  invoke fastcc void @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.014.i.i.i.i84.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.010.013.i.i.i.i85.i.i.i) #29
          to label %_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i86.i.i.i unwind label %bb.m

_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i86.i.i.i: ; preds = %.lr.ph.i.i.i.i83.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i85.i.i.i, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i87.i.i.i = icmp eq ptr %i.be, %.val22.i
  br i1 %.not.i.i.i.i87.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit96.i.i.i, label %.lr.ph.i.i.i.i83.i.i.i, !llvm.loop !3

bb.m:                                             ; preds = %.lr.ph.i.i.i.i83.i.i.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %i.bh) #30 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvT_S7_(ptr noundef %.0.lcssa.i.i.i.i.i81.i.i.i, ptr noundef nonnull %.014.i.i.i.i84.i.i.i) #29
  invoke void @__cxa_rethrow() #35
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #31
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit96.i.i.i: ; preds = %_ZSt10_ConstructISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i86.i.i.i
  br i1 %.not11.i.i.i.i.i76.i.i.i, label %_ZSt8_DestroyIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit96.i.i.i, %_ZSt8_DestroyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvPT_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.bq, %_ZSt8_DestroyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvPT_.exit.i.i.i.i.i ], [ %.val9.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit96.i.i.i ] ; 3 uses
  %.0.val.i.i.i.i.i = load ptr, ptr %.06.i.i.i.i.i, align 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvPT_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bm = getelementptr i8, ptr %.06.i.i.i.i.i, i64 16
  %.0.val4.i.i.i.i.i = load ptr, ptr %i.bm, align 8
  %i.bn = ptrtoint ptr %.0.val4.i.i.i.i.i to i64
  %i.bo = ptrtoint ptr %.0.val.i.i.i.i.i to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i.i.i.i, i64 noundef %i.bp) #32
  br label %_ZSt8_DestroyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bq, %.val20.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvPT_.exit.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit96.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.val9.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvT_S7_.exit.i.i.i
  %i.br = load ptr, ptr %i.ad, align 8, !tbaa !132
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %.val9.i.i, i64 noundef %i.bt) #32
  br label %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit.i.i.i

_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit.i.i.i: ; preds = %bb.r, %_ZSt8_DestroyIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvT_S7_.exit.i.i.i
  store ptr %i.ax, ptr %.val3, align 8, !tbaa !133
  store ptr %i.bf, ptr %i.u, align 8, !tbaa !134
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.aw
  store ptr %i.bu, ptr %i.ad, align 8, !tbaa !132
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS9_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit

.body.i.i.i:                                      ; preds = %bb.n
  %i.bv = extractvalue { ptr, i32 } %i.bj, 0
  %i.bw = call ptr @__cxa_begin_catch(ptr %i.bv) #30 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EEEvT_S7_(ptr noundef %i.ax, ptr noundef %.0.lcssa.i.i.i.i.i81.i.i.i) #29
  %.not.i97.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i97.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit98.i.i.i, label %bb.s

bb.s:                                             ; preds = %.body.i.i.i
  %i.bx = mul nuw nsw i64 %i.aw, 24
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bx) #32
  br label %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit98.i.i.i

_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit98.i.i.i: ; preds = %bb.s, %.body.i.i.i
  invoke void @__cxa_rethrow() #35
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit98.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #31
  unreachable

bb.v:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit98.i.i.i
  unreachable

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_RKS9_E_vJSL_SN_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit: ; preds = %.lr.ph.i, %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit.i.i.i, %_ZSt22__uninitialized_move_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit68.i.thread.i.i, %bb.e, %bb.d, %bb.a, %bb.b
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %_ZNSt12_Vector_baseISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit.i.i.i ], [ @_Py_NoneStruct, %bb.e ], [ @_Py_NoneStruct, %_ZSt22__uninitialized_move_aIPSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit68.i.thread.i.i ], [ @_Py_NoneStruct, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEaSERKS4_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val30 = load ptr, ptr %1, align 8, !tbaa !123 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val31 = load ptr, ptr %i.a, align 8, !tbaa !124 ; 4 uses
  %i.b = ptrtoint ptr %.val31 to i64
  %i.c = ptrtoint ptr %.val30 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 9 uses
  %.val38 = load ptr, ptr %0, align 8, !tbaa !123 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val39 = load ptr, ptr %i.e, align 8, !tbaa !122
  %i.f = ptrtoint ptr %.val39 to i64
  %i.g = ptrtoint ptr %.val38 to i64              ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = ashr exact i64 %i.d, 2
  %i.k = tail call fastcc noundef ptr @_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE11_M_allocateEm(i64 noundef range(i64 -2305843009213693952, 2305843009213693952) %i.j) #29 ; 4 uses
  %.not8.i.i.i.i.i = icmp eq ptr %.val30, %.val31
  br i1 %.not8.i.i.i.i.i, label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = and i64 %i.d, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.k, ptr readonly align 4 %.val30, i64 %2, i1 false), !tbaa !33
  br label %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %bb.c, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !123      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !122
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %3 to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.o) #32
  br label %_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !123
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.d
  store ptr %i.p, ptr %i.e, align 8, !tbaa !122
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val29 = load ptr, ptr %i.q, align 8, !tbaa !124 ; 3 uses
  %i.r = ptrtoint ptr %.val29 to i64
  %i.s = sub i64 %i.r, %i.g                       ; 5 uses
  %.not24 = icmp ult i64 %i.s, %i.d
  br i1 %.not24, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp sgt i64 %i.d, 4
  br i1 %i.t, label %bb.g, label %bb.h, !prof !69

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val38, ptr align 4 %.val30, i64 %i.d, i1 false)
  %.pre44 = load ptr, ptr %0, align 8, !tbaa !123
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %i.d, 4
  br i1 %i.u, label %bb.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i.i.i = load i32, ptr %.val30, align 4, !tbaa !33
  store i32 %.val.i.i.i.i.i, ptr %.val38, align 4, !tbaa !33
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.e
  %i.v = icmp sgt i64 %i.s, 4
  br i1 %i.v, label %bb.k, label %bb.l, !prof !69

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val38, ptr align 4 %.val30, i64 %i.s, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !123
  %.val.pre = load ptr, ptr %0, align 8, !tbaa !123 ; 2 uses
  %.val25.pre = load ptr, ptr %i.q, align 8, !tbaa !124 ; 2 uses
  %.pre43 = load ptr, ptr %i.a, align 8, !tbaa !124
  %.pre45 = ptrtoint ptr %.val25.pre to i64
  %.pre46 = ptrtoint ptr %.val.pre to i64
  %.pre48 = sub i64 %.pre45, %.pre46
  br label %_ZSt4copyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElS3_ET0_T_S5_S4_.exit

bb.l:                                             ; preds = %bb.j
  %i.w = icmp eq i64 %i.s, 4
  br i1 %i.w, label %bb.m, label %_ZSt4copyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElS3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i.i.i40 = load i32, ptr %.val30, align 4, !tbaa !33
  store i32 %.val.i.i.i.i.i40, ptr %.val38, align 4, !tbaa !33
  br label %_ZSt4copyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElS3_ET0_T_S5_S4_.exit

_ZSt4copyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElS3_ET0_T_S5_S4_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.pre-phi49 = phi i64 [ %.pre48, %bb.k ], [ %i.s, %bb.l ], [ 4, %bb.m ]
  %i.x = phi ptr [ %.pre43, %bb.k ], [ %.val31, %bb.l ], [ %.val31, %bb.m ] ; 2 uses
  %.val25 = phi ptr [ %.val25.pre, %bb.k ], [ %.val29, %bb.l ], [ %.val29, %bb.m ]
  %.val = phi ptr [ %.val.pre, %bb.k ], [ %.val38, %bb.l ], [ %.val38, %bb.m ] ; 2 uses
  %i.y = phi ptr [ %.pre, %bb.k ], [ %.val30, %bb.l ], [ %.val30, %bb.m ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.pre-phi49 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElS3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.val25, %_ZSt4copyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElS3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.z, %_ZSt4copyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElS3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.08.val.i.i.i.i = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !33
  store i32 %.08.val.i.i.i.i, ptr %.011.i.i.i.i, align 4, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.x
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !455

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElS3_ET0_T_S5_S4_.exit, %bb.i, %bb.h, %bb.g, %_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ac = phi ptr [ %i.k, %_ZNSt12_Vector_baseIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE13_M_deallocateEPS2_m.exit ], [ %.val, %_ZSt4copyIPZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElS3_ET0_T_S5_S4_.exit ], [ %.val38, %bb.i ], [ %.val38, %bb.h ], [ %.pre44, %bb.g ], [ %.val, %.lr.ph.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !124
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E0_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSU_jPNS0_12cleanup_listEE_8__invokeES18_S19_jS1B_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.799", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E0_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSU_jPNS0_12cleanup_listEE_clES18_S19_jS1B_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = and i32 %2, -35
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail8load_i64EPNS0_12nb_internalsEP7_objectjPl(ptr noundef %i.j, ptr noundef %i.h, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E0_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSU_jPNS0_12cleanup_listEE_clES18_S19_jS1B_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = and i32 %2, -43
  %i.o = or disjoint i32 %i.n, 8
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.q = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.p, ptr noundef nonnull @_ZTISt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EE, ptr noundef %i.m, i32 noundef %i.o, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.q, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E0_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSU_jPNS0_12cleanup_listEE_clES18_S19_jS1B_.exit

bb.d:                                             ; preds = %bb.c
  %.val3 = load ptr, ptr %i.a, align 8, !tbaa !137 ; 2 uses
  %i.r = load i64, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %.val4 = load ptr, ptr %.val3, align 8, !tbaa !133 ; 2 uses
  %i.s = getelementptr i8, ptr %.val3, i64 8
  %.val5 = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.t = ptrtoint ptr %.val5 to i64
  %i.u = ptrtoint ptr %.val4 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 24                  ; 2 uses
  %i.x = icmp slt i64 %i.r, 0
  %i.y = select i1 %i.x, i64 %i.w, i64 0
  %spec.select.i.i = add nsw i64 %i.y, %i.r       ; 3 uses
  %i.z = icmp sgt i64 %spec.select.i.i, -1
  %.not.i.i = icmp ult i64 %spec.select.i.i, %i.w
  %or.cond.i.i = and i1 %i.z, %.not.i.i
  br i1 %or.cond.i.i, label %_ZZN8nanobind11bind_vectorISt6vectorIS1_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS3_EESaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS7_lRKS5_E0_clESJ_lSL_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  invoke void @_ZN8nanobind11index_errorEPKc(ptr dead_on_unwind writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %i.aa, ptr noundef null) #29
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__cxa_throw(ptr %i.aa, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.aa) #30
  resume { ptr, i32 } %i.ab

_ZZN8nanobind11bind_vectorISt6vectorIS1_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS3_EESaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS7_lRKS5_E0_clESJ_lSL_.exit: ; preds = %bb.d
  %.val = load ptr, ptr %4, align 8, !tbaa !127
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %.val4, i64 %spec.select.i.i
  %i.ad = call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val) #29 ; 0 uses
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E0_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSU_jPNS0_12cleanup_listEE_clES18_S19_jS1B_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lRKS7_E0_vJSL_lSN_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSU_jPNS0_12cleanup_listEE_clES18_S19_jS1B_.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZZN8nanobind11bind_vectorISt6vectorIS1_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS3_EESaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS7_lRKS5_E0_clESJ_lSL_.exit
  %.0.i = phi ptr [ @_Py_NoneStruct, %_ZZN8nanobind11bind_vectorISt6vectorIS1_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS3_EESaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS7_lRKS5_E0_clESJ_lSL_.exit ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lE1_vJSL_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSS_jPNS0_12cleanup_listEE_8__invokeES16_S17_jS19_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.763", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIS_IZL43nanobind_test_stl_bind_vector_ext_exec_implN8nanobind7module_EE2ElSaIS2_EESaIS4_EE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lE1_vJSL_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail8load_i64EPNS0_12nb_internalsEP7_objectjPl(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.j, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIS3_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS5_EESaIS7_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS9_lE1_vJSL_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !137 ; 3 uses
  %i.k = load i64, ptr %4, align 8, !tbaa !81     ; 2 uses
  %.val4.i = load ptr, ptr %.val, align 8, !tbaa !130 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val3.i = load ptr, ptr %i.l, align 8, !tbaa !134
  %i.m = ptrtoint ptr %.val3.i to i64
  %i.n = ptrtoint ptr %.val4.i to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24                  ; 2 uses
  %i.q = icmp slt i64 %i.k, 0
  %i.r = select i1 %i.q, i64 %i.p, i64 0
  %spec.select.i.i = add nsw i64 %i.r, %i.k       ; 3 uses
  %i.s = icmp sgt i64 %spec.select.i.i, -1
  %.not.i.i = icmp ult i64 %spec.select.i.i, %i.p
  %or.cond.i.i = and i1 %i.s, %.not.i.i
  br i1 %or.cond.i.i, label %_ZZN8nanobind11bind_vectorISt6vectorIS1_IZL43nanobind_test_stl_bind_vector_ext_exec_implNS_7module_EE2ElSaIS3_EESaIS5_EELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS7_lE1_clESJ_l.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
