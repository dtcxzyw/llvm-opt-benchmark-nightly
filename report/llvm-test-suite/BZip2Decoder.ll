inline.NumInlined: 186
inline.NumDeleted: 64
begin_hunk_0_@_ZN9NCompress6NBZip2L9ReadBlockEPN5NBitm8CDecoderI9CInBufferEEPjjPhPNS_8NHuffman8CDecoderILi20ELj258EEES6_S6_Pb:bb.a
_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit204: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202, %bb.m
  %i.cu = phi i32 [ %i.cf, %bb.m ], [ %i.cs, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202 ] ; 2 uses
  %i.cv = phi i32 [ %i.ca, %bb.m ], [ %i.cr, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202 ] ; 2 uses
  %9 = sub nuw nsw i32 8, %i.bz
  %10 = shl nuw i32 8388608, %9
  %i.cw = and i32 %10, %i.ca
  %.not183 = icmp eq i32 %i.cw, 0
  br i1 %.not183, label %bb.q, label %bb.p

end_hunk_0
