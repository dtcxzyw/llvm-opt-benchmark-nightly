inline.NumInlined: 34
inline.NumDeleted: 3
begin_hunk_0_@hllSparseSet:bb.a
.lr.ph324:                                        ; preds = %.lr.ph324.preheader, %.outer.backedge
  %.1.ph328 = phi ptr [ %.1323392, %.outer.backedge ], [ %.0180, %.lr.ph324.preheader ] ; 2 uses
  %.3184.ph327 = phi ptr [ %.3184.ph.be, %.outer.backedge ], [ %i.ix, %.lr.ph324.preheader ] ; 6 uses
  %.0185.ph326 = phi i32 [ %i.jg, %.outer.backedge ], [ 5, %.lr.ph324.preheader ]
  %.1.ph328393 = ptrtoint ptr %.1.ph328 to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %.3184.ph327, i64 1 ; 5 uses
  %i.ja = ptrtoint ptr %.3184.ph327 to i64
end_hunk_0
begin_hunk_1_@hllSparseSet:bb.a
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph324, %bb.bp
  %lsr.iv394 = phi i32 [ %i.jc, %.lr.ph324 ], [ %lsr.iv.next395, %bb.bp ] ; 8 uses
  %lsr.iv = phi i64 [ %i.jb, %.lr.ph324 ], [ %lsr.iv.next, %bb.bp ] ; 2 uses
  %.1323 = phi ptr [ %.1.ph328, %.lr.ph324 ], [ %i.jy, %bb.bp ] ; 8 uses
  %.not238 = icmp eq i32 %lsr.iv394, -1
  br i1 %.not238, label %.critedge.loopexit, label %bb.bj

end_hunk_1
begin_hunk_2_@hllSparseSet:bb.a

.outer.backedge.loopexitsplit:                    ; preds = %bb.bj, %bb.bl, %bb.bm, %bb.bn
  %.1323.lcssa400 = phi ptr [ %.1323, %bb.bj ], [ %.1323, %bb.bl ], [ %.1323, %bb.bm ], [ %.1323, %bb.bn ]
  %lsr.iv394.lcssa397 = phi i32 [ %lsr.iv394, %bb.bj ], [ %lsr.iv394, %bb.bl ], [ %lsr.iv394, %bb.bm ], [ %lsr.iv394, %bb.bn ]
  br label %.outer.backedge.loopexit

..outer.backedge.loopexit_crit_edge:              ; preds = %bb.bo
  %.1323.lcssa401 = phi ptr [ %.1323, %bb.bo ]
  %lsr.iv394.lcssa398 = phi i32 [ %lsr.iv394, %bb.bo ]
  br label %.outer.backedge.loopexit

.outer.backedge.loopexit:                         ; preds = %.outer.backedge.loopexitsplit, %..outer.backedge.loopexit_crit_edge
  %.1323.lcssa391 = phi ptr [ %.1323.lcssa401, %..outer.backedge.loopexit_crit_edge ], [ %.1323.lcssa400, %.outer.backedge.loopexitsplit ]
  %.lcssa389 = phi i32 [ %lsr.iv394.lcssa398, %..outer.backedge.loopexit_crit_edge ], [ %lsr.iv394.lcssa397, %.outer.backedge.loopexitsplit ]
  br label %.outer.backedge

end_hunk_2
