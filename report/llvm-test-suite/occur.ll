begin_hunk_0
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(24) %.016.i)
  %i.v = icmp eq i32 %i.u, 165
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.01620.i = phi ptr [ %.016.i, %bb.d ], [ %.01619.i, %bb.c ] ; 2 uses
end_hunk_0
begin_hunk_1
!50 = !{!"p1 _ZTSN2kc18impl_languagenamesE", !15, i64 0}
!51 = !{!48, !50, i64 16}
!52 = !{!50, !50, i64 0}
end_hunk_1
