inline.NumInlined: 10428
inline.NumDeleted: 4080
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox6common10FilterKindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1701
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.ck = and i64 %i.cj, -256
  %7 = add i64 %i.ck, 256
  %8 = and i64 %i.cj, 255
  %i.cl = or disjoint i64 %7, %8
  store i64 %i.cl, ptr %i.a, align 8, !tbaa !10
  br label %bb.o

end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox6common10FilterKindEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_:bb.a
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !1708
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.do = and i64 %i.dn, -256
  %7 = add i64 %i.do, 256
  %8 = and i64 %i.dn, 255
  %i.dp = or disjoint i64 %7, %8
  store i64 %i.dp, ptr %i.a, align 8, !tbaa !10
  br label %bb.o

end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRiDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESE_ImmEDpOT_:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !10   ; 2 uses
  %i.w = and i64 %i.v, -256
  %7 = add i64 %i.w, 256
  %8 = and i64 %i.v, 255
  %i.x = or disjoint i64 %7, %8
  store i64 %i.x, ptr %i.u, align 8, !tbaa !10
  ret void
}
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15directBuildFromIRKSD_EEvOT_:bb.a
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !9
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !10  ; 2 uses
  %i.bx = and i64 %i.bw, -256
  %3 = add i64 %i.bx, 256
  %4 = and i64 %i.bw, 255
  %i.by = or disjoint i64 %3, %4                  ; 2 uses
  store i64 %i.by, ptr %i.d, align 8, !tbaa !10
  %i.bz = add i64 %.03356, 1
  %.not51 = icmp eq i32 %.sroa.0.1, 0
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_:bb.a
  store i32 %i.as, ptr %i.bz, align 4, !tbaa !3
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %4 = add i64 %i.cc, 256
  %5 = and i64 %i.cb, 255
  %i.cd = or disjoint i64 %4, %5
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !10
  %.not127 = icmp eq i32 %.sroa.086.2, 0
  br i1 %.not127, label %.loopexit, label %.lr.ph150, !llvm.loop !2119
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_:bb.a
  store i32 %i.ck, ptr %i.hu, align 4, !tbaa !3
  %i.hw = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.hx = and i64 %i.hw, -256
  %6 = add i64 %i.hx, 256
  %7 = and i64 %i.hw, 255
  %i.hy = or disjoint i64 %6, %7
  store i64 %i.hy, ptr %i.a, align 8, !tbaa !10
  %.not126 = icmp eq i32 %.sroa.086.3, 0
  br i1 %.not126, label %.loopexit, label %.lr.ph146, !llvm.loop !2120
end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE9itemCountEv.exit
  store i8 %i.bx, ptr %i.bt, align 1, !tbaa !9
  %i.by = load i64, ptr %i.c, align 8, !tbaa !10  ; 2 uses
  %i.bz = and i64 %i.by, -256
  %2 = add i64 %i.bz, 256
  %3 = and i64 %i.by, 255
  %i.ca = or disjoint i64 %2, %3                  ; 2 uses
  store i64 %i.ca, ptr %i.c, align 8, !tbaa !10
  %i.cb = add i64 %.04590, 1
  %.not79 = icmp eq i32 %.sroa.064.1, 0
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE15rehashBuildFromIRKS5_EEvOT_:bb.a
bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %3 = add i64 %i.cb, 256
  %4 = and i64 %i.ca, 255
  %i.cc = or disjoint i64 %3, %4                  ; 3 uses
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !10
  %.not113 = icmp eq i32 %.sroa.073.2, 0
  br i1 %.not113, label %.loopexit, label %bb.f, !llvm.loop !2151
end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE15rehashBuildFromIRKS5_EEvOT_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE13insertAtBlankIJRKjEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit68: ; preds = %bb.t, %bb.u
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.eg = and i64 %i.ef, -256
  %5 = add i64 %i.eg, 256
  %6 = and i64 %i.ef, 255
  %i.eh = or disjoint i64 %5, %6                  ; 3 uses
  store i64 %i.eh, ptr %i.a, align 8, !tbaa !10
  %.not112 = icmp eq i32 %.sroa.073.3, 0
  br i1 %.not112, label %.loopexit, label %bb.m
end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit
  store i8 %i.cc, ptr %i.by, align 1, !tbaa !9
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !10  ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %2 = add i64 %i.ce, 256
  %3 = and i64 %i.cd, 255
  %i.cf = or disjoint i64 %2, %3                  ; 2 uses
  store i64 %i.cf, ptr %i.c, align 8, !tbaa !10
  %i.cg = add i64 %.04586, 1
  %.not77 = icmp eq i32 %.sroa.062.1, 0
end_hunk_9
begin_hunk_10_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15rehashBuildFromIRKS5_EEvOT_:bb.a
bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.by = and i64 %i.bx, -256
  %3 = add i64 %i.by, 256
  %4 = and i64 %i.bx, 255
  %i.bz = or disjoint i64 %3, %4                  ; 3 uses
  store i64 %i.bz, ptr %i.a, align 8, !tbaa !10
  %.not113 = icmp eq i32 %.sroa.073.2, 0
  br i1 %.not113, label %.loopexit, label %bb.f, !llvm.loop !2205
end_hunk_10
begin_hunk_11_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15rehashBuildFromIRKS5_EEvOT_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE13insertAtBlankIJRKnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkInEEEESt4pairImmEDpOT_.exit68: ; preds = %bb.t, %bb.u
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.ec = and i64 %i.eb, -256
  %5 = add i64 %i.ec, 256
  %6 = and i64 %i.eb, 255
  %i.ed = or disjoint i64 %5, %6                  ; 3 uses
  store i64 %i.ed, ptr %i.a, align 8, !tbaa !10
  %.not112 = icmp eq i32 %.sroa.073.3, 0
  br i1 %.not112, label %.loopexit, label %bb.m
end_hunk_11
begin_hunk_12_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EEST_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISU_SM_EEEEES10_ImmEDpOT_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !10   ; 2 uses
  %i.q = and i64 %i.p, -256
  %8 = add i64 %i.q, 256
  %9 = and i64 %i.p, 255
  %i.r = or disjoint i64 %8, %9
  store i64 %i.r, ptr %i.o, align 8, !tbaa !10
  ret void
}
end_hunk_12
begin_hunk_13_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE19tryEmplaceValueImplIjJjEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbES7_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE13insertAtBlankIJjEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %6 = add i64 %i.cb, 256
  %7 = and i64 %i.ca, 255
  %i.cc = or disjoint i64 %6, %7
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !10
  br label %bb.p

end_hunk_13
begin_hunk_14_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_:bb.a
_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSA_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEDpOT_EUlvE_PFvPSE_SM_SO_EJST_RSM_RSO_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSF_RSK_RSM_ESN_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.ab = and i64 %i.aa, -256
  %6 = add i64 %i.ab, 256
  %7 = and i64 %i.aa, 255
  %i.ac = or disjoint i64 %6, %7
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !10
  ret void
}
end_hunk_14
begin_hunk_15_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE19tryEmplaceValueImplInJRKnEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkInEEEEbES9_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE13insertAtBlankIJRKnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkInEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit, %bb.n
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.ca = and i64 %i.bz, -256
  %6 = add i64 %i.ca, 256
  %7 = and i64 %i.bz, 255
  %i.cb = or disjoint i64 %6, %7
  store i64 %i.cb, ptr %i.a, align 8, !tbaa !10
  br label %.loopexit

end_hunk_15
