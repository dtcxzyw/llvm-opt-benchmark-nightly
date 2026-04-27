inline.NumInlined: 8297
inline.NumDeleted: 1222
begin_hunk_0_@_ZN3ada3url10parse_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.230107 = phi i32 [ %.129266, %_ZSt10from_charsIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit62.thread258 ], [ %.028188, %bb.c ]
  %.192105 = phi i32 [ %.0264, %_ZSt10from_charsIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit62.thread258 ], [ 0, %bb.c ]
  %i.cu = zext i32 %.192105 to i64                ; 2 uses
  %i.cv = shl nuw nsw i64 %.027189, 3             ; 2 uses
  %.highbits = lshr exact i64 4294967296, %i.cv
  %.not40 = icmp samesign ugt i64 %.highbits, %i.cu
  br i1 %.not40, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.thread96.thread
end_hunk_0
begin_hunk_1_@_ZN3ada3url10parse_ipv4ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br label %.thread121

bb.w:                                             ; preds = %.thread96.thread
  %5 = sub nuw nsw i64 32, %i.cv
  %i.dc = shl i64 %.033187, %5
  %i.dd = or i64 %i.dc, %i.cu
  br label %bb.x
end_hunk_1
begin_hunk_2_@_ZN3ada14url_aggregator10parse_ipv4ESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  %.238117 = phi i32 [ %.137277, %_ZSt10from_charsIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit70.thread269 ], [ %.036199, %bb.c ]
  %.1115 = phi i32 [ %.0275, %_ZSt10from_charsIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit70.thread269 ], [ 0, %bb.c ]
  %i.cu = zext i32 %.1115 to i64                  ; 2 uses
  %i.cv = shl nuw nsw i64 %.033200, 3             ; 2 uses
  %.highbits = lshr exact i64 4294967296, %i.cv
  %.not48 = icmp samesign ugt i64 %.highbits, %i.cu
  br i1 %.not48, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.thread106.thread
end_hunk_2
begin_hunk_3_@_ZN3ada14url_aggregator10parse_ipv4ESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  br label %.thread131

bb.w:                                             ; preds = %.thread106.thread
  %5 = sub nuw nsw i64 32, %i.cv
  %i.dc = shl i64 %.041198, %5
  %i.dd = or i64 %i.dc, %i.cu
  br label %bb.x
end_hunk_3
