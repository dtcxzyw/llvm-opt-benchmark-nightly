inline.NumInlined: 31355
inline.NumDeleted: 12783
begin_hunk_0_@_ZN2v88internal8compiler16LoopPeelingPhase3RunEPNS1_14TFPipelineDataEPNS0_4ZoneE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler10LoopFinder13BuildLoopTreeEPNS1_7TFGraphEPNS0_11TickCounterEPNS0_4ZoneE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler10LoopPeeler20PeelInnerLoopsOfTreeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler10LoopPeeler18EliminateLoopExitsEPNS1_7TFGraphEPNS0_4ZoneE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler20LoadEliminationPhase3RunEPNS1_14TFPipelineDataEPNS0_4ZoneE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::GraphReducer", align 8 ; 25 uses
  %4 = alloca %"class.v8::internal::compiler::BranchElimination", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::compiler::DeadCodeElimination", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::RedundancyElimination", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::compiler::LoadElimination", align 8 ; 9 uses
  %8 = alloca %"class.v8::internal::compiler::CheckpointElimination", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::compiler::ValueNumberingReducer", align 8 ; 5 uses
  %10 = alloca %"class.v8::internal::compiler::CommonOperatorReducer", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::compiler::TypedOptimization", align 8 ; 5 uses
  %12 = alloca %"class.v8::internal::compiler::ConstantFoldingReducer", align 8 ; 5 uses
  %13 = alloca %"class.v8::internal::compiler::TypeNarrowingReducer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 792 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #29
  %i.p = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef %i.o, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #29 ; 2 uses
  store ptr %i.p, ptr %i.j, align 8
  br label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

_ZN2v88internal8compiler12MachineGraph4DeadEv.exit: ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %i.k, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.s = load ptr, ptr %i.r, align 8
  call void @_ZN2v88internal8compiler12GraphReducerC1EPNS0_4ZoneEPNS1_7TFGraphEPNS0_11TickCounterEPNS1_12JSHeapBrokerEPNS1_4NodeEPNS1_18ObserveNodeManagerE(ptr noundef nonnull align 8 dereferenceable(280) %3, ptr noundef %2, ptr noundef %i.b, ptr noundef nonnull %i.e, ptr noundef %i.g, ptr noundef %i.q, ptr noundef %i.s) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.t = load ptr, ptr %i.h, align 8
  call void @_ZN2v88internal8compiler17BranchEliminationC1EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS0_4ZoneENS2_5PhaseE(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull %3, ptr noundef %i.t, ptr noundef %2, i32 noundef 0) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  call void @_ZN2v88internal8compiler19DeadCodeEliminationC1EPNS1_15AdvancedReducer6EditorEPNS1_7TFGraphEPNS1_21CommonOperatorBuilderEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %3, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.x = load ptr, ptr %i.h, align 8
  call void @_ZN2v88internal8compiler21RedundancyEliminationC1EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %3, ptr noundef %i.x, ptr noundef %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = load ptr, ptr %i.h, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %i.aa, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal8compiler15LoadEliminationE, i64 16), ptr %7, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %2, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.z, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZN2v88internal8compiler21CheckpointEliminationC1EPNS1_15AdvancedReducer6EditorE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void @_ZN2v88internal8compiler21ValueNumberingReducerC1EPNS0_4ZoneES4_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %2, ptr noundef %i.ag) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = load ptr, ptr %i.f, align 8
  %i.aj = load ptr, ptr %i.v, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.al = load ptr, ptr %i.ak, align 8
  call void @_ZN2v88internal8compiler21CommonOperatorReducerC1EPNS1_15AdvancedReducer6EditorEPNS1_7TFGraphEPNS1_12JSHeapBrokerEPNS1_21CommonOperatorBuilderEPNS1_22MachineOperatorBuilderEPNS0_4ZoneENS1_15BranchSemanticsE(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull %3, ptr noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %2, i32 noundef 0) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load ptr, ptr %i.h, align 8
  %i.ap = load ptr, ptr %i.f, align 8
  call void @_ZN2v88internal8compiler17TypedOptimizationC1EPNS1_15AdvancedReducer6EditorEPNS1_23CompilationDependenciesEPNS1_7JSGraphEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %3, ptr noundef %i.an, ptr noundef %i.ao, ptr noundef %i.ap) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.aq = load ptr, ptr %i.h, align 8
  %i.ar = load ptr, ptr %i.f, align 8
  call void @_ZN2v88internal8compiler22ConstantFoldingReducerC1EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %3, ptr noundef %i.aq, ptr noundef %i.ar) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.as = load ptr, ptr %i.h, align 8
  %i.at = load ptr, ptr %i.f, align 8
  call void @_ZN2v88internal8compiler20TypeNarrowingReducerC1EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(128) %13, ptr noundef nonnull %3, ptr noundef %i.as, ptr noundef %i.at) #29
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %5)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %6)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %7)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %13)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %12)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %11)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %8)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %10)
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %9)
  %i.au = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not.i41 = icmp eq ptr %i.aw, null
  br i1 %.not.i41, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.ay = call noundef zeroext i1 @_ZNK2v88internal9LocalHeap8IsParkedEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.ax) #29
  br i1 %i.ay, label %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit.thread

_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i: ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 17 ; 2 uses
  %i.ba = cmpxchg weak ptr %i.az, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.bb = extractvalue { i8, i1 } %i.ba, 1
  br i1 %i.bb, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i
  call void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.ax) #29
  br label %bb.f

_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit.thread: ; preds = %bb.c, %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit, %bb.d
  call void @_ZN2v88internal8compiler12GraphReducer11ReduceGraphEv(ptr noundef nonnull align 8 dereferenceable(280) %3) #29
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit

bb.f:                                             ; preds = %bb.e, %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i
  call void @_ZN2v88internal8compiler12GraphReducer11ReduceGraphEv(ptr noundef nonnull align 8 dereferenceable(280) %3) #29
  %i.bc = cmpxchg weak ptr %i.az, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.bd = extractvalue { i8, i1 } %i.bc, 1
  br i1 %i.bd, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.ax) #29
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit

_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit: ; preds = %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit.thread, %bb.f, %bb.g
  call void @_ZN2v88internal8compiler20TypeNarrowingReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @_ZN2v88internal8compiler22ConstantFoldingReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZN2v88internal8compiler17TypedOptimizationD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @_ZN2v88internal8compiler21ValueNumberingReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN2v88internal8compiler21RedundancyEliminationD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN2v88internal8compiler17BranchEliminationD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN2v88internal8compiler12GraphReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

declare void @_ZN2v88internal8compiler17BranchEliminationC1EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS0_4ZoneENS2_5PhaseE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef, i32 noundef) unnamed_addr #1

declare void @_ZN2v88internal8compiler21RedundancyEliminationC1EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN2v88internal8compiler21ValueNumberingReducerC1EPNS0_4ZoneES4_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN2v88internal8compiler20TypeNarrowingReducerC1EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler20TypeNarrowingReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler21ValueNumberingReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler21RedundancyEliminationD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler17BranchEliminationD1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler19EscapeAnalysisPhase3RunEPNS1_14TFPipelineDataEPNS0_4ZoneE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::EscapeAnalysis", align 8 ; 18 uses
  %4 = alloca %"class.v8::internal::compiler::GraphReducer", align 8 ; 8 uses
  %5 = alloca %"class.v8::internal::compiler::EscapeAnalysisReducer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  call void @_ZN2v88internal8compiler14EscapeAnalysisC1EPNS1_7JSGraphEPNS0_11TickCounterEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(272) %3, ptr noundef %i.b, ptr noundef nonnull %i.e, ptr noundef %2) #29
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  call void @_ZN2v88internal8compiler18EffectGraphReducer10ReduceFromEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef %i.i) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 792 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #29
  %i.w = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.s, ptr noundef %i.v, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #29 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

_ZN2v88internal8compiler12MachineGraph4DeadEv.exit: ; preds = %bb.a, %bb.b
  %i.x = phi ptr [ %i.w, %bb.b ], [ %i.r, %bb.a ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.z = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal8compiler12GraphReducerC1EPNS0_4ZoneEPNS1_7TFGraphEPNS0_11TickCounterEPNS1_12JSHeapBrokerEPNS1_4NodeEPNS1_18ObserveNodeManagerE(ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef %2, ptr noundef %i.k, ptr noundef nonnull %i.m, ptr noundef %i.o, ptr noundef %i.x, ptr noundef %i.z) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = load ptr, ptr %i.n, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.ad = load ptr, ptr %i.ac, align 8
  call void @_ZN2v88internal8compiler21EscapeAnalysisReducerC1EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS1_12JSHeapBrokerENS1_20EscapeAnalysisResultEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(240) %5, ptr noundef nonnull %4, ptr noundef %i.aa, ptr noundef %i.ab, ptr %i.ad, ptr noundef %2) #29
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_110AddReducerEPNS1_14TFPipelineDataEPNS1_12GraphReducerEPNS1_7ReducerE(ptr noundef nonnull %1, ptr noundef %4, ptr noundef %5)
  %i.ae = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not.i14 = icmp eq ptr %i.ag, null
  br i1 %.not.i14, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ai = call noundef zeroext i1 @_ZNK2v88internal9LocalHeap8IsParkedEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.ah) #29
  br i1 %i.ai, label %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i, label %bb.g

_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 17 ; 2 uses
  %i.ak = cmpxchg weak ptr %i.aj, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.al = extractvalue { i8, i1 } %i.ak, 1
  br i1 %i.al, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i
  call void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.ah) #29
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit

_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit: ; preds = %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i, %bb.e
  call void @_ZN2v88internal8compiler12GraphReducer11ReduceGraphEv(ptr noundef nonnull align 8 dereferenceable(280) %4) #29
  call void @_ZNK2v88internal8compiler21EscapeAnalysisReducer17VerifyReplacementEv(ptr noundef nonnull align 8 dereferenceable(240) %5) #29
  %6 = cmpxchg weak ptr %i.aj, i8 0, i8 1 seq_cst seq_cst, align 1
  %7 = extractvalue { i8, i1 } %6, 1
  br i1 %7, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit
  call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.ah) #29
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit

bb.g:                                             ; preds = %bb.d, %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit, %bb.c
  call void @_ZN2v88internal8compiler12GraphReducer11ReduceGraphEv(ptr noundef nonnull align 8 dereferenceable(280) %4) #29
  call void @_ZNK2v88internal8compiler21EscapeAnalysisReducer17VerifyReplacementEv(ptr noundef nonnull align 8 dereferenceable(240) %5) #29
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit

_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit: ; preds = %bb.g, %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.ao = load ptr, ptr %i.an, align 8
  call void @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = shl i64 %i.as, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.at, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN2v88internal8compiler12GraphReducerD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 2 uses
  %i.ax = call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i32 noundef 3) #29, !inline_history !831 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.h, %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZNSt5stackIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_9ZoneDequeIS4_EEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = icmp ult ptr %i.bc, %i.be
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.bg, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.bh = phi ptr [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bn, %_ZNSt11_Deque_baseIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i ] ; 3 uses
  %.06.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.bo, %_ZNSt11_Deque_baseIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i ] ; 3 uses
  %i.bi = load ptr, ptr %.06.i.i.i.i.i, align 8   ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8
  %.not7.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bk, 32
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 32, ptr %i.bl, align 8
  %i.bm = load ptr, ptr %i.bg, align 8
  store ptr %i.bm, ptr %i.bi, align 8
  store ptr %i.bi, ptr %i.bg, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i

_ZNSt11_Deque_baseIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.bn = phi ptr [ %i.bh, %bb.k ], [ %i.bi, %bb.l ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.bp = icmp ult ptr %.06.i.i.i.i.i, %i.bd
  br i1 %i.bp, label %bb.j, label %_ZNSt11_Deque_baseIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i.i, !llvm.loop !832

_ZNSt11_Deque_baseIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i, %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = and i64 %i.br, 2305843009213693950
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZNSt5stackIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_9ZoneDequeIS4_EEED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i.i
  %i.bu = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.br, ptr %i.bv, align 8
  store ptr null, ptr %i.bu, align 8
  br label %_ZNSt5stackIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_9ZoneDequeIS4_EEED2Ev.exit.i

_ZNSt5stackIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_9ZoneDequeIS4_EEED2Ev.exit.i: ; preds = %bb.m, %_ZNSt11_Deque_baseIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %.not.i.i.i1.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i1.i, label %_ZN2v88internal8compiler18EffectGraphReducerD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt5stackIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_9ZoneDequeIS4_EEED2Ev.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = icmp ult ptr %i.ca, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i.i.i2.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i.i

.lr.ph.i.i.i.i2.i:                                ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %.pre.i.i.i.i3.i = load ptr, ptr %i.ce, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i2.i
  %i.cf = phi ptr [ %.pre.i.i.i.i3.i, %.lr.ph.i.i.i.i2.i ], [ %i.cl, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i ] ; 3 uses
  %.06.i.i.i.i4.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i2.i ], [ %i.cm, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i ] ; 3 uses
  %i.cg = load ptr, ptr %.06.i.i.i.i4.i, align 8  ; 4 uses
  %.not.i.i.i.i.i.i.i5.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i5.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load i64, ptr %i.ch, align 8
  %.not7.i.i.i.i.i.i.i6.i = icmp ugt i64 %i.ci, 64
  br i1 %.not7.i.i.i.i.i.i.i6.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 64, ptr %i.cj, align 8
  %i.ck = load ptr, ptr %i.ce, align 8
  store ptr %i.ck, ptr %i.cg, align 8
  store ptr %i.cg, ptr %i.ce, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %i.cl = phi ptr [ %i.cf, %bb.p ], [ %i.cg, %bb.q ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i4.i, i64 8
  %i.cn = icmp ult ptr %.06.i.i.i.i4.i, %i.cb
  br i1 %i.cn, label %bb.o, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i.i, !llvm.loop !91

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i.i, %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cp = load i64, ptr %i.co, align 8            ; 2 uses
  %i.cq = and i64 %i.cp, 2305843009213693950
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_ZN2v88internal8compiler18EffectGraphReducerD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i.i
  %i.cs = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.cp, ptr %i.ct, align 8
  store ptr null, ptr %i.cs, align 8
  br label %_ZN2v88internal8compiler18EffectGraphReducerD2Ev.exit

_ZN2v88internal8compiler18EffectGraphReducerD2Ev.exit: ; preds = %_ZNSt5stackIN2v88internal8compiler18EffectGraphReducer9NodeStateENS1_9ZoneDequeIS4_EEED2Ev.exit.i, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

declare void @_ZN2v88internal8compiler14EscapeAnalysisC1EPNS1_7JSGraphEPNS0_11TickCounterEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN2v88internal8compiler21EscapeAnalysisReducerC1EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS1_12JSHeapBrokerENS1_20EscapeAnalysisResultEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, ptr noundef, ptr noundef, ptr, ptr noundef) unnamed_addr #1

declare void @_ZNK2v88internal8compiler21EscapeAnalysisReducer17VerifyReplacementEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler18EffectGraphReducer10ReduceFromEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !833

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZN2v88internal8compiler17AddTypeAssertionsEPNS1_7JSGraphEPNS1_8ScheduleEPNS0_4ZoneE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler23SimplifiedLoweringPhase3RunEPNS1_14TFPipelineDataEPNS0_4ZoneEPNS1_7LinkageE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::SimplifiedLowering", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.m = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal8compiler18SimplifiedLoweringC1EPNS1_7JSGraphEPNS1_12JSHeapBrokerEPNS0_4ZoneEPNS1_19SourcePositionTableEPNS1_15NodeOriginTableEPNS0_11TickCounterEPNS1_7LinkageEPNS0_24OptimizedCompilationInfoEPNS1_18ObserveNodeManagerE(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %2, ptr noundef %i.f, ptr noundef %i.h, ptr noundef nonnull %i.k, ptr noundef %3, ptr noundef %i.j, ptr noundef %i.m) #29
  %i.n = load ptr, ptr %i.c, align 8              ; 2 uses
end_hunk_0
