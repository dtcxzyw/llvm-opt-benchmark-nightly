inline.NumInlined: 98
inline.NumDeleted: 4
begin_hunk_0_@pq_push:bb.a

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %bb.b
  %lsr.iv83 = phi i64 [ %i.g, %.lr.ph47.preheader ], [ %lsr.iv.next84, %bb.b ] ; 2 uses
  %indvars.iv53 = phi i64 [ %i.f, %.lr.ph47.preheader ], [ %indvars.iv.next54, %bb.b ] ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.i = add i64 %indvars.iv53, -1                ; 2 uses
  %i.j = and i64 %i.i, 4294967295
end_hunk_0
begin_hunk_1_@pq_push:bb.a
  br i1 %.not, label %.critedge.loopexitsplit, label %.lr.ph47, !llvm.loop !28

.critedge.loopexitsplit:                          ; preds = %bb.b
  %.038.lcssa.ph.ph = phi i64 [ 0, %bb.b ]
  br label %.critedge.loopexit

.lr.ph47..critedge.loopexit_crit_edge:            ; preds = %.lr.ph47
  %indvars.iv53.lcssa = phi i64 [ %indvars.iv53, %.lr.ph47 ]
  %indvars.iv53.lcssa.a = phi i64 [ %indvars.iv53, %.lr.ph47 ] ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.lr.ph47..critedge.loopexit_crit_edge
  %.038.lcssa.ph = phi i64 [ %indvars.iv53.lcssa, %.lr.ph47..critedge.loopexit_crit_edge ], [ %.038.lcssa.ph.ph, %.critedge.loopexitsplit ]
  %.pre57 = load i32, ptr %i.a, align 8, !tbaa !19
  %i.p = and i64 %.038.lcssa.ph, 4294967295
  %i.q = add i32 %.pre57, 1
end_hunk_1
begin_hunk_2_@hnsw_node_new:bb.a
  br i1 %.not110.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.ab
  %.090133.lcssa = phi i32 [ %.090133, %bb.ab ]
  %.lcssa204 = phi i1 [ %i.gd, %bb.ab ]
  br i1 %.lcssa204, label %.loopexit.sink.split.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.gr = zext i32 %.090133.lcssa to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
end_hunk_2
begin_hunk_3_@search_layer_with_filter:bb.a

.lr.ph47.i:                                       ; preds = %bb.l, %.lr.ph47.preheader.i
  %lsr.iv462 = phi i64 [ %lsr.iv.next463, %bb.l ], [ %i.bf, %.lr.ph47.preheader.i ] ; 2 uses
  %indvars.iv53.i = phi i64 [ %i.be, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.l ] ; 4 uses
  %i.bg = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %i.bh = add i64 %indvars.iv53.i, -1
  %i.bi = and i64 %i.bh, 4294967295               ; 2 uses
end_hunk_3
begin_hunk_4_@search_layer_with_filter:bb.a
  br i1 %.not.i115, label %.critedge.loopexit.isplit, label %.lr.ph47.i, !llvm.loop !28

.critedge.loopexit.isplit:                        ; preds = %bb.l
  %.038.lcssa.ph.i.ph = phi i64 [ 0, %bb.l ]
  br label %.critedge.loopexit.i

.lr.ph47.i..critedge.loopexit.i_crit_edge:        ; preds = %.lr.ph47.i
  %indvars.iv53.i.lcssa = phi i64 [ %indvars.iv53.i, %.lr.ph47.i ]
  %indvars.iv53.i.lcssa.a = phi i64 [ %indvars.iv53.i, %.lr.ph47.i ] ; 0 uses
  br label %.critedge.loopexit.i

.critedge.loopexit.i:                             ; preds = %.critedge.loopexit.isplit, %.lr.ph47.i..critedge.loopexit.i_crit_edge
  %.038.lcssa.ph.i = phi i64 [ %indvars.iv53.i.lcssa, %.lr.ph47.i..critedge.loopexit.i_crit_edge ], [ %.038.lcssa.ph.i.ph, %.critedge.loopexit.isplit ]
  %.pre57.i = load i32, ptr %i.az, align 8, !tbaa !19
  %i.bn = and i64 %.038.lcssa.ph.i, 4294967295
  %i.bo = add i32 %.pre57.i, 1
end_hunk_4
begin_hunk_5_@search_layer_with_filter:bb.a

.lr.ph47.i128:                                    ; preds = %bb.q, %.lr.ph47.preheader.i127
  %lsr.iv474 = phi i64 [ %lsr.iv.next475, %bb.q ], [ %i.cp, %.lr.ph47.preheader.i127 ] ; 2 uses
  %indvars.iv53.i129 = phi i64 [ %i.co, %.lr.ph47.preheader.i127 ], [ %indvars.iv.next54.i130, %bb.q ] ; 4 uses
  %i.cq = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %i.cr = add i64 %indvars.iv53.i129, -1
  %i.cs = and i64 %i.cr, 4294967295               ; 2 uses
end_hunk_5
begin_hunk_6_@search_layer_with_filter:bb.a
  br i1 %.not.i136, label %.critedge.loopexit.i131split, label %.lr.ph47.i128, !llvm.loop !28

.critedge.loopexit.i131split:                     ; preds = %bb.q
  %.038.lcssa.ph.i132.ph = phi i64 [ 0, %bb.q ]
  br label %.critedge.loopexit.i131

.lr.ph47.i128..critedge.loopexit.i131_crit_edge:  ; preds = %.lr.ph47.i128
  %indvars.iv53.i129.lcssa = phi i64 [ %indvars.iv53.i129, %.lr.ph47.i128 ]
  %indvars.iv53.i129.lcssa.a = phi i64 [ %indvars.iv53.i129, %.lr.ph47.i128 ] ; 0 uses
  br label %.critedge.loopexit.i131

.critedge.loopexit.i131:                          ; preds = %.critedge.loopexit.i131split, %.lr.ph47.i128..critedge.loopexit.i131_crit_edge
  %.038.lcssa.ph.i132 = phi i64 [ %indvars.iv53.i129.lcssa, %.lr.ph47.i128..critedge.loopexit.i131_crit_edge ], [ %.038.lcssa.ph.i132.ph, %.critedge.loopexit.i131split ]
  %.pre57.i133 = load i32, ptr %i.t, align 8, !tbaa !19
  %i.cx = and i64 %.038.lcssa.ph.i132, 4294967295
  %i.cy = add i32 %.pre57.i133, 1
end_hunk_6
begin_hunk_7_@search_layer_with_filter:bb.a

.lr.ph47.i156.us:                                 ; preds = %bb.ad, %.lr.ph47.preheader.i155.us
  %lsr.iv510 = phi i64 [ %lsr.iv.next511, %bb.ad ], [ %i.gu, %.lr.ph47.preheader.i155.us ] ; 2 uses
  %indvars.iv53.i157.us = phi i64 [ %i.gt, %.lr.ph47.preheader.i155.us ], [ %indvars.iv.next54.i158.us, %bb.ad ] ; 4 uses
  %i.gv = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %i.gw = add i64 %indvars.iv53.i157.us, -1
  %i.gx = and i64 %i.gw, 4294967295               ; 2 uses
end_hunk_7
begin_hunk_8_@search_layer_with_filter:bb.a
  br i1 %.not.i164.us, label %.critedge.loopexit.i159.ussplit, label %.lr.ph47.i156.us, !llvm.loop !28

.critedge.loopexit.i159.ussplit:                  ; preds = %bb.ad
  %.038.lcssa.ph.i160.us.ph = phi i64 [ 0, %bb.ad ]
  br label %.critedge.loopexit.i159.us

.lr.ph47.i156.us..critedge.loopexit.i159.us_crit_edge: ; preds = %.lr.ph47.i156.us
  %indvars.iv53.i157.us.lcssa = phi i64 [ %indvars.iv53.i157.us, %.lr.ph47.i156.us ]
  %indvars.iv53.i157.us.lcssa.a = phi i64 [ %indvars.iv53.i157.us, %.lr.ph47.i156.us ] ; 0 uses
  br label %.critedge.loopexit.i159.us

.critedge.loopexit.i159.us:                       ; preds = %.critedge.loopexit.i159.ussplit, %.lr.ph47.i156.us..critedge.loopexit.i159.us_crit_edge
  %.038.lcssa.ph.i160.us = phi i64 [ %indvars.iv53.i157.us.lcssa, %.lr.ph47.i156.us..critedge.loopexit.i159.us_crit_edge ], [ %.038.lcssa.ph.i160.us.ph, %.critedge.loopexit.i159.ussplit ]
  %.pre57.i161.us = load i32, ptr %i.az, align 8, !tbaa !19
  %i.hc = and i64 %.038.lcssa.ph.i160.us, 4294967295
  %i.hd = add i32 %.pre57.i161.us, 1
end_hunk_8
begin_hunk_9_@search_layer_with_filter:bb.a

.lr.ph47.i178.us:                                 ; preds = %bb.ag, %.lr.ph47.preheader.i177.us
  %lsr.iv522 = phi i64 [ %lsr.iv.next523, %bb.ag ], [ %i.ia, %.lr.ph47.preheader.i177.us ] ; 2 uses
  %indvars.iv53.i179.us = phi i64 [ %i.hz, %.lr.ph47.preheader.i177.us ], [ %indvars.iv.next54.i180.us, %bb.ag ] ; 4 uses
  %i.ib = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %i.ic = add i64 %indvars.iv53.i179.us, -1
  %i.id = and i64 %i.ic, 4294967295               ; 2 uses
end_hunk_9
begin_hunk_10_@search_layer_with_filter:bb.a
  br i1 %.not.i186.us, label %.critedge.loopexit.i181.ussplit, label %.lr.ph47.i178.us, !llvm.loop !28

.critedge.loopexit.i181.ussplit:                  ; preds = %bb.ag
  %.038.lcssa.ph.i182.us.ph = phi i64 [ 0, %bb.ag ]
  br label %.critedge.loopexit.i181.us

.lr.ph47.i178.us..critedge.loopexit.i181.us_crit_edge: ; preds = %.lr.ph47.i178.us
  %indvars.iv53.i179.us.lcssa = phi i64 [ %indvars.iv53.i179.us, %.lr.ph47.i178.us ]
  %indvars.iv53.i179.us.lcssa.a = phi i64 [ %indvars.iv53.i179.us, %.lr.ph47.i178.us ] ; 0 uses
  br label %.critedge.loopexit.i181.us

.critedge.loopexit.i181.us:                       ; preds = %.critedge.loopexit.i181.ussplit, %.lr.ph47.i178.us..critedge.loopexit.i181.us_crit_edge
  %.038.lcssa.ph.i182.us = phi i64 [ %indvars.iv53.i179.us.lcssa, %.lr.ph47.i178.us..critedge.loopexit.i181.us_crit_edge ], [ %.038.lcssa.ph.i182.us.ph, %.critedge.loopexit.i181.ussplit ]
  %.pre57.i183.us = load i32, ptr %i.t, align 8, !tbaa !19
  %i.ii = and i64 %.038.lcssa.ph.i182.us, 4294967295
  %i.ij = add i32 %.pre57.i183.us, 1
end_hunk_10
begin_hunk_11_@search_layer_with_filter:bb.a

.lr.ph47.i200:                                    ; preds = %bb.am, %.lr.ph47.preheader.i199
  %lsr.iv486 = phi i64 [ %lsr.iv.next487, %bb.am ], [ %i.kc, %.lr.ph47.preheader.i199 ] ; 2 uses
  %indvars.iv53.i201 = phi i64 [ %i.kb, %.lr.ph47.preheader.i199 ], [ %indvars.iv.next54.i202, %bb.am ] ; 4 uses
  %i.kd = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %i.ke = add i64 %indvars.iv53.i201, -1
  %i.kf = and i64 %i.ke, 4294967295               ; 2 uses
end_hunk_11
begin_hunk_12_@search_layer_with_filter:bb.a
  br i1 %.not.i208, label %.critedge.loopexit.i203split, label %.lr.ph47.i200, !llvm.loop !28

.critedge.loopexit.i203split:                     ; preds = %bb.am
  %.038.lcssa.ph.i204.ph = phi i64 [ 0, %bb.am ]
  br label %.critedge.loopexit.i203

.lr.ph47.i200..critedge.loopexit.i203_crit_edge:  ; preds = %.lr.ph47.i200
  %indvars.iv53.i201.lcssa = phi i64 [ %indvars.iv53.i201, %.lr.ph47.i200 ]
  %indvars.iv53.i201.lcssa.a = phi i64 [ %indvars.iv53.i201, %.lr.ph47.i200 ] ; 0 uses
  br label %.critedge.loopexit.i203

.critedge.loopexit.i203:                          ; preds = %.critedge.loopexit.i203split, %.lr.ph47.i200..critedge.loopexit.i203_crit_edge
  %.038.lcssa.ph.i204 = phi i64 [ %indvars.iv53.i201.lcssa, %.lr.ph47.i200..critedge.loopexit.i203_crit_edge ], [ %.038.lcssa.ph.i204.ph, %.critedge.loopexit.i203split ]
  %.pre57.i205 = load i32, ptr %i.az, align 8, !tbaa !19
  %i.kk = and i64 %.038.lcssa.ph.i204, 4294967295
  %i.kl = add i32 %.pre57.i205, 1
end_hunk_12
begin_hunk_13_@search_layer_with_filter:bb.a

.lr.ph47.i222:                                    ; preds = %bb.ar, %.lr.ph47.preheader.i221
  %lsr.iv498 = phi i64 [ %lsr.iv.next499, %bb.ar ], [ %i.lq, %.lr.ph47.preheader.i221 ] ; 2 uses
  %indvars.iv53.i223 = phi i64 [ %i.lp, %.lr.ph47.preheader.i221 ], [ %indvars.iv.next54.i224, %bb.ar ] ; 4 uses
  %i.lr = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %i.ls = add i64 %indvars.iv53.i223, -1
  %i.lt = and i64 %i.ls, 4294967295               ; 2 uses
end_hunk_13
begin_hunk_14_@search_layer_with_filter:bb.a
  br i1 %.not.i230, label %.critedge.loopexit.i225split, label %.lr.ph47.i222, !llvm.loop !28

.critedge.loopexit.i225split:                     ; preds = %bb.ar
  %.038.lcssa.ph.i226.ph = phi i64 [ 0, %bb.ar ]
  br label %.critedge.loopexit.i225

.lr.ph47.i222..critedge.loopexit.i225_crit_edge:  ; preds = %.lr.ph47.i222
  %indvars.iv53.i223.lcssa = phi i64 [ %indvars.iv53.i223, %.lr.ph47.i222 ]
  %indvars.iv53.i223.lcssa.a = phi i64 [ %indvars.iv53.i223, %.lr.ph47.i222 ] ; 0 uses
  br label %.critedge.loopexit.i225

.critedge.loopexit.i225:                          ; preds = %.critedge.loopexit.i225split, %.lr.ph47.i222..critedge.loopexit.i225_crit_edge
  %.038.lcssa.ph.i226 = phi i64 [ %indvars.iv53.i223.lcssa, %.lr.ph47.i222..critedge.loopexit.i225_crit_edge ], [ %.038.lcssa.ph.i226.ph, %.critedge.loopexit.i225split ]
  %.pre57.i227 = load i32, ptr %i.t, align 8, !tbaa !19
  %i.ly = and i64 %.038.lcssa.ph.i226, 4294967295
  %i.lz = add i32 %.pre57.i227, 1
end_hunk_14
begin_hunk_15_@hnsw_deserialize_index:bb.a
  br i1 %i.d, label %bb.b, label %bb.c, !llvm.loop !239

bb.c:                                             ; preds = %bb.b
  %.0107.lcssa297 = phi i64 [ %.0107, %bb.b ]
  %.0107.lcssa293 = phi i64 [ %.0107, %bb.b ]
  %.0107.lcssa = phi i64 [ %.0107, %bb.b ]        ; 5 uses
  %i.f = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.g = shl i64 %.0107.lcssa, 3                  ; 2 uses
end_hunk_15
begin_hunk_16_@hnsw_deserialize_index:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %bb.f
  %lsr.iv = phi i64 [ %.0107.lcssa293, %.lr.ph.us ], [ %lsr.iv.next, %bb.f ]
  %.pn = phi i64 [ %i.u, %.lr.ph.us ], [ %i.y, %bb.f ]
  %.0109177.us = and i64 %.pn, %i.k               ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0109177.us
end_hunk_16
begin_hunk_17_@hnsw_deserialize_index:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %lsr.iv296 = phi i64 [ %.0107.lcssa297, %.lr.ph.preheader ], [ %lsr.iv.next297, %bb.o ]
  %.pn206 = phi i64 [ %i.dy, %bb.o ], [ %i.ds, %.lr.ph.preheader ]
  %.0102184 = and i64 %.pn206, %i.ab              ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0102184
end_hunk_17
begin_hunk_18_@hnsw_ground_truth_with_filter:bb.a

.lr.ph47.i:                                       ; preds = %bb.n, %.lr.ph47.preheader.i
  %lsr.iv148 = phi i64 [ %lsr.iv.next149, %bb.n ], [ %i.as, %.lr.ph47.preheader.i ] ; 2 uses
  %indvars.iv53.i = phi i64 [ %i.ar, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.n ] ; 4 uses
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.au = add i64 %indvars.iv53.i, -1
  %i.av = and i64 %i.au, 4294967295               ; 2 uses
end_hunk_18
begin_hunk_19_@hnsw_ground_truth_with_filter:bb.a
  br i1 %.not.i54, label %.critedge.loopexit.isplit, label %.lr.ph47.i, !llvm.loop !28

.critedge.loopexit.isplit:                        ; preds = %bb.n
  %.038.lcssa.ph.i.ph = phi i64 [ 0, %bb.n ]
  br label %.critedge.loopexit.i

.lr.ph47.i..critedge.loopexit.i_crit_edge:        ; preds = %.lr.ph47.i
  %indvars.iv53.i.lcssa = phi i64 [ %indvars.iv53.i, %.lr.ph47.i ]
  %indvars.iv53.i.lcssa.a = phi i64 [ %indvars.iv53.i, %.lr.ph47.i ] ; 0 uses
  br label %.critedge.loopexit.i

.critedge.loopexit.i:                             ; preds = %.critedge.loopexit.isplit, %.lr.ph47.i..critedge.loopexit.i_crit_edge
  %.038.lcssa.ph.i = phi i64 [ %indvars.iv53.i.lcssa, %.lr.ph47.i..critedge.loopexit.i_crit_edge ], [ %.038.lcssa.ph.i.ph, %.critedge.loopexit.isplit ]
  %.pre57.i = load i32, ptr %i.l, align 8, !tbaa !19
  %i.ba = and i64 %.038.lcssa.ph.i, 4294967295
  %i.bb = add i32 %.pre57.i, 1
end_hunk_19
