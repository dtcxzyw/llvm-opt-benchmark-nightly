Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/LogLevel?download=true
inline.NumInlined: 411
inline.NumDeleted: 213
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK5folly5RangeIPKcE10startsWithERKS3_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5follyeqINS_5RangeIPKcEEA6_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(6) %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8, !tbaa !25 ; 3 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !25 ; 2 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.43.0.copyload to i64
  %i.c = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.d = sub i64 %i.b, %i.c
  %.not.i = icmp eq i64 %i.d, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %.sroa.43.0.copyload, %.sroa.02.0.copyload
  br i1 %i.e, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.02.0.copyload, ptr nonnull %1, i64 %i.a)
  %i.f = icmp eq i32 %bcmp.i, 0
  br label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(4) %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8, !tbaa !25 ; 3 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !25 ; 2 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.43.0.copyload to i64
  %i.c = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.d = sub i64 %i.b, %i.c
  %.not.i = icmp eq i64 %i.d, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %.sroa.43.0.copyload, %.sroa.02.0.copyload
  br i1 %i.e, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.02.0.copyload, ptr nonnull %1, i64 %i.a)
  %i.f = icmp eq i32 %bcmp.i, 0
  br label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5follyeqINS_5RangeIPKcEEA8_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8, !tbaa !25 ; 3 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !25 ; 2 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.43.0.copyload to i64
  %i.c = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.d = sub i64 %i.b, %i.c
  %.not.i = icmp eq i64 %i.d, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %.sroa.43.0.copyload, %.sroa.02.0.copyload
  br i1 %i.e, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.02.0.copyload, ptr nonnull %1, i64 %i.a)
  %i.f = icmp eq i32 %bcmp.i, 0
  br label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5follyeqINS_5RangeIPKcEEA9_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(9) %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8, !tbaa !25 ; 3 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !25 ; 2 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.43.0.copyload to i64
  %i.c = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.d = sub i64 %i.b, %i.c
  %.not.i = icmp eq i64 %i.d, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %.sroa.43.0.copyload, %.sroa.02.0.copyload
  br i1 %i.e, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.02.0.copyload, ptr nonnull %1, i64 %i.a)
  %i.f = icmp eq i32 %bcmp.i, 0
  br label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5follyeqINS_5RangeIPKcEEA7_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(7) %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8, !tbaa !25 ; 3 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !25 ; 2 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.43.0.copyload to i64
  %i.c = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.d = sub i64 %i.b, %i.c
  %.not.i = icmp eq i64 %i.d, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %.sroa.43.0.copyload, %.sroa.02.0.copyload
  br i1 %i.e, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.02.0.copyload, ptr nonnull %1, i64 %i.a)
  %i.f = icmp eq i32 %bcmp.i, 0
  br label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5follyeqINS_5RangeIPKcEEA10_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(10) %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8, !tbaa !25 ; 3 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !25 ; 2 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.43.0.copyload to i64
  %i.c = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.d = sub i64 %i.b, %i.c
  %.not.i = icmp eq i64 %i.d, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %.sroa.43.0.copyload, %.sroa.02.0.copyload
  br i1 %i.e, label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.02.0.copyload, ptr nonnull %1, i64 %i.a)
  %i.f = icmp eq i32 %bcmp.i, 0
  br label %_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit

_ZN5follyeqIPKcEEbRKNS_5RangeIT_EES7_.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_(ptr %0, ptr %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::Range", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %0, ptr %2, align 8, !noalias !31
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %1, ptr %i.a, align 8, !noalias !31
  %i.b = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %2) #23, !noalias !31 ; 3 uses
  %i.c = and i64 %i.b, 255
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d, !prof !26

bb.b:                                             ; preds = %bb.a
  %.sroa.53.0.extract.shift.i = and i64 %i.b, -4294967296 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !25, !noalias !34 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !25, !noalias !34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not14.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  br i1 %.not14.i.i.i.i, label %_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedINS_4UnitENS_14ConversionCodeEEEZNS_5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS4_ISE_NSt16remove_referenceIDTclsr6detailE11parseToWraptlSD_Eclsr3stdE7declvalIRSE_EEEEE4type10error_typeEEEE4typeESD_EUlS5_E_JES6_S2_EEDTclsrT3_5then_clsrSP_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISE_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSE_OSR_DpOSS_.exit.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.0915.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %.sroa.2.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedINS_4UnitENS_14ConversionCodeEEEZNS_5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS4_ISE_NSt16remove_referenceIDTclsr6detailE11parseToWraptlSD_Eclsr3stdE7declvalIRSE_EEEEE4type10error_typeEEEE4typeESD_EUlS5_E_JES6_S2_EEDTclsrT3_5then_clsrSP_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISE_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSE_OSR_DpOSS_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.0915.i.i.i.i = phi ptr [ %i.e, %bb.c ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.b ] ; 2 uses
  %i.f = load i8, ptr %.0915.i.i.i.i, align 1, !tbaa !19
  %i.g = sext i8 %i.f to i32
  %i.h = call i32 @isspace(i32 noundef %i.g) #27
  %.not12.not.i.i.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not12.not.i.i.not.i.i, label %_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedINS_4UnitENS_14ConversionCodeEEEZNS_5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS4_ISE_NSt16remove_referenceIDTclsr6detailE11parseToWraptlSD_Eclsr3stdE7declvalIRSE_EEEEE4type10error_typeEEEE4typeESD_EUlS5_E_JES6_S2_EEDTclsrT3_5then_clsrSP_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISE_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSE_OSR_DpOSS_.exit.i.i, label %bb.c

_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedINS_4UnitENS_14ConversionCodeEEEZNS_5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS4_ISE_NSt16remove_referenceIDTclsr6detailE11parseToWraptlSD_Eclsr3stdE7declvalIRSE_EEEEE4type10error_typeEEEE4typeESD_EUlS5_E_JES6_S2_EEDTclsrT3_5then_clsrSP_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISE_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSE_OSR_DpOSS_.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i, %bb.b
  %.sroa.03.0.i12.i.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ 2, %.lr.ph.i.i.i.i ]
  %.sroa.3.0.insert.insert.i.i.i = phi i64 [ %.sroa.53.0.extract.shift.i, %bb.b ], [ %.sroa.53.0.extract.shift.i, %bb.c ], [ 2560, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.i = and i64 %.sroa.3.0.insert.insert.i.i.i, -4294967296
  %3 = or disjoint i64 %i.i, %.sroa.03.0.i12.i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedINS_4UnitENS_14ConversionCodeEEEZNS_5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS4_ISE_NSt16remove_referenceIDTclsr6detailE11parseToWraptlSD_Eclsr3stdE7declvalIRSE_EEEEE4type10error_typeEEEE4typeESD_EUlS5_E_JES6_S2_EEDTclsrT3_5then_clsrSP_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISE_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSE_OSR_DpOSS_.exit.i.i
  %.sroa.3.0.i.i.in.in = phi i64 [ %.sroa.3.0.insert.insert.i.i.i, %_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedINS_4UnitENS_14ConversionCodeEEEZNS_5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS4_ISE_NSt16remove_referenceIDTclsr6detailE11parseToWraptlSD_Eclsr3stdE7declvalIRSE_EEEEE4type10error_typeEEEE4typeESD_EUlS5_E_JES6_S2_EEDTclsrT3_5then_clsrSP_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISE_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSE_OSR_DpOSS_.exit.i.i ], [ %i.b, %bb.d ]
  %.sroa.48.0.insert.insert.i.i = phi i64 [ %3, %_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedINS_4UnitENS_14ConversionCodeEEEZNS_5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS4_ISE_NSt16remove_referenceIDTclsr6detailE11parseToWraptlSD_Eclsr3stdE7declvalIRSE_EEEEE4type10error_typeEEEE4typeESD_EUlS5_E_JES6_S2_EEDTclsrT3_5then_clsrSP_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISE_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSE_OSR_DpOSS_.exit.i.i ], [ 2, %bb.d ]
  %.sroa.3.0.insert.ext.i.i = and i64 %.sroa.3.0.i.i.in.in, 65280
  %.sroa.07.0.insert.insert.i.i = add nuw nsw i64 %.sroa.48.0.insert.insert.i.i, %.sroa.3.0.insert.ext.i.i
  ret i64 %.sroa.07.0.insert.insert.i.i
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA9_cNS_5RangeIPKcEEA16_cS6_ETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISE_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSH_EEEE5valueEiE4typeELi0EEESE_DpRKSG_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !16
  store i8 0, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %0, ptr %i.a, align 8, !tbaa !39
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !25
  %i.d = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i to i64
  %i.e = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %reass.sub = sub i64 %i.d, %i.e
  %i.h = add i64 %reass.sub, 25
  %i.i = add i64 %i.h, %i.g
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJA9_cNS_5RangeIPKcEEA16_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSH_EEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5folly11toAppendFitIJA9_cNS_5RangeIPKcEEA16_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSC_ETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSI_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSH_.exit unwind label %bb.b

_ZN5folly11toAppendFitIJA9_cNS_5RangeIPKcEEA16_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSC_ETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSI_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSH_.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.k = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.b, align 8, !tbaa !19
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly5RangeIPKcE3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.a = load ptr, ptr %1, align 8, !tbaa !22, !noalias !41 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24, !noalias !41 ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !12, !alias.scope !41
  %i.h = icmp eq ptr %i.a, null
  %i.i = icmp ne ptr %i.c, null
  %or.cond.i.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.26) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 15
  br i1 %i.j, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i64 %i.f, 0
  br i1 %i.k, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i64 %i.f, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !20

.noexc9.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !21, !alias.scope !41
  store i64 %i.f, ptr %i.g, align 8, !tbaa !19, !alias.scope !41
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  switch i64 %i.f, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.a, align 1, !tbaa !19
  store i8 %i.p, ptr %i.o, align 1, !tbaa !19
  br label %_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.a, i64 %i.f, i1 false)
  br label %_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_.exit

_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.q, align 8, !tbaa !16, !alias.scope !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 0, ptr %i.r, align 1, !tbaa !19
  ret void
}

declare void @_ZNSt11range_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly2toIjEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_(ptr %0, ptr %1) local_unnamed_addr #7 comdat {
bb.a:
  %2 = alloca %"class.folly::Range", align 8      ; 7 uses
  %3 = alloca %"class.folly::Range", align 8      ; 3 uses
  %4 = alloca %"class.folly::Expected.1", align 8 ; 6 uses
  %5 = alloca %class.anon.8, align 8              ; 5 uses
  %6 = alloca %class.anon.10, align 8             ; 5 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !44
  store ptr %0, ptr %2, align 8, !noalias !50
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !noalias !50
  %i.c = call i64 @_ZN5folly6detail15str_to_integralIjEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %2) #23, !noalias !50 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.d = and i64 %i.c, 255
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !26

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !25, !noalias !57 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !25, !noalias !57 ; 3 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %4, align 8, !alias.scope !57
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !alias.scope !57
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.f, align 8, !alias.scope !57
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %.not14.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not14.i.i.i.i, label %_ZNO5folly8ExpectedINS_4UnitENS_14ConversionCodeEE11thenOrThrowIZNS_2toIjEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESB_E4typeESA_EUlS1_E_ZNS5_IjEESD_SA_EUlS2_E0_EEDTclclsr3stdE7declvalISB_EEclL_ZSt7declvalIOS1_EDTcl9__declvalISB_ELi0EEEvEEEEOSB_OT0_.exit.critedge, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0915.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %_ZNO5folly8ExpectedINS_4UnitENS_14ConversionCodeEE11thenOrThrowIZNS_2toIjEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueESB_E4typeESA_EUlS1_E_ZNS5_IjEESD_SA_EUlS2_E0_EEDTclclsr3stdE7declvalISB_EEclL_ZSt7declvalIOS1_EDTcl9__declvalISB_ELi0EEEvEEEEOSB_OT0_.exit.critedge, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.0915.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.h = load i8, ptr %.0915.i.i.i.i, align 1, !tbaa !19
  %i.i = sext i8 %i.h to i32
  %i.j = call i32 @isspace(i32 noundef %i.i) #27
  %.not12.not.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not12.not.i.i.i.i, label %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE11thenOrThrowINS_6detail18CheckTrailingSpaceEZNS_2toIjEENSt9enable_ifIXntsr3std7is_sameIS4_T_EE5valueESC_E4typeES4_EUlS5_E_EEDTclclsr3stdE7declvalISC_EEclL_ZSt7declvalIRS4_EDTcl9__declvalISC_ELi0EEEvEEEEOSC_OT0_.exit, label %bb.c

bb.d:                                             ; preds = %bb.a
  %.sroa.42.0.extract.shift.i.i = lshr i64 %i.c, 8
  %.sroa.42.0.extract.trunc.i.i = trunc i64 %.sroa.42.0.extract.shift.i.i to i8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %3, ptr %5, align 8, !tbaa !58
  call void @_ZZN5folly2toIjEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef zeroext %.sroa.42.0.extract.trunc.i.i)
  call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_14ConversionCodeEEEJS3_EEEvDpT0_(i8 noundef zeroext %.sroa.42.0.extract.trunc.i.i) #6
  unreachable

_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE11thenOrThrowINS_6detail18CheckTrailingSpaceEZNS_2toIjEENSt9enable_ifIXntsr3std7is_sameIS4_T_EE5valueESC_E4typeES4_EUlS5_E_EEDTclclsr3stdE7declvalISC_EEclL_ZSt7declvalIRS4_EDTcl9__declvalISC_ELi0EEEvEEEEOSC_OT0_.exit: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
end_hunk_0
