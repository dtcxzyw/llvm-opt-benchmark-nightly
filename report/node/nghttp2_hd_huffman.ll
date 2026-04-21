inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@nghttp2_hd_huff_encode:bb.a
  %i.bd = lshr i64 %.246.lcssa, 56
  %i.be = trunc nuw nsw i64 %i.bd to i16
  %i.bf = trunc nuw nsw i64 %.2.lcssa to i16
  %3 = sub nuw nsw i16 8, %i.bf
  %notmask = shl nsw i16 -1, %3
  %4 = xor i16 %notmask, -1
  %i.bg = or i16 %4, %i.be
  %i.bh = trunc nuw i16 %i.bg to i8
  %i.bi = tail call i32 @nghttp2_bufs_addb(ptr noundef %0, i8 noundef zeroext %i.bh) #8 ; 2 uses
  %.not54 = icmp eq i32 %i.bi, 0
  br i1 %.not54, label %bb.i, label %.loopexit
end_hunk_0
