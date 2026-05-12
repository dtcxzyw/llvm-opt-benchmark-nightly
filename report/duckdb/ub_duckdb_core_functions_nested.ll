inline.NumInlined: 12414
inline.NumDeleted: 4971
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIbE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
  %i.ba = add i64 %i.ay, %i.az
  %i.bb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = shl nuw nsw i64 %i.bb, 1
  %10 = sub nuw nsw i64 126, %i.bc
  invoke void @_ZSt16__introsort_loopISt13_Bit_iteratorlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr %i.ar, i32 0, ptr %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i, i64 noundef %10)
          to label %.noexc80 unwind label %bb.v

end_hunk_0
begin_hunk_1_@_ZNSt6vectorImSaImEE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 1152921504606846975, %i.g  ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIhE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 true)
  %i.bf = shl nuw nsw i64 %i.be, 1
  %10 = sub nuw nsw i64 126, %i.bf
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ay, ptr %i.ba, i64 noundef %10)
          to label %.noexc65 unwind label %bb.w

end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateItE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
  %i.bg = ashr exact i64 %i.bf, 1
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %10 = sub nuw nsw i64 126, %i.bi
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %10)
          to label %.noexc65 unwind label %bb.w

end_hunk_3
begin_hunk_4_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIjE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
  %i.bg = ashr exact i64 %i.bf, 2
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %10 = sub nuw nsw i64 126, %i.bi
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %10)
          to label %.noexc65 unwind label %bb.w

end_hunk_4
begin_hunk_5_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateImE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %10 = sub nuw nsw i64 126, %i.bi
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %10)
          to label %.noexc65 unwind label %bb.w

end_hunk_5
begin_hunk_6_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIaE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 true)
  %i.bf = shl nuw nsw i64 %i.be, 1
  %10 = sub nuw nsw i64 126, %i.bf
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ay, ptr %i.ba, i64 noundef %10)
          to label %.noexc65 unwind label %bb.w

end_hunk_6
begin_hunk_7_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIsE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
  %i.bg = ashr exact i64 %i.bf, 1
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %10 = sub nuw nsw i64 126, %i.bi
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %10)
          to label %.noexc65 unwind label %bb.w

end_hunk_7
begin_hunk_8_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIiE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
  %i.bg = ashr exact i64 %i.bf, 2
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %10 = sub nuw nsw i64 126, %i.bi
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %10)
          to label %.noexc65 unwind label %bb.w

end_hunk_8
begin_hunk_9_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIlE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %10 = sub nuw nsw i64 126, %i.bi
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %10)
          to label %.noexc65 unwind label %bb.w

end_hunk_9
begin_hunk_10_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIfE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
  %i.bg = ashr exact i64 %i.bf, 2
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %10 = sub nuw nsw i64 126, %i.bi
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %10)
          to label %.noexc65 unwind label %bb.w

end_hunk_10
begin_hunk_11_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateIdE14InitializeBinsINS_16HistogramFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %10 = sub nuw nsw i64 126, %i.bi
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.ba, ptr %i.bc, i64 noundef %10)
          to label %.noexc65 unwind label %bb.w

end_hunk_11
begin_hunk_12_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateINS_8string_tEE14InitializeBinsINS_22HistogramStringFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
  %i.bh = ashr exact i64 %i.bg, 4
  %i.bi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 true)
  %i.bj = shl nuw nsw i64 %i.bi, 1
  %11 = sub nuw nsw i64 126, %i.bj
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.bb, ptr %i.bd, i64 noundef %11)
          to label %.noexc65 unwind label %bb.w

end_hunk_12
begin_hunk_13_@_ZN6duckdb12_GLOBAL__N_117HistogramBinStateINS_8string_tEE14InitializeBinsINS_23HistogramGenericFunctorEEEvRNS_6VectorEmmRNS_18AggregateInputDataE:bb.a
  %i.bi = ashr exact i64 %i.bh, 4
  %i.bj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %13 = sub nuw nsw i64 126, %i.bk
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb8string_tESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.bc, ptr %i.be, i64 noundef %13)
          to label %.noexc68 unwind label %bb.aa

end_hunk_13
