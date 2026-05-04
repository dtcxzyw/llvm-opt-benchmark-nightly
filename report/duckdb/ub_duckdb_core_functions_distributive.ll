inline.NumInlined: 35645
inline.NumDeleted: 8765
begin_hunk_0_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEbNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond62.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_8SumStateIlEEbNS_12_GLOBAL__N_119IntegerSumOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !828

.lr.ph47.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load i64, ptr %i.t, align 8, !tbaa !771, !alias.scope !824, !noalias !821 ; 2 uses
  %i.bf = sub nuw i64 %i.v, %.sroa.4.049.us.i.i
  %xtraiter51 = and i64 %i.bf, 7                  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEbNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.us.i.i:                      ; preds = %.lr.ph47.us.i.i.new, %.prol.loopexit50
  %.lcssa43 = phi i64 [ %.lcssa43.unr, %.prol.loopexit50 ], [ %i.bc, %.lr.ph47.us.i.i.new ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !824, !noalias !821
  store i64 %.lcssa43, ptr %i.t, align 8, !tbaa !771, !alias.scope !824, !noalias !821
  br label %.loopexit.us.i.i

end_hunk_1
begin_hunk_2_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEbNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.ca, label %.lr.ph47.i.i, label %.loopexit.i.i

.lr.ph47.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.t, align 8, !tbaa !771, !alias.scope !824, !noalias !821 ; 2 uses
  %i.cb = sub nuw i64 %i.bq, %.sroa.4.049.i.i
  %xtraiter = and i64 %i.cb, 7                    ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEbNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph47.i.i.new, %.prol.loopexit
  %.lcssa45 = phi i64 [ %.lcssa45.unr, %.prol.loopexit ], [ %i.do, %.lr.ph47.i.i.new ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !824, !noalias !821
  store i64 %.lcssa45, ptr %i.t, align 8, !tbaa !771, !alias.scope !824, !noalias !821
  br label %.loopexit.i.i

end_hunk_3
begin_hunk_4_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEbNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i26.i
  %.not.i21.i.i = icmp eq ptr %.val.i, null
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i27.i = load i64, ptr %i.ey, align 8, !tbaa !771, !alias.scope !836, !noalias !833 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
end_hunk_4
begin_hunk_5_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEbNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i29.i:                       ; preds = %..loopexit_crit_edge.i29.i.loopexit40.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, %..loopexit_crit_edge.i29.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil
  %.us-phi.i.i = phi i64 [ %i.ic, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.gg, %..loopexit_crit_edge.i29.i.loopexit.unr-lcssa ], [ %i.hx, %..loopexit_crit_edge.i29.i.loopexit40.unr-lcssa ], [ %i.ik, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !836, !noalias !833
  store i64 %.us-phi.i.i, ptr %i.ey, align 8, !tbaa !771, !alias.scope !836, !noalias !833
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_8SumStateIlEEbNS_12_GLOBAL__N_119IntegerSumOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_5
begin_hunk_6_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEsNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond62.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_8SumStateIlEEsNS_12_GLOBAL__N_119IntegerSumOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !911

.lr.ph47.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load i64, ptr %i.s, align 8, !tbaa !771, !alias.scope !905, !noalias !902 ; 2 uses
  %i.ac = sub nuw i64 %i.u, %.sroa.4.049.us.i.i   ; 3 uses
  %min.iters.check43 = icmp ult i64 %i.ac, 4
end_hunk_6
begin_hunk_7_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEsNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.us.i.i:                      ; preds = %scalar.ph42, %middle.block54
  %.lcssa38 = phi i64 [ %i.an, %middle.block54 ], [ %i.z, %scalar.ph42 ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !905, !noalias !902
  store i64 %.lcssa38, ptr %i.s, align 8, !tbaa !771, !alias.scope !905, !noalias !902
  br label %.loopexit.us.i.i

end_hunk_7
begin_hunk_8_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEsNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.bb, label %.lr.ph47.i.i, label %.loopexit.i.i

.lr.ph47.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.s, align 8, !tbaa !771, !alias.scope !905, !noalias !902 ; 2 uses
  %i.bc = sub nuw i64 %i.ar, %.sroa.4.049.i.i     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bc, 4
end_hunk_8
begin_hunk_9_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEsNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i.i:                         ; preds = %scalar.ph, %middle.block
  %.lcssa39 = phi i64 [ %i.bn, %middle.block ], [ %i.br, %scalar.ph ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !905, !noalias !902
  store i64 %.lcssa39, ptr %i.s, align 8, !tbaa !771, !alias.scope !905, !noalias !902
  br label %.loopexit.i.i

end_hunk_9
begin_hunk_10_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEsNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i27.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i28.i = load i64, ptr %i.db, align 8, !tbaa !771, !alias.scope !919, !noalias !916 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
end_hunk_10
begin_hunk_11_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEsNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i30.i:                       ; preds = %..loopexit_crit_edge.i30.i.loopexit79.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, %middle.block71
  %.us-phi.i.i = phi i64 [ %i.dp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ], [ %i.dl, %middle.block71 ], [ %i.fg, %..loopexit_crit_edge.i30.i.loopexit79.unr-lcssa ], [ %i.fo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !919, !noalias !916
  store i64 %.us-phi.i.i, ptr %i.db, align 8, !tbaa !771, !alias.scope !919, !noalias !916
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_8SumStateIlEEsNS_12_GLOBAL__N_119IntegerSumOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_11
begin_hunk_12_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEEiNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond64.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_8SumStateINS_9hugeint_tEEEiNS_12_GLOBAL__N_121SumToHugeintOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !989

.lr.ph49.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load i64, ptr %i.n, align 8, !tbaa !940, !alias.scope !985, !noalias !982 ; 2 uses
  %i.am = sub nuw i64 %i.q, %.sroa.4.051.us.i.i
  %.neg68 = add i64 %.sroa.4.051.us.i.i, 1
end_hunk_12
begin_hunk_13_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEEiNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.us.i.i:                      ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_115SumSetOperationENS_12AddToHugeintEE9OperationIiNS_8SumStateINS_9hugeint_tEEENS1_21SumToHugeintOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.1, %.prol.loopexit51
  %.lcssa47 = phi i64 [ %.lcssa47.unr, %.prol.loopexit51 ], [ %i.af, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_115SumSetOperationENS_12AddToHugeintEE9OperationIiNS_8SumStateINS_9hugeint_tEEENS1_21SumToHugeintOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.1 ]
  store i8 1, ptr %3, align 8, !tbaa !929, !alias.scope !985, !noalias !982
  store i64 %.lcssa47, ptr %i.n, align 8, !tbaa !940, !alias.scope !985, !noalias !982
  br label %.loopexit.us.i.i

end_hunk_13
begin_hunk_14_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEEiNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.bc, label %.lr.ph49.i.i, label %.loopexit.i.i

.lr.ph49.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.n, align 8, !tbaa !940, !alias.scope !985, !noalias !982 ; 2 uses
  %i.bd = sub nuw i64 %i.ba, %.sroa.4.051.i.i
  %.neg = add i64 %.sroa.4.051.i.i, 1
end_hunk_14
begin_hunk_15_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEEiNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i.i:                         ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_115SumSetOperationENS_12AddToHugeintEE9OperationIiNS_8SumStateINS_9hugeint_tEEENS1_21SumToHugeintOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1, %.prol.loopexit
  %.lcssa49 = phi i64 [ %.lcssa49.unr, %.prol.loopexit ], [ %i.cb, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_115SumSetOperationENS_12AddToHugeintEE9OperationIiNS_8SumStateINS_9hugeint_tEEENS1_21SumToHugeintOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1 ]
  store i8 1, ptr %3, align 8, !tbaa !929, !alias.scope !985, !noalias !982
  store i64 %.lcssa49, ptr %i.n, align 8, !tbaa !940, !alias.scope !985, !noalias !982
  br label %.loopexit.i.i

end_hunk_15
begin_hunk_16_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEEiNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i31.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %.promoted.i32.i = load i64, ptr %i.ds, align 8, !tbaa !940, !alias.scope !994, !noalias !991 ; 4 uses
end_hunk_16
begin_hunk_17_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEEiNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i34.i:                       ; preds = %..loopexit_crit_edge.i34.i.loopexit44.unr-lcssa, %bb.x, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, %..loopexit_crit_edge.i34.i.loopexit.unr-lcssa, %bb.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader
  %.us-phi.i.i = phi i64 [ %i.gk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader ], [ %i.ej, %..loopexit_crit_edge.i34.i.loopexit.unr-lcssa ], [ %i.gk, %bb.w ], [ %i.gb, %..loopexit_crit_edge.i34.i.loopexit44.unr-lcssa ], [ %i.gv, %bb.x ], [ %i.gv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  store i8 1, ptr %3, align 8, !tbaa !929, !alias.scope !994, !noalias !991
  store i64 %.us-phi.i.i, ptr %i.ds, align 8, !tbaa !940, !alias.scope !994, !noalias !991
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_8SumStateINS_9hugeint_tEEEiNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_17
begin_hunk_18_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEElNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond64.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_8SumStateINS_9hugeint_tEEElNS_12_GLOBAL__N_121SumToHugeintOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !1055

.lr.ph49.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load i64, ptr %i.n, align 8, !tbaa !940, !alias.scope !1051, !noalias !1048 ; 2 uses
  %i.ak = sub nuw i64 %i.q, %.sroa.4.051.us.i.i
  %.neg68 = add i64 %.sroa.4.051.us.i.i, 1
end_hunk_18
begin_hunk_19_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEElNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.us.i.i:                      ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_115SumSetOperationENS_12AddToHugeintEE9OperationIlNS_8SumStateINS_9hugeint_tEEENS1_21SumToHugeintOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.1, %.prol.loopexit51
  %.lcssa47 = phi i64 [ %.lcssa47.unr, %.prol.loopexit51 ], [ %i.ad, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_115SumSetOperationENS_12AddToHugeintEE9OperationIlNS_8SumStateINS_9hugeint_tEEENS1_21SumToHugeintOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.us.i.i.1 ]
  store i8 1, ptr %3, align 8, !tbaa !929, !alias.scope !1051, !noalias !1048
  store i64 %.lcssa47, ptr %i.n, align 8, !tbaa !940, !alias.scope !1051, !noalias !1048
  br label %.loopexit.us.i.i

end_hunk_19
begin_hunk_20_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEElNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.az, label %.lr.ph49.i.i, label %.loopexit.i.i

.lr.ph49.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.n, align 8, !tbaa !940, !alias.scope !1051, !noalias !1048 ; 2 uses
  %i.ba = sub nuw i64 %i.ax, %.sroa.4.051.i.i
  %.neg = add i64 %.sroa.4.051.i.i, 1
end_hunk_20
begin_hunk_21_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEElNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i.i:                         ; preds = %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_115SumSetOperationENS_12AddToHugeintEE9OperationIlNS_8SumStateINS_9hugeint_tEEENS1_21SumToHugeintOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1, %.prol.loopexit
  %.lcssa49 = phi i64 [ %.lcssa49.unr, %.prol.loopexit ], [ %i.bv, %_ZN6duckdb16BaseSumOperationINS_12_GLOBAL__N_115SumSetOperationENS_12AddToHugeintEE9OperationIlNS_8SumStateINS_9hugeint_tEEENS1_21SumToHugeintOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputE.exit.i.i.1 ]
  store i8 1, ptr %3, align 8, !tbaa !929, !alias.scope !1051, !noalias !1048
  store i64 %.lcssa49, ptr %i.n, align 8, !tbaa !940, !alias.scope !1051, !noalias !1048
  br label %.loopexit.i.i

end_hunk_21
begin_hunk_22_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEElNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i31.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %.promoted.i32.i = load i64, ptr %i.dk, align 8, !tbaa !940, !alias.scope !1060, !noalias !1057 ; 4 uses
end_hunk_22
begin_hunk_23_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEElNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i34.i:                       ; preds = %..loopexit_crit_edge.i34.i.loopexit44.unr-lcssa, %bb.x, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, %..loopexit_crit_edge.i34.i.loopexit.unr-lcssa, %bb.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader
  %.us-phi.i.i = phi i64 [ %i.fw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil.preheader ], [ %i.dz, %..loopexit_crit_edge.i34.i.loopexit.unr-lcssa ], [ %i.fw, %bb.w ], [ %i.fo, %..loopexit_crit_edge.i34.i.loopexit44.unr-lcssa ], [ %i.gg, %bb.x ], [ %i.gg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  store i8 1, ptr %3, align 8, !tbaa !929, !alias.scope !1060, !noalias !1057
  store i64 %.us-phi.i.i, ptr %i.dk, align 8, !tbaa !940, !alias.scope !1060, !noalias !1057
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_8SumStateINS_9hugeint_tEEElNS_12_GLOBAL__N_121SumToHugeintOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_23
begin_hunk_24_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEES3_NS_12_GLOBAL__N_119HugeintSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.ag, label %.lr.ph52.i.i, label %.loopexit.i.i

.lr.ph52.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.x, align 8, !tbaa !90, !alias.scope !1116, !noalias !1113
  %.sroa.22.0..sroa_idx.i.i.promoted.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i32.i.i, align 8, !tbaa !90, !alias.scope !1116, !noalias !1113
  br label %bb.e
end_hunk_24
begin_hunk_25_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEES3_NS_12_GLOBAL__N_119HugeintSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.val29.i.i = load i64, ptr %i.aj, align 8, !tbaa !90, !alias.scope !1113, !noalias !1116
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val30.i.i = load i64, ptr %i.ak, align 8, !tbaa !90, !alias.scope !1113, !noalias !1116
  store i8 1, ptr %3, align 8, !tbaa !929, !alias.scope !1116, !noalias !1113
  %i.al = tail call { i64, i64 } @_ZN6duckdb7Hugeint3AddILb1EEENS_9hugeint_tES2_S2_(i64 %i.ai, i64 %i.ah, i64 %.val29.i.i, i64 %.val30.i.i), !noalias !1118 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0      ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.al, 1      ; 2 uses
end_hunk_25
begin_hunk_26_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateINS_9hugeint_tEEES3_NS_12_GLOBAL__N_119HugeintSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %.sroa.22.0..sroa_idx.i.i26.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.promoted.i32.i = load i64, ptr %i.bs, align 8, !tbaa !90, !alias.scope !1125, !noalias !1122 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i26.promoted.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i26.i.i, align 8, !tbaa !90, !alias.scope !1125, !noalias !1122 ; 2 uses
  br i1 %.not.i23.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit24.us.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit24.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit24.us.i.i: ; preds = %.lr.ph6.i.i, %.noexc34.i
  %i.bt = phi i64 [ %i.bz, %.noexc34.i ], [ %.sroa.22.0..sroa_idx.i.i26.promoted.i.i, %.lr.ph6.i.i ]
  %i.bu = phi i64 [ %i.by, %.noexc34.i ], [ %.promoted.i32.i, %.lr.ph6.i.i ]
  %.05.us.i.i = phi i64 [ %i.ca, %.noexc34.i ], [ 0, %.lr.ph6.i.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.05.us.i.i ; 2 uses
  %.val.us.i.i = load i64, ptr %i.bv, align 8, !tbaa !90, !alias.scope !1122, !noalias !1125
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %.val18.us.i.i = load i64, ptr %i.bw, align 8, !tbaa !90, !alias.scope !1122, !noalias !1125
  store i8 1, ptr %3, align 8, !tbaa !929, !alias.scope !1125, !noalias !1122
  %i.bx = invoke { i64, i64 } @_ZN6duckdb7Hugeint3AddILb1EEENS_9hugeint_tES2_S2_(i64 %i.bu, i64 %i.bt, i64 %.val.us.i.i, i64 %.val18.us.i.i)
          to label %.noexc34.i unwind label %.loopexit.i ; 2 uses

end_hunk_26
begin_hunk_27_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond62.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !1186

.lr.ph47.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load i64, ptr %i.s, align 8, !tbaa !771, !alias.scope !1182, !noalias !1179 ; 2 uses
  %i.ac = sub nuw i64 %i.u, %.sroa.4.049.us.i.i   ; 3 uses
  %min.iters.check43 = icmp ult i64 %i.ac, 4
end_hunk_27
begin_hunk_28_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.us.i.i:                      ; preds = %scalar.ph42, %middle.block54
  %.lcssa38 = phi i64 [ %i.an, %middle.block54 ], [ %i.z, %scalar.ph42 ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !1182, !noalias !1179
  store i64 %.lcssa38, ptr %i.s, align 8, !tbaa !771, !alias.scope !1182, !noalias !1179
  br label %.loopexit.us.i.i

end_hunk_28
begin_hunk_29_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.bb, label %.lr.ph47.i.i, label %.loopexit.i.i

.lr.ph47.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.s, align 8, !tbaa !771, !alias.scope !1182, !noalias !1179 ; 2 uses
  %i.bc = sub nuw i64 %i.ar, %.sroa.4.049.i.i     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bc, 4
end_hunk_29
begin_hunk_30_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i.i:                         ; preds = %scalar.ph, %middle.block
  %.lcssa39 = phi i64 [ %i.bn, %middle.block ], [ %i.br, %scalar.ph ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !1182, !noalias !1179
  store i64 %.lcssa39, ptr %i.s, align 8, !tbaa !771, !alias.scope !1182, !noalias !1179
  br label %.loopexit.i.i

end_hunk_30
begin_hunk_31_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i27.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i28.i = load i64, ptr %i.db, align 8, !tbaa !771, !alias.scope !1194, !noalias !1191 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
end_hunk_31
begin_hunk_32_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i30.i:                       ; preds = %..loopexit_crit_edge.i30.i.loopexit79.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, %middle.block71
  %.us-phi.i.i = phi i64 [ %i.dp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ], [ %i.dl, %middle.block71 ], [ %i.fg, %..loopexit_crit_edge.i30.i.loopexit79.unr-lcssa ], [ %i.fo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !1194, !noalias !1191
  store i64 %.us-phi.i.i, ptr %i.db, align 8, !tbaa !771, !alias.scope !1194, !noalias !1191
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_32
begin_hunk_33_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond62.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !1268

.lr.ph47.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load i64, ptr %i.r, align 8, !tbaa !771, !alias.scope !1264, !noalias !1261 ; 2 uses
  %i.aa = sub nuw i64 %i.t, %.sroa.4.049.us.i.i   ; 3 uses
  %min.iters.check43 = icmp ult i64 %i.aa, 4
end_hunk_33
begin_hunk_34_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.us.i.i:                      ; preds = %scalar.ph42, %middle.block54
  %.lcssa38 = phi i64 [ %i.aj, %middle.block54 ], [ %i.x, %scalar.ph42 ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !1264, !noalias !1261
  store i64 %.lcssa38, ptr %i.r, align 8, !tbaa !771, !alias.scope !1264, !noalias !1261
  br label %.loopexit.us.i.i

end_hunk_34
begin_hunk_35_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.aw, label %.lr.ph47.i.i, label %.loopexit.i.i

.lr.ph47.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.r, align 8, !tbaa !771, !alias.scope !1264, !noalias !1261 ; 2 uses
  %i.ax = sub nuw i64 %i.an, %.sroa.4.049.i.i     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ax, 4
end_hunk_35
begin_hunk_36_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i.i:                         ; preds = %scalar.ph, %middle.block
  %.lcssa39 = phi i64 [ %i.bg, %middle.block ], [ %i.bj, %scalar.ph ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !1264, !noalias !1261
  store i64 %.lcssa39, ptr %i.r, align 8, !tbaa !771, !alias.scope !1264, !noalias !1261
  br label %.loopexit.i.i

end_hunk_36
begin_hunk_37_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i27.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i28.i = load i64, ptr %i.cq, align 8, !tbaa !771, !alias.scope !1276, !noalias !1273 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
end_hunk_37
begin_hunk_38_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i30.i:                       ; preds = %..loopexit_crit_edge.i30.i.loopexit79.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, %middle.block71
  %.us-phi.i.i = phi i64 [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ], [ %i.cy, %middle.block71 ], [ %i.en, %..loopexit_crit_edge.i30.i.loopexit79.unr-lcssa ], [ %i.eu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !1276, !noalias !1273
  store i64 %.us-phi.i.i, ptr %i.cq, align 8, !tbaa !771, !alias.scope !1276, !noalias !1273
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_38
begin_hunk_39_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond62.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !2342

.lr.ph47.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load double, ptr %i.r, align 8, !tbaa !2286, !alias.scope !2338, !noalias !2335 ; 2 uses
  %i.av = sub nuw i64 %i.t, %.sroa.4.049.us.i.i
  %xtraiter51 = and i64 %i.av, 7                  ; 2 uses
end_hunk_39
begin_hunk_40_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.us.i.i:                      ; preds = %.lr.ph47.us.i.i.new, %.prol.loopexit50
  %.lcssa43 = phi double [ %.lcssa43.unr, %.prol.loopexit50 ], [ %i.as, %.lr.ph47.us.i.i.new ]
  store i8 1, ptr %3, align 8, !tbaa !2284, !alias.scope !2338, !noalias !2335
  store double %.lcssa43, ptr %i.r, align 8, !tbaa !2286, !alias.scope !2338, !noalias !2335
  br label %.loopexit.us.i.i

end_hunk_40
begin_hunk_41_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.bo, label %.lr.ph47.i.i, label %.loopexit.i.i

.lr.ph47.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load double, ptr %i.r, align 8, !tbaa !2286, !alias.scope !2338, !noalias !2335 ; 2 uses
  %i.bp = sub nuw i64 %i.bf, %.sroa.4.049.i.i
  %xtraiter = and i64 %i.bp, 7                    ; 2 uses
end_hunk_41
begin_hunk_42_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph47.i.i.new, %.prol.loopexit
  %.lcssa45 = phi double [ %.lcssa45.unr, %.prol.loopexit ], [ %i.ct, %.lr.ph47.i.i.new ]
  store i8 1, ptr %3, align 8, !tbaa !2284, !alias.scope !2338, !noalias !2335
  store double %.lcssa45, ptr %i.r, align 8, !tbaa !2286, !alias.scope !2338, !noalias !2335
  br label %.loopexit.i.i

end_hunk_42
begin_hunk_43_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i27.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i28.i = load double, ptr %i.ea, align 8, !tbaa !2286, !alias.scope !2349, !noalias !2346 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
end_hunk_43
begin_hunk_44_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i30.i:                       ; preds = %..loopexit_crit_edge.i30.i.loopexit40.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil
  %.us-phi.i.i = phi double [ %i.gq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.fa, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ], [ %i.gm, %..loopexit_crit_edge.i30.i.loopexit40.unr-lcssa ], [ %i.gx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ]
  store i8 1, ptr %3, align 8, !tbaa !2284, !alias.scope !2349, !noalias !2346
  store double %.us-phi.i.i, ptr %i.ea, align 8, !tbaa !2286, !alias.scope !2349, !noalias !2346
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_44
begin_hunk_45_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond66.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !2491

.lr.ph47.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load double, ptr %i.y, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484 ; 2 uses
  %.promoted49.us.i.i = load double, ptr %i.x, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484 ; 2 uses
  %i.bd = sub nuw i64 %i.aa, %.sroa.4.051.us.i.i
end_hunk_45
begin_hunk_46_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
..loopexit_crit_edge.us.i.i:                      ; preds = %.lr.ph47.us.i.i.new, %.prol.loopexit68
  %.lcssa62 = phi double [ %.lcssa62.unr, %.prol.loopexit68 ], [ %i.ay, %.lr.ph47.us.i.i.new ]
  %.lcssa61 = phi double [ %.lcssa61.unr, %.prol.loopexit68 ], [ %i.ba, %.lr.ph47.us.i.i.new ]
  store i8 1, ptr %3, align 8, !tbaa !2432, !alias.scope !2487, !noalias !2484
  store double %.lcssa61, ptr %i.y, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484
  store double %.lcssa62, ptr %i.x, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484
  br label %.loopexit.us.i.i
end_hunk_46
begin_hunk_47_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.bt, label %.lr.ph47.i.i, label %.loopexit.i.i

.lr.ph47.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load double, ptr %i.y, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484 ; 2 uses
  %.promoted49.i.i = load double, ptr %i.x, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484 ; 2 uses
  %i.bu = sub nuw i64 %i.br, %.sroa.4.051.i.i
end_hunk_47
begin_hunk_48_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph47.i.i.new, %.prol.loopexit
  %.lcssa65 = phi double [ %.lcssa65.unr, %.prol.loopexit ], [ %i.db, %.lr.ph47.i.i.new ]
  %.lcssa64 = phi double [ %.lcssa64.unr, %.prol.loopexit ], [ %i.dd, %.lr.ph47.i.i.new ]
  store i8 1, ptr %3, align 8, !tbaa !2432, !alias.scope !2487, !noalias !2484
  store double %.lcssa64, ptr %i.y, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484
  store double %.lcssa65, ptr %i.x, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484
  br label %.loopexit.i.i
end_hunk_48
begin_hunk_49_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i27.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.promoted.i28.i = load double, ptr %i.en, align 8, !tbaa !2146, !alias.scope !2498, !noalias !2495 ; 4 uses
end_hunk_49
begin_hunk_50_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
..loopexit_crit_edge.i30.i:                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil
  %.us-phi.i.i = phi double [ %i.hf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.fm, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ], [ %i.gx, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ], [ %i.ho, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %.us-phi8.i.i = phi double [ %i.hh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.fo, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ], [ %i.gz, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ], [ %i.hq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  store i8 1, ptr %3, align 8, !tbaa !2432, !alias.scope !2498, !noalias !2495
  store double %.us-phi8.i.i, ptr %i.en, align 8, !tbaa !2146, !alias.scope !2498, !noalias !2495
  store double %.us-phi.i.i, ptr %i.em, align 8, !tbaa !2146, !alias.scope !2498, !noalias !2495
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
end_hunk_50
begin_hunk_51_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i20.i.i = icmp eq ptr %.val.i, null
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.promoted.i30.i = load i8, ptr %i.fv, align 1, !alias.scope !10824, !noalias !10821 ; 4 uses
  br i1 %.not.i20.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader
end_hunk_51
begin_hunk_52_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i31.i:                       ; preds = %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil, %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil
  %.us-phi.i.i = phi i8 [ %i.jh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil ], [ %i.hh, %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa ], [ %i.jb, %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa ], [ %i.jq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil ]
  store i8 0, ptr %3, align 1, !tbaa !10759, !alias.scope !10824, !noalias !10821
  store i8 %.us-phi.i.i, ptr %i.fv, align 1, !alias.scope !10824, !noalias !10821
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_52
begin_hunk_53_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i20.i.i = icmp eq ptr %.val.i, null
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.promoted.i30.i = load i8, ptr %i.fv, align 1, !alias.scope !10896, !noalias !10893 ; 4 uses
  br i1 %.not.i20.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader
end_hunk_53
begin_hunk_54_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i31.i:                       ; preds = %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil, %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil
  %.us-phi.i.i = phi i8 [ %i.jh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil ], [ %i.hh, %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa ], [ %i.jb, %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa ], [ %i.jq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil ]
  store i8 0, ptr %3, align 1, !tbaa !10759, !alias.scope !10896, !noalias !10893
  store i8 %.us-phi.i.i, ptr %i.fv, align 1, !alias.scope !10896, !noalias !10893
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_54
