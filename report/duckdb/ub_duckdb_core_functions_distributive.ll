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

..loopexit_crit_edge.us.i.i:                      ; preds = %scalar.ph42, %middle.block55
  %.lcssa38 = phi i64 [ %i.an, %middle.block55 ], [ %i.z, %scalar.ph42 ]
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

..loopexit_crit_edge.i30.i:                       ; preds = %..loopexit_crit_edge.i30.i.loopexit80.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, %middle.block72
  %.us-phi.i.i = phi i64 [ %i.dp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ], [ %i.dl, %middle.block72 ], [ %i.fg, %..loopexit_crit_edge.i30.i.loopexit80.unr-lcssa ], [ %i.fo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ]
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
  store i8 1, ptr %3, align 8, !tbaa !929, !alias.scope !1116, !noalias !1113
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph52.i.i
end_hunk_24
begin_hunk_25_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond62.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !1186

.lr.ph47.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load i64, ptr %i.s, align 8, !tbaa !771, !alias.scope !1182, !noalias !1179 ; 2 uses
  %i.ac = sub nuw i64 %i.u, %.sroa.4.049.us.i.i   ; 3 uses
  %min.iters.check43 = icmp ult i64 %i.ac, 4
end_hunk_25
begin_hunk_26_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.us.i.i:                      ; preds = %scalar.ph42, %middle.block55
  %.lcssa38 = phi i64 [ %i.an, %middle.block55 ], [ %i.z, %scalar.ph42 ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !1182, !noalias !1179
  store i64 %.lcssa38, ptr %i.s, align 8, !tbaa !771, !alias.scope !1182, !noalias !1179
  br label %.loopexit.us.i.i

end_hunk_26
begin_hunk_27_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.bb, label %.lr.ph47.i.i, label %.loopexit.i.i

.lr.ph47.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.s, align 8, !tbaa !771, !alias.scope !1182, !noalias !1179 ; 2 uses
  %i.bc = sub nuw i64 %i.ar, %.sroa.4.049.i.i     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bc, 4
end_hunk_27
begin_hunk_28_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i.i:                         ; preds = %scalar.ph, %middle.block
  %.lcssa39 = phi i64 [ %i.bn, %middle.block ], [ %i.br, %scalar.ph ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !1182, !noalias !1179
  store i64 %.lcssa39, ptr %i.s, align 8, !tbaa !771, !alias.scope !1182, !noalias !1179
  br label %.loopexit.i.i

end_hunk_28
begin_hunk_29_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i27.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i28.i = load i64, ptr %i.db, align 8, !tbaa !771, !alias.scope !1194, !noalias !1191 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
end_hunk_29
begin_hunk_30_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i30.i:                       ; preds = %..loopexit_crit_edge.i30.i.loopexit80.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, %middle.block72
  %.us-phi.i.i = phi i64 [ %i.dp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ], [ %i.dl, %middle.block72 ], [ %i.fg, %..loopexit_crit_edge.i30.i.loopexit80.unr-lcssa ], [ %i.fo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !1194, !noalias !1191
  store i64 %.us-phi.i.i, ptr %i.db, align 8, !tbaa !771, !alias.scope !1194, !noalias !1191
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_8SumStateIlEEiNS_12_GLOBAL__N_119IntegerSumOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_30
begin_hunk_31_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond62.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !1268

.lr.ph47.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load i64, ptr %i.r, align 8, !tbaa !771, !alias.scope !1264, !noalias !1261 ; 2 uses
  %i.aa = sub nuw i64 %i.t, %.sroa.4.049.us.i.i   ; 3 uses
  %min.iters.check43 = icmp ult i64 %i.aa, 4
end_hunk_31
begin_hunk_32_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.us.i.i:                      ; preds = %scalar.ph42, %middle.block55
  %.lcssa38 = phi i64 [ %i.aj, %middle.block55 ], [ %i.x, %scalar.ph42 ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !1264, !noalias !1261
  store i64 %.lcssa38, ptr %i.r, align 8, !tbaa !771, !alias.scope !1264, !noalias !1261
  br label %.loopexit.us.i.i

end_hunk_32
begin_hunk_33_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.aw, label %.lr.ph47.i.i, label %.loopexit.i.i

.lr.ph47.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.r, align 8, !tbaa !771, !alias.scope !1264, !noalias !1261 ; 2 uses
  %i.ax = sub nuw i64 %i.an, %.sroa.4.049.i.i     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ax, 4
end_hunk_33
begin_hunk_34_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i.i:                         ; preds = %scalar.ph, %middle.block
  %.lcssa39 = phi i64 [ %i.bg, %middle.block ], [ %i.bj, %scalar.ph ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !1264, !noalias !1261
  store i64 %.lcssa39, ptr %i.r, align 8, !tbaa !771, !alias.scope !1264, !noalias !1261
  br label %.loopexit.i.i

end_hunk_34
begin_hunk_35_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i27.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i28.i = load i64, ptr %i.cq, align 8, !tbaa !771, !alias.scope !1276, !noalias !1273 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
end_hunk_35
begin_hunk_36_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i30.i:                       ; preds = %..loopexit_crit_edge.i30.i.loopexit80.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i, %middle.block72
  %.us-phi.i.i = phi i64 [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i ], [ %i.cy, %middle.block72 ], [ %i.en, %..loopexit_crit_edge.i30.i.loopexit80.unr-lcssa ], [ %i.eu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ]
  store i8 1, ptr %3, align 8, !tbaa !769, !alias.scope !1276, !noalias !1273
  store i64 %.us-phi.i.i, ptr %i.cq, align 8, !tbaa !771, !alias.scope !1276, !noalias !1273
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_8SumStateIlEElNS_12_GLOBAL__N_119IntegerSumOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_36
begin_hunk_37_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond62.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !2342

.lr.ph47.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load double, ptr %i.r, align 8, !tbaa !2286, !alias.scope !2338, !noalias !2335 ; 2 uses
  %i.av = sub nuw i64 %i.t, %.sroa.4.049.us.i.i
  %xtraiter51 = and i64 %i.av, 7                  ; 2 uses
end_hunk_37
begin_hunk_38_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.us.i.i:                      ; preds = %.lr.ph47.us.i.i.new, %.prol.loopexit50
  %.lcssa43 = phi double [ %.lcssa43.unr, %.prol.loopexit50 ], [ %i.as, %.lr.ph47.us.i.i.new ]
  store i8 1, ptr %3, align 8, !tbaa !2284, !alias.scope !2338, !noalias !2335
  store double %.lcssa43, ptr %i.r, align 8, !tbaa !2286, !alias.scope !2338, !noalias !2335
  br label %.loopexit.us.i.i

end_hunk_38
begin_hunk_39_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.bo, label %.lr.ph47.i.i, label %.loopexit.i.i

.lr.ph47.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load double, ptr %i.r, align 8, !tbaa !2286, !alias.scope !2338, !noalias !2335 ; 2 uses
  %i.bp = sub nuw i64 %i.bf, %.sroa.4.049.i.i
  %xtraiter = and i64 %i.bp, 7                    ; 2 uses
end_hunk_39
begin_hunk_40_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph47.i.i.new, %.prol.loopexit
  %.lcssa45 = phi double [ %.lcssa45.unr, %.prol.loopexit ], [ %i.ct, %.lr.ph47.i.i.new ]
  store i8 1, ptr %3, align 8, !tbaa !2284, !alias.scope !2338, !noalias !2335
  store double %.lcssa45, ptr %i.r, align 8, !tbaa !2286, !alias.scope !2338, !noalias !2335
  br label %.loopexit.i.i

end_hunk_40
begin_hunk_41_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i27.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i28.i = load double, ptr %i.ea, align 8, !tbaa !2286, !alias.scope !2349, !noalias !2346 ; 4 uses
  br i1 %.not.i21.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.preheader
end_hunk_41
begin_hunk_42_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i30.i:                       ; preds = %..loopexit_crit_edge.i30.i.loopexit40.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil
  %.us-phi.i.i = phi double [ %i.gq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.fa, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ], [ %i.gm, %..loopexit_crit_edge.i30.i.loopexit40.unr-lcssa ], [ %i.gx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil ]
  store i8 1, ptr %3, align 8, !tbaa !2284, !alias.scope !2349, !noalias !2346
  store double %.us-phi.i.i, ptr %i.ea, align 8, !tbaa !2286, !alias.scope !2349, !noalias !2346
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_8SumStateIdEEdNS_12_GLOBAL__N_118DoubleSumOperationINS_10RegularAddEEEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_42
begin_hunk_43_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond66.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !2491

.lr.ph47.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load double, ptr %i.y, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484 ; 2 uses
  %.promoted49.us.i.i = load double, ptr %i.x, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484 ; 2 uses
  %i.bd = sub nuw i64 %i.aa, %.sroa.4.051.us.i.i
end_hunk_43
begin_hunk_44_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
..loopexit_crit_edge.us.i.i:                      ; preds = %.lr.ph47.us.i.i.new, %.prol.loopexit68
  %.lcssa62 = phi double [ %.lcssa62.unr, %.prol.loopexit68 ], [ %i.ay, %.lr.ph47.us.i.i.new ]
  %.lcssa61 = phi double [ %.lcssa61.unr, %.prol.loopexit68 ], [ %i.ba, %.lr.ph47.us.i.i.new ]
  store i8 1, ptr %3, align 8, !tbaa !2432, !alias.scope !2487, !noalias !2484
  store double %.lcssa61, ptr %i.y, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484
  store double %.lcssa62, ptr %i.x, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484
  br label %.loopexit.us.i.i
end_hunk_44
begin_hunk_45_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.bt, label %.lr.ph47.i.i, label %.loopexit.i.i

.lr.ph47.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load double, ptr %i.y, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484 ; 2 uses
  %.promoted49.i.i = load double, ptr %i.x, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484 ; 2 uses
  %i.bu = sub nuw i64 %i.br, %.sroa.4.051.i.i
end_hunk_45
begin_hunk_46_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph47.i.i.new, %.prol.loopexit
  %.lcssa65 = phi double [ %.lcssa65.unr, %.prol.loopexit ], [ %i.db, %.lr.ph47.i.i.new ]
  %.lcssa64 = phi double [ %.lcssa64.unr, %.prol.loopexit ], [ %i.dd, %.lr.ph47.i.i.new ]
  store i8 1, ptr %3, align 8, !tbaa !2432, !alias.scope !2487, !noalias !2484
  store double %.lcssa64, ptr %i.y, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484
  store double %.lcssa65, ptr %i.x, align 8, !tbaa !2146, !alias.scope !2487, !noalias !2484
  br label %.loopexit.i.i
end_hunk_46
begin_hunk_47_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i27.i
  %.not.i21.i.i = icmp eq ptr %.val20.i, null
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.promoted.i28.i = load double, ptr %i.en, align 8, !tbaa !2146, !alias.scope !2498, !noalias !2495 ; 4 uses
end_hunk_47
begin_hunk_48_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
..loopexit_crit_edge.i30.i:                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil
  %.us-phi.i.i = phi double [ %i.hf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.fm, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ], [ %i.gx, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ], [ %i.ho, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %.us-phi8.i.i = phi double [ %i.hh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.fo, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ], [ %i.gz, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ], [ %i.hq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  store i8 1, ptr %3, align 8, !tbaa !2432, !alias.scope !2498, !noalias !2495
  store double %.us-phi8.i.i, ptr %i.en, align 8, !tbaa !2146, !alias.scope !2498, !noalias !2495
  store double %.us-phi.i.i, ptr %i.em, align 8, !tbaa !2146, !alias.scope !2498, !noalias !2495
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_13KahanSumStateEdNS_12_GLOBAL__N_118DoubleSumOperationINS_8KahanAddEEEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
end_hunk_48
begin_hunk_49_@_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmRS5_m:bb.a
  unreachable

_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_19BoolStateEEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val.i.i = load ptr, ptr %11, align 8, !tbaa !91
  %12 = load ptr, ptr %.val.i.i, align 8, !tbaa !10760 ; 6 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_19BoolStateEEEPT_RNS_6VectorE.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 6 uses
  %.pre.i.i = load i8, ptr %i.x, align 1, !range !225 ; 2 uses
  %i.y = add i64 %4, -1
end_hunk_49
begin_hunk_50_@_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmRS5_m:bb.a
bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.new
  %i.aa = phi i8 [ %.pre.i.i, %.lr.ph.i.i.new ], [ %i.am, %bb.j ]
  %niter83 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter83.next.3, %bb.j ]
  store i8 0, ptr %12, align 1, !tbaa !10759
  %i.ab = load i8, ptr %i.m, align 1, !tbaa !774, !range !225, !noundef !226
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = select i1 %i.ac, i8 1, i8 %i.aa         ; 2 uses
  store i8 %i.ad, ptr %i.x, align 1, !tbaa !10757
  store i8 0, ptr %12, align 1, !tbaa !10759
  %i.ae = load i8, ptr %i.m, align 1, !tbaa !774, !range !225, !noundef !226
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = select i1 %i.af, i8 1, i8 %i.ad         ; 2 uses
  store i8 %i.ag, ptr %i.x, align 1, !tbaa !10757
  store i8 0, ptr %12, align 1, !tbaa !10759
  %i.ah = load i8, ptr %i.m, align 1, !tbaa !774, !range !225, !noundef !226
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = select i1 %i.ai, i8 1, i8 %i.ag         ; 2 uses
  store i8 %i.aj, ptr %i.x, align 1, !tbaa !10757
  store i8 0, ptr %12, align 1, !tbaa !10759
  %i.ak = load i8, ptr %i.m, align 1, !tbaa !774, !range !225, !noundef !226
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = select i1 %i.al, i8 1, i8 %i.aj         ; 3 uses
end_hunk_50
begin_hunk_51_@_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmRS5_m:bb.a
bb.bt:                                            ; preds = %bb.bt, %.epil.preheader
  %i.qz = phi i8 [ %.epil.init, %.epil.preheader ], [ %i.rc, %bb.bt ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bt ]
  store i8 0, ptr %12, align 1, !tbaa !10759
  %i.ra = load i8, ptr %i.m, align 1, !tbaa !774, !range !225, !noundef !226
  %i.rb = trunc nuw i8 %i.ra to i1
  %i.rc = select i1 %i.rb, i8 1, i8 %i.qz         ; 2 uses
end_hunk_51
begin_hunk_52_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 6 uses
  %.pre.i.i = load i8, ptr %i.h, align 1, !range !225 ; 2 uses
  %xtraiter61 = and i64 %4, 3                     ; 3 uses
end_hunk_52
begin_hunk_53_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %i.j = phi i8 [ %.pre.i.i, %.lr.ph.i.i.new ], [ %i.v, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.c ]
  store i8 0, ptr %3, align 1, !tbaa !10759
  %i.k = load i8, ptr %i.g, align 1, !tbaa !774, !range !225, !noundef !226
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.l, i8 1, i8 %i.j            ; 2 uses
  store i8 %i.m, ptr %i.h, align 1, !tbaa !10757
  store i8 0, ptr %3, align 1, !tbaa !10759
  %i.n = load i8, ptr %i.g, align 1, !tbaa !774, !range !225, !noundef !226
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i8 1, i8 %i.m            ; 2 uses
  store i8 %i.p, ptr %i.h, align 1, !tbaa !10757
  store i8 0, ptr %3, align 1, !tbaa !10759
  %i.q = load i8, ptr %i.g, align 1, !tbaa !774, !range !225, !noundef !226
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = select i1 %i.r, i8 1, i8 %i.p            ; 2 uses
  store i8 %i.s, ptr %i.h, align 1, !tbaa !10757
  store i8 0, ptr %3, align 1, !tbaa !10759
  %i.t = load i8, ptr %i.g, align 1, !tbaa !774, !range !225, !noundef !226
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = select i1 %i.u, i8 1, i8 %i.s            ; 3 uses
end_hunk_53
begin_hunk_54_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond61.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !10817

.lr.ph46.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load i8, ptr %i.ac, align 1, !alias.scope !10813, !noalias !10810 ; 2 uses
  %i.bs = sub nuw i64 %i.ae, %.sroa.4.048.us.i.i
  %xtraiter57 = and i64 %i.bs, 7                  ; 2 uses
end_hunk_54
begin_hunk_55_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.us.i.i:                      ; preds = %.lr.ph46.us.i.i.new, %.prol.loopexit56
  %.lcssa49 = phi i8 [ %.lcssa49.unr, %.prol.loopexit56 ], [ %i.bp, %.lr.ph46.us.i.i.new ]
  store i8 0, ptr %3, align 1, !tbaa !10759, !alias.scope !10813, !noalias !10810
  store i8 %.lcssa49, ptr %i.ac, align 1, !alias.scope !10813, !noalias !10810
  br label %.loopexit.us.i.i

end_hunk_55
begin_hunk_56_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.cp, label %.lr.ph46.i.i, label %.loopexit.i.i

.lr.ph46.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i8, ptr %i.ac, align 1, !alias.scope !10813, !noalias !10810 ; 2 uses
  %i.cq = sub nuw i64 %i.ce, %.sroa.4.048.i.i
  %xtraiter = and i64 %i.cq, 7                    ; 2 uses
end_hunk_56
begin_hunk_57_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph46.i.i.new, %.prol.loopexit
  %.lcssa51 = phi i8 [ %.lcssa51.unr, %.prol.loopexit ], [ %i.ei, %.lr.ph46.i.i.new ]
  store i8 0, ptr %3, align 1, !tbaa !10759, !alias.scope !10813, !noalias !10810
  store i8 %.lcssa51, ptr %i.ac, align 1, !alias.scope !10813, !noalias !10810
  br label %.loopexit.i.i

end_hunk_57
begin_hunk_58_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i20.i.i = icmp eq ptr %.val.i, null
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.promoted.i30.i = load i8, ptr %i.fv, align 1, !alias.scope !10824, !noalias !10821 ; 4 uses
  br i1 %.not.i20.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader
end_hunk_58
begin_hunk_59_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i31.i:                       ; preds = %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil, %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil
  %.us-phi.i.i = phi i8 [ %i.jh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil ], [ %i.hh, %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa ], [ %i.jb, %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa ], [ %i.jq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil ]
  store i8 0, ptr %3, align 1, !tbaa !10759, !alias.scope !10824, !noalias !10821
  store i8 %.us-phi.i.i, ptr %i.fv, align 1, !alias.scope !10824, !noalias !10821
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_59
begin_hunk_60_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_17BoolOrFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %i.lb = phi i8 [ %.epil.init, %.epil.preheader ], [ %i.le, %bb.ac ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  store i8 0, ptr %3, align 1, !tbaa !10759
  %i.lc = load i8, ptr %i.g, align 1, !tbaa !774, !range !225, !noundef !226
  %i.ld = trunc nuw i8 %i.lc to i1
  %i.le = select i1 %i.ld, i8 1, i8 %i.lb         ; 2 uses
end_hunk_60
begin_hunk_61_@_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmRS5_m:bb.a
  unreachable

_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_19BoolStateEEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val.i.i = load ptr, ptr %11, align 8, !tbaa !91
  %12 = load ptr, ptr %.val.i.i, align 8, !tbaa !10760 ; 6 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_19BoolStateEEEPT_RNS_6VectorE.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 6 uses
  %.pre.i.i = load i8, ptr %i.x, align 1, !range !225 ; 2 uses
  %i.y = add i64 %4, -1
end_hunk_61
begin_hunk_62_@_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmRS5_m:bb.a
bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.new
  %i.aa = phi i8 [ %.pre.i.i, %.lr.ph.i.i.new ], [ %i.am, %bb.j ]
  %niter83 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter83.next.3, %bb.j ]
  store i8 0, ptr %12, align 1, !tbaa !10759
  %i.ab = load i8, ptr %i.m, align 1, !tbaa !774, !range !225, !noundef !226
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = select i1 %i.ac, i8 %i.aa, i8 0         ; 2 uses
  store i8 %i.ad, ptr %i.x, align 1, !tbaa !10757
  store i8 0, ptr %12, align 1, !tbaa !10759
  %i.ae = load i8, ptr %i.m, align 1, !tbaa !774, !range !225, !noundef !226
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = select i1 %i.af, i8 %i.ad, i8 0         ; 2 uses
  store i8 %i.ag, ptr %i.x, align 1, !tbaa !10757
  store i8 0, ptr %12, align 1, !tbaa !10759
  %i.ah = load i8, ptr %i.m, align 1, !tbaa !774, !range !225, !noundef !226
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = select i1 %i.ai, i8 %i.ag, i8 0         ; 2 uses
  store i8 %i.aj, ptr %i.x, align 1, !tbaa !10757
  store i8 0, ptr %12, align 1, !tbaa !10759
  %i.ak = load i8, ptr %i.m, align 1, !tbaa !774, !range !225, !noundef !226
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = select i1 %i.al, i8 %i.aj, i8 0         ; 3 uses
end_hunk_62
begin_hunk_63_@_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmRS5_m:bb.a
bb.bt:                                            ; preds = %bb.bt, %.epil.preheader
  %i.qz = phi i8 [ %.epil.init, %.epil.preheader ], [ %i.rc, %bb.bt ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bt ]
  store i8 0, ptr %12, align 1, !tbaa !10759
  %i.ra = load i8, ptr %i.m, align 1, !tbaa !774, !range !225, !noundef !226
  %i.rb = trunc nuw i8 %i.ra to i1
  %i.rc = select i1 %i.rb, i8 %i.qz, i8 0         ; 2 uses
end_hunk_63
begin_hunk_64_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 6 uses
  %.pre.i.i = load i8, ptr %i.h, align 1, !range !225 ; 2 uses
  %xtraiter61 = and i64 %4, 3                     ; 3 uses
end_hunk_64
begin_hunk_65_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %i.j = phi i8 [ %.pre.i.i, %.lr.ph.i.i.new ], [ %i.v, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.c ]
  store i8 0, ptr %3, align 1, !tbaa !10759
  %i.k = load i8, ptr %i.g, align 1, !tbaa !774, !range !225, !noundef !226
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.l, i8 %i.j, i8 0            ; 2 uses
  store i8 %i.m, ptr %i.h, align 1, !tbaa !10757
  store i8 0, ptr %3, align 1, !tbaa !10759
  %i.n = load i8, ptr %i.g, align 1, !tbaa !774, !range !225, !noundef !226
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i8 %i.m, i8 0            ; 2 uses
  store i8 %i.p, ptr %i.h, align 1, !tbaa !10757
  store i8 0, ptr %3, align 1, !tbaa !10759
  %i.q = load i8, ptr %i.g, align 1, !tbaa !774, !range !225, !noundef !226
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = select i1 %i.r, i8 %i.p, i8 0            ; 2 uses
  store i8 %i.s, ptr %i.h, align 1, !tbaa !10757
  store i8 0, ptr %3, align 1, !tbaa !10759
  %i.t = load i8, ptr %i.g, align 1, !tbaa !774, !range !225, !noundef !226
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = select i1 %i.u, i8 %i.s, i8 0            ; 3 uses
end_hunk_65
begin_hunk_66_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %exitcond61.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !10889

.lr.ph46.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load i8, ptr %i.ac, align 1, !alias.scope !10885, !noalias !10882 ; 2 uses
  %i.bs = sub nuw i64 %i.ae, %.sroa.4.048.us.i.i
  %xtraiter57 = and i64 %i.bs, 7                  ; 2 uses
end_hunk_66
begin_hunk_67_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.us.i.i:                      ; preds = %.lr.ph46.us.i.i.new, %.prol.loopexit56
  %.lcssa49 = phi i8 [ %.lcssa49.unr, %.prol.loopexit56 ], [ %i.bp, %.lr.ph46.us.i.i.new ]
  store i8 0, ptr %3, align 1, !tbaa !10759, !alias.scope !10885, !noalias !10882
  store i8 %.lcssa49, ptr %i.ac, align 1, !alias.scope !10885, !noalias !10882
  br label %.loopexit.us.i.i

end_hunk_67
begin_hunk_68_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  br i1 %i.cp, label %.lr.ph46.i.i, label %.loopexit.i.i

.lr.ph46.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i8, ptr %i.ac, align 1, !alias.scope !10885, !noalias !10882 ; 2 uses
  %i.cq = sub nuw i64 %i.ce, %.sroa.4.048.i.i
  %xtraiter = and i64 %i.cq, 7                    ; 2 uses
end_hunk_68
begin_hunk_69_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph46.i.i.new, %.prol.loopexit
  %.lcssa51 = phi i8 [ %.lcssa51.unr, %.prol.loopexit ], [ %i.ei, %.lr.ph46.i.i.new ]
  store i8 0, ptr %3, align 1, !tbaa !10759, !alias.scope !10885, !noalias !10882
  store i8 %.lcssa51, ptr %i.ac, align 1, !alias.scope !10885, !noalias !10882
  br label %.loopexit.i.i

end_hunk_69
begin_hunk_70_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

.lr.ph5.i.i:                                      ; preds = %.preheader.i29.i
  %.not.i20.i.i = icmp eq ptr %.val.i, null
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.promoted.i30.i = load i8, ptr %i.fv, align 1, !alias.scope !10896, !noalias !10893 ; 4 uses
  br i1 %.not.i20.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader
end_hunk_70
begin_hunk_71_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

..loopexit_crit_edge.i31.i:                       ; preds = %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil, %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil
  %.us-phi.i.i = phi i8 [ %i.jh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil ], [ %i.hh, %..loopexit_crit_edge.i31.i.loopexit.unr-lcssa ], [ %i.jb, %..loopexit_crit_edge.i31.i.loopexit45.unr-lcssa ], [ %i.jq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil ]
  store i8 0, ptr %3, align 1, !tbaa !10759, !alias.scope !10896, !noalias !10893
  store i8 %.us-phi.i.i, ptr %i.fv, align 1, !alias.scope !10896, !noalias !10893
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

end_hunk_71
begin_hunk_72_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19BoolStateEbNS2_18BoolAndFunFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %i.lb = phi i8 [ %.epil.init, %.epil.preheader ], [ %i.le, %bb.ac ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  store i8 0, ptr %3, align 1, !tbaa !10759
  %i.lc = load i8, ptr %i.g, align 1, !tbaa !774, !range !225, !noundef !226
  %i.ld = trunc nuw i8 %i.lc to i1
  %i.le = select i1 %i.ld, i8 %i.lb, i8 0         ; 2 uses
end_hunk_72
