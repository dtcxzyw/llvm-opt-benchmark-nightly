inline.NumInlined: 461
inline.NumDeleted: 300
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache10TrackingIdENS6_12TrackingDataEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKSt21piecewise_construct_tSt5tupleIJRKS7_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false)
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.cm = and i64 %i.cl, -256
  %8 = and i64 %i.cl, 255
  %9 = add i64 %i.cm, 256
  %i.cn = or disjoint i64 %9, %8
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !79
  br label %bb.o

end_hunk_0
