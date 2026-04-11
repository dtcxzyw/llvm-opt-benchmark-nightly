inline.NumInlined: 216
inline.NumDeleted: 128
begin_hunk_0_@_ZN8facebook5velox9Timestamp14tmToStringViewERK2tmmRKNS0_24TimestampToStringOptionsEPc:bb.a
  %i.rv = sub nsw i32 %i.ru, %.012.i
  %i.rw = sext i32 %i.rv to i64                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.rh, i8 48, i64 %i.rw, i1 false)
  %i.rx = getelementptr inbounds i8, ptr %i.rh, i64 %i.rw ; 7 uses
  %i.ry = load i8, ptr %i.qm, align 2, !tbaa !68, !range !54, !noundef !55
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %.preheader, label %bb.er
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9Timestamp14tmToStringViewERK2tmmRKNS0_24TimestampToStringOptionsEPc:bb.a

._crit_edge:                                      ; preds = %bb.eq
  %i.sl = trunc nuw i8 %.sroa.4.1 to i1
  %13 = add i32 %.sroa.0.1, 1
  %14 = zext i32 %13 to i64
  br i1 %i.sl, label %_ZSt12__to_chars_iImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

bb.er:                                            ; preds = %_ZN8facebook5velox11countDigitsEo.exit
  %i.sm = sext i32 %.012.i to i64                 ; 2 uses
  br i1 %i.qp, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.es

bb.es:                                            ; preds = %bb.er
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox9Timestamp14tmToStringViewERK2tmmRKNS0_24TimestampToStringOptionsEPc:bb.a
  %.sink109.i = phi i8 [ 48, %bb.er ], [ %i.tu, %bb.fa ], [ %i.tw, %bb.fb ]
  %.sink.i = phi i64 [ 1, %bb.er ], [ %i.sw, %bb.fa ], [ %i.sw, %bb.fb ]
  store i8 %.sink109.i, ptr %i.rx, align 1, !tbaa !17
  br label %_ZSt12__to_chars_iImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit

_ZSt12__to_chars_iImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit: ; preds = %._crit_edge, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %.pn = phi i64 [ %.sink.i, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ], [ %i.sm, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i ], [ %14, %._crit_edge ]
  %.3 = getelementptr inbounds i8, ptr %i.rx, i64 %.pn
  %i.tx = ptrtoint ptr %.3 to i64
  %i.ty = ptrtoint ptr %3 to i64
  %i.tz = sub i64 %i.tx, %i.ty                    ; 2 uses
end_hunk_2
