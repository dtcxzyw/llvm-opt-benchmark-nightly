inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@nghttp2_hd_huff_encode:bb.a
  %i.bd = lshr i64 %.246.lcssa, 56
  %i.be = trunc nuw nsw i64 %i.bd to i16
  %i.bf = trunc nuw nsw i64 %.2.lcssa to i16
  %3 = lshr exact i16 256, %i.bf
  %4 = add nuw nsw i16 %3, 255
  %i.bg = or i16 %4, %i.be
  %i.bh = trunc i16 %i.bg to i8
  %i.bi = tail call i32 @nghttp2_bufs_addb(ptr noundef %0, i8 noundef zeroext %i.bh) #8 ; 2 uses
  %.not54 = icmp eq i32 %i.bi, 0
  br i1 %.not54, label %bb.i, label %.loopexit
end_hunk_0
