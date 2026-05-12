inline.NumInlined: 332
inline.NumDeleted: 59
begin_hunk_0_@array_array_index:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = call i32 @_PyEval_SliceIndexNotNone(ptr noundef %i.l, ptr noundef nonnull %i.b) #12
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %array_array_index_impl.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %3 = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ] ; 3 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %0, i64 16
  %.val36.i = load i64, ptr %i.p, align 8, !tbaa !44
  %i.q = add i64 %.val36.i, %i.n
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.q, i64 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.024.i = phi i64 [ %spec.store.select.i, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.r = icmp slt i64 %3, 0
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr i8, ptr %0, i64 16
  %.val35.i = load i64, ptr %i.s, align 8, !tbaa !44
  %i.t = add i64 %.val35.i, %3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.028.i = phi i64 [ %i.t, %bb.j ], [ %3, %bb.i ] ; 2 uses
  %i.u = icmp slt i64 %.024.i, %.028.i
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

end_hunk_0
