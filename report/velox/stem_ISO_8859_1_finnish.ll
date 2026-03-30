begin_hunk_0
  %.pre223 = sub i32 %.pre221, %i.l
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.m, %.thread203, %bb.o, %bb.n
  %.pre-phi224 = phi i32 [ %.pre223, %._crit_edge ], [ %.pre-phi, %bb.m ], [ %.pre-phi, %.thread203 ], [ %.pre-phi, %bb.o ], [ %.pre-phi, %bb.n ]
  store i32 %.pre-phi224, ptr %i.a, align 8, !tbaa !7
  store i32 %i.i, ptr %i.h, align 8, !tbaa !16
  %i.bi = tail call i32 @in_grouping_b(ptr noundef nonnull %0, ptr noundef nonnull @g_V1, i32 noundef 97, i32 noundef 246, i32 noundef 1) #3
end_hunk_0
begin_hunk_1
  %spec.select = select i1 %i.bw, i32 1, i32 %i.bv
  br label %.thread215

.thread215:                                       ; preds = %bb.d, %bb.p, %bb.a, %bb.f, %bb.l, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.14 = phi i32 [ -1, %bb.s ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.t ], [ %spec.select, %bb.u ], [ %i.bg, %bb.p ], [ 0, %bb.a ], [ %i.s, %bb.d ], [ %i.ab, %bb.f ], [ %i.at, %bb.l ]
  ret i32 %.14
}

end_hunk_1
