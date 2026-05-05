inline.NumInlined: 263
inline.NumDeleted: 48
begin_hunk_0_@scan_once_unicode:bb.a
  %i.e = lshr i32 %.val.i, 2
  %i.f = and i32 %i.e, 7                          ; 50 uses
  %i.g = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !24  ; 17 uses
  %i.h = icmp slt i64 %3, 0
  br i1 %i.h, label %bb.d, label %bb.e

end_hunk_0
begin_hunk_1_@scan_once_unicode:bb.a
  br i1 %.not.i212.not, label %.lr.ph, label %.critedge.i.loopexitsplit, !llvm.loop !70

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader.i
  %.1131.i263 = phi i64 [ %.1131.i, %.preheader.i ], [ %.1131.i261, %.lr.ph.preheader ] ; 9 uses
  switch i32 %i.f, label %bb.fb [
    i32 1, label %bb.ez
    i32 2, label %bb.fa
end_hunk_1
begin_hunk_2_@scan_once_unicode:bb.a
  br label %.critedge.i, !llvm.loop !70

.critedge.i.loopexitsplit:                        ; preds = %.preheader.i
  br label %.critedge.i.loopexit

PyUnicode_READ.exit168.i..critedge.i.loopexit_crit_edge: ; preds = %PyUnicode_READ.exit168.i
  %.1131.i263.lcssa.a = phi i64 [ %.1131.i263, %PyUnicode_READ.exit168.i ]
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %.critedge.i.loopexitsplit, %PyUnicode_READ.exit168.i..critedge.i.loopexit_crit_edge
  %.2.i.ph = phi i64 [ %.1131.i263.lcssa.a, %PyUnicode_READ.exit168.i..critedge.i.loopexit_crit_edge ], [ %i.nc, %.critedge.i.loopexitsplit ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.preheader.i.preheader, %PyUnicode_READ.exit170.i..critedge.i.loopexit_crit_edge, %bb.fk
end_hunk_2
begin_hunk_3_@scan_once_unicode:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.gj
  %.3226.i = phi i64 [ %i.qg, %bb.gj ], [ %i.pn, %.lr.ph.i.preheader ] ; 9 uses
  switch i32 %i.f, label %bb.ge [
    i32 1, label %bb.gc
    i32 2, label %bb.gd
end_hunk_3
begin_hunk_4_@scan_once_unicode:bb.a
  br label %.critedge2.i.loopexit

PyUnicode_READ.exit183.i..critedge2.i.loopexit_crit_edge: ; preds = %PyUnicode_READ.exit183.i
  %.3226.i.lcssa356 = phi i64 [ %.3226.i, %PyUnicode_READ.exit183.i ]
  br label %.critedge2.i.loopexit

.critedge2.i.loopexit:                            ; preds = %.critedge2.i.loopexitsplit, %PyUnicode_READ.exit183.i..critedge2.i.loopexit_crit_edge
  %.3226.i.lcssa = phi i64 [ %.3226.i.lcssa356, %PyUnicode_READ.exit183.i..critedge2.i.loopexit_crit_edge ], [ %.3226.i.lcssa357, %.critedge2.i.loopexitsplit ]
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.i.loopexit, %bb.gb, %PyUnicode_READ.exit181.i, %PyUnicode_READ.exit179.i, %PyUnicode_READ.exit177.i, %.critedge.i
end_hunk_4
begin_hunk_5_@scan_once_unicode:bb.a
  br label %.lr.ph231.i

.lr.ph231.i:                                      ; preds = %.lr.ph231.i.preheader, %bb.hk
  %.6230.i = phi i64 [ %i.sn, %bb.hk ], [ %.5.i, %.lr.ph231.i.preheader ] ; 9 uses
  switch i32 %i.f, label %bb.hf [
    i32 1, label %bb.hd
    i32 2, label %bb.he
end_hunk_5
begin_hunk_6_@scan_once_unicode:bb.a
  br label %.critedge4.i.loopexitsplit

..critedge4.i.loopexitsplit_crit_edge:            ; preds = %bb.hk
  br label %.critedge4.i.loopexitsplit, !llvm.loop !72

.critedge4.i.loopexitsplit:                       ; preds = %.critedge4.i.loopexitsplitsplit, %..critedge4.i.loopexitsplit_crit_edge
end_hunk_6
begin_hunk_7_@scan_once_unicode:bb.a
  br label %.critedge4.i.loopexit

PyUnicode_READ.exit195.i..critedge4.i.loopexit_crit_edge: ; preds = %PyUnicode_READ.exit195.i
  %.6230.i.lcssa.a = phi i64 [ %.6230.i, %PyUnicode_READ.exit195.i ]
  br label %.critedge4.i.loopexit

.critedge4.i.loopexit:                            ; preds = %.critedge4.i.loopexitsplit, %PyUnicode_READ.exit195.i..critedge4.i.loopexit_crit_edge
  %.6.lcssa.i.ph = phi i64 [ %.6230.i.lcssa.a, %PyUnicode_READ.exit195.i..critedge4.i.loopexit_crit_edge ], [ %.6.lcssa.i.ph.ph, %.critedge4.i.loopexitsplit ]
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %.critedge4.i.loopexit, %bb.hc
end_hunk_7
begin_hunk_8_@_parse_object_unicode:bb.a
  br label %.thread

.lr.ph419:                                        ; preds = %.lr.ph419.preheader, %.critedge10
  %.3418 = phi i64 [ %.3, %.critedge10 ], [ %.3416, %.lr.ph419.preheader ] ; 14 uses
  switch i32 %i.j, label %bb.bd [
    i32 1, label %bb.bb
    i32 2, label %bb.bc
end_hunk_8
begin_hunk_9_@_parse_object_unicode:bb.a
  br label %.critedge8.loopexit

PyUnicode_READ.exit296..critedge8.loopexit_crit_edge: ; preds = %PyUnicode_READ.exit296
  %.3418.lcssa.a = phi i64 [ %.3418, %PyUnicode_READ.exit296 ]
  br label %.critedge8.loopexit

.critedge8.loopexit:                              ; preds = %.critedge8.loopexitsplit, %PyUnicode_READ.exit296..critedge8.loopexit_crit_edge
  %.3.lcssa.ph = phi i64 [ %.3418.lcssa.a, %PyUnicode_READ.exit296..critedge8.loopexit_crit_edge ], [ %.3.lcssa708, %.critedge8.loopexitsplit ]
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit, %.preheader361
end_hunk_9
