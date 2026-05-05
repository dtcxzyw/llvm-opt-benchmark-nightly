inline.NumInlined: 816
inline.NumDeleted: 330
begin_hunk_0_@_ZN6hermes2vm10parseFloatEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
bb.ce:                                            ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit138, %_ZNK6hermes2vm10StringView3endEv.exit131
  %.sroa.7.0 = phi ptr [ %.sroa.3.0.i103206, %_ZNK6hermes2vm10StringView3endEv.exit131 ], [ %.sroa.7.1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit138 ] ; 3 uses
  %.sroa.0140.0 = phi ptr [ %.sroa.0.0.i104208, %_ZNK6hermes2vm10StringView3endEv.exit131 ], [ %.sroa.0140.0.be, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit138 ] ; 4 uses
  %.072 = phi i32 [ 0, %_ZNK6hermes2vm10StringView3endEv.exit131 ], [ %i.ib, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit138 ] ; 6 uses
  %.not.i.i132 = icmp eq ptr %.sroa.0140.0, null  ; 3 uses
  br i1 %.not.i.i132, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit134, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit134.thread

end_hunk_0
begin_hunk_1_@_ZN6hermes2vm10parseFloatEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br label %bb.cg

switch.early.test224._crit_edge:                  ; preds = %switch.early.test224
  %.072.lcssa259 = phi i32 [ %.072, %switch.early.test224 ]
  %.072.lcssa258 = phi i32 [ %.072, %switch.early.test224 ] ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %split.a, %switch.early.test224._crit_edge
  %.072.lcssa = phi i32 [ %.072.lcssa259, %switch.early.test224._crit_edge ], [ %.072.lcssa257, %split.a ] ; 2 uses
  %i.id = icmp eq i32 %.072.lcssa, 0
  %.pre231 = load ptr, ptr %3, align 8, !tbaa !48 ; 2 uses
  br i1 %i.id, label %bb.ck, label %bb.ch
end_hunk_1
