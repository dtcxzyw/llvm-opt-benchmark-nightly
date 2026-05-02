inline.NumInlined: 398
inline.NumDeleted: 258
begin_hunk_0_@_ZN6hermes11SimplifyCFG13runOnFunctionEPNS_8FunctionE:bb.a

.preheader138.i:                                  ; preds = %.preheader138.loopexit.i, %.backedge
  %.sroa.0112.0159.i = phi ptr [ %.sroa.0116.0154.i, %.backedge ], [ %.sroa.0112.0159.pre.i, %.preheader138.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i8 [ 0, %.backedge ], [ %.5.i, %.preheader138.loopexit.i ] ; 2 uses
  %.not132160.i = icmp eq ptr %.sroa.0112.0159.i, %i.d
  br i1 %.not132160.i, label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, label %.lr.ph164.i

.lr.ph.i:                                         ; preds = %.backedge, %.thread121.i
  %.sroa.0116.0157.i = phi ptr [ %.sroa.0116.0.i, %.thread121.i ], [ %.sroa.0116.0154.i, %.backedge ] ; 3 uses
  %.0156.i = phi i8 [ %.5.i, %.thread121.i ], [ 0, %.backedge ] ; 4 uses
  %i.z = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0116.0157.i) #9 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !61
end_hunk_0
begin_hunk_1_@_ZN6hermes11SimplifyCFG13runOnFunctionEPNS_8FunctionE:bb.a

bb.j:                                             ; preds = %._crit_edge.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %9 = trunc nuw i8 %.0156.i to i1
  %i.bn = or i1 %i.am, %9
  %10 = zext i1 %i.bn to i8
  br label %.thread121.i

bb.k:                                             ; preds = %.lr.ph.i
end_hunk_1
begin_hunk_2_@_ZN6hermes11SimplifyCFG13runOnFunctionEPNS_8FunctionE:bb.a
  br label %.thread121.i

.thread121.i:                                     ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %.5.i = phi i8 [ %10, %bb.j ], [ %.0156.i, %bb.k ], [ 1, %bb.m ], [ 1, %bb.p ], [ %.0156.i, %bb.o ], [ %.0156.i, %bb.n ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0116.0157.i, i64 8
  %.sroa.0116.0.i = load ptr, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %.not131.i = icmp eq ptr %.sroa.0116.0.i, %i.d
end_hunk_2
begin_hunk_3_@_ZN6hermes11SimplifyCFG13runOnFunctionEPNS_8FunctionE:bb.a

.lr.ph164.i:                                      ; preds = %.preheader138.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
  %.sroa.0112.0162.i = phi ptr [ %.sroa.0112.0.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ], [ %.sroa.0112.0159.i, %.preheader138.i ] ; 14 uses
  %.6161.i = phi i8 [ %.9.ph.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ], [ %.0.lcssa.i, %.preheader138.i ] ; 10 uses
  %i.ch = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0112.0162.i) #9 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !61
end_hunk_3
begin_hunk_4_@_ZN6hermes11SimplifyCFG13runOnFunctionEPNS_8FunctionE:bb.a
  br label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread

_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i: ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, %bb.ba, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i, %bb.u, %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i, %bb.r, %bb.r, %bb.r, %bb.q, %.lr.ph164.i
  %.9.ph.i = phi i8 [ %.6161.i, %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i ], [ %.6161.i, %.lr.ph164.i ], [ %.6161.i, %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i ], [ 1, %bb.ba ], [ %.6161.i, %bb.r ], [ %.6161.i, %bb.q ], [ %.6161.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i ], [ %.6161.i, %bb.u ], [ %.6161.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ], [ %.6161.i, %bb.r ], [ %.6161.i, %bb.r ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 8
  %.sroa.0112.0.i = load ptr, ptr %i.lz, align 8, !tbaa !60 ; 2 uses
  %.not132.i = icmp eq ptr %.sroa.0112.0.i, %i.d
end_hunk_4
begin_hunk_5_@_ZN6hermes11SimplifyCFG13runOnFunctionEPNS_8FunctionE:bb.a
  br label %.backedge.backedge

_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit: ; preds = %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, %.preheader138.i
  %.10.i = phi i8 [ %.0.lcssa.i, %.preheader138.i ], [ %.9.ph.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ]
  %11 = trunc nuw i8 %.10.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br i1 %11, label %.backedge.backedge, label %bb.be

.backedge.backedge:                               ; preds = %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread, %_ZL26removeUnreachedBasicBlocksPN6hermes8FunctionE.exit
  br label %.backedge, !llvm.loop !121
end_hunk_5
