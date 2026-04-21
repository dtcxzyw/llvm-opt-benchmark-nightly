inline.NumInlined: 22
inline.NumDeleted: 6
begin_hunk_0_@ubidi_getVisualMap_78:bb.a
  %offset.idx301 = shl i64 %index298, 2
  %next.gep302 = getelementptr i8, ptr %.0131172, i64 %offset.idx301 ; 2 uses
  %i.ay = add nsw <4 x i32> %vec.ind299, splat (i32 -1)
  %i.az = add nsw <4 x i32> %vec.ind299, splat (i32 -5)
  %i.ba = getelementptr i8, ptr %next.gep302, i64 16
  store <4 x i32> %i.ay, ptr %next.gep302, align 4
  store <4 x i32> %i.az, ptr %i.ba, align 4
  %index.next303 = add nuw i64 %index298, 8       ; 2 uses
  %vec.ind.next304 = add nsw <4 x i32> %vec.ind299, splat (i32 -8)
  %i.bb = icmp eq i64 %index.next303, %n.vec291
  br i1 %i.bb, label %middle.block305, label %vector.body297, !llvm.loop !66

end_hunk_0
