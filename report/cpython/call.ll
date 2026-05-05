inline.NumInlined: 126
inline.NumDeleted: 26
begin_hunk_0_@object_vacall:bb.a
  br i1 %i.w, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  %lsr.iv58.lcssa = phi i64 [ %lsr.iv58, %bb.g ]
  %.030.lcssa = phi i64 [ %lsr.iv.next, %bb.g ]   ; 5 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.x = icmp slt i64 %.030.lcssa, 6
end_hunk_0
begin_hunk_1_@object_vacall:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = sub i64 0, %.028
  %i.ag = add i64 %i.af, %lsr.iv58.lcssa
  %i.ah = shl nuw nsw i64 %.028, 3
  %scevgep = getelementptr i8, ptr %.029, i64 %i.ah
  br label %bb.n
end_hunk_1
