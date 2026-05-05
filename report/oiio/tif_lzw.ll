inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@LZWDecodeCompat:bb.a
  %.0233461 = phi i32 [ %i.cf, %.lr.ph ], [ %.0233.be, %.backedge ] ; 6 uses
  %.0238460 = phi ptr [ %i.bt, %.lr.ph ], [ %.0238.be, %.backedge ] ; 4 uses
  %.3252459 = phi i64 [ %.2251, %.lr.ph ], [ %.3252.be, %.backedge ] ; 10 uses
  %.2258458 = phi ptr [ %.1257, %.lr.ph ], [ %.2258.be, %.backedge ] ; 10 uses
  %i.cu = zext nneg i32 %.0233461 to i64          ; 4 uses
  %i.cv = icmp ult i64 %.0468, %i.cu
  br i1 %i.cv, label %.thread285, label %bb.g
end_hunk_0
begin_hunk_1_@LZWDecodeCompat:bb.a
  br i1 %i.gu, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %.1239.lcssa1540 = phi ptr [ %.1239, %bb.x ]    ; 2 uses
  %.lcssa1531 = phi i64 [ %i.dp, %bb.x ]
  %.lcssa1521 = phi i64 [ %i.dq, %bb.x ]
end_hunk_1
begin_hunk_2_@LZWDecodeCompat:bb.a
  %.4213.prol = phi ptr [ %i.hg, %.prol.preheader1147 ], [ %.lcssa1357, %.prol.preheader1147.preheader ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.4213.prol, i64 11
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !52
  %scevgep1585 = getelementptr i8, ptr %.2258458, i64 %.4253.prol
  %scevgep1586 = getelementptr i8, ptr %scevgep1585, i64 -1
  store i8 %i.hf, ptr %scevgep1586, align 1, !tbaa !58
  %i.hg = load ptr, ptr %.4213.prol, align 8, !tbaa !55 ; 2 uses
  %i.hh = add i64 %.4253.prol, -1                 ; 3 uses
  %lsr.iv.next1588 = add nsw i64 %lsr.iv1587, -1  ; 2 uses
  %prol.iter1162.cmp.not = icmp eq i64 %lsr.iv.next1588, 0
  %scevgep1584 = getelementptr i8, ptr %.2258458, i64 %i.hh
  br i1 %prol.iter1162.cmp.not, label %.prol.loopexit1148.loopexit, label %.prol.preheader1147, !llvm.loop !95

.prol.loopexit1148.loopexit:                      ; preds = %.prol.preheader1147
end_hunk_2
