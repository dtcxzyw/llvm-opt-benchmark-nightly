inline.NumInlined: 130
inline.NumDeleted: 15
begin_hunk_0_@VSIM_RedisCommand:bb.a
  %.0175310 = phi i32 [ %.0175.be, %.backedge ], [ 0, %.preheader ] ; 8 uses
  %.0179309 = phi i32 [ %.0179.be, %.backedge ], [ 0, %.preheader ] ; 8 uses
  %.0182308 = phi i64 [ %.0182.be, %.backedge ], [ 0, %.preheader ] ; 8 uses
  %.0185307 = phi i32 [ %.0185.be, %.backedge ], [ 0, %.preheader ] ; 8 uses
  %.0188306 = phi i32 [ %.0188.be, %.backedge ], [ %.4208, %.preheader ] ; 15 uses
  %.0192305 = phi ptr [ %.0192.be, %.backedge ], [ null, %.preheader ] ; 8 uses
  %i.de = load ptr, ptr @RedisModule_StringPtrLen, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@VSIM_RedisCommand:bb.a
.backedge:                                        ; preds = %bb.bc, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.ai, %bb.an, %bb.aw, %bb.ba
  %.0192.be = phi ptr [ %i.gh, %bb.ba ], [ %.0192305, %bb.bc ], [ %.0192305, %bb.aw ], [ %.0192305, %bb.an ], [ %.0192305, %bb.ad ], [ %.0192305, %bb.z ], [ %.0192305, %bb.x ], [ %.0192305, %bb.ab ], [ %.0192305, %bb.ai ] ; 2 uses
  %.0188.be = phi i32 [ %i.gr, %bb.ba ], [ %i.gv, %bb.bc ], [ %i.fy, %bb.aw ], [ %i.eu, %bb.an ], [ %i.dq, %bb.ad ], [ %i.dm, %bb.z ], [ %i.dk, %bb.x ], [ %i.do, %bb.ab ], [ %i.ef, %bb.ai ] ; 2 uses
  %.0185.be = phi i32 [ %.0185307, %bb.ba ], [ %.0185307, %bb.bc ], [ %.0185307, %bb.aw ], [ %.0185307, %bb.an ], [ 1, %bb.ad ], [ %.0185307, %bb.z ], [ %.0185307, %bb.x ], [ %.0185307, %bb.ab ], [ %.0185307, %bb.ai ] ; 2 uses
  %.0182.be = phi i64 [ %.0182308, %bb.ba ], [ %.0182308, %bb.bc ], [ %.0182308, %bb.aw ], [ %.0182308, %bb.an ], [ %.0182308, %bb.ad ], [ %.0182308, %bb.z ], [ %.0182308, %bb.x ], [ 1, %bb.ab ], [ %.0182308, %bb.ai ] ; 2 uses
  %.0179.be = phi i32 [ %.0179309, %bb.ba ], [ %.0179309, %bb.bc ], [ %.0179309, %bb.aw ], [ %.0179309, %bb.an ], [ %.0179309, %bb.ad ], [ 1, %bb.z ], [ %.0179309, %bb.x ], [ %.0179309, %bb.ab ], [ %.0179309, %bb.ai ] ; 2 uses
  %.0175.be = phi i32 [ %.0175310, %bb.ba ], [ %.0175310, %bb.bc ], [ %.0175310, %bb.aw ], [ %.0175310, %bb.an ], [ %.0175310, %bb.ad ], [ %.0175310, %bb.z ], [ 1, %bb.x ], [ %.0175310, %bb.ab ], [ %.0175310, %bb.ai ] ; 2 uses
end_hunk_1
begin_hunk_2_@VSIM_RedisCommand:bb.a
  br i1 %i.gw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !132

._crit_edge.loopexit:                             ; preds = %.backedge
  %3 = icmp ne i32 %.0185.be, 0
  %i.gx = zext nneg i32 %.0175.be to i64
  %i.gy = zext nneg i32 %.0179.be to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0192.lcssa = phi ptr [ null, %.preheader ], [ %.0192.be, %._crit_edge.loopexit ] ; 3 uses
  %.0185.lcssa = phi i1 [ false, %.preheader ], [ %3, %._crit_edge.loopexit ]
  %.0182.lcssa = phi i64 [ 0, %.preheader ], [ %.0182.be, %._crit_edge.loopexit ] ; 3 uses
  %.0179.lcssa = phi i64 [ 0, %.preheader ], [ %i.gy, %._crit_edge.loopexit ] ; 3 uses
  %.0175.lcssa = phi i64 [ 0, %.preheader ], [ %i.gx, %._crit_edge.loopexit ] ; 3 uses
end_hunk_2
