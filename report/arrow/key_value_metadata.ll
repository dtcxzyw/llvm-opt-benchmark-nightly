inline.NumInlined: 1342
inline.NumDeleted: 553
begin_hunk_0_@_ZN5arrow16KeyValueMetadata10DeleteManyESt6vectorIlSaIlEE:bb.a
  %i.h = ashr exact i64 %i.g, 3
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %3 = xor i64 %i.j, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %3)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !79
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_EEESt6vectorIlSaIlEERKSA_IT_SaISD_EEOT0_:bb.a
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %3 = xor i64 %i.aj, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISH_EEES5_RKS3_IT_SaISK_EEOT0_EUlllE_EEEvSK_SK_SP_T1_(ptr nonnull %i.k, ptr %.sink, i64 noundef %3, ptr nonnull %2, ptr nonnull %1)
          to label %.noexc12 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit

end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.g, 288230376151711743           ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_2
