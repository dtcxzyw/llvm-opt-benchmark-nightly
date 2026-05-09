inline.NumInlined: 5875
inline.NumDeleted: 3204
begin_hunk_0_@_ZNK5boost6spirit8sequenceINS0_7symbolsIicNS0_4impl3tstIicEEEENS0_10differenceINS0_14anychar_parserENS0_11alternativeINS9_INS0_12alnum_parserENS0_5chlitIcEEEESC_EEEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISG_T_E4typeERKSX_:bb.a
  %i.aq = load i8, ptr %i.al, align 1, !tbaa !98, !noalias !373 ; 3 uses
  %i.ar = zext i8 %i.aq to i32
  %i.as = tail call i32 @isalnum(i32 noundef %i.ar) #26, !noalias !373
  %.not.i.i.i.i8 = icmp ne i32 %i.as, 0
  %i.at = load i8, ptr %i.ao, align 8
  %2 = icmp eq i8 %i.aq, %i.at
  %or.cond.i.i.not31 = select i1 %.not.i.i.i.i8, i1 true, i1 %2
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.av = load i8, ptr %i.au, align 1
  %3 = icmp eq i8 %i.aq, %i.av
  %or.cond.i.not = select i1 %or.cond.i.i.not31, i1 true, i1 %3
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !17
  %i.aw = add nuw nsw i64 %.467.i.i.i.i, 1
  %spec.select = select i1 %or.cond.i.not, i64 -1, i64 %i.aw
  br label %_ZN5boost6spirit5matchINS_17reference_wrapperIiEEED2Ev.exit.thread

_ZN5boost6spirit5matchINS_17reference_wrapperIiEEED2Ev.exit.thread: ; preds = %_ZNK5boost6spirit10differenceINS0_14anychar_parserENS0_11alternativeINS3_INS0_12alnum_parserENS0_5chlitIcEEEES6_EEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS9_T_E4typeERKSQ_.exit, %_ZNK5boost6spirit4impl3tstIicE4findINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS3_11search_infoERKT_.exit.thread13.i.i.i, %bb.a, %_ZN5boost6spirit5matchINS_17reference_wrapperIiEEED2Ev.exit
end_hunk_0
