begin_hunk_0_@libdeflate_zlib_compress:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.027 = phi i16 [ 30784, %bb.c ], [ 30720, %bb.b ], [ %., %bb.d ] ; 2 uses
  %i.f = urem i16 %.027, 31
  %reass.sub = sub nuw nsw i16 %.027, %i.f
  %5 = add nuw nsw i16 %reass.sub, 31
  %i.g = tail call i16 @llvm.bswap.i16(i16 range(i16 30720, 30976) %5)
  store i16 %i.g, ptr %3, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.i = add i64 %4, -6
end_hunk_0
