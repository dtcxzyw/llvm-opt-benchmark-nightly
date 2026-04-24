inline.NumInlined: 796
inline.NumDeleted: 284
begin_hunk_0_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.k, %i.m                       ; 20 uses
  %i.o = icmp ugt i64 %i.n, %i.e
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS2_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS2_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bc = icmp eq i64 %i.n, 1
  %i.bd = getelementptr inbounds [2 x i8], ptr %2, i64 %i.n ; 8 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.b, %i.be                     ; 3 uses
  %i.bg = ashr exact i64 %i.bf, 1                 ; 12 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a
  br i1 %min.iters.check109, label %.lr.ph.i.i.i.i.i45.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %iter.check128
  %4 = shl nuw nsw i64 %i.n, 1
  %scevgep105 = getelementptr i8, ptr %2, i64 %4
  %bound0106 = icmp ult ptr %1, %scevgep105
  %bound1107 = icmp ult ptr %2, %i.i
  %found.conflict108 = and i1 %bound0106, %bound1107
  br i1 %found.conflict108, label %.lr.ph.i.i.i.i.i45.preheader, label %vector.main.loop.iter.check110
end_hunk_2
