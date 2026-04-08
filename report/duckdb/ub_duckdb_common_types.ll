inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10num_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_1
begin_hunk_2_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10dec_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_2
begin_hunk_3_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_3
begin_hunk_4_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_4
begin_hunk_5_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_5
begin_hunk_6_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_6
begin_hunk_7_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_7
begin_hunk_8_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_8
begin_hunk_9_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_9
begin_hunk_10_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10num_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_10
begin_hunk_11_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_11
begin_hunk_12_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10dec_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_12
begin_hunk_13_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_13
begin_hunk_14_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_14
begin_hunk_15_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_15
begin_hunk_16_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_16
begin_hunk_17_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_17
begin_hunk_18_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_18
begin_hunk_19_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_19
begin_hunk_20_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10num_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_20
begin_hunk_21_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_21
begin_hunk_22_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10dec_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_22
begin_hunk_23_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_23
begin_hunk_24_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_24
begin_hunk_25_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_25
begin_hunk_26_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_26
begin_hunk_27_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_27
begin_hunk_28_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_28
begin_hunk_29_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_29
begin_hunk_30_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10num_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_30
begin_hunk_31_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_31
begin_hunk_32_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10dec_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_32
begin_hunk_33_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_33
begin_hunk_34_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_34
begin_hunk_35_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_35
begin_hunk_36_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_36
begin_hunk_37_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_37
begin_hunk_38_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_38
begin_hunk_39_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_39
begin_hunk_40_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSH_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10num_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_40
begin_hunk_41_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSH_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_41
begin_hunk_42_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSH_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_42
begin_hunk_43_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSH_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_43
begin_hunk_44_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSH_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10hex_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_44
begin_hunk_45_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSH_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_45
begin_hunk_46_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSH_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_46
begin_hunk_47_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSH_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_47
begin_hunk_48_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSH_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_48
begin_hunk_49_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSH_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_49
begin_hunk_50_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSH_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10num_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_50
begin_hunk_51_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSH_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_51
begin_hunk_52_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSH_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_52
begin_hunk_53_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSH_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_53
begin_hunk_54_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSH_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10hex_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_54
begin_hunk_55_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSH_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_55
begin_hunk_56_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSH_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_56
begin_hunk_57_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSH_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_57
begin_hunk_58_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSH_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_58
begin_hunk_59_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSH_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_59
begin_hunk_60_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcEclIRS9_EEvOT_.exit95: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i86, %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit79
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  %i.fa = sub nuw nsw i64 %i.az, %i.db            ; 2 uses
  %.not3.i.i.i96 = icmp eq i64 %i.fa, 0
  br i1 %.not3.i.i.i96, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcEclIRS9_EEvOT_.exit, label %.lr.ph.i.i.i97

end_hunk_60
begin_hunk_61_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i101: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i109, %bb.aq
  %i.fw = phi ptr [ %i.fg, %bb.aq ], [ %i.fu, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i109 ]
  %i.fx = add nsw i64 %.04.i.i.i99, -1            ; 2 uses
  %.not.i.i.i102 = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i.i102, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcEclIRS9_EEvOT_.exit, label %bb.ap, !llvm.loop !3301

end_hunk_61
begin_hunk_62_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_18arg_formatter_baseISA_NS1_13error_handlerEE11char_writerEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a

_ZNK10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE11char_writerclIRS9_EEvOT_.exit83: ; preds = %bb.ae, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i82
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.ds = sub nuw nsw i64 %i.ab, %i.bx            ; 2 uses
  %.not3.i.i.i84 = icmp eq i64 %i.ds, 0
  br i1 %.not3.i.i.i84, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit98, label %.lr.ph.i.i.i85

end_hunk_62
begin_hunk_63_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_18arg_formatter_baseISA_NS1_13error_handlerEE11char_writerEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i89: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i97, %bb.al
  %i.eo = phi ptr [ %i.dy, %bb.al ], [ %i.em, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i97 ]
  %i.ep = add nsw i64 %.04.i.i.i87, -1            ; 2 uses
  %.not.i.i.i90 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i90, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit98, label %bb.ak, !llvm.loop !3301

end_hunk_63
begin_hunk_64_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10num_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_64
begin_hunk_65_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_65
begin_hunk_66_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10dec_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_66
begin_hunk_67_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_67
begin_hunk_68_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_68
begin_hunk_69_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_69
begin_hunk_70_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_70
begin_hunk_71_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_71
begin_hunk_72_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSG_OT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.be = sub nuw nsw i64 %i.f, %i.ag             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_72
begin_hunk_73_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSG_OT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.ca = phi ptr [ %i.bk, %bb.t ], [ %i.by, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cb = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_73
begin_hunk_74_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.bf = sub nuw nsw i64 %i.g, %i.ah             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.bf, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_74
begin_hunk_75_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.cb = phi ptr [ %i.bl, %bb.t ], [ %i.bz, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cc = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_75
begin_hunk_76_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_12float_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZN10duckdb_fmt2v68internal12float_writerIcEclIRSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.bf = sub nuw nsw i64 %i.g, %i.ah             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.bf, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_76
begin_hunk_77_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_12float_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.cb = phi ptr [ %i.bl, %bb.t ], [ %i.bz, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cc = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_77
begin_hunk_78_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_:bb.a
bb.f:                                             ; preds = %.peel.begin
  %i.ai = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.b) ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %.sroa.05.0.lcssa.i.i133.peel = add i64 %1, %i.aj ; 2 uses
  %i.ak = icmp samesign ult i32 %i.b, %spec.select
  br i1 %i.ak, label %bb.g, label %.peel.next.preheader

bb.g:                                             ; preds = %bb.f
  %2 = xor i32 %i.ai, -1
  %i.al = add nsw i32 %spec.select, %2
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add i64 %.sroa.05.0.lcssa.i.i133.peel, 1
  %i.ao = add i64 %i.an, %i.am
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0186.2232.ph = phi i64 [ %i.ao, %bb.g ], [ %.sroa.05.0.lcssa.i.i133.peel, %bb.f ], [ %i.ah, %bb.e ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.k
end_hunk_78
begin_hunk_79_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedIRNSB_14pointer_writerImEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE14pointer_writerImEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.bf = sub nuw nsw i64 %i.g, %i.ah             ; 2 uses
  %.not3.i.i.i62 = icmp eq i64 %i.bf, 0
  br i1 %.not3.i.i.i62, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %.lr.ph.i.i.i63

end_hunk_79
begin_hunk_80_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedIRNSB_14pointer_writerImEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i67: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75, %bb.t
  %i.cb = phi ptr [ %i.bl, %bb.t ], [ %i.bz, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i75 ]
  %i.cc = add nsw i64 %.04.i.i.i65, -1            ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i68, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit76, label %bb.s, !llvm.loop !3301

end_hunk_80
