inline.NumInlined: 186
inline.NumDeleted: 64
begin_hunk_0_@_ZN9NCompress6NBZip2L9ReadBlockEPN5NBitm8CDecoderI9CInBufferEEPjjPhPNS_8NHuffman8CDecoderILi20ELj258EEES6_S6_Pb:bb.a
_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit204: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202, %bb.m
  %i.cu = phi i32 [ %i.cf, %bb.m ], [ %i.cs, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202 ] ; 2 uses
  %i.cv = phi i32 [ %i.ca, %bb.m ], [ %i.cr, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202 ] ; 2 uses
  %9 = lshr exact i32 -2147483648, %i.bz
  %i.cw = and i32 %9, %i.ca
  %.not183 = icmp eq i32 %i.cw, 0
  br i1 %.not183, label %bb.q, label %bb.p

end_hunk_0
