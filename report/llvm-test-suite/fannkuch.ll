inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@main:bb.a
  %i.x = phi i32 [ 10, %bb.a ], [ %.be, %.loopexit.i.backedge ] ; 11 uses
  %i.y = phi i32 [ 10, %bb.a ], [ %.be5, %.loopexit.i.backedge ] ; 2 uses
  %.not101.i = phi i1 [ false, %bb.a ], [ %i.cl, %.loopexit.i.backedge ]
  %min.iters.check = phi i1 [ false, %bb.a ], [ %min.iters.check.be, %.loopexit.i.backedge ]
  %.087.i.a = phi i32 [ 11, %bb.a ], [ %.087.i.be.a, %.loopexit.i.backedge ] ; 2 uses
  %.082.i = phi i32 [ 0, %bb.a ], [ %.183.i, %.loopexit.i.backedge ] ; 3 uses
  %.081.i = phi i64 [ 0, %bb.a ], [ %.1.i, %.loopexit.i.backedge ] ; 3 uses
  %i.z = icmp slt i32 %.082.i, 30
end_hunk_0
begin_hunk_1_@main:bb.a
  br i1 %.not101.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %2 = zext nneg i32 %.087.i.a to i64             ; 4 uses
  %i.bh = add nsw i64 %2, -1                      ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bh, -8                      ; 3 uses
  %i.bi = sub nsw i64 %2, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.087.i.a, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bj = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 -1, i32 -2, i32 -3>
end_hunk_1
begin_hunk_2_@main:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %i.bj, %vector.ph ], [ %i.bo, %vector.body ] ; 3 uses
  %i.bk = add <4 x i32> %vec.ind, splat (i32 -4)
  %offset.idx = sub i64 %2, %index
  %i.bl = getelementptr [4 x i8], ptr %i.c, i64 %offset.idx ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -16
  %i.bn = getelementptr i8, ptr %i.bl, i64 -32
end_hunk_2
begin_hunk_3_@main:bb.a
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %2, %.lr.ph.preheader.i ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
end_hunk_3
begin_hunk_4_@main:bb.a
.loopexit.i.backedge:                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.be = phi i32 [ %i.x, %bb.e ], [ %i.x, %bb.f ], [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.x, %bb.i ], [ %i.x, %bb.j ], [ %i.x, %bb.k ], [ %i.x, %bb.l ], [ %i.x, %bb.m ], [ %i.ds, %bb.n ]
  %.be5 = phi i32 [ %i.ch, %bb.e ], [ %i.ch, %bb.f ], [ %i.ch, %bb.g ], [ %i.ch, %bb.h ], [ %i.ch, %bb.i ], [ %i.ch, %bb.j ], [ %i.ch, %bb.k ], [ %i.ch, %bb.l ], [ %i.ch, %bb.m ], [ %i.ds, %bb.n ]
  %min.iters.check.be = phi i1 [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ false, %bb.m ], [ false, %bb.n ]
  %.087.i.be.a = phi i32 [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ 7, %bb.k ], [ 8, %bb.l ], [ 9, %bb.m ], [ 10, %bb.n ]
  br label %.loopexit.i
end_hunk_4
