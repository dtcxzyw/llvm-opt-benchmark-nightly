inline.NumInlined: 34
inline.NumDeleted: 17
begin_hunk_0_@tls_setup_write_buffer:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32
  %.not = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33
  %i.h = icmp eq i32 %i.g, 772
end_hunk_0
begin_hunk_1_@tls_setup_write_buffer:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4172
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35
  %i.m = zext i32 %i.l to i64
  %4 = select i1 %.not, i64 92, i64 101           ; 2 uses
  %i.n = add i64 %4, %i.j
  %i.o = add i64 %i.n, %.051
  %i.p = add i64 %i.o, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36
  %i.s = and i64 %i.r, 2048
  %i.t = icmp eq i64 %i.s, 0
  %5 = select i1 %i.t, i64 %4, i64 0
  %spec.select73 = add i64 %i.p, %5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.052 = phi i64 [ 0, %bb.b ], [ %spec.select73, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %.not63 = icmp eq i64 %1, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph.preheader
end_hunk_1
