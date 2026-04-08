inline.NumInlined: 577
inline.NumDeleted: 341
begin_hunk_0_@_ZN6google8protobuf2io7PrinterD2Ev:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !163
  call void %i.ae(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.ac, ptr noundef nonnull align 16 dereferenceable(32) %i.ac) #16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !164 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !165 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io7PrinterD2Ev:bb.a
_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i2
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !166

_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.af, align 16, !tbaa !164
  br label %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exitthread-pre-split.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEED2Ev.exit
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf2io7PrinterD2Ev:bb.a

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !167
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf2io7PrinterD2Ev:bb.a

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exit.i, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !168 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !169 ; 2 uses
  %.not4.i.i.i7 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not4.i.i.i7, label %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exit.i, label %.lr.ph.i.i.i8

end_hunk_3
begin_hunk_4_@_ZN6google8protobuf2io7PrinterD2Ev:bb.a
_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i8
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 32 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.be, %i.ay
  br i1 %.not.i.i.i11, label %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i8, !llvm.loop !170

_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i
  %.pr.i12 = load ptr, ptr %i.av, align 8, !tbaa !168
  br label %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EED2Ev.exit
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf2io7PrinterD2Ev:bb.a

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !171
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf2io7PrinterD2Ev:bb.a

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exit.i, %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = load ptr, ptr %i.bl, align 16, !tbaa !172 ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EED2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = load ptr, ptr %i.bn, align 16, !tbaa !173
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf2io7PrinterD2Ev:bb.a

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EED2Ev.exit, %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load i64, ptr %i.bs, align 16, !tbaa !174 ; 2 uses
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSinkD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.bu = load ptr, ptr %0, align 16, !tbaa !175  ; 2 uses
  %i.bv = trunc i64 %i.bt to i32
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
end_hunk_7
begin_hunk_8_@llvm.experimental.noalias.scope.decl
!161 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEE", !12, i64 0}
!162 = !{!76, !13, i64 0}
!163 = !{!68, !12, i64 16}
!164 = !{!64, !65, i64 0}
!165 = !{!64, !65, i64 8}
!166 = distinct !{!166, !156}
!167 = !{!64, !65, i64 16}
!168 = !{!59, !60, i64 0}
!169 = !{!59, !60, i64 8}
!170 = distinct !{!170, !156}
!171 = !{!59, !60, i64 16}
!172 = !{!54, !55, i64 0}
!173 = !{!54, !55, i64 16}
!174 = !{!42, !13, i64 16}
!175 = !{!42, !43, i64 0}
end_hunk_8
