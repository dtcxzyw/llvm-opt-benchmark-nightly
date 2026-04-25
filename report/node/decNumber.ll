inline.NumInlined: 181
inline.NumDeleted: 7
begin_hunk_0_@_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj:bb.a
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = load i32, ptr %1, align 4                ; 7 uses
  %i.d = sub nsw i32 %3, %i.c                     ; 6 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.e

end_hunk_0
begin_hunk_1_@_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj:bb.a
  %n.vec = and i64 %i.an, 4294967292              ; 4 uses
  %.cast = trunc nuw i64 %n.vec to i32
  %i.as = or disjoint i32 %.cast, 1
  %i.at = getelementptr i8, ptr %2, i64 %n.vec    ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pr189, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body
end_hunk_1
begin_hunk_2_@_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj:bb.a

bb.j:                                             ; preds = %bb.i, %.lr.ph.prol
  %i.bh = phi i32 [ %i.be, %.lr.ph.prol ], [ 1, %bb.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.2152.prol, i64 1 ; 3 uses
  %i.bj = add nuw nsw i32 %i.bf, 1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
end_hunk_2
begin_hunk_3_@_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj:bb.a

.lr.ph.prol.loopexit:                             ; preds = %bb.j, %.lr.ph.preheader285
  %.lcssa288.unr = phi i32 [ poison, %.lr.ph.preheader285 ], [ %i.bh, %bb.j ]
  %.lcssa287.unr = phi ptr [ poison, %.lr.ph.preheader285 ], [ %i.bi, %bb.j ]
  %.unr = phi i32 [ %.ph, %.lr.ph.preheader285 ], [ %i.bh, %bb.j ]
  %.unr291 = phi i32 [ %.ph286, %.lr.ph.preheader285 ], [ %i.bj, %bb.j ]
  %.2152.unr = phi ptr [ %.2152.ph, %.lr.ph.preheader285 ], [ %i.bi, %bb.j ]
end_hunk_3
begin_hunk_4_@_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj:bb.a

bb.s:                                             ; preds = %bb.r, %.lr.ph.3
  %i.ch = phi i32 [ %i.ce, %.lr.ph.3 ], [ 1, %bb.r ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.2152, i64 4 ; 2 uses
  %i.cj = add nuw nsw i32 %i.bw, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.cj, %i.d
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %bb.s, %middle.block
  %.lcssa198 = phi i32 [ %i.bb, %middle.block ], [ %.lcssa288.unr, %.lr.ph.prol.loopexit ], [ %i.ch, %bb.s ]
  %.lcssa = phi ptr [ %i.at, %middle.block ], [ %.lcssa287.unr, %.lr.ph.prol.loopexit ], [ %i.ci, %bb.s ]
  %i.ck = add nsw i32 %i.d, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader150
  %i.cl = phi i32 [ %.pr189, %.preheader150 ], [ %.lcssa198, %._crit_edge.loopexit ] ; 2 uses
  %.2123.lcssa = phi i32 [ 0, %.preheader150 ], [ %i.ck, %._crit_edge.loopexit ]
  %.2.lcssa = phi ptr [ %2, %.preheader150 ], [ %.lcssa, %._crit_edge.loopexit ] ; 9 uses
  %.2.lcssa208 = ptrtoaddr ptr %.2.lcssa to i64
  %i.cm = sub nsw i32 %i.d, %.2123.lcssa          ; 5 uses
  %i.cn = add nsw i32 %i.cm, -1                   ; 3 uses
end_hunk_4
