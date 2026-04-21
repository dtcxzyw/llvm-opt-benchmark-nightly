inline.NumInlined: 35645
inline.NumDeleted: 8765
begin_hunk_0_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEES3_NS_12_GLOBAL__N_119HugeintSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
.lr.ph52.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.x, align 8, !tbaa !90, !alias.scope !1116, !noalias !1113
  %.sroa.22.0..sroa_idx.i.i.promoted.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i32.i.i, align 8, !tbaa !90, !alias.scope !1116, !noalias !1113
  store i8 1, ptr %3, align 8, !tbaa !929, !alias.scope !1116, !noalias !1113
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph52.i.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEES3_NS_12_GLOBAL__N_119HugeintSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.val29.i.i = load i64, ptr %i.aj, align 8, !tbaa !90, !alias.scope !1113, !noalias !1116
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val30.i.i = load i64, ptr %i.ak, align 8, !tbaa !90, !alias.scope !1113, !noalias !1116
  %i.al = tail call { i64, i64 } @_ZN6duckdb7Hugeint3AddILb1EEENS_9hugeint_tES2_S2_(i64 %i.ai, i64 %i.ah, i64 %.val29.i.i, i64 %.val30.i.i), !noalias !1118 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0      ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.al, 1      ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEES3_NS_12_GLOBAL__N_119HugeintSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.sroa.22.0..sroa_idx.i.i26.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.promoted.i32.i = load i64, ptr %i.bs, align 8, !tbaa !90, !alias.scope !1125, !noalias !1122 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i26.promoted.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i26.i.i, align 8, !tbaa !90, !alias.scope !1125, !noalias !1122 ; 2 uses
  br i1 %.not.i23.i.i, label %.lr.ph6.split.us.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit24.i.i

.lr.ph6.split.us.i.i:                             ; preds = %.lr.ph6.i.i
  store i8 1, ptr %3, align 8, !tbaa !929, !alias.scope !1125, !noalias !1122
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit24.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit24.us.i.i: ; preds = %.noexc34.i, %.lr.ph6.split.us.i.i
  %i.bt = phi i64 [ %.sroa.22.0..sroa_idx.i.i26.promoted.i.i, %.lr.ph6.split.us.i.i ], [ %i.bz, %.noexc34.i ]
  %i.bu = phi i64 [ %.promoted.i32.i, %.lr.ph6.split.us.i.i ], [ %i.by, %.noexc34.i ]
  %.05.us.i.i = phi i64 [ 0, %.lr.ph6.split.us.i.i ], [ %i.ca, %.noexc34.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.05.us.i.i ; 2 uses
  %.val.us.i.i = load i64, ptr %i.bv, align 8, !tbaa !90, !alias.scope !1122, !noalias !1125
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %.val18.us.i.i = load i64, ptr %i.bw, align 8, !tbaa !90, !alias.scope !1122, !noalias !1125
  %i.bx = invoke { i64, i64 } @_ZN6duckdb7Hugeint3AddILb1EEENS_9hugeint_tES2_S2_(i64 %i.bu, i64 %i.bt, i64 %.val.us.i.i, i64 %.val18.us.i.i)
          to label %.noexc34.i unwind label %.loopexit.i ; 2 uses

end_hunk_2
