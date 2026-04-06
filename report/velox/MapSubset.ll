begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE19tryEmplaceValueImplIbJRKbEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIbEEEEbES9_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJRKbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit, %bb.o
  %i.by = load i64, ptr %i.a, align 8, !tbaa !442 ; 2 uses
  %i.bz = and i64 %i.by, -256
  %6 = and i64 %i.by, 255
  %7 = add i64 %i.bz, 256
  %i.ca = or disjoint i64 %7, %6
  store i64 %i.ca, ptr %i.a, align 8, !tbaa !442
  br label %bb.p

end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !442 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %6 = and i64 %i.cb, 255
  %7 = add i64 %i.cc, 256
  %i.cd = or disjoint i64 %7, %6
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !442
  br label %bb.p

end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !442  ; 2 uses
  %i.c = and i64 %i.b, -256
  %5 = and i64 %i.b, 255
  %6 = add i64 %i.c, -256                         ; 2 uses
  %i.d = or disjoint i64 %6, %5
  store i64 %i.d, ptr %i.a, align 8, !tbaa !442
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
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE19tryEmplaceValueImplIaJRKaEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIaEEEEbES9_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJRKaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit, %bb.o
  %i.by = load i64, ptr %i.a, align 8, !tbaa !442 ; 2 uses
  %i.bz = and i64 %i.by, -256
  %6 = and i64 %i.by, 255
  %7 = add i64 %i.bz, 256
  %i.ca = or disjoint i64 %7, %6
  store i64 %i.ca, ptr %i.a, align 8, !tbaa !442
  br label %bb.p

end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE19tryEmplaceValueImplIsJRKsEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIsEEEEbES9_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJRKsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !442 ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %6 = and i64 %i.ca, 255
  %7 = add i64 %i.cb, 256
  %i.cc = or disjoint i64 %7, %6
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !442
  br label %bb.p

end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE19tryEmplaceValueImplIiJRKiEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIiEEEEbES9_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJRKiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !442 ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %6 = and i64 %i.ca, 255
  %7 = add i64 %i.cb, 256
  %i.cc = or disjoint i64 %7, %6
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !442
  br label %bb.p

end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE19tryEmplaceValueImplIlJRKlEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIlEEEEbES9_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJRKlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !442 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %6 = and i64 %i.cb, 255
  %7 = add i64 %i.cc, 256
  %i.cd = or disjoint i64 %7, %6
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !442
  br label %bb.p

end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJRKfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESH_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJRKfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit, %bb.o
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !442 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %6 = and i64 %i.cc, 255
  %7 = add i64 %i.cd, 256
  %i.ce = or disjoint i64 %7, %6
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !442
  br label %bb.p

end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJRKdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESH_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJRKdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit, %bb.o
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !442 ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %6 = and i64 %i.cd, 255
  %7 = add i64 %i.ce, 256
  %i.cf = or disjoint i64 %7, %6
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !442
  br label %bb.p

end_hunk_9
begin_hunk_10_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit, %bb.n
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !442 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %6 = and i64 %i.cb, 255
  %7 = add i64 %i.cc, 256
  %i.cd = or disjoint i64 %7, %6
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !442
  br label %.loopexit

end_hunk_10
begin_hunk_11_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, %bb.r
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !442 ; 2 uses
  %i.eb = and i64 %i.ea, -256
  %6 = and i64 %i.ea, 255
  %7 = add i64 %i.eb, 256
  %i.ec = or disjoint i64 %7, %6
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !442
  br label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread

end_hunk_11
begin_hunk_12_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESA_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, %bb.r
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !442 ; 2 uses
  %i.eb = and i64 %i.ea, -256
  %6 = and i64 %i.ea, 255
  %7 = add i64 %i.eb, 256
  %i.ec = or disjoint i64 %7, %6
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !442
  br label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread

end_hunk_12
begin_hunk_13_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapSubsetFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !442 ; 2 uses
  %i.ec = and i64 %i.eb, -256
  %6 = and i64 %i.eb, 255
  %7 = add i64 %i.ec, 256
  %i.ed = or disjoint i64 %7, %6
  store i64 %i.ed, ptr %i.a, align 8, !tbaa !442
  br label %bb.v

end_hunk_13
