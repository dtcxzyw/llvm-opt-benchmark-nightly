Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BackendUtil?download=true
inline.NumInlined: 7445
inline.NumDeleted: 4159
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRN4llvm11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS2_JEEEJEEENS0_17OptimizationLevelEEZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrINS0_17raw_pwrite_streamESt14default_deleteISE_EERSD_INS0_14ToolOutputFileESF_ISJ_EEPNSB_15BackendConsumerEE3$_4E9_M_invokeERKSt9_Any_dataS6_OS7_":bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.a to i64
  store i64 %i.g, ptr %i.d, align 8, !tbaa !869
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !868
  br label %"_ZSt10__invoke_rIvRZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS6_EERS4_INS5_14ToolOutputFileES7_ISB_EEPNS2_15BackendConsumerEE3$_4JRNS5_11PassManagerINS5_6ModuleENS5_15AnalysisManagerISK_JEEEJEEENS5_17OptimizationLevelEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESR_E4typeEOSS_DpOST_.exit"

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !865    ; 10 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i2.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i2.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #27 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !869
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.w = add i64 %i.j, -8
  %i.x = sub i64 %i.w, %i.k                       ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader9, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aa = add i64 %i.j, -8
  %i.ab = sub i64 %i.aa, %i.k
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ad
  %scevgep5 = getelementptr i8, ptr %i.i, i64 %i.ad
  %bound0 = icmp ult ptr %i.t, %scevgep5
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.i, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ah ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.i, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  %i.ai = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !869, !alias.scope !1769, !noalias !1764
  %wide.load7 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !869, !alias.scope !1769, !noalias !1764
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !869, !alias.scope !1772, !noalias !1769
  store <2 x i64> %wide.load7, ptr %i.aj, align 8, !tbaa !869, !alias.scope !1772, !noalias !1769
  %i.ak = getelementptr i8, ptr %next.gep6, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !869, !alias.scope !1769, !noalias !1764
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !869, !alias.scope !1769, !noalias !1764
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1774

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.i.i.preheader9:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  %i.am = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !869, !alias.scope !1767, !noalias !1764
  store i64 %i.am, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !869, !alias.scope !1764, !noalias !1767
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !869, !alias.scope !1767, !noalias !1764
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1775

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !873
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.as) #28
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i
  store ptr %i.t, ptr %1, align 8, !tbaa !865
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !868
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.at, ptr %i.e, align 8, !tbaa !873
  br label %"_ZSt10__invoke_rIvRZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS6_EERS4_INS5_14ToolOutputFileES7_ISB_EEPNS2_15BackendConsumerEE3$_4JRNS5_11PassManagerINS5_6ModuleENS5_15AnalysisManagerISK_JEEEJEEENS5_17OptimizationLevelEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESR_E4typeEOSS_DpOST_.exit"

"_ZSt10__invoke_rIvRZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS6_EERS4_INS5_14ToolOutputFileES7_ISB_EEPNS2_15BackendConsumerEE3$_4JRNS5_11PassManagerINS5_6ModuleENS5_15AnalysisManagerISK_JEEEJEEENS5_17OptimizationLevelEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESR_E4typeEOSS_DpOST_.exit": ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS2_JEEEJEEENS0_17OptimizationLevelEEZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrINS0_17raw_pwrite_streamESt14default_deleteISE_EERSD_INS0_14ToolOutputFileESF_ISJ_EEPNSB_15BackendConsumerEE3$_4E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #17 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS7_EERS5_INS6_14ToolOutputFileES8_ISC_EEPNS3_15BackendConsumerEE3$_4E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit" [
    i32 1, label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS7_EERS5_INS6_14ToolOutputFileES8_ISC_EEPNS3_15BackendConsumerEE3$_4E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit.sink.split"
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS7_EERS5_INS6_14ToolOutputFileES8_ISC_EEPNS3_15BackendConsumerEE3$_4E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS7_EERS5_INS6_14ToolOutputFileES8_ISC_EEPNS3_15BackendConsumerEE3$_4E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !44
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS7_EERS5_INS6_14ToolOutputFileES8_ISC_EEPNS3_15BackendConsumerEE3$_4E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS7_EERS5_INS6_14ToolOutputFileES8_ISC_EEPNS3_15BackendConsumerEE3$_4E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS7_EERS5_INS6_14ToolOutputFileES8_ISC_EEPNS3_15BackendConsumerEE3$_4E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_17DropTypeTestsPassENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_17DropTypeTestsPassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm17DropTypeTestsPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_6ModuleENS_17DropTypeTestsPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm17DropTypeTestsPass13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES4_EEE(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_6ModuleENS_17DropTypeTestsPassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.72, i64 55), i64 17 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_6ModuleENS_17DropTypeTestsPassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

declare void @_ZN4llvm17DropTypeTestsPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN4llvm17DropTypeTestsPass13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES4_EEE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm11PassManagerINS0_8FunctionENS0_15AnalysisManagerIS2_JEEEJEEENS0_17OptimizationLevelEEZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrINS0_17raw_pwrite_streamESt14default_deleteISE_EERSD_INS0_14ToolOutputFileESF_ISJ_EEPNSB_15BackendConsumerEE3$_5E9_M_invokeERKSt9_Any_dataS6_OS7_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree nonnull readonly align 4 captures(none) %2) #3 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !1776
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !444, !nonnull !19, !align !381
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1760
  %i.d = tail call { double, i8 } @_ZNK5clang20SanitizerMaskCutoffsixEj(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef 71) #25
  %i.e = extractvalue { double, i8 } %i.d, 1
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5clang21ClSanitizeGuardChecksE, i64 120), align 8, !range !18
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !444, !nonnull !19, !align !381 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1752
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !77
  %.sroa.2.0..sroa_idx.i8.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1736
  %.sroa.2.0.copyload.i9.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i8.i.i.i, align 8, !tbaa !77
  %i.i = and i64 %.sroa.2.0.copyload.i9.i.i.i, 128
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNSt8optionalIN4llvm18BoundsCheckingPass7Options7RuntimeEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i.i, label %bb.b

_ZNSt8optionalIN4llvm18BoundsCheckingPass7Options7RuntimeEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.sroa.2.0..sroa_idx.i11.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1720
  %.sroa.2.0.copyload.i12.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i11.i.i.i, align 8, !tbaa !77
  %i.l = and i64 %.sroa.2.0.copyload.i12.i.i.i, 128
  %i.m = icmp ne i64 %i.l, 0
  %i.n = lshr i64 %i.k, 15
  %i.o = trunc i64 %i.n to i8
  %i.p = and i8 %i.o, 1
  %i.q = zext i1 %i.m to i8
  %i.r = lshr i64 %i.k, 16
  %i.s = trunc i64 %i.r to i8
  %i.t = and i8 %i.s, 1
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8optionalIN4llvm18BoundsCheckingPass7Options7RuntimeEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i.i, %bb.a
  %.sroa.67.1.i.i.i = phi i8 [ 0, %bb.a ], [ 1, %_ZNSt8optionalIN4llvm18BoundsCheckingPass7Options7RuntimeEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i.i ]
  %.sroa.56.0.i.i.i = phi i8 [ undef, %bb.a ], [ %i.t, %_ZNSt8optionalIN4llvm18BoundsCheckingPass7Options7RuntimeEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i.i ]
  %.sroa.45.0.i.i.i = phi i8 [ undef, %bb.a ], [ %i.q, %_ZNSt8optionalIN4llvm18BoundsCheckingPass7Options7RuntimeEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i.i ]
  %.sroa.04.0.i.i.i = phi i8 [ undef, %bb.a ], [ %i.p, %_ZNSt8optionalIN4llvm18BoundsCheckingPass7Options7RuntimeEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit.i.i.i ]
  %i.u = zext nneg i8 %i.g to i56
  %i.v = shl nuw nsw i56 %i.u, 48
  %3 = or disjoint i56 %i.v, 78065325572096
  %.sroa.11.0.insert.insert.i.i.i = select i1 %i.f, i56 359540302282752, i56 %3
  %i.w = lshr i64 %.sroa.2.0.copyload.i.i.i.i, 7
  %.lobit.i.i.i = and i64 %i.w, 1
  %.sroa.9.0.insert.ext.i.i.i = trunc nuw nsw i64 %.lobit.i.i.i to i56
  %.sroa.9.0.insert.shift.i.i.i = shl nuw nsw i56 %.sroa.9.0.insert.ext.i.i.i, 32
  %.sroa.9.0.insert.insert.i.i.i.a = or disjoint i56 %.sroa.9.0.insert.shift.i.i.i, %.sroa.11.0.insert.insert.i.i.i
  %.sroa.67.0.insert.ext.i.i.i = zext nneg i8 %.sroa.67.1.i.i.i to i56
  %.sroa.67.0.insert.shift.i.i.i = shl nuw nsw i56 %.sroa.67.0.insert.ext.i.i.i, 24
  %.sroa.67.0.insert.insert.i.i.i.a = or disjoint i56 %.sroa.67.0.insert.shift.i.i.i, %.sroa.9.0.insert.insert.i.i.i.a
  %.sroa.56.0.insert.ext.i.i.i = zext i8 %.sroa.56.0.i.i.i to i56
  %.sroa.56.0.insert.shift.i.i.i = shl nuw nsw i56 %.sroa.56.0.insert.ext.i.i.i, 16
  %.sroa.45.0.insert.ext.i.i.i = zext i8 %.sroa.45.0.i.i.i to i56
  %.sroa.45.0.insert.shift.i.i.i = shl nuw nsw i56 %.sroa.45.0.insert.ext.i.i.i, 8
  %.sroa.45.0.insert.mask.i.i.i = or disjoint i56 %.sroa.67.0.insert.insert.i.i.i.a, %.sroa.56.0.insert.shift.i.i.i
  %.sroa.04.0.insert.ext.i.i.i = zext i8 %.sroa.04.0.i.i.i to i56
  %.sroa.04.0.insert.mask.i.i.i = or disjoint i56 %.sroa.45.0.insert.mask.i.i.i, %.sroa.45.0.insert.shift.i.i.i
  %.sroa.04.0.insert.insert.i.i.i = or i56 %.sroa.04.0.insert.mask.i.i.i, %.sroa.04.0.insert.ext.i.i.i
  %i.x = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm6detail9PassModelINS_8FunctionENS_18BoundsCheckingPassENS_15AnalysisManagerIS2_JEEEJEEE, i64 16), ptr %i.x, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i56 %.sroa.04.0.insert.insert.i.i.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1746 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1749
  %.not.i.i14.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i.i14.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = ptrtoint ptr %i.x to i64
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !1719
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !1746
  br label %"_ZSt10__invoke_rIvRZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS6_EERS4_INS5_14ToolOutputFileES7_ISB_EEPNS2_15BackendConsumerEE3$_5JRNS5_11PassManagerINS5_8FunctionENS5_15AnalysisManagerISK_JEEEJEEENS5_17OptimizationLevelEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESR_E4typeEOSS_DpOST_.exit"

bb.d:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !1750  ; 10 uses
  %i.ag = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 4 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #26
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i15.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i15.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  %i.as = ptrtoint ptr %i.x to i64
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !1719
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.at = add i64 %i.ag, -8
  %i.au = sub i64 %i.at, %i.ah                    ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ax = add i64 %i.ag, -8
  %i.ay = sub i64 %i.ax, %i.ah
  %i.az = and i64 %i.ay, -8
  %i.ba = add i64 %i.az, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.ba
  %scevgep6 = getelementptr i8, ptr %i.af, i64 %i.ba
  %bound0 = icmp ult ptr %i.aq, %scevgep6
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.aq, i64 %i.bb  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.af, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.be ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.af, i64 %i.be ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  %i.bf = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !1719, !alias.scope !1783, !noalias !1778
  %wide.load8 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !1719, !alias.scope !1783, !noalias !1778
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1719, !alias.scope !1786, !noalias !1783
  store <2 x i64> %wide.load8, ptr %i.bg, align 8, !tbaa !1719, !alias.scope !1786, !noalias !1783
  %i.bh = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !1719, !alias.scope !1783, !noalias !1778
  store <2 x ptr> splat (ptr null), ptr %i.bh, align 8, !tbaa !1719, !alias.scope !1783, !noalias !1778
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !1788

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.i.i.preheader10:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  %i.bj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1719, !alias.scope !1781, !noalias !1778
  store i64 %i.bj, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1719, !alias.scope !1778, !noalias !1781
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1719, !alias.scope !1781, !noalias !1778
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1789

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.bc, %middle.block ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i
  %i.bn = load ptr, ptr %i.ab, align 8, !tbaa !1749
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.bp) #28
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i.i.i
  store ptr %i.aq, ptr %1, align 8, !tbaa !1750
  store ptr %i.bm, ptr %i.z, align 8, !tbaa !1746
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bq, ptr %i.ab, align 8, !tbaa !1749
  br label %"_ZSt10__invoke_rIvRZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS6_EERS4_INS5_14ToolOutputFileES7_ISB_EEPNS2_15BackendConsumerEE3$_5JRNS5_11PassManagerINS5_8FunctionENS5_15AnalysisManagerISK_JEEEJEEENS5_17OptimizationLevelEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESR_E4typeEOSS_DpOST_.exit"

"_ZSt10__invoke_rIvRZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS6_EERS4_INS5_14ToolOutputFileES7_ISB_EEPNS2_15BackendConsumerEE3$_5JRNS5_11PassManagerINS5_8FunctionENS5_15AnalysisManagerISK_JEEEJEEENS5_17OptimizationLevelEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESR_E4typeEOSS_DpOST_.exit": ; preds = %bb.c, %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_8FunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm11PassManagerINS0_8FunctionENS0_15AnalysisManagerIS2_JEEEJEEENS0_17OptimizationLevelEEZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrINS0_17raw_pwrite_streamESt14default_deleteISE_EERSD_INS0_14ToolOutputFileESF_ISJ_EEPNSB_15BackendConsumerEE3$_5E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #18 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS7_EERS5_INS6_14ToolOutputFileES8_ISC_EEPNS3_15BackendConsumerEE3$_5E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !44
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS7_EERS5_INS6_14ToolOutputFileES8_ISC_EEPNS3_15BackendConsumerEE3$_5E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1222
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS7_EERS5_INS6_14ToolOutputFileES8_ISC_EEPNS3_15BackendConsumerEE3$_5E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !1329
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS7_EERS5_INS6_14ToolOutputFileES8_ISC_EEPNS3_15BackendConsumerEE3$_5E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_118EmitAssemblyHelper23RunOptimizationPipelineEN5clang13BackendActionERSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS7_EERS5_INS6_14ToolOutputFileES8_ISC_EEPNS3_15BackendConsumerEE3$_5E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare { double, i8 } @_ZNK5clang20SanitizerMaskCutoffsixEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_18BoundsCheckingPassENS_15AnalysisManagerIS2_JEEEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_18BoundsCheckingPassENS_15AnalysisManagerIS2_JEEEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm18BoundsCheckingPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 1 dereferenceable(7) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9PassModelINS_8FunctionENS_18BoundsCheckingPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm18BoundsCheckingPass13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES4_EEE(ptr noundef nonnull align 1 dereferenceable(7) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_8FunctionENS_18BoundsCheckingPassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.73, i64 55), i64 18 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_8FunctionENS_18BoundsCheckingPassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
end_hunk_0
