begin_hunk_0
  %i.dp = lshr i64 %i.do, 1                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.dq = sub nuw i64 %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.dr, ptr %8, align 8, !tbaa !18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.dq, i8 noundef signext 32)
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_1
begin_hunk_2
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.jx = sub nuw nsw i64 %i.dg, %i.gq
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.df, i64 %i.jx, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_2
begin_hunk_3
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !1077

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.ip = sub nuw nsw i64 %i.cs, %i.fs
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ih, i8 %i.cr, i64 %i.ip, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_3
begin_hunk_4
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !1092

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_4
begin_hunk_5
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !1107

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_5
begin_hunk_6
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_6
begin_hunk_7
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.jx = sub nuw nsw i64 %i.dg, %i.gq
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.df, i64 %i.jx, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_7
begin_hunk_8
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !1077

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.ip = sub nuw nsw i64 %i.cs, %i.fs
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ih, i8 %i.cr, i64 %i.ip, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_8
begin_hunk_9
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !1092

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_9
begin_hunk_10
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !1107

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_10
begin_hunk_11
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_11
begin_hunk_12
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.jr = sub nuw nsw i64 %i.de, %i.gm
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.dd, i64 %i.jr, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_12
begin_hunk_13
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !1304

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.im = sub nuw nsw i64 %i.cr, %i.fq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.if, i8 %i.cq, i64 %i.im, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_13
begin_hunk_14
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !1319

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_14
begin_hunk_15
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !1334

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_15
begin_hunk_16
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_16
begin_hunk_17
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.jr = sub nuw nsw i64 %i.de, %i.gm
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.dd, i64 %i.jr, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_17
begin_hunk_18
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !1304

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.im = sub nuw nsw i64 %i.cr, %i.fq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.if, i8 %i.cq, i64 %i.im, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_18
begin_hunk_19
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !1319

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_19
begin_hunk_20
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !1334

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_20
begin_hunk_21
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.hz = sub nuw nsw i64 %i.cs, %i.fk
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i84, i8 %i.cr, i64 %i.hz, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit87

end_hunk_21
begin_hunk_22
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit77: ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i68, %.lr.ph.i.i.preheader.i.i.i.i74
  %.08.lcssa.i.i.i.i.i.i76 = phi ptr [ %.0.i.i.i69, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i68 ], [ %scevgep.i.i.i.i75, %.lr.ph.i.i.preheader.i.i.i.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.hj = sub nuw nsw i64 %i.ck, %i.ey
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i76, i8 %i.cj, i64 %i.hj, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit79

end_hunk_22
begin_hunk_23

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10hex_writerclIRPcEEvOT_.exit87: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.iv = sub nuw nsw i64 %i.cu, %i.fw
  call void @llvm.memset.p0.i64(ptr align 1 %i.il, i8 %i.ct, i64 %i.iv, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit62

end_hunk_23
begin_hunk_24
  store ptr %.0.i.i42, ptr %i.b, align 8, !tbaa !850
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !850
  %i.am = sub nuw nsw i64 %i.ad, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 %i.ac, i64 %i.am, i1 false)
  br label %bb.h

end_hunk_24
begin_hunk_25
  store ptr %.0.i.i42, ptr %i.b, align 8, !tbaa !850
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !850
  %i.am = sub nuw nsw i64 %i.ad, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 %i.ac, i64 %i.am, i1 false)
  br label %bb.h

end_hunk_25
begin_hunk_26
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.hz = sub nuw nsw i64 %i.cs, %i.fk
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i84, i8 %i.cr, i64 %i.hz, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit87

end_hunk_26
begin_hunk_27
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit77: ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i68, %.lr.ph.i.i.preheader.i.i.i.i74
  %.08.lcssa.i.i.i.i.i.i76 = phi ptr [ %.0.i.i.i69, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i68 ], [ %scevgep.i.i.i.i75, %.lr.ph.i.i.preheader.i.i.i.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.hj = sub nuw nsw i64 %i.ck, %i.ey
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i76, i8 %i.cj, i64 %i.hj, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit79

end_hunk_27
begin_hunk_28

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10hex_writerclIRPcEEvOT_.exit87: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.iv = sub nuw nsw i64 %i.cu, %i.fw
  call void @llvm.memset.p0.i64(ptr align 1 %i.il, i8 %i.ct, i64 %i.iv, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit62

end_hunk_28
begin_hunk_29
  store ptr %.0.i.i42, ptr %i.b, align 8, !tbaa !850
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !850
  %i.am = sub nuw nsw i64 %i.ad, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 %i.ac, i64 %i.am, i1 false)
  br label %bb.h

end_hunk_29
begin_hunk_30
  store ptr %.0.i.i42, ptr %i.b, align 8, !tbaa !850
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !850
  %i.am = sub nuw nsw i64 %i.ad, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 %i.ac, i64 %i.am, i1 false)
  br label %bb.h

end_hunk_30
begin_hunk_31

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10str_writerIcEclIRPcEEvOT_.exit56: ; preds = %.lr.ph.i.i.i51.prol.loopexit, %.lr.ph.i.i.i51, %middle.block133, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit49
  %.08.lcssa.i.i.i55 = phi ptr [ %.0.i.i48, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit49 ], [ %i.fb, %middle.block133 ], [ %.lcssa195.unr, %.lr.ph.i.i.i51.prol.loopexit ], [ %i.gj, %.lr.ph.i.i.i51 ]
  %i.gk = sub nuw nsw i64 %i.co, %i.ep
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i55, i8 %i.cn, i64 %i.gk, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10str_writerIcEclIPcEEvOT_.exit

end_hunk_31
begin_hunk_32
_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit43.i:          ; preds = %bb.h, %bb.g
  %.0.i.i42.i = phi ptr [ %i.v, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  store i8 %1, ptr %.0.i.i42.i, align 1, !tbaa !25
  %i.ag = sub nuw nsw i64 %i.y, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i42.i, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ah, i8 %i.x, i64 %i.ag, i1 false)
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_18arg_formatter_baseIS4_NS1_13error_handlerEE11char_writerEEEvRKNS0_18basic_format_specsIcEEOT_.exit
end_hunk_32
begin_hunk_33
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_33
begin_hunk_34
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.jx = sub nuw nsw i64 %i.dg, %i.gq
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.df, i64 %i.jx, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_34
begin_hunk_35
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !1077

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.ip = sub nuw nsw i64 %i.cs, %i.fs
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ih, i8 %i.cr, i64 %i.ip, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_35
begin_hunk_36
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !1092

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_36
begin_hunk_37
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !1107

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_37
begin_hunk_38
  %.011.i.i.ptr.2.i49 = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bp = load i8, ptr %.011.i.i.ptr.2.i49, align 1, !tbaa !25
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !25
  %i.bq = sub nuw nsw i64 %i.ak, %i.bb
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.br, i8 %i.aj, i64 %i.bq, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit52
end_hunk_38
begin_hunk_39
_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit46: ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit44, %bb.j
  %.1 = phi ptr [ %.0.i.i43, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit44 ], [ %i.bf, %bb.j ]
  %i.bg = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef %.1)
  %i.bh = sub nuw nsw i64 %i.ah, %i.av
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bg, i8 %i.ag, i64 %i.bh, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit48

end_hunk_39
begin_hunk_40
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
end_hunk_40
begin_hunk_41
  br i1 %.not.i.i50, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIRPcEEvOT_.exit51, label %bb.j, !llvm.loop !1304

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIRPcEEvOT_.exit51: ; preds = %bb.j
  %i.bp = sub nuw nsw i64 %i.al, %i.bb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bj, i8 %i.ak, i64 %i.bp, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIPcEEvOT_.exit

end_hunk_41
