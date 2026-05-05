inline.NumInlined: 1968
inline.NumDeleted: 802
begin_hunk_0_@_ZN2v88internal8compiler15LoadElimination28ReduceTransitionElementsKindEPNS1_4NodeE:bb.a
  br i1 %.not26.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr null, ptr noundef %i.bf) ; 3 uses
  %i.bl = load ptr, ptr %i.bi, align 8
  %.not27.i = icmp eq ptr %i.bl, %i.bk
  br i1 %.not27.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.k
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler15LoadElimination38ReduceTransitionElementsKindOrCheckMapEPNS1_4NodeE:bb.a
  br i1 %.not26.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread108
  %i.dm = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(24) %10, ptr null, ptr noundef %i.dh) ; 3 uses
  %i.dn = load ptr, ptr %i.dk, align 8
  %.not27.i = icmp eq ptr %i.dn, %i.dm
  br i1 %.not27.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.s
end_hunk_1
begin_hunk_2_@_ZNK2v88internal8compiler15LoadElimination16ComputeLoopStateEPNS1_4NodeEPKNS2_13AbstractStateE:bb.a
  br i1 %.not26.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vj = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.vi, ptr noundef nonnull readonly align 8 dereferenceable(24) %22, ptr null, ptr noundef %i.ve) ; 3 uses
  %i.vk = load ptr, ptr %i.vh, align 8
  %.not27.i = icmp eq ptr %i.vk, %i.vj
  br i1 %.not27.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.cu
end_hunk_2
