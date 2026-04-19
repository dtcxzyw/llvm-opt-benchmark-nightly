inline.NumInlined: 31
inline.NumDeleted: 5
begin_hunk_0_@mstrPrint:bb.a

mstrAllocLen.exit:                                ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i63 = phi i64 [ %i.v, %bb.f ], [ %i.t, %bb.e ], [ %i.q, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %.0.i42 = phi i64 [ 10, %bb.f ], [ 4, %bb.e ], [ 4, %bb.d ], [ 2, %bb.c ]
  %i.w = add i64 %.0.i63, %.0.i42
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef nonnull %0, i64 noundef %.0.i63, i64 noundef %i.w) ; 0 uses
  br label %.loopexit

end_hunk_0
begin_hunk_1_@mstrPrint:bb.a
bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i4372 = phi i64 [ %i.ah, %bb.j ], [ %i.af, %bb.i ], [ %i.ac, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  %.sink.i47 = phi i64 [ -11, %bb.j ], [ -5, %bb.i ], [ -5, %bb.h ], [ -3, %bb.g ]
  %.0.i49 = phi i64 [ 10, %bb.j ], [ 4, %bb.i ], [ 4, %bb.h ], [ 2, %bb.g ]
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %.sink.i47
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !14 ; 2 uses
  %.not10.i.i51 = icmp eq i16 %i.aj, 0
end_hunk_1
begin_hunk_2_@mstrPrint:bb.a

mstrAllocLen.exit61:                              ; preds = %bb.k, %mstrSumMetaLen.exit.loopexit.i59
  %i.at = phi i64 [ %i.as, %mstrSumMetaLen.exit.loopexit.i59 ], [ 2, %bb.k ]
  %i.au = add i64 %.0.i4372, %.0.i49
  %i.av = add i64 %i.au, %i.at
  %i.aw = zext i16 %i.f to i32
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %0, ptr noundef %i.g, ptr noundef %0, i64 noundef %.0.i4372, i64 noundef %i.av, i32 noundef %i.aw) ; 0 uses
end_hunk_2
