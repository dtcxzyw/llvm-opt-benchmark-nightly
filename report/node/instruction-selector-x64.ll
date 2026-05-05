inline.NumInlined: 9610
inline.NumDeleted: 1506
begin_hunk_0_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitStoreCommonEPNS1_19InstructionSelectorERKNS3_9StoreViewE:bb.a
_ZNK2v88internal8compiler19InstructionSelector9StoreView5indexEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.01.0.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i85, %bb.b ], [ -1, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 20
  %.sroa.0.0.copyload.i.i.i86 = load i32, ptr %i.l, align 4 ; 18 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.8.val, i64 4
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitStoreCommonEPNS1_19InstructionSelectorERKNS3_9StoreViewE:bb.a
  %i.dt = inttoptr i64 %i.ds to ptr               ; 5 uses
  %i.du = load i8, ptr %i.dt, align 4
  %.not.i.i = icmp eq i8 %i.du, 69
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i: ; preds = %bb.aq
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitStoreCommonEPNS1_19InstructionSelectorERKNS3_9StoreViewE:bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dx = load i8, ptr %i.dw, align 4
  %i.dy = icmp eq i8 %i.dx, 12
  br i1 %i.dy, label %bb.ar, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

bb.ar:                                            ; preds = %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 6
  %.sroa.0.0.copyload.i.i.i94 = load i8, ptr %i.dz, align 1
  %i.ea = icmp eq i8 %.sroa.0.0.copyload.i.i.i94, 1
  br i1 %i.ea, label %bb.as, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 7
  %.sroa.0.0.copyload.i23.i.i = load i8, ptr %i.eb, align 1
  %i.ec = icmp eq i8 %.sroa.0.0.copyload.i23.i.i, 0
  br i1 %i.ec, label %_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE.exit, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread: ; preds = %bb.aq, %bb.ar, %bb.as, %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i
  br label %_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE.exit

_ZN2v88internal17ElementSizeLog2OfENS0_21MachineRepresentationE.exit: ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread, %bb.as
  %.sroa.048.1 = phi i32 [ %.sroa.0.0.copyload.i.i.i86, %bb.ao ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.as ], [ %.sroa.0.0.copyload.i.i.i86, %bb.ao ], [ %.sroa.0.0.copyload.i.i.i86, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread ], [ %.sroa.0.0.copyload.i.i.i86, %bb.ao ], [ %.sroa.0.0.copyload.i.i.i86, %bb.ao ], [ %.sroa.0.0.copyload.i.i.i86, %bb.ao ], [ %.sroa.0.0.copyload.i.i.i86, %bb.ao ], [ %.sroa.0.0.copyload.i.i.i86, %bb.ao ], [ %.sroa.0.0.copyload.i.i.i86, %bb.ao ], [ %.sroa.0.0.copyload.i.i.i86, %bb.ao ], [ %.sroa.0.0.copyload.i.i.i86, %bb.ao ], [ %.sroa.0.0.copyload.i.i.i86, %bb.ao ], [ %.sroa.0.0.copyload.i.i.i86, %bb.ao ] ; 4 uses
  %i.ed = call noundef zeroext i8 @_ZN2v88internal8compiler19X64OperandGenerator32GetEffectiveAddressMemoryOperandENS1_10turboshaft7OpIndexEPNS1_18InstructionOperandEPmNS1_16OperandGenerator15RegisterUseKindE(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 %.0.val, ptr noundef nonnull %4, ptr noundef nonnull %i.c, i32 noundef 0)
  store i8 %i.ed, ptr %i.b, align 1
  %i.ee = load ptr, ptr %i.f, align 8             ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitWord32ShiftEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexENS1_10ArchOpcodeE:bb.a
  %i.i = add i64 %i.g, %i.h
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.k, align 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.0.0.copyload.i.i33 = load i32, ptr %i.l, align 4 ; 4 uses
  %i.m = zext i32 %.sroa.0.0.copyload.i.i to i64
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitWord32ShiftEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexENS1_10ArchOpcodeE:bb.a
  %i.o = inttoptr i64 %i.n to ptr                 ; 5 uses
  %i.p = load i8, ptr %i.o, align 4
  %.not.i.i = icmp eq i8 %i.p, 69
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitWord32ShiftEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexENS1_10ArchOpcodeE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load i8, ptr %i.r, align 4
  %i.t = icmp eq i8 %i.s, 12
  br i1 %i.t, label %bb.b, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.u, align 1
  %i.v = icmp eq i8 %.sroa.0.0.copyload.i.i.i, 1
  br i1 %i.v, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 7
  %.sroa.0.0.copyload.i23.i.i = load i8, ptr %i.w, align 1
  %i.x = icmp eq i8 %.sroa.0.0.copyload.i23.i.i, 0
  br i1 %i.x, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread.a, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread.a

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread.a: ; preds = %bb.c, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread
  %.sroa.019.0 = phi i32 [ %.sroa.0.0.copyload.i.i, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ] ; 4 uses
  %i.y = zext i32 %.sroa.0.0.copyload.i.i33 to i64
  %i.z = add i64 %i.y, %i.g
  %i.aa = inttoptr i64 %i.z to ptr                ; 6 uses
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler19InstructionSelector13VisitInt32AddENS1_10turboshaft7OpIndexE:bb.a
  %i.h = add i64 %i.f, %i.g
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.j, align 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.sroa.0.0.copyload.i.i20 = load i32, ptr %i.k, align 4 ; 2 uses
  %i.l = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.m = add i64 %i.l, %i.f
  %i.n = inttoptr i64 %i.m to ptr                 ; 5 uses
  %i.o = load i8, ptr %i.n, align 4
  %.not.i.i = icmp eq i8 %i.o, 69
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler19InstructionSelector13VisitInt32AddENS1_10turboshaft7OpIndexE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i8, ptr %i.q, align 4
  %i.s = icmp eq i8 %i.r, 12
  br i1 %i.s, label %bb.b, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.t, align 1
  %i.u = icmp eq i8 %.sroa.0.0.copyload.i.i.i, 1
  br i1 %i.u, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  %.sroa.0.0.copyload.i23.i.i = load i8, ptr %i.v, align 1
  %i.w = icmp eq i8 %.sroa.0.0.copyload.i23.i.i, 0
  br i1 %i.w, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread.a, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread.a

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread.a: ; preds = %bb.c, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread
  %7 = phi i32 [ %.sroa.0.0.copyload.i.i, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ]
  %i.x = zext i32 %.sroa.0.0.copyload.i.i20 to i64
  %i.y = add i64 %i.x, %i.f
  %i.z = inttoptr i64 %i.y to ptr                 ; 5 uses
  %i.aa = load i8, ptr %i.z, align 4
  %.not.i.i21 = icmp eq i8 %i.aa, 69
  br i1 %.not.i.i21, label %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i28, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit26.thread

_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i28: ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler19InstructionSelector13VisitInt32AddENS1_10turboshaft7OpIndexE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = icmp eq i8 %i.ad, 12
  br i1 %i.ae, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit26.thread

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i28
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %.sroa.0.0.copyload.i.i.i29 = load i8, ptr %i.af, align 1
  %i.ag = icmp eq i8 %.sroa.0.0.copyload.i.i.i29, 1
  br i1 %i.ag, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit26.thread

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 7
  %.sroa.0.0.copyload.i23.i.i30 = load i8, ptr %i.ah, align 1
  %i.ai = icmp eq i8 %.sroa.0.0.copyload.i23.i.i30, 0
  br i1 %i.ai, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit34.thread, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit26.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit26.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread.a, %bb.d, %bb.e, %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i28
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit34.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit34.thread: ; preds = %bb.e, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit26.thread
  %8 = phi i32 [ %.sroa.0.0.copyload.i.i20, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit26.thread ], [ %.sroa.0.0.copyload.i.i.i.i23, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN2v88internal8compiler56TryMatchBaseWithScaledIndexAndDisplacement64ForWordBinopEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES5_b(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %6, ptr noundef nonnull %0, i32 %7, i32 %8, i1 noundef zeroext true)
  %.sroa.040.0.copyload = load i32, ptr %6, align 8
end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE:bb.a
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i80 = load i32, ptr %i.o, align 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.p, align 4 ; 3 uses
  %i.q = and i32 %2, 187
  %or.cond = icmp eq i32 %i.q, 184
  br i1 %or.cond, label %bb.b, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit96.thread
end_hunk_9
begin_hunk_10_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE:bb.a
  %i.t = inttoptr i64 %i.s to ptr                 ; 5 uses
  %i.u = load i8, ptr %i.t, align 4
  %.not.i.i = icmp eq i8 %i.u, 69
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
end_hunk_10
begin_hunk_11_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.x = load i8, ptr %i.w, align 4
  %i.y = icmp eq i8 %i.x, 12
  br i1 %i.y, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.z, align 1
  %i.aa = icmp eq i8 %.sroa.0.0.copyload.i.i.i, 1
  br i1 %i.aa, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  %.sroa.0.0.copyload.i23.i.i = load i8, ptr %i.ab, align 1
  %i.ac = icmp eq i8 %.sroa.0.0.copyload.i23.i.i, 0
  br i1 %i.ac, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread.a, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread: ; preds = %bb.b, %bb.c, %bb.d, %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread.a

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread.a: ; preds = %bb.d, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread
  %.sroa.0129.0 = phi i32 [ %.sroa.0.0.copyload.i80, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.d ] ; 2 uses
  %i.ad = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ae = add i64 %i.ad, %i.g
  %i.af = inttoptr i64 %i.ae to ptr               ; 5 uses
  %i.ag = load i8, ptr %i.af, align 4
  %.not.i.i83 = icmp eq i8 %i.ag, 69
  br i1 %.not.i.i83, label %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i90, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread

_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i90: ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
end_hunk_11
begin_hunk_12_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = icmp eq i8 %i.aj, 12
  br i1 %i.ak, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i90
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  %.sroa.0.0.copyload.i.i.i91 = load i8, ptr %i.al, align 1
  %i.am = icmp eq i8 %.sroa.0.0.copyload.i.i.i91, 1
  br i1 %i.am, label %bb.f, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 7
  %.sroa.0.0.copyload.i23.i.i92 = load i8, ptr %i.an, align 1
  %i.ao = icmp eq i8 %.sroa.0.0.copyload.i23.i.i92, 0
  br i1 %i.ao, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit96.thread, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit.thread.a, %bb.e, %bb.f, %_ZN2v88internal8compiler10turboshaft6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EE7matchesENS2_7OpIndexEPKNS2_16OperationMatcherE.exit.thread35.i.i90
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit96.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit96.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread, %bb.f, %bb.a
  %.sroa.0119.1 = phi i32 [ %.sroa.0.0.copyload.i, %bb.a ], [ %.sroa.0.0.copyload.i, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread ], [ %.sroa.0.0.copyload.i.i.i.i85, %bb.f ] ; 12 uses
  %.sroa.0129.1 = phi i32 [ %.sroa.0.0.copyload.i80, %bb.a ], [ %.sroa.0129.0, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit88.thread ], [ %.sroa.0129.0, %bb.f ] ; 10 uses
  %i.ap = zext i32 %.sroa.0129.1 to i64           ; 4 uses
  %i.aq = add i64 %i.ap, %i.g
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.as = load i8, ptr %i.ar, align 4             ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE:bb.a
  br i1 %i.av, label %bb.g, label %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread.i

bb.g:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i
  %i.aw = zext i32 %.sroa.0119.1 to i64
  %i.ax = add i64 %i.aw, %i.g
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load i8, ptr %i.ay, align 4
end_hunk_13
begin_hunk_14_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE:bb.a
  br i1 %spec.select.i59.i, label %bb.h, label %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread.i

bb.h:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i
  %i.bc = tail call fastcc i16 @_ZN2v88internal8compiler12_GLOBAL__N_127MachineTypeForNarrowWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_(ptr %i.f, i32 %.sroa.0129.1, i32 %.sroa.0119.1) ; 2 uses
  br label %bb.j

_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i, %bb.g, %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchTruncateWord64ToWord32ENS2_1VINS2_3AnyEEENS2_6detail10ValueMatchINS2_12WordWithBitsILm64EEELb1EEE.exit96.thread
  %i.bd = zext i32 %.sroa.0119.1 to i64
  %i.be = add i64 %i.bd, %i.g
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 4
end_hunk_14
begin_hunk_15_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE:bb.a
  br i1 %spec.select.i65.i, label %bb.i, label %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.thread.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit66.i
  %i.bm = tail call fastcc i16 @_ZN2v88internal8compiler12_GLOBAL__N_127MachineTypeForNarrowWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_(ptr %i.f, i32 %.sroa.0119.1, i32 %.sroa.0129.1) ; 2 uses
  br label %bb.j

_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.thread.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit66.i, %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.i, %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread.i
  %i.bn = tail call fastcc i16 @_ZN2v88internal8compiler12_GLOBAL__N_120MachineTypeForNarrowEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_(ptr noundef nonnull readonly %0, i32 %.sroa.0129.1, i32 %.sroa.0119.1)
  %i.bo = tail call fastcc i16 @_ZN2v88internal8compiler12_GLOBAL__N_120MachineTypeForNarrowEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_(ptr noundef nonnull readonly %0, i32 %.sroa.0119.1, i32 %.sroa.0129.1)
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_19IsWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit62.thread.i, %bb.i, %bb.h
end_hunk_15
begin_hunk_16_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = zext i32 %.sroa.0119.1 to i64           ; 3 uses
  %i.cf = add i64 %i.cd, %i.ce
  %i.cg = inttoptr i64 %i.cf to ptr               ; 6 uses
  %i.ch = load i8, ptr %i.cg, align 4
end_hunk_16
begin_hunk_17_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE:bb.a
  br i1 %i.dq, label %bb.ae, label %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit101.thread

_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit101.thread: ; preds = %bb.z, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit.thread, %bb.ac, %bb.aa, %bb.ab, %bb.y, %bb.w, %bb.x, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit101, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit
  %i.dr = call noundef zeroext i1 @_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %.0.i, i32 %1, i32 %.sroa.0119.1, i32 noundef %i.bz)
  br i1 %i.dr, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit101.thread
  %i.ds = call noundef zeroext i1 @_ZN2v88internal8compiler19X64OperandGenerator18CanBeMemoryOperandEjNS1_10turboshaft7OpIndexES4_i(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %.0.i, i32 %1, i32 %.sroa.0129.1, i32 noundef %i.bz)
  br i1 %i.ds, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.aa, %bb.ab, %bb.ad, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit101
end_hunk_17
begin_hunk_18_@_ZN2v88internal8compiler12_GLOBAL__N_116VisitWordCompareEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexEjPNS1_17FlagsContinuationE:bb.a

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit101.thread
  %.pre-phi = phi i64 [ %i.ce, %bb.ae ], [ %i.ce, %bb.af ], [ %i.ap, %bb.ad ], [ %i.ap, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit101.thread ]
  %.sroa.0127.2 = phi i32 [ %.sroa.0129.1, %bb.ae ], [ %.sroa.0129.1, %bb.af ], [ %.sroa.0119.1, %bb.ad ], [ %.sroa.0119.1, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit101.thread ] ; 6 uses
  %.sroa.0137.2 = phi i32 [ %.sroa.0119.1, %bb.ae ], [ %.sroa.0119.1, %bb.af ], [ %.sroa.0129.1, %bb.ad ], [ %.sroa.0129.1, %_ZN2v88internal8compiler19X64OperandGenerator14CanBeImmediateENS1_10turboshaft7OpIndexE.exit101.thread ] ; 4 uses
  %.val = load ptr, ptr %0, align 8
  %i.dx = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.dx, align 8
end_hunk_18
