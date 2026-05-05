inline.NumInlined: 13443
inline.NumDeleted: 3890
begin_hunk_0_@_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8and_thenBI_NCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB1O_16DeltaScanBuilder5build0s_0EB1S_:bb.a
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %lsr.iv.next = add i64 %lsr.iv, -8
  %scevgep86 = getelementptr i8, ptr %lsr.iv85.a, i64 1
  %lsr.iv.next89 = add nsw i64 %lsr.iv88, -1      ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8and_thenBI_NCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB1O_16DeltaScanBuilder5build0s_0EB1S_:bb.a
  br label %_RNCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB9_16DeltaScanBuilder5build0s_0Bd_.exit

.loopexit.i.loopexit.i.loopexitsplit:             ; preds = %bb.g
  %.ph.ph = phi ptr [ %scevgep40.i, %bb.g ]
  %.lcssa19.i.ph.ph = phi ptr [ %i.ad, %bb.g ]
  br label %.loopexit.i.loopexit.i.loopexit

..loopexit.i.loopexit.i.loopexit_crit_edge:       ; preds = %bb.f
  %.lcssa84 = phi ptr [ %i.as, %bb.f ]
  %split = phi ptr [ %i.ak, %bb.f ]
  %.lcssa91 = phi ptr [ %i.as, %bb.f ]            ; 0 uses
  br label %.loopexit.i.loopexit.i.loopexit

.loopexit.i.loopexit.i.loopexit:                  ; preds = %.loopexit.i.loopexit.i.loopexitsplit, %..loopexit.i.loopexit.i.loopexit_crit_edge
  %.ph = phi ptr [ %split, %..loopexit.i.loopexit.i.loopexit_crit_edge ], [ %.ph.ph, %.loopexit.i.loopexit.i.loopexitsplit ]
  %.lcssa19.i.ph = phi ptr [ %.lcssa84, %..loopexit.i.loopexit.i.loopexit_crit_edge ], [ %.lcssa19.i.ph.ph, %.loopexit.i.loopexit.i.loopexitsplit ]
  br label %.loopexit.i.loopexit.i

.loopexit.i.loopexit.i:                           ; preds = %.loopexit.i.loopexit.i.loopexit, %.lr.ph.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future12try_join_all10TryJoinAllNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEB20_:bb.a
bb.d:                                             ; preds = %.lr.ph3
  %lsr.iv.next9 = add i64 %lsr.iv8, -1            ; 2 uses
  %scevgep14 = getelementptr i8, ptr %lsr.iv13, i64 112
  %i.h = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next9
  br i1 %i.h, label %.body.i.i.i.loopexit, label %.lr.ph3

bb.e:                                             ; preds = %.lr.ph
  %lsr.iv12.lcssa = phi ptr [ %lsr.iv11, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.i = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future12try_join_all10TryJoinAllNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEB20_:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %bb.d
  %lsr.iv13 = phi ptr [ %lsr.iv12.lcssa, %.lr.ph3.preheader ], [ %scevgep14, %bb.d ] ; 2 uses
  %lsr.iv8 = phi i64 [ %.val1.i, %.lr.ph3.preheader ], [ %lsr.iv.next9, %bb.d ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtBL_10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEB2P_(ptr noundef nonnull align 8 %lsr.iv13) #48
          to label %bb.d unwind label %bb.f, !noalias !2042
end_hunk_3
