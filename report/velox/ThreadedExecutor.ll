inline.NumInlined: 2429
inline.NumDeleted: 1247
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEESA_ImmE:bb.a

_ZN5folly3f146detail20ValueContainerPolicyINSt6thread2idES3_vvvE11destroyItemERSt4pairIKS4_S3_E.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !654
  %i.d = add nuw nsw i64 %i.c, -256
  store i64 %i.d, ptr %i.b, align 8, !tbaa !654
  %i.e = and i64 %2, 255                          ; 2 uses
  %i.f = icmp samesign ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.f)
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEESA_ImmE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1815
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail20ValueContainerPolicyINSt6thread2idES3_vvvE11destroyItemERSt4pairIKS4_S3_E.exit
  %.pre = mul i64 %2, -16
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEE.exit

bb.d:                                             ; preds = %_ZN5folly3f146detail20ValueContainerPolicyINSt6thread2idES3_vvvE11destroyItemERSt4pairIKS4_S3_E.exit
  %i.l = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -16                 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEESA_ImmE:bb.a
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ab
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKNSt6thread2idES5_EEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKNSt6thread2idES5_EEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.f
  %.sroa.01.1.i = phi ptr [ %i.ae, %bb.f ], [ %i.q, %thread-pre-split.i.i ]
  %.sroa.7.1.i = phi i64 [ %i.ab, %bb.f ], [ %i.p, %thread-pre-split.i.i ]
  %i.af = and i64 %.sroa.7.1.i, 255               ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, 16
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = ptrtoint ptr %.sroa.01.1.i to i64
  %i.ai = or i64 %i.af, %i.ah
  store i64 %i.ai, ptr %i.i, align 8, !tbaa !75
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEE.exit: ; preds = %bb.c, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKNSt6thread2idES5_EEEE17precheckedAdvanceEv.exit.i
  %.neg.i.i.i.pre-phi = phi i64 [ %.pre, %bb.c ], [ %.neg.i.i.i.i, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKNSt6thread2idES5_EEEE17precheckedAdvanceEv.exit.i ]
  %5 = getelementptr inbounds i8, ptr %1, i64 -16
  %i.aj = getelementptr inbounds i8, ptr %5, i64 %.neg.i.i.i.pre-phi ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %2 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !22
  %.not.i.i7 = icmp sgt i8 %i.al, -1
end_hunk_2
