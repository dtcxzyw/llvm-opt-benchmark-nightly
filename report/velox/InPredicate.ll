begin_hunk_0_@_ZN8facebook5velox9functions12_GLOBAL__N_120VectorSetInPredicate6createERKSt10shared_ptrINS0_10BaseVectorEEii:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9functions12_GLOBAL__N_120VectorSetInPredicate11VectorValueEvNS8_15VectorValueHashENS8_18VectorValueEqualToEvEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS9_EEEESt4pairImmEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.t, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9functions12_GLOBAL__N_120VectorSetInPredicate11VectorValueEE6setTagEmm.exit.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !274, !noalias !275 ; 2 uses
  %i.dc = and i64 %.val.i.i.i.i.i.i.i.i.i, -256
  %5 = add i64 %i.dc, 256
  %6 = and i64 %.val.i.i.i.i.i.i.i.i.i, 255
  %i.dd = or disjoint i64 %5, %6
  store i64 %i.dd, ptr %i.a, align 8, !tbaa !274, !noalias !275
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIN8facebook5velox9functions12_GLOBAL__N_120VectorSetInPredicate11VectorValueEvNS8_15VectorValueHashENS8_18VectorValueEqualToEvEEE6insertEOS9_.exit

end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE19tryEmplaceValueImplIjJjEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbES7_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE13insertAtBlankIJjEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !274 ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %6 = add i64 %i.cb, 256
  %7 = and i64 %i.ca, 255
  %i.cc = or disjoint i64 %6, %7
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !274
  br label %bb.p

end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_:bb.a
_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSA_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEDpOT_EUlvE_PFvPSE_SM_SO_EJST_RSM_RSO_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSF_RSK_RSM_ESN_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !274 ; 2 uses
  %i.ab = and i64 %i.aa, -256
  %6 = add i64 %i.ab, 256
  %7 = and i64 %i.aa, 255
  %i.ac = or disjoint i64 %6, %7
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !274
  ret void
}
end_hunk_2
