inline.NumInlined: 734
inline.NumDeleted: 80
begin_hunk_0_@s3e:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i230
  %.07.i = phi i64 [ 0, %.lr.ph.i230 ], [ %i.bh, %bb.n ] ; 4 uses
  %i.bb = getelementptr i8, ptr %.1192, i64 %.07.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %i.bd = zext i8 %i.bc to i64
end_hunk_0
begin_hunk_1_@s3e:bb.a
  br i1 %exitcond.not.i, label %digit_span.exit.loopexitsplit, label %bb.m, !llvm.loop !56

digit_span.exit.loopexitsplit:                    ; preds = %bb.n
  %.0.lcssa.i.ph.ph = phi i64 [ %i.ba, %bb.n ]
  br label %digit_span.exit.loopexit

.digit_span.exit.loopexit_crit_edge:              ; preds = %bb.m
  %.07.i.lcssa = phi i64 [ %.07.i, %bb.m ]
  %.07.i.lcssa.a = phi i64 [ %.07.i, %bb.m ]      ; 0 uses
  br label %digit_span.exit.loopexit

digit_span.exit.loopexit:                         ; preds = %digit_span.exit.loopexitsplit, %.digit_span.exit.loopexit_crit_edge
  %.0.lcssa.i.ph = phi i64 [ %.07.i.lcssa, %.digit_span.exit.loopexit_crit_edge ], [ %.0.lcssa.i.ph.ph, %digit_span.exit.loopexitsplit ]
  br label %digit_span.exit

digit_span.exit:                                  ; preds = %digit_span.exit.loopexit, %bb.l
end_hunk_1
begin_hunk_2_@s3e:bb.a
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i241
  %.07.i242 = phi i64 [ 0, %.lr.ph.i241 ], [ %i.dr, %bb.ad ] ; 4 uses
  %i.dl = getelementptr i8, ptr %.1195338, i64 %.07.i242
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !16
  %i.dn = zext i8 %i.dm to i64
end_hunk_2
begin_hunk_3_@s3e:bb.a
  br i1 %exitcond.not.i244, label %digit_span.exit245split, label %bb.ac, !llvm.loop !56

digit_span.exit245split:                          ; preds = %bb.ad
  %.0.lcssa.i240.ph = phi i64 [ %i.dk, %bb.ad ]
  br label %digit_span.exit245

.digit_span.exit245_crit_edge:                    ; preds = %bb.ac
  %.07.i242.lcssa = phi i64 [ %.07.i242, %bb.ac ]
  %.07.i242.lcssa.a = phi i64 [ %.07.i242, %bb.ac ] ; 0 uses
  br label %digit_span.exit245

digit_span.exit245:                               ; preds = %digit_span.exit245split, %.digit_span.exit245_crit_edge
  %.0.lcssa.i240 = phi i64 [ %.07.i242.lcssa, %.digit_span.exit245_crit_edge ], [ %.0.lcssa.i240.ph, %digit_span.exit245split ]
  %.0.lcssa.i240.fr = freeze i64 %.0.lcssa.i240   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1195338, i64 %.0.lcssa.i240.fr
  %i.dt = icmp ugt i64 %.0.lcssa.i240.fr, 2
end_hunk_3
begin_hunk_4_@s3e:bb.a
  br i1 %i.fh, label %bb.al, label %.critedge4.loopexit, !llvm.loop !58

.lr.ph.i263:                                      ; preds = %bb.al
  %.0197366.lcssa525 = phi ptr [ %.0197366, %bb.al ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.al ]
  %.0197366.lcssa = phi ptr [ %.0197366, %bb.al ] ; 2 uses
  %i.fi = ptrtoint ptr %i.ex to i64
  %i.fj = ptrtoint ptr %.0197366.lcssa to i64
end_hunk_4
begin_hunk_5_@s3e:bb.a
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph.i263
  %lsr.iv519 = phi i64 [ %lsr.iv.next520, %bb.ao ], [ %lsr.iv.lcssa, %.lr.ph.i263 ]
  %.07.i264 = phi i64 [ 0, %.lr.ph.i263 ], [ %i.fq, %bb.ao ] ; 4 uses
  %scevgep = getelementptr i8, ptr %.0197366.lcssa525, i64 %.07.i264
  %i.fl = load i8, ptr %scevgep, align 1, !tbaa !16
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.fm
end_hunk_5
begin_hunk_6_@s3e:bb.a
  br i1 %exitcond.not.i266, label %digit_span.exit267split, label %bb.an, !llvm.loop !56

digit_span.exit267split:                          ; preds = %bb.ao
  %.0.lcssa.i262.ph = phi i64 [ %i.fk, %bb.ao ]
  br label %digit_span.exit267

.digit_span.exit267_crit_edge:                    ; preds = %bb.an
  %.07.i264.lcssa = phi i64 [ %.07.i264, %bb.an ]
  %.07.i264.lcssa.a = phi i64 [ %.07.i264, %bb.an ] ; 0 uses
  br label %digit_span.exit267

digit_span.exit267:                               ; preds = %digit_span.exit267split, %.digit_span.exit267_crit_edge
  %.0.lcssa.i262 = phi i64 [ %.07.i264.lcssa, %.digit_span.exit267_crit_edge ], [ %.0.lcssa.i262.ph, %digit_span.exit267split ] ; 4 uses
  %i.fr = add nsw i64 %.0.lcssa.i262, 1           ; 3 uses
  %i.fs = icmp ult i64 %i.fr, 1024
  br i1 %i.fs, label %bb.ap, label %bb.aq
end_hunk_6
begin_hunk_7_@s3e:bb.a
  br i1 %i.gw, label %bb.au, label %.critedge6.loopexit, !llvm.loop !59

.lr.ph.i279:                                      ; preds = %bb.au
  %.0193368.lcssa534 = phi ptr [ %.0193368, %bb.au ]
  %lsr.iv529.lcssa = phi i64 [ %lsr.iv522, %bb.au ]
  %.0193368.lcssa = phi ptr [ %.0193368, %bb.au ] ; 2 uses
  %i.gx = ptrtoint ptr %i.gm to i64
  %i.gy = ptrtoint ptr %.0193368.lcssa to i64
end_hunk_7
begin_hunk_8_@s3e:bb.a
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph.i279
  %lsr.iv524 = phi i64 [ %lsr.iv.next525, %bb.ax ], [ %lsr.iv529.lcssa, %.lr.ph.i279 ]
  %.07.i280 = phi i64 [ 0, %.lr.ph.i279 ], [ %i.hf, %bb.ax ] ; 4 uses
  %scevgep526 = getelementptr i8, ptr %.0193368.lcssa534, i64 %.07.i280
  %i.ha = load i8, ptr %scevgep526, align 1, !tbaa !16
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.hb
end_hunk_8
begin_hunk_9_@s3e:bb.a
  br i1 %exitcond.not.i282, label %digit_span.exit283split, label %bb.aw, !llvm.loop !56

digit_span.exit283split:                          ; preds = %bb.ax
  %.0.lcssa.i278.ph = phi i64 [ %i.gz, %bb.ax ]
  br label %digit_span.exit283

.digit_span.exit283_crit_edge:                    ; preds = %bb.aw
  %.07.i280.lcssa = phi i64 [ %.07.i280, %bb.aw ]
  %.07.i280.lcssa.a = phi i64 [ %.07.i280, %bb.aw ] ; 0 uses
  br label %digit_span.exit283

digit_span.exit283:                               ; preds = %digit_span.exit283split, %.digit_span.exit283_crit_edge
  %.0.lcssa.i278 = phi i64 [ %.07.i280.lcssa, %.digit_span.exit283_crit_edge ], [ %.0.lcssa.i278.ph, %digit_span.exit283split ] ; 4 uses
  %i.hg = add nsw i64 %.0.lcssa.i278, 1           ; 3 uses
  %i.hh = icmp ult i64 %i.hg, 1024
  br i1 %i.hh, label %bb.ay, label %bb.az
end_hunk_9
