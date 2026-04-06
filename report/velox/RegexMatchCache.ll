begin_hunk_0_@_ZN5folly15RegexMatchCache8addRegexERKNS_18RegexMatchCacheKeyE:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit.i: ; preds = %bb.z, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit.i
  %i.eh = load i64, ptr %i.av, align 8, !tbaa !19762, !noalias !21474 ; 2 uses
  %i.ei = and i64 %i.eh, -256
  %9 = and i64 %i.eh, 255
  %10 = add i64 %i.ei, 256
  %i.ej = or disjoint i64 %10, %9
  store i64 %i.ej, ptr %i.av, align 8, !tbaa !19762, !noalias !21474
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_.exit

end_hunk_0
begin_hunk_1_@_ZN5folly15RegexMatchCache8addRegexERKNS_18RegexMatchCacheKeyE:bb.a
  %i.jc = load ptr, ptr %.sroa.055.086, align 8, !tbaa !19855, !noalias !21494
  store ptr %i.jc, ptr %i.jb, align 8, !tbaa !19855, !noalias !21494
  %i.jd = and i64 %i.iw, -256
  %11 = and i64 %i.iw, 255
  %12 = add i64 %i.jd, 256
  %i.je = or disjoint i64 %12, %11
  store i64 %i.je, ptr %i.bc, align 8, !tbaa !19762, !noalias !21494
  br label %.noexc46

end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19762 ; 2 uses
  %i.w = and i64 %i.v, -256
  %8 = and i64 %i.v, 255
  %9 = add i64 %i.w, 256
  %i.x = or disjoint i64 %9, %8
  store i64 %i.x, ptr %i.u, align 8, !tbaa !19762
  ret void
}
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_mEEEEEbESI_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %8 = and i64 %i.cc, 255
  %9 = add i64 %i.cd, 256
  %i.ce = or disjoint i64 %9, %8
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !19762
  br label %.loopexit

end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE19tryEmplaceValueImplImJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %8 = and i64 %i.cc, 255
  %9 = add i64 %i.cd, 256
  %i.ce = or disjoint i64 %9, %8
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !19762
  br label %.loopexit

end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.c = and i64 %i.b, -256
  %5 = and i64 %i.b, 255
  %6 = add i64 %i.c, -256                         ; 2 uses
  %i.d = or disjoint i64 %6, %5
  store i64 %i.d, ptr %i.a, align 8, !tbaa !19762
  %i.e = and i64 %2, 255                          ; 2 uses
  %i.f = icmp samesign ult i64 %i.e, 16
end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE:bb.a
  br i1 %i.k, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %6, 0
  br i1 %i.l, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_:bb.a
  store i64 0, ptr %i.cm, align 8, !tbaa !19762
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.co = and i64 %i.cn, -256
  %8 = and i64 %i.cn, 255
  %9 = add i64 %i.co, 256
  %i.cp = or disjoint i64 %9, %8
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !19762
  br label %bb.o

end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %8 = and i64 %i.cc, 255
  %9 = add i64 %i.cd, 256
  %i.ce = or disjoint i64 %9, %8
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !19762
  br label %.loopexit

end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE19tryEmplaceValueImplISB_JRKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_:bb.a
  %i.ch = load ptr, ptr %5, align 8, !tbaa !19855
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !19855
  %i.ci = and i64 %i.cb, -256
  %6 = and i64 %i.cb, 255
  %7 = add i64 %i.ci, 256
  %i.cj = or disjoint i64 %7, %6
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !19762
  br label %bb.o

end_hunk_9
begin_hunk_10_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19762 ; 2 uses
  %i.j = and i64 %i.i, -256
  %5 = and i64 %i.i, 255
  %6 = add i64 %i.j, -256                         ; 2 uses
  %i.k = or disjoint i64 %6, %5
  store i64 %i.k, ptr %i.h, align 8, !tbaa !19762
  %i.l = and i64 %2, 255                          ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 16
end_hunk_10
begin_hunk_11_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a
  br i1 %i.r, label %bb.e, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit

bb.e:                                             ; preds = %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit
  %i.s = icmp eq i64 %6, 0
  br i1 %i.s, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEEE17precheckedAdvanceEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_11
begin_hunk_12_@_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19762 ; 2 uses
  %i.q = and i64 %i.p, -256
  %4 = and i64 %i.p, 255
  %5 = add i64 %i.q, -256
  %i.r = or disjoint i64 %5, %4
  store i64 %i.r, ptr %i.o, align 8, !tbaa !19762
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %2 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19747
end_hunk_12
begin_hunk_13_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.c = and i64 %i.b, -256
  %5 = and i64 %i.b, 255
  %6 = add i64 %i.c, -256                         ; 2 uses
  %i.d = or disjoint i64 %6, %5
  store i64 %i.d, ptr %i.a, align 8, !tbaa !19762
  %i.e = and i64 %2, 255                          ; 2 uses
  %i.f = icmp samesign ult i64 %i.e, 16
end_hunk_13
begin_hunk_14_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE:bb.a
  br i1 %i.k, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %6, 0
  br i1 %i.l, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_14
begin_hunk_15_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19762 ; 2 uses
  %i.y = and i64 %i.x, -256
  %5 = and i64 %i.x, 255
  %6 = add i64 %i.y, -256                         ; 2 uses
  %i.z = or disjoint i64 %6, %5
  store i64 %i.z, ptr %i.w, align 8, !tbaa !19762
  %i.aa = and i64 %2, 255                         ; 2 uses
  %i.ab = icmp samesign ult i64 %i.aa, 16
end_hunk_15
begin_hunk_16_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE:bb.a
  br i1 %i.ah, label %bb.e, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit

bb.e:                                             ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvE11destroyItemERPSt4pairIKS3_S5_E.exit
  %i.ai = icmp eq i64 %6, 0
  br i1 %i.ai, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEEE17precheckedAdvanceEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_16
begin_hunk_17_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %8 = and i64 %i.cc, 255
  %9 = add i64 %i.cd, 256
  %i.ce = or disjoint i64 %9, %8
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !19762
  br label %.loopexit

end_hunk_17
begin_hunk_18_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJOS6_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_:bb.a
  store i64 0, ptr %i.cm, align 8, !tbaa !19762
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.co = and i64 %i.cn, -256
  %8 = and i64 %i.cn, 255
  %9 = add i64 %i.co, 256
  %i.cp = or disjoint i64 %9, %8
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !19762
  br label %bb.o

end_hunk_18
begin_hunk_19_@_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19762 ; 2 uses
  %i.q = and i64 %i.p, -256
  %4 = and i64 %i.p, 255
  %5 = add i64 %i.q, -256
  %i.r = or disjoint i64 %5, %4
  store i64 %i.r, ptr %i.o, align 8, !tbaa !19762
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %2 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19747
end_hunk_19
begin_hunk_20_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19762 ; 2 uses
  %i.j = and i64 %i.i, -256
  %5 = and i64 %i.i, 255
  %6 = add i64 %i.j, -256                         ; 2 uses
  %i.k = or disjoint i64 %6, %5
  store i64 %i.k, ptr %i.h, align 8, !tbaa !19762
  %i.l = and i64 %2, 255                          ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 16
end_hunk_20
begin_hunk_21_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a
  br i1 %i.r, label %bb.e, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit

bb.e:                                             ; preds = %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit
  %i.s = icmp eq i64 %6, 0
  br i1 %i.s, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEEE17precheckedAdvanceEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_21
begin_hunk_22_@_ZN5folly15RegexMatchCache20prepareToFindMatchesERKNS_25RegexMatchCacheKeyAndViewE:bb.a
  %i.gu = load ptr, ptr %.sroa.0417.0721, align 8, !tbaa !19855, !noalias !21856
  store ptr %i.gu, ptr %i.gt, align 8, !tbaa !19855, !noalias !21856
  %i.gv = and i64 %i.go, -256
  %19 = and i64 %i.go, 255
  %20 = add i64 %i.gv, 256
  %i.gw = or disjoint i64 %20, %19
  store i64 %i.gw, ptr %i.cm, align 8, !tbaa !19762, !noalias !21856
  br label %.noexc292

end_hunk_22
