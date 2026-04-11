inline.NumInlined: 698
inline.NumDeleted: 419
begin_hunk_0_@_ZN6hermes6parser11JSONFactory14getHiddenClassERKSt4pairImPKPNS0_10JSONStringEE:bb.a
  br label %_ZNK6hermes6parser11JSONFactory18LessHiddenClassKeyclERKSt4pairImPKPNS0_10JSONStringEESA_.exit.thread.i.i.i

_ZNK6hermes6parser11JSONFactory18LessHiddenClassKeyclERKSt4pairImPKPNS0_10JSONStringEESA_.exit.thread.i.i.i: ; preds = %bb.d, %_ZNK6hermes6parser11JSONFactory18LessHiddenClassKeyclERKSt4pairImPKPNS0_10JSONStringEESA_.exit.thread11.i.i.i, %_ZNK6hermes6parser11JSONFactory18LessHiddenClassKeyclERKSt4pairImPKPNS0_10JSONStringEESA_.exit.i.i.i, %bb.c
  %.sink.i.i.i = phi i64 [ 24, %_ZNK6hermes6parser11JSONFactory18LessHiddenClassKeyclERKSt4pairImPKPNS0_10JSONStringEESA_.exit.thread11.i.i.i ], [ 16, %_ZNK6hermes6parser11JSONFactory18LessHiddenClassKeyclERKSt4pairImPKPNS0_10JSONStringEESA_.exit.i.i.i ], [ 16, %bb.c ], [ 16, %bb.d ]
  %.19.i.i.i = phi ptr [ %.0815.i.i.i, %_ZNK6hermes6parser11JSONFactory18LessHiddenClassKeyclERKSt4pairImPKPNS0_10JSONStringEESA_.exit.thread11.i.i.i ], [ %.016.i.i.i, %_ZNK6hermes6parser11JSONFactory18LessHiddenClassKeyclERKSt4pairImPKPNS0_10JSONStringEESA_.exit.i.i.i ], [ %.016.i.i.i, %bb.c ], [ %.016.i.i.i, %bb.d ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !123 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeISt4pairImPKPN6hermes6parser10JSONStringEES0_IKS7_PNS2_15JSONHiddenClassEESt10_Select1stISB_ENS2_11JSONFactory18LessHiddenClassKeyESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS8_.exit.i.i, label %bb.b, !llvm.loop !124
end_hunk_0
