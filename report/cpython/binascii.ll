inline.NumInlined: 74
inline.NumDeleted: 35
begin_hunk_0_@binascii_a2b_base64:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %2, -1
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
end_hunk_0
begin_hunk_1_@binascii_b2a_base64:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %2, -1
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
end_hunk_1
begin_hunk_2_@binascii_b2a_ascii85:bb.a
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.neg.i = add nsw i64 %i.ao, -4
  %i.ap = add i64 %.neg.i, %spec.select.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
end_hunk_2
begin_hunk_3_@binascii_a2b_ascii85:bb.a
  %.010456.i = phi ptr [ %.0104.i, %bb.w ], [ %.010455.i, %middle.block ], [ %.010455.i, %.lr.ph.i ]
  %.010653.i = phi i64 [ %.0106.i, %bb.w ], [ %.010654.i, %middle.block ], [ %.010654.i, %.lr.ph.i ] ; 2 uses
  %.0109.lcssa.i = phi i64 [ 0, %bb.w ], [ %i.bf, %middle.block ], [ %spec.select.i, %.lr.ph.i ] ; 3 uses
  %6 = add i64 %.010653.i, 4
  %7 = sub i64 %6, %.0109.lcssa.i
  %i.bh = udiv i64 %7, 5                          ; 2 uses
  %i.bi = shl nuw i64 %i.bh, 2
  %i.bj = sub i64 9223372036854775804, %i.bi
end_hunk_3
begin_hunk_4_@binascii_b2a_hex:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %2, -1                           ; 2 uses
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.f = icmp ult i64 %i.d, 3
  %i.g = icmp ne ptr %1, null
  %i.h = and i1 %i.g, %i.f
  %or.cond5 = and i1 %.not, %i.h
end_hunk_4
begin_hunk_5_@binascii_hexlify:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %2, -1                           ; 2 uses
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.f = icmp ult i64 %i.d, 3
  %i.g = icmp ne ptr %1, null
  %i.h = and i1 %i.g, %i.f
  %or.cond5 = and i1 %.not, %i.h
end_hunk_5
begin_hunk_6_@base85_encode_impl:bb.a
  br i1 %.not80, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nsw i64 %i.d, -4
  %i.e = add i64 %.neg, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
end_hunk_6
