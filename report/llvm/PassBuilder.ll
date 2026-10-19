Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PassBuilder?download=true
inline.NumInlined: 50905
inline.NumDeleted: 18556
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 25
begin_hunk_0_@"_ZNSt17_Function_handlerIFbRKN4llvm11GlobalValueEEZZNS0_11PassBuilder15parseModulePassERNS0_11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS7_JEEEJEEERKNS5_15PipelineElementEENK3$_0clENS0_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.b = zext i32 %.val3 to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.b, 5
  %i.c = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i.i.i
  %.not5.not.i.i.i = icmp eq i32 %.val3, 0
  br i1 %.not5.not.i.i.i, label %"_ZSt10__invoke_rIbRZZN4llvm11PassBuilder15parseModulePassERNS0_11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEERKNS1_15PipelineElementEENK3$_0clENS0_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS0_11GlobalValueEE_JSM_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESQ_E4typeEOSR_DpOSS_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit.thread2.i.i.i
  %.0136.i.i.i = phi ptr [ %i.l, %_ZN4llvmeqENS_9StringRefES0_.exit.thread2.i.i.i ], [ %.val2, %bb.a ] ; 3 uses
  %i.d = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #27 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 3 uses
  %i.g = load ptr, ptr %.0136.i.i.i, align 8, !tbaa !365
  %i.h = getelementptr inbounds nuw i8, ptr %.0136.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !357
  %.not.i.i.i.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread2.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %"_ZSt10__invoke_rIbRZZN4llvm11PassBuilder15parseModulePassERNS0_11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEERKNS1_15PipelineElementEENK3$_0clENS0_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS0_11GlobalValueEE_JSM_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESQ_E4typeEOSR_DpOSS_.exit", label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i:          ; preds = %bb.b
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.e, ptr %i.g, i64 %i.f)
  %i.k = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.k, label %"_ZSt10__invoke_rIbRZZN4llvm11PassBuilder15parseModulePassERNS0_11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEERKNS1_15PipelineElementEENK3$_0clENS0_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS0_11GlobalValueEE_JSM_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESQ_E4typeEOSR_DpOSS_.exit", label %_ZN4llvmeqENS_9StringRefES0_.exit.thread2.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread2.i.i.i:  ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i, %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0136.i.i.i, i64 32 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.not.i.i.i, label %"_ZSt10__invoke_rIbRZZN4llvm11PassBuilder15parseModulePassERNS0_11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEERKNS1_15PipelineElementEENK3$_0clENS0_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS0_11GlobalValueEE_JSM_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESQ_E4typeEOSR_DpOSS_.exit", label %.lr.ph.i.i.i

"_ZSt10__invoke_rIbRZZN4llvm11PassBuilder15parseModulePassERNS0_11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEERKNS1_15PipelineElementEENK3$_0clENS0_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS0_11GlobalValueEE_JSM_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESQ_E4typeEOSR_DpOSS_.exit": ; preds = %bb.b, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread2.i.i.i, %bb.a
  %.not.lcssa.i.i.i = phi i1 [ false, %bb.a ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit.thread2.i.i.i ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i ], [ true, %bb.b ]
  ret i1 %.not.lcssa.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm11GlobalValueEEZZNS0_11PassBuilder15parseModulePassERNS0_11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS7_JEEEJEEERKNS5_15PipelineElementEENK3$_0clENS0_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlS3_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 3 uses
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm11PassBuilder15parseModulePassERNS1_11PassManagerINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEERKNS2_15PipelineElementEENK3$_0clENS1_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS1_11GlobalValueEE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %.val, ptr %0, align 8, !tbaa !324
  br label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm11PassBuilder15parseModulePassERNS1_11PassManagerINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEERKNS2_15PipelineElementEENK3$_0clENS1_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS1_11GlobalValueEE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !810
  br label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm11PassBuilder15parseModulePassERNS1_11PassManagerINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEERKNS2_15PipelineElementEENK3$_0clENS1_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS1_11GlobalValueEE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.a, align 8, !tbaa !173
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !313
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !314
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !313
  %.not.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm11PassBuilder15parseModulePassERNS1_11PassManagerINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEERKNS2_15PipelineElementEENK3$_0clENS1_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS1_11GlobalValueEE_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOT_.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.val) ; 0 uses
  br label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm11PassBuilder15parseModulePassERNS1_11PassManagerINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEERKNS2_15PipelineElementEENK3$_0clENS1_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS1_11GlobalValueEE_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOT_.exit.i"

"_ZNSt14_Function_base13_Base_managerIZZN4llvm11PassBuilder15parseModulePassERNS1_11PassManagerINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEERKNS2_15PipelineElementEENK3$_0clENS1_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS1_11GlobalValueEE_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOT_.exit.i": ; preds = %bb.e, %bb.d
  store ptr %i.a, ptr %0, align 8, !tbaa !324
  br label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm11PassBuilder15parseModulePassERNS1_11PassManagerINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEERKNS2_15PipelineElementEENK3$_0clENS1_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS1_11GlobalValueEE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit"

bb.f:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !324 ; 6 uses
  %i.h = icmp eq ptr %.val6.i, null
  br i1 %i.h, label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm11PassBuilder15parseModulePassERNS1_11PassManagerINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEERKNS2_15PipelineElementEENK3$_0clENS1_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS1_11GlobalValueEE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr %.val6.i, align 8, !tbaa !173 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !313  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.g
  %i.l = zext i32 %i.k to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.l, 5
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.m, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !365  ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !196
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.i, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !38

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.val6.i, align 8, !tbaa !173
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i, %bb.g
  %i.t = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i ], [ %i.i, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %"_ZZZN4llvm11PassBuilder15parseModulePassERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEERKNS0_15PipelineElementEENK3$_0clENS_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEENUlRKNS_11GlobalValueEE_D2Ev.exit.i.i", label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i
  tail call void @free(ptr noundef %i.t) #27
  br label %"_ZZZN4llvm11PassBuilder15parseModulePassERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEERKNS0_15PipelineElementEENK3$_0clENS_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEENUlRKNS_11GlobalValueEE_D2Ev.exit.i.i"

"_ZZZN4llvm11PassBuilder15parseModulePassERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEERKNS0_15PipelineElementEENK3$_0clENS_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEENUlRKNS_11GlobalValueEE_D2Ev.exit.i.i": ; preds = %bb.h, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 16) #30
  br label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm11PassBuilder15parseModulePassERNS1_11PassManagerINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEERKNS2_15PipelineElementEENK3$_0clENS1_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS1_11GlobalValueEE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZZN4llvm11PassBuilder15parseModulePassERNS1_11PassManagerINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEERKNS2_15PipelineElementEENK3$_0clENS1_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS1_11GlobalValueEE_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit": ; preds = %bb.a, %"_ZZZN4llvm11PassBuilder15parseModulePassERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEERKNS0_15PipelineElementEENK3$_0clENS_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEENUlRKNS_11GlobalValueEE_D2Ev.exit.i.i", %bb.f, %"_ZNSt14_Function_base13_Base_managerIZZN4llvm11PassBuilder15parseModulePassERNS1_11PassManagerINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEERKNS2_15PipelineElementEENK3$_0clENS1_11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEEEUlRKNS1_11GlobalValueEE_E15_M_init_functorIRKSO_EEvRSt9_Any_dataOT_.exit.i", %bb.c, %bb.b
  ret i1 false
}

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN4llvm14MemProfUsePassC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18IntrusiveRefCntPtrINS_3vfs10FileSystemEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr nofree noundef align 8 dereferenceable(32), ptr nofree noundef align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN4llvm22MemorySanitizerOptionsC2Eibbb(ptr noundef nonnull align 4 dereferenceable(10), i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm18getAsSignedIntegerENS_9StringRefEjRx(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, 4294967300) i64 @_ZL13parseOptLevelN4llvm9StringRefE(ptr %0, i64 %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %cond = icmp eq i64 %1, 2
  br i1 %cond, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvm12StringSwitchISt8optionalINS_17OptimizationLevelEES3_E4CaseENS_13StringLiteralES3_.exit47

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = icmp ne i16 %i.a, 29519
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit18

_ZN4llvmeqENS_9StringRefES0_.exit18:              ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.e = load i16, ptr %0, align 1
  %i.f = icmp ne i16 %i.e, 31311
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit18, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !200
  store ptr @.str.745, ptr %6, align 8, !tbaa !196
  store i8 3, ptr %i.i, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 5, ptr %i.k, align 8, !tbaa !199
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !200
  store ptr %0, ptr %7, align 8, !tbaa !196
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.m, align 8, !tbaa !196
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %5, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr noundef nonnull align 8 dereferenceable(34) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !200
  store ptr @.str.746, ptr %8, align 8, !tbaa !196
  store i8 3, ptr %i.n, align 8, !tbaa !199
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %4, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull align 8 dereferenceable(34) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.p = call noundef zeroext i1 @_ZN4llvmeqENS_9StringRefES0_(ptr nonnull %0, i64 2, ptr nonnull @.str.743, i64 2)
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %12, align 1, !tbaa !200
  %.str.747..str.748 = select i1 %i.p, ptr @.str.747, ptr @.str.748
  store ptr %.str.747..str.748, ptr %9, align 8, !tbaa !196
  store i8 3, ptr %11, align 8, !tbaa !199
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %3, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef nonnull align 8 dereferenceable(34) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !200
  store ptr @.str.749, ptr %10, align 8, !tbaa !196
  store i8 3, ptr %13, align 8, !tbaa !199
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %2, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef nonnull align 8 dereferenceable(34) %10)
  call void @_ZN4llvm21reportFatalUsageErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %2) #29
  unreachable

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit18
  %i.r = load i16, ptr %0, align 1
  %i.s = icmp ne i16 %i.r, 12367
  %i.t = zext i1 %i.s to i32
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalINS_17OptimizationLevelEES3_E4CaseENS_13StringLiteralES3_.exit47, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i25

_ZN4llvmneENS_9StringRefES0_.exit.i.i25:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.u = load i16, ptr %0, align 1
  %i.v = icmp ne i16 %i.u, 12623
  %i.w = zext i1 %i.v to i32
  %.not.i.i27 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i27, label %_ZN4llvm12StringSwitchISt8optionalINS_17OptimizationLevelEES3_E4CaseENS_13StringLiteralES3_.exit47, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i34

_ZN4llvmneENS_9StringRefES0_.exit.i.i34:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i25
  %i.x = load i16, ptr %0, align 1
  %i.y = icmp ne i16 %i.x, 12879
  %i.z = zext i1 %i.y to i32
  %.not.i.i36 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i36, label %_ZN4llvm12StringSwitchISt8optionalINS_17OptimizationLevelEES3_E4CaseENS_13StringLiteralES3_.exit47, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i43

_ZN4llvmneENS_9StringRefES0_.exit.i.i43:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i34
  %i.aa = load i16, ptr %0, align 1
  %i.ab = icmp ne i16 %i.aa, 13135
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i45 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not.i.i45, i64 4294967299, i64 0
  br label %_ZN4llvm12StringSwitchISt8optionalINS_17OptimizationLevelEES3_E4CaseENS_13StringLiteralES3_.exit47

_ZN4llvm12StringSwitchISt8optionalINS_17OptimizationLevelEES3_E4CaseENS_13StringLiteralES3_.exit47: ; preds = %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i43, %_ZN4llvmneENS_9StringRefES0_.exit.i.i34, %_ZN4llvmneENS_9StringRefES0_.exit.i.i25, %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %.sroa.17.3 = phi i64 [ 0, %bb.a ], [ 4294967298, %_ZN4llvmneENS_9StringRefES0_.exit.i.i34 ], [ %i.ad, %_ZN4llvmneENS_9StringRefES0_.exit.i.i43 ], [ 4294967297, %_ZN4llvmneENS_9StringRefES0_.exit.i.i25 ], [ 4294967296, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ]
  ret i64 %.sroa.17.3
}

; Function Attrs: noreturn
declare void @_ZN4llvm21reportFatalUsageErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #2 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5507)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !199, !noalias !5507 ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !199, !noalias !5507 ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.g, align 8, !tbaa !199, !alias.scope !5507
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !200, !alias.scope !5507
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !5509
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i8 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !5509
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.l = load i8, ptr %i.k, align 1, !tbaa !200, !noalias !5507
  %i.m = icmp eq i8 %i.l, 1                       ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %1, align 8, !noalias !5507
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !5507
  %.014.i = select i1 %i.m, i8 %i.b, i8 2
  %.sroa.05.0.i = select i1 %i.m, ptr %.sroa.05.0.copyload.i, ptr %1
  %.sroa.56.0.i = select i1 %i.m, i64 %.sroa.56.0.copyload.i, i64 undef
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !200, !noalias !5507
  %i.p = icmp eq i8 %i.o, 1                       ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %2, align 8, !noalias !5507
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5507
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.04.0.i = select i1 %i.p, ptr %.sroa.04.0.copyload.i, ptr %2
  %.sroa.5.0.i = select i1 %i.p, i64 %.sroa.5.0.copyload.i, i64 undef
  store ptr %.sroa.05.0.i, ptr %0, align 8, !alias.scope !5507
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.56.0.i, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !196, !alias.scope !5507
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.04.0.i, ptr %i.q, align 8, !alias.scope !5507
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !196, !alias.scope !5507
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.014.i, ptr %i.r, align 8, !tbaa !199, !alias.scope !5507
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !200, !alias.scope !5507
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

_ZNK4llvm5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

declare void @_ZN4llvm11PassBuilder29buildPerModuleDefaultPipelineENS_17OptimizationLevelENS_18ThinOrFullLTOPhaseE(ptr dead_on_unwind writable sret(%"class.llvm::PassManager") align 8, ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilder34buildThinLTOPreLinkDefaultPipelineENS_17OptimizationLevelE(ptr dead_on_unwind writable sret(%"class.llvm::PassManager") align 8, ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilder27buildThinLTODefaultPipelineENS_17OptimizationLevelEPKNS_18ModuleSummaryIndexE(ptr dead_on_unwind writable sret(%"class.llvm::PassManager") align 8, ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilder30buildLTOPreLinkDefaultPipelineENS_17OptimizationLevelE(ptr dead_on_unwind writable sret(%"class.llvm::PassManager") align 8, ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilder23buildLTODefaultPipelineENS_17OptimizationLevelEPNS_18ModuleSummaryIndexE(ptr dead_on_unwind writable sret(%"class.llvm::PassManager") align 8, ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(34), i32, ptr) unnamed_addr #4

declare void @_ZN4llvm11PassBuilder26buildFatLTODefaultPipelineENS_17OptimizationLevelEbbb(ptr dead_on_unwind writable sret(%"class.llvm::PassManager") align 8, ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm13CoroSplitPassC1Eb(ptr noundef nonnull align 8 dereferenceable(33), i1 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorISt4pairIPNS_14GlobalVariableENS0_INS_10consthoist12ConstantInfoELj8EEEELj0EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !173    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !313  ; 2 uses
  %.not4.i = icmp eq i32 %i.c, 0
  br i1 %.not4.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_14GlobalVariableENS_11SmallVectorINS_10consthoist12ConstantInfoELj8EEEELb0EE13destroy_rangeEPS8_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = zext i32 %i.c to i64
  %.idx = mul nuw nsw i64 %i.d, 5400
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt4pairIPN4llvm14GlobalVariableENS0_11SmallVectorINS0_10consthoist12ConstantInfoELj8EEEED2Ev.exit.i
  %.05.i = phi ptr [ %i.f, %_ZNSt4pairIPN4llvm14GlobalVariableENS0_11SmallVectorINS0_10consthoist12ConstantInfoELj8EEEED2Ev.exit.i ], [ %i.e, %.lr.ph.i.preheader ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.05.i, i64 -5400 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i, i64 -5392 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !173  ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.05.i, i64 -5384
  %i.j = load i32, ptr %i.i, align 8, !tbaa !313  ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist12ConstantInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i
  %i.k = zext i32 %i.j to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.k, 672
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm10consthoist12ConstantInfoD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.m, %_ZN4llvm10consthoist12ConstantInfoD2Ev.exit.i.i.i.i ], [ %i.l, %.lr.ph.i.preheader.i.i.i ] ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -672 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -656 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !173  ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -648
  %i.q = load i32, ptr %i.p, align 8, !tbaa !313  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist19RebasedConstantInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.r = zext i32 %i.q to i64
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %i.r, 160
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4llvm10consthoist19RebasedConstantInfoD2Ev.exit.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZN4llvm10consthoist19RebasedConstantInfoD2Ev.exit.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i, i64 -160 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !173  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i, i64 -144
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4llvm10consthoist19RebasedConstantInfoD2Ev.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.u) #27
  br label %_ZN4llvm10consthoist19RebasedConstantInfoD2Ev.exit.i.i.i.i.i.i.i

_ZN4llvm10consthoist19RebasedConstantInfoD2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.t
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist19RebasedConstantInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !40

_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist19RebasedConstantInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i: ; preds = %_ZN4llvm10consthoist19RebasedConstantInfoD2Ev.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !173
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist19RebasedConstantInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist19RebasedConstantInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist19RebasedConstantInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.x = phi ptr [ %.pre.i.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist19RebasedConstantInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i ] ; 2 uses
end_hunk_0
