inline.NumInlined: 439
inline.NumDeleted: 297
begin_hunk_0_@_ZN6hermes3CSE13runOnFunctionEPNS_8FunctionE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.bp, %.lr.ph.i.i.i
  %.0118.i.i.i = phi i1 [ false, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.bp ] ; 3 uses
  %i.ar = phi i32 [ %i.af, %.lr.ph.i.i.i ], [ %.pr.i.i.i, %bb.bp ] ; 2 uses
  %.val11.i.i.i = load ptr, ptr %3, align 8, !tbaa !7
  %i.as = zext i32 %i.ar to i64
end_hunk_0
begin_hunk_1_@_ZN6hermes3CSE13runOnFunctionEPNS_8FunctionE:bb.a
_ZN12_GLOBAL__N_110CSEContext11processNodeEPNS_9StackNodeE.exit.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i.i, %bb.d
  %.0.lcssa3638.i.i.i.i = phi i1 [ %.2.i.i.i.i, %bb.e ], [ %.2.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.gu = or i1 %.0118.i.i.i, %.0.lcssa3638.i.i.i.i
  store i8 1, ptr %i.aw, align 8, !tbaa !43
  br label %thread-pre-split.i.i.i

end_hunk_1
begin_hunk_2_@_ZN6hermes3CSE13runOnFunctionEPNS_8FunctionE:bb.a
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZN6hermes10DomTreeDFS7VisitorIN12_GLOBAL__N_110CSEContextENS2_9StackNodeEE8freeNodeEPS4_.exit.i.i.i, %_ZN12_GLOBAL__N_110CSEContext11processNodeEPNS_9StackNodeE.exit.i.i.i
  %.1.ph.i.i.i = phi i1 [ %.0118.i.i.i, %_ZN6hermes10DomTreeDFS7VisitorIN12_GLOBAL__N_110CSEContextENS2_9StackNodeEE8freeNodeEPS4_.exit.i.i.i ], [ %i.gu, %_ZN12_GLOBAL__N_110CSEContext11processNodeEPNS_9StackNodeE.exit.i.i.i ]
  %.pr.pr.i.i.i = load i32, ptr %i.u, align 8, !tbaa !10
  br label %bb.bp

bb.bp:                                            ; preds = %thread-pre-split.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit20.i.i.i
  %.pr.i.i.i = phi i32 [ %.pr.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.hl, %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit20.i.i.i ] ; 2 uses
  %.1.i.i.i = phi i1 [ %.1.ph.i.i.i, %thread-pre-split.i.i.i ], [ %.0118.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit20.i.i.i ] ; 2 uses
  %.not.i15.i.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %.not.i15.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !122

._crit_edge.i.i.i:                                ; preds = %bb.bp, %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit.i.i.i
  %.0.lcssa.i.i.i = phi i1 [ false, %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit.i.i.i ], [ %.1.i.i.i, %bb.bp ]
  %i.ld = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.t
  br i1 %i.le, label %_ZN12_GLOBAL__N_110CSEContext3runEv.exit, label %bb.bq
end_hunk_2
