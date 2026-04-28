inline.NumInlined: 9143
inline.NumDeleted: 3321
begin_hunk_0_@_ZN5folly15RegexMatchCache8addRegexERKNS_18RegexMatchCacheKeyE:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit.i: ; preds = %bb.z, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit.i
  %i.eh = load i64, ptr %i.av, align 8, !tbaa !19762, !noalias !21538 ; 2 uses
  %i.ei = and i64 %i.eh, -256
  %9 = and i64 %i.eh, 255
  %10 = add i64 %i.ei, 256
  %i.ej = or disjoint i64 %10, %9
  store i64 %i.ej, ptr %i.av, align 8, !tbaa !19762, !noalias !21538
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_.exit

end_hunk_0
begin_hunk_1_@_ZN5folly15RegexMatchCache8addRegexERKNS_18RegexMatchCacheKeyE:bb.a
  %i.jc = load ptr, ptr %.sroa.055.086, align 8, !tbaa !19858, !noalias !21558
  store ptr %i.jc, ptr %i.jb, align 8, !tbaa !19858, !noalias !21558
  %i.jd = and i64 %i.iw, -256
  %11 = and i64 %i.iw, 255
  %12 = add i64 %i.jd, 256
  %i.je = or disjoint i64 %12, %11
  store i64 %i.je, ptr %i.bc, align 8, !tbaa !19762, !noalias !21558
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
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_:bb.a
  store i64 0, ptr %i.cm, align 8, !tbaa !19762
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.co = and i64 %i.cn, -256
  %8 = and i64 %i.cn, 255
  %9 = add i64 %i.co, 256
  %i.cp = or disjoint i64 %9, %8
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !19762
  br label %bb.o

end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %8 = and i64 %i.cc, 255
  %9 = add i64 %i.cd, 256
  %i.ce = or disjoint i64 %9, %8
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !19762
  br label %.loopexit

end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE19tryEmplaceValueImplISB_JRKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_:bb.a
  %i.ch = load ptr, ptr %5, align 8, !tbaa !19858
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !19858
  %i.ci = and i64 %i.cb, -256
  %6 = and i64 %i.cb, 255
  %7 = add i64 %i.ci, 256
  %i.cj = or disjoint i64 %7, %6
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !19762
  br label %bb.o

end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %8 = and i64 %i.cc, 255
  %9 = add i64 %i.cd, 256
  %i.ce = or disjoint i64 %9, %8
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !19762
  br label %.loopexit

end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJOS6_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_:bb.a
  store i64 0, ptr %i.cm, align 8, !tbaa !19762
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.co = and i64 %i.cn, -256
  %8 = and i64 %i.cn, 255
  %9 = add i64 %i.co, 256
  %i.cp = or disjoint i64 %9, %8
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !19762
  br label %bb.o

end_hunk_9
begin_hunk_10_@_ZN5folly15RegexMatchCache20prepareToFindMatchesERKNS_25RegexMatchCacheKeyAndViewE:bb.a
  %i.gu = load ptr, ptr %.sroa.0417.0721, align 8, !tbaa !19858, !noalias !21925
  store ptr %i.gu, ptr %i.gt, align 8, !tbaa !19858, !noalias !21925
  %i.gv = and i64 %i.go, -256
  %19 = and i64 %i.go, 255
  %20 = add i64 %i.gv, 256
  %i.gw = or disjoint i64 %20, %19
  store i64 %i.gw, ptr %i.cm, align 8, !tbaa !19762, !noalias !21925
  br label %.noexc292

end_hunk_10
