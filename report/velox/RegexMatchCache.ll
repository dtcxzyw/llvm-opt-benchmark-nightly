inline.NumInlined: 9143
inline.NumDeleted: 3321
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %5 = and i64 %i.b, -256
  %6 = and i64 %i.b, 255
  %i.c = add i64 %5, -256                         ; 2 uses
  %7 = or disjoint i64 %i.c, %6
  store i64 %7, ptr %i.a, align 8, !tbaa !19762
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE:bb.a
  br i1 %i.j, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit

bb.b:                                             ; preds = %bb.a
  %8 = icmp eq i64 %i.c, 0
  br i1 %8, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %1, i64 -16
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a

_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit: ; preds = %bb.a, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19762 ; 2 uses
  %5 = and i64 %i.i, -256
  %6 = and i64 %i.i, 255
  %i.j = add i64 %5, -256                         ; 2 uses
  %7 = or disjoint i64 %i.j, %6
  store i64 %7, ptr %i.h, align 8, !tbaa !19762
  %i.k = and i64 %2, 255                          ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a
  br i1 %i.q, label %bb.e, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit

bb.e:                                             ; preds = %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit
  %8 = icmp eq i64 %i.j, 0
  br i1 %8, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEEE17precheckedAdvanceEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %1, i64 -16
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  %.sroa.5.0.i = phi i64 [ 1, %bb.a ], [ %i.n, %bb.b ]
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.l, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19762 ; 2 uses
  %4 = and i64 %i.p, -256
  %5 = and i64 %i.p, 255
  %i.q = add i64 %4, -256
  %6 = or disjoint i64 %i.q, %5
  store i64 %6, ptr %i.o, align 8, !tbaa !19762
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %2 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19747
  %.not.i.i.i.i = icmp sgt i8 %i.s, -1
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %5 = and i64 %i.b, -256
  %6 = and i64 %i.b, 255
  %i.c = add i64 %5, -256                         ; 2 uses
  %7 = or disjoint i64 %i.c, %6
  store i64 %7, ptr %i.a, align 8, !tbaa !19762
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE:bb.a
  br i1 %i.j, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEE.exit

bb.b:                                             ; preds = %bb.a
  %8 = icmp eq i64 %i.c, 0
  br i1 %8, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %1, i64 -16
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE:bb.a

_ZN5folly3f146detail19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvE11destroyItemERPSt4pairIKS3_S5_E.exit: ; preds = %bb.a, %_ZNSt16allocator_traitsISaISt4pairIKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache17RegexToMatchEntryEEEE10deallocateERS7_PS6_m.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19762 ; 2 uses
  %5 = and i64 %i.x, -256
  %6 = and i64 %i.x, 255
  %i.y = add i64 %5, -256                         ; 2 uses
  %7 = or disjoint i64 %i.y, %6
  store i64 %7, ptr %i.w, align 8, !tbaa !19762
  %i.z = and i64 %2, 255                          ; 2 uses
  %i.aa = icmp samesign ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE:bb.a
  br i1 %i.ag, label %bb.e, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit

bb.e:                                             ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvE11destroyItemERPSt4pairIKS3_S5_E.exit
  %8 = icmp eq i64 %i.y, 0
  br i1 %8, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEEE17precheckedAdvanceEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds i8, ptr %1, i64 -16
end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  %.sroa.5.0.i = phi i64 [ 1, %bb.a ], [ %i.n, %bb.b ]
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.l, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19762 ; 2 uses
  %4 = and i64 %i.p, -256
  %5 = and i64 %i.p, 255
  %i.q = add i64 %4, -256
  %6 = or disjoint i64 %i.q, %5
  store i64 %6, ptr %i.o, align 8, !tbaa !19762
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %2 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19747
  %.not.i.i.i.i = icmp sgt i8 %i.s, -1
end_hunk_9
begin_hunk_10_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a

_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit: ; preds = %bb.a, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19762 ; 2 uses
  %5 = and i64 %i.i, -256
  %6 = and i64 %i.i, 255
  %i.j = add i64 %5, -256                         ; 2 uses
  %7 = or disjoint i64 %i.j, %6
  store i64 %7, ptr %i.h, align 8, !tbaa !19762
  %i.k = and i64 %2, 255                          ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
end_hunk_10
begin_hunk_11_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a
  br i1 %i.q, label %bb.e, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit

bb.e:                                             ; preds = %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit
  %8 = icmp eq i64 %i.j, 0
  br i1 %8, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEEE17precheckedAdvanceEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %1, i64 -16
end_hunk_11
