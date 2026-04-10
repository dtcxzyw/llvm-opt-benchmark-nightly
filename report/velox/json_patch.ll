inline.NumInlined: 1291
inline.NumDeleted: 691
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE:bb.a

_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE11destroyItemERPSt4pairIKS3_S3_E.exit: ; preds = %bb.a, %_ZNSt16allocator_traitsISaISt4pairIKN5folly7dynamicES2_EEE10deallocateERS5_PS4_m.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !182
  %i.f = add nuw nsw i64 %i.e, -256
  store i64 %i.f, ptr %i.d, align 8, !tbaa !182
  %i.g = and i64 %2, 255                          ; 2 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !194
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE11destroyItemERPSt4pairIKS3_S3_E.exit
  %.pre = mul i64 %2, -8
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

bb.c:                                             ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE11destroyItemERPSt4pairIKS3_S3_E.exit
  %i.o = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -8                  ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE:bb.a
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES5_EEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES5_EEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e
  %.sroa.01.1.i = phi ptr [ %i.ah, %bb.e ], [ %i.t, %thread-pre-split.i.i ]
  %.sroa.7.1.i = phi i64 [ %i.ae, %bb.e ], [ %i.s, %thread-pre-split.i.i ]
  %i.ai = and i64 %.sroa.7.1.i, 255               ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = lshr i64 %i.ai, 1
  %i.al = ptrtoint ptr %.sroa.01.1.i to i64
  %i.am = or i64 %i.ak, %i.al
  store i64 %i.am, ptr %i.l, align 8, !tbaa !69
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEE.exit: ; preds = %bb.b, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES5_EEEE17precheckedAdvanceEv.exit.i
  %.neg.i.i.i.pre-phi = phi i64 [ %.pre, %bb.b ], [ %.neg.i.i.i.i, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES5_EEEE17precheckedAdvanceEv.exit.i ]
  %5 = getelementptr inbounds i8, ptr %1, i64 -16
  %i.an = getelementptr inbounds i8, ptr %5, i64 %.neg.i.i.i.pre-phi ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %2 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !44
  %.not.i.i7 = icmp sgt i8 %i.ap, -1
end_hunk_2
