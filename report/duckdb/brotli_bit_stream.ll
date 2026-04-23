inline.NumInlined: 36
inline.NumDeleted: 20
begin_hunk_0_@_ZL16EncodeContextMapPN13duckdb_brotli13MemoryManagerEP21EncodeContextMapArenaPKjmmPNS_11HuffmanTreeEPmPh:bb.a
.lr.ph98.i._crit_edge:                            ; preds = %.lr.ph98.i, %.lr.ph98.preheader.i
  %.lcssa117 = phi i64 [ %i.df, %.lr.ph98.preheader.i ], [ %i.ed, %.lr.ph98.i ] ; 2 uses
  %.16797.i.lcssa = phi i32 [ %.066.lcssa114.i, %.lr.ph98.preheader.i ], [ %.reass.i.reass.reass.reass, %.lr.ph98.i ] ; 2 uses
  %i.dw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.16797.i.lcssa, i1 true) ; 2 uses
  %.neg.i63 = ashr exact i32 -2147483648, %i.dw
  %i.dx = add nsw i32 %.neg.i63, %.16797.i.lcssa
  %i.dy = shl i32 %i.dx, 9
  %i.dz = or disjoint i32 %i.dy, %i.dw
  %8 = xor i32 %i.dz, 31
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.lcssa117
  store i32 %8, ptr %i.ea, align 4, !tbaa !3, !alias.scope !480, !noalias !483
  br label %.loopexit.sink.split.i

.lr.ph98.i:                                       ; preds = %.lr.ph98.preheader.i, %.lr.ph98.i
end_hunk_0
