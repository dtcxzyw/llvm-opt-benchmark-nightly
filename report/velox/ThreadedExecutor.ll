begin_hunk_0_@_ZN5folly13hazptr_domainISt6atomicE16load_hazptr_valsEv:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit.i: ; preds = %bb.q, %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !642, !noalias !645 ; 2 uses
  %i.ed = and i64 %i.ec, -256
  %3 = add i64 %i.ed, 256
  %4 = and i64 %i.ec, 255
  %i.ee = or disjoint i64 %3, %4
  store i64 %i.ee, ptr %i.c, align 8, !tbaa !642, !noalias !645
  br label %.loopexit

end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE19tryEmplaceValueImplIS5_JRKS5_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEEbESB_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !642 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %6 = add i64 %i.cc, 256
  %7 = and i64 %i.cb, 255
  %i.cd = or disjoint i64 %6, %7
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !642
  br label %bb.p

end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE19tryEmplaceValueImplIS5_JRKSt21piecewise_construct_tSt5tupleIJRKS5_EESC_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISH_ISD_S4_EEEEEbESH_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESC_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISD_S4_EEEEESJ_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE6setTagEmm.exit, %bb.n
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !642 ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %8 = add i64 %i.cb, 256
  %9 = and i64 %i.ca, 255
  %i.cc = or disjoint i64 %8, %9
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !642
  br label %.loopexit

end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEESA_ImmE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !642  ; 2 uses
  %i.d = and i64 %i.c, -256
  %5 = add i64 %i.d, -256                         ; 2 uses
  %6 = and i64 %i.c, 255
  %i.e = or disjoint i64 %5, %6
  store i64 %i.e, ptr %i.b, align 8, !tbaa !642
  %i.f = and i64 %2, 255                          ; 2 uses
  %i.g = icmp samesign ult i64 %i.f, 16
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEESA_ImmE:bb.a
  br i1 %i.l, label %bb.c, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEE.exit

bb.c:                                             ; preds = %_ZN5folly3f146detail20ValueContainerPolicyINSt6thread2idES3_vvvE11destroyItemERSt4pairIKS4_S3_E.exit
  %i.m = icmp eq i64 %5, 0
  br i1 %i.m, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKNSt6thread2idES5_EEEE17precheckedAdvanceEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_4
