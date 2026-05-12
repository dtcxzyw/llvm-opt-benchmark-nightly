inline.NumInlined: 1348
inline.NumDeleted: 262
begin_hunk_0_@mro_implementation_unlocked
define internal fastcc ptr @mro_implementation_unlocked(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [1000 x i8], align 16             ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
end_hunk_0
begin_hunk_1_@mro_implementation_unlocked:bb.a
  br label %set_mro_error.exit.i

.critedge48.i.i:                                  ; preds = %bb.ao, %.lr.ph.i.i
  %i.hb = add nuw nsw i64 %storemerge78.i.i, 1    ; 2 uses
  store i64 %i.hb, ptr %i.b, align 8, !tbaa !122
  %exitcond.not.i.i = icmp eq i64 %storemerge78.i.i, %.val78
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i87, label %.lr.ph.i.i, !llvm.loop !429

end_hunk_1
