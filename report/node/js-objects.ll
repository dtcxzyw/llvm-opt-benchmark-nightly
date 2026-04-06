begin_hunk_0_@_ZN2v88internal8JSObject21SetNormalizedPropertyENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEENS0_15PropertyDetailsE:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.sroa.07.0.in34.i = and i32 %i.ao, %.0.i       ; 2 uses
  %.sroa.07.035.i = zext nneg i32 %.sroa.07.0.in34.i to i64 ; 2 uses
  %i.aq = shl nuw nsw i64 %.sroa.07.035.i, 3
  %5 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.al
  br i1 %i.at, label %.loopexit, label %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal14JSGlobalObject22InvalidatePropertyCellENS0_12DirectHandleIS1_EENS2_INS0_4NameEEE:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.sroa.07.0.in34.i.i = and i32 %i.bd, %.0.i.i.i ; 2 uses
  %.sroa.07.035.i.i = zext nneg i32 %.sroa.07.0.in34.i.i to i64 ; 2 uses
  %i.bf = shl nuw nsw i64 %.sroa.07.035.i.i, 3
  %2 = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.ba
  br i1 %i.bi, label %_ZN2v88internal9HashTableINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE9FindEntryINS0_7IsolateEEENS0_13InternalIndexEPT_NS0_12DirectHandleINS0_4NameEEE.exit.thread, label %.lr.ph.i.i
end_hunk_1
