Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/shap?download=true
inline.NumInlined: 4414
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 49
begin_hunk_0_@"_ZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor14SparsePageViewINS_11CatAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a
  store float %i.fx, ptr %.sroa.9.0..sroa_idx130, align 8, !tbaa !97
  %i.gq = load ptr, ptr %.val75, align 8, !tbaa !446 ; 2 uses
  %i.gr = load ptr, ptr %i.cw, align 8, !tbaa !447
  %.not.i.i.i.i.i.i.i.i.i7.i.i = icmp eq ptr %i.gr, %i.gq
  br i1 %.not.i.i.i.i.i.i.i.i.i7.i.i, label %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i, label %_ZSt8_DestroyIPN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i8.i.i

_ZSt8_DestroyIPN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i8.i.i: ; preds = %bb.j
  store ptr %i.gq, ptr %i.cw, align 8, !tbaa !447
  br label %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i

_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i: ; preds = %_ZSt8_DestroyIPN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i8.i.i, %bb.j
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !268
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !18
  %i.gv = icmp eq i32 %i.gu, -1
  br i1 %i.gv, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.k

bb.k:                                             ; preds = %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <4 x float> splat (float 1.000000e+00), ptr %2, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i13.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(88) %4, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.k, %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit": ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0103.0137, i64 8 ; 2 uses
  %.not134 = icmp eq ptr %i.gw, %i.ex
  br i1 %.not134, label %._crit_edge.loopexit, label %.lr.ph

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !29 ; 2 uses
  store i64 %i.gy, ptr %i.a, align 8, !tbaa !29
  %i.gz = load ptr, ptr %i.cj, align 8, !tbaa !1140, !nonnull !198, !align !369 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !18, !noalias !1147
  %i.hb = zext i32 %i.ha to i64
  %i.hc = icmp eq i64 %i.gy, %i.hb
  br i1 %i.hc, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.l
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.gz)
  %.pr = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not135 = icmp eq ptr %.pr, null
  br i1 %.not135, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.hd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.m
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hd, ptr noundef nonnull @.str, i32 noundef 699)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.he = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hh = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !26
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !27
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef %i.hi, i64 noundef %i.hk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.q unwind label %bb.n

bb.n:                                             ; preds = %.noexc, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.p unwind label %bb.af

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.hn, %bb.n ], [ %i.ho, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr132 = load ptr, ptr %8, align 8, !tbaa !21  ; 4 uses
  %.not.i = icmp eq ptr %.pr132, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hp = load ptr, ptr %.pr132, align 8, !tbaa !26 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.pr132, i64 16 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !28
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.ht) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr132, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.hu = load ptr, ptr %i.db, align 8, !tbaa !1145, !nonnull !198, !align !199 ; 3 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !29
  %i.hw = mul i64 %i.hv, %i.ax
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !29
  %i.hz = mul i64 %i.hy, %indvars.iv
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 48
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !239
  %i.ic = getelementptr [4 x i8], ptr %i.ib, i64 %i.hw
  %i.id = getelementptr [4 x i8], ptr %i.ic, i64 %i.hz
  %i.ie = load float, ptr %i.id, align 4, !tbaa !97
  %i.if = load ptr, ptr %i.co, align 8, !tbaa !1141, !nonnull !198, !align !369
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !18 ; 2 uses
  %i.ih = add i32 %i.ig, -1
  %i.ii = zext i32 %i.ih to i64
  %i.ij = load ptr, ptr %i.as, align 8, !tbaa !94 ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.ii ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !97
  %i.im = fadd float %i.ie, %i.il
  store float %i.im, ptr %i.ik, align 4, !tbaa !97
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.in = load ptr, ptr %i.dc, align 8, !tbaa !1148, !nonnull !198, !align !199 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !29
  %i.ip = mul i64 %i.io, %indvars.iv
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !388
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.ip
  %i.it = load float, ptr %i.is, align 4, !tbaa !97
  %i.iu = fadd float %i.fk, %i.it
  store float %i.iu, ptr %i.fi, align 4, !tbaa !97
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.iv = phi ptr [ %i.ey, %bb.s ], [ %i.ij, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ] ; 3 uses
  %i.iw = phi i32 [ %i.ez, %bb.s ], [ %i.ig, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ] ; 4 uses
  %i.ix = phi ptr [ %i.fa, %bb.s ], [ %i.ij, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ]
  %i.iy = zext i32 %i.iw to i64                   ; 9 uses
  %.not153 = icmp eq i32 %i.iw, 0
  br i1 %.not153, label %._crit_edge148, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %bb.t
  %i.iz = add nsw i64 %i.iy, -1
  %ident.check.not = icmp eq i32 %i.dw, 1
  br label %.lr.ph143

.loopexit:                                        ; preds = %scalar.ph194.prol.loopexit, %scalar.ph194, %middle.block202, %.lr.ph143
  %exitcond155.not = icmp eq i64 %i.jb, %i.iy
  br i1 %exitcond155.not, label %.lr.ph147.preheader, label %.lr.ph143, !llvm.loop !1126

.lr.ph147.preheader:                              ; preds = %.loopexit
  %xtraiter218 = and i64 %i.iy, 3                 ; 3 uses
  %i.ja = icmp ult i32 %i.iw, 4
  %unroll_iter = and i64 %i.iy, 4294967292
  %lcmp.mod219.not = icmp eq i64 %xtraiter218, 0
  %lcmp.mod221 = icmp ne i64 %xtraiter218, 0
  br label %.lr.ph147

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %.loopexit
  %.068141 = phi i64 [ %i.jb, %.loopexit ], [ 0, %.lr.ph143.preheader ] ; 4 uses
  %10 = xor i64 %.068141, -1
  %11 = add nsw i64 %10, %i.iy                    ; 3 uses
  %i.jb = add nuw nsw i64 %.068141, 1             ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ei, i64 %.068141 ; 4 uses
  %i.jc = icmp samesign ult i64 %i.jb, %i.iy
  br i1 %i.jc, label %.lr.ph140, label %.loopexit

.lr.ph140:                                        ; preds = %.lr.ph143
  %i.jd = mul nuw i64 %.068141, %i.ej
  %i.je = getelementptr [4 x i8], ptr %i.ei, i64 %i.jd ; 4 uses
  %min.iters.check195 = icmp ugt i64 %11, 3
  %or.cond = select i1 %min.iters.check195, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph196, label %scalar.ph194.preheader

vector.ph196:                                     ; preds = %.lr.ph140
  %n.vec197 = and i64 %11, -4                     ; 3 uses
  %i.jf = add i64 %i.jb, %n.vec197
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next201, %vector.body198 ] ; 2 uses
  %i.jg = add nuw i64 %i.jb, %index199            ; 2 uses
  %i.jh = getelementptr [4 x i8], ptr %i.je, i64 %i.jg ; 2 uses
  %wide.load = load <4 x float>, ptr %i.jh, align 4, !tbaa !97
  %i.ji = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jg ; 2 uses
  %wide.load200 = load <4 x float>, ptr %i.ji, align 4, !tbaa !97
  %i.jj = fadd <4 x float> %wide.load, %wide.load200
  %i.jk = fmul <4 x float> %i.jj, splat (float 5.000000e-01) ; 2 uses
  store <4 x float> %i.jk, ptr %i.jh, align 4, !tbaa !97
  store <4 x float> %i.jk, ptr %i.ji, align 4, !tbaa !97
  %index.next201 = add nuw i64 %index199, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next201, %n.vec197
  br i1 %i.jl, label %middle.block202, label %vector.body198, !llvm.loop !1127

middle.block202:                                  ; preds = %vector.body198
  %cmp.n203 = icmp eq i64 %11, %n.vec197
  br i1 %cmp.n203, label %.loopexit, label %scalar.ph194.preheader

scalar.ph194.preheader:                           ; preds = %.lr.ph140, %middle.block202
  %.067138.ph = phi i64 [ %i.jb, %.lr.ph140 ], [ %i.jf, %middle.block202 ] ; 6 uses
  %i.jm = sub i64 %i.iy, %.067138.ph
  %xtraiter = and i64 %i.jm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph194.prol.loopexit, label %scalar.ph194.prol

scalar.ph194.prol:                                ; preds = %scalar.ph194.preheader
  %i.jn = getelementptr [4 x i8], ptr %i.je, i64 %.067138.ph ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !97
  %i.jp = mul i64 %.067138.ph, %i.ej
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jp ; 2 uses
  %i.jq = load float, ptr %gep.prol, align 4, !tbaa !97
  %i.jr = fadd float %i.jo, %i.jq
  %i.js = fmul float %i.jr, 5.000000e-01          ; 2 uses
  store float %i.js, ptr %i.jn, align 4, !tbaa !97
  store float %i.js, ptr %gep.prol, align 4, !tbaa !97
  %i.jt = add nuw nsw i64 %.067138.ph, 1
  br label %scalar.ph194.prol.loopexit

scalar.ph194.prol.loopexit:                       ; preds = %scalar.ph194.prol, %scalar.ph194.preheader
  %.067138.unr = phi i64 [ %.067138.ph, %scalar.ph194.preheader ], [ %i.jt, %scalar.ph194.prol ]
  %i.ju = icmp eq i64 %i.iz, %.067138.ph
  br i1 %i.ju, label %.loopexit, label %scalar.ph194

scalar.ph194:                                     ; preds = %scalar.ph194.prol.loopexit, %scalar.ph194
  %.067138 = phi i64 [ %i.ki, %scalar.ph194 ], [ %.067138.unr, %scalar.ph194.prol.loopexit ] ; 4 uses
  %i.jv = getelementptr [4 x i8], ptr %i.je, i64 %.067138 ; 2 uses
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !97
  %i.jx = mul i64 %.067138, %i.ej
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jx ; 2 uses
  %i.jy = load float, ptr %gep, align 4, !tbaa !97
  %i.jz = fadd float %i.jw, %i.jy
  %i.ka = fmul float %i.jz, 5.000000e-01          ; 2 uses
  store float %i.ka, ptr %i.jv, align 4, !tbaa !97
  store float %i.ka, ptr %gep, align 4, !tbaa !97
  %i.kb = add nuw nsw i64 %.067138, 1             ; 2 uses
  %i.kc = getelementptr [4 x i8], ptr %i.je, i64 %i.kb ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !97
  %i.ke = mul i64 %i.kb, %i.ej
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ke ; 2 uses
  %i.kf = load float, ptr %gep.1, align 4, !tbaa !97
  %i.kg = fadd float %i.kd, %i.kf
  %i.kh = fmul float %i.kg, 5.000000e-01          ; 2 uses
  store float %i.kh, ptr %i.kc, align 4, !tbaa !97
  store float %i.kh, ptr %gep.1, align 4, !tbaa !97
  %i.ki = add nuw nsw i64 %.067138, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ki, %i.iy
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph194, !llvm.loop !1128

._crit_edge148:                                   ; preds = %.epilog-lcssa, %bb.t
  %i.kj = phi ptr [ %i.ix, %bb.t ], [ %i.iv, %.epilog-lcssa ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kk = load ptr, ptr %i.cj, align 8, !tbaa !1140, !nonnull !198, !align !369
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !18 ; 2 uses
  %i.km = zext i32 %i.kl to i64
  %i.kn = icmp samesign ult i64 %indvars.iv.next, %i.km
  br i1 %i.kn, label %bb.g, label %._crit_edge151.loopexit, !llvm.loop !1129

.lr.ph147:                                        ; preds = %.lr.ph147.preheader, %.epilog-lcssa
  %.066146 = phi i64 [ %i.kx, %.epilog-lcssa ], [ 0, %.lr.ph147.preheader ] ; 9 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.066146
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !97 ; 2 uses
  %i.kq = mul nuw i64 %.066146, %i.ej
  %i.kr = getelementptr [4 x i8], ptr %i.ei, i64 %i.kq ; 6 uses
  br i1 %i.ja, label %.epil.preheader, label %.lr.ph147.new

.unr-lcssa:                                       ; preds = %bb.ae
  br i1 %lcmp.mod219.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph147
  %.0145.epil.init = phi i64 [ 0, %.lr.ph147 ], [ %i.ln, %.unr-lcssa ]
  %.065144.epil.init = phi float [ %i.kp, %.lr.ph147 ], [ %.1.3, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod221)
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.epil.preheader
  %.0145.epil = phi i64 [ %.0145.epil.init, %.epil.preheader ], [ %i.kv, %bb.w ] ; 3 uses
  %.065144.epil = phi float [ %.065144.epil.init, %.epil.preheader ], [ %.1.epil, %bb.w ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.w ]
  %.not74.epil = icmp eq i64 %.0145.epil, %.066146
  br i1 %.not74.epil, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ks = getelementptr [4 x i8], ptr %i.kr, i64 %.0145.epil
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !97
  %i.ku = fsub float %.065144.epil, %i.kt
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.epil = phi float [ %i.ku, %bb.v ], [ %.065144.epil, %bb.u ] ; 2 uses
  %i.kv = add nuw nsw i64 %.0145.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter218
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.u, !llvm.loop !1130

.epilog-lcssa:                                    ; preds = %bb.w, %.unr-lcssa
  %.1.lcssa = phi float [ %.1.3, %.unr-lcssa ], [ %.1.epil, %bb.w ]
  %i.kw = getelementptr [4 x i8], ptr %i.kr, i64 %.066146
  store float %.1.lcssa, ptr %i.kw, align 4, !tbaa !97
  %i.kx = add nuw nsw i64 %.066146, 1             ; 2 uses
  %exitcond157.not = icmp eq i64 %i.kx, %i.iy
  br i1 %exitcond157.not, label %._crit_edge148, label %.lr.ph147, !llvm.loop !1131

.lr.ph147.new:                                    ; preds = %.lr.ph147, %bb.ae
  %.0145 = phi i64 [ %i.ln, %bb.ae ], [ 0, %.lr.ph147 ] ; 6 uses
  %.065144 = phi float [ %.1.3, %bb.ae ], [ %i.kp, %.lr.ph147 ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %bb.ae ], [ 0, %.lr.ph147 ]
  %.not74 = icmp eq i64 %.0145, %.066146
  br i1 %.not74, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph147.new
  %i.ky = getelementptr [4 x i8], ptr %i.kr, i64 %.0145
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !97
  %i.la = fsub float %.065144, %i.kz
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph147.new, %bb.x
  %.1 = phi float [ %i.la, %bb.x ], [ %.065144, %.lr.ph147.new ] ; 2 uses
  %i.lb = or disjoint i64 %.0145, 1               ; 2 uses
  %.not74.1 = icmp eq i64 %i.lb, %.066146
  br i1 %.not74.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.lc = getelementptr [4 x i8], ptr %i.kr, i64 %i.lb
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !97
  %i.le = fsub float %.1, %i.ld
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1.1 = phi float [ %i.le, %bb.z ], [ %.1, %bb.y ] ; 2 uses
  %i.lf = or disjoint i64 %.0145, 2               ; 2 uses
  %.not74.2 = icmp eq i64 %i.lf, %.066146
  br i1 %.not74.2, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.lg = getelementptr [4 x i8], ptr %i.kr, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !97
  %i.li = fsub float %.1.1, %i.lh
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.2 = phi float [ %i.li, %bb.ab ], [ %.1.1, %bb.aa ] ; 2 uses
  %i.lj = or disjoint i64 %.0145, 3               ; 2 uses
  %.not74.3 = icmp eq i64 %i.lj, %.066146
  br i1 %.not74.3, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lk = getelementptr [4 x i8], ptr %i.kr, i64 %i.lj
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !97
  %i.lm = fsub float %.1.2, %i.ll
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.3 = phi float [ %i.lm, %bb.ad ], [ %.1.2, %bb.ac ] ; 3 uses
  %i.ln = add nuw nsw i64 %.0145, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.lr.ph147.new, !llvm.loop !1132

bb.af:                                            ; preds = %bb.o
  %i.lo = landingpad { ptr, i32 }
          catch ptr null
  %i.lp = extractvalue { ptr, i32 } %i.lo, 0
  call void @__clang_call_terminate(ptr %i.lp) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_34InteractionContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %2, float noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.std::array", align 16      ; 6 uses
end_hunk_0
begin_hunk_1_@"_ZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a
  store float %i.ev, ptr %.sroa.9.0..sroa_idx129, align 8, !tbaa !97
  %i.fo = load ptr, ptr %.val75, align 8, !tbaa !446 ; 2 uses
  %i.fp = load ptr, ptr %i.bu, align 8, !tbaa !447
  %.not.i.i.i.i.i.i.i.i.i7.i.i = icmp eq ptr %i.fp, %i.fo
  br i1 %.not.i.i.i.i.i.i.i.i.i7.i.i, label %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i, label %_ZSt8_DestroyIPN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i8.i.i

_ZSt8_DestroyIPN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i8.i.i: ; preds = %bb.h
  store ptr %i.fo, ptr %i.bu, align 8, !tbaa !447
  br label %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i

_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i: ; preds = %_ZSt8_DestroyIPN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i8.i.i, %bb.h
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !268
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !18
  %i.ft = icmp eq i32 %i.fs, -1
  br i1 %i.ft, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.i

bb.i:                                             ; preds = %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <4 x float> splat (float 1.000000e+00), ptr %2, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i13.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(88) %4, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.i, %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit": ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0102.0136, i64 8 ; 2 uses
  %.not133 = icmp eq ptr %i.fu, %i.dv
  br i1 %.not133, label %._crit_edge.loopexit, label %.lr.ph

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !29 ; 2 uses
  store i64 %i.fw, ptr %i.a, align 8, !tbaa !29
  %i.fx = load ptr, ptr %i.bh, align 8, !tbaa !1180, !nonnull !198, !align !369 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !18, !noalias !1187
  %i.fz = zext i32 %i.fy to i64
  %i.ga = icmp eq i64 %i.fw, %i.fz
  br i1 %i.ga, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.j
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.fx)
  %.pr = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not134 = icmp eq ptr %.pr, null
  br i1 %.not134, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.gb = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.gb, ptr noundef nonnull @.str, i32 noundef 699)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.l

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.gc = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.m ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gf = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !26
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !27
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef %i.gg, i64 noundef %i.gi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %.noexc, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.n unwind label %bb.ad

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.gl, %bb.l ], [ %i.gm, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr131 = load ptr, ptr %8, align 8, !tbaa !21  ; 4 uses
  %.not.i = icmp eq ptr %.pr131, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gn = load ptr, ptr %.pr131, align 8, !tbaa !26 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.pr131, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !28
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr131, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.o, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.gs = load ptr, ptr %i.bz, align 8, !tbaa !1185, !nonnull !198, !align !199 ; 3 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !29
  %i.gu = mul i64 %i.gt, %i.aw
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !29
  %i.gx = mul i64 %i.gw, %indvars.iv
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !239
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.gu
  %i.hb = getelementptr [4 x i8], ptr %i.ha, i64 %i.gx
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !97
  %i.hd = load ptr, ptr %i.bm, align 8, !tbaa !1181, !nonnull !198, !align !369
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !18 ; 2 uses
  %i.hf = add i32 %i.he, -1
  %i.hg = zext i32 %i.hf to i64
  %i.hh = load ptr, ptr %i.ar, align 8, !tbaa !94 ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hg ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !97
  %i.hk = fadd float %i.hc, %i.hj
  store float %i.hk, ptr %i.hi, align 4, !tbaa !97
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.hl = load ptr, ptr %i.ca, align 8, !tbaa !1188, !nonnull !198, !align !199 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !29
  %i.hn = mul i64 %i.hm, %indvars.iv
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !388
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hn
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !97
  %i.hs = fadd float %i.ei, %i.hr
  store float %i.hs, ptr %i.eg, align 4, !tbaa !97
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ht = phi ptr [ %i.dw, %bb.q ], [ %i.hh, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ] ; 3 uses
  %i.hu = phi i32 [ %i.dx, %bb.q ], [ %i.he, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ] ; 4 uses
  %i.hv = phi ptr [ %i.dy, %bb.q ], [ %i.hh, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ]
  %i.hw = zext i32 %i.hu to i64                   ; 9 uses
  %.not153 = icmp eq i32 %i.hu, 0
  br i1 %.not153, label %._crit_edge147, label %.lr.ph142.preheader

.lr.ph142.preheader:                              ; preds = %bb.r
  %i.hx = add nsw i64 %i.hw, -1
  %ident.check.not = icmp eq i32 %i.cu, 1
  br label %.lr.ph142

.loopexit:                                        ; preds = %scalar.ph190.prol.loopexit, %scalar.ph190, %middle.block198, %.lr.ph142
  %exitcond155.not = icmp eq i64 %i.hz, %i.hw
  br i1 %exitcond155.not, label %.lr.ph146.preheader, label %.lr.ph142, !llvm.loop !1166

.lr.ph146.preheader:                              ; preds = %.loopexit
  %xtraiter214 = and i64 %i.hw, 3                 ; 3 uses
  %i.hy = icmp ult i32 %i.hu, 4
  %unroll_iter = and i64 %i.hw, 4294967292
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  %lcmp.mod217 = icmp ne i64 %xtraiter214, 0
  br label %.lr.ph146

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %.loopexit
  %.068140 = phi i64 [ %i.hz, %.loopexit ], [ 0, %.lr.ph142.preheader ] ; 4 uses
  %10 = xor i64 %.068140, -1
  %11 = add nsw i64 %10, %i.hw                    ; 3 uses
  %i.hz = add nuw nsw i64 %.068140, 1             ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.dg, i64 %.068140 ; 4 uses
  %i.ia = icmp samesign ult i64 %i.hz, %i.hw
  br i1 %i.ia, label %.lr.ph139, label %.loopexit

.lr.ph139:                                        ; preds = %.lr.ph142
  %i.ib = mul nuw i64 %.068140, %i.dh
  %i.ic = getelementptr [4 x i8], ptr %i.dg, i64 %i.ib ; 4 uses
  %min.iters.check191 = icmp ugt i64 %11, 3
  %or.cond = select i1 %min.iters.check191, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph192, label %scalar.ph190.preheader

vector.ph192:                                     ; preds = %.lr.ph139
  %n.vec193 = and i64 %11, -4                     ; 3 uses
  %i.id = add i64 %i.hz, %n.vec193
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next197, %vector.body194 ] ; 2 uses
  %i.ie = add nuw i64 %i.hz, %index195            ; 2 uses
  %i.if = getelementptr [4 x i8], ptr %i.ic, i64 %i.ie ; 2 uses
  %wide.load = load <4 x float>, ptr %i.if, align 4, !tbaa !97
  %i.ig = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ie ; 2 uses
  %wide.load196 = load <4 x float>, ptr %i.ig, align 4, !tbaa !97
  %i.ih = fadd <4 x float> %wide.load, %wide.load196
  %i.ii = fmul <4 x float> %i.ih, splat (float 5.000000e-01) ; 2 uses
  store <4 x float> %i.ii, ptr %i.if, align 4, !tbaa !97
  store <4 x float> %i.ii, ptr %i.ig, align 4, !tbaa !97
  %index.next197 = add nuw i64 %index195, 4       ; 2 uses
  %i.ij = icmp eq i64 %index.next197, %n.vec193
  br i1 %i.ij, label %middle.block198, label %vector.body194, !llvm.loop !1167

middle.block198:                                  ; preds = %vector.body194
  %cmp.n199 = icmp eq i64 %11, %n.vec193
  br i1 %cmp.n199, label %.loopexit, label %scalar.ph190.preheader

scalar.ph190.preheader:                           ; preds = %.lr.ph139, %middle.block198
  %.067137.ph = phi i64 [ %i.hz, %.lr.ph139 ], [ %i.id, %middle.block198 ] ; 6 uses
  %i.ik = sub i64 %i.hw, %.067137.ph
  %xtraiter = and i64 %i.ik, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph190.prol.loopexit, label %scalar.ph190.prol

scalar.ph190.prol:                                ; preds = %scalar.ph190.preheader
  %i.il = getelementptr [4 x i8], ptr %i.ic, i64 %.067137.ph ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !97
  %i.in = mul i64 %.067137.ph, %i.dh
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.in ; 2 uses
  %i.io = load float, ptr %gep.prol, align 4, !tbaa !97
  %i.ip = fadd float %i.im, %i.io
  %i.iq = fmul float %i.ip, 5.000000e-01          ; 2 uses
  store float %i.iq, ptr %i.il, align 4, !tbaa !97
  store float %i.iq, ptr %gep.prol, align 4, !tbaa !97
  %i.ir = add nuw nsw i64 %.067137.ph, 1
  br label %scalar.ph190.prol.loopexit

scalar.ph190.prol.loopexit:                       ; preds = %scalar.ph190.prol, %scalar.ph190.preheader
  %.067137.unr = phi i64 [ %.067137.ph, %scalar.ph190.preheader ], [ %i.ir, %scalar.ph190.prol ]
  %i.is = icmp eq i64 %i.hx, %.067137.ph
  br i1 %i.is, label %.loopexit, label %scalar.ph190

scalar.ph190:                                     ; preds = %scalar.ph190.prol.loopexit, %scalar.ph190
  %.067137 = phi i64 [ %i.jg, %scalar.ph190 ], [ %.067137.unr, %scalar.ph190.prol.loopexit ] ; 4 uses
  %i.it = getelementptr [4 x i8], ptr %i.ic, i64 %.067137 ; 2 uses
  %i.iu = load float, ptr %i.it, align 4, !tbaa !97
  %i.iv = mul i64 %.067137, %i.dh
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.iv ; 2 uses
  %i.iw = load float, ptr %gep, align 4, !tbaa !97
  %i.ix = fadd float %i.iu, %i.iw
  %i.iy = fmul float %i.ix, 5.000000e-01          ; 2 uses
  store float %i.iy, ptr %i.it, align 4, !tbaa !97
  store float %i.iy, ptr %gep, align 4, !tbaa !97
  %i.iz = add nuw nsw i64 %.067137, 1             ; 2 uses
  %i.ja = getelementptr [4 x i8], ptr %i.ic, i64 %i.iz ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !97
  %i.jc = mul i64 %i.iz, %i.dh
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jc ; 2 uses
  %i.jd = load float, ptr %gep.1, align 4, !tbaa !97
  %i.je = fadd float %i.jb, %i.jd
  %i.jf = fmul float %i.je, 5.000000e-01          ; 2 uses
  store float %i.jf, ptr %i.ja, align 4, !tbaa !97
  store float %i.jf, ptr %gep.1, align 4, !tbaa !97
  %i.jg = add nuw nsw i64 %.067137, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.jg, %i.hw
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph190, !llvm.loop !1168

._crit_edge147:                                   ; preds = %.epilog-lcssa, %bb.r
  %i.jh = phi ptr [ %i.hv, %bb.r ], [ %i.ht, %.epilog-lcssa ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ji = load ptr, ptr %i.bh, align 8, !tbaa !1180, !nonnull !198, !align !369
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !18 ; 2 uses
  %i.jk = zext i32 %i.jj to i64
  %i.jl = icmp samesign ult i64 %indvars.iv.next, %i.jk
  br i1 %i.jl, label %bb.e, label %._crit_edge151.loopexit, !llvm.loop !1169

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %.epilog-lcssa
  %.066145 = phi i64 [ %i.jv, %.epilog-lcssa ], [ 0, %.lr.ph146.preheader ] ; 9 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.066145
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !97 ; 2 uses
  %i.jo = mul nuw i64 %.066145, %i.dh
  %i.jp = getelementptr [4 x i8], ptr %i.dg, i64 %i.jo ; 6 uses
  br i1 %i.hy, label %.epil.preheader, label %.lr.ph146.new

.unr-lcssa:                                       ; preds = %bb.ac
  br i1 %lcmp.mod215.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph146
  %.0144.epil.init = phi i64 [ 0, %.lr.ph146 ], [ %i.kl, %.unr-lcssa ]
  %.065143.epil.init = phi float [ %i.jn, %.lr.ph146 ], [ %.1.3, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod217)
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.epil.preheader
  %.0144.epil = phi i64 [ %.0144.epil.init, %.epil.preheader ], [ %i.jt, %bb.u ] ; 3 uses
  %.065143.epil = phi float [ %.065143.epil.init, %.epil.preheader ], [ %.1.epil, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %.not74.epil = icmp eq i64 %.0144.epil, %.066145
  br i1 %.not74.epil, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.jq = getelementptr [4 x i8], ptr %i.jp, i64 %.0144.epil
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !97
  %i.js = fsub float %.065143.epil, %i.jr
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.epil = phi float [ %i.js, %bb.t ], [ %.065143.epil, %bb.s ] ; 2 uses
  %i.jt = add nuw nsw i64 %.0144.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter214
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.s, !llvm.loop !1170

.epilog-lcssa:                                    ; preds = %bb.u, %.unr-lcssa
  %.1.lcssa = phi float [ %.1.3, %.unr-lcssa ], [ %.1.epil, %bb.u ]
  %i.ju = getelementptr [4 x i8], ptr %i.jp, i64 %.066145
  store float %.1.lcssa, ptr %i.ju, align 4, !tbaa !97
  %i.jv = add nuw nsw i64 %.066145, 1             ; 2 uses
  %exitcond157.not = icmp eq i64 %i.jv, %i.hw
  br i1 %exitcond157.not, label %._crit_edge147, label %.lr.ph146, !llvm.loop !1171

.lr.ph146.new:                                    ; preds = %.lr.ph146, %bb.ac
  %.0144 = phi i64 [ %i.kl, %bb.ac ], [ 0, %.lr.ph146 ] ; 6 uses
  %.065143 = phi float [ %.1.3, %bb.ac ], [ %i.jn, %.lr.ph146 ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %bb.ac ], [ 0, %.lr.ph146 ]
  %.not74 = icmp eq i64 %.0144, %.066145
  br i1 %.not74, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph146.new
  %i.jw = getelementptr [4 x i8], ptr %i.jp, i64 %.0144
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !97
  %i.jy = fsub float %.065143, %i.jx
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph146.new, %bb.v
  %.1 = phi float [ %i.jy, %bb.v ], [ %.065143, %.lr.ph146.new ] ; 2 uses
  %i.jz = or disjoint i64 %.0144, 1               ; 2 uses
  %.not74.1 = icmp eq i64 %i.jz, %.066145
  br i1 %.not74.1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ka = getelementptr [4 x i8], ptr %i.jp, i64 %i.jz
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !97
  %i.kc = fsub float %.1, %i.kb
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.1 = phi float [ %i.kc, %bb.x ], [ %.1, %bb.w ] ; 2 uses
  %i.kd = or disjoint i64 %.0144, 2               ; 2 uses
  %.not74.2 = icmp eq i64 %i.kd, %.066145
  br i1 %.not74.2, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ke = getelementptr [4 x i8], ptr %i.jp, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !97
  %i.kg = fsub float %.1.1, %i.kf
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1.2 = phi float [ %i.kg, %bb.z ], [ %.1.1, %bb.y ] ; 2 uses
  %i.kh = or disjoint i64 %.0144, 3               ; 2 uses
  %.not74.3 = icmp eq i64 %i.kh, %.066145
  br i1 %.not74.3, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ki = getelementptr [4 x i8], ptr %i.jp, i64 %i.kh
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !97
  %i.kk = fsub float %.1.2, %i.kj
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.3 = phi float [ %i.kk, %bb.ab ], [ %.1.2, %bb.aa ] ; 3 uses
  %i.kl = add nuw nsw i64 %.0144, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.lr.ph146.new, !llvm.loop !1172

bb.ad:                                            ; preds = %bb.m
  %i.km = landingpad { ptr, i32 }
          catch ptr null
  %i.kn = extractvalue { ptr, i32 } %i.km, 0
  call void @__clang_call_terminate(ptr %i.kn) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor14SparsePageViewINS_12NoOpAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array", align 16      ; 5 uses
end_hunk_1
begin_hunk_2_@"_ZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor14SparsePageViewINS_12NoOpAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a
  store float %i.gn, ptr %.sroa.9.0..sroa_idx129, align 8, !tbaa !97
  %i.hg = load ptr, ptr %.val75, align 8, !tbaa !446 ; 2 uses
  %i.hh = load ptr, ptr %i.dm, align 8, !tbaa !447
  %.not.i.i.i.i.i.i.i.i.i7.i.i = icmp eq ptr %i.hh, %i.hg
  br i1 %.not.i.i.i.i.i.i.i.i.i7.i.i, label %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i, label %_ZSt8_DestroyIPN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i8.i.i

_ZSt8_DestroyIPN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i8.i.i: ; preds = %bb.i
  store ptr %i.hg, ptr %i.dm, align 8, !tbaa !447
  br label %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i

_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i: ; preds = %_ZSt8_DestroyIPN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i8.i.i, %bb.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !268
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !18
  %i.hl = icmp eq i32 %i.hk, -1
  br i1 %i.hl, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.j

bb.j:                                             ; preds = %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <4 x float> splat (float 1.000000e+00), ptr %2, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i13.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(88) %4, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.j, %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit": ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0102.0136, i64 8 ; 2 uses
  %.not133 = icmp eq ptr %i.hm, %i.fn
  br i1 %.not133, label %._crit_edge.loopexit, label %.lr.ph

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !29 ; 2 uses
  store i64 %i.ho, ptr %i.a, align 8, !tbaa !29
  %i.hp = load ptr, ptr %i.cz, align 8, !tbaa !1210, !nonnull !198, !align !369 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !18, !noalias !1217
  %i.hr = zext i32 %i.hq to i64
  %i.hs = icmp eq i64 %i.ho, %i.hr
  br i1 %i.hs, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.k
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.hp)
  %.pr = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not134 = icmp eq ptr %.pr, null
  br i1 %.not134, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.ht = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ht, ptr noundef nonnull @.str, i32 noundef 699)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.m

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.hu = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.n ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hx = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !26
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !27
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef %i.hy, i64 noundef %i.ia)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92
  %i.ic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %.noexc, %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.id, %bb.m ], [ %i.ie, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr131 = load ptr, ptr %8, align 8, !tbaa !21  ; 4 uses
  %.not.i = icmp eq ptr %.pr131, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.if = load ptr, ptr %.pr131, align 8, !tbaa !26 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.pr131, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !28
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr131, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.ik = load ptr, ptr %i.dr, align 8, !tbaa !1215, !nonnull !198, !align !199 ; 3 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !29
  %i.im = mul i64 %i.il, %i.ax
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !29
  %i.ip = mul i64 %i.io, %indvars.iv
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !239
  %i.is = getelementptr [4 x i8], ptr %i.ir, i64 %i.im
  %i.it = getelementptr [4 x i8], ptr %i.is, i64 %i.ip
  %i.iu = load float, ptr %i.it, align 4, !tbaa !97
  %i.iv = load ptr, ptr %i.de, align 8, !tbaa !1211, !nonnull !198, !align !369
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !18 ; 2 uses
  %i.ix = add i32 %i.iw, -1
  %i.iy = zext i32 %i.ix to i64
  %i.iz = load ptr, ptr %i.as, align 8, !tbaa !94 ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.iy ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !97
  %i.jc = fadd float %i.iu, %i.jb
  store float %i.jc, ptr %i.ja, align 4, !tbaa !97
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.jd = load ptr, ptr %i.ds, align 8, !tbaa !1218, !nonnull !198, !align !199 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !29
  %i.jf = mul i64 %i.je, %indvars.iv
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !388
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jf
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !97
  %i.jk = fadd float %i.ga, %i.jj
  store float %i.jk, ptr %i.fy, align 4, !tbaa !97
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.jl = phi ptr [ %i.fo, %bb.r ], [ %i.iz, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ] ; 3 uses
  %i.jm = phi i32 [ %i.fp, %bb.r ], [ %i.iw, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ] ; 4 uses
  %i.jn = phi ptr [ %i.fq, %bb.r ], [ %i.iz, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ]
  %i.jo = zext i32 %i.jm to i64                   ; 9 uses
  %.not152 = icmp eq i32 %i.jm, 0
  br i1 %.not152, label %._crit_edge147, label %.lr.ph142.preheader

.lr.ph142.preheader:                              ; preds = %bb.s
  %i.jp = add nsw i64 %i.jo, -1
  %ident.check.not = icmp eq i32 %i.em, 1
  br label %.lr.ph142

.loopexit:                                        ; preds = %scalar.ph197.prol.loopexit, %scalar.ph197, %middle.block205, %.lr.ph142
  %exitcond154.not = icmp eq i64 %i.jr, %i.jo
  br i1 %exitcond154.not, label %.lr.ph146.preheader, label %.lr.ph142, !llvm.loop !1196

.lr.ph146.preheader:                              ; preds = %.loopexit
  %xtraiter224 = and i64 %i.jo, 3                 ; 3 uses
  %i.jq = icmp ult i32 %i.jm, 4
  %unroll_iter229 = and i64 %i.jo, 4294967292
  %lcmp.mod226.not = icmp eq i64 %xtraiter224, 0
  %lcmp.mod228 = icmp ne i64 %xtraiter224, 0
  br label %.lr.ph146

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %.loopexit
  %.068140 = phi i64 [ %i.jr, %.loopexit ], [ 0, %.lr.ph142.preheader ] ; 4 uses
  %10 = xor i64 %.068140, -1
  %11 = add nsw i64 %10, %i.jo                    ; 3 uses
  %i.jr = add nuw nsw i64 %.068140, 1             ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ey, i64 %.068140 ; 4 uses
  %i.js = icmp samesign ult i64 %i.jr, %i.jo
  br i1 %i.js, label %.lr.ph139, label %.loopexit

.lr.ph139:                                        ; preds = %.lr.ph142
  %i.jt = mul nuw i64 %.068140, %i.ez
  %i.ju = getelementptr [4 x i8], ptr %i.ey, i64 %i.jt ; 4 uses
  %min.iters.check198 = icmp ugt i64 %11, 3
  %or.cond = select i1 %min.iters.check198, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph199, label %scalar.ph197.preheader

vector.ph199:                                     ; preds = %.lr.ph139
  %n.vec200 = and i64 %11, -4                     ; 3 uses
  %i.jv = add i64 %i.jr, %n.vec200
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next204, %vector.body201 ] ; 2 uses
  %i.jw = add nuw i64 %i.jr, %index202            ; 2 uses
  %i.jx = getelementptr [4 x i8], ptr %i.ju, i64 %i.jw ; 2 uses
  %wide.load = load <4 x float>, ptr %i.jx, align 4, !tbaa !97
  %i.jy = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jw ; 2 uses
  %wide.load203 = load <4 x float>, ptr %i.jy, align 4, !tbaa !97
  %i.jz = fadd <4 x float> %wide.load, %wide.load203
  %i.ka = fmul <4 x float> %i.jz, splat (float 5.000000e-01) ; 2 uses
  store <4 x float> %i.ka, ptr %i.jx, align 4, !tbaa !97
  store <4 x float> %i.ka, ptr %i.jy, align 4, !tbaa !97
  %index.next204 = add nuw i64 %index202, 4       ; 2 uses
  %i.kb = icmp eq i64 %index.next204, %n.vec200
  br i1 %i.kb, label %middle.block205, label %vector.body201, !llvm.loop !1197

middle.block205:                                  ; preds = %vector.body201
  %cmp.n206 = icmp eq i64 %11, %n.vec200
  br i1 %cmp.n206, label %.loopexit, label %scalar.ph197.preheader

scalar.ph197.preheader:                           ; preds = %.lr.ph139, %middle.block205
  %.067137.ph = phi i64 [ %i.jr, %.lr.ph139 ], [ %i.jv, %middle.block205 ] ; 6 uses
  %i.kc = sub i64 %i.jo, %.067137.ph
  %xtraiter222 = and i64 %i.kc, 1
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %scalar.ph197.prol.loopexit, label %scalar.ph197.prol

scalar.ph197.prol:                                ; preds = %scalar.ph197.preheader
  %i.kd = getelementptr [4 x i8], ptr %i.ju, i64 %.067137.ph ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !97
  %i.kf = mul i64 %.067137.ph, %i.ez
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kf ; 2 uses
  %i.kg = load float, ptr %gep.prol, align 4, !tbaa !97
  %i.kh = fadd float %i.ke, %i.kg
  %i.ki = fmul float %i.kh, 5.000000e-01          ; 2 uses
  store float %i.ki, ptr %i.kd, align 4, !tbaa !97
  store float %i.ki, ptr %gep.prol, align 4, !tbaa !97
  %i.kj = add nuw nsw i64 %.067137.ph, 1
  br label %scalar.ph197.prol.loopexit

scalar.ph197.prol.loopexit:                       ; preds = %scalar.ph197.prol, %scalar.ph197.preheader
  %.067137.unr = phi i64 [ %.067137.ph, %scalar.ph197.preheader ], [ %i.kj, %scalar.ph197.prol ]
  %i.kk = icmp eq i64 %i.jp, %.067137.ph
  br i1 %i.kk, label %.loopexit, label %scalar.ph197

scalar.ph197:                                     ; preds = %scalar.ph197.prol.loopexit, %scalar.ph197
  %.067137 = phi i64 [ %i.ky, %scalar.ph197 ], [ %.067137.unr, %scalar.ph197.prol.loopexit ] ; 4 uses
  %i.kl = getelementptr [4 x i8], ptr %i.ju, i64 %.067137 ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !97
  %i.kn = mul i64 %.067137, %i.ez
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kn ; 2 uses
  %i.ko = load float, ptr %gep, align 4, !tbaa !97
  %i.kp = fadd float %i.km, %i.ko
  %i.kq = fmul float %i.kp, 5.000000e-01          ; 2 uses
  store float %i.kq, ptr %i.kl, align 4, !tbaa !97
  store float %i.kq, ptr %gep, align 4, !tbaa !97
  %i.kr = add nuw nsw i64 %.067137, 1             ; 2 uses
  %i.ks = getelementptr [4 x i8], ptr %i.ju, i64 %i.kr ; 2 uses
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !97
  %i.ku = mul i64 %i.kr, %i.ez
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ku ; 2 uses
  %i.kv = load float, ptr %gep.1, align 4, !tbaa !97
  %i.kw = fadd float %i.kt, %i.kv
  %i.kx = fmul float %i.kw, 5.000000e-01          ; 2 uses
  store float %i.kx, ptr %i.ks, align 4, !tbaa !97
  store float %i.kx, ptr %gep.1, align 4, !tbaa !97
  %i.ky = add nuw nsw i64 %.067137, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ky, %i.jo
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph197, !llvm.loop !1198

._crit_edge147:                                   ; preds = %.epilog-lcssa, %bb.s
  %i.kz = phi ptr [ %i.jn, %bb.s ], [ %i.jl, %.epilog-lcssa ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.la = load ptr, ptr %i.cz, align 8, !tbaa !1210, !nonnull !198, !align !369
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !18 ; 2 uses
  %i.lc = zext i32 %i.lb to i64
  %i.ld = icmp samesign ult i64 %indvars.iv.next, %i.lc
  br i1 %i.ld, label %bb.f, label %._crit_edge150.loopexit, !llvm.loop !1199

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %.epilog-lcssa
  %.066145 = phi i64 [ %i.ln, %.epilog-lcssa ], [ 0, %.lr.ph146.preheader ] ; 9 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %.066145
  %i.lf = load float, ptr %i.le, align 4, !tbaa !97 ; 2 uses
  %i.lg = mul nuw i64 %.066145, %i.ez
  %i.lh = getelementptr [4 x i8], ptr %i.ey, i64 %i.lg ; 6 uses
  br i1 %i.jq, label %.epil.preheader, label %.lr.ph146.new

.unr-lcssa:                                       ; preds = %bb.ad
  br i1 %lcmp.mod226.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph146
  %.0144.epil.init = phi i64 [ 0, %.lr.ph146 ], [ %i.md, %.unr-lcssa ]
  %.065143.epil.init = phi float [ %i.lf, %.lr.ph146 ], [ %.1.3, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod228)
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.epil.preheader
  %.0144.epil = phi i64 [ %.0144.epil.init, %.epil.preheader ], [ %i.ll, %bb.v ] ; 3 uses
  %.065143.epil = phi float [ %.065143.epil.init, %.epil.preheader ], [ %.1.epil, %bb.v ] ; 2 uses
  %epil.iter225 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter225.next, %bb.v ]
  %.not74.epil = icmp eq i64 %.0144.epil, %.066145
  br i1 %.not74.epil, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.li = getelementptr [4 x i8], ptr %i.lh, i64 %.0144.epil
  %i.lj = load float, ptr %i.li, align 4, !tbaa !97
  %i.lk = fsub float %.065143.epil, %i.lj
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.epil = phi float [ %i.lk, %bb.u ], [ %.065143.epil, %bb.t ] ; 2 uses
  %i.ll = add nuw nsw i64 %.0144.epil, 1
  %epil.iter225.next = add i64 %epil.iter225, 1   ; 2 uses
  %epil.iter225.cmp.not = icmp eq i64 %epil.iter225.next, %xtraiter224
  br i1 %epil.iter225.cmp.not, label %.epilog-lcssa, label %bb.t, !llvm.loop !1200

.epilog-lcssa:                                    ; preds = %bb.v, %.unr-lcssa
  %.1.lcssa = phi float [ %.1.3, %.unr-lcssa ], [ %.1.epil, %bb.v ]
  %i.lm = getelementptr [4 x i8], ptr %i.lh, i64 %.066145
  store float %.1.lcssa, ptr %i.lm, align 4, !tbaa !97
  %i.ln = add nuw nsw i64 %.066145, 1             ; 2 uses
  %exitcond156.not = icmp eq i64 %i.ln, %i.jo
  br i1 %exitcond156.not, label %._crit_edge147, label %.lr.ph146, !llvm.loop !1201

.lr.ph146.new:                                    ; preds = %.lr.ph146, %bb.ad
  %.0144 = phi i64 [ %i.md, %bb.ad ], [ 0, %.lr.ph146 ] ; 6 uses
  %.065143 = phi float [ %.1.3, %bb.ad ], [ %i.lf, %.lr.ph146 ] ; 2 uses
  %niter230 = phi i64 [ %niter230.next.3, %bb.ad ], [ 0, %.lr.ph146 ]
  %.not74 = icmp eq i64 %.0144, %.066145
  br i1 %.not74, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph146.new
  %i.lo = getelementptr [4 x i8], ptr %i.lh, i64 %.0144
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !97
  %i.lq = fsub float %.065143, %i.lp
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph146.new, %bb.w
  %.1 = phi float [ %i.lq, %bb.w ], [ %.065143, %.lr.ph146.new ] ; 2 uses
  %i.lr = or disjoint i64 %.0144, 1               ; 2 uses
  %.not74.1 = icmp eq i64 %i.lr, %.066145
  br i1 %.not74.1, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ls = getelementptr [4 x i8], ptr %i.lh, i64 %i.lr
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !97
  %i.lu = fsub float %.1, %i.lt
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1.1 = phi float [ %i.lu, %bb.y ], [ %.1, %bb.x ] ; 2 uses
  %i.lv = or disjoint i64 %.0144, 2               ; 2 uses
  %.not74.2 = icmp eq i64 %i.lv, %.066145
  br i1 %.not74.2, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lw = getelementptr [4 x i8], ptr %i.lh, i64 %i.lv
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !97
  %i.ly = fsub float %.1.1, %i.lx
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1.2 = phi float [ %i.ly, %bb.aa ], [ %.1.1, %bb.z ] ; 2 uses
  %i.lz = or disjoint i64 %.0144, 3               ; 2 uses
  %.not74.3 = icmp eq i64 %i.lz, %.066145
  br i1 %.not74.3, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ma = getelementptr [4 x i8], ptr %i.lh, i64 %i.lz
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !97
  %i.mc = fsub float %.1.2, %i.mb
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1.3 = phi float [ %i.mc, %bb.ac ], [ %.1.2, %bb.ab ] ; 3 uses
  %i.md = add nuw nsw i64 %.0144, 4               ; 2 uses
  %niter230.next.3 = add i64 %niter230, 4         ; 2 uses
  %niter230.ncmp.3 = icmp eq i64 %niter230.next.3, %unroll_iter229
  br i1 %niter230.ncmp.3, label %.unr-lcssa, label %.lr.ph146.new, !llvm.loop !1202

bb.ae:                                            ; preds = %bb.n
  %i.me = landingpad { ptr, i32 }
          catch ptr null
  %i.mf = extractvalue { ptr, i32 } %i.me, 0
  call void @__clang_call_terminate(ptr %i.mf) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array", align 16      ; 5 uses
end_hunk_2
begin_hunk_3_@"_ZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a
  store float %i.ev, ptr %.sroa.9.0..sroa_idx129, align 8, !tbaa !97
  %i.fo = load ptr, ptr %.val75, align 8, !tbaa !446 ; 2 uses
  %i.fp = load ptr, ptr %i.bu, align 8, !tbaa !447
  %.not.i.i.i.i.i.i.i.i.i7.i.i = icmp eq ptr %i.fp, %i.fo
  br i1 %.not.i.i.i.i.i.i.i.i.i7.i.i, label %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i, label %_ZSt8_DestroyIPN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i8.i.i

_ZSt8_DestroyIPN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i8.i.i: ; preds = %bb.h
  store ptr %i.fo, ptr %i.bu, align 8, !tbaa !447
  br label %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i

_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i: ; preds = %_ZSt8_DestroyIPN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i8.i.i, %bb.h
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !268
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !18
  %i.ft = icmp eq i32 %i.fs, -1
  br i1 %i.ft, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.i

bb.i:                                             ; preds = %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <4 x float> splat (float 1.000000e+00), ptr %2, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i13.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(88) %4, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.i, %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation9ResetPathEv.exit.i.i.i.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit": ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0102.0136, i64 8 ; 2 uses
  %.not133 = icmp eq ptr %i.fu, %i.dv
  br i1 %.not133, label %._crit_edge.loopexit, label %.lr.ph

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !29 ; 2 uses
  store i64 %i.fw, ptr %i.a, align 8, !tbaa !29
  %i.fx = load ptr, ptr %i.bh, align 8, !tbaa !1239, !nonnull !198, !align !369 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !18, !noalias !1246
  %i.fz = zext i32 %i.fy to i64
  %i.ga = icmp eq i64 %i.fw, %i.fz
  br i1 %i.ga, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.j
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.fx)
  %.pr = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not134 = icmp eq ptr %.pr, null
  br i1 %.not134, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.gb = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.gb, ptr noundef nonnull @.str, i32 noundef 699)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.l

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.gc = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.m ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gf = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !26
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !27
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef %i.gg, i64 noundef %i.gi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %.noexc, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.n unwind label %bb.ad

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.gl, %bb.l ], [ %i.gm, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr131 = load ptr, ptr %8, align 8, !tbaa !21  ; 4 uses
  %.not.i = icmp eq ptr %.pr131, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gn = load ptr, ptr %.pr131, align 8, !tbaa !26 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.pr131, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !28
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr131, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.o, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.gs = load ptr, ptr %i.bz, align 8, !tbaa !1244, !nonnull !198, !align !199 ; 3 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !29
  %i.gu = mul i64 %i.gt, %i.aw
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !29
  %i.gx = mul i64 %i.gw, %indvars.iv
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !239
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.gu
  %i.hb = getelementptr [4 x i8], ptr %i.ha, i64 %i.gx
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !97
  %i.hd = load ptr, ptr %i.bm, align 8, !tbaa !1240, !nonnull !198, !align !369
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !18 ; 2 uses
  %i.hf = add i32 %i.he, -1
  %i.hg = zext i32 %i.hf to i64
  %i.hh = load ptr, ptr %i.ar, align 8, !tbaa !94 ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hg ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !97
  %i.hk = fadd float %i.hc, %i.hj
  store float %i.hk, ptr %i.hi, align 4, !tbaa !97
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.hl = load ptr, ptr %i.ca, align 8, !tbaa !1247, !nonnull !198, !align !199 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !29
  %i.hn = mul i64 %i.hm, %indvars.iv
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !388
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hn
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !97
  %i.hs = fadd float %i.ei, %i.hr
  store float %i.hs, ptr %i.eg, align 4, !tbaa !97
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ht = phi ptr [ %i.dw, %bb.q ], [ %i.hh, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ] ; 3 uses
  %i.hu = phi i32 [ %i.dx, %bb.q ], [ %i.he, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ] ; 4 uses
  %i.hv = phi ptr [ %i.dy, %bb.q ], [ %i.hh, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ]
  %i.hw = zext i32 %i.hu to i64                   ; 9 uses
  %.not153 = icmp eq i32 %i.hu, 0
  br i1 %.not153, label %._crit_edge147, label %.lr.ph142.preheader

.lr.ph142.preheader:                              ; preds = %bb.r
  %i.hx = add nsw i64 %i.hw, -1
  %ident.check.not = icmp eq i32 %i.cu, 1
  br label %.lr.ph142

.loopexit:                                        ; preds = %scalar.ph190.prol.loopexit, %scalar.ph190, %middle.block198, %.lr.ph142
  %exitcond155.not = icmp eq i64 %i.hz, %i.hw
  br i1 %exitcond155.not, label %.lr.ph146.preheader, label %.lr.ph142, !llvm.loop !1225

.lr.ph146.preheader:                              ; preds = %.loopexit
  %xtraiter214 = and i64 %i.hw, 3                 ; 3 uses
  %i.hy = icmp ult i32 %i.hu, 4
  %unroll_iter = and i64 %i.hw, 4294967292
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  %lcmp.mod217 = icmp ne i64 %xtraiter214, 0
  br label %.lr.ph146

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %.loopexit
  %.068140 = phi i64 [ %i.hz, %.loopexit ], [ 0, %.lr.ph142.preheader ] ; 4 uses
  %10 = xor i64 %.068140, -1
  %11 = add nsw i64 %10, %i.hw                    ; 3 uses
  %i.hz = add nuw nsw i64 %.068140, 1             ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.dg, i64 %.068140 ; 4 uses
  %i.ia = icmp samesign ult i64 %i.hz, %i.hw
  br i1 %i.ia, label %.lr.ph139, label %.loopexit

.lr.ph139:                                        ; preds = %.lr.ph142
  %i.ib = mul nuw i64 %.068140, %i.dh
  %i.ic = getelementptr [4 x i8], ptr %i.dg, i64 %i.ib ; 4 uses
  %min.iters.check191 = icmp ugt i64 %11, 3
  %or.cond = select i1 %min.iters.check191, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph192, label %scalar.ph190.preheader

vector.ph192:                                     ; preds = %.lr.ph139
  %n.vec193 = and i64 %11, -4                     ; 3 uses
  %i.id = add i64 %i.hz, %n.vec193
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next197, %vector.body194 ] ; 2 uses
  %i.ie = add nuw i64 %i.hz, %index195            ; 2 uses
  %i.if = getelementptr [4 x i8], ptr %i.ic, i64 %i.ie ; 2 uses
  %wide.load = load <4 x float>, ptr %i.if, align 4, !tbaa !97
  %i.ig = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ie ; 2 uses
  %wide.load196 = load <4 x float>, ptr %i.ig, align 4, !tbaa !97
  %i.ih = fadd <4 x float> %wide.load, %wide.load196
  %i.ii = fmul <4 x float> %i.ih, splat (float 5.000000e-01) ; 2 uses
  store <4 x float> %i.ii, ptr %i.if, align 4, !tbaa !97
  store <4 x float> %i.ii, ptr %i.ig, align 4, !tbaa !97
  %index.next197 = add nuw i64 %index195, 4       ; 2 uses
  %i.ij = icmp eq i64 %index.next197, %n.vec193
  br i1 %i.ij, label %middle.block198, label %vector.body194, !llvm.loop !1226

middle.block198:                                  ; preds = %vector.body194
  %cmp.n199 = icmp eq i64 %11, %n.vec193
  br i1 %cmp.n199, label %.loopexit, label %scalar.ph190.preheader

scalar.ph190.preheader:                           ; preds = %.lr.ph139, %middle.block198
  %.067137.ph = phi i64 [ %i.hz, %.lr.ph139 ], [ %i.id, %middle.block198 ] ; 6 uses
  %i.ik = sub i64 %i.hw, %.067137.ph
  %xtraiter = and i64 %i.ik, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph190.prol.loopexit, label %scalar.ph190.prol

scalar.ph190.prol:                                ; preds = %scalar.ph190.preheader
  %i.il = getelementptr [4 x i8], ptr %i.ic, i64 %.067137.ph ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !97
  %i.in = mul i64 %.067137.ph, %i.dh
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.in ; 2 uses
  %i.io = load float, ptr %gep.prol, align 4, !tbaa !97
  %i.ip = fadd float %i.im, %i.io
  %i.iq = fmul float %i.ip, 5.000000e-01          ; 2 uses
  store float %i.iq, ptr %i.il, align 4, !tbaa !97
  store float %i.iq, ptr %gep.prol, align 4, !tbaa !97
  %i.ir = add nuw nsw i64 %.067137.ph, 1
  br label %scalar.ph190.prol.loopexit

scalar.ph190.prol.loopexit:                       ; preds = %scalar.ph190.prol, %scalar.ph190.preheader
  %.067137.unr = phi i64 [ %.067137.ph, %scalar.ph190.preheader ], [ %i.ir, %scalar.ph190.prol ]
  %i.is = icmp eq i64 %i.hx, %.067137.ph
  br i1 %i.is, label %.loopexit, label %scalar.ph190

scalar.ph190:                                     ; preds = %scalar.ph190.prol.loopexit, %scalar.ph190
  %.067137 = phi i64 [ %i.jg, %scalar.ph190 ], [ %.067137.unr, %scalar.ph190.prol.loopexit ] ; 4 uses
  %i.it = getelementptr [4 x i8], ptr %i.ic, i64 %.067137 ; 2 uses
  %i.iu = load float, ptr %i.it, align 4, !tbaa !97
  %i.iv = mul i64 %.067137, %i.dh
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.iv ; 2 uses
  %i.iw = load float, ptr %gep, align 4, !tbaa !97
  %i.ix = fadd float %i.iu, %i.iw
  %i.iy = fmul float %i.ix, 5.000000e-01          ; 2 uses
  store float %i.iy, ptr %i.it, align 4, !tbaa !97
  store float %i.iy, ptr %gep, align 4, !tbaa !97
  %i.iz = add nuw nsw i64 %.067137, 1             ; 2 uses
  %i.ja = getelementptr [4 x i8], ptr %i.ic, i64 %i.iz ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !97
  %i.jc = mul i64 %i.iz, %i.dh
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jc ; 2 uses
  %i.jd = load float, ptr %gep.1, align 4, !tbaa !97
  %i.je = fadd float %i.jb, %i.jd
  %i.jf = fmul float %i.je, 5.000000e-01          ; 2 uses
  store float %i.jf, ptr %i.ja, align 4, !tbaa !97
  store float %i.jf, ptr %gep.1, align 4, !tbaa !97
  %i.jg = add nuw nsw i64 %.067137, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.jg, %i.hw
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph190, !llvm.loop !1227

._crit_edge147:                                   ; preds = %.epilog-lcssa, %bb.r
  %i.jh = phi ptr [ %i.hv, %bb.r ], [ %i.ht, %.epilog-lcssa ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ji = load ptr, ptr %i.bh, align 8, !tbaa !1239, !nonnull !198, !align !369
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !18 ; 2 uses
  %i.jk = zext i32 %i.jj to i64
  %i.jl = icmp samesign ult i64 %indvars.iv.next, %i.jk
  br i1 %i.jl, label %bb.e, label %._crit_edge151.loopexit, !llvm.loop !1228

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %.epilog-lcssa
  %.066145 = phi i64 [ %i.jv, %.epilog-lcssa ], [ 0, %.lr.ph146.preheader ] ; 9 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.066145
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !97 ; 2 uses
  %i.jo = mul nuw i64 %.066145, %i.dh
  %i.jp = getelementptr [4 x i8], ptr %i.dg, i64 %i.jo ; 6 uses
  br i1 %i.hy, label %.epil.preheader, label %.lr.ph146.new

.unr-lcssa:                                       ; preds = %bb.ac
  br i1 %lcmp.mod215.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph146
  %.0144.epil.init = phi i64 [ 0, %.lr.ph146 ], [ %i.kl, %.unr-lcssa ]
  %.065143.epil.init = phi float [ %i.jn, %.lr.ph146 ], [ %.1.3, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod217)
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.epil.preheader
  %.0144.epil = phi i64 [ %.0144.epil.init, %.epil.preheader ], [ %i.jt, %bb.u ] ; 3 uses
  %.065143.epil = phi float [ %.065143.epil.init, %.epil.preheader ], [ %.1.epil, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %.not74.epil = icmp eq i64 %.0144.epil, %.066145
  br i1 %.not74.epil, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.jq = getelementptr [4 x i8], ptr %i.jp, i64 %.0144.epil
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !97
  %i.js = fsub float %.065143.epil, %i.jr
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.epil = phi float [ %i.js, %bb.t ], [ %.065143.epil, %bb.s ] ; 2 uses
  %i.jt = add nuw nsw i64 %.0144.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter214
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.s, !llvm.loop !1229

.epilog-lcssa:                                    ; preds = %bb.u, %.unr-lcssa
  %.1.lcssa = phi float [ %.1.3, %.unr-lcssa ], [ %.1.epil, %bb.u ]
  %i.ju = getelementptr [4 x i8], ptr %i.jp, i64 %.066145
  store float %.1.lcssa, ptr %i.ju, align 4, !tbaa !97
  %i.jv = add nuw nsw i64 %.066145, 1             ; 2 uses
  %exitcond157.not = icmp eq i64 %i.jv, %i.hw
  br i1 %exitcond157.not, label %._crit_edge147, label %.lr.ph146, !llvm.loop !1230

.lr.ph146.new:                                    ; preds = %.lr.ph146, %bb.ac
  %.0144 = phi i64 [ %i.kl, %bb.ac ], [ 0, %.lr.ph146 ] ; 6 uses
  %.065143 = phi float [ %.1.3, %bb.ac ], [ %i.jn, %.lr.ph146 ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %bb.ac ], [ 0, %.lr.ph146 ]
  %.not74 = icmp eq i64 %.0144, %.066145
  br i1 %.not74, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph146.new
  %i.jw = getelementptr [4 x i8], ptr %i.jp, i64 %.0144
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !97
  %i.jy = fsub float %.065143, %i.jx
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph146.new, %bb.v
  %.1 = phi float [ %i.jy, %bb.v ], [ %.065143, %.lr.ph146.new ] ; 2 uses
  %i.jz = or disjoint i64 %.0144, 1               ; 2 uses
  %.not74.1 = icmp eq i64 %i.jz, %.066145
  br i1 %.not74.1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ka = getelementptr [4 x i8], ptr %i.jp, i64 %i.jz
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !97
  %i.kc = fsub float %.1, %i.kb
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.1 = phi float [ %i.kc, %bb.x ], [ %.1, %bb.w ] ; 2 uses
  %i.kd = or disjoint i64 %.0144, 2               ; 2 uses
  %.not74.2 = icmp eq i64 %i.kd, %.066145
  br i1 %.not74.2, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ke = getelementptr [4 x i8], ptr %i.jp, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !97
  %i.kg = fsub float %.1.1, %i.kf
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1.2 = phi float [ %i.kg, %bb.z ], [ %.1.1, %bb.y ] ; 2 uses
  %i.kh = or disjoint i64 %.0144, 3               ; 2 uses
  %.not74.3 = icmp eq i64 %i.kh, %.066145
  br i1 %.not74.3, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ki = getelementptr [4 x i8], ptr %i.jp, i64 %i.kh
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !97
  %i.kk = fsub float %.1.2, %i.kj
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.3 = phi float [ %i.kk, %bb.ab ], [ %.1.2, %bb.aa ] ; 3 uses
  %i.kl = add nuw nsw i64 %.0144, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.lr.ph146.new, !llvm.loop !1231

bb.ad:                                            ; preds = %bb.m
  %i.km = landingpad { ptr, i32 }
          catch ptr null
  %i.kn = extractvalue { ptr, i32 } %i.km, 0
  call void @__clang_call_terminate(ptr %i.kn) #31
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef float @_ZN7xgboost16interpretability12_GLOBAL__N_118FillNodeMeanValuesERKNS_4tree14ScalarTreeViewEiPSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
end_hunk_3
