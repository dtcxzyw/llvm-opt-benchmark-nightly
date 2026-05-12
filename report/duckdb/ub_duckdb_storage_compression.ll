inline.NumInlined: 14179
inline.NumDeleted: 6830
begin_hunk_0_@_ZN6duckdb3alp16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS_6vectorIjLb1ESaIjEEEhRNS0_20AlpRDCompressionDataIfLb1EEE:bb.a
  %i.ba = ashr exact i64 %i.az, 4
  %i.bb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = shl nuw nsw i64 %i.bb, 1
  %5 = xor i64 %i.bc, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_T1_(ptr %.pre77, ptr nonnull %i.cs, i64 noundef %5)
          to label %.noexc30 unwind label %bb.j

end_hunk_0
begin_hunk_1_@_ZN6duckdb3alp16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS_6vectorIjLb1ESaIjEEEhRNS0_20AlpRDCompressionDataIfLb1EEE:bb.a
  %i.bq = ashr exact i64 %i.bp, 4
  %i.br = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = shl nuw nsw i64 %i.br, 1
  %7 = xor i64 %i.bs, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_T1_(ptr %i.bl, ptr %i.bk, i64 noundef %7)
          to label %.noexc53 unwind label %bb.k

end_hunk_1
begin_hunk_2_@_ZN6duckdb3alp16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS_6vectorImLb1ESaImEEEhRNS0_20AlpRDCompressionDataIdLb1EEE:bb.a
  %i.ay = ashr exact i64 %i.ax, 4
  %i.az = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.ba = shl nuw nsw i64 %i.az, 1
  %5 = xor i64 %i.ba, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_T1_(ptr %.pre77, ptr nonnull %i.co, i64 noundef %5)
          to label %.noexc30 unwind label %bb.j

end_hunk_2
begin_hunk_3_@_ZN6duckdb3alp16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS_6vectorImLb1ESaImEEEhRNS0_20AlpRDCompressionDataIdLb1EEE:bb.a
  %i.bo = ashr exact i64 %i.bn, 4
  %i.bp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = shl nuw nsw i64 %i.bp, 1
  %7 = xor i64 %i.bq, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_T1_(ptr %i.bj, ptr %i.bi, i64 noundef %7)
          to label %.noexc53 unwind label %bb.k

end_hunk_3
begin_hunk_4_@_ZNSt6vectorIhSaIhEE6resizeEm:bb.a
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !966
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.f, 9223372036854775807          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28.i = icmp ult i64 %i.l, %i.h
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIhSaIhEE6resizeEm:bb.a
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.h
  br i1 %3, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
end_hunk_5
