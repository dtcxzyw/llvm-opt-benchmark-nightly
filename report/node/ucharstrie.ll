inline.NumInlined: 39
inline.NumDeleted: 12
begin_hunk_0_@_ZN6icu_7810UCharsTrie4nextENS_14ConstChar16PtrEi:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.al, %bb.i
  %.091 = phi ptr [ %i.r, %bb.i ], [ %i.bx, %bb.al ] ; 6 uses
  %.085 = phi i32 [ %i.u, %bb.i ], [ %i.by, %bb.al ] ; 8 uses
  %.071 = phi ptr [ %i.a, %bb.i ], [ %.475.ph, %bb.al ] ; 3 uses
  %.063 = phi i32 [ %2, %bb.i ], [ %.366.ph, %bb.al ] ; 7 uses
  %i.v = icmp slt i32 %.063, 0
  br i1 %i.v, label %.preheader, label %.preheader130

end_hunk_0
begin_hunk_1_@_ZN6icu_7810UCharsTrie4nextENS_14ConstChar16PtrEi:bb.a
  br i1 %i.ap, label %.preheader._crit_edge, label %.lr.ph175, !llvm.loop !9

.preheader130._crit_edge.loopexit:                ; preds = %bb.s
  %scevgep.le = getelementptr i8, ptr %.091, i64 2
  %3 = add nsw i32 %.063, -1
  %4 = zext nneg i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 1
  %scevgep243.le = getelementptr i8, ptr %scevgep.le, i64 %5
  %i.aq = sub i32 %.085, %.063
  br label %.preheader130._crit_edge

.preheader130._crit_edge:                         ; preds = %.preheader130, %.preheader130._crit_edge.loopexit
  %.293.lcssa = phi ptr [ %scevgep243.le, %.preheader130._crit_edge.loopexit ], [ %.091, %.preheader130 ] ; 2 uses
  %.287.lcssa = phi i32 [ %i.aq, %.preheader130._crit_edge.loopexit ], [ %.085, %.preheader130 ] ; 2 uses
  store i32 %.287.lcssa, ptr %i.t, align 8
  store ptr %.293.lcssa, ptr %i.q, align 8
end_hunk_1
begin_hunk_2_@_ZN6icu_7810UCharsTrie4nextENS_14ConstChar16PtrEi:bb.a
  br label %_ZNK6icu_7810UCharsTrie7currentEv.exit

bb.s:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %.293166, i64 2
  %i.bd = add nsw i32 %.287167, -1
  %i.be = icmp eq i32 %i.az, 0
  br i1 %i.be, label %.preheader130._crit_edge.loopexit, label %.lr.ph, !llvm.loop !10
end_hunk_2
