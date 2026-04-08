inline.NumInlined: 5790
inline.NumDeleted: 1347
begin_hunk_0_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSA_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.jx = sub nuw nsw i64 %i.dg, %i.gq
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.df, i64 %i.jx, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_1
begin_hunk_2_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !323

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.ip = sub nuw nsw i64 %i.cs, %i.fs
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ih, i8 %i.cr, i64 %i.ip, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_2
begin_hunk_3_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !338

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_3
begin_hunk_4_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !353

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_4
begin_hunk_5_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_5
begin_hunk_6_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSA_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.jx = sub nuw nsw i64 %i.dg, %i.gq
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.df, i64 %i.jx, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_6
begin_hunk_7_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !323

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.ip = sub nuw nsw i64 %i.cs, %i.fs
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ih, i8 %i.cr, i64 %i.ip, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_7
begin_hunk_8_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !338

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_8
begin_hunk_9_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !353

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_9
begin_hunk_10_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_10
begin_hunk_11_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSA_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.jr = sub nuw nsw i64 %i.de, %i.gm
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.dd, i64 %i.jr, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_11
begin_hunk_12_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !240

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.im = sub nuw nsw i64 %i.cr, %i.fq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.if, i8 %i.cq, i64 %i.im, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_12
begin_hunk_13_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !564

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_13
begin_hunk_14_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !579

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_14
begin_hunk_15_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_15
begin_hunk_16_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSA_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.jr = sub nuw nsw i64 %i.de, %i.gm
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.dd, i64 %i.jr, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_16
begin_hunk_17_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !240

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.im = sub nuw nsw i64 %i.cr, %i.fq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.if, i8 %i.cq, i64 %i.im, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_17
begin_hunk_18_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !564

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_18
begin_hunk_19_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !579

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_19
begin_hunk_20_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSC_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.hz = sub nuw nsw i64 %i.cs, %i.fk
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i84, i8 %i.cr, i64 %i.hz, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit87

end_hunk_20
begin_hunk_21_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit77: ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i68, %.lr.ph.i.i.preheader.i.i.i.i74
  %.08.lcssa.i.i.i.i.i.i76 = phi ptr [ %.0.i.i.i69, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i68 ], [ %scevgep.i.i.i.i75, %.lr.ph.i.i.preheader.i.i.i.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.hj = sub nuw nsw i64 %i.ck, %i.ey
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i76, i8 %i.cj, i64 %i.hj, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit79

end_hunk_21
begin_hunk_22_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSC_OT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10hex_writerclIRPcEEvOT_.exit87: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.iv = sub nuw nsw i64 %i.cu, %i.fw
  call void @llvm.memset.p0.i64(ptr align 1 %i.il, i8 %i.ct, i64 %i.iv, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit62

end_hunk_22
begin_hunk_23_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_:bb.a
  store ptr %.0.i.i42, ptr %i.b, align 8, !tbaa !7
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.am = sub nuw nsw i64 %i.ad, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 %i.ac, i64 %i.am, i1 false)
  br label %bb.h

end_hunk_23
begin_hunk_24_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_:bb.a
  store ptr %.0.i.i42, ptr %i.b, align 8, !tbaa !7
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.am = sub nuw nsw i64 %i.ad, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 %i.ac, i64 %i.am, i1 false)
  br label %bb.h

end_hunk_24
begin_hunk_25_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSC_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.hz = sub nuw nsw i64 %i.cs, %i.fk
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i84, i8 %i.cr, i64 %i.hz, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit87

end_hunk_25
begin_hunk_26_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit77: ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i68, %.lr.ph.i.i.preheader.i.i.i.i74
  %.08.lcssa.i.i.i.i.i.i76 = phi ptr [ %.0.i.i.i69, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i68 ], [ %scevgep.i.i.i.i75, %.lr.ph.i.i.preheader.i.i.i.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.hj = sub nuw nsw i64 %i.ck, %i.ey
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i76, i8 %i.cj, i64 %i.hj, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit79

end_hunk_26
begin_hunk_27_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSC_OT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10hex_writerclIRPcEEvOT_.exit87: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.iv = sub nuw nsw i64 %i.cu, %i.fw
  call void @llvm.memset.p0.i64(ptr align 1 %i.il, i8 %i.ct, i64 %i.iv, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit62

end_hunk_27
begin_hunk_28_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_:bb.a
  store ptr %.0.i.i42, ptr %i.b, align 8, !tbaa !7
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.am = sub nuw nsw i64 %i.ad, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 %i.ac, i64 %i.am, i1 false)
  br label %bb.h

end_hunk_28
begin_hunk_29_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_:bb.a
  store ptr %.0.i.i42, ptr %i.b, align 8, !tbaa !7
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.am = sub nuw nsw i64 %i.ad, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 %i.ac, i64 %i.am, i1 false)
  br label %bb.h

end_hunk_29
begin_hunk_30_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10str_writerIcEclIRPcEEvOT_.exit56: ; preds = %.lr.ph.i.i.i51.prol.loopexit, %.lr.ph.i.i.i51, %middle.block133, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit49
  %.08.lcssa.i.i.i55 = phi ptr [ %.0.i.i48, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit49 ], [ %i.fb, %middle.block133 ], [ %.lcssa195.unr, %.lr.ph.i.i.i51.prol.loopexit ], [ %i.gj, %.lr.ph.i.i.i51 ]
  %i.gk = sub nuw nsw i64 %i.co, %i.ep
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i55, i8 %i.cn, i64 %i.gk, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10str_writerIcEclIPcEEvOT_.exit

end_hunk_30
begin_hunk_31_@_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE10write_charEc:bb.a
_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit43.i:          ; preds = %bb.h, %bb.g
  %.0.i.i42.i = phi ptr [ %i.v, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  store i8 %1, ptr %.0.i.i42.i, align 1, !tbaa !17
  %i.ag = sub nuw nsw i64 %i.y, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i42.i, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ah, i8 %i.x, i64 %i.ag, i1 false)
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_18arg_formatter_baseIS4_NS1_13error_handlerEE11char_writerEEEvRKNS0_18basic_format_specsIcEEOT_.exit
end_hunk_31
begin_hunk_32_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_32
begin_hunk_33_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSA_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.jx = sub nuw nsw i64 %i.dg, %i.gq
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.df, i64 %i.jx, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_33
begin_hunk_34_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !323

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.ip = sub nuw nsw i64 %i.cs, %i.fs
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ih, i8 %i.cr, i64 %i.ip, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_34
begin_hunk_35_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !338

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_35
begin_hunk_36_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !353

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_36
begin_hunk_37_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a
  %.011.i.i.ptr.2.i49 = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bp = load i8, ptr %.011.i.i.ptr.2.i49, align 1, !tbaa !17
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !17
  %i.bq = sub nuw nsw i64 %i.ak, %i.bb
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.br, i8 %i.aj, i64 %i.bq, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit52
end_hunk_37
begin_hunk_38_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_12float_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a
_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit46: ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit44, %bb.j
  %.1 = phi ptr [ %.0.i.i43, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit44 ], [ %i.bf, %bb.j ]
  %i.bg = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef %.1)
  %i.bh = sub nuw nsw i64 %i.ah, %i.av
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bg, i8 %i.ag, i64 %i.bh, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit48

end_hunk_38
begin_hunk_39_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_:bb.a
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
end_hunk_39
begin_hunk_40_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedIRNS5_14pointer_writerImEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a
  br i1 %.not.i.i50, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIRPcEEvOT_.exit51, label %bb.j, !llvm.loop !240

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIRPcEEvOT_.exit51: ; preds = %bb.j
  %i.bp = sub nuw nsw i64 %i.al, %i.bb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bj, i8 %i.ak, i64 %i.bp, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIPcEEvOT_.exit

end_hunk_40
begin_hunk_41_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIwEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.hh = sub nuw nsw i64 %i.cf, %i.ex
  %i.hi = getelementptr inbounds i8, ptr %.0.i.i.i72, i64 %i.hd ; 4 uses
  %.idx.i.i83 = shl nuw nsw i64 %i.hh, 2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.idx.i.i83
end_hunk_41
begin_hunk_42_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIwEEE10dec_writerEEEEEvRKSA_OT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIwEEE10dec_writerEEclIRPwEEvOT_.exit98: ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.iz = sub nuw nsw i64 %i.cr, %i.fz
  %i.ja = getelementptr inbounds i8, ptr %.0.i.i.i82, i64 %.idx.i.i.i.i89 ; 4 uses
  %.idx.i.i99 = shl nuw nsw i64 %i.iz, 2
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.idx.i.i99
end_hunk_42
begin_hunk_43_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIwEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i76, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIwEEE10hex_writerEEclIRPwEEvOT_.exit82, label %bb.n, !llvm.loop !1402

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIwEEE10hex_writerEEclIRPwEEvOT_.exit82: ; preds = %bb.n
  %i.ho = sub nuw nsw i64 %i.cc, %i.ez
  %.idx.i.i83 = shl nuw nsw i64 %i.ho, 2
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.idx.i.i83
  %i.hq = shl nuw nsw i64 %i.c, 2
end_hunk_43
begin_hunk_44_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i74, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEclIRPwEEvOT_.exit80, label %bb.n, !llvm.loop !1449

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEclIRPwEEvOT_.exit80: ; preds = %bb.n
  %i.gk = sub nuw nsw i64 %i.bs, %i.ef
  %.idx.i.i81 = shl nuw nsw i64 %i.gk, 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx.i.i81
  %i.gm = shl nuw nsw i64 %i.c, 2
end_hunk_44
begin_hunk_45_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i74, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEclIRPwEEvOT_.exit80, label %bb.n, !llvm.loop !1496

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEclIRPwEEvOT_.exit80: ; preds = %bb.n
  %i.gk = sub nuw nsw i64 %i.bs, %i.ef
  %.idx.i.i81 = shl nuw nsw i64 %i.gk, 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx.i.i81
  %i.gm = shl nuw nsw i64 %i.c, 2
end_hunk_45
begin_hunk_46_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIwEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.hh = sub nuw nsw i64 %i.cf, %i.ex
  %i.hi = getelementptr inbounds i8, ptr %.0.i.i.i72, i64 %i.hd ; 4 uses
  %.idx.i.i83 = shl nuw nsw i64 %i.hh, 2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.idx.i.i83
end_hunk_46
begin_hunk_47_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIwEEE10dec_writerEEEEEvRKSA_OT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIwEEE10dec_writerEEclIRPwEEvOT_.exit98: ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.iz = sub nuw nsw i64 %i.cr, %i.fz
  %i.ja = getelementptr inbounds i8, ptr %.0.i.i.i82, i64 %.idx.i.i.i.i89 ; 4 uses
  %.idx.i.i99 = shl nuw nsw i64 %i.iz, 2
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.idx.i.i99
end_hunk_47
begin_hunk_48_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIwEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i76, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIwEEE10hex_writerEEclIRPwEEvOT_.exit82, label %bb.n, !llvm.loop !1402

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIwEEE10hex_writerEEclIRPwEEvOT_.exit82: ; preds = %bb.n
  %i.ho = sub nuw nsw i64 %i.cc, %i.ez
  %.idx.i.i83 = shl nuw nsw i64 %i.ho, 2
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.idx.i.i83
  %i.hq = shl nuw nsw i64 %i.c, 2
end_hunk_48
begin_hunk_49_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i74, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEclIRPwEEvOT_.exit80, label %bb.n, !llvm.loop !1449

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEclIRPwEEvOT_.exit80: ; preds = %bb.n
  %i.gk = sub nuw nsw i64 %i.bs, %i.ef
  %.idx.i.i81 = shl nuw nsw i64 %i.gk, 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx.i.i81
  %i.gm = shl nuw nsw i64 %i.c, 2
end_hunk_49
begin_hunk_50_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i74, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEclIRPwEEvOT_.exit80, label %bb.n, !llvm.loop !1496

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEclIRPwEEvOT_.exit80: ; preds = %bb.n
  %i.gk = sub nuw nsw i64 %i.bs, %i.ef
  %.idx.i.i81 = shl nuw nsw i64 %i.gk, 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx.i.i81
  %i.gm = shl nuw nsw i64 %i.c, 2
end_hunk_50
begin_hunk_51_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIwEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.hh = sub nuw nsw i64 %i.cf, %i.ex
  %i.hi = getelementptr inbounds i8, ptr %.0.i.i.i72, i64 %i.hd ; 4 uses
  %.idx.i.i83 = shl nuw nsw i64 %i.hh, 2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.idx.i.i83
end_hunk_51
begin_hunk_52_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIwEEE10dec_writerEEEEEvRKSA_OT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIwEEE10dec_writerEEclIRPwEEvOT_.exit98: ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.iw = sub nuw nsw i64 %i.cq, %i.fx
  %i.ix = getelementptr inbounds i8, ptr %.0.i.i.i82, i64 %.idx.i.i.i.i89 ; 4 uses
  %.idx.i.i99 = shl nuw nsw i64 %i.iw, 2
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %.idx.i.i99
end_hunk_52
begin_hunk_53_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIwEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i76, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIwEEE10hex_writerEEclIRPwEEvOT_.exit82, label %bb.n, !llvm.loop !1257

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIwEEE10hex_writerEEclIRPwEEvOT_.exit82: ; preds = %bb.n
  %i.hl = sub nuw nsw i64 %i.cb, %i.ex
  %.idx.i.i83 = shl nuw nsw i64 %i.hl, 2
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx.i.i83
  %i.hn = shl nuw nsw i64 %i.c, 2
end_hunk_53
begin_hunk_54_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i74, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEclIRPwEEvOT_.exit80, label %bb.n, !llvm.loop !1993

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEclIRPwEEvOT_.exit80: ; preds = %bb.n
  %i.gn = sub nuw nsw i64 %i.bt, %i.eh
  %.idx.i.i81 = shl nuw nsw i64 %i.gn, 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.idx.i.i81
  %i.gp = shl nuw nsw i64 %i.c, 2
end_hunk_54
begin_hunk_55_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i74, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEclIRPwEEvOT_.exit80, label %bb.n, !llvm.loop !2040

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEclIRPwEEvOT_.exit80: ; preds = %bb.n
  %i.gn = sub nuw nsw i64 %i.bt, %i.eh
  %.idx.i.i81 = shl nuw nsw i64 %i.gn, 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.idx.i.i81
  %i.gp = shl nuw nsw i64 %i.c, 2
end_hunk_55
begin_hunk_56_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIwEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.hh = sub nuw nsw i64 %i.cf, %i.ex
  %i.hi = getelementptr inbounds i8, ptr %.0.i.i.i72, i64 %i.hd ; 4 uses
  %.idx.i.i83 = shl nuw nsw i64 %i.hh, 2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.idx.i.i83
end_hunk_56
begin_hunk_57_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIwEEE10dec_writerEEEEEvRKSA_OT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIwEEE10dec_writerEEclIRPwEEvOT_.exit98: ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.iw = sub nuw nsw i64 %i.cq, %i.fx
  %i.ix = getelementptr inbounds i8, ptr %.0.i.i.i82, i64 %.idx.i.i.i.i89 ; 4 uses
  %.idx.i.i99 = shl nuw nsw i64 %i.iw, 2
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %.idx.i.i99
end_hunk_57
begin_hunk_58_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIwEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i76, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIwEEE10hex_writerEEclIRPwEEvOT_.exit82, label %bb.n, !llvm.loop !1257

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIwEEE10hex_writerEEclIRPwEEvOT_.exit82: ; preds = %bb.n
  %i.hl = sub nuw nsw i64 %i.cb, %i.ex
  %.idx.i.i83 = shl nuw nsw i64 %i.hl, 2
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx.i.i83
  %i.hn = shl nuw nsw i64 %i.c, 2
end_hunk_58
begin_hunk_59_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i74, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEclIRPwEEvOT_.exit80, label %bb.n, !llvm.loop !1993

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEclIRPwEEvOT_.exit80: ; preds = %bb.n
  %i.gn = sub nuw nsw i64 %i.bt, %i.eh
  %.idx.i.i81 = shl nuw nsw i64 %i.gn, 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.idx.i.i81
  %i.gp = shl nuw nsw i64 %i.c, 2
end_hunk_59
begin_hunk_60_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i74, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEclIRPwEEvOT_.exit80, label %bb.n, !llvm.loop !2040

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEclIRPwEEvOT_.exit80: ; preds = %bb.n
  %i.gn = sub nuw nsw i64 %i.bt, %i.eh
  %.idx.i.i81 = shl nuw nsw i64 %i.gn, 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.idx.i.i81
  %i.gp = shl nuw nsw i64 %i.c, 2
end_hunk_60
begin_hunk_61_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE10num_writerEEEEEvRKSC_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.he = sub nuw nsw i64 %i.ce, %i.ev
  %i.hf = getelementptr inbounds i8, ptr %.0.i.i.i76, i64 %i.ha ; 4 uses
  %.idx.i.i90 = shl nuw nsw i64 %i.he, 2
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.idx.i.i90
end_hunk_61
begin_hunk_62_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE10dec_writerEEEEEvRKSC_OT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE10dec_writerEEclIRPwEEvOT_.exit81: ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.go = sub nuw nsw i64 %i.bw, %i.ej
  %i.gp = getelementptr inbounds i8, ptr %.0.i.i.i72, i64 %i.gk ; 4 uses
  %.idx.i.i82 = shl nuw nsw i64 %i.go, 2
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx.i.i82
end_hunk_62
begin_hunk_63_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE10hex_writerEEEEEvRKSC_OT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE10hex_writerclIRPwEEvOT_.exit110: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.hu = sub nuw nsw i64 %i.ce, %i.fd
  %.idx.i.i73 = shl nuw nsw i64 %i.hu, 2
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.idx.i.i73
  %i.hw = shl nuw nsw i64 %i.c, 2
end_hunk_63
begin_hunk_64_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE10bin_writerILi1EEEEEEEvRKSC_OT_:bb.a
  store ptr %.0.i.i46, ptr %i.b, align 8, !tbaa !118
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE10bin_writerILi1EEEEclIRPwEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !118 ; 4 uses
  %i.bf = sub nuw nsw i64 %i.ad, %i.at
  %.idx.i.i48 = shl nuw nsw i64 %i.bf, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i48
  %i.bh = shl nuw nsw i64 %i.e, 2
end_hunk_64
begin_hunk_65_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE10bin_writerILi3EEEEEEEvRKSC_OT_:bb.a
  store ptr %.0.i.i46, ptr %i.b, align 8, !tbaa !118
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE10bin_writerILi3EEEEclIRPwEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !118 ; 4 uses
  %i.bf = sub nuw nsw i64 %i.ad, %i.at
  %.idx.i.i48 = shl nuw nsw i64 %i.bf, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i48
  %i.bh = shl nuw nsw i64 %i.e, 2
end_hunk_65
begin_hunk_66_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE10num_writerEEEEEvRKSC_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.he = sub nuw nsw i64 %i.ce, %i.ev
  %i.hf = getelementptr inbounds i8, ptr %.0.i.i.i76, i64 %i.ha ; 4 uses
  %.idx.i.i90 = shl nuw nsw i64 %i.he, 2
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.idx.i.i90
end_hunk_66
begin_hunk_67_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE10dec_writerEEEEEvRKSC_OT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE10dec_writerEEclIRPwEEvOT_.exit81: ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.go = sub nuw nsw i64 %i.bw, %i.ej
  %i.gp = getelementptr inbounds i8, ptr %.0.i.i.i72, i64 %i.gk ; 4 uses
  %.idx.i.i82 = shl nuw nsw i64 %i.go, 2
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx.i.i82
end_hunk_67
begin_hunk_68_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE10hex_writerEEEEEvRKSC_OT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE10hex_writerclIRPwEEvOT_.exit110: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.hu = sub nuw nsw i64 %i.ce, %i.fd
  %.idx.i.i73 = shl nuw nsw i64 %i.hu, 2
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.idx.i.i73
  %i.hw = shl nuw nsw i64 %i.c, 2
end_hunk_68
begin_hunk_69_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE10bin_writerILi1EEEEEEEvRKSC_OT_:bb.a
  store ptr %.0.i.i46, ptr %i.b, align 8, !tbaa !118
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE10bin_writerILi1EEEEclIRPwEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !118 ; 4 uses
  %i.bf = sub nuw nsw i64 %i.ad, %i.at
  %.idx.i.i48 = shl nuw nsw i64 %i.bf, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i48
  %i.bh = shl nuw nsw i64 %i.e, 2
end_hunk_69
begin_hunk_70_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE10bin_writerILi3EEEEEEEvRKSC_OT_:bb.a
  store ptr %.0.i.i46, ptr %i.b, align 8, !tbaa !118
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE10bin_writerILi3EEEEclIRPwEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !118 ; 4 uses
  %i.bf = sub nuw nsw i64 %i.ad, %i.at
  %.idx.i.i48 = shl nuw nsw i64 %i.bf, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i48
  %i.bh = shl nuw nsw i64 %i.e, 2
end_hunk_70
begin_hunk_71_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIwEEOT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10str_writerIcEclIRPwEEvOT_.exit60: ; preds = %.lr.ph.i.i.i.i.i.i.i56, %middle.block168, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit53
  %.08.lcssa.i.i.i.i.i.i.i54 = phi ptr [ %.0.i.i52, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit53 ], [ %i.dp, %middle.block168 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i56 ] ; 4 uses
  %i.ec = sub nuw nsw i64 %i.bm, %i.cy
  %.idx.i.i61 = shl nuw nsw i64 %i.ec, 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i.i.i54, i64 %.idx.i.i61
  %i.ee = shl nuw nsw i64 %i.t, 2
end_hunk_71
begin_hunk_72_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS1_18arg_formatter_baseIS4_NS1_13error_handlerEE11char_writerEEEvRKNS0_18basic_format_specsIwEEOT_:bb.a
  %.0.i.i46 = phi ptr [ %i.u, %bb.g ], [ %i.an, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i43 ] ; 2 uses
  %i.aw = load i32, ptr %2, align 4, !tbaa !2856
  store i32 %i.aw, ptr %.0.i.i46, align 4, !tbaa !116
  %i.ax = sub nuw nsw i64 %i.x, %i.al
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i46, i64 4 ; 4 uses
  %.idx.i.i48 = shl nuw nsw i64 %i.ax, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i.i48
end_hunk_72
begin_hunk_73_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIwNS0_18basic_format_specsIwEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.hh = sub nuw nsw i64 %i.cf, %i.ex
  %i.hi = getelementptr inbounds i8, ptr %.0.i.i.i72, i64 %i.hd ; 4 uses
  %.idx.i.i83 = shl nuw nsw i64 %i.hh, 2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.idx.i.i83
end_hunk_73
begin_hunk_74_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIwNS0_18basic_format_specsIwEEE10dec_writerEEEEEvRKSA_OT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIwNS0_18basic_format_specsIwEEE10dec_writerEEclIRPwEEvOT_.exit98: ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.iz = sub nuw nsw i64 %i.cr, %i.fz
  %i.ja = getelementptr inbounds i8, ptr %.0.i.i.i82, i64 %.idx.i.i.i.i89 ; 4 uses
  %.idx.i.i99 = shl nuw nsw i64 %i.iz, 2
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.idx.i.i99
end_hunk_74
begin_hunk_75_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIwNS0_18basic_format_specsIwEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i76, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIwNS0_18basic_format_specsIwEEE10hex_writerEEclIRPwEEvOT_.exit82, label %bb.n, !llvm.loop !1402

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIwNS0_18basic_format_specsIwEEE10hex_writerEEclIRPwEEvOT_.exit82: ; preds = %bb.n
  %i.ho = sub nuw nsw i64 %i.cc, %i.ez
  %.idx.i.i83 = shl nuw nsw i64 %i.ho, 2
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.idx.i.i83
  %i.hq = shl nuw nsw i64 %i.c, 2
end_hunk_75
begin_hunk_76_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIwNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i74, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIwNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEclIRPwEEvOT_.exit80, label %bb.n, !llvm.loop !1449

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIwNS0_18basic_format_specsIwEEE10bin_writerILi1EEEEclIRPwEEvOT_.exit80: ; preds = %bb.n
  %i.gk = sub nuw nsw i64 %i.bs, %i.ef
  %.idx.i.i81 = shl nuw nsw i64 %i.gk, 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx.i.i81
  %i.gm = shl nuw nsw i64 %i.c, 2
end_hunk_76
begin_hunk_77_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIwNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i.i74, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIwNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEclIRPwEEvOT_.exit80, label %bb.n, !llvm.loop !1496

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE17padded_int_writerINS5_10int_writerIwNS0_18basic_format_specsIwEEE10bin_writerILi3EEEEclIRPwEEvOT_.exit80: ; preds = %bb.n
  %i.gk = sub nuw nsw i64 %i.bs, %i.ef
  %.idx.i.i81 = shl nuw nsw i64 %i.gk, 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx.i.i81
  %i.gm = shl nuw nsw i64 %i.c, 2
end_hunk_77
begin_hunk_78_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS1_16nonfinite_writerIwEEEEvRKNS0_18basic_format_specsIwEEOT_:bb.a
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !17
  %i.cd = sext i8 %i.cc to i32
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !116
  %i.ce = sub nuw nsw i64 %i.ae, %i.ba
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 12 ; 4 uses
  %.idx.i.i53 = shl nuw nsw i64 %i.ce, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i53
end_hunk_78
begin_hunk_79_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS1_12float_writerIwEEEEvRKNS0_18basic_format_specsIwEEOT_:bb.a
_ZN10duckdb_fmt2v68internal12float_writerIwEclIRPwEEvOT_.exit52: ; preds = %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49, %bb.k
  %i.ca = phi ptr [ %i.bz, %bb.k ], [ %.0.i.i48, %_ZSt6fill_nIPwmwET_S1_T0_RKT1_.exit49 ]
  %i.cb = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.ca) ; 4 uses
  %i.cc = sub nuw nsw i64 %i.ah, %i.bg
  %.idx.i.i53 = shl nuw nsw i64 %i.cc, 2
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i53
  %i.ce = shl nuw nsw i64 %i.d, 2
end_hunk_79
begin_hunk_80_@_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyINS1_17counting_iteratorEEET_S6_:bb.a
bb.f:                                             ; preds = %.peel.begin
  %i.ak = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.b) ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %.sroa.06.0.lcssa.i.i.i.i.i.i132.peel = add i64 %1, %i.al ; 2 uses
  %i.am = icmp samesign ult i32 %i.b, %spec.select
  br i1 %i.am, label %bb.g, label %.peel.next.preheader

bb.g:                                             ; preds = %bb.f
  %2 = xor i32 %i.ak, -1
  %i.an = add nsw i32 %spec.select, %2
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i132.peel, 1
  %i.aq = add i64 %i.ap, %i.ao
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0179.2225.ph = phi i64 [ %i.aq, %bb.g ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i132.peel, %bb.f ], [ %i.aj, %bb.e ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.k
end_hunk_80
begin_hunk_81_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_10str_writerIwEEEEvRKNS0_18basic_format_specsIwEEOT_:bb.a
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10str_writerIwEclIRPwEEvOT_.exit50

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10str_writerIwEclIRPwEEvOT_.exit50: ; preds = %bb.q, %bb.p, %bb.o
  %i.bo = sub nuw nsw i64 %i.ad, %i.ay
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 %.idx.i49 ; 4 uses
  %.idx.i.i51 = shl nuw nsw i64 %i.bo, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i51
end_hunk_81
begin_hunk_82_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedIRNS5_14pointer_writerImEEEEvRKNS0_18basic_format_specsIwEEOT_:bb.a
  br i1 %.not.i.i54, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE14pointer_writerImEclIRPwEEvOT_.exit55, label %bb.k, !llvm.loop !1257

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE14pointer_writerImEclIRPwEEvOT_.exit55: ; preds = %bb.k
  %i.cl = sub nuw nsw i64 %i.am, %i.bo
  %.idx.i.i56 = shl nuw nsw i64 %i.cl, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i.i56
  %i.cn = shl nuw nsw i64 %i.f, 2
end_hunk_82
