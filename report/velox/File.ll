begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE15directBuildFromIRKSD_EEvOT_:bb.a
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !62
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %i.bx = and i64 %i.bw, -256
  %3 = add i64 %i.bx, 256
  %4 = and i64 %i.bw, 255
  %i.by = or disjoint i64 %3, %4                  ; 2 uses
  store i64 %i.by, ptr %i.d, align 8, !tbaa !18
  %i.bz = add i64 %.03356, 1
  %.not51 = icmp eq i32 %.sroa.0.1, 0
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_:bb.a
  store i32 %i.as, ptr %i.bz, align 4, !tbaa !3
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %4 = add i64 %i.cc, 256
  %5 = and i64 %i.cb, 255
  %i.cd = or disjoint i64 %4, %5
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !18
  %.not127 = icmp eq i32 %.sroa.086.2, 0
  br i1 %.not127, label %.loopexit, label %.lr.ph150, !llvm.loop !428
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_:bb.a
  store i32 %i.ck, ptr %i.hu, align 4, !tbaa !3
  %i.hw = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.hx = and i64 %i.hw, -256
  %6 = add i64 %i.hx, 256
  %7 = and i64 %i.hw, 255
  %i.hy = or disjoint i64 %6, %7
  store i64 %i.hy, ptr %i.a, align 8, !tbaa !18
  %.not126 = icmp eq i32 %.sroa.086.3, 0
  br i1 %.not126, label %.loopexit, label %.lr.ph146, !llvm.loop !429
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_SC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_:bb.a
_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSA_SD_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEDpOT_EUlvE_PFvPSH_SP_SR_EJSW_RSP_RSR_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_SC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSI_RSN_RSP_ESQ_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.ac = and i64 %i.ab, -256
  %7 = add i64 %i.ac, 256
  %8 = and i64 %i.ab, 255
  %i.ad = or disjoint i64 %7, %8
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !18
  ret void
}
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_RKSC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_:bb.a
_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSA_RKSD_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEDpOT_EUlvE_PFvPSH_SR_ST_EJSY_RSR_RST_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_RKSC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSI_RSN_RSP_ESQ_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.ac = and i64 %i.ab, -256
  %7 = add i64 %i.ac, 256
  %8 = and i64 %i.ab, 255
  %i.ad = or disjoint i64 %7, %8
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !18
  ret void
}
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE15directBuildFromIRKSG_EEvOT_:bb.a
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !62
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %i.bx = and i64 %i.bw, -256
  %3 = add i64 %i.bx, 256
  %4 = and i64 %i.bw, 255
  %i.by = or disjoint i64 %3, %4                  ; 2 uses
  store i64 %i.by, ptr %i.d, align 8, !tbaa !18
  %i.bz = add i64 %.03662, 1
  %.not57 = icmp eq i32 %.sroa.0.1, 0
end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSG_EEvOT_:bb.a
  store i32 %i.as, ptr %i.bz, align 4, !tbaa !3
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %4 = add i64 %i.cc, 256
  %5 = and i64 %i.cb, 255
  %i.cd = or disjoint i64 %4, %5
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !18
  %.not129 = icmp eq i32 %.sroa.088.2, 0
  br i1 %.not129, label %.loopexit, label %.lr.ph152, !llvm.loop !759
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSG_EEvOT_:bb.a
  store i32 %i.ck, ptr %i.hu, align 4, !tbaa !3
  %i.hw = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.hx = and i64 %i.hw, -256
  %6 = add i64 %i.hx, 256
  %7 = and i64 %i.hw, 255
  %i.hy = or disjoint i64 %6, %7
  store i64 %i.hy, ptr %i.a, align 8, !tbaa !18
  %.not128 = icmp eq i32 %.sroa.088.3, 0
  br i1 %.not128, label %.loopexit, label %.lr.ph148, !llvm.loop !760
end_hunk_7
