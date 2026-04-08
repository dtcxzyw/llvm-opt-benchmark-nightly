inline.NumInlined: 29984
inline.NumDeleted: 10454
begin_hunk_0_@_ZN6duckdb25BoxRendererImplementation10InitializeEv:bb.a
  %spec.select = select i1 %.not36, i64 %i.am, i64 %i.aj ; 5 uses
  %i.ao = icmp eq i64 %spec.select, %i.aj         ; 2 uses
  %i.ap = lshr i64 %spec.select, 1                ; 2 uses
  %i.aq = sub nuw i64 %spec.select, %i.ap
  %.sink84 = select i1 %i.ao, i64 %i.aj, i64 %i.aq
  %.sink = select i1 %i.ao, i64 0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb25BoxRendererImplementation19ComputeRenderWidthsERNS_6vectorINS_20RenderDataCollectionELb1ESaIS2_EEEmm:bb.a
  %i.adi = load i64, ptr %i.adf, align 8, !tbaa !32
  %i.adj = add i64 %i.adi, %i.adh
  store i64 %i.adj, ptr %i.adf, align 8, !tbaa !32
  %i.adk = sub nuw i64 %.01711046, %i.adh
  %i.adl = load i64, ptr %i.ez, align 8, !tbaa !393
  %i.adm = add i64 %i.adl, %i.adh
  store i64 %i.adm, ptr %i.ez, align 8, !tbaa !393
end_hunk_1
begin_hunk_2_@_ZN6duckdb25BoxRendererImplementation12RenderFooterERNS_18BaseResultRendererEmm:bb.a
bb.r:                                             ; preds = %bb.q
  %i.eb = sub i64 %.1, %i.dy                      ; 2 uses
  %i.ec = lshr i64 %i.eb, 1                       ; 2 uses
  %i.ed = sub nuw i64 %i.eb, %i.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #60
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.ee, ptr %13, align 8, !tbaa !173
end_hunk_2
begin_hunk_3_@_ZN6duckdb25BoxRendererImplementation12RenderFooterERNS_18BaseResultRendererEmm:bb.a

bb.ac:                                            ; preds = %bb.ab
  %i.fp = lshr i64 %.1, 1                         ; 2 uses
  %i.fq = sub nuw i64 %.1, %i.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #60
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.fr, ptr %16, align 8, !tbaa !173
end_hunk_3
begin_hunk_4_@_ZN6duckdb25BoxRendererImplementation11RenderValueERNS_18BaseResultRendererERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS_16ResultRenderTypeERKNS_6vectorINS_22HighlightingAnnotationELb1ESaISD_EEENS_20ValueRenderAlignmentENS_12optional_idxEPKc:bb.a
bb.t:                                             ; preds = %bb.r
  %i.az = add i64 %i.ax, 2                        ; 2 uses
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  %i.bb = sub nuw i64 %i.az, %i.ba
  br label %bb.aa

bb.u:                                             ; preds = %bb.r
end_hunk_4
begin_hunk_5_@_ZN6duckdb25BoxRendererImplementation13RenderDividerERNS_18BaseResultRendererERKNS_12BoxRenderRowES5_:bb.a

bb.w:                                             ; preds = %bb.v
  %i.bq = lshr i64 %i.bo, 1                       ; 2 uses
  %i.br = sub nuw i64 %i.bo, %i.bq
  br label %bb.ad

bb.x:                                             ; preds = %bb.v
  %i.bs = lshr i64 %i.bo, 1                       ; 2 uses
  %i.bt = sub nuw i64 %i.bo, %i.bs
  br label %bb.ad

bb.y:                                             ; preds = %bb.v
end_hunk_5
begin_hunk_6_@_ZN6duckdb14CompressedFile8ReadDataEPvl:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store ptr %i.u, ptr %i.b, align 8, !tbaa !1183
  %i.v = add i64 %i.r, %.028                      ; 2 uses
  %i.w = sub nuw i64 %.026, %i.r                  ; 2 uses
  %.not34 = icmp eq i64 %i.w, 0
  br i1 %.not34, label %.thread, label %bb.c

end_hunk_6
begin_hunk_7_@_ZN6duckdb12RandomEngine10RandomDataEPhm:bb.a
  %i.c = tail call noundef i64 @llvm.umin.i64(i64 %.0810, i64 4) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.011, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %i.c, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.011, i64 %i.c
  %i.e = sub nuw i64 %.0810, %i.c                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1397
end_hunk_7
begin_hunk_8_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #60
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_8
begin_hunk_9_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSA_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #60
  %i.jx = sub nuw nsw i64 %i.dg, %i.gq
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.df, i64 %i.jx, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_9
begin_hunk_10_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !4773

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.ip = sub nuw nsw i64 %i.cs, %i.fs
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ih, i8 %i.cr, i64 %i.ip, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_10
begin_hunk_11_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !4788

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_11
begin_hunk_12_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !4803

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIiNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_12
begin_hunk_13_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #60
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_13
begin_hunk_14_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSA_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #60
  %i.jx = sub nuw nsw i64 %i.dg, %i.gq
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.df, i64 %i.jx, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_14
begin_hunk_15_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !4773

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.ip = sub nuw nsw i64 %i.cs, %i.fs
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ih, i8 %i.cr, i64 %i.ip, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_15
begin_hunk_16_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !4788

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_16
begin_hunk_17_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !4803

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIjNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_17
begin_hunk_18_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #60
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_18
begin_hunk_19_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSA_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #60
  %i.jr = sub nuw nsw i64 %i.de, %i.gm
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.dd, i64 %i.jr, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_19
begin_hunk_20_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !5000

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.im = sub nuw nsw i64 %i.cr, %i.fq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.if, i8 %i.cq, i64 %i.im, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_20
begin_hunk_21_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !5015

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_21
begin_hunk_22_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !5030

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIxNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_22
begin_hunk_23_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #60
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_23
begin_hunk_24_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSA_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #60
  %i.jr = sub nuw nsw i64 %i.de, %i.gm
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.dd, i64 %i.jr, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_24
begin_hunk_25_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !5000

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.im = sub nuw nsw i64 %i.cr, %i.fq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.if, i8 %i.cq, i64 %i.im, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_25
begin_hunk_26_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !5015

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_26
begin_hunk_27_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !5030

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIyNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_27
begin_hunk_28_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSC_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #60
  %i.hz = sub nuw nsw i64 %i.cs, %i.fk
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i84, i8 %i.cr, i64 %i.hz, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit87

end_hunk_28
begin_hunk_29_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit77: ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i68, %.lr.ph.i.i.preheader.i.i.i.i74
  %.08.lcssa.i.i.i.i.i.i76 = phi ptr [ %.0.i.i.i69, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i68 ], [ %scevgep.i.i.i.i75, %.lr.ph.i.i.preheader.i.i.i.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #60
  %i.hj = sub nuw nsw i64 %i.ck, %i.ey
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i76, i8 %i.cj, i64 %i.hj, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit79

end_hunk_29
begin_hunk_30_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSC_OT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10hex_writerclIRPcEEvOT_.exit87: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.iv = sub nuw nsw i64 %i.cu, %i.fw
  call void @llvm.memset.p0.i64(ptr align 1 %i.il, i8 %i.ct, i64 %i.iv, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit62

end_hunk_30
begin_hunk_31_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_:bb.a
  store ptr %.0.i.i42, ptr %i.b, align 8, !tbaa !31
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.am = sub nuw nsw i64 %i.ad, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 %i.ac, i64 %i.am, i1 false)
  br label %bb.h

end_hunk_31
begin_hunk_32_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_:bb.a
  store ptr %.0.i.i42, ptr %i.b, align 8, !tbaa !31
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.am = sub nuw nsw i64 %i.ad, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 %i.ac, i64 %i.am, i1 false)
  br label %bb.h

end_hunk_32
begin_hunk_33_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSC_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #60
  %i.hz = sub nuw nsw i64 %i.cs, %i.fk
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i84, i8 %i.cr, i64 %i.hz, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit87

end_hunk_33
begin_hunk_34_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit77: ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i68, %.lr.ph.i.i.preheader.i.i.i.i74
  %.08.lcssa.i.i.i.i.i.i76 = phi ptr [ %.0.i.i.i69, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i68 ], [ %scevgep.i.i.i.i75, %.lr.ph.i.i.preheader.i.i.i.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #60
  %i.hj = sub nuw nsw i64 %i.ck, %i.ey
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i76, i8 %i.cj, i64 %i.hj, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit79

end_hunk_34
begin_hunk_35_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSC_OT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10hex_writerclIRPcEEvOT_.exit87: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.iv = sub nuw nsw i64 %i.cu, %i.fw
  call void @llvm.memset.p0.i64(ptr align 1 %i.il, i8 %i.ct, i64 %i.iv, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit62

end_hunk_35
begin_hunk_36_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_:bb.a
  store ptr %.0.i.i42, ptr %i.b, align 8, !tbaa !31
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.am = sub nuw nsw i64 %i.ad, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 %i.ac, i64 %i.am, i1 false)
  br label %bb.h

end_hunk_36
begin_hunk_37_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_:bb.a
  store ptr %.0.i.i42, ptr %i.b, align 8, !tbaa !31
  call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.am = sub nuw nsw i64 %i.ad, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 %i.ac, i64 %i.am, i1 false)
  br label %bb.h

end_hunk_37
begin_hunk_38_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10str_writerIcEclIRPcEEvOT_.exit56: ; preds = %.lr.ph.i.i.i51.prol.loopexit, %.lr.ph.i.i.i51, %middle.block133, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit49
  %.08.lcssa.i.i.i55 = phi ptr [ %.0.i.i48, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit49 ], [ %i.fb, %middle.block133 ], [ %.lcssa195.unr, %.lr.ph.i.i.i51.prol.loopexit ], [ %i.gj, %.lr.ph.i.i.i51 ]
  %i.gk = sub nuw nsw i64 %i.co, %i.ep
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i55, i8 %i.cn, i64 %i.gk, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10str_writerIcEclIPcEEvOT_.exit

end_hunk_38
begin_hunk_39_@_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE10write_charEc:bb.a
_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit43.i:          ; preds = %bb.h, %bb.g
  %.0.i.i42.i = phi ptr [ %i.v, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  store i8 %1, ptr %.0.i.i42.i, align 1, !tbaa !75
  %i.ag = sub nuw nsw i64 %i.y, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i42.i, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ah, i8 %i.x, i64 %i.ag, i1 false)
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_18arg_formatter_baseIS4_NS1_13error_handlerEE11char_writerEEEvRKNS0_18basic_format_specsIcEEOT_.exit
end_hunk_39
begin_hunk_40_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10num_writerEEEEEvRKSA_OT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #60
  %i.ic = sub nuw nsw i64 %i.ct, %i.fm
  call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i77, i8 %i.cs, i64 %i.ic, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit80

end_hunk_40
begin_hunk_41_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSA_OT_:bb.a
_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10dec_writerEEclIRPcEEvOT_.exit88: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78, %.lr.ph.i.i.preheader.i.i.i.i82
  %.08.lcssa.i.i.i.i.i.i84 = phi ptr [ %.0.i.i.i74, %_ZN10duckdb_fmt2v68internal14format_decimalIjcZNS1_14format_decimalIcPcjEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i78 ], [ %scevgep.i.i.i.i83, %.lr.ph.i.i.preheader.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #60
  %i.jx = sub nuw nsw i64 %i.dg, %i.gq
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i84, i8 %i.df, i64 %i.jx, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit90

end_hunk_41
begin_hunk_42_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i69, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70, label %bb.p, !llvm.loop !4773

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEclIRPcEEvOT_.exit70: ; preds = %bb.p
  %i.ip = sub nuw nsw i64 %i.cs, %i.fs
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ih, i8 %i.cr, i64 %i.ip, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10hex_writerEEclIPcEEvOT_.exit

end_hunk_42
begin_hunk_43_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !4788

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi1EEEEclIPcEEvOT_.exit

end_hunk_43
begin_hunk_44_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSA_OT_:bb.a
  br i1 %.not.i.i7.i67, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68, label %bb.p, !llvm.loop !4803

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_.exit68: ; preds = %bb.p
  %i.hr = sub nuw nsw i64 %i.ck, %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hl, i8 %i.cj, i64 %i.hr, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIcNS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIPcEEvOT_.exit

end_hunk_44
begin_hunk_45_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a
  %.011.i.i.ptr.2.i49 = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bp = load i8, ptr %.011.i.i.ptr.2.i49, align 1, !tbaa !75
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !75
  %i.bq = sub nuw nsw i64 %i.ak, %i.bb
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.br, i8 %i.aj, i64 %i.bq, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit52
end_hunk_45
begin_hunk_46_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_12float_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a
_ZN10duckdb_fmt2v68internal12float_writerIcEclIRPcEEvOT_.exit46: ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit44, %bb.j
  %.1 = phi ptr [ %.0.i.i43, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit44 ], [ %i.bf, %bb.j ]
  %i.bg = tail call noundef ptr @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef %.1)
  %i.bh = sub nuw nsw i64 %i.ah, %i.av
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bg, i8 %i.ag, i64 %i.bh, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit48

end_hunk_46
begin_hunk_47_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_:bb.a
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
end_hunk_47
begin_hunk_48_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedIRNS5_14pointer_writerImEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a
  br i1 %.not.i.i50, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIRPcEEvOT_.exit51, label %bb.j, !llvm.loop !5000

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIRPcEEvOT_.exit51: ; preds = %bb.j
  %i.bp = sub nuw nsw i64 %i.al, %i.bb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bj, i8 %i.ak, i64 %i.bp, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIPcEEvOT_.exit

end_hunk_48
