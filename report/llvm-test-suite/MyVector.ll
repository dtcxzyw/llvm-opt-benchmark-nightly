inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0_@_ZN17CBaseRecordVector7ReserveEi:bb.a

bb.d:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.f) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 2 uses
  %mul.ov = extractvalue { i64, i1 } %mul, 1
end_hunk_0
begin_hunk_1_@_ZN17CBaseRecordVector7ReserveEi:bb.a
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = sext i32 %i.m to i64
  %i.q = mul i64 %i.h, %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %bb.h

end_hunk_1
