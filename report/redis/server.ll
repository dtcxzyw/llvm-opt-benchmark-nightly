inline.NumInlined: 245
inline.NumDeleted: 29
begin_hunk_0_@createSocketAcceptHandler:bb.a
  br i1 %i.h, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %.lr.ph ]
  %.not = icmp eq i64 %indvars.iv.lcssa, 0
  br i1 %.not, label %.loopexit, label %.lr.ph17.preheader
end_hunk_0
begin_hunk_1_@createSocketAcceptHandler:bb.a
  br label %.lr.ph17

.lr.ph17:                                         ; preds = %.lr.ph17.preheader, %.lr.ph17
  %lsr.iv34 = phi i64 [ %lsr.iv.lcssa, %.lr.ph17.preheader ], [ %lsr.iv.next35, %.lr.ph17 ] ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !239
  %i.j = shl nsw i64 %lsr.iv34, 2
  %scevgep36 = getelementptr i8, ptr %0, i64 %i.j
end_hunk_1
begin_hunk_2_@changeListener:bb.a
  br i1 %i.ak, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %.lr.ph.i9
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph.i9 ]
  %indvars.iv.i10.lcssa = phi i64 [ %indvars.iv.i10, %.lr.ph.i9 ]
  %.not.i = icmp eq i64 %indvars.iv.i10.lcssa, 0
  br i1 %.not.i, label %createSocketAcceptHandler.exit, label %.lr.ph17.i.preheader
end_hunk_2
begin_hunk_3_@changeListener:bb.a
  br label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %.lr.ph17.i.preheader, %.lr.ph17.i
  %lsr.iv34 = phi i64 [ %lsr.iv.lcssa, %.lr.ph17.i.preheader ], [ %lsr.iv.next35, %.lr.ph17.i ] ; 2 uses
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !239
  %i.am = shl nsw i64 %lsr.iv34, 2
  %scevgep36 = getelementptr i8, ptr %0, i64 %i.am
end_hunk_3
