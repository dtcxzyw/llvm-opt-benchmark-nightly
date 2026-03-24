begin_hunk_0
.lr.ph.i19.i.i.i.i:                               ; preds = %485
  %488 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %489 = load i64, ptr %488, align 8, !alias.scope !2644, !noalias !2651, !noundef !3
  %490 = load i64, ptr %380, align 8, !alias.scope !2644, !noalias !2651 ; 7 uses
  %491 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %492 = load i64, ptr %491, align 8, !alias.scope !2644, !noalias !2651
  %493 = add i64 %490, -1                         ; 2 uses
  %.first_iter.i.i.i.i = icmp ult i64 %493, %458
  %494 = icmp ult i64 %490, %458
  %.not.i.us.i.i.i367 = icmp eq i64 %490, 0       ; 2 uses
  br label %495

495:                                              ; preds = %507, %.lr.ph.i19.i.i.i.i
end_hunk_0
begin_hunk_1
  br i1 %504, label %505, label %.preheader33.i.i.i.i.preheader

.preheader33.i.i.i.i.preheader:                   ; preds = %495
  br i1 %494, label %.lr.ph366, label %.preheader.i.preheader.i.i.i

505:                                              ; preds = %495
  %506 = add i64 %496, %458
end_hunk_1
begin_hunk_2
  br i1 %510, label %495, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.preheader33.i.i.i.i:                             ; preds = %524
  %511 = add nuw nsw i64 %.sroa.04.0.i22.i.i.i.i365, 1 ; 2 uses
  %512 = icmp ult i64 %511, %458
  br i1 %512, label %.lr.ph366, label %.preheader.i.preheader.i.i.i

.preheader.i.preheader.i.i.i:                     ; preds = %.preheader33.i.i.i.i, %.preheader33.i.i.i.i.preheader
  br i1 %.first_iter.i.i.i.i, label %.preheader.i.us.i.i.i.preheader, label %.preheader.i.i.i.i

.preheader.i.us.i.i.i.preheader:                  ; preds = %.preheader.i.preheader.i.i.i
  br i1 %.not.i.us.i.i.i367, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph369

.preheader.i.us.i.i.i:                            ; preds = %516
  %.not.i.us.i.i.i = icmp eq i64 %513, 0
  br i1 %.not.i.us.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph369

.lr.ph369:                                        ; preds = %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i
  %.sroa.2.0.i23.i.us.i.i.i368 = phi i64 [ %513, %.preheader.i.us.i.i.i ], [ %490, %.preheader.i.us.i.i.i.preheader ]
  %513 = add i64 %.sroa.2.0.i23.i.us.i.i.i368, -1 ; 4 uses
  %514 = add i64 %513, %496                       ; 3 uses
  %515 = icmp ult i64 %514, %454
  br i1 %515, label %516, label %.invoke.i.i.i

516:                                              ; preds = %.lr.ph369
  %517 = getelementptr inbounds nuw i8, ptr %456, i64 %513
  %518 = load i8, ptr %517, align 1, !alias.scope !2649, !noalias !2654, !noundef !3
  %519 = getelementptr inbounds nuw i8, ptr %452, i64 %514
end_hunk_2
begin_hunk_3
  %521 = add i64 %496, %492
  br label %507

.lr.ph366:                                        ; preds = %.preheader33.i.i.i.i.preheader, %.preheader33.i.i.i.i
  %.sroa.04.0.i22.i.i.i.i365 = phi i64 [ %511, %.preheader33.i.i.i.i ], [ %490, %.preheader33.i.i.i.i.preheader ] ; 4 uses
  %522 = add i64 %.sroa.04.0.i22.i.i.i.i365, %496 ; 2 uses
  %523 = icmp ult i64 %522, %454
  br i1 %523, label %524, label %529

.preheader.i.i.i.i:                               ; preds = %.preheader.i.preheader.i.i.i
  br i1 %.not.i.us.i.i.i367, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.invoke.i.i.i

524:                                              ; preds = %.lr.ph366
  %525 = getelementptr inbounds nuw i8, ptr %456, i64 %.sroa.04.0.i22.i.i.i.i365
  %526 = load i8, ptr %525, align 1, !alias.scope !2649, !noalias !2654, !noundef !3
  %527 = getelementptr inbounds nuw i8, ptr %452, i64 %522
  %528 = load i8, ptr %527, align 1, !alias.scope !2647, !noalias !2653, !noundef !3
  %.not23.i26.i.i.i.i = icmp eq i8 %526, %528
  br i1 %.not23.i26.i.i.i.i, label %.preheader33.i.i.i.i, label %531

529:                                              ; preds = %.lr.ph366
  %530 = add i64 %496, %490
  %umax.i25.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %454, i64 %530)
  br label %.invoke.i.i.i

531:                                              ; preds = %524
  %reass.sub221 = sub i64 %496, %490
  %532 = add i64 %reass.sub221, 1
  %533 = add i64 %532, %.sroa.04.0.i22.i.i.i.i365
  br label %507

534:                                              ; preds = %447
end_hunk_3
begin_hunk_4
556:                                              ; preds = %543
  %.sroa.0.0.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %545, i64 %539) ; 3 uses
  %557 = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i, %458
  br i1 %557, label %.lr.ph362, label %.preheader34.i.i.i.i.preheader

.sink.split.i.i.i.i.i:                            ; preds = %586, %577, %554
  %.sink.i.i.i.i.i = phi i64 [ %542, %577 ], [ 0, %586 ], [ 0, %554 ]
end_hunk_4
begin_hunk_5
  br i1 %559, label %543, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

560:                                              ; preds = %579
  %561 = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i361, 1 ; 2 uses
  %562 = icmp ult i64 %561, %458
  br i1 %562, label %.lr.ph362, label %.preheader34.i.i.i.i.preheader

.preheader34.i.i.i.i.preheader:                   ; preds = %560, %556
  %563 = icmp ult i64 %545, %539
  br i1 %563, label %.lr.ph364, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph362:                                        ; preds = %556, %560
  %.sroa.04.0.i.i.i.i.i361 = phi i64 [ %561, %560 ], [ %.sroa.0.0.i.i.i.i.i.i, %556 ] ; 4 uses
  %564 = add i64 %.sroa.04.0.i.i.i.i.i361, %544   ; 2 uses
  %565 = icmp ult i64 %564, %454
  br i1 %565, label %579, label %584

.preheader34.i.i.i.i:                             ; preds = %572
  %566 = icmp ult i64 %545, %567
  br i1 %566, label %.lr.ph364, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph364:                                        ; preds = %.preheader34.i.i.i.i.preheader, %.preheader34.i.i.i.i
  %.sroa.2.0.i.i.i.i.i363 = phi i64 [ %567, %.preheader34.i.i.i.i ], [ %539, %.preheader34.i.i.i.i.preheader ]
  %567 = add i64 %.sroa.2.0.i.i.i.i.i363, -1      ; 6 uses
  %568 = icmp ult i64 %567, %458
  br i1 %568, label %569, label %.invoke.i.i.i

569:                                              ; preds = %.lr.ph364
  %570 = add i64 %567, %544                       ; 3 uses
  %571 = icmp ult i64 %570, %454
  br i1 %571, label %572, label %.invoke.i.i.i
end_hunk_5
begin_hunk_6
  %578 = add i64 %544, %541
  br label %.sink.split.i.i.i.i.i

579:                                              ; preds = %.lr.ph362
  %580 = getelementptr inbounds nuw i8, ptr %456, i64 %.sroa.04.0.i.i.i.i.i361
  %581 = load i8, ptr %580, align 1, !alias.scope !2660, !noalias !2665, !noundef !3
  %582 = getelementptr inbounds nuw i8, ptr %452, i64 %564
  %583 = load i8, ptr %582, align 1, !alias.scope !2658, !noalias !2664, !noundef !3
  %.not23.i.i.i.i.i = icmp eq i8 %581, %583
  br i1 %.not23.i.i.i.i.i, label %560, label %586

584:                                              ; preds = %.lr.ph362
  %585 = add i64 %.sroa.0.0.i.i.i.i.i.i, %544
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %454, i64 %585)
  br label %.invoke.i.i.i
end_hunk_6
begin_hunk_7
586:                                              ; preds = %579
  %reass.sub = sub i64 %544, %539
  %587 = add i64 %reass.sub, 1
  %588 = add i64 %587, %.sroa.04.0.i.i.i.i.i361
  br label %.sink.split.i.i.i.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %.preheader34.i.i.i.i.preheader, %.preheader34.i.i.i.i, %507, %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i.i.i.i, %473, %534, %.preheader.i.i.i.i, %485, %471, %439, %398, %.preheader.i4.i.i.i.i
end_hunk_7
begin_hunk_8
  %600 = icmp ult i64 %599, %355
  br i1 %600, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %.lr.ph, %569, %.lr.ph364, %.lr.ph369, %584, %529, %.preheader.i.i.i.i
  %601 = phi i64 [ %493, %.preheader.i.i.i.i ], [ %umax.i.i.i.i.i, %584 ], [ %570, %569 ], [ %514, %.lr.ph369 ], [ %umax.i25.i.i.i.i, %529 ], [ %567, %.lr.ph364 ], [ %599, %.lr.ph ]
  %602 = phi i64 [ %458, %.preheader.i.i.i.i ], [ %454, %584 ], [ %454, %569 ], [ %454, %.lr.ph369 ], [ %454, %529 ], [ %458, %.lr.ph364 ], [ %355, %.lr.ph ]
  %603 = phi ptr [ @6, %.preheader.i.i.i.i ], [ @8, %584 ], [ @7, %569 ], [ @7, %.lr.ph369 ], [ @8, %529 ], [ @6, %.lr.ph364 ], [ @74, %.lr.ph ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %601, i64 noundef range(i64 0, -9223372036854775808) %602, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %603) #36
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !2610

end_hunk_8
