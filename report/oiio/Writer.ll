inline.NumInlined: 234
inline.NumDeleted: 128
begin_hunk_0_@_ZN3dpx6Writer12WriteThroughEPvjjiijjPc:bb.a
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef %1, i64 noundef %i.g), !inline_history !48
  %i.an = icmp eq i64 %i.am, %i.g
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.e
  %.0 = phi i1 [ %i.an, %bb.e ], [ true, %.preheader ], [ true, %bb.b ] ; 2 uses
  %i.ao = icmp ne i32 %7, 0
  %or.cond = and i1 %i.ao, %.0
  br i1 %or.cond, label %bb.f, label %.thread

bb.f:                                             ; preds = %.loopexit
end_hunk_0
begin_hunk_1_@_ZN3dpx6Writer12WriteThroughEPvjjiijjPc:bb.a
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef %8, i64 noundef %i.ap), !inline_history !48
  %i.ay = icmp eq i64 %i.ax, %i.ap
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %bb.f, %.loopexit
  %.1 = phi i1 [ %i.ay, %bb.f ], [ %.0, %.loopexit ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: nobuiltin nounwind
end_hunk_1
