inline.NumInlined: 17609
inline.NumDeleted: 4561
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !1225 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %6 = and i64 %i.cb, 255
  %7 = add i64 %i.cc, 256
  %i.cd = or disjoint i64 %7, %6
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !1225
  br label %bb.p

end_hunk_0
