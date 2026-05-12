inline.NumInlined: 24506
inline.NumDeleted: 9549
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockE:bb.a
  %i.ad = shl nuw i64 %i.ac, 3                    ; 2 uses
  %i.ae = getelementptr i8, ptr %.pre, i64 %i.ad
  %scevgep = getelementptr i8, ptr %i.ae, i64 8
  %6 = sub nuw nsw i64 -8, %i.ad
  %scevgep72 = getelementptr i8, ptr %.pre56, i64 %6
  %bound0 = icmp ult ptr %.pre, %.pre56
  %bound1 = icmp ult ptr %scevgep72, %scevgep
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES4_EEEEEEEE21ReduceCatchBlockBeginEv:bb.a
  %i.ai = shl nuw i64 %i.ah, 3                    ; 2 uses
  %i.aj = getelementptr i8, ptr %.pre.i, i64 %i.ai
  %scevgep = getelementptr i8, ptr %i.aj, i64 8
  %3 = sub nuw nsw i64 -8, %i.ai
  %scevgep27 = getelementptr i8, ptr %.pre8.i, i64 %3
  %bound0 = icmp ult ptr %.pre.i, %.pre8.i
  %bound1 = icmp ult ptr %scevgep27, %scevgep
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE10ResolvePhiIZNSK_22AssembleOutputGraphPhiERKNS2_5PhiOpEEUlNS2_7OpIndexEiiE_EESP_SO_OT_NS2_22RegisterRepresentationE:bb.a
  %i.fj = shl nuw i64 %i.fi, 2                    ; 2 uses
  %i.fk = getelementptr i8, ptr %i.ek, i64 %i.fj
  %scevgep = getelementptr i8, ptr %i.fk, i64 4
  %5 = sub nuw nsw i64 -4, %i.fj
  %scevgep159 = getelementptr i8, ptr %i.ei, i64 %5
  %bound0 = icmp ult ptr %i.ek, %i.ei
  %bound1 = icmp ult ptr %scevgep159, %scevgep
end_hunk_2
