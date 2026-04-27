inline.NumInlined: 7915
inline.NumDeleted: 2037
begin_hunk_0_@_ZN6duckdb7TryCast9OperationINS_8string_tEaEEbT_RT0_b:bb.a
._crit_edge.i55.i.i:                              ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i
  %i.kw = add i64 %i.kt, 128
  %or.cond.i.i.i.i.i56.i.i = icmp ult i64 %i.kw, 256
  br i1 %or.cond.i.i.i.i.i56.i.i, label %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i63.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i63.i.i: ; preds = %._crit_edge.i55.i.i
  %sext.i.i = shl i64 %i.ku, 56
  %8 = ashr exact i64 %sext.i.i, 56
  br label %.sink.split.i

bb.bz:                                            ; preds = %bb.bm
  %i.kx = add i8 %i.in, -48
end_hunk_0
begin_hunk_1_@_ZN6duckdb7TryCast9OperationINS_8string_tEaEEbT_RT0_b:bb.a
  %i.oq = icmp ugt i64 %.8.i73277281285.i.i, %.mux.i94.i.i
  br i1 %i.oq, label %bb.cx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.sink.split.i:                                    ; preds = %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i63.i.i, %._crit_edge.i.i.i
  %.lcssa548.sink.i = phi i64 [ %8, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i63.i.i ], [ %i.kb, %._crit_edge.i.i.i ]
  store i64 %.lcssa548.sink.i, ptr %6, align 8, !tbaa !70
  br label %bb.cx

end_hunk_1
begin_hunk_2_@_ZN6duckdb7TryCast9OperationINS_8string_tEsEEbT_RT0_b:bb.a
._crit_edge.i55.i.i:                              ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIsEELb0EEEbRT_h.exit.i.i.i
  %i.if = add i64 %i.ic, 32768
  %or.cond.i.i.i.i.i56.i.i = icmp ult i64 %i.if, 65536
  br i1 %or.cond.i.i.i.i.i56.i.i, label %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i63.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i63.i.i: ; preds = %._crit_edge.i55.i.i
  %sext.i.i = shl i64 %i.id, 48
  %9 = ashr exact i64 %sext.i.i, 48
  br label %.sink.split.i

bb.bf:                                            ; preds = %bb.as
  %i.ig = add i8 %i.fw, -48
end_hunk_2
begin_hunk_3_@_ZN6duckdb7TryCast9OperationINS_8string_tEsEEbT_RT0_b:bb.a
  %i.lz = icmp ugt i64 %.8.i73277281285.i.i, %.mux.i94.i.i
  br i1 %i.lz, label %bb.cd, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.sink.split.i:                                    ; preds = %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i63.i.i, %._crit_edge.i.i.i
  %.lcssa420.sink.i = phi i64 [ %9, %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i63.i.i ], [ %i.hk, %._crit_edge.i.i.i ]
  store i64 %.lcssa420.sink.i, ptr %7, align 8, !tbaa !84
  br label %bb.cd

end_hunk_3
begin_hunk_4_@_ZN6duckdb7TryCast9OperationINS_8string_tEiEEbT_RT0_b:bb.a
._crit_edge.i55.i.i:                              ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIiEELb0EEEbRT_h.exit.i.i.i
  %i.le = add i64 %i.lb, 2147483648
  %or.cond.i.i.i.i.i56.i.i = icmp ult i64 %i.le, 4294967296
  br i1 %or.cond.i.i.i.i.i56.i.i, label %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i63.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i63.i.i: ; preds = %._crit_edge.i55.i.i
  %sext.i.i = shl i64 %i.lc, 32
  %8 = ashr exact i64 %sext.i.i, 32
  br label %.sink.split.i

bb.bz:                                            ; preds = %bb.bm
  %i.lf = add i8 %i.iv, -48
end_hunk_4
begin_hunk_5_@_ZN6duckdb7TryCast9OperationINS_8string_tEiEEbT_RT0_b:bb.a
  %i.oy = icmp ugt i64 %.8.i73277281285.i.i, %.mux.i94.i.i
  br i1 %i.oy, label %bb.cx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.sink.split.i:                                    ; preds = %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i63.i.i, %._crit_edge.i.i.i
  %.lcssa551.sink.i = phi i64 [ %8, %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i63.i.i ], [ %i.kj, %._crit_edge.i.i.i ]
  store i64 %.lcssa551.sink.i, ptr %6, align 8, !tbaa !102
  br label %bb.cx

end_hunk_5
