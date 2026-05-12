inline.NumInlined: 188
inline.NumDeleted: 69
begin_hunk_0_@memoryview_index:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = call i32 @_PyEval_SliceIndexNotNone(ptr noundef %i.l, ptr noundef nonnull %i.b) #15
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %memoryview_index_impl.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %3 = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ] ; 3 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !44
  %i.q = and i32 %i.p, 1
end_hunk_0
begin_hunk_1_@memoryview_index:bb.a
  %i.aa = getelementptr i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !52 ; 3 uses
  %i.ad = icmp slt i64 %i.n, 0
  %i.ae = add i64 %i.ac, %i.n
  %i.af = call i64 @llvm.smax.i64(i64 %i.ae, i64 0)
  %.045.i = select i1 %i.ad, i64 %i.af, i64 %i.n  ; 2 uses
  %i.ag = icmp slt i64 %3, 0
  %i.ah = add i64 %i.ac, %3
  %i.ai = call i64 @llvm.smax.i64(i64 %i.ah, i64 0)
  %.047.i = select i1 %i.ag, i64 %i.ai, i64 %3
  %i.aj = call i64 @llvm.smin.i64(i64 %.047.i, i64 %i.ac) ; 2 uses
  %.not6075.i = icmp slt i64 %.045.i, %i.aj
  br i1 %.not6075.i, label %.lr.ph.i, label %._crit_edge.i
end_hunk_1
