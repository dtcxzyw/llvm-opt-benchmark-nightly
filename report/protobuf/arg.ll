inline.NumInlined: 657
inline.NumDeleted: 252
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgEPKwmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = load ptr, ptr %4, align 8, !tbaa !22
  invoke void %i.ah(ptr noundef %i.ai, i64 %i.af, ptr nonnull %i.ad)
          to label %.noexc38 unwind label %bb.l

.noexc38:                                         ; preds = %bb.i
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !20
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ak = load ptr, ptr %4, align 8, !tbaa !22
  invoke void %i.aj(ptr noundef %i.ak, i64 %i.n, ptr %.pre)
          to label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %.pre, i64 %i.n, i1 false)
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplEDnNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = load ptr, ptr %3, align 8, !tbaa !22
  tail call void %i.p(ptr noundef %i.q, i64 %i.n, ptr nonnull %i.l), !inline_history !90
  store ptr %i.l, ptr %i.g, align 8, !tbaa !20
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.s = load ptr, ptr %3, align 8, !tbaa !22
  tail call void %i.r(ptr noundef %i.s, i64 5, ptr nonnull @.str.2), !inline_history !91
  br label %_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.d:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051219str_format_internal13ConvertIntArgINS0_6int128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.u = lshr i64 %.sroa.5.0.i, 3                 ; 2 uses
  %i.v = or i64 %i.u, %i.t
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit, label %bb.f, !llvm.loop !92

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit: ; preds = %bb.f
  store ptr %i.n, ptr %5, align 8, !tbaa !10
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051219str_format_internal13ConvertIntArgINS0_6int128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.ap = lshr i64 %.sroa.5.0.i28, 8              ; 2 uses
  %i.aq = or i64 %i.ap, %i.ao
  %.not.i31 = icmp eq i64 %i.aq, 0
  br i1 %.not.i31, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit, label %bb.h, !llvm.loop !93

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit: ; preds = %bb.h
  %i.ar = and i16 %i.ai, 255
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051219str_format_internal13ConvertIntArgINS0_6int128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.bm = lshr i64 %.sroa.5.0.i32, 4              ; 2 uses
  %i.bn = or i64 %i.bm, %i.bl
  %.not.i35 = icmp eq i64 %i.bn, 0
  br i1 %.not.i35, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit, label %bb.j, !llvm.loop !94

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit: ; preds = %bb.j
  store ptr %i.bf, ptr %5, align 8, !tbaa !10
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051219str_format_internal13ConvertIntArgINS0_6int128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %.not.i.i = icmp ne i64 %i.ce, 0
  %i.ch = icmp ne i128 %i.cf, 0
  %i.ci = or i1 %.not.i.i, %i.ch
  br i1 %i.ci, label %bb.l, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit, !llvm.loop !95

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit: ; preds = %bb.l
  %i.cj = load i8, ptr %i.bw, align 1, !tbaa !7
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051219str_format_internal13ConvertIntArgINS0_6int128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %.not.i.i.i = icmp ne i64 %i.df, 0
  %i.di = icmp ne i128 %i.dg, 0
  %i.dj = or i1 %.not.i.i.i, %i.di
  br i1 %i.dj, label %bb.n, label %bb.o, !llvm.loop !95

bb.o:                                             ; preds = %bb.n
  %i.dk = load i8, ptr %i.cx, align 1, !tbaa !7
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051219str_format_internal13ConvertIntArgINS0_7uint128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.r = lshr i64 %.sroa.5.0.i, 3                 ; 2 uses
  %i.s = or i64 %i.r, %i.q
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit, label %bb.f, !llvm.loop !92

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit: ; preds = %bb.f
  store ptr %i.k, ptr %6, align 8, !tbaa !10
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051219str_format_internal13ConvertIntArgINS0_7uint128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.aj = lshr i64 %.sroa.5.0.i33, 8              ; 2 uses
  %i.ak = or i64 %i.aj, %i.ai
  %.not.i36 = icmp eq i64 %i.ak, 0
  br i1 %.not.i36, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit, label %bb.h, !llvm.loop !93

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit: ; preds = %bb.h
  %i.al = and i16 %i.ac, 255
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051219str_format_internal13ConvertIntArgINS0_7uint128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.bd = lshr i64 %.sroa.5.0.i37, 4              ; 2 uses
  %i.be = or i64 %i.bd, %i.bc
  %.not.i40 = icmp eq i64 %i.be, 0
  br i1 %.not.i40, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit, label %bb.j, !llvm.loop !94

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit: ; preds = %bb.j
  store ptr %i.aw, ptr %6, align 8, !tbaa !10
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051219str_format_internal13ConvertIntArgINS0_7uint128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %.not.i.i = icmp ne i64 %i.bs, 0
  %i.bv = icmp ne i128 %i.bt, 0
  %i.bw = or i1 %.not.i.i, %i.bv
  br i1 %i.bw, label %bb.l, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit, !llvm.loop !95

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit: ; preds = %bb.l
  %i.bx = load i8, ptr %i.bk, align 1, !tbaa !7
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051219str_format_internal13ConvertIntArgINS0_7uint128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %.not.i.i47 = icmp ne i64 %i.cn, 0
  %i.cq = icmp ne i128 %i.co, 0
  %i.cr = or i1 %.not.i.i47, %i.cq
  br i1 %i.cr, label %bb.n, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit49, !llvm.loop !95

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit49: ; preds = %bb.n
  %i.cs = load i8, ptr %i.cf, align 1, !tbaa !7
end_hunk_11
begin_hunk_12_@llvm.umin.i64
!87 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJmSaIcEEEE", !88, i64 0}
!88 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJmSaIcEEEESt16integer_sequenceImJLm0ELm1EEELb1EEE", !83, i64 0}
!89 = distinct !{!89, !9}
!90 = distinct !{ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, null, null, null}
!91 = distinct !{ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, ptr @_ZN4absl12lts_2025051219str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE, null, null}
!92 = distinct !{!92, !9}
!93 = distinct !{!93, !9}
!94 = distinct !{!94, !9}
!95 = distinct !{!95, !9}
end_hunk_12
