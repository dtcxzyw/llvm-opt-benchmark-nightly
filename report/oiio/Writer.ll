inline.NumInlined: 234
inline.NumDeleted: 128
begin_hunk_0_@_ZN3dpx6Writer12WriteThroughEPvjjiijjPc:bb.a
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef %1, i64 noundef %i.g), !inline_history !48
  %i.an = icmp eq i64 %i.am, %i.g
  %spec.select = zext i1 %i.an to i8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.e
  %.0 = phi i8 [ %spec.select, %bb.e ], [ 1, %.preheader ], [ 1, %bb.b ] ; 2 uses
  %9 = trunc nuw i8 %.0 to i1
  %i.ao = icmp ne i32 %7, 0
  %or.cond = and i1 %i.ao, %9
  br i1 %or.cond, label %bb.f, label %.thread

bb.f:                                             ; preds = %.loopexit
end_hunk_0
begin_hunk_1_@_ZN3dpx6Writer12WriteThroughEPvjjiijjPc:bb.a
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef %8, i64 noundef %i.ap), !inline_history !48
  %i.ay = icmp eq i64 %i.ax, %i.ap
  %10 = zext i1 %i.ay to i8
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %bb.f, %.loopexit
  %.1 = phi i8 [ %10, %bb.f ], [ %.0, %.loopexit ], [ 0, %bb.c ], [ 0, %bb.d ]
  %11 = trunc nuw i8 %.1 to i1
  ret i1 %11
}

; Function Attrs: nobuiltin nounwind
end_hunk_1
