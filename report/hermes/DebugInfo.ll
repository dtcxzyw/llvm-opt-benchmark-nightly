inline.NumInlined: 835
inline.NumDeleted: 375
begin_hunk_0_@_ZNK6hermes3hbc9DebugInfo21getAddressForLocationEjjNS_8OptValueIjEE:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.0196 = phi i32 [ 0, %.lr.ph ], [ %.2.ph, %bb.e ] ; 2 uses
  %.031195 = phi i32 [ 0, %.lr.ph ], [ %.233.ph, %bb.e ]
  %.035194 = phi i8 [ 0, %.lr.ph ], [ %.237.ph, %bb.e ]
  %.039193 = phi ptr [ %i.k, %.lr.ph ], [ %i.w, %bb.e ] ; 4 uses
  %5 = trunc nuw i8 %.035194 to i1
  br i1 %5, label %.thread104, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.039193, i64 4
  %i.s = load i32, ptr %i.r, align 1, !tbaa !84
  %i.t = icmp eq i32 %i.s, %2
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZNK6hermes3hbc9DebugInfo21getAddressForLocationEjjNS_8OptValueIjEE:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.237.ph = phi i8 [ 0, %bb.c ], [ 1, %bb.d ]    ; 2 uses
  %.233.ph = phi i32 [ %.031195, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %.2.ph = phi i32 [ %.0196, %bb.c ], [ %i.u, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.039193, i64 12 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK6hermes3hbc9DebugInfo21getAddressForLocationEjjNS_8OptValueIjEE:bb.a
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.e
  %6 = trunc nuw i8 %.237.ph to i1
  br i1 %6, label %bb.f, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %0, i8 0, i64 17, i1 false)
end_hunk_2
