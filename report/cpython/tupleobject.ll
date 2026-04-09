inline.NumInlined: 195
inline.NumDeleted: 42
begin_hunk_0_@_PyTuple_FromArraySteal:bb.a
  %.2.i24 = phi ptr [ %i.p, %tuple_alloc.exit ], [ %.sink36, %.lr.ph.preheader.sink.split ] ; 6 uses
  %i.y = getelementptr i8, ptr %.2.i24, i64 32    ; 6 uses
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %.2.i2437 = ptrtoaddr ptr %.2.i24 to i64
  %2 = add i64 %.2.i2437, 32
  %3 = sub i64 %2, %i.a
  %diff.check = icmp ult i64 %3, 32
  br i1 %diff.check, label %.lr.ph.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, 9223372036854775804        ; 3 uses
  br label %vector.body

end_hunk_0
begin_hunk_1_@_PyTuple_FromArraySteal:bb.a
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader39

.lr.ph.preheader39:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.01925.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol
end_hunk_1
begin_hunk_2_@_PyTuple_DebugMallocStats:bb.a
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @PyTuple_Type, i64 32), align 8, !tbaa !76
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @PyTuple_Type, i64 40), align 8, !tbaa !77
  %i.l = mul i64 %i.k, %indvars.iv.next
  %i.m = add i64 %i.j, 7
  %i.n = add i64 %i.m, %i.l
  %i.o = and i64 %i.n, -8
  call void @_PyDebugAllocatorStats(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.i, i64 noundef %i.o) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
end_hunk_2
begin_hunk_3_@tuple_repeat:bb.a
  %i.aq = add i64 %i.ap, 32
  %i.ar = add i64 %.2.i5579, 40
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ar)
  %2 = add i64 %umax, -33
  %3 = sub i64 %2, %.2.i5579                      ; 2 uses
  %i.as = lshr i64 %3, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 24
end_hunk_3
