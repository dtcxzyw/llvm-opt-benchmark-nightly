inline.NumInlined: 367
inline.NumDeleted: 217
begin_hunk_0_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.b = ptrtoint ptr %.sroa.17.2 to i64          ; 5 uses
  %i.c = zext i16 %.sroa.0.1 to i32
  %i.d = select i1 %.sroa.8.1, i32 %i.c, i32 0
  %i.e = shl i32 %.1, 16
  %i.f = or disjoint i32 %i.e, %i.d               ; 5 uses
  %i.g = icmp eq ptr %.sroa.0142.2, %.sroa.16.2
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  %.sroa.27.0303 = phi ptr [ %.sroa.27.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 11 uses
  %.0203302 = phi i32 [ %.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %bb.a ] ; 9 uses
  %.sroa.0.0301 = phi i16 [ %.sroa.0.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ undef, %bb.a ] ; 8 uses
  %.sroa.8.0300 = phi i1 [ %.sroa.8.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ false, %bb.a ]
  %.sroa.0186.0299 = phi ptr [ %.sroa.0186.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 21 uses
  %.sroa.27.0204298 = phi ptr [ %.sroa.27.2206, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 16 uses
  %.sroa.17.0297 = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 13 uses
  %i.h = load i32, ptr %.0309, align 4, !tbaa !3  ; 8 uses
  br i1 %.sroa.8.0300, label %bb.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph310
  %i.i = add i32 %i.h, 32768
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE:bb.a
  %.sroa.17.2 = phi ptr [ %.sroa.17.0297, %bb.j ], [ %.sroa.17.0297, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.17.0297, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.17.0297, %bb.d ], [ %.sroa.17.0297, %bb.l ], [ %.sroa.17.3, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.17.0297, %bb.v ], [ %.sroa.17.0297, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 2 uses
  %.sroa.27.2206 = phi ptr [ %.sroa.27.0204298, %bb.j ], [ %.sroa.27.0204298, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.27.0204298, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.27.0204298, %bb.d ], [ %.sroa.27.0204298, %bb.l ], [ %.sroa.27.3207, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.27.0204298, %bb.v ], [ %.sroa.27.0204298, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 7 uses
  %.sroa.0186.2 = phi ptr [ %.sroa.0186.0299, %bb.j ], [ %.sroa.0186.0299, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0186.0299, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.0186.0299, %bb.d ], [ %.sroa.0186.0299, %bb.l ], [ %.sroa.0186.3, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.0186.0299, %bb.v ], [ %.sroa.0186.0299, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 7 uses
  %.sroa.8.1 = phi i1 [ true, %bb.j ], [ false, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ true, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ false, %bb.d ], [ true, %bb.l ], [ true, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ true, %bb.v ], [ true, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 2 uses
  %.sroa.0.1 = phi i16 [ %.sroa.0.0301, %bb.j ], [ %.sroa.0.0301, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sink.i, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.0.0301, %bb.d ], [ %.sroa.0.0301, %bb.l ], [ %.sroa.0.0301, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.0.0301, %bb.v ], [ %.sroa.0.0301, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 2 uses
  %.1 = phi i32 [ %i.ad, %bb.j ], [ %.0203302, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ 1, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.0203302, %bb.d ], [ %.0203302, %bb.l ], [ %.0203302, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.0203302, %bb.v ], [ %.0203302, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 2 uses
  %.sroa.27.2 = phi ptr [ %.sroa.27.0303, %bb.j ], [ %.sroa.27.0303, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.27.0303, %_ZNSt8optionalIsEaSIRiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIsES5_IsNSt5decayIS8_E4typeEEEEESt16is_constructibleIsJS8_EESt13is_assignableIRsS8_EEERS0_E4typeEOS8_.exit ], [ %.sroa.27.0303, %bb.d ], [ %.sroa.27.0303, %bb.l ], [ %.sroa.27.0303, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.27.0303, %bb.v ], [ %i.dc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69 ] ; 7 uses
end_hunk_2
