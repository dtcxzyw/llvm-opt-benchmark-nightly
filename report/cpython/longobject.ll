inline.NumInlined: 732
inline.NumDeleted: 98
begin_hunk_0_@long_true_divide:bb.a

.lr.ph241:                                        ; preds = %.preheader
  %i.cz = getelementptr i8, ptr %i.cx, i64 24
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.da = shl nuw nsw i64 %umax, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cz, i8 0, i64 %i.da, i1 false), !tbaa !7
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader, %.lr.ph241
end_hunk_0
