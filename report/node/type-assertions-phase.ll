inline.NumInlined: 47242
inline.NumDeleted: 15222
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb0EEEvRKNS2_5BlockEPj:bb.a
  %i.de = shl nuw i64 %i.dd, 3                    ; 2 uses
  %i.df = getelementptr i8, ptr %.pre, i64 %i.de
  %scevgep = getelementptr i8, ptr %i.df, i64 8
  %25 = sub nuw nsw i64 -8, %i.de
  %scevgep170 = getelementptr i8, ptr %.pre146, i64 %25
  %bound0 = icmp ult ptr %.pre, %.pre146
  %bound1 = icmp ult ptr %scevgep170, %scevgep
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb1EEEvRKNS2_5BlockEPj:bb.a
  %i.de = shl nuw i64 %i.dd, 3                    ; 2 uses
  %i.df = getelementptr i8, ptr %.pre, i64 %i.de
  %scevgep = getelementptr i8, ptr %i.df, i64 8
  %24 = sub nuw nsw i64 -8, %i.de
  %scevgep186 = getelementptr i8, ptr %.pre160, i64 %24
  %bound0 = icmp ult ptr %.pre, %.pre160
  %bound1 = icmp ult ptr %scevgep186, %scevgep
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S6_S7_S9_EEEEEEEEEEEEEEEEEE4BindEPNS2_5BlockE:bb.a
  %i.ad = shl nuw i64 %i.ac, 3                    ; 2 uses
  %i.ae = getelementptr i8, ptr %.pre, i64 %i.ad
  %scevgep = getelementptr i8, ptr %i.ae, i64 8
  %6 = sub nuw nsw i64 -8, %i.ad
  %scevgep72 = getelementptr i8, ptr %.pre56, i64 %6
  %bound0 = icmp ult ptr %.pre, %.pre56
  %bound1 = icmp ult ptr %scevgep72, %scevgep
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE23RecordOldEpochAndSetNewEPNS2_5BlockE:bb.a
  %i.az = shl nuw i64 %i.ay, 3                    ; 2 uses
  %i.ba = getelementptr i8, ptr %.pre.i18, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.ba, i64 8
  %3 = sub nuw nsw i64 -8, %i.az
  %scevgep46 = getelementptr i8, ptr %.pre8.i, i64 %3
  %bound0 = icmp ult ptr %.pre.i18, %.pre8.i
  %bound1 = icmp ult ptr %scevgep46, %scevgep
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE4BindEPNS2_5BlockE:bb.a
  %i.de = shl nuw i64 %i.dd, 3                    ; 2 uses
  %i.df = getelementptr i8, ptr %.pre, i64 %i.de
  %scevgep = getelementptr i8, ptr %i.df, i64 8
  %4 = sub nuw nsw i64 -8, %i.de
  %scevgep56 = getelementptr i8, ptr %.pre40, i64 %4
  %bound0 = icmp ult ptr %.pre, %.pre40
  %bound1 = icmp ult ptr %scevgep56, %scevgep
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerES4_EEEEEEEE21ReduceCatchBlockBeginEv:bb.a
  %i.ai = shl nuw i64 %i.ah, 3                    ; 2 uses
  %i.aj = getelementptr i8, ptr %.pre.i, i64 %i.ai
  %scevgep = getelementptr i8, ptr %i.aj, i64 8
  %3 = sub nuw nsw i64 -8, %i.ai
  %scevgep27 = getelementptr i8, ptr %.pre8.i, i64 %3
  %bound0 = icmp ult ptr %.pre.i, %.pre8.i
  %bound1 = icmp ult ptr %scevgep27, %scevgep
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S6_S7_S9_EEEEEEEEEEEEEEEEEE10ResolvePhiIZNSM_22AssembleOutputGraphPhiERKNS2_5PhiOpEEUlNS2_7OpIndexEiiE_EESR_SQ_OT_NS2_22RegisterRepresentationE:bb.a
  %i.fj = shl nuw i64 %i.fi, 2                    ; 2 uses
  %i.fk = getelementptr i8, ptr %i.ek, i64 %i.fj
  %scevgep = getelementptr i8, ptr %i.fk, i64 4
  %5 = sub nuw nsw i64 -4, %i.fj
  %scevgep159 = getelementptr i8, ptr %i.ei, i64 %5
  %bound0 = icmp ult ptr %i.ek, %i.ei
  %bound1 = icmp ult ptr %scevgep159, %scevgep
end_hunk_6
