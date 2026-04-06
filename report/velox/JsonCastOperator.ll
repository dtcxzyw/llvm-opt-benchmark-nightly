begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !2478 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %6 = and i64 %i.cb, 255
  %7 = add i64 %i.cc, 256
  %i.cd = or disjoint i64 %7, %6
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !2478
  br label %bb.p

end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESI_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_:bb.a
_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRSA_EESJ_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEDpOT_EUlvE_PFvPSE_SR_ST_EJSY_RSR_RST_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESI_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEivvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSF_RSK_RSM_ESN_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !2478 ; 2 uses
  %i.ae = and i64 %i.ad, -256
  %8 = and i64 %i.ad, 255
  %9 = add i64 %i.ae, 256
  %i.af = or disjoint i64 %9, %8
  store i64 %i.af, ptr %i.a, align 8, !tbaa !2478
  ret void
}
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2478 ; 2 uses
  %i.c = and i64 %i.b, -256
  %5 = and i64 %i.b, 255
  %6 = add i64 %i.c, -256                         ; 2 uses
  %i.d = or disjoint i64 %6, %5
  store i64 %i.d, ptr %i.a, align 8, !tbaa !2478
  %i.e = and i64 %2, 255                          ; 2 uses
  %i.f = icmp samesign ult i64 %i.e, 16
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE:bb.a
  br i1 %i.l, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %6, 0
  br i1 %i.m, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_3
