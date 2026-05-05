inline.NumInlined: 16156
inline.NumDeleted: 5265
begin_hunk_0_@_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0Bb_:bb.a
  br label %.lr.ph

.thread510.loopexitsplit:                         ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.not548.lcssa.ph.ph = phi i1 [ true, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  %.sroa.3.10.ph.ph = phi i64 [ %.sroa.3.3, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  br label %.thread510.loopexit

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit..thread510.loopexit_crit_edge: ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.8348.0551.lcssa = phi i64 [ %.sroa.8348.0551, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit ]
  %split = phi i1 [ false, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.8348.0551.lcssa.a = phi i64 [ %.sroa.8348.0551, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit ] ; 0 uses
  br label %.thread510.loopexit

.thread510.loopexit:                              ; preds = %.thread510.loopexitsplit, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit..thread510.loopexit_crit_edge
  %.not548.lcssa.ph = phi i1 [ %split, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit..thread510.loopexit_crit_edge ], [ %.not548.lcssa.ph.ph, %.thread510.loopexitsplit ]
  %.sroa.3.10.ph = phi i64 [ %.sroa.8348.0551.lcssa, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit..thread510.loopexit_crit_edge ], [ %.sroa.3.10.ph.ph, %.thread510.loopexitsplit ]
  br label %.thread510

.thread510:                                       ; preds = %.thread510.loopexit, %bb.es
end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s1_0Bb_:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread
  %lsr.iv = phi i64 [ %.idx, %.lr.ph.preheader ], [ %lsr.iv.next, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  %.sroa.8348.0551 = phi i64 [ %i.jh, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.it = shl nuw i64 %.sroa.8348.0551, 3
  %scevgep = getelementptr i8, ptr %i.is, i64 %i.it
  %.val141 = load ptr, ptr %scevgep, align 8, !nonnull !4, !noundef !4 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s6_0Bb_:bb.a
  br label %.lr.ph

.thread516.loopexitsplit:                         ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.not540.lcssa.ph.ph = phi i1 [ true, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  %.sroa.3.10.ph.ph = phi i64 [ %.sroa.3.3, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  br label %.thread516.loopexit

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit..thread516.loopexit_crit_edge: ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.8347.0543.lcssa = phi i64 [ %.sroa.8347.0543, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit ]
  %split = phi i1 [ false, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.8347.0543.lcssa.a = phi i64 [ %.sroa.8347.0543, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit ] ; 0 uses
  br label %.thread516.loopexit

.thread516.loopexit:                              ; preds = %.thread516.loopexitsplit, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit..thread516.loopexit_crit_edge
  %.not540.lcssa.ph = phi i1 [ %split, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit..thread516.loopexit_crit_edge ], [ %.not540.lcssa.ph.ph, %.thread516.loopexitsplit ]
  %.sroa.3.10.ph = phi i64 [ %.sroa.8347.0543.lcssa, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit..thread516.loopexit_crit_edge ], [ %.sroa.3.10.ph.ph, %.thread516.loopexitsplit ]
  br label %.thread516

.thread516:                                       ; preds = %.thread516.loopexit, %bb.ez
end_hunk_2
begin_hunk_3_@_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution14write_cdc_plan0s6_0Bb_:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread
  %lsr.iv = phi i64 [ %.idx, %.lr.ph.preheader ], [ %lsr.iv.next, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ]
  %.sroa.8347.0543 = phi i64 [ %i.lh, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB7_9PartialEqReE2eqCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.kt = shl nuw i64 %.sroa.8347.0543, 3
  %scevgep = getelementptr i8, ptr %i.ks, i64 %i.kt
  %.val153 = load ptr, ptr %scevgep, align 8, !nonnull !4, !noundef !4 ; 2 uses
end_hunk_3
