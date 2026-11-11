Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64InstructionSelector?download=true
inline.NumInlined: 8919
inline.NumDeleted: 2625
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4llvm32createAArch64InstructionSelectorERKNS_20AArch64TargetMachineERKNS_16AArch64SubtargetERKNS_23AArch64RegisterBankInfoE:bb.a
  %i.wb = trunc nuw i8 %i.wa to i1
  %i.wc = or i64 %.sroa.131.42.i.i, 17592186044416
  %.sroa.131.43.i.i = select i1 %i.wb, i64 %.sroa.131.42.i.i, i64 %i.wc
  store i64 %.sroa.0.63.i.i, ptr %i.o, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store i64 %.sroa.131.43.i.i, ptr %i.wd, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.wf = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.we, i8 0, i64 16, i1 false)
  tail call void @_ZN4llvm20GIMatchTableExecutor12MatcherStateC1Ej(ptr noundef nonnull align 8 dereferenceable(168) %i.wf, i32 noundef 2) #24
  %i.wg = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store ptr @_ZL11TypeObjects, ptr %i.wg, align 8, !tbaa !244
  %i.wh = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr @_ZL14FeatureBitsets, ptr %i.wh, align 8, !tbaa !245
  %i.wi = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  store ptr @_ZN12_GLOBAL__N_126AArch64InstructionSelector19ComplexPredicateFnsE, ptr %i.wi, align 8, !tbaa !246
  %i.wj = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store ptr @_ZN12_GLOBAL__N_126AArch64InstructionSelector15CustomRenderersE, ptr %i.wj, align 8, !tbaa !247
  %i.wk = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.b, i64 1480
  store i32 1, ptr %i.wk, align 8
  store i64 0, ptr %i.wl, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %_ZNK12_GLOBAL__N_126AArch64InstructionSelector30computeAvailableModuleFeaturesEPKN4llvm16AArch64SubtargetE.exit.i
  %.01.i.i = phi i64 [ 0, %_ZNK12_GLOBAL__N_126AArch64InstructionSelector30computeAvailableModuleFeaturesEPKN4llvm16AArch64SubtargetE.exit.i ], [ %i.wr, %bb.bg ] ; 3 uses
  %i.wm = trunc nuw nsw i64 %.01.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr @_ZL11TypeObjects, i64 %.01.i.i
  %i.wo = load i64, ptr %i.wn, align 8
  store i64 %i.wo, ptr %i.a, align 8, !tbaa !248
  %i.wp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImjLj64ENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.wk, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.wp, 0
  %i.wq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  store i32 %i.wm, ptr %i.wq, align 4, !tbaa !249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.wr = add nuw nsw i64 %.01.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.wr, 65
  br i1 %exitcond.not.i.i, label %_ZN12_GLOBAL__N_126AArch64InstructionSelectorC2ERKN4llvm20AArch64TargetMachineERKNS1_16AArch64SubtargetERKNS1_23AArch64RegisterBankInfoE.exit, label %bb.bg, !llvm.loop !771

_ZN12_GLOBAL__N_126AArch64InstructionSelectorC2ERKN4llvm20AArch64TargetMachineERKNS1_16AArch64SubtargetERKNS1_23AArch64RegisterBankInfoE.exit: ; preds = %bb.bg
  ret ptr %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @_ZN4llvm20GIMatchTableExecutor12MatcherStateC1Ej(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126AArch64InstructionSelectorD2Ev(ptr noundef nonnull align 8 dead_on_return(1488) dereferenceable(1488) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_126AArch64InstructionSelectorE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvm20GIMatchTableExecutor10ExecInfoTyINS_6BitsetILj117EEEMN12_GLOBAL__N_126AArch64InstructionSelectorEKFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS5_KFvSA_RKNS_12MachineInstrEiEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = load i32, ptr %i.d, align 8, !tbaa !251  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm20GIMatchTableExecutor10ExecInfoTyINS_6BitsetILj117EEEMN12_GLOBAL__N_126AArch64InstructionSelectorEKFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS5_KFvSA_RKNS_12MachineInstrEiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !251
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #24
  br label %_ZN4llvm20GIMatchTableExecutor10ExecInfoTyINS_6BitsetILj117EEEMN12_GLOBAL__N_126AArch64InstructionSelectorEKFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS5_KFvSA_RKNS_12MachineInstrEiEED2Ev.exit

_ZN4llvm20GIMatchTableExecutor10ExecInfoTyINS_6BitsetILj117EEEMN12_GLOBAL__N_126AArch64InstructionSelectorEKFSt8optionalINS_11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEEERNS_14MachineOperandEEMS5_KFvSA_RKNS_12MachineInstrEiEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN4llvm20GIMatchTableExecutor12MatcherStateD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.o) #24
  tail call void @_ZN4llvm19InstructionSelectorD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126AArch64InstructionSelectorD0Ev(ptr noundef nonnull align 8 dereferenceable(1488) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_126AArch64InstructionSelectorE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN12_GLOBAL__N_126AArch64InstructionSelectorD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = load i32, ptr %i.d, align 8, !tbaa !251  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN12_GLOBAL__N_126AArch64InstructionSelectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !251
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #24, !inline_history !860
  br label %_ZN12_GLOBAL__N_126AArch64InstructionSelectorD2Ev.exit

_ZN12_GLOBAL__N_126AArch64InstructionSelectorD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN4llvm20GIMatchTableExecutor12MatcherStateD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.o) #24, !inline_history !860
  tail call void @_ZN4llvm19InstructionSelectorD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(1488) %0) #24, !inline_history !860
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1488) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126AArch64InstructionSelector30setupGeneratedPerFunctionStateERN4llvm15MachineFunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1488) initializes((232, 248)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362, !nonnull !238, !align !363
  %i.c = load ptr, ptr %1, align 8, !tbaa !364, !nonnull !238, !align !363 ; 2 uses
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.c, i32 noundef 51) #24
  br i1 %i.d, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread.i, label %_ZNK4llvm8Function10hasOptSizeEv.exit.i.i

_ZNK4llvm8Function10hasOptSizeEv.exit.i.i:        ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.c, i32 noundef 19) #24
  br i1 %i.e, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !365  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread33.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !414  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread33.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !415
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !416
  %i.n = tail call noundef zeroext i1 @_ZN4llvm21shouldOptimizeForSizeEPKNS_10BasicBlockEPNS_18ProfileSummaryInfoEPNS_18BlockFrequencyInfoENS_13PGSOQueryTypeE(ptr noundef nonnull %i.i, ptr noundef %i.k, ptr noundef %i.m, i32 noundef 2) #24
  br i1 %i.n, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread33.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread33.i: ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.i, %bb.c, %bb.b
  br label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread.i: ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread33.i, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.i, %_ZNK4llvm8Function10hasOptSizeEv.exit.i.i, %bb.a
  %.sroa.3.0.i = phi i64 [ 0, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.i ], [ 134217728, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread33.i ], [ 0, %_ZNK4llvm8Function10hasOptSizeEv.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 575
  %i.p = load i8, ptr %i.o, align 1, !tbaa !861, !range !237, !noundef !238
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread.i

bb.d:                                             ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread.i
  %i.r = load ptr, ptr %1, align 8, !tbaa !364, !nonnull !238, !align !363 ; 2 uses
  %i.s = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.r, i32 noundef 51) #24
  br i1 %i.s, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread.i, label %_ZNK4llvm8Function10hasOptSizeEv.exit.i17.i

_ZNK4llvm8Function10hasOptSizeEv.exit.i17.i:      ; preds = %bb.d
  %i.t = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.r, i32 noundef 19) #24
  br i1 %i.t, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit.i17.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !365  ; 2 uses
  %.not.i18.i = icmp eq ptr %i.v, null
  br i1 %.not.i18.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread37.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !414  ; 2 uses
  %.not9.i19.i = icmp eq ptr %i.x, null
  br i1 %.not9.i19.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread37.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.i: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !415
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !416
  %i.ac = tail call noundef zeroext i1 @_ZN4llvm21shouldOptimizeForSizeEPKNS_10BasicBlockEPNS_18ProfileSummaryInfoEPNS_18BlockFrequencyInfoENS_13PGSOQueryTypeE(ptr noundef nonnull %i.x, ptr noundef %i.z, ptr noundef %i.ab, i32 noundef 2) #24
  br i1 %i.ac, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread.i, label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread37.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread.i: ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.i, %_ZNK4llvm8Function10hasOptSizeEv.exit.i17.i, %bb.d, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit.thread.i
  %i.ad = or disjoint i64 %.sroa.3.0.i, 33554432
  br label %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread37.i

_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread37.i: ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread.i, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.i, %bb.f, %bb.e
  %.sroa.3.1.i = phi i64 [ %i.ad, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread.i ], [ %.sroa.3.0.i, %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.i ], [ %.sroa.3.0.i, %bb.e ], [ %.sroa.3.0.i, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !417 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 224
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !862, !range !237, !noundef !238
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 225
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !863, !range !237, !noundef !238 ; 3 uses
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread37.i
  %i.al = trunc nuw i8 %i.ak to i1
  %spec.select.i = select i1 %i.al, i64 2147483648, i64 1048576
  %spec.select52.i = or i64 %spec.select.i, %.sroa.3.1.i
  br label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm20GIMatchTableExecutor16shouldOptForSizeEPKNS_15MachineFunctionE.exit21.thread37.i
  %i.am = zext nneg i8 %i.ak to i64
  %i.an = shl nuw nsw i64 %i.am, 32
  %spec.select50.i = or i64 %i.an, %.sroa.3.1.i   ; 2 uses
  %i.ao = trunc nuw i8 %i.ak to i1
  %i.ap = or i64 %spec.select50.i, 524288
  %spec.select53.i = select i1 %i.ao, i64 %spec.select50.i, i64 %i.ap
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.5.i = phi i64 [ %spec.select52.i, %bb.g ], [ %spec.select53.i, %bb.h ]
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !362, !nonnull !238, !align !363
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 364
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !864, !range !237, !noundef !238
  %i.at = trunc nuw i8 %i.as to i1
  %.sroa.3.7.v.i = select i1 %i.at, i64 8388608, i64 4194304
  %.sroa.3.7.i = or i64 %.sroa.3.7.v.i, %.sroa.3.5.i ; 2 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !364, !nonnull !238, !align !363
  %i.av = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.au, i32 noundef 52) #24
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !865
  %i.ay = and i64 %i.ax, 48
  %or.cond.i = icmp eq i64 %i.ay, 32
  br i1 %or.cond.i, label %_ZNK12_GLOBAL__N_126AArch64InstructionSelector32computeAvailableFunctionFeaturesEPKN4llvm16AArch64SubtargetEPKNS1_15MachineFunctionE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.az = or i64 %.sroa.3.7.i, 2097152
  br label %_ZNK12_GLOBAL__N_126AArch64InstructionSelector32computeAvailableFunctionFeaturesEPKN4llvm16AArch64SubtargetEPKNS1_15MachineFunctionE.exit

_ZNK12_GLOBAL__N_126AArch64InstructionSelector32computeAvailableFunctionFeaturesEPKN4llvm16AArch64SubtargetEPKNS1_15MachineFunctionE.exit: ; preds = %bb.j, %bb.k
  %.sroa.3.8.i = phi i64 [ %i.az, %bb.k ], [ %.sroa.3.7.i, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.ba, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %.sroa.3.8.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !251
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126AArch64InstructionSelector7setupMFERN4llvm15MachineFunctionEPNS1_18GISelValueTrackingEPNS1_15CodeGenCoverageEPNS1_18ProfileSummaryInfoEPNS1_18BlockFrequencyInfoE(ptr noundef nonnull align 8 dereferenceable(1488) initializes((8, 56)) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::MachineIRBuilder", align 8 ; 12 uses
  %7 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SrcOp", align 8       ; 5 uses
  %9 = alloca %"class.llvm::SmallVector.545", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !453
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !454
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !455
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.d, align 8, !tbaa !415
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %5, ptr %i.e, align 8, !tbaa !416
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !365
  %i.g = load ptr, ptr %0, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #24, !inline_history !866
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN4llvm16MachineIRBuilder5setMFERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(1065) %1) #24
  %i.k = load ptr, ptr %1, align 8, !tbaa !364, !nonnull !238, !align !363
  %i.l = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.k, i32 noundef 73) #24
  %i.m = xor i1 %i.l, true
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.p, align 4, !tbaa !249
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !456  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.s, ptr %9, align 8, !tbaa !457
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.t, align 8, !tbaa !458
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 32, ptr %i.u, align 4, !tbaa !459
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.013.026.i = load ptr, ptr %i.v, align 8, !tbaa !868 ; 2 uses
  %.not1927.i = icmp eq ptr %.sroa.013.026.i, %i.w
  br i1 %.not1927.i, label %_ZN12_GLOBAL__N_126AArch64InstructionSelector11processPHIsERN4llvm15MachineFunctionE.exit, label %.lr.ph30.i

._crit_edge31.i:                                  ; preds = %._crit_edge.i
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !457 ; 3 uses
  %.pre57.i = load i32, ptr %i.t, align 8, !tbaa !458 ; 2 uses
  %i.x = zext i32 %.pre57.i to i64
  %.idx.i = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx.i
  %.not51.i = icmp eq i32 %.pre57.i, 0
  br i1 %.not51.i, label %._crit_edge55.i, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %._crit_edge31.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 472 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 464 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.e

.lr.ph30.i:                                       ; preds = %bb.a, %._crit_edge.i
  %.sroa.013.028.i = phi ptr [ %.sroa.013.0.i, %._crit_edge.i ], [ %.sroa.013.026.i, %bb.a ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i, i64 48 ; 2 uses
  %.sroa.010.023.i = load ptr, ptr %i.al, align 8, !tbaa !460 ; 2 uses
  %.not2224.i = icmp eq ptr %.sroa.010.023.i, %i.am
  br i1 %.not2224.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %.lr.ph30.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i, i64 8
  %.sroa.013.0.i = load ptr, ptr %i.an, align 8, !tbaa !868 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.013.0.i, %i.w
  br i1 %.not19.i, label %._crit_edge31.i, label %.lr.ph30.i

.lr.ph.i:                                         ; preds = %.lr.ph30.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.010.025.i = phi ptr [ %.sroa.010.0.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.010.023.i, %.lr.ph30.i ] ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.010.025.i, i64 52
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !467
  %i.aq = icmp eq i32 %i.ap, 74
  br i1 %i.aq, label %bb.b, label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE12emplace_backIJS2_EEERS2_DpOT_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.ar = load i32, ptr %i.t, align 8, !tbaa !458 ; 3 uses
  %i.as = load i32, ptr %i.u, align 4, !tbaa !459
  %.not.i.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE18growAndEmplaceBackIJS2_EEERS2_DpOT_.exit.i, !prof !468

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE18growAndEmplaceBackIJS2_EEERS2_DpOT_.exit.i: ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %.sroa.010.025.i)
  br label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE12emplace_backIJS2_EEERS2_DpOT_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.at = zext i32 %i.ar to i64
  %i.au = load ptr, ptr %9, align 8, !tbaa !457
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  store ptr %.sroa.010.025.i, ptr %i.av, align 8, !tbaa !470
  %i.aw = add nuw i32 %i.ar, 1
  store i32 %i.aw, ptr %i.t, align 8, !tbaa !458
  br label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE12emplace_backIJS2_EEERS2_DpOT_.exit.i

_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE12emplace_backIJS2_EEERS2_DpOT_.exit.i: ; preds = %bb.c, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE18growAndEmplaceBackIJS2_EEERS2_DpOT_.exit.i, %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.025.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.010.025.i, align 8
  %i.ax = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE12emplace_backIJS2_EEERS2_DpOT_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.025.i, i64 44
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !471
  %i.ba = and i32 %i.az, 8
  %.not34.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.bc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.010.025.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !460 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 44
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !471
  %i.bf = and i32 %i.be, 8
  %.not3.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !867

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE12emplace_backIJS2_EEERS2_DpOT_.exit.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.010.025.i, %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE12emplace_backIJS2_EEERS2_DpOT_.exit.i ], [ %.sroa.010.025.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.bc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %.sroa.010.0.i = load ptr, ptr %i.bg, align 8, !tbaa !460 ; 2 uses
  %.not22.i = icmp eq ptr %.sroa.010.0.i, %i.am
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge55.loopexit.i:                         ; preds = %.thread.thread.i
  %.pre58.i = load ptr, ptr %9, align 8, !tbaa !457
  br label %._crit_edge55.i

._crit_edge55.i:                                  ; preds = %._crit_edge55.loopexit.i, %._crit_edge31.i
  %i.bh = phi ptr [ %.pre58.i, %._crit_edge55.loopexit.i ], [ %.pre.i, %._crit_edge31.i ] ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.s
  br i1 %i.bi, label %_ZN12_GLOBAL__N_126AArch64InstructionSelector11processPHIsERN4llvm15MachineFunctionE.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge55.i
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN12_GLOBAL__N_126AArch64InstructionSelector11processPHIsERN4llvm15MachineFunctionE.exit

bb.e:                                             ; preds = %.thread.thread.i, %.lr.ph54.i
end_hunk_0
