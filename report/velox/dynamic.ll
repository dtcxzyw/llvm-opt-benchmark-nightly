inline.NumInlined: 2716
inline.NumDeleted: 1112
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE15directBuildFromIRKS9_EEvOT_:bb.a
  store i8 %i.ay, ptr %i.au, align 1, !tbaa !33
  %i.az = load i64, ptr %i.b, align 8, !tbaa !219 ; 2 uses
  %i.ba = and i64 %i.az, -256
  %2 = add i64 %i.ba, 256
  %3 = and i64 %i.az, 255
  %i.bb = or disjoint i64 %2, %3                  ; 2 uses
  store i64 %i.bb, ptr %i.b, align 8, !tbaa !219
  %i.bc = add i64 %.04697, 1
  %.not87 = icmp eq i32 %.sroa.070.1, 0
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE15rehashBuildFromIRKS9_EEvOT_:bb.a
bb.r:                                             ; preds = %bb.q, %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt4pairIKS5_S5_EEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSE_EEEESC_ImmEDpOT_EUlvE_PFvPSA_SM_SN_EJSS_RSM_RSN_EvEET2_OT_OT0_DpOT1_.exit.i
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !219 ; 2 uses
  %i.ct = and i64 %i.cs, -256
  %3 = add i64 %i.ct, 256
  %4 = and i64 %i.cs, 255
  %i.cu = or disjoint i64 %3, %4                  ; 3 uses
  store i64 %i.cu, ptr %i.a, align 8, !tbaa !219
  %.not134 = icmp eq i32 %.sroa.093.2, 0
  br i1 %.not134, label %.loopexit, label %.lr.ph152, !llvm.loop !303
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE15rehashBuildFromIRKS9_EEvOT_:bb.a
_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt4pairIKS4_S4_EEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSD_EEEESB_ImmEDpOT_.exit85: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt4pairIKS5_S5_EEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSE_EEEESC_ImmEDpOT_EUlvE_PFvPSA_SM_SN_EJSS_RSM_RSN_EvEET2_OT_OT0_DpOT1_.exit.i77, %bb.ag
  %i.fh = load i64, ptr %i.a, align 8, !tbaa !219 ; 2 uses
  %i.fi = and i64 %i.fh, -256
  %5 = add i64 %i.fi, 256
  %6 = and i64 %i.fh, 255
  %i.fj = or disjoint i64 %5, %6                  ; 2 uses
  store i64 %i.fj, ptr %i.a, align 8, !tbaa !219
  %.not133 = icmp eq i32 %.sroa.093.3, 0
  br i1 %.not133, label %.loopexit, label %.lr.ph148
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRNS_5RangeIPKcEEDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESI_ImmEDpOT_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !219  ; 2 uses
  %i.q = and i64 %i.p, -256
  %7 = add i64 %i.q, 256
  %8 = and i64 %i.p, 255
  %i.r = or disjoint i64 %7, %8
  store i64 %i.r, ptr %i.o, align 8, !tbaa !219
  ret void
}
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKS4_DnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISB_S4_EEEEESF_ImmEDpOT_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !219  ; 2 uses
  %i.u = and i64 %i.t, -256
  %7 = add i64 %i.u, 256
  %8 = and i64 %i.t, 255
  %i.v = or disjoint i64 %7, %8
  store i64 %i.v, ptr %i.s, align 8, !tbaa !219
  ret void
}
end_hunk_4
