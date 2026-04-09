inline.NumInlined: 19
inline.NumDeleted: 13
begin_hunk_0_@_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj:bb.a
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.loopexit ] ; 2 uses
  %i.i = phi i32 [ %.pre, %.lr.ph ], [ %i.p, %.loopexit ] ; 2 uses
  %.041 = phi i32 [ %2, %.lr.ph ], [ %i.q, %.loopexit ] ; 3 uses
  %.02740 = phi ptr [ %1, %.lr.ph ], [ %i.j, %.loopexit ] ; 7 uses
  %.02939 = phi i32 [ %i.a, %.lr.ph ], [ %.231, %.loopexit ] ; 5 uses
  %.not33 = icmp eq i32 %i.i, 0
  br i1 %.not33, label %.critedge, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj:bb.a
  br label %._crit_edge60

.critedge:                                        ; preds = %bb.b
  %i.af = lshr i32 %.041, 2                       ; 4 uses
  %.not3448 = icmp eq i32 %i.af, 0
  br i1 %.not3448, label %._crit_edge, label %.lr.ph52.preheader

end_hunk_1
begin_hunk_2_@_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj:bb.a
  %.cast = trunc i64 %n.vec to i32
  %i.aj = sub i32 %i.af, %.cast
  %i.ak = shl nuw i64 %n.vec, 2
  %i.al = getelementptr i8, ptr %.02740, i64 %i.ak
  %i.am = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.02939, i64 0
  br label %vector.body

end_hunk_2
begin_hunk_3_@_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj:bb.a
  %bin.rdx = xor <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph52.preheader89

.lr.ph52.preheader89:                             ; preds = %.lr.ph52.preheader, %middle.block
  %.02551.ph = phi i32 [ %i.af, %.lr.ph52.preheader ], [ %i.aj, %middle.block ]
end_hunk_3
begin_hunk_4_@_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj:bb.a
  %.349 = phi i32 [ %i.av, %.lr.ph52 ], [ %.349.ph, %.lr.ph52.preheader89 ]
  %i.as = add nsw i32 %.02551, -1                 ; 2 uses
  %i.at = load i32, ptr %.12850, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.12850, i64 4
  %i.av = xor i32 %i.at, %.349                    ; 2 uses
  %.not34 = icmp eq i32 %i.as, 0
  br i1 %.not34, label %._crit_edge.loopexit, label %.lr.ph52, !llvm.loop !31

._crit_edge.loopexit:                             ; preds = %.lr.ph52, %middle.block
  %.lcssa = phi i32 [ %i.ar, %middle.block ], [ %i.av, %.lr.ph52 ]
  %3 = add nsw i32 %i.af, -1
  %4 = zext nneg i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 2
  %6 = getelementptr i8, ptr %.02740, i64 %5
  %scevgep = getelementptr i8, ptr %6, i64 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %.3.lcssa = phi i32 [ %.02939, %.critedge ], [ %.lcssa, %._crit_edge.loopexit ]
  %.128.lcssa = phi ptr [ %.02740, %.critedge ], [ %scevgep, %._crit_edge.loopexit ] ; 3 uses
  store i32 %.3.lcssa, ptr %0, align 4, !tbaa !22
  %i.aw = and i32 %.041, 3                        ; 3 uses
  %.not3555 = icmp eq i32 %i.aw, 0
end_hunk_4
