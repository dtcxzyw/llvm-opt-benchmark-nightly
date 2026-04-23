inline.NumInlined: 283
inline.NumDeleted: 32
begin_hunk_0_@genericZrangebyrankCommand:bb.a
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !75 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %.not101 = icmp eq i32 %5, 0                    ; 2 uses
  %6 = shl nuw nsw i64 %spec.store.select, 1      ; 2 uses
  %7 = sub nuw nsw i64 -2, %6
  %.sink = select i1 %.not101, i64 %6, i64 %7
  %i.aq = tail call ptr @lpSeek(ptr noundef %i.ap, i64 noundef %.sink) #18 ; 3 uses
  %.not102 = icmp eq ptr %i.aq, null
  br i1 %.not102, label %bb.h, label %bb.i, !prof !91

end_hunk_0
begin_hunk_1_@genericZrangebyrankCommand:bb.a
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not101, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = call ptr @lpPrev(ptr noundef %i.ap, ptr noundef nonnull %.0161182) #18 ; 3 uses
end_hunk_1
