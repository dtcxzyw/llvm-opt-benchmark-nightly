Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64InstrInfo?download=true
inline.NumInlined: 8369
inline.NumDeleted: 2912
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4llvm16AArch64InstrInfo20removeCmpToZeroOrOneERNS_12MachineInstrEjiRKNS_19MachineRegisterInfoE:bb.a
  %or.cond50.i = and i1 %i.ag, %.not.i
  %or.cond62.i = or i1 %or.cond50.i, %.not61.i
  br i1 %or.cond62.i, label %bb.l, label %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.aq = call fastcc noundef zeroext i1 @_ZL30areCFlagsAccessedBetweenInstrsN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEES2_PKNS_18TargetRegisterInfoE10AccessKind(ptr nonnull align 8 dereferenceable(80) %i.a, ptr nonnull readonly align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(316) %i.b, i32 noundef 1)
  br i1 %i.aq, label %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ag, label %bb.n, label %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit

bb.n:                                             ; preds = %bb.m
  %i.ar = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #32 ; 0 uses
  switch i32 %i.ab, label %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread [
    i32 5, label %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread28
    i32 0, label %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread28
  ]

_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit: ; preds = %bb.m
  %.not41 = icmp eq i32 %i.ab, 1
  %i.as = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #32 ; 0 uses
  br i1 %.not41, label %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread28, label %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread

_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread28: ; preds = %bb.n, %bb.n, %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit
  %i.at = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.au = load i32, ptr %i.d, align 8, !tbaa !255 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %.idx = shl nuw nsw i64 %i.av, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx
  %.not2332 = icmp eq i32 %i.au, 0
  br i1 %.not2332, label %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread28, %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit
  %.02133 = phi ptr [ %i.bk, %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit ], [ %i.at, %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread28 ] ; 2 uses
  %i.ax = load ptr, ptr %.02133, align 8, !tbaa !346 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !233
  switch i32 %i.az, label %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit [
    i32 2168, label %.sink.split.i
    i32 2664, label %bb.o
    i32 2665, label %bb.o
    i32 2662, label %bb.o
    i32 2663, label %bb.o
    i32 2660, label %bb.o
    i32 2661, label %bb.o
    i32 2666, label %bb.o
    i32 2667, label %bb.o
    i32 3069, label %bb.o
    i32 3067, label %bb.o
  ]

bb.o:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %.lr.ph
  %.sink6.i = phi i32 [ -1, %bb.o ], [ -2, %.lr.ph ]
  %i.ba = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, i32 7, ptr noundef null, i1 noundef zeroext false) #32
  %i.bb = add nsw i32 %i.ba, %.sink6.i
  %i.bc = zext i32 %i.bb to i64
  br label %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit

_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit: ; preds = %.lr.ph, %.sink.split.i
  %.0.i = phi i64 [ 4294967295, %.lr.ph ], [ %i.bc, %.sink.split.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !237
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %.0.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !238
  %i.bi = and i64 %i.bh, 4294967295
  %i.bj = xor i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !238
  %i.bk = getelementptr inbounds nuw i8, ptr %.02133, i64 8 ; 2 uses
  %.not23 = icmp eq ptr %i.bk, %i.aw
  br i1 %.not23, label %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread, label %.lr.ph

_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread: ; preds = %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit, %bb.n, %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread28, %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit.i.i, %bb.l, %bb.i, %bb.j, %bb.e, %bb.k, %switch.early.test.i, %switch.early.test58.i, %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit.i, %bb.g, %bb.c, %.thread.i, %bb.d, %bb.b, %bb.f, %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit
  %.4.i26 = phi i1 [ false, %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit.i.i ], [ true, %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit ], [ false, %bb.f ], [ false, %bb.b ], [ false, %bb.d ], [ false, %.thread.i ], [ false, %bb.c ], [ false, %bb.g ], [ false, %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit.i ], [ false, %switch.early.test58.i ], [ false, %switch.early.test.i ], [ false, %bb.k ], [ false, %bb.e ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.l ], [ true, %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread28 ], [ true, %bb.n ], [ true, %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit ]
  %i.bl = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.c
  br i1 %i.bm, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread
  call void @free(ptr noundef %i.bl) #32
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit: ; preds = %_ZL20canCmpInstrBeRemovedRN4llvm12MachineInstrES1_iRKNS_18TargetRegisterInfoERNS_15SmallVectorImplIPS0_EERb.exit.thread, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit
  %.1 = phi i1 [ %.4.i26, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -2147483648, 2147483647) i32 @_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !233
  switch i32 %i.b, label %bb.c [
    i32 2168, label %.sink.split
    i32 2664, label %bb.b
    i32 2665, label %bb.b
    i32 2662, label %bb.b
    i32 2663, label %bb.b
    i32 2660, label %bb.b
    i32 2661, label %bb.b
    i32 2666, label %bb.b
    i32 2667, label %bb.b
    i32 3069, label %bb.b
    i32 3067, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink6 = phi i32 [ -1, %bb.b ], [ -2, %bb.a ]
  %i.c = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 7, ptr noundef null, i1 noundef zeroext false) #32
  %i.d = add nsw i32 %i.c, %.sink6
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.d, %.sink.split ]
  ret i32 %.0
}

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i40 0, 8589934592) i40 @_ZN4llvm16examineCFlagsUseERNS_12MachineInstrES1_RKNS_18TargetRegisterInfoEPNS_15SmallVectorImplIPS0_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(316) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %bb.b, label %_ZL26areCFlagsAliveInSuccessorsPKN4llvm17MachineBasicBlockE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 112
  %.val = load ptr, ptr %i.e, align 8, !tbaa !54  ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 120
  %.val31 = load i32, ptr %i.f, align 8, !tbaa !255 ; 2 uses
  %i.g = zext i32 %.val31 to i64
  %.idx.i = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %.not3.not.i = icmp eq i32 %.val31, 0
  br i1 %.not3.not.i, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0124.i, i64 8 ; 2 uses
  %.not.not.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.0124.i = phi ptr [ %i.i, %bb.c ], [ %.val, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %.0124.i, align 8, !tbaa !339
  %i.k = tail call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %i.j, i32 7, i64 -1) #32
  br i1 %i.k, label %_ZL26areCFlagsAliveInSuccessorsPKN4llvm17MachineBasicBlockE.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !327  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 6 uses
  %.not2.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not2.i.i.i.i.i, label %_ZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_b.exit, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %.loopexit, %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i.i.i.i
  %.sroa.023.1.i.i = phi ptr [ %i.r, %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i.i.i.i ], [ %i.m, %.loopexit ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !233, !noalias !963
  switch i32 %i.p, label %_ZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_b.exit [
    i32 25, label %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i.i.i.i
    i32 18, label %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i.i.i.i
    i32 17, label %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i.i.i.i
    i32 16, label %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i.i.i.i
    i32 15, label %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i.i.i.i
    i32 14, label %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i.i.i.i
  ]

_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !327, !noalias !963 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_b.exit, label %.lr.ph.split.i.i.i.i.i, !llvm.loop !962

_ZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_b.exit: ; preds = %.lr.ph.split.i.i.i.i.i, %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i.i.i.i, %.loopexit
  %.sroa.023.2.i.i = phi ptr [ %i.m, %.loopexit ], [ %i.r, %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i.i.i.i ], [ %.sroa.023.1.i.i, %.lr.ph.split.i.i.i.i.i ] ; 2 uses
  %.not8993 = icmp eq ptr %.sroa.023.2.i.i, %i.n
  br i1 %.not8993, label %_ZL26areCFlagsAliveInSuccessorsPKN4llvm17MachineBasicBlockE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_b.exit
  %.not28 = icmp eq ptr %3, null
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEZNS_24instructionsWithoutDebugIS6_EEDaT_S8_bEUlRKS4_E_St26bidirectional_iterator_tagEppEv.exit
  %.sroa.036.098 = phi ptr [ %.sroa.023.2.i.i, %.lr.ph ], [ %.sroa.036.3, %_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEZNS_24instructionsWithoutDebugIS6_EEDaT_S8_bEUlRKS4_E_St26bidirectional_iterator_tagEppEv.exit ] ; 8 uses
  %.sroa.044.097 = phi i8 [ 0, %.lr.ph ], [ %.sroa.044.2, %_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEZNS_24instructionsWithoutDebugIS6_EEDaT_S8_bEUlRKS4_E_St26bidirectional_iterator_tagEppEv.exit ] ; 2 uses
  %.sroa.646.096 = phi i8 [ 0, %.lr.ph ], [ %.sroa.646.2, %_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEZNS_24instructionsWithoutDebugIS6_EEDaT_S8_bEUlRKS4_E_St26bidirectional_iterator_tagEppEv.exit ] ; 2 uses
  %.sroa.847.095 = phi i8 [ 0, %.lr.ph ], [ %.sroa.847.2, %_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEZNS_24instructionsWithoutDebugIS6_EEDaT_S8_bEUlRKS4_E_St26bidirectional_iterator_tagEppEv.exit ] ; 2 uses
  %.sroa.1048.094 = phi i8 [ 0, %.lr.ph ], [ %.sroa.1048.2, %_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEZNS_24instructionsWithoutDebugIS6_EEDaT_S8_bEUlRKS4_E_St26bidirectional_iterator_tagEppEv.exit ] ; 2 uses
  %i.u = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.036.098, i32 7, ptr noundef nonnull %2, i1 noundef zeroext false) #32
  %.not90 = icmp eq i32 %i.u, -1
  br i1 %.not90, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.036.098, i64 52
  %i.w = load i32, ptr %i.v, align 4, !tbaa !233
  switch i32 %i.w, label %_ZL26areCFlagsAliveInSuccessorsPKN4llvm17MachineBasicBlockE.exit [
    i32 2168, label %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit.i
    i32 2664, label %bb.f
    i32 2665, label %bb.f
    i32 2662, label %bb.f
    i32 2663, label %bb.f
    i32 2660, label %bb.f
    i32 2661, label %bb.f
    i32 2666, label %bb.f
    i32 2667, label %bb.f
    i32 3069, label %bb.f
    i32 3067, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  br label %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit.i

_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit.i: ; preds = %bb.f, %bb.e
  %.sink6.i.i = phi i32 [ -1, %bb.f ], [ -2, %bb.e ]
  %i.x = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.036.098, i32 7, ptr noundef null, i1 noundef zeroext false) #32
  %i.y = add nsw i32 %i.x, %.sink6.i.i            ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit, label %_ZL26areCFlagsAliveInSuccessorsPKN4llvm17MachineBasicBlockE.exit

_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit: ; preds = %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.036.098, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !237
  %i.ac = zext nneg i32 %i.y to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !238
  %i.ag = trunc i64 %i.af to i32
  switch i32 %i.ag, label %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit [
    i32 16, label %_ZL26areCFlagsAliveInSuccessorsPKN4llvm17MachineBasicBlockE.exit
    i32 0, label %bb.g
    i32 1, label %bb.g
    i32 8, label %bb.h
    i32 9, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.k
    i32 12, label %bb.l
    i32 13, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.m
  ]

bb.g:                                             ; preds = %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit, %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit
  br label %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit

bb.h:                                             ; preds = %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit, %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit
  br label %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit

bb.i:                                             ; preds = %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit, %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit
  br label %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit

bb.j:                                             ; preds = %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit, %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit
  br label %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit

bb.k:                                             ; preds = %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit, %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit
  br label %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit

bb.l:                                             ; preds = %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit, %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit
  br label %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit

bb.m:                                             ; preds = %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit, %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit
  br label %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit

_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit:  ; preds = %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.7.0.insert.insert.i = phi i32 [ 0, %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit ], [ 256, %bb.g ], [ 65536, %bb.i ], [ 1, %bb.j ], [ 16777216, %bb.k ], [ 65792, %bb.h ], [ 16777473, %bb.l ], [ 16777217, %bb.m ] ; 4 uses
  %.sroa.032.0.extract.trunc = trunc i32 %.sroa.7.0.insert.insert.i to i8
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.7.0.insert.insert.i, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.7.0.insert.insert.i, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i32 %.sroa.7.0.insert.insert.i, 24
  %.sroa.6.0.extract.trunc = trunc nuw nsw i32 %.sroa.6.0.extract.shift to i8
  %4 = or i8 %.sroa.044.097, %.sroa.032.0.extract.trunc ; 3 uses
  %5 = or i8 %.sroa.646.096, %.sroa.4.0.extract.trunc ; 3 uses
  %6 = or i8 %.sroa.847.095, %.sroa.5.0.extract.trunc ; 3 uses
  %7 = or i8 %.sroa.1048.094, %.sroa.6.0.extract.trunc ; 3 uses
  br i1 %.not28, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit, label %bb.n

bb.n:                                             ; preds = %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit
  %i.ah = load i32, ptr %i.s, align 8, !tbaa !255 ; 2 uses
  %i.ai = load i32, ptr %i.t, align 4, !tbaa !256
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %bb.p, label %bb.o, !prof !343

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %.sroa.036.098)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.p:                                             ; preds = %bb.n
  %i.aj = zext i32 %i.ah to i64
  %i.ak = load ptr, ptr %3, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  store ptr %.sroa.036.098, ptr %i.al, align 1
  %i.am = load i32, ptr %i.s, align 8, !tbaa !255
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.s, align 8, !tbaa !255
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit: ; preds = %bb.p, %bb.o, %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit, %bb.d
  %.sroa.1048.2 = phi i8 [ %.sroa.1048.094, %bb.d ], [ %7, %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit ], [ %7, %bb.o ], [ %7, %bb.p ] ; 2 uses
  %.sroa.847.2 = phi i8 [ %.sroa.847.095, %bb.d ], [ %6, %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit ], [ %6, %bb.o ], [ %6, %bb.p ] ; 2 uses
  %.sroa.646.2 = phi i8 [ %.sroa.646.096, %bb.d ], [ %5, %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit ], [ %5, %bb.o ], [ %5, %bb.p ] ; 2 uses
  %.sroa.044.2 = phi i8 [ %.sroa.044.097, %bb.d ], [ %4, %_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE.exit ], [ %4, %bb.o ], [ %4, %bb.p ] ; 2 uses
  %i.ao = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.036.098, i32 7, ptr noundef nonnull %2, i1 noundef zeroext false, i1 noundef zeroext true) #32
  %.not91 = icmp eq i32 %i.ao, -1
  br i1 %.not91, label %bb.q, label %.thread.loopexit

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.036.098, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !327 ; 3 uses
  %.not2.i.i = icmp eq ptr %i.aq, %i.n
  br i1 %.not2.i.i, label %_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEZNS_24instructionsWithoutDebugIS6_EEDaT_S8_bEUlRKS4_E_St26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.q, %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i
  %.sroa.036.2 = phi ptr [ %i.au, %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i ], [ %i.aq, %bb.q ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.036.2, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !233
  switch i32 %i.as, label %_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEZNS_24instructionsWithoutDebugIS6_EEDaT_S8_bEUlRKS4_E_St26bidirectional_iterator_tagEppEv.exit [
    i32 25, label %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i
    i32 18, label %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i
    i32 17, label %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i
    i32 16, label %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i
    i32 15, label %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i
    i32 14, label %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i
  ]

_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i: ; preds = %.lr.ph.split.i.i, %.lr.ph.split.i.i, %.lr.ph.split.i.i, %.lr.ph.split.i.i, %.lr.ph.split.i.i, %.lr.ph.split.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.036.2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !327 ; 3 uses
  %.not.i.i = icmp eq ptr %i.au, %i.n
  br i1 %.not.i.i, label %_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEZNS_24instructionsWithoutDebugIS6_EEDaT_S8_bEUlRKS4_E_St26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.split.i.i, !llvm.loop !962

_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEZNS_24instructionsWithoutDebugIS6_EEDaT_S8_bEUlRKS4_E_St26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.split.i.i, %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i, %bb.q
  %.sroa.036.3 = phi ptr [ %i.aq, %bb.q ], [ %i.au, %_ZZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_bENKUlRKS4_E_clES9_.exit.thread.i.i ], [ %.sroa.036.2, %.lr.ph.split.i.i ] ; 2 uses
  %.not89 = icmp eq ptr %.sroa.036.3, %i.n
  br i1 %.not89, label %.thread.loopexit, label %bb.d

.thread.loopexit:                                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit, %_ZN4llvm20filter_iterator_baseINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEZNS_24instructionsWithoutDebugIS6_EEDaT_S8_bEUlRKS4_E_St26bidirectional_iterator_tagEppEv.exit
  %8 = zext nneg i8 %.sroa.1048.2 to i32
  %9 = shl nuw nsw i32 %8, 24
  %10 = zext i8 %.sroa.847.2 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or disjoint i32 %9, %11
  %13 = zext i8 %.sroa.646.2 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or disjoint i32 %12, %14
  %16 = zext i8 %.sroa.044.2 to i32
  %17 = or disjoint i32 %15, %16
  br label %_ZL26areCFlagsAliveInSuccessorsPKN4llvm17MachineBasicBlockE.exit

_ZL26areCFlagsAliveInSuccessorsPKN4llvm17MachineBasicBlockE.exit: ; preds = %.lr.ph.i, %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit.i, %bb.e, %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit, %_ZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_b.exit, %.thread.loopexit, %bb.a
  %.sroa.049.1 = phi i32 [ undef, %bb.a ], [ %17, %.thread.loopexit ], [ undef, %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit.i ], [ 0, %_ZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_b.exit ], [ undef, %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit ], [ undef, %bb.e ], [ undef, %.lr.ph.i ]
  %.sroa.2.6 = phi i8 [ 0, %bb.a ], [ 1, %.thread.loopexit ], [ 0, %_ZN4llvm16AArch64InstrInfo42findCondCodeUseOperandIdxForBranchOrSelectERKNS_12MachineInstrE.exit.i ], [ 1, %_ZN4llvm24instructionsWithoutDebugINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEEEDaT_S7_b.exit ], [ 0, %_ZL23findCondCodeUsedByInstrRKN4llvm12MachineInstrE.exit ], [ 0, %bb.e ], [ 0, %.lr.ph.i ]
  %.sroa.2.0.insert.ext = zext nneg i8 %.sroa.2.6 to i40
  %.sroa.2.0.insert.shift = shl nuw nsw i40 %.sroa.2.0.insert.ext, 32
  %.sroa.049.0.insert.ext = zext i32 %.sroa.049.1 to i40
  %.sroa.049.0.insert.insert = or disjoint i40 %.sroa.2.0.insert.shift, %.sroa.049.0.insert.ext
  ret i40 %.sroa.049.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 16777474) i32 @_ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE(i32 noundef range(i32 17, 16) %0) unnamed_addr #12 {
bb.a:
  %i.a = icmp ult i32 %0, 14
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZL11getUsedNZCVN4llvm9AArch64CC8CondCodeE, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.7.0.insert.insert = phi i32 [ 0, %bb.a ], [ %switch.load, %switch.lookup ]
  ret i32 %.sroa.7.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !255  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !256
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !343

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  store ptr %1, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !255
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !255
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 337, 9193) i32 @_ZL5sFormRN4llvm12MachineInstrE(i32 %.52.val) unnamed_addr #12 {
bb.a:
  switch i32 %.52.val, label %bb.ag [
    i32 337, label %bb.b
    i32 1777, label %bb.b
    i32 338, label %bb.b
    i32 1780, label %bb.b
    i32 1779, label %bb.b
    i32 1782, label %bb.b
    i32 1778, label %bb.b
    i32 1781, label %bb.b
    i32 1405, label %bb.b
    i32 7763, label %bb.b
    i32 7765, label %bb.b
    i32 7764, label %bb.b
    i32 1406, label %bb.b
    i32 7766, label %bb.b
    i32 7768, label %bb.b
    i32 7767, label %bb.b
    i32 1879, label %bb.b
    i32 368, label %bb.b
    i32 1880, label %bb.b
    i32 1881, label %bb.b
    i32 369, label %bb.b
    i32 1882, label %bb.b
    i32 481, label %bb.b
    i32 482, label %bb.b
    i32 2116, label %bb.b
    i32 2117, label %bb.b
    i32 1730, label %bb.b
    i32 1731, label %bb.b
    i32 6053, label %bb.b
    i32 6054, label %bb.b
    i32 341, label %bb.c
    i32 1792, label %bb.d
    i32 342, label %bb.e
    i32 1795, label %bb.f
    i32 1794, label %bb.g
    i32 1797, label %bb.h
    i32 1793, label %bb.i
    i32 1796, label %bb.j
    i32 1732, label %bb.k
    i32 1733, label %bb.l
    i32 1407, label %bb.m
    i32 7770, label %bb.n
    i32 1408, label %bb.o
    i32 7773, label %bb.p
    i32 7772, label %bb.q
    i32 7775, label %bb.r
    i32 7771, label %bb.s
    i32 7774, label %bb.t
    i32 6055, label %bb.u
    i32 6056, label %bb.v
    i32 1888, label %bb.w
    i32 1890, label %bb.x
    i32 370, label %bb.y
    i32 1889, label %bb.z
    i32 371, label %bb.aa
    i32 1891, label %bb.ab
    i32 483, label %bb.ac
    i32 484, label %bb.ad
    i32 2119, label %bb.ae
    i32 2120, label %bb.af
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  br label %bb.ag

bb.d:                                             ; preds = %bb.a
  br label %bb.ag

bb.e:                                             ; preds = %bb.a
  br label %bb.ag

bb.f:                                             ; preds = %bb.a
  br label %bb.ag

bb.g:                                             ; preds = %bb.a
  br label %bb.ag

bb.h:                                             ; preds = %bb.a
  br label %bb.ag

bb.i:                                             ; preds = %bb.a
  br label %bb.ag

bb.j:                                             ; preds = %bb.a
  br label %bb.ag

bb.k:                                             ; preds = %bb.a
  br label %bb.ag

bb.l:                                             ; preds = %bb.a
  br label %bb.ag

bb.m:                                             ; preds = %bb.a
  br label %bb.ag

bb.n:                                             ; preds = %bb.a
  br label %bb.ag

bb.o:                                             ; preds = %bb.a
  br label %bb.ag

bb.p:                                             ; preds = %bb.a
  br label %bb.ag

bb.q:                                             ; preds = %bb.a
  br label %bb.ag

bb.r:                                             ; preds = %bb.a
  br label %bb.ag

bb.s:                                             ; preds = %bb.a
  br label %bb.ag

bb.t:                                             ; preds = %bb.a
  br label %bb.ag

bb.u:                                             ; preds = %bb.a
  br label %bb.ag

bb.v:                                             ; preds = %bb.a
  br label %bb.ag

bb.w:                                             ; preds = %bb.a
  br label %bb.ag

bb.x:                                             ; preds = %bb.a
  br label %bb.ag

bb.y:                                             ; preds = %bb.a
  br label %bb.ag

bb.z:                                             ; preds = %bb.a
  br label %bb.ag

bb.aa:                                            ; preds = %bb.a
  br label %bb.ag

bb.ab:                                            ; preds = %bb.a
  br label %bb.ag

end_hunk_0
