inline.NumInlined: 1653
inline.NumDeleted: 824
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox6common12SubfieldKindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !252
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.ck = and i64 %i.cj, -256
  %7 = and i64 %i.cj, 255
  %8 = add i64 %i.ck, 256
  %i.cl = or disjoint i64 %8, %7
  store i64 %i.cl, ptr %i.a, align 8, !tbaa !10
  br label %bb.o

end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox6common12SubfieldKindEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_:bb.a
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !259
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.do = and i64 %i.dn, -256
  %7 = and i64 %i.dn, 255
  %8 = add i64 %i.do, 256
  %i.dp = or disjoint i64 %8, %7
  store i64 %i.dp, ptr %i.a, align 8, !tbaa !10
  br label %bb.o

end_hunk_1
