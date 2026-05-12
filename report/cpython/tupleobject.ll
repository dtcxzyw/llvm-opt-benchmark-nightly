inline.NumInlined: 195
inline.NumDeleted: 42
begin_hunk_0_@tuple_index:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = call i32 @_PyEval_SliceIndexNotNone(ptr noundef %i.l, ptr noundef nonnull %i.b) #9
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %tuple_index_impl.exit, label %._crit_edge18

._crit_edge18:                                    ; preds = %bb.f, %bb.e, %bb.c
  %3 = load i64, ptr %i.a, align 8, !tbaa !59     ; 3 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !59   ; 3 uses
  %i.o = icmp slt i64 %3, 0
  %i.p = getelementptr i8, ptr %0, i64 16
  %.val32.i = load i64, ptr %i.p, align 8, !tbaa !45 ; 3 uses
  %i.q = add i64 %.val32.i, %3
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.q, i64 0)
  %.024.i = select i1 %i.o, i64 %spec.store.select.i, i64 %3 ; 2 uses
  %i.r = icmp slt i64 %i.n, 0
  %i.s = add i64 %.val32.i, %i.n
  %spec.select.i = call i64 @llvm.smin.i64(i64 %i.n, i64 %.val32.i)
  %.023.i = select i1 %i.r, i64 %i.s, i64 %spec.select.i ; 2 uses
  %i.t = icmp slt i64 %.024.i, %.023.i
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i
end_hunk_0
