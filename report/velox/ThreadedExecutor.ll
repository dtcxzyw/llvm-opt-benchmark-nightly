inline.NumInlined: 2429
inline.NumDeleted: 1247
begin_hunk_0_@_ZN5folly13hazptr_domainISt6atomicE16load_hazptr_valsEv:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit.i: ; preds = %bb.q, %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !654, !noalias !657 ; 2 uses
  %i.ed = and i64 %i.ec, -256
  %3 = add i64 %i.ed, 256
  %4 = and i64 %i.ec, 255
  %i.ee = or disjoint i64 %3, %4
  store i64 %i.ee, ptr %i.c, align 8, !tbaa !654, !noalias !657
  br label %.loopexit

end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE19tryEmplaceValueImplIS5_JRKS5_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEEbESB_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !654 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %6 = add i64 %i.cc, 256
  %7 = and i64 %i.cb, 255
  %i.cd = or disjoint i64 %6, %7
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !654
  br label %bb.p

end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE19tryEmplaceValueImplIS5_JRKSt21piecewise_construct_tSt5tupleIJRKS5_EESC_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISH_ISD_S4_EEEEEbESH_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESC_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISD_S4_EEEEESJ_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE6setTagEmm.exit, %bb.n
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !654 ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %8 = add i64 %i.cb, 256
  %9 = and i64 %i.ca, 255
  %i.cc = or disjoint i64 %8, %9
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !654
  br label %.loopexit

end_hunk_2
