inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@_ZN9NCompress8NImplode8NHuffman8CDecoder12DecodeSymbolEPN5NBitl8CDecoderI9CInBufferEE:bb.a
  br i1 %i.ce, label %.thread, label %bb.u

.thread:                                          ; preds = %_ZN5NBitl8CDecoderI9CInBufferE8GetValueEj.exit, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.01623.lcssa.a = phi i32 [ 16, %_ZN5NBitl8CDecoderI9CInBufferE8GetValueEj.exit ], [ 15, %bb.e ], [ 14, %bb.f ], [ 13, %bb.g ], [ 12, %bb.h ], [ 11, %bb.i ], [ 10, %bb.j ], [ 9, %bb.k ], [ 8, %bb.l ], [ 7, %bb.m ], [ 6, %bb.n ], [ 5, %bb.o ], [ 4, %bb.p ], [ 3, %bb.q ], [ 2, %bb.r ], [ 1, %bb.s ] ; 5 uses
  %i.cf = add nuw nsw i32 %i.ad, %.01623.lcssa.a
  store i32 %i.cf, ptr %1, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN9NCompress8NImplode8NHuffman8CDecoder12DecodeSymbolEPN5NBitl8CDecoderI9CInBufferEE:bb.a
  %i.ci = lshr i32 %i.ch, %.01623.lcssa.a
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !31
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %2 = zext nneg i32 %.01623.lcssa.a to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %2
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %3 = zext nneg i32 %.01623.lcssa.a to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = sub i32 %i.ai, %i.co
end_hunk_1
