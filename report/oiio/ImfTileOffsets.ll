inline.NumInlined: 552
inline.NumDeleted: 225
begin_hunk_0_@_ZNK27OpenImageIO_v3_1_Imf__3_3_511TileOffsets12getTileOrderEPiS1_S1_S1_:bb.a
  br label %.lr.ph

._crit_edge121:                                   ; preds = %._crit_edge
  %.1.lcssa.lcssa = phi i64 [ %.1.lcssa, %._crit_edge ] ; 6 uses
  %i.be = icmp ugt i64 %.1.lcssa.lcssa, 384307168202282325
  br i1 %i.be, label %.noexc, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
end_hunk_0
begin_hunk_1_@_ZNK27OpenImageIO_v3_1_Imf__3_3_511TileOffsets12getTileOrderEPiS1_S1_S1_:bb.a
bb.b:                                             ; preds = %.noexc103
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.bj, 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i.i.i.i.i.i
  %i.bm = mul i64 %.1.lcssa, 24
  %i.bn = inttoptr i64 %i.bm to ptr
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

end_hunk_1
