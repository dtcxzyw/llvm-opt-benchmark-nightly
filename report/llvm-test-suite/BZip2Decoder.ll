inline.NumInlined: 186
inline.NumDeleted: 64
begin_hunk_0_@_ZN9NCompress6NBZip2L9ReadBlockEPN5NBitm8CDecoderI9CInBufferEEPjjPhPNS_8NHuffman8CDecoderILi20ELj258EEES6_S6_Pb:bb.a
.lr.ph268:                                        ; preds = %.lr.ph268.preheader, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit234
  %i.ho = phi i32 [ %i.iz, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit234 ], [ %.pre331, %.lr.ph268.preheader ] ; 3 uses
  %i.hp = phi i32 [ %i.ja, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit234 ], [ %.pre332, %.lr.ph268.preheader ] ; 2 uses
  %.1148267 = phi i32 [ %i.jg, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit234 ], [ %.0147269, %.lr.ph268.preheader ] ; 3 uses
  %i.hq = add i32 %i.hp, 1                        ; 4 uses
  store i32 %i.hq, ptr %0, align 8, !tbaa !27
  %i.hr = icmp ugt i32 %i.hq, 7
end_hunk_0
begin_hunk_1_@_ZN9NCompress6NBZip2L9ReadBlockEPN5NBitm8CDecoderI9CInBufferEEPjjPhPNS_8NHuffman8CDecoderILi20ELj258EEES6_S6_Pb:bb.a
  %i.jc = lshr i32 %i.ig, %i.jb
  %i.jd = lshr i32 %i.jc, 22
  %i.je = and i32 %i.jd, 2
  %i.jf = sub i32 %.1148267, %i.je                ; 2 uses
  %i.jg = add nuw nsw i32 %i.jf, 1
  %or.cond10 = icmp ugt i32 %i.jf, 19
  br i1 %or.cond10, label %.critedge185, label %.lr.ph268, !llvm.loop !91

bb.as:                                            ; preds = %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit228
end_hunk_1
