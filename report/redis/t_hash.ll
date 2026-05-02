inline.NumInlined: 166
inline.NumDeleted: 15
begin_hunk_0_@parseHashFieldExpireArgs:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %7 = add nuw nsw i32 %6, 1
  %i.j = zext nneg i32 %6 to i64
  br label %bb.b

end_hunk_0
begin_hunk_1_@parseHashFieldExpireArgs:bb.a
  br label %.thread173

bb.h:                                             ; preds = %bb.f
  %8 = mul nsw i32 %7, %i.z
  %i.ai = add i32 %8, -1
  %i.aj = add i32 %i.ai, %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.bh
end_hunk_1
