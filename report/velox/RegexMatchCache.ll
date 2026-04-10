inline.NumInlined: 9143
inline.NumDeleted: 3321
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19762
  %i.c = add nuw nsw i64 %i.b, -256
  store i64 %i.c, ptr %i.a, align 8, !tbaa !19762
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21244
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pre = mul i64 %2, -16
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -16                 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE:bb.a
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.aa
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e
  %.sroa.01.1.i = phi ptr [ %i.ad, %bb.e ], [ %i.p, %thread-pre-split.i.i ]
  %.sroa.7.1.i = phi i64 [ %i.aa, %bb.e ], [ %i.o, %thread-pre-split.i.i ]
  %i.ae = and i64 %.sroa.7.1.i, 255               ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = ptrtoint ptr %.sroa.01.1.i to i64
  %i.ah = or i64 %i.ae, %i.ag
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !19741
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit: ; preds = %bb.b, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEEEE17precheckedAdvanceEv.exit.i
  %.neg.i.i.i.pre-phi = phi i64 [ %.pre, %bb.b ], [ %.neg.i.i.i.i, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEEEE17precheckedAdvanceEv.exit.i ]
  %5 = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ai = getelementptr inbounds i8, ptr %5, i64 %.neg.i.i.i.pre-phi ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %2 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !19747
  %.not.i.i7 = icmp sgt i8 %i.ak, -1
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a

_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit: ; preds = %bb.a, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19762
  %i.j = add nuw nsw i64 %i.i, -256
  store i64 %i.j, ptr %i.h, align 8, !tbaa !19762
  %i.k = and i64 %2, 255                          ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19870
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit
  %.pre = mul i64 %2, -16
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit
  %i.r = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -16                 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ah
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.h
  %.sroa.01.1.i = phi ptr [ %i.ak, %bb.h ], [ %i.w, %thread-pre-split.i.i ]
  %.sroa.7.1.i = phi i64 [ %i.ah, %bb.h ], [ %i.v, %thread-pre-split.i.i ]
  %i.al = and i64 %.sroa.7.1.i, 255               ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %i.an = ptrtoint ptr %.sroa.01.1.i to i64
  %i.ao = or i64 %i.al, %i.an
  store i64 %i.ao, ptr %i.o, align 8, !tbaa !19741
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit: ; preds = %bb.e, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEEE17precheckedAdvanceEv.exit.i
  %.neg.i.i.i.pre-phi = phi i64 [ %.pre, %bb.e ], [ %.neg.i.i.i.i, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEEE17precheckedAdvanceEv.exit.i ]
  %5 = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ap = getelementptr inbounds i8, ptr %5, i64 %.neg.i.i.i.pre-phi ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %2 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19747
  %.not.i.i7 = icmp sgt i8 %i.ar, -1
end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  %.sroa.5.0.i = phi i64 [ 1, %bb.a ], [ %i.n, %bb.b ]
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.l, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19762
  %i.q = add nuw nsw i64 %i.p, -256
  store i64 %i.q, ptr %i.o, align 8, !tbaa !19762
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %2 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19747
  %.not.i.i.i.i = icmp sgt i8 %i.s, -1
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19762
  %i.c = add nuw nsw i64 %i.b, -256
  store i64 %i.c, ptr %i.a, align 8, !tbaa !19762
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19876
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pre = mul i64 %2, -16
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -16                 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i
end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE:bb.a
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.aa
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e
  %.sroa.01.1.i = phi ptr [ %i.ad, %bb.e ], [ %i.p, %thread-pre-split.i.i ]
  %.sroa.7.1.i = phi i64 [ %i.aa, %bb.e ], [ %i.o, %thread-pre-split.i.i ]
  %i.ae = and i64 %.sroa.7.1.i, 255               ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = ptrtoint ptr %.sroa.01.1.i to i64
  %i.ah = or i64 %i.ae, %i.ag
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !19741
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEE.exit: ; preds = %bb.b, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEEEE17precheckedAdvanceEv.exit.i
  %.neg.i.i.i.pre-phi = phi i64 [ %.pre, %bb.b ], [ %.neg.i.i.i.i, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEEEE17precheckedAdvanceEv.exit.i ]
  %5 = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ai = getelementptr inbounds i8, ptr %5, i64 %.neg.i.i.i.pre-phi ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %2 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !19747
  %.not.i.i7 = icmp sgt i8 %i.ak, -1
end_hunk_9
begin_hunk_10_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE:bb.a

_ZN5folly3f146detail19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvE11destroyItemERPSt4pairIKS3_S5_E.exit: ; preds = %bb.a, %_ZNSt16allocator_traitsISaISt4pairIKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache17RegexToMatchEntryEEEE10deallocateERS7_PS6_m.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19762
  %i.y = add nuw nsw i64 %i.x, -256
  store i64 %i.y, ptr %i.w, align 8, !tbaa !19762
  %i.z = and i64 %2, 255                          ; 2 uses
  %i.aa = icmp samesign ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
end_hunk_10
begin_hunk_11_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !19849
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvE11destroyItemERPSt4pairIKS3_S5_E.exit
  %.pre = mul i64 %2, -8
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvE11destroyItemERPSt4pairIKS3_S5_E.exit
  %i.ah = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -8                  ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i
end_hunk_11
begin_hunk_12_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE:bb.a
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.h
  %.sroa.01.1.i = phi ptr [ %i.ba, %bb.h ], [ %i.am, %thread-pre-split.i.i ]
  %.sroa.7.1.i = phi i64 [ %i.ax, %bb.h ], [ %i.al, %thread-pre-split.i.i ]
  %i.bb = and i64 %.sroa.7.1.i, 255               ; 2 uses
  %i.bc = icmp samesign ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = lshr i64 %i.bb, 1
  %i.be = ptrtoint ptr %.sroa.01.1.i to i64
  %i.bf = or i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.ae, align 8, !tbaa !19741
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit: ; preds = %bb.e, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEEE17precheckedAdvanceEv.exit.i
  %.neg.i.i.i.pre-phi = phi i64 [ %.pre, %bb.e ], [ %.neg.i.i.i.i, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEEE17precheckedAdvanceEv.exit.i ]
  %5 = getelementptr inbounds i8, ptr %1, i64 -16
  %i.bg = getelementptr inbounds i8, ptr %5, i64 %.neg.i.i.i.pre-phi ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %2 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !19747
  %.not.i.i7 = icmp sgt i8 %i.bi, -1
end_hunk_12
begin_hunk_13_@_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  %.sroa.5.0.i = phi i64 [ 1, %bb.a ], [ %i.n, %bb.b ]
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.l, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19762
  %i.q = add nuw nsw i64 %i.p, -256
  store i64 %i.q, ptr %i.o, align 8, !tbaa !19762
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %2 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19747
  %.not.i.i.i.i = icmp sgt i8 %i.s, -1
end_hunk_13
begin_hunk_14_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a

_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit: ; preds = %bb.a, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19762
  %i.j = add nuw nsw i64 %i.i, -256
  store i64 %i.j, ptr %i.h, align 8, !tbaa !19762
  %i.k = and i64 %2, 255                          ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
end_hunk_14
begin_hunk_15_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19739
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit
  %.pre = mul i64 %2, -16
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit
  %i.r = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -16                 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i
end_hunk_15
begin_hunk_16_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ah
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.h
  %.sroa.01.1.i = phi ptr [ %i.ak, %bb.h ], [ %i.w, %thread-pre-split.i.i ]
  %.sroa.7.1.i = phi i64 [ %i.ah, %bb.h ], [ %i.v, %thread-pre-split.i.i ]
  %i.al = and i64 %.sroa.7.1.i, 255               ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %i.an = ptrtoint ptr %.sroa.01.1.i to i64
  %i.ao = or i64 %i.al, %i.an
  store i64 %i.ao, ptr %i.o, align 8, !tbaa !19741
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit: ; preds = %bb.e, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEEE17precheckedAdvanceEv.exit.i
  %.neg.i.i.i.pre-phi = phi i64 [ %.pre, %bb.e ], [ %.neg.i.i.i.i, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEEE17precheckedAdvanceEv.exit.i ]
  %5 = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ap = getelementptr inbounds i8, ptr %5, i64 %.neg.i.i.i.pre-phi ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %2 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19747
  %.not.i.i7 = icmp sgt i8 %i.ar, -1
end_hunk_16
