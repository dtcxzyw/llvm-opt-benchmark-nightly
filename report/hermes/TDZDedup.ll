inline.NumInlined: 693
inline.NumDeleted: 401
begin_hunk_0_@_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.ay, %.lr.ph.i.i.i
  %.038.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.ay ] ; 3 uses
  %i.aq = phi i32 [ %i.ah, %.lr.ph.i.i.i ], [ %.pr.i.i.i, %bb.ay ] ; 2 uses
  %.val11.i.i.i = load ptr, ptr %3, align 8, !tbaa !7
  %i.ar = zext i32 %i.aq to i64
end_hunk_0
begin_hunk_1_@_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE:bb.a
_ZN6hermes12_GLOBAL__N_115TDZDedupContext11processNodeEPNS0_9StackNodeE.exit.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i.i, %bb.d
  %.0.lcssa5658.i.i.i.i = phi i1 [ %.1.i.i.i.i, %bb.e ], [ %.1.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %6 = trunc nuw i8 %.038.i.i.i to i1
  %i.ku = or i1 %.0.lcssa5658.i.i.i.i, %6
  %7 = zext i1 %i.ku to i8
  store i8 1, ptr %i.av, align 8, !tbaa !62
  br label %thread-pre-split.i.i.i

end_hunk_1
begin_hunk_2_@_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE:bb.a
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZN6hermes10DomTreeDFS9StackNodeINS_12_GLOBAL__N_115TDZDedupContextEE9nextChildEv.exit.thread.i.i.i, %_ZN6hermes12_GLOBAL__N_115TDZDedupContext11processNodeEPNS0_9StackNodeE.exit.i.i.i
  %.1.ph.i.i.i = phi i8 [ %.038.i.i.i, %_ZN6hermes10DomTreeDFS9StackNodeINS_12_GLOBAL__N_115TDZDedupContextEE9nextChildEv.exit.thread.i.i.i ], [ %7, %_ZN6hermes12_GLOBAL__N_115TDZDedupContext11processNodeEPNS0_9StackNodeE.exit.i.i.i ]
  %.pr.pr.i.i.i = load i32, ptr %i.w, align 8, !tbaa !10
  br label %bb.ay

bb.ay:                                            ; preds = %thread-pre-split.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit20.i.i.i
  %.pr.i.i.i = phi i32 [ %.pr.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ll, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit20.i.i.i ] ; 2 uses
  %.1.i.i.i = phi i8 [ %.1.ph.i.i.i, %thread-pre-split.i.i.i ], [ %.038.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit20.i.i.i ] ; 2 uses
  %.not.i15.i.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %.not.i15.i.i.i, label %._crit_edge.loopexit.i.i.i, label %bb.c, !llvm.loop !126

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.ay
  %8 = trunc nuw i8 %.1.i.i.i to i1
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit.i.i.i
  %.0.lcssa.i.i.i = phi i1 [ false, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit.i.i.i ], [ %8, %._crit_edge.loopexit.i.i.i ]
  %i.lu = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.v
  br i1 %i.lv, label %_ZN6hermes12_GLOBAL__N_115TDZDedupContext3runEv.exit, label %bb.az
end_hunk_2
