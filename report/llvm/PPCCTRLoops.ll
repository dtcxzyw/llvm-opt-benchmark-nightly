Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCCTRLoops?download=true
inline.NumInlined: 458
inline.NumDeleted: 284
begin_hunk_0_@_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_111PPCCTRLoops20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !235  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !235  ; 2 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !238
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm26MachineLoopInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !238
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm26MachineLoopInfoWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !140, !nonnull !141, !align !142 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(344) %i.l) #11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.p, ptr %i.q, align 8, !tbaa !147
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !239
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.s, ptr %i.t, align 8, !tbaa !148
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !150  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !150  ; 2 uses
  %.not12 = icmp eq ptr %i.v, %i.x
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit
  %.0.lcssa = phi i1 [ false, %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit ], [ %.1, %bb.c ]
  ret i1 %.0.lcssa

.lr.ph:                                           ; preds = %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit, %bb.c
  %.014 = phi i1 [ %.1, %bb.c ], [ false, %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit ] ; 2 uses
  %.sroa.09.013 = phi ptr [ %i.ad, %bb.c ], [ %i.v, %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013, align 8, !tbaa !152 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !247
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ab = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111PPCCTRLoops11processLoopEPN4llvm11MachineLoopE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %i.y)
  %i.ac = or i1 %.014, %i.ab
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i1 [ %i.ac, %bb.b ], [ %.014, %.lr.ph ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.x
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111PPCCTRLoops11processLoopEPN4llvm11MachineLoopE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %3 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %15 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %16 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %17 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %18 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 2 uses
  %.not110123 = icmp eq ptr %i.b, %i.d
  br i1 %.not110123, label %.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %i.g, label %"_ZZN12_GLOBAL__N_111PPCCTRLoops11processLoopEPN4llvm11MachineLoopEENK3$_1clEPNS1_17MachineBasicBlockE.exit.thread", label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.043125 = phi i1 [ %i.g, %.lr.ph ], [ false, %bb.a ]
  %.sroa.099.0124 = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.099.0124, align 8, !tbaa !152
  %i.f = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111PPCCTRLoops11processLoopEPN4llvm11MachineLoopE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %i.e)
  %i.g = or i1 %.043125, %i.f                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.099.0124, i64 8 ; 2 uses
  %.not110 = icmp eq ptr %i.h, %i.d
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.critedge:                                        ; preds = %bb.a, %._crit_edge
  %i.i = tail call noundef ptr @_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #11 ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %"_ZZN12_GLOBAL__N_111PPCCTRLoops11processLoopEPN4llvm11MachineLoopEENK3$_1clEPNS1_17MachineBasicBlockE.exit.thread", label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 6 uses
  %.sroa.01.05.i = load ptr, ptr %i.j, align 8, !tbaa !158 ; 2 uses
  %.not6.i = icmp eq ptr %.sroa.01.05.i, %i.k
  br i1 %.not6.i, label %"_ZZN12_GLOBAL__N_111PPCCTRLoops11processLoopEPN4llvm11MachineLoopEENK3$_1clEPNS1_17MachineBasicBlockE.exit.thread", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.01.07.i = phi ptr [ %.sroa.01.0.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.01.05.i, %bb.b ] ; 13 uses
  %i.l = getelementptr i8, ptr %.sroa.01.07.i, i64 52
  %.val.i = load i32, ptr %i.l, align 4, !tbaa !277
  %i.m = add i32 %.val.i, -1549
  %spec.select.i.i = icmp ult i32 %i.m, 2
  br i1 %spec.select.i.i, label %"_ZZN12_GLOBAL__N_111PPCCTRLoops11processLoopEPN4llvm11MachineLoopEENK3$_1clEPNS1_17MachineBasicBlockE.exit", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.07.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.07.i, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !171
  %i.q = and i32 %i.p, 8
  %.not34.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.01.07.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !158  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !171
  %i.v = and i32 %i.u, 8
  %.not3.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !248

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %bb.c
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.01.07.i, %bb.c ], [ %.sroa.01.07.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %.sroa.01.0.i = load ptr, ptr %i.w, align 8, !tbaa !158 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.01.0.i, %i.k
  br i1 %.not.i, label %"_ZZN12_GLOBAL__N_111PPCCTRLoops11processLoopEPN4llvm11MachineLoopEENK3$_1clEPNS1_17MachineBasicBlockE.exit.thread", label %.lr.ph.i

"_ZZN12_GLOBAL__N_111PPCCTRLoops11processLoopEPN4llvm11MachineLoopEENK3$_1clEPNS1_17MachineBasicBlockE.exit": ; preds = %.lr.ph.i
  %i.x = tail call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %i.i, i32 3, i64 -1) #11
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %"_ZZN12_GLOBAL__N_111PPCCTRLoops11processLoopEPN4llvm11MachineLoopEENK3$_1clEPNS1_17MachineBasicBlockE.exit"
  %i.y = tail call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %i.i, i32 28, i64 -1) #11
  br i1 %i.y, label %bb.e, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader

bb.e:                                             ; preds = %bb.d, %"_ZZN12_GLOBAL__N_111PPCCTRLoops11processLoopEPN4llvm11MachineLoopEENK3$_1clEPNS1_17MachineBasicBlockE.exit"
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader: ; preds = %bb.d, %bb.e
  %.045 = phi i8 [ 1, %bb.e ], [ 0, %bb.d ]       ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.07.i, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %.not111126 = icmp eq ptr %i.k, %i.aa
  br i1 %.not111126, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit.thread, label %.lr.ph128

.lr.ph128:                                        ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %.sroa.092.0127 = phi ptr [ %i.ae, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %i.aa, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader ] ; 3 uses
  %i.ab = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.092.0127, i32 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %.not.i59 = icmp eq i32 %i.ab, -1
  br i1 %.not.i59, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit.thread

_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit: ; preds = %.lr.ph128
  %i.ac = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.092.0127, i32 28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %.not112 = icmp eq i32 %i.ac, -1
  br i1 %.not112, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit.thread

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.092.0127, align 8
  %i.ad = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %.not111 = icmp eq ptr %i.k, %i.ae
  br i1 %.not111, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit.thread, label %.lr.ph128, !llvm.loop !249

_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit.thread: ; preds = %.lr.ph128, %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader
  %.146 = phi i8 [ %.045, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader ], [ 1, %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit ], [ 1, %.lr.ph128 ], [ %.045, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !158 ; 2 uses
  %.not113132 = icmp eq ptr %i.ag, %i.k
  br i1 %.not113132, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65.thread, label %.lr.ph134

.lr.ph134:                                        ; preds = %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit.thread, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %.sroa.088.0133 = phi ptr [ %i.ar, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %i.ag, %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit.thread ] ; 6 uses
  %i.ah = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.088.0133, i32 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %.not6.i63 = icmp eq i32 %i.ah, -1
  br i1 %.not6.i63, label %bb.f, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65.thread

bb.f:                                             ; preds = %.lr.ph134
  %i.ai = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.088.0133, i32 28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %.not7.i = icmp eq i32 %i.ai, -1
  br i1 %.not7.i, label %bb.g, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65.thread

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.088.0133, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !279
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !282
  %i.an = and i64 %i.am, 128
  %.not8.i = icmp eq i64 %i.an, 0
  br i1 %.not8.i, label %bb.h, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65.thread

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.088.0133, i32 3, ptr noundef null, i1 noundef zeroext false) #11
  %.not9.i = icmp eq i32 %i.ao, -1
  br i1 %.not9.i, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65.thread

_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65: ; preds = %bb.h
  %i.ap = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.088.0133, i32 28, ptr noundef null, i1 noundef zeroext false) #11
  %.not114 = icmp eq i32 %i.ap, -1
  br i1 %.not114, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65.thread

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.088.0133, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !158 ; 2 uses
  %.not113 = icmp eq ptr %i.ar, %i.k
  br i1 %.not113, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65.thread, label %.lr.ph134, !llvm.loop !250

_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65.thread: ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65, %bb.f, %.lr.ph134, %bb.g, %bb.h, %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit.thread
  %.2 = phi i8 [ %.146, %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit.thread ], [ 1, %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65 ], [ 1, %bb.f ], [ 1, %.lr.ph134 ], [ 1, %bb.g ], [ 1, %bb.h ], [ %.146, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !283 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !284
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge151, %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65.thread
  %.sroa.081.0 = phi ptr [ %i.az, %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65.thread ], [ %i.ba, %._crit_edge151 ] ; 2 uses
  %.047 = phi ptr [ null, %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65.thread ], [ %.148.lcssa, %._crit_edge151 ] ; 6 uses
  %.3 = phi i8 [ %.2, %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit65.thread ], [ %.4.lcssa, %._crit_edge151 ] ; 3 uses
  %.not115 = icmp eq ptr %.sroa.081.0, %i.at
  br i1 %.not115, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds i8, ptr %.sroa.081.0, i64 -8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !285 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  %.sroa.078.0144 = load ptr, ptr %i.bc, align 8, !tbaa !158 ; 2 uses
  %.not116145 = icmp eq ptr %.sroa.078.0144, %i.bd
  br i1 %.not116145, label %._crit_edge151, label %.lr.ph150

._crit_edge151:                                   ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.j
  %.148.lcssa = phi ptr [ %.047, %bb.j ], [ %.249, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ] ; 3 uses
  %.4.lcssa = phi i8 [ %.3, %bb.j ], [ %.5, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ] ; 2 uses
  %i.be = icmp ne ptr %.148.lcssa, null
  %i.bf = trunc nuw i8 %.4.lcssa to i1
  %or.cond = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond, label %.thread, label %bb.i

.lr.ph150:                                        ; preds = %bb.j, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.078.0148 = phi ptr [ %.sroa.078.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.078.0144, %bb.j ] ; 13 uses
  %.4147 = phi i8 [ %.5, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.3, %bb.j ] ; 2 uses
  %.148146 = phi ptr [ %.249, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.047, %bb.j ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.078.0148, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !277
  %.off = add i32 %i.bh, -915
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit71, label %bb.k

bb.k:                                             ; preds = %.lr.ph150
  %i.bi = trunc nuw i8 %.4147 to i1
  br i1 %i.bi, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit71, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.078.0148, i32 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %.not6.i66 = icmp eq i32 %i.bj, -1
  br i1 %.not6.i66, label %bb.m, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit71

bb.m:                                             ; preds = %bb.l
  %i.bk = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.078.0148, i32 28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %.not7.i68 = icmp eq i32 %i.bk, -1
  br i1 %.not7.i68, label %bb.n, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit71

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.078.0148, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !279
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !282
  %i.bp = and i64 %i.bo, 128
  %.not8.i69 = icmp eq i64 %i.bp, 0
  br i1 %.not8.i69, label %bb.o, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit71

bb.o:                                             ; preds = %bb.n
  %i.bq = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.078.0148, i32 3, ptr noundef null, i1 noundef zeroext false) #11
  %.not9.i70 = icmp eq i32 %i.bq, -1
  br i1 %.not9.i70, label %bb.p, label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit71

bb.p:                                             ; preds = %bb.o
  %i.br = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.078.0148, i32 28, ptr noundef null, i1 noundef zeroext false) #11
  %i.bs = icmp ne i32 %i.br, -1
  %i.bt = zext i1 %i.bs to i8
  br label %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit71

_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit71: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.lr.ph150, %bb.k
  %.249 = phi ptr [ %.sroa.078.0148, %.lr.ph150 ], [ %.148146, %bb.k ], [ %.148146, %bb.l ], [ %.148146, %bb.m ], [ %.148146, %bb.n ], [ %.148146, %bb.o ], [ %.148146, %bb.p ] ; 2 uses
  %.5 = phi i8 [ %.4147, %.lr.ph150 ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ %i.bt, %bb.p ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.078.0148) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.078.0148, align 8
  %i.bu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit71
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.078.0148, i64 44
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !171
  %i.bx = and i32 %i.bw, 8
  %.not34.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.bz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.078.0148, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !158 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !171
  %i.cc = and i32 %i.cb, 8
  %.not3.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !248

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit71, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.078.0148, %_ZNK12_GLOBAL__N_111PPCCTRLoops12isCTRClobberEPN4llvm12MachineInstrEb.exit71 ], [ %.sroa.078.0148, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.bz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.078.0 = load ptr, ptr %i.cd, align 8, !tbaa !158 ; 2 uses
  %.not116 = icmp eq ptr %.sroa.078.0, %i.bd
  br i1 %.not116, label %._crit_edge151, label %.lr.ph150

bb.q:                                             ; preds = %bb.i
  %i.ce = trunc nuw i8 %.3 to i1
  br i1 %i.ce, label %.thread, label %bb.ad

.thread:                                          ; preds = %._crit_edge151, %bb.q
  %.350109 = phi ptr [ %.047, %bb.q ], [ %.148.lcssa, %._crit_edge151 ] ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 24 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !286 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !215
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !140, !nonnull !141, !align !142
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 538
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !429, !range !430, !noundef !141
  %i.cn = trunc nuw i8 %i.cm to i1                ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.350109, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !286 ; 11 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !148
  %i.cs = select i1 %i.cn, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1088), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 192) ; 2 uses
  %i.ct = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.cr, ptr noundef nonnull %i.cs, ptr nonnull @.str.2, i64 0) #11 ; 2 uses
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !286
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !215
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 320 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !13
  %i.cz = and i64 %i.cy, -3
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !13
  %i.da = load ptr, ptr %i.as, align 8, !tbaa !283
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !285 ; 2 uses
  %i.dc = tail call ptr @_ZN4llvm17MachineBasicBlock14getFirstNonPHIEv(ptr noundef nonnull align 8 dereferenceable(360) %i.db) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !147
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !431
  %i.dh = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.db, ptr %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i32 %i.ct) ; 2 uses
  %i.di = extractvalue { ptr, ptr } %i.dh, 0      ; 6 uses
  %i.dj = extractvalue { ptr, ptr } %i.dh, 1      ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !432
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !216
end_hunk_0
