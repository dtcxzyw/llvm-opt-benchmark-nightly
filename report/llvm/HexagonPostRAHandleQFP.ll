Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonPostRAHandleQFP?download=true
inline.NumInlined: 3362
inline.NumDeleted: 1580
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE:bb.a
  %i.d = tail call i64 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %0) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0) #20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %0, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(56) %0) #20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.o, align 8
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #5

declare noundef ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #5

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #5

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_122HexagonPostRAHandleQFP16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #20
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE) #20 ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm35MachineDominanceFrontierWrapperPass2IDE) #20 ; 0 uses
  tail call void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161) %1) #20
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_122HexagonPostRAHandleQFP20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::rdf::DataFlowGraph::Config", align 8 ; 13 uses
  %i.a = alloca ptr, align 8                      ; 12 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 16 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %15 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %16 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %19 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %20 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %21 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %22 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %23 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %24 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %25 = alloca %"class.llvm::MachineOperand", align 8 ; 23 uses
  %26 = alloca %"class.llvm::MachineOperand", align 8 ; 24 uses
  %27 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %28 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %29 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %30 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %31 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %32 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %33 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %34 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %35 = alloca %"class.std::set", align 8         ; 11 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %36 = alloca %"struct.llvm::detail::DenseMapPair.593", align 8 ; 7 uses
  %37 = alloca %"class.std::set", align 8         ; 9 uses
  %38 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %39 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %40 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %41 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %42 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %43 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %44 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %45 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %46 = alloca %"class.llvm::SmallVector.73", align 8 ; 10 uses
  %47 = alloca %"class.std::set", align 8         ; 8 uses
  %48 = alloca %"class.std::set", align 8         ; 8 uses
  %49 = alloca %"struct.std::pair.464", align 8   ; 8 uses
  %50 = alloca %"struct.llvm::rdf::NodeAddr.86", align 8 ; 5 uses
  %51 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %52 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %53 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %54 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %55 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %56 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %57 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %58 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %59 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %60 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %61 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %62 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %.sroa.531.i = alloca %"struct.llvm::rdf::NodeAddr.86", align 8 ; 4 uses
  %63 = alloca %"struct.llvm::rdf::NodeAddr.86", align 8 ; 6 uses
  %64 = alloca %"struct.llvm::rdf::NodeAddr.86", align 8 ; 9 uses
  %.sroa.0.i = alloca %"struct.llvm::rdf::NodeAddr.86", align 8 ; 8 uses
  %65 = alloca %"class.llvm::SmallVector.73", align 8 ; 9 uses
  %66 = alloca %"class.llvm::SmallVector.73", align 8 ; 10 uses
  %67 = alloca %"class.std::set", align 8         ; 8 uses
  %68 = alloca %"class.std::set", align 8         ; 8 uses
  %69 = alloca %"struct.std::pair.464", align 8   ; 8 uses
  %70 = alloca %"struct.std::pair.328", align 8   ; 7 uses
  %71 = alloca %"struct.std::pair.328", align 8   ; 7 uses
  %72 = alloca %"class.llvm::SmallVector.73", align 8 ; 9 uses
  %73 = alloca %"class.llvm::SmallVector.73", align 8 ; 10 uses
  %74 = alloca %"struct.llvm::rdf::NodeAddr.86", align 8 ; 8 uses
  %75 = alloca %"class.llvm::MachineOperand", align 8 ; 15 uses
  %76 = alloca %"struct.llvm::rdf::DataFlowGraph::Config", align 8 ; 13 uses
  %77 = alloca %"struct.llvm::rdf::DataFlowGraph", align 8 ; 7 uses
  %78 = alloca %"struct.llvm::rdf::Liveness", align 8 ; 6 uses
  %79 = alloca %"class.llvm::SmallVector.73", align 8 ; 7 uses
  %80 = alloca %"class.llvm::SmallVector.73", align 8 ; 7 uses
  %81 = alloca %"struct.llvm::rdf::NodeAddr.86", align 8 ; 6 uses
  %82 = alloca %"struct.llvm::rdf::DataFlowGraph", align 8 ; 7 uses
  %83 = alloca %"struct.llvm::rdf::Liveness", align 8 ; 6 uses
  %84 = alloca %class.XqfPostRADiagnosis, align 8 ; 6 uses
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @DisablePostRAHandleQFloat, i64 120), align 8, !tbaa !270, !range !25, !noundef !26
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.jq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !202, !nonnull !26, !align !203 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 432
  %i.m = load i32, ptr %i.l, align 8, !tbaa !375
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.jq

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(519600) %i.k) #20 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 50 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !408
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @QFloatModeValue, i64 120), align 8, !tbaa !707
  %i.u = icmp eq i32 %i.t, 3
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo12hasQFPInstrsERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(440) %i.r, ptr noundef nonnull align 8 dereferenceable(1065) %1) #20
  br i1 %i.v, label %bb.e, label %bb.jq

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(519600) %i.k) #20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 19 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !409
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !708
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !709
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !235 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !711 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !711 ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.ag, %i.ai
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !714 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.aj, @_ZN4llvm35MachineDominanceFrontierWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_35MachineDominanceFrontierWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.ag, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.ak, %i.ai
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !714
  %.not.i.i.i = icmp eq ptr %i.al, @_ZN4llvm35MachineDominanceFrontierWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_35MachineDominanceFrontierWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_35MachineDominanceFrontierWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.ak, %.lr.ph.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 2 uses
  %.not.i3.i.i57 = icmp eq ptr %i.aj, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i57, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i58

.lr.ph.i.i.i58:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_35MachineDominanceFrontierWrapperPassEEERT_v.exit, %.lr.ph.i.i.i58
  %.sroa.08.015.i4.i.i59 = phi ptr [ %i.ap, %.lr.ph.i.i.i58 ], [ %i.ag, %_ZNK4llvm4Pass11getAnalysisINS_35MachineDominanceFrontierWrapperPassEEERT_v.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i59, i64 16 ; 4 uses
  %.not11.i.i.i60 = icmp ne ptr %i.ap, %i.ai
  tail call void @llvm.assume(i1 %.not11.i.i.i60)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !714
  %.not.i.i.i61 = icmp eq ptr %i.aq, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i61, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i58

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i58, %_ZNK4llvm4Pass11getAnalysisINS_35MachineDominanceFrontierWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i62 = phi ptr [ %i.ag, %_ZNK4llvm4Pass11getAnalysisINS_35MachineDominanceFrontierWrapperPassEEERT_v.exit ], [ %i.ap, %.lr.ph.i.i.i58 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i62, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  store ptr %i.k, ptr %i.au, align 8, !tbaa !410
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #20
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !408
  call void @_ZN4llvm3rdf13DataFlowGraphC1ERNS_15MachineFunctionERKNS_15TargetInstrInfoERKNS_18TargetRegisterInfoERKNS_20MachineDominatorTreeERKNS_24MachineDominanceFrontierE(ptr noundef nonnull align 8 dereferenceable(808) %77, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.av, ptr noundef nonnull align 8 dereferenceable(316) %i.z, ptr noundef nonnull align 8 dereferenceable(204) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #20
  %i.aw = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %76, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %76, i8 0, i64 88, i1 false)
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %76, i64 20
  store i32 6, ptr %i.ay, align 4, !tbaa !71
  %i.az = getelementptr inbounds nuw i8, ptr %76, i64 80 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %76, i64 88 ; 2 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !81
  %i.bb = getelementptr inbounds nuw i8, ptr %76, i64 96
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !85
  %i.bc = getelementptr inbounds nuw i8, ptr %76, i64 104
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !236
  %i.bd = getelementptr inbounds nuw i8, ptr %76, i64 112
  store i64 0, ptr %i.bd, align 8, !tbaa !83
  call void @_ZN4llvm3rdf13DataFlowGraph5buildERKNS1_6ConfigE(ptr noundef nonnull align 8 dereferenceable(808) %77, ptr noundef nonnull align 8 dereferenceable(120) %76) #20
  %i.be = getelementptr inbounds nuw i8, ptr %76, i64 72
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !81
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef %i.bf)
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ax
  br i1 %i.bh, label %_ZN4llvm3rdf13DataFlowGraph5buildEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  call void @free(ptr noundef %i.bg) #20
  br label %_ZN4llvm3rdf13DataFlowGraph5buildEv.exit

_ZN4llvm3rdf13DataFlowGraph5buildEv.exit:         ; preds = %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #20
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 30 uses
  store ptr %77, ptr %i.bi, align 8, !tbaa !411
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #20
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !709
  call void @_ZN4llvm3rdf8LivenessC2ERNS_19MachineRegisterInfoERKNS0_13DataFlowGraphE(ptr noundef nonnull align 8 dereferenceable(472) %78, ptr noundef nonnull align 8 dereferenceable(520) %i.bj, ptr noundef nonnull align 8 dereferenceable(808) %77)
  call void @_ZN4llvm3rdf8Liveness14computePhiInfoEv(ptr noundef nonnull align 8 dereferenceable(472) %78) #20
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 5 uses
  store ptr %78, ptr %i.bk, align 8, !tbaa !412
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !411 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 352
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bm, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #20
  call void @_ZNK4llvm3rdf8CodeNode7membersERKNS0_13DataFlowGraphE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.73") align 8 %79, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(808) %i.bl) #20
  %i.bn = load ptr, ptr %79, align 8, !tbaa !29   ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %79, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !45 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %.idx = shl nuw nsw i64 %i.bq, 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx
  %.not264 = icmp eq i32 %i.bp, 0
  br i1 %.not264, label %._crit_edge267, label %.lr.ph266

.lr.ph266:                                        ; preds = %_ZN4llvm3rdf13DataFlowGraph5buildEv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %65, i64 12 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %66, i64 12 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %67, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %67, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %68, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %68, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %69, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %69, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %.sroa.598.0..sroa_idx99.i = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %71, i64 16
  %.sroa.682.0..sroa_idx83.i = getelementptr inbounds nuw i8, ptr %71, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.sroa.598.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %70, i64 16
  %.sroa.682.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %70, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %69, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %72, i64 12 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %73, i64 12 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %80, i64 16
  %i.db = insertelement <2 x ptr> poison, ptr %i.bz, i64 0
  %i.dc = shufflevector <2 x ptr> %i.db, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.dd = insertelement <2 x ptr> poison, ptr %i.cd, i64 0
  %i.de = shufflevector <2 x ptr> %i.dd, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.ax

._crit_edge267.loopexit:                          ; preds = %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit67
  %.pre303 = load ptr, ptr %79, align 8, !tbaa !29
  br label %._crit_edge267

._crit_edge267:                                   ; preds = %._crit_edge267.loopexit, %_ZN4llvm3rdf13DataFlowGraph5buildEv.exit
  %i.df = phi ptr [ %.pre303, %._crit_edge267.loopexit ], [ %i.bn, %_ZN4llvm3rdf13DataFlowGraph5buildEv.exit ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %79, i64 16
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge267
  call void @free(ptr noundef %i.df) #20
  br label %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit: ; preds = %._crit_edge267, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !715 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !715 ; 2 uses
  %.not290.i = icmp eq ptr %i.dj, %i.dl
  br i1 %.not290.i, label %_ZNSt6vectorISt4pairIPN4llvm12MachineInstrENS1_3rdf8NodeAddrIPNS4_7DefNodeEEEESaIS9_EE5clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm11SmallVectorINS_3rdf8NodeAddrIPNS1_8NodeBaseEEELj4EED2Ev.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %75, i64 4 ; 7 uses
  %.sroa.2.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 15 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 9 uses
  %.phi.trans.insert.i157.i = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 15 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 9 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit.i, %.lr.ph.i
  %.0292.i = phi i1 [ false, %.lr.ph.i ], [ %.2.i, %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit.i ] ; 3 uses
  %.sroa.0269.0291.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %i.pm, %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit.i ] ; 3 uses
  %.sroa.041.0.copyload.i = load ptr, ptr %.sroa.0269.0291.i, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0269.0291.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.041.0.copyload.i, i64 52
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !70 ; 2 uses
  %i.ds = load ptr, ptr %74, align 8, !tbaa !415  ; 4 uses
  %i.dt = load ptr, ptr %i.bi, align 8, !tbaa !411
  %i.du = call { ptr, i32 } @_ZN4llvm3rdf7RefNode8getOwnerERKNS0_13DataFlowGraphE(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(808) %i.dt) #20
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.du, 0
  %i.dv = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !53 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #20
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.041.0.copyload.i, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !416
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 32, i1 false), !tbaa.struct !716
  %i.ea = load i32, ptr %i.dm, align 4, !tbaa !53 ; 6 uses
  %i.eb = icmp eq i32 %i.dr, 503
  br i1 %i.eb, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, label %bb.ac

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i: ; preds = %bb.h
  %.sroa.213.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i63, align 8, !tbaa !86
  call fastcc void @_ZN12_GLOBAL__N_122HexagonPostRAHandleQFP13collectQFUsesEN4llvm3rdf8NodeAddrIPNS2_7DefNodeEEEPNS1_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr nonnull %i.ds, i32 %.sroa.213.0.copyload.i)
  %i.ec = load i8, ptr %i.do, align 8, !tbaa !24, !range !25, !noundef !26
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i
  %i.ee = load ptr, ptr %i.dn, align 8, !tbaa !27 ; 5 uses
  %i.ef = load i32, ptr %.phi.trans.insert.i157.i, align 4, !tbaa !238 ; 4 uses
  %i.eg = zext i32 %i.ef to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.eg, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx.i.i.i ; 3 uses
  %.not2026.i.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not2026.i.i.i, label %_ZNK4llvm19SmallPtrSetImplBase8find_impEPKv.exit.i.i, label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %bb.i, %bb.j
  %.01627.i.i.i = phi ptr [ %i.ej, %bb.j ], [ %i.ee, %bb.i ] ; 3 uses
  %i.ei = load ptr, ptr %.01627.i.i.i, align 8, !tbaa !227
  %.not21.i.i.i = icmp eq ptr %i.ei, %i.dw
  br i1 %.not21.i.i.i, label %_ZNK4llvm19SmallPtrSetImplBase8find_impEPKv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i66
  %i.ej = getelementptr inbounds nuw i8, ptr %.01627.i.i.i, i64 8 ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.ej, %i.eh
  br i1 %.not20.i.i.i, label %_ZNK4llvm19SmallPtrSetImplBase8find_impEPKv.exit.i.i, label %.lr.ph.i.i.i66

bb.k:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i
  %i.ek = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.dn, ptr noundef %i.dw) #20 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ek, null
  %.pre.i.i = load i8, ptr %i.do, align 8, !tbaa !24, !range !25 ; 3 uses
  %.pre2.i.i = load ptr, ptr %i.dn, align 8       ; 3 uses
  br i1 %.not.not.i.i.i, label %bb.l, label %._ZNK4llvm19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i

._ZNK4llvm19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i: ; preds = %bb.k
  %.pre3.i.i = load i32, ptr %.phi.trans.insert.i157.i, align 4
  br label %_ZNK4llvm19SmallPtrSetImplBase8find_impEPKv.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.el = trunc nuw i8 %.pre.i.i to i1
  %i.em = load i32, ptr %.phi.trans.insert.i157.i, align 4 ; 2 uses
  %i.en = load i32, ptr %i.dp, align 8
  %.v.v.i22.i.i.i = select i1 %i.el, i32 %i.em, i32 %i.en
  %.v.i23.i.i.i = zext i32 %.v.v.i22.i.i.i to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.pre2.i.i, i64 %.v.i23.i.i.i
  br label %_ZNK4llvm19SmallPtrSetImplBase8find_impEPKv.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_122HexagonPostRAHandleQFP20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %.val.i203 = load ptr, ptr %i.s, align 8
  call fastcc void @_ZN12_GLOBAL__N_122HexagonPostRAHandleQFP11insertInstrEPN4llvm12MachineInstrEjjjNS1_8RegStateE(ptr %.val.i203, ptr noundef %i.chd, i32 noundef 2934, i32 noundef %i.cbj, i32 noundef %i.cbj, i16 noundef zeroext %i.chz)
  br label %bb.ix

bb.ix:                                            ; preds = %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit57.i, %bb.iu, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit52.i, %bb.ir, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit47.i, %bb.io, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit42.i, %bb.il, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit.i205, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.cia = getelementptr inbounds nuw i8, ptr %.02880.i, i64 16 ; 2 uses
  %.not.i197 = icmp eq ptr %i.cia, %i.caz
  br i1 %.not.i197, label %._crit_edge.loopexit.i198, label %bb.ic

_ZN12_GLOBAL__N_122HexagonPostRAHandleQFP17HandleNonSatInstrEv.exit: ; preds = %_ZN12_GLOBAL__N_122HexagonPostRAHandleQFP13HandleRefillsEv.exit, %._crit_edge.loopexit.i198
  %.not.i.i.i201 = phi i1 [ %i.cbd, %._crit_edge.loopexit.i198 ], [ %i.cat, %_ZN12_GLOBAL__N_122HexagonPostRAHandleQFP13HandleRefillsEv.exit ]
  %i.cib = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cic = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cid = load i32, ptr %i.cic, align 8, !tbaa !488 ; 2 uses
  %i.cie = icmp eq i32 %i.cid, 0
  br i1 %i.cie, label %_ZN4llvm9MapVectorIPNS_12MachineInstrEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EE5clearEv.exit, label %bb.iy

bb.iy:                                            ; preds = %_ZN12_GLOBAL__N_122HexagonPostRAHandleQFP17HandleNonSatInstrEv.exit
  %i.cif = shl i32 %i.cid, 2
  %i.cig = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.cih = load i32, ptr %i.cig, align 4, !tbaa !255 ; 3 uses
  %i.cii = icmp ult i32 %i.cif, %i.cih
  %i.cij = icmp ugt i32 %i.cih, 64
  %or.cond.i.i207 = and i1 %i.cii, %i.cij
  br i1 %or.cond.i.i207, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cib)
  br label %_ZN4llvm9MapVectorIPNS_12MachineInstrEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EE5clearEv.exit

bb.ja:                                            ; preds = %bb.iy
  %i.cik = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cil = load ptr, ptr %i.cik, align 8, !tbaa !489
  %i.cim = zext i32 %i.cih to i64
  %i.cin = add nuw nsw i64 %i.cim, 31
  %i.cio = lshr i64 %i.cin, 3
  %i.cip = and i64 %i.cio, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.cil, i8 0, i64 %i.cip, i1 false)
  store i32 0, ptr %i.cic, align 8, !tbaa !488
  br label %_ZN4llvm9MapVectorIPNS_12MachineInstrEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EE5clearEv.exit

_ZN4llvm9MapVectorIPNS_12MachineInstrEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EE5clearEv.exit: ; preds = %_ZN12_GLOBAL__N_122HexagonPostRAHandleQFP17HandleNonSatInstrEv.exit, %bb.iz, %bb.ja
  store i32 0, ptr %i.caw, align 8, !tbaa !45
  %i.ciq = load ptr, ptr %i.bgn, align 8, !tbaa !85 ; 2 uses
  %.not235272 = icmp eq ptr %i.ciq, %i.bgp
  br i1 %.not235272, label %._crit_edge275, label %.lr.ph274

bb.jb:                                            ; preds = %.lr.ph270, %bb.jb
  %.sroa.0221.0269 = phi ptr [ %i.pp, %.lr.ph270 ], [ %i.ciu, %bb.jb ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %81, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0221.0269, i64 16, i1 false), !tbaa.struct !726
  %i.cir = load ptr, ptr %81, align 8, !tbaa !415 ; 2 uses
  %i.cis = load ptr, ptr %i.bi, align 8, !tbaa !411
  %i.cit = call { ptr, i32 } @_ZN4llvm3rdf7RefNode8getOwnerERKNS0_13DataFlowGraphE(ptr noundef nonnull align 8 dereferenceable(32) %i.cir, ptr noundef nonnull align 8 dereferenceable(808) %i.cis) #20 ; 0 uses
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !86
  call fastcc void @_ZN12_GLOBAL__N_122HexagonPostRAHandleQFP13collectQFUsesEN4llvm3rdf8NodeAddrIPNS2_7DefNodeEEEPNS1_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr nonnull %i.cir, i32 %.sroa.25.0.copyload)
  call fastcc void @_ZN12_GLOBAL__N_122HexagonPostRAHandleQFP18collectConvQFInstrERN4llvm3rdf8NodeAddrIPNS2_7DefNodeEEE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(12) %81)
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #20
  %i.ciu = getelementptr inbounds nuw i8, ptr %.sroa.0221.0269, i64 16 ; 2 uses
  %.not234 = icmp eq ptr %i.ciu, %i.pr
  br i1 %.not234, label %._crit_edge271, label %bb.jb

._crit_edge275:                                   ; preds = %.lr.ph274, %_ZN4llvm9MapVectorIPNS_12MachineInstrEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EE5clearEv.exit
  %i.civ = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ciw = load ptr, ptr %i.civ, align 8, !tbaa !81
  call void @_ZNSt8_Rb_treeIPN4llvm12MachineInstrESt4pairIKS2_S3_IbbEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bgm, ptr noundef %i.ciw)
  store ptr null, ptr %i.civ, align 8, !tbaa !81
  store ptr %i.bgp, ptr %i.bgn, align 8, !tbaa !85
  %i.cix = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bgp, ptr %i.cix, align 8, !tbaa !236
  %i.ciy = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.ciy, align 8, !tbaa !83
  %i.ciz = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.cja = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cjb = load i8, ptr %i.cja, align 8, !tbaa !24, !range !25, !noundef !26
  %i.cjc = trunc nuw i8 %i.cjb to i1
  br i1 %i.cjc, label %bb.jf, label %bb.jc

bb.jc:                                            ; preds = %._crit_edge275
  %i.cjd = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.cje = load i32, ptr %i.cjd, align 4, !tbaa !238
  %i.cjf = shl i32 %i.cje, 2
  %i.cjg = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cjh = load i32, ptr %i.cjg, align 8, !tbaa !237 ; 3 uses
  %i.cji = icmp ult i32 %i.cjf, %i.cjh
  %i.cjj = icmp ugt i32 %i.cjh, 32
  %or.cond.i208 = and i1 %i.cji, %i.cjj
  br i1 %or.cond.i208, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  call void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ciz) #20
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit

bb.je:                                            ; preds = %bb.jc
  %i.cjk = load ptr, ptr %i.ciz, align 8, !tbaa !27
  %i.cjl = zext i32 %i.cjh to i64
  %i.cjm = shl nuw nsw i64 %i.cjl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cjk, i8 -1, i64 %i.cjm, i1 false)
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %._crit_edge275
  %i.cjn = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 0, ptr %i.cjn, align 4, !tbaa !238
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit

_ZN4llvm19SmallPtrSetImplBase5clearEv.exit:       ; preds = %bb.jd, %bb.jf
  %i.cjo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL25EnablePostRAXqfCompliance, i64 120), align 8, !tbaa !270, !range !25, !noundef !26
  %i.cjp = trunc nuw i8 %i.cjo to i1
  br i1 %i.cjp, label %bb.jg, label %bb.jp

.lr.ph274:                                        ; preds = %_ZN4llvm9MapVectorIPNS_12MachineInstrEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EE5clearEv.exit, %.lr.ph274
  %.sroa.0214.0273 = phi ptr [ %i.cjs, %.lr.ph274 ], [ %i.ciq, %_ZN4llvm9MapVectorIPNS_12MachineInstrEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EE5clearEv.exit ] ; 2 uses
  %i.cjq = getelementptr inbounds nuw i8, ptr %.sroa.0214.0273, i64 32
  %.sroa.02.0.copyload = load ptr, ptr %i.cjq, align 8
  %i.cjr = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.02.0.copyload) #20 ; 0 uses
  %i.cjs = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0214.0273) #21 ; 2 uses
  %.not235 = icmp eq ptr %i.cjs, %i.bgp
  br i1 %.not235, label %._crit_edge275, label %.lr.ph274

bb.jg:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit
  %i.cjt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #20 ; 4 uses
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjt, i64 24
  %i.cjv = load ptr, ptr %i.cju, align 8, !tbaa !786
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cjt, i64 32 ; 3 uses
  %i.cjx = load ptr, ptr %i.cjw, align 8, !tbaa !787 ; 2 uses
  %i.cjy = ptrtoint ptr %i.cjv to i64
  %i.cjz = ptrtoint ptr %i.cjx to i64
  %i.cka = sub i64 %i.cjy, %i.cjz
  %i.ckb = icmp ult i64 %i.cka, 76
  br i1 %i.ckb, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.ckc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cjt, ptr noundef nonnull @.str.14, i64 noundef 76) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.ji:                                            ; preds = %bb.jg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %i.cjx, ptr noundef nonnull align 1 dereferenceable(76) @.str.14, i64 76, i1 false)
  %i.ckd = load ptr, ptr %i.cjw, align 8, !tbaa !787
  %i.cke = getelementptr inbounds nuw i8, ptr %i.ckd, i64 76
  store ptr %i.cke, ptr %i.cjw, align 8, !tbaa !787
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.jh, %bb.ji
  %.0.i.i = phi ptr [ %i.ckc, %bb.jh ], [ %i.cjt, %bb.ji ] ; 5 uses
  %i.ckf = call { ptr, i64 } @_ZNK4llvm15MachineFunction7getNameEv(ptr noundef nonnull align 8 dereferenceable(1065) %1) #20 ; 2 uses
  %i.ckg = extractvalue { ptr, i64 } %i.ckf, 0    ; 2 uses
  %i.ckh = extractvalue { ptr, i64 } %i.ckf, 1    ; 5 uses
  %i.cki = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.ckj = load ptr, ptr %i.cki, align 8, !tbaa !786
  %i.ckk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 3 uses
  %i.ckl = load ptr, ptr %i.ckk, align 8, !tbaa !787 ; 3 uses
  %i.ckm = ptrtoint ptr %i.ckj to i64
  %i.ckn = ptrtoint ptr %i.ckl to i64
  %i.cko = sub i64 %i.ckm, %i.ckn
  %i.ckp = icmp ugt i64 %i.ckh, %i.cko
  br i1 %i.ckp, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ckq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.ckg, i64 noundef %i.ckh) #20 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ckq, i64 32
  %.pre308 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !787
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.jk:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i209 = icmp eq i64 %i.ckh, 0
  br i1 %.not.i209, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ckl, ptr align 1 %i.ckg, i64 %i.ckh, i1 false)
  %i.ckr = load ptr, ptr %i.ckk, align 8, !tbaa !787
  %i.cks = getelementptr inbounds nuw i8, ptr %i.ckr, i64 %i.ckh ; 2 uses
  store ptr %i.cks, ptr %i.ckk, align 8, !tbaa !787
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.jj, %bb.jk, %bb.jl
  %i.ckt = phi ptr [ %.pre308, %bb.jj ], [ %i.cks, %bb.jl ], [ %i.ckl, %bb.jk ] ; 2 uses
  %.0.i = phi ptr [ %i.ckq, %bb.jj ], [ %.0.i.i, %bb.jl ], [ %.0.i.i, %bb.jk ] ; 3 uses
  %i.cku = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ckv = load ptr, ptr %i.cku, align 8, !tbaa !786
  %i.ckw = icmp eq ptr %i.ckv, %i.ckt
  br i1 %i.ckw, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ckx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.15, i64 noundef 1) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit212

bb.jn:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.cky = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i8 10, ptr %i.ckt, align 1
  %i.ckz = load ptr, ptr %i.cky, align 8, !tbaa !787
  %i.cla = getelementptr inbounds nuw i8, ptr %i.ckz, i64 1
  store ptr %i.cla, ptr %i.cky, align 8, !tbaa !787
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit212

_ZN4llvm11raw_ostreamlsEPKc.exit212:              ; preds = %bb.jm, %bb.jn
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #20
  %i.clb = load ptr, ptr %i.s, align 8, !tbaa !408
  %i.clc = load ptr, ptr %i.aa, align 8, !tbaa !409
  call void @_ZN4llvm3rdf13DataFlowGraphC1ERNS_15MachineFunctionERKNS_15TargetInstrInfoERKNS_18TargetRegisterInfoERKNS_20MachineDominatorTreeERKNS_24MachineDominanceFrontierE(ptr noundef nonnull align 8 dereferenceable(808) %82, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.clb, ptr noundef nonnull align 8 dereferenceable(316) %i.clc, ptr noundef nonnull align 8 dereferenceable(204) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.cld = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cle = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i64 88, i1 false)
  store ptr %i.cle, ptr %i.cld, align 8, !tbaa !29
  %i.clf = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 6, ptr %i.clf, align 4, !tbaa !71
  %i.clg = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.clh = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  store ptr null, ptr %i.clh, align 8, !tbaa !81
  %i.cli = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.clg, ptr %i.cli, align 8, !tbaa !85
  %i.clj = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %i.clg, ptr %i.clj, align 8, !tbaa !236
  %i.clk = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 0, ptr %i.clk, align 8, !tbaa !83
  call void @_ZN4llvm3rdf13DataFlowGraph5buildERKNS1_6ConfigE(ptr noundef nonnull align 8 dereferenceable(808) %82, ptr noundef nonnull align 8 dereferenceable(120) %2) #20
  %i.cll = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.clm = load ptr, ptr %i.clh, align 8, !tbaa !81
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.cll, ptr noundef %i.clm)
  %i.cln = load ptr, ptr %i.cld, align 8, !tbaa !29 ; 2 uses
  %i.clo = icmp eq ptr %i.cln, %i.cle
  br i1 %i.clo, label %_ZN4llvm3rdf13DataFlowGraph5buildEv.exit213, label %bb.jo

bb.jo:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit212
  call void @free(ptr noundef %i.cln) #20
  br label %_ZN4llvm3rdf13DataFlowGraph5buildEv.exit213

_ZN4llvm3rdf13DataFlowGraph5buildEv.exit213:      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit212, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #20
  %i.clp = load ptr, ptr %i.ad, align 8, !tbaa !709
  call void @_ZN4llvm3rdf8LivenessC2ERNS_19MachineRegisterInfoERKNS0_13DataFlowGraphE(ptr noundef nonnull align 8 dereferenceable(472) %83, ptr noundef nonnull align 8 dereferenceable(520) %i.clp, ptr noundef nonnull align 8 dereferenceable(808) %82)
  call void @_ZN4llvm3rdf8Liveness14computeLiveInsEv(ptr noundef nonnull align 8 dereferenceable(472) %83) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #20
  %i.clq = load ptr, ptr %i.s, align 8, !tbaa !408
  store ptr %82, ptr %84, align 8, !tbaa !42
  %i.clr = getelementptr inbounds nuw i8, ptr %84, i64 8
  store ptr %83, ptr %i.clr, align 8, !tbaa !84
  %i.cls = getelementptr inbounds nuw i8, ptr %84, i64 16
  store ptr %i.clq, ptr %i.cls, align 8, !tbaa !87
  call void @_ZNK18XqfPostRADiagnosis13runComplianceEv(ptr noundef nonnull align 8 dereferenceable(24) %84)
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  call void @_ZN4llvm3rdf8LivenessD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %83) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #20
  call void @_ZN4llvm3rdf13DataFlowGraphD2Ev(ptr noundef nonnull align 8 dead_on_return(808) dereferenceable(808) %82) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #20
  br label %bb.jp

bb.jp:                                            ; preds = %_ZN4llvm3rdf13DataFlowGraph5buildEv.exit213, %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit
  call void @_ZN4llvm3rdf8LivenessD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %78) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #20
  call void @_ZN4llvm3rdf13DataFlowGraphD2Ev(ptr noundef nonnull align 8 dead_on_return(808) dereferenceable(808) %77) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #20
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.b, %bb.d, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %.not.i.i.i201, %bb.jp ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #12

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeISt4pairIN4llvm3rdf8NodeAddrIPNS2_7DefNodeEEES6_ES0_IKS7_N12_GLOBAL__N_122HexagonPostRAHandleQFP7RegTypeEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02 = phi ptr [ %.0.val, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val6 = load ptr, ptr %i.a, align 8, !tbaa !239
  tail call fastcc void @_ZNSt8_Rb_treeISt4pairIN4llvm3rdf8NodeAddrIPNS2_7DefNodeEEES6_ES0_IKS7_N12_GLOBAL__N_122HexagonPostRAHandleQFP7RegTypeEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef %.0.val6)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val = load ptr, ptr %i.b, align 8, !tbaa !240 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 72) #24
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !788

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4llvm3rdf8NodeAddrIPNS1_8StmtNodeEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239
  tail call void @_ZNSt8_Rb_treeIN4llvm3rdf8NodeAddrIPNS1_8StmtNodeEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !240  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !789

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN4llvm12MachineInstrESt4pairIKS2_S3_IbbEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239
  tail call void @_ZNSt8_Rb_treeIPN4llvm12MachineInstrESt4pairIKS2_S3_IbbEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !240  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !790

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #5

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo12hasQFPInstrsERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(440), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #5

declare void @_ZN4llvm3rdf13DataFlowGraphC1ERNS_15MachineFunctionERKNS_15TargetInstrInfoERKNS_18TargetRegisterInfoERKNS_20MachineDominatorTreeERKNS_24MachineDominanceFrontierE(ptr noundef nonnull align 8 dereferenceable(808), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(316), ptr noundef nonnull align 8 dereferenceable(204), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3rdf8LivenessC2ERNS_19MachineRegisterInfoERKNS0_13DataFlowGraphE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(808) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %2, ptr %0, align 8, !tbaa !791
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !856, !nonnull !26, !align !203
  store ptr %i.c, ptr %i.a, align 8, !tbaa !857
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !858
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !227
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !227
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !859, !nonnull !26, !align !203
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !860  ; 2 uses
  %i.m = add i32 %i.l, 63                         ; 2 uses
  %i.n = lshr i32 %i.m, 6                         ; 3 uses
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.p, ptr %i.i, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 6, ptr %i.r, align 4, !tbaa !71
  %i.s = icmp ugt i32 %i.m, 447
  br i1 %i.s, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i.i:        ; preds = %bb.a
  store i32 0, ptr %i.q, align 8, !tbaa !45
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr noundef nonnull %i.p, i64 noundef %i.o, i64 noundef 8) #20
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !29
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i.i:    ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm3rdf15RegisterAggrMapIPNS_17MachineBasicBlockEEC2ERKNS0_20PhysicalRegisterInfoE.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i.i

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i.i:      ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i.i
end_hunk_1
