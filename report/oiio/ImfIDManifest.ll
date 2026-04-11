inline.NumInlined: 2191
inline.NumDeleted: 816
begin_hunk_0_@_ZNK27OpenImageIO_v3_1_Imf__3_3_510IDManifest9serializeERSt6vectorIcSaIcEE:bb.a
  %.01881370 = phi i64 [ %i.afr, %bb.fd ], [ 0, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ] ; 2 uses
  %.01891369 = phi i32 [ %.3192, %bb.fd ], [ %i.xj, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ]
  %.sroa.31.01368 = phi ptr [ %.sroa.31.1, %bb.fd ], [ null, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ] ; 20 uses
  %.sroa.15.01367 = phi ptr [ %.sroa.15.1, %bb.fd ], [ null, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ] ; 10 uses
  %.sroa.0823.01366 = phi ptr [ %.sroa.0823.1, %bb.fd ], [ null, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ] ; 30 uses
  %i.xo = getelementptr inbounds nuw [208 x i8], ptr %i.xn, i64 %.01881370 ; 10 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 24
end_hunk_0
begin_hunk_1_@_ZNK27OpenImageIO_v3_1_Imf__3_3_510IDManifest9serializeERSt6vectorIcSaIcEE:bb.a
  %.sroa.0823.2 = phi ptr [ %i.adm, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.0823.01366, %bb.eb ]
  %.pn1095 = phi ptr [ %i.adn, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.15.01367, %bb.eb ]
  %.sroa.31.2 = phi ptr [ %i.adp, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.31.01368, %bb.eb ]
  %i.adq = trunc i64 %.0184.lcssa1705 to i32
  %i.adr = add i32 %.1190.lcssa1704, %i.adq
  br label %bb.fd
end_hunk_1
begin_hunk_2_@_ZNK27OpenImageIO_v3_1_Imf__3_3_510IDManifest9serializeERSt6vectorIcSaIcEE:bb.a
  %.sroa.0823.3 = phi ptr [ %i.aeb, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i428 ], [ %.sroa.0823.01366, %bb.ei ]
  %.pn1094 = phi ptr [ %i.aec, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i428 ], [ %.sroa.15.01367, %bb.ei ]
  %.sroa.31.3 = phi ptr [ %i.aee, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i428 ], [ %.sroa.31.01368, %bb.ei ]
  %i.aef = load i64, ptr %i.acz, align 8, !tbaa !45
  %.tr202 = trunc i64 %i.aef to i32
  %i.aeg = shl i32 %.tr202, 2
end_hunk_2
begin_hunk_3_@_ZNK27OpenImageIO_v3_1_Imf__3_3_510IDManifest9serializeERSt6vectorIcSaIcEE:bb.a
  %.sroa.0823.4 = phi ptr [ %i.aev, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i439 ], [ %.sroa.0823.01366, %bb.eq ]
  %.pn1093 = phi ptr [ %i.aew, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i439 ], [ %.sroa.15.01367, %bb.eq ]
  %.sroa.31.4 = phi ptr [ %i.aey, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i439 ], [ %.sroa.31.01368, %bb.eq ]
  %i.aez = trunc i64 %i.zy to i32
  %i.afa = add i32 %.2191.lcssa, %i.aez
  br label %bb.fd
end_hunk_3
begin_hunk_4_@_ZNK27OpenImageIO_v3_1_Imf__3_3_510IDManifest9serializeERSt6vectorIcSaIcEE:bb.a
  %.sroa.0823.5 = phi ptr [ %i.afk, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i450 ], [ %.sroa.0823.01366, %bb.ex ]
  %.pn = phi ptr [ %i.afl, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i450 ], [ %.sroa.15.01367, %bb.ex ]
  %.sroa.31.5 = phi ptr [ %i.afn, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i450 ], [ %.sroa.31.01368, %bb.ex ]
  %i.afo = load i64, ptr %i.aei, align 8, !tbaa !45
  %.tr201 = trunc i64 %i.afo to i32
  %i.afp = shl i32 %.tr201, 3
end_hunk_4
begin_hunk_5_@_ZNK27OpenImageIO_v3_1_Imf__3_3_510IDManifest9serializeERSt6vectorIcSaIcEE:bb.a

bb.fd:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit442, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit453, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit431
  %.sroa.0823.1 = phi ptr [ %.sroa.0823.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.0823.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit431 ], [ %.sroa.0823.4, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit442 ], [ %.sroa.0823.5, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit453 ] ; 2 uses
  %.sroa.15.1.a = phi ptr [ %.pn1095, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.pn1094, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit431 ], [ %.pn1093, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit442 ], [ %.pn, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit453 ]
  %.sroa.31.1 = phi ptr [ %.sroa.31.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.31.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit431 ], [ %.sroa.31.4, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit442 ], [ %.sroa.31.5, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit453 ] ; 2 uses
  %.3192 = phi i32 [ %i.adr, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %i.aeh, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit431 ], [ %i.afa, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit442 ], [ %i.afq, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit453 ] ; 2 uses
  %.sroa.15.1 = getelementptr inbounds nuw i8, ptr %.sroa.15.1.a, i64 1
  %i.afr = add nuw i64 %.01881370, 1              ; 2 uses
  %i.afs = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.aft = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifest5eraseEm:bb.a
  br i1 %.not.i32.i.i.i, label %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE5eraseERSC_.exit, label %.lr.ph.i25.i.i.i, !llvm.loop !217

bb.d:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.123.i.i.i = phi ptr [ %.02243.i.i.i, %.lr.ph.i.i.i ], [ %.044.i.i.i, %bb.b ] ; 3 uses
  %.pn.i.i.i = phi i64 [ 24, %.lr.ph.i.i.i ], [ 16, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %.044.i.i.i, i64 %.pn.i.i.i
  %.0.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE5eraseERSC_.exit, label %.lr.ph.i.i.i, !llvm.loop !218
end_hunk_6
