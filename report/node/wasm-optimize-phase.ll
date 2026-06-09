inline.NumInlined: 41993
inline.NumDeleted: 13966
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft20ReducerBaseForwarderINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES4_EEEEEEEE20ReduceInputGraphGotoENS2_7OpIndexERKNS2_6GotoOpE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 4
  %i.d = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2744
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23AssembleOutputGraphGotoERKNS2_6GotoOpE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE11FixLoopPhisEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(2880) %0, ptr noundef nonnull %i.b)
  %.pre = load i8, ptr %i.i, align 4, !range !5
  %i.l = trunc nuw i8 %.pre to i1
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23AssembleOutputGraphGotoERKNS2_6GotoOpE.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE23AssembleOutputGraphGotoERKNS2_6GotoOpE.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i1 [ false, %bb.a ], [ %i.l, %bb.b ]
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(2672) %0, ptr noundef %i.h, i1 noundef zeroext %i.m) ; 0 uses
  ret i32 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE11FixLoopPhisEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(2880) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.c, align 8 ; 2 uses
  %.not4851 = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i22
  br i1 %.not4851, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2744
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.g, align 4
  %i.h = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.p = getelementptr inbounds i8, ptr %0, i64 -8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit
  %.sroa.036.052 = phi i32 [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %i.br, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit ] ; 3 uses
  %i.s = load ptr, ptr %i.k, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = zext i32 %.sroa.036.052 to i64
  %i.v = add i64 %i.t, %i.u                       ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = load i8, ptr %i.w, align 4
  %.not = icmp eq i8 %i.x, 91
  br i1 %.not, label %bb.c, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.v, %i.ab
  %i.ad = lshr i64 %i.ac, 4
  %i.ae = and i64 %i.ad, 268435455                ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.ah, -1
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ae ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ak = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.ak, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit: ; preds = %bb.d
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i, i64 16
  %.sroa.02.0.copyload.i12.i = load i32, ptr %i.al, align 4 ; 2 uses
  %.not50 = icmp eq i32 %.sroa.02.0.copyload.i12.i, -1
  br i1 %.not50, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit.thread: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit
  %.sroa.010.1.i45 = phi i32 [ %.sroa.02.0.copyload.i12.i, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit ], [ %i.ah, %bb.c ] ; 4 uses
  %i.am = load i32, ptr %i.n, align 4
  %i.an = icmp ule i32 %i.am, %.sroa.010.1.i45
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.o, align 8
  %i.ao = icmp ult i32 %.sroa.010.1.i45, %.sroa.0.0.copyload.i30
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %.critedge, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit.thread
  %i.aq = load ptr, ptr %i.p, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = zext i32 %.sroa.010.1.i45 to i64
  %i.av = add i64 %i.at, %i.au
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = icmp eq i8 %i.ax, 74
  br i1 %i.ay, label %bb.e, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.az, align 4
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %2, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.sroa.0.0.copyload.i.i31 = load i32, ptr %i.ba, align 4
  %i.bb = lshr i32 %.sroa.0.0.copyload.i.i31, 4
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.be, -1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESZ_i.exit.i

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %i.m, align 8
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.bh = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.bh, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.f
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.bi, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESZ_i.exit.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESZ_i.exit.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.e
  %.sroa.014.0.i.i.i = phi i32 [ %i.be, %bb.e ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  store i32 %.sroa.014.0.i.i.i, ptr %i.q, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.0.0.copyload.i32 = load i8, ptr %i.bj, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.aq, i32 %.sroa.010.1.i45, ptr nonnull %2, i64 2, i8 %.sroa.0.0.copyload.i32)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10FixLoopPhiERKNS2_5PhiOpENS2_7OpIndexEPNS2_5BlockE.exit: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit.thread, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESW_i.exit, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_3AnyEEENS2_1VIT0_EESZ_i.exit.i, %.critedge, %bb.b
  %i.bk = load ptr, ptr %i.r, align 8
  %i.bl = lshr i32 %.sroa.036.052, 4
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = zext i16 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 3
  %i.br = add i32 %i.bq, %.sroa.036.052           ; 2 uses
  %.not48 = icmp eq i32 %i.br, %.sroa.0.0.copyload.i22
  br i1 %.not48, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S6_S7_S8_S9_SB_SD_EEEEEEEEEEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(2672) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = tail call i32 @_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(1768) %0, ptr noundef %1, i1 noundef zeroext %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4              ; 5 uses
  %.not30 = icmp eq i32 %i.c, -1
  br i1 %.not30, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.h = load i64, ptr %i.g, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.h, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2648
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i.i, 48
  %i.m = zext i32 %i.c to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i.i = phi i64 [ %i.s, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i8.i.i.i, %i.e ; 4 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.al, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.e
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %i.c
  br i1 %i.aj, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28, label %bb.f, !prof !9

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.a

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.al = and i16 %i.ak, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.am = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.an = bitcast <16 x i1> %i.am to i16
  %.not44.i.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not44.i.i.i.i, label %bb.g, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, !prof !7

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ao = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !472

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8
  %i.ar = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %i.as = icmp eq i32 %i.ar, %i.c
  br i1 %i.as, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.a, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.a: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 %i.c, ptr %3, align 4
  %i.at = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i8, ptr %i.au, align 8, !range !5, !noundef !6
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.a
  call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread28.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not33 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not33, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit
  %i.bb = getelementptr inbounds i8, ptr %0, i64 -8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.034 = phi ptr [ %i.ay, %.lr.ph ], [ %i.bn, %bb.i ] ; 3 uses
  %.sroa.0.0.copyload24 = load ptr, ptr %.034, align 8
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..0.sroa_idx, align 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = zext i32 %.sroa.4.0.copyload to i64
  %i.bi = add i64 %i.bg, %i.bh
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bk, align 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %4, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24, i64 16
  %.sroa.02.0.copyload.i = load i32, ptr %i.bl, align 4
  store i32 %.sroa.02.0.copyload.i, ptr %i.bc, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %.sroa.0.0.copyload = load i8, ptr %i.bm, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.bd, i32 %.sroa.4.0.copyload, ptr nonnull %4, i64 2, i8 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bn = getelementptr inbounds nuw i8, ptr %.034, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bn, %i.ba
  br i1 %.not, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.i

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.i, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, %bb.c, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit, %bb.a
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %0, i32 %1, ptr %2, i64 %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = add i64 %i.c, %i.d                       ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = zext i16 %i.m to i64
  %.idx.i = shl nuw nsw i64 %i.n, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.m, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.p = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.k, align 4
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.u = add i64 %i.s, %i.t
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = add i8 %i.x, -1                          ; 2 uses
  %spec.select.i.i.prol = icmp ult i8 %i.y, -2
  br i1 %spec.select.i.i.prol, label %bb.b, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, !prof !9

bb.b:                                             ; preds = %.lr.ph.i.prol
  store i8 %i.y, ptr %i.w, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol: ; preds = %bb.b, %.lr.ph.i.prol
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, %.lr.ph.i.preheader
  %.011.i.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.z, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol ]
  %i.aa = icmp eq i64 %i.p, 0
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1
  %.011.i = phi ptr [ %i.as, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1 ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = zext i32 %.sroa.01.0.copyload.i to i64
  %i.ae = add i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  %spec.select.i.i = icmp ult i8 %i.ai, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i, !prof !9

bb.c:                                             ; preds = %.lr.ph.i
  store i8 %i.ai, ptr %i.ag, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = add i8 %i.aq, -1                        ; 2 uses
  %spec.select.i.i.1 = icmp ult i8 %i.ar, -2
  br i1 %spec.select.i.i.1, label %bb.d, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, !prof !9

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.as, %i.o
  br i1 %.not.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %i.a, align 8
  %.pre28 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre29 = add i64 %.pre28, %i.d                 ; 2 uses
  %.pre31 = inttoptr i64 %.pre29 to ptr
  br label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, %bb.a
  %.pre-phi32 = phi ptr [ %.pre31, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi30 = phi i64 [ %.pre29, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre28, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.04.0.copyload = load i8, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = lshr i32 %1, 4
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2            ; 3 uses
  store ptr %.pre-phi32, ptr %i.au, align 8
  %i.bc = add i64 %3, 3
  %i.bd = lshr i64 %i.bc, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bd, i64 2) ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = sub i64 %i.bg, %.pre-phi30
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = icmp ult i64 %i.bi, %.sroa.speculated.i.i.i
  br i1 %i.bj, label %bb.e, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %i.bk = sub i64 %i.bg, %.pre-phi
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = add nuw i64 %i.bm, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %0, i64 noundef %i.bn)
  %.pre.i.i.i.i = load ptr, ptr %i.au, align 8    ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre26 = load ptr, ptr %i.a, align 8
  %.pre27 = load ptr, ptr %i.aw, align 8
  %.pre33 = ptrtoint ptr %.pre26 to i64
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %.pre-phi34 = phi i64 [ %.pre33, %bb.e ], [ %.pre-phi, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_8SelectOpEJNS2_14ShadowyOpIndexESL_SL_NS2_22RegisterRepresentationENS0_10BranchHintENSK_14ImplementationEEEENS2_7OpIndexEDpT0_:bb.a
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.au, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_8SelectOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS2_22RegisterRepresentationENS0_10BranchHintENS4_14ImplementationEEEERS4_PNS2_5GraphEDpT_.exit
  %i.av = add nuw i8 %i.au, 1
  store i8 %i.av, ptr %i.at, align 1
  %.pre.i = load ptr, ptr %i.f, align 8
  %.pre13.i = ptrtoint ptr %.pre.i to i64
  %.sroa.01.0.copyload.1.i.pre = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.c, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_8SelectOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS2_22RegisterRepresentationENS0_10BranchHintENS4_14ImplementationEEEERS4_PNS2_5GraphEDpT_.exit
  %.sroa.01.0.copyload.1.i = phi i32 [ %2, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_8SelectOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS2_22RegisterRepresentationENS0_10BranchHintENS4_14ImplementationEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.sroa.01.0.copyload.1.i.pre, %bb.c ]
  %.pre-phi.i = phi i64 [ %i.ap, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm3ENS2_8SelectOpEE3NewIJNS2_14ShadowyOpIndexES7_S7_NS2_22RegisterRepresentationENS0_10BranchHintENS4_14ImplementationEEEERS4_PNS2_5GraphEDpT_.exit ], [ %.pre13.i, %bb.c ] ; 2 uses
  %i.aw = zext i32 %.sroa.01.0.copyload.1.i to i64
  %i.ax = add i64 %.pre-phi.i, %i.aw
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1             ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.ba, -1
  br i1 %.not.i.1.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.bb = add nuw i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1
  %.pre12.i = load ptr, ptr %i.f, align 8
  %.pre14.i = ptrtoint ptr %.pre12.i to i64
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %.pre-phi15.i = phi i64 [ %.pre14.i, %bb.d ], [ %.pre-phi.i, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ]
  %.sroa.01.0.copyload.2.i = load i32, ptr %i.ak, align 4
  %i.bc = zext i32 %.sroa.01.0.copyload.2.i to i64
  %i.bd = add i64 %.pre-phi15.i, %i.bc
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %.not.i.2.i = icmp eq i8 %i.bg, -1
  br i1 %.not.i.2.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8SelectOpEEEvRKT_.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i
  %i.bh = add nuw i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8SelectOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8SelectOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.1.i, %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3036
  %.sroa.0.0.copyload.i = load i32, ptr %i.bi, align 4
  %i.bj = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8 ; 4 uses
  %i.bk = lshr i64 %i.i, 4
  %i.bl = and i64 %i.bk, 268435455                ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 216
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 208 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2
  %.not.i.i13 = icmp ugt i64 %i.bt, %i.bl
  br i1 %.not.i.i13, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.f, !prof !9

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8SelectOpEEEvRKT_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 200 ; 2 uses
  %i.bv = lshr i64 %i.bl, 1
  %i.bw = add nuw nsw i64 %i.bl, 32
  %i.bx = add nuw nsw i64 %i.bw, %i.bv
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 noundef %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.bo, align 8
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 noundef %i.ce)
  %.pre.i.i = load ptr, ptr %i.bo, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8SelectOpEEEvRKT_.exit, %bb.f
  %i.cf = phi ptr [ %.pre.i.i, %bb.f ], [ %i.bp, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8SelectOpEEEvRKT_.exit ]
  %i.cg = trunc i64 %i.i to i32
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.bl
  store i32 %.sroa.0.0.copyload.i, ptr %i.ch, align 4
  ret i32 %i.cg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE23AssembleOutputGraphLoadERKNS2_6LoadOpE(ptr noundef nonnull align 8 dereferenceable(2672) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp eq i16 %i.n, 2
  br i1 %i.o, label %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_15OptionalOpIndexE.exit

_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i3 = load i32, ptr %i.p, align 4 ; 2 uses
  %.not.i.i4 = icmp eq i32 %.sroa.0.0.copyload.i.i3, -1
  br i1 %.not.i.i4, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_15OptionalOpIndexE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit
  %i.q = lshr i32 %.sroa.0.0.copyload.i.i3, 4
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_15OptionalOpIndexE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.r ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.x = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.x, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.y, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_15OptionalOpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_15OptionalOpIndexE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit, %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit, %bb.d, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i
  %.sroa.03.0.i.i = phi i32 [ -1, %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit ], [ %i.t, %bb.d ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ], [ -1, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.02.0.copyload.i = load i8, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.sroa.01.0.copyload.i = load i8, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.0.0.copyload.i = load i8, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE10ReduceLoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih(ptr noundef nonnull align 8 dereferenceable(2074) %0, i32 %.sroa.014.0.i.i, i32 %.sroa.03.0.i.i, i8 %.sroa.02.0.copyload.i, i8 %.sroa.01.0.copyload.i, i8 %.sroa.0.0.copyload.i, i32 noundef %i.ad, i8 noundef zeroext %i.af)
  ret i32 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE5countIS9_EEmRKS9_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE14const_iteratorESL_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %i.h = select i1 %i.g, ptr @_ZN4absl18container_internal11kSooControlE, ptr null
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_14const_iteratorERKS9_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4 ; 2 uses
  %i.m = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i8.i.i, %i.a    ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not47.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not47.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.048.i.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.048.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.a                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !9

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_14const_iteratorERKS9_.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = add i16 %.sroa.017.048.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.048.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE14const_iteratorESL_.exit, !prof !7

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !1120

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_14const_iteratorERKS9_.exit: ; preds = %.thread33.i.i.i, %bb.c
  %.pn.i.i = phi ptr [ %i.h, %bb.c ], [ %i.ak, %.thread33.i.i.i ] ; 3 uses
  %i.ar = icmp eq ptr %.pn.i.i, null              ; 2 uses
  %i.as = icmp eq ptr %.pn.i.i, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.ar, %i.as
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_14const_iteratorERKS9_.exit
  %i.at = load i8, ptr %.pn.i.i, align 1
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE4findIS9_EENSI_14const_iteratorERKS9_.exit
  br i1 %i.as, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE14const_iteratorESL_.exit, !prof !1121

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30) #24
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIN2v88internal8compiler10turboshaft1VINS6_4NoneEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS4_13ZoneAllocatorIS9_EEE14const_iteratorESL_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  %i.av = phi i1 [ %i.ar, %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i ], [ true, %bb.b ], [ true, %._crit_edge.i.i.i ]
  %not. = xor i1 %i.av, true
  %i.aw = zext i1 %not. to i64
  ret i64 %i.aw
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE24AssembleOutputGraphStoreERKNS2_7StoreOpE(ptr noundef nonnull align 8 dereferenceable(2672) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp eq i16 %i.n, 3
  br i1 %i.o, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_15OptionalOpIndexE.exit

_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i4 = load i32, ptr %i.p, align 4 ; 2 uses
  %.not.i.i5 = icmp eq i32 %.sroa.0.0.copyload.i.i4, -1
  br i1 %.not.i.i5, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_15OptionalOpIndexE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit
  %i.q = lshr i32 %.sroa.0.0.copyload.i.i4, 4
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_15OptionalOpIndexE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.r ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.x = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.x, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.y, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_15OptionalOpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_15OptionalOpIndexE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit, %bb.d, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i
  %.sroa.03.0.i.i = phi i32 [ -1, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit ], [ %i.t, %bb.d ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ], [ -1, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i6 = load i32, ptr %i.z, align 4
  %i.aa = lshr i32 %.sroa.0.0.copyload.i.i6, 4
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %.not.i.i7 = icmp eq i32 %i.ad, -1
  br i1 %.not.i.i7, label %bb.g, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit14

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_15OptionalOpIndexE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ab ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i9 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.2.0.copyload.i.i.i10 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i9, align 8
  %i.ah = trunc nuw i8 %.sroa.2.0.copyload.i.i.i10 to i1
  br i1 %i.ah, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11: ; preds = %bb.g
  %.sroa.02.0.copyload.i.i.i12 = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i12, i64 16
  %.sroa.02.0.copyload.i10.i.i13 = load i32, ptr %i.ai, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit14

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_7OpIndexE.exit14: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_15OptionalOpIndexE.exit, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11
  %.sroa.014.0.i.i8 = phi i32 [ %i.ad, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25LateEscapeAnalysisReducerINS2_26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S7_S8_S9_SA_SC_SE_EEEEEEEEEEEEEEEEEEEEEEEEEEENS2_15VariableReducerISU_EEE3MapENS2_15OptionalOpIndexE.exit ], [ %.sroa.02.0.copyload.i10.i.i13, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.01.0.copyload.i = load i8, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.sroa.0.0.copyload.i = load i8, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.am = load i8, ptr %i.al, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.as = load i8, ptr %i.ar, align 4, !range !5, !noundef !6
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = zext i16 %i.av to i64
  %i.ax = shl nuw i64 %i.aw, 48
  %i.ay = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE11ReduceStoreENS2_7OpIndexENS2_15OptionalOpIndexEST_NS2_6LoadOp4KindENS2_20MemoryRepresentationENS1_16WriteBarrierKindEihbNS0_18IndirectPointerTagE(ptr noundef nonnull align 8 dereferenceable(2074) %0, i32 %.sroa.014.0.i.i, i32 %.sroa.03.0.i.i, i32 %.sroa.014.0.i.i8, i8 %.sroa.01.0.copyload.i, i8 %.sroa.0.0.copyload.i, i8 noundef zeroext %i.am, i32 noundef %i.ao, i8 noundef zeroext %i.aq, i1 noundef zeroext %i.at, i64 noundef %i.ax)
  ret i32 %i.ay
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_8RetainOpEJNS2_14ShadowyOpIndexEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8RetainOpEE3NewIJNS2_14ShadowyOpIndexEEEERS4_PNS2_5GraphEDpT_.exit, !prof !7

end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26BitcastWordPtrToHeapObjectENS2_1VINS2_12WordWithBitsILm64EEEEE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %.sroa.02.0.copyload.i.i90.i = load i8, ptr %i.q, align 1
  %i.r = icmp eq i8 %.sroa.02.0.copyload.i.i90.i, 4
  br i1 %i.r, label %.critedge.i, label %.thread156.i

.critedge.i:                                      ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload.i.i93.i = load i32, ptr %i.s, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13TaggedBitcastENS2_7OpIndexENS2_22RegisterRepresentationESL_NS2_15TaggedBitcastOp4KindE.exit

.thread149.thread170.i:                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.u = load i8, ptr %i.t, align 4
  switch i8 %i.u, label %.thread156.i [
    i8 0, label %bb.e
    i8 1, label %bb.e
    i8 11, label %bb.e
    i8 12, label %bb.e
    i8 14, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %.thread149.thread170.i, %.thread149.thread170.i, %.thread149.thread170.i, %.thread149.thread170.i, %.thread149.thread170.i, %.thread149.thread170.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ult i64 %i.w, 2147483648
  br i1 %i.x, label %bb.f, label %.thread156.i

bb.f:                                             ; preds = %bb.e
  %i.y = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i8 noundef zeroext 4, i64 %i.w)
  %i.z = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i32 %i.y)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13TaggedBitcastENS2_7OpIndexENS2_22RegisterRepresentationESL_NS2_15TaggedBitcastOp4KindE.exit

.thread156.i:                                     ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %.thread149.thread170.i
  %i.aa = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESM_NSK_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(2074) %i.d, i32 %1, i8 1, i8 4, i8 noundef zeroext 1)
  %i.ab = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_15TaggedBitcastOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(2074) %i.d, i32 %i.aa)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13TaggedBitcastENS2_7OpIndexENS2_22RegisterRepresentationESL_NS2_15TaggedBitcastOp4KindE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13TaggedBitcastENS2_7OpIndexENS2_22RegisterRepresentationESL_NS2_15TaggedBitcastOp4KindE.exit: ; preds = %.thread156.i, %.critedge.i, %bb.f, %bb.a
  %.sroa.07.0.i.i = phi i32 [ -1, %bb.a ], [ %.sroa.0.0.copyload.i.i93.i, %.critedge.i ], [ %i.ab, %.thread156.i ], [ %i.z, %bb.f ]
  ret i32 %.sroa.07.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerES3_S4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEEE15GetLimitAddressENS0_14AllocationTypeE(ptr noundef nonnull align 8 dereferenceable(2056) %0, i8 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @_ZN2v88internal17ExternalReference34new_space_allocation_limit_addressEPNS0_7IsolateE(ptr noundef nonnull %i.b) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i64 @_ZN2v88internal17ExternalReference34old_space_allocation_limit_addressEPNS0_7IsolateE(ptr noundef nonnull %i.b) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.05.0 = phi i64 [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 7, i64 %.sroa.05.0)
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.i)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2880 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2888 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p
  %.not.i.i = icmp ugt i64 %i.q, 4
  br i1 %.not.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.p
  %i.v = icmp ult i64 %i.u, 5
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(136) %i.k, i64 noundef 2)
  %.pre.i.i.i = load ptr, ptr %i.k, align 8       ; 2 uses
  %.pre.i.i = load ptr, ptr %i.l, align 8         ; 2 uses
  %.pre16.i.i = ptrtoint ptr %.pre.i.i.i to i64
  %.pre17.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi18.i.i = phi i64 [ %.pre17.i.i, %bb.i ], [ %i.o, %bb.h ]
  %.pre-phi.i.i = phi i64 [ %.pre16.i.i, %bb.i ], [ %i.p, %bb.h ]
  %i.w = phi ptr [ %.pre.i.i, %bb.i ], [ %i.m, %bb.h ] ; 2 uses
  %i.x = phi ptr [ %.pre.i.i.i, %bb.i ], [ %i.n, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = icmp ugt ptr %i.y, %i.w
  br i1 %i.z, label %.lr.ph.i.i.i.i.preheader.i.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.j
  %reass.sub.i = sub i64 %.pre-phi.i.i, %.pre-phi18.i.i
  %i.aa = and i64 %reass.sub.i, -4
  %i.ab = add i64 %i.aa, 8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %i.ab, i1 false)
  %.pre13.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %bb.j
  %.pre13.i.i = phi ptr [ %.pre13.pre.i.i, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.x, %bb.j ]
  store ptr %i.y, ptr %i.l, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i, %bb.g
  %i.ac = phi ptr [ %.pre13.i.i, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i ], [ %i.n, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %.not12.i.i = icmp eq i32 %i.ae, -1
  br i1 %.not12.i.i, label %bb.l, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE25WasmInstanceDataParameterEv.exit

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef 0, i8 4, ptr noundef null)
  %i.aj = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_11ParameterOpEEENS2_7OpIndexESO_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.ai)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i: ; preds = %bb.m, %bb.l
  %.sroa.03.0.i.i.i = phi i32 [ %i.aj, %bb.m ], [ -1, %bb.l ] ; 2 uses
  store i32 %.sroa.03.0.i.i.i, ptr %i.ad, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE25WasmInstanceDataParameterEv.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE25WasmInstanceDataParameterEv.exit: ; preds = %bb.k, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i
  %.sroa.011.0.copyload.i.i = phi i32 [ %i.ae, %bb.k ], [ %.sroa.03.0.i.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit, label %bb.n, !prof !7

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE25WasmInstanceDataParameterEv.exit
  %i.an = icmp eq i8 %1, 0
  %i.ao = select i1 %i.an, i32 64, i32 80
  %i.ap = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE10ReduceLoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih(ptr noundef nonnull align 8 dereferenceable(2074) %0, i32 %.sroa.011.0.copyload.i.i, i32 -1, i8 17, i8 7, i8 1, i32 noundef %i.ao, i8 noundef zeroext 0), !inline_history !380
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16ExternalConstantENS0_17ExternalReferenceE.exit: ; preds = %bb.n, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE25WasmInstanceDataParameterEv.exit, %bb.f, %bb.e
  %.sroa.010.0 = phi i32 [ -1, %bb.e ], [ %i.j, %bb.f ], [ %i.ap, %bb.n ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE25WasmInstanceDataParameterEv.exit ]
  ret i32 %.sroa.010.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer12ReservedSizeENS2_1VINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = zext i32 %1 to i64
  %i.h = add i64 %i.f, %i.g
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = icmp eq i8 %i.j, -87
  %..i = select i1 %i.k, ptr %i.i, ptr null       ; 3 uses
  %i.l = load i64, ptr %i.a, align 8              ; 3 uses
  %i.m = icmp ult i64 %i.l, 2
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load i64, ptr %i.n, align 8
  %.not.i.i.i = icmp ult i64 %i.o, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, %..i
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.p, 1
  %spec.select.i.i = select i1 %i.r, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.s, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = load i64, ptr %i.t, align 8
  %sext.i = shl i64 %i.u, 48
  %i.v = ashr exact i64 %sext.i, 48
  %i.w = ptrtoint ptr %..i to i64
  %i.x = xor i64 %i.w, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.y = zext i64 %i.x to i128
  %i.z = mul nuw nsw i128 %i.y, 8779197792823184629 ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = xor i128 %i.aa, %i.z
  %i.ac = trunc i128 %i.ab to i64
  %i.ad = xor i64 %i.v, %i.ac                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 57
  %i.af = trunc nuw nsw i64 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.ag, align 8 ; 2 uses
  %i.ah = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.ad, %bb.d ], [ %i.bb, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ba, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.l        ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aj, i32 0, i32 3, i32 1)
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.al = load <16 x i8>, ptr %i.ak, align 1      ; 2 uses
  %i.am = icmp eq <16 x i8> %i.ai, %i.al
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.an, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.ax, %bb.f ], [ %i.an, %bb.e ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.6.0.i.i, %i.ap
  %i.ar = and i64 %i.aq, %i.l                     ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = icmp eq ptr %i.at, %..i
  br i1 %i.au, label %.thread33.i.i, label %bb.f, !prof !9

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aw = add i16 %.sroa.017.047.i.i, -1
  %i.ax = and i16 %i.aw, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ay = icmp eq <16 x i8> %i.al, splat (i8 -128)
  %i.az = bitcast <16 x i1> %i.ay to i16
  %.not44.i.i = icmp eq i16 %i.az, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i, !prof !7

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ba = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !1640

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.av, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.as, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE10find_largeIS9_EENSK_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.bc = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.bd = extractvalue { ptr, ptr } %.pn.i, 1
  %i.be = icmp eq ptr %i.bc, null                 ; 2 uses
  %i.bf = icmp eq ptr %i.bc, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.be, %i.bf
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit
  %i.bg = load i8, ptr %i.bc, align 1
  %i.bh = icmp sgt i8 %i.bg, -1
  br i1 %i.bh, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit
  br i1 %i.bf, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit, !prof !7

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30) #24
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.be, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit
  %i.bi = load i8, ptr %i.bc, align 1
  %i.bj = icmp sgt i8 %i.bi, -1
  br i1 %i.bj, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.38) #24
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = zext i32 %i.bl to i64
  %i.bn = or disjoint i64 %i.bm, 4294967296
  br label %bb.n

bb.n:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit, %bb.m
  %.sroa.2.1 = phi i64 [ %i.bn, %bb.m ], [ 0, %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit ]
  ret i64 %.sroa.2.1
}

declare noundef ptr @_ZN2v88internal8compiler10turboshaft41CreateAllocateWasmSharedBuiltinDescriptorEPNS0_4ZoneEPNS0_7IsolateE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre7 = ptrtoint ptr %.pre to i64
  %.pre8 = sub i64 %.pre10.i.i.i.i, %.pre7
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi9 = phi i64 [ %.pre8, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.s = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi9 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi9, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 2, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 16
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  store i8 75, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %1, ptr %i.ai, align 4
  %i.aj = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSK_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %switch.load, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %2, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3036
  %.sroa.0.0.copyload.i = load i32, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8 ; 4 uses
  %i.ao = lshr i64 %i.i, 4
  %i.ap = and i64 %i.ao, 268435455                ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 216
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 208 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %.not.i.i = icmp ugt i64 %i.ax, %i.ap
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 200 ; 2 uses
  %i.az = lshr i64 %i.ap, 1
  %i.ba = add nuw nsw i64 %i.ap, 32
  %i.bb = add nuw nsw i64 %i.ba, %i.az
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 224
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.as, align 8
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.bi)
  %.pre.i.i = load ptr, ptr %i.as, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, %bb.c
  %i.bj = phi ptr [ %.pre.i.i, %bb.c ], [ %i.at, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i ]
  %i.bk = trunc i64 %i.i to i32
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ap
  store i32 %.sroa.0.0.copyload.i, ptr %i.bl, align 4
  ret i32 %i.bk
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE5countIS9_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE14const_iteratorESN_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %1, align 8
  %i.h = icmp eq ptr %i.f, %i.g
  %i.i = select i1 %i.h, ptr @_ZN4absl18container_internal11kSooControlE, ptr null
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %sext.i.i = shl i64 %i.l, 48
  %i.m = ashr exact i64 %sext.i.i, 48
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw nsw i128 %i.q, 8779197792823184629 ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = xor i128 %i.s, %i.r
  %i.u = trunc i128 %i.t to i64
  %i.v = xor i64 %i.m, %i.u                       ; 2 uses
  %i.w = lshr i64 %i.v, 57
  %i.x = trunc nuw nsw i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.y, align 8 ; 2 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i.i = phi i64 [ %i.v, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i7.i.i, %i.a    ; 4 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ab, i32 0, i32 3, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.ad = load <16 x i8>, ptr %i.ac, align 1      ; 2 uses
  %i.ae = icmp eq <16 x i8> %i.aa, %i.ad
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %.not46.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.af, %bb.e ] ; 3 uses
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = add i64 %.sroa.6.0.i.i.i, %i.ah
  %i.aj = and i64 %i.ai, %i.a                     ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.al, %i.n
  br i1 %i.am, label %.thread33.i.i.i, label %bb.f, !prof !9

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_14const_iteratorERKT_.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = add i16 %.sroa.017.047.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.047.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ad, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not44.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE14const_iteratorESN_.exit, !prof !7

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.as = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !1641

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_14const_iteratorERKT_.exit: ; preds = %.thread33.i.i.i, %bb.c
  %.pn.i.i = phi ptr [ %i.i, %bb.c ], [ %i.an, %.thread33.i.i.i ] ; 3 uses
  %i.au = icmp eq ptr %.pn.i.i, null              ; 2 uses
  %i.av = icmp eq ptr %.pn.i.i, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.au, %i.av
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_14const_iteratorERKT_.exit
  %i.aw = load i8, ptr %.pn.i.i, align 1
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE4findIS9_EENSK_14const_iteratorERKT_.exit
  br i1 %i.av, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE14const_iteratorESN_.exit, !prof !1121

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30) #24
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE14const_iteratorESN_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  %i.ay = phi i1 [ %i.au, %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i ], [ true, %bb.b ], [ true, %._crit_edge.i.i.i ]
  %not. = xor i1 %i.ay, true
  %i.az = zext i1 %not. to i64
  ret i64 %i.az
}

declare ptr @_ZN2v88internal8compiler10turboshaft17BuiltinCodeHandleENS0_7BuiltinEPNS0_7IsolateE(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN2v88internal17ExternalReference34new_space_allocation_limit_addressEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare i64 @_ZN2v88internal17ExternalReference34old_space_allocation_limit_addressEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler10turboshaft31CreateAllocateBuiltinDescriptorEPNS0_4ZoneEPNS0_7IsolateE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13BranchAndBindENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESP_NS0_10BranchHintESP_(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -2912
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6BranchENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESP_NS0_10BranchHintE.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %5, %2
  %i.g = select i1 %i.f, ptr %3, ptr %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 -2880
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_25MemoryOptimizationReducerINS2_24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerES3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE12ReduceBranchENS2_7OpIndexEPNS2_5BlockESV_NS0_10BranchHintE(ptr noundef nonnull align 8 dereferenceable(2074) %i.k, i32 %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4), !inline_history !1639 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8
  %.pre29 = load ptr, ptr %i.h, align 8
  %i.m = icmp eq ptr %i.j, %.pre
  %i.n = select i1 %i.m, i32 0, i32 2
  %i.o = icmp ne ptr %i.i, %.pre29
  %i.p = zext i1 %i.o to i32
  %i.q = or disjoint i32 %i.n, %i.p
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6BranchENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESP_NS0_10BranchHintE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6BranchENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESP_NS0_10BranchHintE.exit: ; preds = %bb.a, %bb.b
  %.not = phi i32 [ 0, %bb.a ], [ %i.q, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.s = load i8, ptr %i.r, align 8
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6BranchENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESP_NS0_10BranchHintE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(3072) %i.b, ptr noundef nonnull %i.v)
  %i.w = getelementptr inbounds i8, ptr %0, i64 -2880
  %i.x = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull %5, i1 noundef zeroext false) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6BranchENS2_1VINS2_12WordWithBitsILm32EEEEEPNS2_5BlockESP_NS0_10BranchHintE.exit
  %i.y = getelementptr inbounds i8, ptr %0, i64 -2888
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !6, !align !8 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.a, align 8
  %.not28 = icmp eq ptr %i.ag, null
  br i1 %.not28, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = load ptr, ptr %i.ab, align 8
  %i.ar = load ptr, ptr %i.ad, align 8
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = lshr exact i64 %i.au, 3
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp ult ptr %i.ay, %i.ba
  br i1 %i.bb, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.ad, align 8
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = add nsw i64 %i.bg, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef %i.bh)
  %.pre.i = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.g, %bb.h
  %i.bi = phi ptr [ %i.ay, %bb.g ], [ %.pre.i, %bb.h ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.ab, align 8
  store ptr %5, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.i, label %.preheader.i, !prof !7

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %5, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  br label %bb.m

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.bk, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = sub nsw i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = sub nsw i32 %i.bt, %i.bw
  %i.by = icmp eq i32 %i.bu, %i.bx
  br i1 %i.by, label %bb.j, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.j, %._crit_edge.i
end_hunk_2
