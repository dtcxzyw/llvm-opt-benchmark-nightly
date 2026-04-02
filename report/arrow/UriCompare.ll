begin_hunk_0
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @uriCompareRangeA(ptr noundef nonnull %0, ptr noundef nonnull %1) #3
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %.thread

end_hunk_0
begin_hunk_1
bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = tail call i32 @uriCompareRangeA(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #3
  %.not61 = icmp eq i32 %i.m, 0
  br i1 %.not61, label %bb.g, label %.thread

end_hunk_1
begin_hunk_2
  br i1 %i.p, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.o, ptr noundef nonnull dereferenceable(4) %i.r, i64 4)
  %.not66 = icmp eq i32 %bcmp, 0
  br i1 %.not66, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %bcmp68 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %i.u, ptr noundef nonnull dereferenceable(16) %i.x, i64 16)
  %.not69 = icmp eq i32 %bcmp68, 0
  br i1 %.not69, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.ab, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = tail call i32 @uriCompareRangeA(ptr noundef nonnull %i.z, ptr noundef nonnull %i.ac) #3
  %.not71 = icmp eq i32 %i.af, 0
  br i1 %.not71, label %._crit_edge, label %.thread

end_hunk_2
begin_hunk_3
bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = tail call i32 @uriCompareRangeA(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an) #3
  %.not72 = icmp eq i32 %i.ao, 0
  br i1 %.not72, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ar = tail call i32 @uriCompareRangeA(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq) #3
  %.not73 = icmp eq i32 %i.ar, 0
  br i1 %.not73, label %bb.u, label %.thread

end_hunk_3
begin_hunk_4
.preheader:                                       ; preds = %bb.v, %bb.x
  %.052 = phi ptr [ %i.ba, %bb.x ], [ %i.at, %bb.v ] ; 2 uses
  %.051 = phi ptr [ %i.bd, %bb.x ], [ %i.aw, %bb.v ] ; 2 uses
  %i.ay = tail call i32 @uriCompareRangeA(ptr noundef nonnull %.052, ptr noundef %.051) #3
  %.not76 = icmp eq i32 %i.ay, 0
  br i1 %.not76, label %bb.w, label %.thread

end_hunk_4
begin_hunk_5
.loopexit:                                        ; preds = %bb.x, %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = tail call i32 @uriCompareRangeA(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg) #3
  %.not79 = icmp eq i32 %i.bh, 0
  br i1 %.not79, label %bb.y, label %.thread

bb.y:                                             ; preds = %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bk = tail call i32 @uriCompareRangeA(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj) #3
  %.not80 = icmp eq i32 %i.bk, 0
  br label %.thread

end_hunk_5
begin_hunk_6
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @uriCompareRangeW(ptr noundef nonnull %0, ptr noundef nonnull %1) #3
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %.thread

end_hunk_6
begin_hunk_7
bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = tail call i32 @uriCompareRangeW(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #3
  %.not61 = icmp eq i32 %i.m, 0
  br i1 %.not61, label %bb.g, label %.thread

end_hunk_7
begin_hunk_8
  br i1 %i.p, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.o, ptr noundef nonnull dereferenceable(4) %i.r, i64 4)
  %.not66 = icmp eq i32 %bcmp, 0
  br i1 %.not66, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %bcmp68 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %i.u, ptr noundef nonnull dereferenceable(16) %i.x, i64 16)
  %.not69 = icmp eq i32 %bcmp68, 0
  br i1 %.not69, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.ab, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = tail call i32 @uriCompareRangeW(ptr noundef nonnull %i.z, ptr noundef nonnull %i.ac) #3
  %.not71 = icmp eq i32 %i.af, 0
  br i1 %.not71, label %._crit_edge, label %.thread

end_hunk_8
begin_hunk_9
bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = tail call i32 @uriCompareRangeW(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an) #3
  %.not72 = icmp eq i32 %i.ao, 0
  br i1 %.not72, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ar = tail call i32 @uriCompareRangeW(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq) #3
  %.not73 = icmp eq i32 %i.ar, 0
  br i1 %.not73, label %bb.u, label %.thread

end_hunk_9
begin_hunk_10
.preheader:                                       ; preds = %bb.v, %bb.x
  %.052 = phi ptr [ %i.ba, %bb.x ], [ %i.at, %bb.v ] ; 2 uses
  %.051 = phi ptr [ %i.bd, %bb.x ], [ %i.aw, %bb.v ] ; 2 uses
  %i.ay = tail call i32 @uriCompareRangeW(ptr noundef nonnull %.052, ptr noundef %.051) #3
  %.not76 = icmp eq i32 %i.ay, 0
  br i1 %.not76, label %bb.w, label %.thread

end_hunk_10
begin_hunk_11
.loopexit:                                        ; preds = %bb.x, %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = tail call i32 @uriCompareRangeW(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg) #3
  %.not79 = icmp eq i32 %i.bh, 0
  br i1 %.not79, label %bb.y, label %.thread

bb.y:                                             ; preds = %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bk = tail call i32 @uriCompareRangeW(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj) #3
  %.not80 = icmp eq i32 %i.bk, 0
  br label %.thread

end_hunk_11
begin_hunk_12

declare i32 @uriCompareRangeW(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_12
