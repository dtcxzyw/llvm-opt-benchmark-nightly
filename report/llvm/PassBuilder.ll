Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PassBuilder?download=true
inline.NumInlined: 50905
inline.NumDeleted: 18556
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN4llvm11PassBuilder16parseMachinePassERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS2_JEEEJEEERKNS0_15PipelineElementE:bb.a
  %104 = alloca %"class.llvm::LiveIntervalsPrinterPass", align 8 ; 4 uses
  %105 = alloca %"class.llvm::LiveStacksPrinterPass", align 8 ; 4 uses
  %106 = alloca %"class.llvm::LiveVariablesPrinterPass", align 8 ; 4 uses
  %107 = alloca %"class.llvm::MachineBlockFrequencyPrinterPass", align 8 ; 4 uses
  %108 = alloca %"class.llvm::MachineBlockHashInfoPrinterPass", align 8 ; 4 uses
  %109 = alloca %"class.llvm::MachineBranchProbabilityPrinterPass", align 8 ; 4 uses
  %110 = alloca %"class.llvm::MachineCycleInfoPrinterPass", align 8 ; 4 uses
  %111 = alloca %"class.llvm::MachineDominatorTreePrinterPass", align 8 ; 4 uses
  %112 = alloca %"class.llvm::MachineLoopPrinterPass", align 8 ; 4 uses
  %113 = alloca %"class.llvm::MachinePostDominatorTreePrinterPass", align 8 ; 4 uses
  %114 = alloca %"class.llvm::MachineRegionInfoPrinterPass", align 8 ; 4 uses
  %115 = alloca %"class.llvm::MachineUniformityPrinterPass", align 8 ; 4 uses
  %116 = alloca %"class.llvm::ReachingDefPrinterPass", align 8 ; 4 uses
  %117 = alloca %"class.llvm::SlotIndexesPrinterPass", align 8 ; 4 uses
  %118 = alloca %"class.llvm::VirtRegMapPrinterPass", align 8 ; 4 uses
  %119 = alloca %"class.llvm::ProcessImplicitDefsPass", align 1 ; 3 uses
  %120 = alloca %"class.llvm::PrologEpilogInserterPass", align 1 ; 3 uses
  %121 = alloca %"class.llvm::RegUsageInfoCollectorPass", align 1 ; 3 uses
  %122 = alloca %"class.llvm::RegUsageInfoPropagationPass", align 1 ; 3 uses
  %123 = alloca %"class.llvm::RegisterCoalescerPass", align 1 ; 3 uses
  %124 = alloca %"class.llvm::RenameIndependentSubregsPass", align 1 ; 3 uses
  %125 = alloca %"class.llvm::RemoveLoadsIntoFakeUsesPass", align 1 ; 3 uses
  %126 = alloca %"class.llvm::RemoveRedundantDebugValuesPass", align 1 ; 3 uses
  %127 = alloca %"class.llvm::ShrinkWrapPass", align 1 ; 3 uses
  %128 = alloca %"class.llvm::StackColoringPass", align 1 ; 3 uses
  %129 = alloca %"class.llvm::StackFrameLayoutAnalysisPass", align 1 ; 3 uses
  %130 = alloca %"class.llvm::StackSlotColoringPass", align 1 ; 3 uses
  %131 = alloca %"class.llvm::StaticDataSplitterPass", align 1 ; 3 uses
  %132 = alloca %"class.llvm::TailDuplicatePass", align 8 ; 5 uses
  %133 = alloca %"class.llvm::TwoAddressInstructionPass", align 1 ; 3 uses
  %134 = alloca %"class.llvm::UnpackMachineBundlesPass", align 8 ; 7 uses
  %135 = alloca %"class.llvm::UnreachableMachineBlockElimPass", align 1 ; 3 uses
  %136 = alloca %"class.llvm::MachineVerifierPass", align 8 ; 6 uses
  %137 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %138 = alloca %"struct.llvm::MachineTraceMetricsVerifierPass", align 1 ; 3 uses
  %139 = alloca %"class.llvm::XRayInstrumentationPass", align 1 ; 3 uses
  %140 = alloca %"class.llvm::Expected", align 8  ; 6 uses
  %141 = alloca %"class.llvm::BranchFolderPass", align 1 ; 4 uses
  %142 = alloca %"class.llvm::Expected", align 8  ; 7 uses
  %143 = alloca %"class.llvm::LiveDebugValuesPass", align 1 ; 4 uses
  %144 = alloca %"class.llvm::Expected", align 8  ; 6 uses
  %145 = alloca %"class.llvm::MachineSinkingPass", align 1 ; 4 uses
  %146 = alloca %"class.llvm::Expected.3568", align 8 ; 10 uses
  %147 = alloca %"class.llvm::RegAllocFastPass", align 8 ; 7 uses
  %148 = alloca %"struct.llvm::RegAllocFastPass::Options", align 8 ; 8 uses
  %149 = alloca %"class.llvm::Expected.3579", align 8 ; 10 uses
  %150 = alloca %class.RAGreedyPass, align 8      ; 7 uses
  %151 = alloca %"struct.RAGreedyPass::Options", align 8 ; 8 uses
  %152 = alloca %"class.llvm::Expected", align 8  ; 6 uses
  %153 = alloca %"class.llvm::VirtRegRewriterPass", align 1 ; 4 uses
  %154 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %155 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %156 = alloca %"class.std::error_code", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !374
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !375  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !375  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.2297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2297.0.copyload = load i64, ptr %.sroa.2297.0..sroa_idx, align 8, !tbaa !187
  %.not.i = icmp eq i64 %.sroa.2297.0.copyload, 16
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread1820

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.b
  %.sroa.0296.0.copyload = load ptr, ptr %3, align 8, !tbaa !186
  %i.f = load i128, ptr %.sroa.0296.0.copyload, align 1
  %i.g = icmp ne i128 %i.f, 146793563361885899180431641419056374125
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm5ErrorD2Ev.exit.i.preheader, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread1820

_ZN4llvm5ErrorD2Ev.exit.i.preheader:              ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit.i

bb.c:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.014.i2218, i64 40 ; 2 uses
  %.not.i448 = icmp eq ptr %i.j, %i.d
  br i1 %.not.i448, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZN4llvm5ErrorD2Ev.exit.i

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit.i.preheader, %bb.c
  %.014.i2218 = phi ptr [ %i.j, %bb.c ], [ %i.b, %_ZN4llvm5ErrorD2Ev.exit.i.preheader ] ; 2 uses
  call void @_ZN4llvm11PassBuilder16parseMachinePassERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS2_JEEEJEEERKNS0_15PipelineElementE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2288) %1, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(40) %.014.i2218), !inline_history !716
  %i.k = load ptr, ptr %0, align 8, !tbaa !369
  %.not2208 = icmp eq ptr %i.k, null
  br i1 %.not2208, label %bb.c, label %.critedge

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.c
  %.pre = load ptr, ptr %16, align 8, !tbaa !720  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.pre2225 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !720 ; 2 uses
  %.not.i4492219 = icmp eq ptr %.pre, %.pre2225
  br i1 %.not.i4492219, label %_ZN4llvm5ErrorD2Ev.exit450, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_.exit
  %.sroa.05.0.i2220 = phi ptr [ %.pre, %.lr.ph ], [ %i.r, %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_.exit ] ; 4 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !724  ; 4 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !719
  %.not.i.i1179 = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i1179, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %.sroa.05.0.i2220, align 8, !tbaa !722
  store i64 %i.p, ptr %i.n, align 8, !tbaa !722
  store ptr null, ptr %.sroa.05.0.i2220, align 8, !tbaa !722
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !724
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.05.0.i2220)
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_.exit

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_.exit: ; preds = %bb.e, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i2220, i64 8 ; 2 uses
  %.not.i449 = icmp eq ptr %i.r, %.pre2225
  br i1 %.not.i449, label %_ZN4llvm5ErrorD2Ev.exit450, label %bb.d

_ZN4llvm5ErrorD2Ev.exit450:                       ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_.exit, %_ZN4llvm5ErrorD2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit.i, %_ZN4llvm5ErrorD2Ev.exit450
  %i.s = load ptr, ptr %16, align 8, !tbaa !723   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !724  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge, %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i ], [ %i.s, %.critedge ] ; 2 uses
  %i.v = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !722 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_15MachineFunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_15MachineFunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !175
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #27, !inline_history !60
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_15MachineFunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !61

_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %16, align 8, !tbaa !723
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i, %.critedge
  %i.aa = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i ], [ %i.s, %.critedge ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !719
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #30
  br label %_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit

_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread1820:     ; preds = %bb.b, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.ag = tail call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #27 ; 2 uses
  %i.ah = extractvalue { i32, ptr } %i.ag, 0
  %i.ai = extractvalue { i32, ptr } %i.ag, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5067)
  %i.aj = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28, !noalias !5068 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27, !noalias !5068
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.ak, align 1, !tbaa !200, !noalias !5068
  store ptr @.str.533, ptr %14, align 8, !tbaa !196, !noalias !5068
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 3, ptr %i.al, align 8, !tbaa !199, !noalias !5068
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull align 8 dereferenceable(34) %14, i32 %i.ah, ptr %i.ai) #27, !noalias !5068
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !5068
  store ptr %i.aj, ptr %0, align 8, !tbaa !369, !alias.scope !5067
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

bb.h:                                             ; preds = %bb.a
  %.sroa.0291.0.copyload = load ptr, ptr %15, align 8, !tbaa !186 ; 283 uses
  %.sroa.2292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.2292.0.copyload = load i64, ptr %.sroa.2292.0..sroa_idx, align 8, !tbaa !187 ; 36 uses
  switch i64 %.sroa.2292.0.copyload, label %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206 [
    i64 21, label %_ZN4llvmeqENS_9StringRefES0_.exit454
    i64 24, label %_ZN4llvmeqENS_9StringRefES0_.exit459
    i64 27, label %_ZN4llvmeqENS_9StringRefES0_.exit466
    i64 30, label %_ZN4llvmeqENS_9StringRefES0_.exit473
    i64 29, label %_ZN4llvmeqENS_9StringRefES0_.exit480
    i64 32, label %_ZN4llvmeqENS_9StringRefES0_.exit485
    i64 22, label %_ZN4llvmeqENS_9StringRefES0_.exit490
    i64 25, label %_ZN4llvmeqENS_9StringRefES0_.exit495
    i64 23, label %_ZN4llvmeqENS_9StringRefES0_.exit500
    i64 26, label %_ZN4llvmeqENS_9StringRefES0_.exit505
    i64 20, label %_ZN4llvmeqENS_9StringRefES0_.exit520
    i64 18, label %_ZN4llvmeqENS_9StringRefES0_.exit530
    i64 28, label %_ZN4llvmeqENS_9StringRefES0_.exit560
    i64 31, label %_ZN4llvmeqENS_9StringRefES0_.exit565
    i64 35, label %_ZN4llvmeqENS_9StringRefES0_.exit610
    i64 38, label %_ZN4llvmeqENS_9StringRefES0_.exit615
    i64 33, label %_ZN4llvmeqENS_9StringRefES0_.exit625
    i64 19, label %_ZN4llvmeqENS_9StringRefES0_.exit720
    i64 17, label %_ZN4llvmeqENS_9StringRefES0_.exit735
    i64 16, label %_ZN4llvmeqENS_9StringRefES0_.exit740
    i64 9, label %_ZN4llvmeqENS_9StringRefES0_.exit745
    i64 15, label %_ZN4llvmeqENS_9StringRefES0_.exit760
    i64 11, label %_ZN4llvmeqENS_9StringRefES0_.exit765
    i64 13, label %_ZN4llvmeqENS_9StringRefES0_.exit780
    i64 10, label %_ZN4llvmeqENS_9StringRefES0_.exit800
    i64 4, label %_ZN4llvmeqENS_9StringRefES0_.exit805
    i64 8, label %_ZN4llvmeqENS_9StringRefES0_.exit855
    i64 12, label %_ZN4llvmeqENS_9StringRefES0_.exit865
    i64 5, label %_ZN4llvmeqENS_9StringRefES0_.exit900
    i64 39, label %_ZN4llvmeqENS_9StringRefES0_.exit1030
    i64 14, label %_ZN4llvmeqENS_9StringRefES0_.exit1040
    i64 6, label %_ZN4llvmeqENS_9StringRefES0_.exit1087
  ]

_ZN4llvmeqENS_9StringRefES0_.exit454:             ; preds = %bb.h
  %i.am = load i128, ptr %.sroa.0291.0.copyload, align 1
  %i.an = xor i128 %i.am, 146824569541580771313051190809035105650
  %i.ao = getelementptr i8, ptr %.sroa.0291.0.copyload, i64 5
  %i.ap = load i128, ptr %i.ao, align 1
  %i.aq = xor i128 %i.ap, 83011306988489846806800989029337425266
  %i.ar = or i128 %i.an, %i.aq
  %i.as = icmp ne i128 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN4llvmeqENS_9StringRefES0_.exit454.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit535

_ZN4llvmeqENS_9StringRefES0_.exit454.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit454
  %i.av = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm6detail9PassModelINS_15MachineFunctionENS_19RequireAnalysisPassINS_19EdgeBundlesAnalysisES2_NS_15AnalysisManagerIS2_JEEEJEEES6_JEEE, i64 16), ptr %i.av, align 8, !tbaa !175
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !724 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !719
  %.not.i.i1180 = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i.i1180, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit454.thread
  %i.ba = ptrtoint ptr %i.av to i64
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !722
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !724
  br label %_ZN4llvm5ErrorD2Ev.exit455

bb.j:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit454.thread
  %i.bc = load ptr, ptr %2, align 8, !tbaa !723   ; 7 uses
  %i.bd = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.897) #29
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.j
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i1188 = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i1188)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #28 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  %i.bp = ptrtoint ptr %i.av to i64
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !722
  %.not10.i.i.i.i = icmp eq ptr %i.bc, %i.ax
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i, label %.lr.ph.i.i.i.i1189.preheader

.lr.ph.i.i.i.i1189.preheader:                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i
  %i.bq = add i64 %i.bd, -8
  %i.br = sub i64 %i.bq, %i.be                    ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check2460 = icmp ult i64 %i.br, 24
  br i1 %min.iters.check2460, label %.lr.ph.i.i.i.i1189.preheader2474, label %vector.ph2461

vector.ph2461:                                    ; preds = %.lr.ph.i.i.i.i1189.preheader
  %n.vec2462 = and i64 %i.bt, 4611686018427387900 ; 3 uses
  %i.bu = shl i64 %n.vec2462, 3                   ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bn, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bc, i64 %i.bu
  br label %vector.body2463

vector.body2463:                                  ; preds = %vector.body2463, %vector.ph2461
  %index2464 = phi i64 [ 0, %vector.ph2461 ], [ %index.next2469, %vector.body2463 ] ; 2 uses
  %i.bx = shl i64 %index2464, 3                   ; 2 uses
  %next.gep2465 = getelementptr i8, ptr %i.bn, i64 %i.bx ; 2 uses
  %next.gep2466 = getelementptr i8, ptr %i.bc, i64 %i.bx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5070)
  %i.by = getelementptr i8, ptr %next.gep2466, i64 16
  %wide.load2467 = load <2 x i64>, ptr %next.gep2466, align 8, !tbaa !722, !alias.scope !5070
  %wide.load2468 = load <2 x i64>, ptr %i.by, align 8, !tbaa !722, !alias.scope !5070
  %i.bz = getelementptr i8, ptr %next.gep2465, i64 16
  store <2 x i64> %wide.load2467, ptr %next.gep2465, align 8, !tbaa !722, !alias.scope !5069
  store <2 x i64> %wide.load2468, ptr %i.bz, align 8, !tbaa !722, !alias.scope !5069
  %i.ca = getelementptr i8, ptr %next.gep2466, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep2466, align 8, !tbaa !722, !alias.scope !5070
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !722, !alias.scope !5070
  %index.next2469 = add nuw i64 %index2464, 4     ; 2 uses
  %i.cb = icmp eq i64 %index.next2469, %n.vec2462
  br i1 %i.cb, label %middle.block2470, label %vector.body2463, !llvm.loop !5015

middle.block2470:                                 ; preds = %vector.body2463
  %cmp.n2471 = icmp eq i64 %i.bt, %n.vec2462
  br i1 %cmp.n2471, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i, label %.lr.ph.i.i.i.i1189.preheader2474

.lr.ph.i.i.i.i1189.preheader2474:                 ; preds = %.lr.ph.i.i.i.i1189.preheader, %middle.block2470
  %.012.i.i.i.i.ph = phi ptr [ %i.bn, %.lr.ph.i.i.i.i1189.preheader ], [ %i.bv, %middle.block2470 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bc, %.lr.ph.i.i.i.i1189.preheader ], [ %i.bw, %middle.block2470 ]
  br label %.lr.ph.i.i.i.i1189

.lr.ph.i.i.i.i1189:                               ; preds = %.lr.ph.i.i.i.i1189.preheader2474, %.lr.ph.i.i.i.i1189
  %.012.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i1189 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i1189.preheader2474 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i1189 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i1189.preheader2474 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5070)
  %i.cc = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !722, !alias.scope !5070
  store i64 %i.cc, ptr %.012.i.i.i.i, align 8, !tbaa !722, !alias.scope !5069
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !722, !alias.scope !5070
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i1190 = icmp eq ptr %i.cd, %i.ax
  br i1 %.not.i.i.i.i1190, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i, label %.lr.ph.i.i.i.i1189, !llvm.loop !5016

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i: ; preds = %.lr.ph.i.i.i.i1189, %middle.block2470, %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bn, %_ZNKSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i ], [ %i.bv, %middle.block2470 ], [ %i.ce, %.lr.ph.i.i.i.i1189 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bc, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i
  %i.cg = load ptr, ptr %i.ay, align 8, !tbaa !719
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.ci) #30
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i, %bb.l
  store ptr %i.bn, ptr %2, align 8, !tbaa !723
  store ptr %i.cf, ptr %i.aw, align 8, !tbaa !724
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.cj, ptr %i.ay, align 8, !tbaa !719
  br label %_ZN4llvm5ErrorD2Ev.exit455

_ZN4llvm5ErrorD2Ev.exit455:                       ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit459:             ; preds = %bb.h
  %i.ck = load i128, ptr %.sroa.0291.0.copyload, align 1
  %i.cl = xor i128 %i.ck, 60341778835369660066627985872866668137
  %i.cm = getelementptr i8, ptr %.sroa.0291.0.copyload, i64 16
  %i.cn = load i64, ptr %i.cm, align 1
  %i.co = zext i64 %i.cn to i128
  %i.cp = xor i128 %i.co, 4500051968889091426
  %i.cq = or i128 %i.cl, %i.cp
  %i.cr = icmp ne i128 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %_ZN4llvmeqENS_9StringRefES0_.exit459.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit510

_ZN4llvmeqENS_9StringRefES0_.exit459.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit459
  %i.cu = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm6detail9PassModelINS_15MachineFunctionENS_22InvalidateAnalysisPassINS_19EdgeBundlesAnalysisEEENS_15AnalysisManagerIS2_JEEEJEEE, i64 16), ptr %i.cu, align 8, !tbaa !175
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !724 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !719
  %.not.i.i1182 = icmp eq ptr %i.cw, %i.cy
  br i1 %.not.i.i1182, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit459.thread
  %i.cz = ptrtoint ptr %i.cu to i64
  store i64 %i.cz, ptr %i.cw, align 8, !tbaa !722
end_hunk_0
begin_hunk_1_@_ZN4llvm11PassBuilder16parseMachinePassERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS2_JEEEJEEERKNS0_15PipelineElementE:bb.a
  %i.auz = or i128 %i.auv, %i.auy
  %i.ava = icmp ne i128 %i.auz, 0
  %i.avb = zext i1 %i.ava to i32
  %i.avc = icmp eq i32 %i.avb, 0
  br i1 %i.avc, label %_ZN4llvm5ErrorD2Ev.exit1066, label %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread

_ZN4llvm5ErrorD2Ev.exit1066:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1065
  tail call fastcc void @_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEE7addPassIN12_GLOBAL__N_124TriggerVerifierErrorPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS9_(ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit1070:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit950
  %i.avd = load i128, ptr %.sroa.0291.0.copyload, align 1
  %i.ave = xor i128 %i.avd, 154789801047861608970350423078238910324
  %i.avf = getelementptr i8, ptr %.sroa.0291.0.copyload, i64 7
  %i.avg = load i128, ptr %i.avf, align 1
  %i.avh = xor i128 %i.avg, 146793563361894347757370471348652172658
  %i.avi = or i128 %i.ave, %i.avh
  %i.avj = icmp ne i128 %i.avi, 0
  %i.avk = zext i1 %i.avj to i32
  %i.avl = icmp eq i32 %i.avk, 0
  br i1 %i.avl, label %_ZN4llvm5ErrorD2Ev.exit1071, label %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread

_ZN4llvm5ErrorD2Ev.exit1071:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1070
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #27
  call void @_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_25TwoAddressInstructionPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %133)
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit1075:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit985
  %i.avm = load i128, ptr %.sroa.0291.0.copyload, align 1
  %i.avn = xor i128 %i.avm, 134814832627384941613971862478958653045
  %i.avo = getelementptr i8, ptr %.sroa.0291.0.copyload, i64 16
  %i.avp = load i8, ptr %i.avo, align 1
  %i.avq = zext i8 %i.avp to i128
  %i.avr = xor i128 %i.avq, 115
  %i.avs = or i128 %i.avn, %i.avr
  %i.avt = icmp ne i128 %i.avs, 0
  %i.avu = zext i1 %i.avt to i32
  %i.avv = icmp eq i32 %i.avu, 0
  br i1 %i.avv, label %_ZN4llvmeqENS_9StringRefES0_.exit1075.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread

_ZN4llvmeqENS_9StringRefES0_.exit1075.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1075
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %134, i8 0, i64 32, i1 false)
  call void @_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_24UnpackMachineBundlesPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %134)
  %i.avw = getelementptr inbounds nuw i8, ptr %134, i64 16
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !177 ; 2 uses
  %.not.i.i1076 = icmp eq ptr %i.avx, null
  br i1 %.not.i.i1076, label %_ZN4llvm5ErrorD2Ev.exit1078, label %bb.u

bb.u:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1075.thread
  %i.avy = call noundef zeroext i1 %i.avx(ptr noundef nonnull align 8 dereferenceable(32) %134, ptr noundef nonnull align 8 dereferenceable(32) %134, i32 noundef 3) #27, !inline_history !64 ; 0 uses
  br label %_ZN4llvm5ErrorD2Ev.exit1078

_ZN4llvm5ErrorD2Ev.exit1078:                      ; preds = %bb.u, %_ZN4llvmeqENS_9StringRefES0_.exit1075.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit1082:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1020
  %i.avz = load i128, ptr %.sroa.0291.0.copyload, align 1
  %i.awa = xor i128 %i.avz, 60326101228517938086903294953497194101
  %i.awb = getelementptr i8, ptr %.sroa.0291.0.copyload, i64 11
  %i.awc = load i128, ptr %i.awb, align 1
  %i.awd = xor i128 %i.awc, 146793563361266872625843781175540346157
  %i.awe = or i128 %i.awa, %i.awd
  %i.awf = icmp ne i128 %i.awe, 0
  %i.awg = zext i1 %i.awf to i32
  %i.awh = icmp eq i32 %i.awg, 0
  br i1 %i.awh, label %_ZN4llvm5ErrorD2Ev.exit1083, label %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread

_ZN4llvm5ErrorD2Ev.exit1083:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1082
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #27
  call void @_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_31UnreachableMachineBlockElimPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %135)
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit1087:            ; preds = %bb.h
  %i.awi = load i32, ptr %.sroa.0291.0.copyload, align 1
  %i.awj = xor i32 %i.awi, 1769104758
  %i.awk = getelementptr i8, ptr %.sroa.0291.0.copyload, i64 4
  %i.awl = load i16, ptr %i.awk, align 1
  %i.awm = zext i16 %i.awl to i32
  %i.awn = xor i32 %i.awm, 31078
  %i.awo = or i32 %i.awj, %i.awn
  %i.awp = icmp ne i32 %i.awo, 0
  %i.awq = zext i1 %i.awp to i32
  %i.awr = icmp eq i32 %i.awq, 0
  br i1 %i.awr, label %_ZN4llvmeqENS_9StringRefES0_.exit1087.thread, label %_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_.exit2324.thread

_ZN4llvmeqENS_9StringRefES0_.exit1087.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1087
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #27
  %i.aws = getelementptr inbounds nuw i8, ptr %137, i64 16 ; 4 uses
  store ptr %i.aws, ptr %137, align 8, !tbaa !355
  %i.awt = getelementptr inbounds nuw i8, ptr %137, i64 8
  store i64 0, ptr %i.awt, align 8, !tbaa !357
  store i8 0, ptr %i.aws, align 8, !tbaa !196
  call void @_ZN4llvm19MachineVerifierPassC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %136, ptr noundef nonnull align 8 dereferenceable(32) %137)
  call void @_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_19MachineVerifierPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %136)
  %i.awu = load ptr, ptr %136, align 8, !tbaa !365 ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %136, i64 16 ; 2 uses
  %i.aww = icmp eq ptr %i.awu, %i.awv
  br i1 %i.aww, label %_ZN4llvm19MachineVerifierPassD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1087.thread
  %i.awx = load i64, ptr %i.awv, align 8, !tbaa !196
  %i.awy = add i64 %i.awx, 1
  call void @_ZdlPvm(ptr noundef %i.awu, i64 noundef %i.awy) #30
  br label %_ZN4llvm19MachineVerifierPassD2Ev.exit

_ZN4llvm19MachineVerifierPassD2Ev.exit:           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1087.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.awz = load ptr, ptr %137, align 8, !tbaa !365 ; 2 uses
  %i.axa = icmp eq ptr %i.awz, %i.aws
  br i1 %i.axa, label %_ZN4llvm5ErrorD2Ev.exit1088, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm19MachineVerifierPassD2Ev.exit
  %i.axb = load i64, ptr %i.aws, align 8, !tbaa !196
  %i.axc = add i64 %i.axb, 1
  call void @_ZdlPvm(ptr noundef %i.awz, i64 noundef %i.axc) #30
  br label %_ZN4llvm5ErrorD2Ev.exit1088

_ZN4llvm5ErrorD2Ev.exit1088:                      ; preds = %_ZN4llvm19MachineVerifierPassD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit1092:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1025
  %i.axd = load i128, ptr %.sroa.0291.0.copyload, align 1
  %i.axe = xor i128 %i.axd, 154426158140774277515883877914022929782
  %i.axf = getelementptr i8, ptr %.sroa.0291.0.copyload, i64 13
  %i.axg = load i128, ptr %i.axf, align 1
  %i.axh = xor i128 %i.axg, 83011266190326120298134101577170169189
  %i.axi = or i128 %i.axe, %i.axh
  %i.axj = icmp ne i128 %i.axi, 0
  %i.axk = zext i1 %i.axj to i32
  %i.axl = icmp eq i32 %i.axk, 0
  br i1 %i.axl, label %_ZN4llvm5ErrorD2Ev.exit1093, label %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread

_ZN4llvm5ErrorD2Ev.exit1093:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1092
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #27
  call void @_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_31MachineTraceMetricsVerifierPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %138)
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit1097:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1055
  %i.axm = load i128, ptr %.sroa.0291.0.copyload, align 1
  %i.axn = xor i128 %i.axm, 129539661127703546190364138567098266232
  %i.axo = getelementptr i8, ptr %.sroa.0291.0.copyload, i64 16
  %i.axp = load i32, ptr %i.axo, align 1
  %i.axq = zext i32 %i.axp to i128
  %i.axr = xor i128 %i.axq, 1852795252
  %i.axs = or i128 %i.axn, %i.axr
  %i.axt = icmp ne i128 %i.axs, 0
  %i.axu = zext i1 %i.axt to i32
  %i.axv = icmp eq i32 %i.axu, 0
  br i1 %i.axv, label %_ZN4llvm5ErrorD2Ev.exit1098, label %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread

_ZN4llvm5ErrorD2Ev.exit1098:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1097
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #27
  call void @_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_23XRayInstrumentationPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %139)
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206: ; preds = %bb.h
  %.not.i.i.i2287 = icmp ult i64 %.sroa.2292.0.copyload, 15
  br i1 %.not.i.i.i2287, label %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread2343, label %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread

_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1097, %_ZN4llvmeqENS_9StringRefES0_.exit565, %_ZN4llvmeqENS_9StringRefES0_.exit610, %_ZN4llvmeqENS_9StringRefES0_.exit615, %_ZN4llvmeqENS_9StringRefES0_.exit645, %_ZN4llvmeqENS_9StringRefES0_.exit655, %_ZN4llvmeqENS_9StringRefES0_.exit705, %_ZN4llvmeqENS_9StringRefES0_.exit715, %_ZN4llvmeqENS_9StringRefES0_.exit960, %_ZN4llvmeqENS_9StringRefES0_.exit970, %_ZN4llvmeqENS_9StringRefES0_.exit990, %_ZN4llvmeqENS_9StringRefES0_.exit1005, %_ZN4llvmeqENS_9StringRefES0_.exit1015, %_ZN4llvmeqENS_9StringRefES0_.exit1030, %_ZN4llvmeqENS_9StringRefES0_.exit1045, %_ZN4llvmeqENS_9StringRefES0_.exit1050, %_ZN4llvmeqENS_9StringRefES0_.exit1065, %_ZN4llvmeqENS_9StringRefES0_.exit1070, %_ZN4llvmeqENS_9StringRefES0_.exit1075, %_ZN4llvmeqENS_9StringRefES0_.exit1082, %_ZN4llvmeqENS_9StringRefES0_.exit1092, %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206
  %i.axw = load i64, ptr %.sroa.0291.0.copyload, align 1
  %i.axx = xor i64 %i.axw, 7813795292740807778
  %i.axy = getelementptr i8, ptr %.sroa.0291.0.copyload, i64 7
  %i.axz = load i64, ptr %i.axy, align 1
  %i.aya = xor i64 %i.axz, 8389754676364665196
  %i.ayb = or i64 %i.axx, %i.aya
  %i.ayc = icmp ne i64 %i.ayb, 0
  %i.ayd = zext i1 %i.ayc to i32
  %i.aye = icmp eq i32 %i.ayd, 0
  br i1 %i.aye, label %bb.v, label %.thread

_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread.thread: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1060
  %i.ayf = load i64, ptr %.sroa.0291.0.copyload, align 1
  %i.ayg = xor i64 %i.ayf, 7813795292740807778
  %i.ayh = getelementptr i8, ptr %.sroa.0291.0.copyload, i64 7
  %i.ayi = load i64, ptr %i.ayh, align 1
  %i.ayj = xor i64 %i.ayi, 8389754676364665196
  %i.ayk = or i64 %i.ayg, %i.ayj
  %i.ayl = icmp ne i64 %i.ayk, 0
  %i.aym = zext i1 %i.ayl to i32
  %i.ayn = icmp eq i32 %i.aym, 0
  br i1 %i.ayn, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i, label %.thread.thread

bb.v:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread
  %i.ayo = icmp eq i64 %.sroa.2292.0.copyload, 15
  br i1 %i.ayo, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.v
  %i.ayp = getelementptr inbounds nuw i8, ptr %.sroa.0291.0.copyload, i64 15
  %lhsc.i2290 = load i8, ptr %i.ayp, align 1
  %i.ayq = icmp eq i8 %lhsc.i2290, 60
  br i1 %i.ayq, label %_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_.exit, label %.thread

_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_.exit: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.ayr = getelementptr inbounds nuw i8, ptr %.sroa.0291.0.copyload, i64 %.sroa.2292.0.copyload
  %i.ays = getelementptr inbounds i8, ptr %i.ayr, i64 -1
  %lhsc15.i = load i8, ptr %i.ays, align 1
  %i.ayt = icmp eq i8 %lhsc15.i, 62
  br i1 %i.ayt, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i, label %.thread

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i:    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread.thread, %bb.v, %_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_.exit
  %.not.i.i.i = icmp ugt i64 %.sroa.2292.0.copyload, 14
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ayu = icmp eq i64 %.sroa.2292.0.copyload, 15
  br i1 %i.ayu, label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit.thread, label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit

_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.x

_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i
  %i.ayv = getelementptr inbounds nuw i8, ptr %.sroa.0291.0.copyload, i64 16 ; 4 uses
  %.not.i.i14.i = icmp ne i64 %.sroa.2292.0.copyload, 16
  tail call void @llvm.assume(i1 %.not.i.i14.i)
  %i.ayw = add i64 %.sroa.2292.0.copyload, -17    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.ayv, ptr %9, align 8, !noalias !5081
  %i.ayx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.ayw, ptr %i.ayx, align 8, !noalias !5081
  %i.ayy = icmp eq i64 %i.ayw, 0
  br i1 %i.ayy, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit
  %.not.i.i.i2291 = icmp ult i64 %i.ayw, 3
  br i1 %.not.i.i.i2291, label %_ZN4llvm5ErrorD2Ev.exit.i2294, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i2292

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i2292: ; preds = %bb.w
  %i.ayz = load i16, ptr %i.ayv, align 1
  %i.aza = xor i16 %i.ayz, 28526
  %i.azb = getelementptr i8, ptr %i.ayv, i64 2
  %i.azc = load i8, ptr %i.azb, align 1
  %i.azd = zext i8 %i.azc to i16
  %i.aze = xor i16 %i.azd, 45
  %i.azf = or i16 %i.aza, %i.aze
  %i.azg = icmp ne i16 %i.azf, 0
  %i.azh = zext i1 %i.azg to i32
  %i.azi = icmp eq i32 %i.azh, 0
  br i1 %i.azi, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread.i.i, label %_ZN4llvm9StringRef13consume_frontES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.thread.i.i: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i2292
  %i.azj = getelementptr inbounds nuw i8, ptr %.sroa.0291.0.copyload, i64 19 ; 2 uses
  %i.azk = add i64 %.sroa.2292.0.copyload, -20    ; 2 uses
  store ptr %i.azj, ptr %9, align 8, !tbaa !186, !noalias !5081
  store i64 %i.azk, ptr %i.ayx, align 8, !tbaa !187, !noalias !5081
  br label %_ZN4llvm9StringRef13consume_frontES0_.exit.i

_ZN4llvm9StringRef13consume_frontES0_.exit.i:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread.i.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i2292
  %.sroa.0.0.copyload.i = phi ptr [ %i.azj, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread.i.i ], [ %i.ayv, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i2292 ] ; 2 uses
  %.sroa.2.0.copyload.i = phi i64 [ %i.azk, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread.i.i ], [ %i.ayw, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i2292 ]
  %i.azl = phi i8 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread.i.i ], [ 1, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i2292 ]
  %.not.i.i1.i = icmp eq i64 %.sroa.2.0.copyload.i, 10
  br i1 %.not.i.i1.i, label %_ZN4llvmneENS_9StringRefES0_.exit.i, label %_ZN4llvm5ErrorD2Ev.exit.i2294

_ZN4llvmneENS_9StringRefES0_.exit.i:              ; preds = %_ZN4llvm9StringRef13consume_frontES0_.exit.i
  %i.azm = load i64, ptr %.sroa.0.0.copyload.i, align 1
  %i.azn = xor i64 %i.azm, 8243114734831362420
  %i.azo = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.azp = load i16, ptr %i.azo, align 1
  %i.azq = zext i16 %i.azp to i64
  %i.azr = xor i64 %i.azq, 25959
  %i.azs = or i64 %i.azn, %i.azr
  %i.azt = icmp ne i64 %i.azs, 0
  %i.azu = zext i1 %i.azt to i32
  %.not.i2297 = icmp eq i32 %i.azu, 0
  br i1 %.not.i2297, label %bb.x, label %_ZN4llvm5ErrorD2Ev.exit.i2294

_ZN4llvm5ErrorD2Ev.exit.i2294:                    ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i, %_ZN4llvm9StringRef13consume_frontES0_.exit.i, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !5081
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !5081
  %i.azv = ptrtoint ptr %9 to i64
  %i.azw = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store ptr @.str.891, ptr %11, align 8, !tbaa !186, !alias.scope !5082, !noalias !5081
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 48, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !187, !alias.scope !5082, !noalias !5081
  %i.azx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.azw, ptr %i.azx, align 8, !tbaa !189, !alias.scope !5082, !noalias !5081
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !187, !alias.scope !5082, !noalias !5081
  %i.azy = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 1, ptr %i.azy, align 8, !tbaa !193, !alias.scope !5082, !noalias !5081
  %i.azz = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  store i64 %i.azv, ptr %i.azz, align 8, !tbaa !195, !alias.scope !5082, !noalias !5081
  %i.baa = ptrtoint ptr %i.azz to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_, ptr %i.azw, align 8, !alias.scope !5082, !noalias !5081
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  store i64 %i.baa, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !196, !alias.scope !5082, !noalias !5081
  call void @llvm.experimental.noalias.scope.decl(metadata !5083)
  %i.bab = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.bab, ptr %10, align 8, !tbaa !355, !alias.scope !5083, !noalias !5081
  %i.bac = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.bac, align 8, !tbaa !357, !alias.scope !5083, !noalias !5081
  store i8 0, ptr %i.bab, align 8, !tbaa !196, !alias.scope !5083, !noalias !5081
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !5084
  %i.bad = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.bad, align 8, !tbaa !358, !noalias !5084
  %i.bae = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i8 0, ptr %i.bae, align 8, !tbaa !359, !noalias !5084
  %i.baf = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 1, ptr %i.baf, align 4, !tbaa !360, !noalias !5084
  %i.bag = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bag, i8 0, i64 24, i1 false), !noalias !5084
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %8, align 8, !tbaa !175, !noalias !5084
  %i.bah = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %10, ptr %i.bah, align 8, !tbaa !362, !noalias !5084
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef null, i64 noundef 0, i32 noundef 0) #27, !noalias !5081
  %i.bai = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(33) %11) #27, !noalias !5081 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #27, !noalias !5081
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !5084
  %i.baj = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #27, !noalias !5081 ; 2 uses
  %i.bak = extractvalue { i32, ptr } %i.baj, 0
  %i.bal = extractvalue { i32, ptr } %i.baj, 1
  %i.bam = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28, !noalias !5085 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !5085
  %i.ban = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 4, ptr %i.ban, align 8, !tbaa !199, !noalias !5085
  %i.bao = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.bao, align 1, !tbaa !200, !noalias !5085
  store ptr %10, ptr %7, align 8, !tbaa !196, !noalias !5085
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.bam, ptr noundef nonnull align 8 dereferenceable(34) %7, i32 %i.bak, ptr %i.bal) #27, !noalias !5085
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !5085
  %i.bap = load ptr, ptr %10, align 8, !tbaa !365, !noalias !5081 ; 2 uses
  %i.baq = icmp eq ptr %i.bap, %i.bab
  br i1 %i.baq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2295: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i2294
  %i.bar = load i64, ptr %i.bab, align 8, !tbaa !196, !noalias !5081
  %i.bas = add i64 %i.bar, 1
  call void @_ZdlPvm(ptr noundef %i.bap, i64 noundef %i.bas) #30, !noalias !5081
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2296

bb.x:                                             ; preds = %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit.thread, %_ZN4llvmneENS_9StringRefES0_.exit.i, %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit
  %.0.i2298 = phi i8 [ 1, %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit ], [ %i.azl, %_ZN4llvmneENS_9StringRefES0_.exit.i ], [ 1, %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.bat = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm6detail9PassModelINS_15MachineFunctionENS_25MachineBlockPlacementPassENS_15AnalysisManagerIS2_JEEEJEEE, i64 16), ptr %i.bat, align 8, !tbaa !175
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 8
  store i8 %.0.i2298, ptr %i.bau, align 8
  store ptr %i.bat, ptr %6, align 8, !tbaa !722
  %i.bav = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !724 ; 4 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bay = load ptr, ptr %i.bax, align 8, !tbaa !719
  %.not.i.i2335 = icmp eq ptr %i.baw, %i.bay
  br i1 %.not.i.i2335, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_.exit2336, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_.exit2336.thread

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_.exit2336.thread: ; preds = %bb.x
  %i.baz = ptrtoint ptr %i.bat to i64
  store i64 %i.baz, ptr %i.baw, align 8, !tbaa !722
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baw, i64 8
  store ptr %i.bba, ptr %i.bav, align 8, !tbaa !724
  br label %_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_25MachineBlockPlacementPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_.exit

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_.exit2336: ; preds = %bb.x
  call void @_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.baw, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pr2353 = load ptr, ptr %6, align 8, !tbaa !722 ; 3 uses
  %.not.i.i = icmp eq ptr %.pr2353, null
  br i1 %.not.i.i, label %_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_25MachineBlockPlacementPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_.exit, label %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_15MachineFunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i

_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_15MachineFunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_.exit2336
  %i.bbb = load ptr, ptr %.pr2353, align 8, !tbaa !175
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 8
  %i.bbd = load ptr, ptr %i.bbc, align 8
  call void %i.bbd(ptr noundef nonnull align 8 dereferenceable(8) %.pr2353) #27, !inline_history !5040
  br label %_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_25MachineBlockPlacementPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_.exit

_ZN4llvm11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_25MachineBlockPlacementPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_.exit2336.thread, %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_15MachineFunctionENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_.exit2336, %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_15MachineFunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2296: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i2294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2295
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !5081
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !5081
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store ptr %i.bam, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread2343: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206
  %.not.i.i.i2300 = icmp samesign ult i64 %.sroa.2292.0.copyload, 13
  br i1 %.not.i.i.i2300, label %_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_.exit2324.thread, label %.thread

.thread:                                          ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread, %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit1097.thread2206.thread2343
  %i.bbe = load i64, ptr %.sroa.0291.0.copyload, align 1
  %i.bbf = xor i64 %i.bbe, 7362655742083560034
  %i.bbg = getelementptr i8, ptr %.sroa.0291.0.copyload, i64 5
  %i.bbh = load i64, ptr %i.bbg, align 1
  %i.bbi = xor i64 %i.bbh, 8243105109859773800
  %i.bbj = or i64 %i.bbf, %i.bbi
  %i.bbk = icmp ne i64 %i.bbj, 0
  %i.bbl = zext i1 %i.bbk to i32
  %i.bbm = icmp eq i32 %i.bbl, 0
  br i1 %i.bbm, label %bb.y, label %_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_.exit2308.thread

.thread.thread2376:                               ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit995
  %i.bbn = load i64, ptr %.sroa.0291.0.copyload, align 1
  %i.bbo = xor i64 %i.bbn, 7362655742083560034
  %i.bbp = getelementptr i8, ptr %.sroa.0291.0.copyload, i64 5
  %i.bbq = load i64, ptr %i.bbp, align 1
  %i.bbr = xor i64 %i.bbq, 8243105109859773800
  %i.bbs = or i64 %i.bbo, %i.bbr
  %i.bbt = icmp ne i64 %i.bbs, 0
  %i.bbu = zext i1 %i.bbt to i32
  %i.bbv = icmp eq i32 %i.bbu, 0
  br i1 %i.bbv, label %_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_.exit2308.thread2359, label %_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_.exit2324.thread

.thread.thread2373:                               ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1040
end_hunk_1
