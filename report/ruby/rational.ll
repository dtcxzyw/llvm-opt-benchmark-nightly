inline.NumInlined: 570
inline.NumDeleted: 100
begin_hunk_0_@parse_rat:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.05.i = phi ptr [ %0, %.lr.ph.i ], [ %i.r, %bb.c ] ; 4 uses
  %i.m = load i8, ptr %.05.i, align 1, !tbaa !35
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr [2 x i8], ptr %i.k, i64 %i.n
end_hunk_0
begin_hunk_1_@parse_rat:bb.a
  br i1 %exitcond.not.i, label %skip_ws.exit.loopexitsplit, label %bb.b, !llvm.loop !38

skip_ws.exit.loopexitsplit:                       ; preds = %bb.c
  %.0.lcssa.i.ph.ph = phi ptr [ %scevgep.i, %bb.c ]
  br label %skip_ws.exit.loopexit

.skip_ws.exit.loopexit_crit_edge:                 ; preds = %bb.b
  %.05.i.lcssa = phi ptr [ %.05.i, %bb.b ]
  %.05.i.lcssa.a = phi ptr [ %.05.i, %bb.b ]      ; 0 uses
  br label %skip_ws.exit.loopexit

skip_ws.exit.loopexit:                            ; preds = %skip_ws.exit.loopexitsplit, %.skip_ws.exit.loopexit_crit_edge
  %.0.lcssa.i.ph = phi ptr [ %.05.i.lcssa, %.skip_ws.exit.loopexit_crit_edge ], [ %.0.lcssa.i.ph.ph, %skip_ws.exit.loopexitsplit ]
  br label %skip_ws.exit

skip_ws.exit:                                     ; preds = %skip_ws.exit.loopexit, %bb.a
end_hunk_1
begin_hunk_2_@parse_rat:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph.i39
  %.05.i41 = phi ptr [ %i.am, %.lr.ph.i39 ], [ %i.ay, %bb.s ] ; 4 uses
  %i.at = load i8, ptr %.05.i41, align 1, !tbaa !35
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr [2 x i8], ptr %i.ar, i64 %i.au
end_hunk_2
begin_hunk_3_@parse_rat:bb.a
  br i1 %exitcond.not.i43, label %skip_ws.exit44.loopexitsplit, label %bb.r, !llvm.loop !38

skip_ws.exit44.loopexitsplit:                     ; preds = %bb.s
  %.0.lcssa.i38.ph.ph = phi ptr [ %scevgep.i40, %bb.s ]
  br label %skip_ws.exit44.loopexit

.skip_ws.exit44.loopexit_crit_edge:               ; preds = %bb.r
  %.05.i41.lcssa = phi ptr [ %.05.i41, %bb.r ]
  %.05.i41.lcssa.a = phi ptr [ %.05.i41, %bb.r ]  ; 0 uses
  br label %skip_ws.exit44.loopexit

skip_ws.exit44.loopexit:                          ; preds = %skip_ws.exit44.loopexitsplit, %.skip_ws.exit44.loopexit_crit_edge
  %.0.lcssa.i38.ph = phi ptr [ %.05.i41.lcssa, %.skip_ws.exit44.loopexit_crit_edge ], [ %.0.lcssa.i38.ph.ph, %skip_ws.exit44.loopexitsplit ]
  br label %skip_ws.exit44

skip_ws.exit44:                                   ; preds = %skip_ws.exit44.loopexit, %bb.q
end_hunk_3
begin_hunk_4_@parse_rat:bb.a
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i46
  %.05.i48 = phi ptr [ %i.ae, %.lr.ph.i46 ], [ %i.bm, %bb.w ] ; 4 uses
  %i.bh = load i8, ptr %.05.i48, align 1, !tbaa !35
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr [2 x i8], ptr %i.bf, i64 %i.bi
end_hunk_4
begin_hunk_5_@parse_rat:bb.a
  br i1 %exitcond.not.i50, label %skip_ws.exit51.loopexitsplit, label %bb.v, !llvm.loop !38

skip_ws.exit51.loopexitsplit:                     ; preds = %bb.w
  %.0.lcssa.i45.ph.ph = phi ptr [ %scevgep.i47, %bb.w ]
  br label %skip_ws.exit51.loopexit

.skip_ws.exit51.loopexit_crit_edge:               ; preds = %bb.v
  %.05.i48.lcssa = phi ptr [ %.05.i48, %bb.v ]
  %.05.i48.lcssa.a = phi ptr [ %.05.i48, %bb.v ]  ; 0 uses
  br label %skip_ws.exit51.loopexit

skip_ws.exit51.loopexit:                          ; preds = %skip_ws.exit51.loopexitsplit, %.skip_ws.exit51.loopexit_crit_edge
  %.0.lcssa.i45.ph = phi ptr [ %.05.i48.lcssa, %.skip_ws.exit51.loopexit_crit_edge ], [ %.0.lcssa.i45.ph.ph, %skip_ws.exit51.loopexitsplit ]
  br label %skip_ws.exit51

skip_ws.exit51:                                   ; preds = %skip_ws.exit51.loopexit, %.thread
end_hunk_5
