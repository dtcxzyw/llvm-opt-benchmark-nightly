inline.NumInlined: 377
inline.NumDeleted: 169
begin_hunk_0_@_ZN4absl12lts_2024011616numbers_internal17safe_strto32_baseESt17basic_string_viewIcSt11char_traitsIcEEPii:bb.a

bb.y:                                             ; preds = %bb.x
  %i.bp = mul nsw i32 %.02744.i.i, %.0.i.i        ; 2 uses
  %i.bq = or disjoint i32 %i.bn, -2147483648
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %_ZN4absl12lts_2024011612_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.z

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011616numbers_internal17safe_strto64_baseESt17basic_string_viewIcSt11char_traitsIcEEPli:bb.a
bb.y:                                             ; preds = %bb.x
  %i.bp = mul nsw i64 %.02743.i.i, %i.ar          ; 2 uses
  %i.bq = sext i8 %i.bm to i64                    ; 2 uses
  %i.br = or disjoint i64 %i.bq, -9223372036854775808
  %i.bs = icmp slt i64 %i.bp, %i.br
  br i1 %i.bs, label %_ZN4absl12lts_2024011612_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.z

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2024011616numbers_internal18safe_strto128_baseESt17basic_string_viewIcSt11char_traitsIcEEPNS0_6int128Ei:bb.a
bb.y:                                             ; preds = %bb.x
  %i.bq = mul nsw i128 %.sroa.041.053.i.i, %i.bj  ; 2 uses
  %i.br = sext i8 %i.bn to i128                   ; 2 uses
  %i.bs = or disjoint i128 %i.br, -170141183460469231731687303715884105728
  %i.bt = icmp slt i128 %i.bq, %i.bs
  br i1 %i.bt, label %_ZN4absl12lts_2024011612_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.z

end_hunk_2
