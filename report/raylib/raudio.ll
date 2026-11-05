Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 300
begin_hunk_0_@ma_channel_converter_init_preallocated:bb.a
  ]

.sink.split.i.us433:                              ; preds = %bb.w, %bb.w
  %i.cn = trunc i32 %.03651.us.us.us.us76.i.us430 to i8
  store i8 %i.cn, ptr %i.bw, align 1
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i.us433, %bb.w
  %i.co = add nuw i32 %.03651.us.us.us.us76.i.us430, 1 ; 2 uses
  %exitcond136.not.i.us434 = icmp eq i32 %i.co, %i.bn
  br i1 %exitcond136.not.i.us434, label %..loopexit_crit_edge.split.us.us.us.split.us87.i, label %bb.t, !llvm.loop !711

.peel.next139.i.split:                            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85.peel.i, %bb.aa
  %.03651.us.us.us.us76.i = phi i32 [ %i.cu, %bb.aa ], [ 2, %ma_channel_map_get_channel.exit45.us.us.us.us85.peel.i ] ; 6 uses
  %i.cp = icmp ult i32 %.03651.us.us.us.us76.i, 8
  br i1 %i.cp, label %switch.lookup690, label %bb.y

bb.y:                                             ; preds = %.peel.next139.i.split
  %i.cq = icmp ult i32 %.03651.us.us.us.us76.i, 32
  br i1 %i.cq, label %bb.z, label %ma_channel_map_get_channel.exit45.us.us.us.us85.i

bb.z:                                             ; preds = %bb.y
  %i.cr = trunc nuw nsw i32 %.03651.us.us.us.us76.i to i8
  %i.cs = add nuw nsw i8 %i.cr, 12
  br label %ma_channel_map_get_channel.exit45.us.us.us.us85.i

switch.lookup690:                                 ; preds = %.peel.next139.i.split
  %switch.tableidx689 = add nsw i32 %.03651.us.us.us.us76.i, -1
  %switch.cast691 = zext i32 %switch.tableidx689 to i56
  %switch.shiftamt692 = shl nuw nsw i56 %switch.cast691, 3
  %switch.downshift693 = lshr i56 3389824514196483, %switch.shiftamt692
  %switch.masked694 = trunc i56 %switch.downshift693 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us85.i

ma_channel_map_get_channel.exit45.us.us.us.us85.i: ; preds = %switch.lookup690, %bb.z, %bb.y
  %.0.i44.us.us.us.us86.i = phi i8 [ 0, %bb.y ], [ %switch.masked694, %switch.lookup690 ], [ %i.cs, %bb.z ]
  %i.ct = icmp eq i8 %.0.i.us.us.us.i, %.0.i44.us.us.us.us86.i
  br i1 %i.ct, label %.split.us.us.us.split.us88.loopexit.i, label %bb.aa

bb.aa:                                            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85.i
  %i.cu = add nuw i32 %.03651.us.us.us.us76.i, 1  ; 2 uses
  %exitcond136.not.i = icmp eq i32 %i.cu, %i.bn
  br i1 %exitcond136.not.i, label %..loopexit_crit_edge.split.us.us.us.split.us87.i, label %.peel.next139.i.split, !llvm.loop !711

.split.us.us.us.split.us88.loopexit.i:            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85.i.us431, %ma_channel_map_get_channel.exit45.us.us.us.us85.i.us, %ma_channel_map_get_channel.exit45.us.us.us.us85.i
  %.us-phi = phi i32 [ %.03651.us.us.us.us76.i.us, %ma_channel_map_get_channel.exit45.us.us.us.us85.i.us ], [ %.03651.us.us.us.us76.i, %ma_channel_map_get_channel.exit45.us.us.us.us85.i ], [ %.03651.us.us.us.us76.i.us430, %ma_channel_map_get_channel.exit45.us.us.us.us85.i.us431 ]
  %i.cv = trunc i32 %.us-phi to i8
  br label %.split.us.us.us.split.us88.i

.split.us.us.us.split.us88.fold.split.i:          ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85.peel.i
  br label %.split.us.us.us.split.us88.i

.split.us.us.us.split.us88.i:                     ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85.peel.i, %.split.us.us.us.split.us88.fold.split.i, %.split.us.us.us.split.us88.loopexit.i
  %.03651.us.us.us.us76.lcssa.i = phi i8 [ %i.cv, %.split.us.us.us.split.us88.loopexit.i ], [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us85.peel.i ], [ 1, %.split.us.us.us.split.us88.fold.split.i ]
  store i8 %.03651.us.us.us.us76.lcssa.i, ptr %i.bw, align 1
  br label %..loopexit_crit_edge.split.us.us.us.split.us87.i

..loopexit_crit_edge.split.us.us.us.split.us87.i: ; preds = %bb.x, %bb.s, %bb.aa, %.split.us.us.us.split.us88.i
  %indvars.iv.next153.i = add nuw nsw i64 %indvars.iv152.i, 1 ; 2 uses
  %exitcond156.not.i = icmp eq i64 %indvars.iv.next153.i, %wide.trip.count155.i
  br i1 %exitcond156.not.i, label %ma_channel_map_build_shuffle_table.exitthread-pre-split, label %.preheader.split.us.split.us.split.us.i

.preheader.split.us.split.us.split.i:             ; preds = %..loopexit_crit_edge.split.us.us.us.split.us.i, %.preheader.split.us.split.us.split.preheader.i
  %indvars.iv131.i = phi i64 [ 0, %.preheader.split.us.split.us.split.preheader.i ], [ %indvars.iv.next132.i, %..loopexit_crit_edge.split.us.us.us.split.us.i ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv131.i ; 4 uses
  store i8 -1, ptr %i.cw, align 1
  br i1 %i.bt, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.preheader.split.us.split.us.split.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv131.i
  %i.cy = load i8, ptr %i.cx, align 1
  br label %ma_channel_map_get_channel.exit.us.us.i

bb.ac:                                            ; preds = %.preheader.split.us.split.us.split.i
  %i.cz = trunc nuw i64 %indvars.iv131.i to i32
  %i.da = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.bq, i32 noundef %i.cz)
  br label %ma_channel_map_get_channel.exit.us.us.i

ma_channel_map_get_channel.exit.us.us.i:          ; preds = %bb.ac, %bb.ab
  %.0.i.us.us.i = phi i8 [ %i.da, %bb.ac ], [ %i.cy, %bb.ab ] ; 4 uses
  br i1 %exitcond117.peel.not.i, label %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1.i, label %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i

ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1.i: ; preds = %ma_channel_map_get_channel.exit.us.us.i
  %i.db = icmp eq i8 %.0.i.us.us.i, 1
  br i1 %i.db, label %.split.us.us.us.split.us.i, label %..loopexit_crit_edge.split.us.us.us.split.us.i

ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i: ; preds = %ma_channel_map_get_channel.exit.us.us.i
  switch i8 %.0.i.us.us.i, label %bb.ae [
    i8 2, label %.split.us.us.us.split.us.i
    i8 11, label %.sink.split
    i8 3, label %.split.us.us.us.split.us.i.fold.split
    i8 12, label %bb.ad
  ]

bb.ad:                                            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i
  br label %.sink.split

.sink.split:                                      ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i, %bb.ad
  %.sink = phi i8 [ 1, %bb.ad ], [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i ]
  store i8 %.sink, ptr %i.cw, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i
  br i1 %exitcond117.peel129.not.i, label %..loopexit_crit_edge.split.us.us.us.split.us.i, label %.peel.next118.i

.peel.next118.i:                                  ; preds = %bb.ae, %bb.an
  %.03651.us.us.us.us.i = phi i32 [ %i.dn, %bb.an ], [ 2, %bb.ae ] ; 14 uses
  switch i32 %i.bn, label %bb.aj [
    i32 7, label %bb.ai
    i32 6, label %bb.af
    i32 5, label %bb.ag
    i32 3, label %switch.lookup.i68.i.us.us.us.us.i
    i32 4, label %bb.ah
  ]

bb.af:                                            ; preds = %.peel.next118.i
  %i.dc = icmp samesign ult i32 %.03651.us.us.us.us.i, 6
  br i1 %i.dc, label %switch.lookup695, label %ma_channel_map_get_channel.exit45.us.us.us.us.i

bb.ag:                                            ; preds = %.peel.next118.i
  %i.dd = icmp samesign ult i32 %.03651.us.us.us.us.i, 5
  br i1 %i.dd, label %switch.lookup700, label %ma_channel_map_get_channel.exit45.us.us.us.us.i

bb.ah:                                            ; preds = %.peel.next118.i
  %i.de = icmp samesign ult i32 %.03651.us.us.us.us.i, 4
  br i1 %i.de, label %switch.lookup705, label %ma_channel_map_get_channel.exit45.us.us.us.us.i

switch.lookup.i68.i.us.us.us.us.i:                ; preds = %.peel.next118.i
  %switch.idx.cast.i69.i.us.us.us.us.i = trunc nuw nsw i32 %.03651.us.us.us.us.i to i8
  %switch.offset.i70.i.us.us.us.us.i = add nuw nsw i8 %switch.idx.cast.i69.i.us.us.us.us.i, 2
  br label %ma_channel_map_get_channel.exit45.us.us.us.us.i

bb.ai:                                            ; preds = %.peel.next118.i
  %i.df = icmp samesign ult i32 %.03651.us.us.us.us.i, 7
  br i1 %i.df, label %switch.lookup709, label %ma_channel_map_get_channel.exit45.us.us.us.us.i

bb.aj:                                            ; preds = %.peel.next118.i
  %i.dg = icmp samesign ult i32 %.03651.us.us.us.us.i, 8
  br i1 %i.dg, label %switch.lookup714, label %ma_channel_map_get_channel.exit45.us.us.us.us.i

switch.lookup695:                                 ; preds = %bb.af
  %i.dh = shl nuw nsw i32 %.03651.us.us.us.us.i, 3
  %switch.shiftamt697 = zext nneg i32 %i.dh to i48
  %switch.downshift698 = lshr i48 13241468322562, %switch.shiftamt697
  %switch.masked699 = trunc i48 %switch.downshift698 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us.i

switch.lookup700:                                 ; preds = %bb.ag
  %i.di = shl nuw nsw i32 %.03651.us.us.us.us.i, 3
  %switch.shiftamt702 = zext nneg i32 %i.di to i40
  %switch.downshift703 = lshr i40 30165697282, %switch.shiftamt702
  %switch.masked704 = trunc i40 %switch.downshift703 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us.i

switch.lookup705:                                 ; preds = %bb.ah
  %switch.shiftamt706 = shl nuw nsw i32 %.03651.us.us.us.us.i, 3
  %switch.downshift707 = lshr i32 168035074, %switch.shiftamt706
  %switch.masked708 = trunc i32 %switch.downshift707 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us.i

switch.lookup709:                                 ; preds = %bb.ai
  %i.dj = shl nuw nsw i32 %.03651.us.us.us.us.i, 3
  %switch.shiftamt711 = zext nneg i32 %i.dj to i56
  %switch.downshift712 = lshr i56 3389837382255362, %switch.shiftamt711
  %switch.masked713 = trunc i56 %switch.downshift712 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us.i

switch.lookup714:                                 ; preds = %bb.aj
  %i.dk = shl nuw nsw i32 %.03651.us.us.us.us.i, 3
  %switch.shiftamt716 = zext nneg i32 %i.dk to i64
  %switch.downshift717 = lshr i64 867795075634299650, %switch.shiftamt716
  %switch.masked718 = trunc i64 %switch.downshift717 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us.i

ma_channel_map_get_channel.exit45.us.us.us.us.i:  ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %switch.lookup714, %switch.lookup709, %switch.lookup705, %switch.lookup700, %switch.lookup695, %switch.lookup.i68.i.us.us.us.us.i
  %.0.i44.us.us.us.us.i = phi i8 [ %switch.masked704, %switch.lookup700 ], [ %switch.offset.i70.i.us.us.us.us.i, %switch.lookup.i68.i.us.us.us.us.i ], [ %switch.masked708, %switch.lookup705 ], [ %switch.masked718, %switch.lookup714 ], [ %switch.masked699, %switch.lookup695 ], [ %switch.masked713, %switch.lookup709 ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ] ; 3 uses
  %i.dl = icmp eq i8 %.0.i.us.us.i, %.0.i44.us.us.us.us.i
  br i1 %i.dl, label %.split.us.us.us.split.us.loopexit.i, label %bb.ak

bb.ak:                                            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.i
  switch i8 %.0.i.us.us.i, label %bb.an [
    i8 2, label %bb.am
    i8 11, label %bb.am
    i8 3, label %bb.al
    i8 12, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  switch i8 %.0.i44.us.us.us.us.i, label %bb.an [
    i8 3, label %.sink.split183.i
    i8 12, label %.sink.split183.i
  ]

bb.am:                                            ; preds = %bb.ak, %bb.ak
  switch i8 %.0.i44.us.us.us.us.i, label %bb.an [
    i8 2, label %.sink.split183.i
    i8 11, label %.sink.split183.i
  ]

.sink.split183.i:                                 ; preds = %bb.am, %bb.am, %bb.al, %bb.al
  %i.dm = trunc i32 %.03651.us.us.us.us.i to i8
  store i8 %i.dm, ptr %i.cw, align 1
  br label %bb.an

bb.an:                                            ; preds = %.sink.split183.i, %bb.am, %bb.al, %bb.ak
  %i.dn = add nuw nsw i32 %.03651.us.us.us.us.i, 1 ; 2 uses
  %exitcond117.not.i = icmp eq i32 %i.dn, %i.bn
  br i1 %exitcond117.not.i, label %..loopexit_crit_edge.split.us.us.us.split.us.i, label %.peel.next118.i, !llvm.loop !712

.split.us.us.us.split.us.loopexit.i:              ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.i
  %i.do = trunc i32 %.03651.us.us.us.us.i to i8
  br label %.split.us.us.us.split.us.i

.split.us.us.us.split.us.i.fold.split:            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i
  br label %.split.us.us.us.split.us.i

.split.us.us.us.split.us.i:                       ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i, %.split.us.us.us.split.us.i.fold.split, %.split.us.us.us.split.us.loopexit.i, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1.i
  %.03651.us.us.us.us.lcssa.i = phi i8 [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2.i ], [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1.i ], [ %i.do, %.split.us.us.us.split.us.loopexit.i ], [ 1, %.split.us.us.us.split.us.i.fold.split ]
  store i8 %.03651.us.us.us.us.lcssa.i, ptr %i.cw, align 1
  br label %..loopexit_crit_edge.split.us.us.us.split.us.i

..loopexit_crit_edge.split.us.us.us.split.us.i:   ; preds = %bb.an, %.split.us.us.us.split.us.i, %bb.ae, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1.i
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1 ; 2 uses
  %exitcond135.not.i = icmp eq i64 %indvars.iv.next132.i, %wide.trip.count155.i
  br i1 %exitcond135.not.i, label %ma_channel_map_build_shuffle_table.exitthread-pre-split, label %.preheader.split.us.split.us.split.i

.preheader.split.us.split.i:                      ; preds = %..loopexit_crit_edge.split.us68.i, %.preheader.split.us.split.preheader.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader.split.us.split.preheader.i ], [ %indvars.iv.next113.i, %..loopexit_crit_edge.split.us68.i ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv112.i ; 4 uses
  store i8 -1, ptr %i.dp, align 1
  br i1 %i.bt, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.preheader.split.us.split.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv112.i
  %i.dr = load i8, ptr %i.dq, align 1
  br label %ma_channel_map_get_channel.exit.us.i

bb.ap:                                            ; preds = %.preheader.split.us.split.i
  %i.ds = trunc nuw i64 %indvars.iv112.i to i32
  %i.dt = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.bq, i32 noundef %i.ds)
  br label %ma_channel_map_get_channel.exit.us.i

ma_channel_map_get_channel.exit.us.i:             ; preds = %bb.ap, %bb.ao
  %.0.i.us.i = phi i8 [ %i.dt, %bb.ap ], [ %i.dr, %bb.ao ]
  %.0.i.fr.us.i = freeze i8 %.0.i.us.i            ; 4 uses
  switch i8 %.0.i.fr.us.i, label %ma_channel_map_get_channel.exit45.us64.i [
    i8 2, label %ma_channel_map_get_channel.exit45.us52.us.i.preheader
    i8 11, label %ma_channel_map_get_channel.exit45.us52.us.i.preheader
    i8 3, label %ma_channel_map_get_channel.exit45.us57.us.i.preheader
    i8 12, label %ma_channel_map_get_channel.exit45.us57.us.i.preheader
  ]

ma_channel_map_get_channel.exit45.us57.us.i.preheader: ; preds = %ma_channel_map_get_channel.exit.us.i, %ma_channel_map_get_channel.exit.us.i
  br label %ma_channel_map_get_channel.exit45.us57.us.i

ma_channel_map_get_channel.exit45.us52.us.i.preheader: ; preds = %ma_channel_map_get_channel.exit.us.i, %ma_channel_map_get_channel.exit.us.i
  br label %ma_channel_map_get_channel.exit45.us52.us.i

ma_channel_map_get_channel.exit45.us57.us.i:      ; preds = %ma_channel_map_get_channel.exit45.us57.us.i.preheader, %bb.as
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.as ], [ 0, %ma_channel_map_get_channel.exit45.us57.us.i.preheader ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i
  %i.dv = load i8, ptr %i.du, align 1             ; 2 uses
  %i.dw = icmp eq i8 %.0.i.fr.us.i, %i.dv
  br i1 %i.dw, label %.split.us72.i, label %bb.aq

bb.aq:                                            ; preds = %ma_channel_map_get_channel.exit45.us57.us.i
  switch i8 %i.dv, label %bb.as [
    i8 3, label %bb.ar
    i8 12, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  %i.dx = trunc i64 %indvars.iv.i to i8
  store i8 %i.dx, ptr %i.dp, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.split.us68.i, label %ma_channel_map_get_channel.exit45.us57.us.i

ma_channel_map_get_channel.exit45.us52.us.i:      ; preds = %ma_channel_map_get_channel.exit45.us52.us.i.preheader, %bb.av
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %bb.av ], [ 0, %ma_channel_map_get_channel.exit45.us52.us.i.preheader ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv102.i
  %i.dz = load i8, ptr %i.dy, align 1             ; 2 uses
  %i.ea = icmp eq i8 %.0.i.fr.us.i, %i.dz
  br i1 %i.ea, label %.split.us72.i, label %bb.at

bb.at:                                            ; preds = %ma_channel_map_get_channel.exit45.us52.us.i
  switch i8 %i.dz, label %bb.av [
    i8 2, label %bb.au
    i8 11, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.at
  %i.eb = trunc i64 %indvars.iv102.i to i8
  store i8 %i.eb, ptr %i.dp, align 1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond106.not.i = icmp eq i64 %indvars.iv.next103.i, %wide.trip.count.i
  br i1 %exitcond106.not.i, label %..loopexit_crit_edge.split.us68.i, label %ma_channel_map_get_channel.exit45.us52.us.i

ma_channel_map_get_channel.exit45.us64.i:         ; preds = %ma_channel_map_get_channel.exit.us.i, %bb.aw
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %bb.aw ], [ 0, %ma_channel_map_get_channel.exit.us.i ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv107.i
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = icmp eq i8 %.0.i.fr.us.i, %i.ed
  br i1 %i.ee, label %.split.us72.i, label %bb.aw

bb.aw:                                            ; preds = %ma_channel_map_get_channel.exit45.us64.i
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond111.not.i = icmp eq i64 %indvars.iv.next108.i, %wide.trip.count.i
  br i1 %exitcond111.not.i, label %..loopexit_crit_edge.split.us68.i, label %ma_channel_map_get_channel.exit45.us64.i

.split.us72.i:                                    ; preds = %ma_channel_map_get_channel.exit45.us57.us.i, %ma_channel_map_get_channel.exit45.us52.us.i, %ma_channel_map_get_channel.exit45.us64.i
  %.us-phi55.us.in.i = phi i64 [ %indvars.iv102.i, %ma_channel_map_get_channel.exit45.us52.us.i ], [ %indvars.iv107.i, %ma_channel_map_get_channel.exit45.us64.i ], [ %indvars.iv.i, %ma_channel_map_get_channel.exit45.us57.us.i ]
  %i.ef = trunc i64 %.us-phi55.us.in.i to i8
  store i8 %i.ef, ptr %i.dp, align 1
  br label %..loopexit_crit_edge.split.us68.i

..loopexit_crit_edge.split.us68.i:                ; preds = %bb.as, %bb.av, %bb.aw, %.split.us72.i
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond116.not.i = icmp eq i64 %indvars.iv.next113.i, %wide.trip.count115.i
  br i1 %exitcond116.not.i, label %ma_channel_map_build_shuffle_table.exitthread-pre-split, label %.preheader.split.us.split.i

ma_channel_map_build_shuffle_table.exitthread-pre-split: ; preds = %..loopexit_crit_edge.split.us68.i, %..loopexit_crit_edge.split.us.us.us.split.us.i, %..loopexit_crit_edge.split.us.us.us.split.us87.i, %bb.l
  %.pr = load i32, ptr %i.bf, align 8
  br label %ma_channel_map_build_shuffle_table.exit

ma_channel_map_build_shuffle_table.exit:          ; preds = %ma_channel_map_build_shuffle_table.exitthread-pre-split, %ma_channel_map_copy_or_default.exit265
  %i.eg = phi i32 [ %.pr, %ma_channel_map_build_shuffle_table.exitthread-pre-split ], [ %i.be, %ma_channel_map_copy_or_default.exit265 ]
  %i.eh = icmp eq i32 %i.eg, 5
  br i1 %i.eh, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %ma_channel_map_build_shuffle_table.exit
  %i.ei = load i32, ptr %2, align 8
  %i.ej = icmp eq i32 %i.ei, 5
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = getelementptr i8, ptr %1, i64 %i.el     ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store ptr %i.em, ptr %i.en, align 8
  %i.eo = load i32, ptr %i.k, align 4             ; 3 uses
  %.not468 = icmp eq i32 %i.eo, 0                 ; 2 uses
  br i1 %i.ej, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not468, label %._crit_edge448, label %.lr.ph439

.lr.ph439:                                        ; preds = %bb.ay, %.lr.ph439
  %indvars.iv511 = phi i64 [ %indvars.iv.next512, %.lr.ph439 ], [ 0, %bb.ay ] ; 3 uses
  %i.ep = phi i32 [ %i.fa, %.lr.ph439 ], [ %i.eo, %bb.ay ]
  %i.eq = zext i32 %i.ep to i64
  %i.er = shl nuw nsw i64 %i.eq, 3
  %i.es = load i32, ptr %i.n, align 8
  %i.et = zext i32 %i.es to i64
  %i.eu = shl nuw nsw i64 %indvars.iv511, 2
  %i.ev = mul i64 %i.eu, %i.et
  %i.ew = getelementptr i8, ptr %i.em, i64 %i.er
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.ev
  %i.ey = load ptr, ptr %i.en, align 8
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv511
  store ptr %i.ex, ptr %i.ez, align 8
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 1 ; 2 uses
  %i.fa = load i32, ptr %i.k, align 4             ; 3 uses
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp samesign ult i64 %indvars.iv.next512, %i.fb
  br i1 %i.fc, label %.lr.ph439, label %.loopexit416

bb.az:                                            ; preds = %bb.ax
  br i1 %.not468, label %._crit_edge448, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.az ] ; 3 uses
  %i.fd = phi i32 [ %i.fo, %.lr.ph ], [ %i.eo, %bb.az ]
  %i.fe = zext i32 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = load i32, ptr %i.n, align 8
  %i.fh = zext i32 %i.fg to i64
  %i.fi = shl nuw nsw i64 %indvars.iv, 2
  %i.fj = mul i64 %i.fi, %i.fh
  %i.fk = getelementptr i8, ptr %i.em, i64 %i.ff
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj
  %i.fm = load ptr, ptr %i.en, align 8
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv
  store ptr %i.fl, ptr %i.fn, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fo = load i32, ptr %i.k, align 4             ; 3 uses
  %i.fp = zext i32 %i.fo to i64
  %i.fq = icmp samesign ult i64 %indvars.iv.next, %i.fp
  br i1 %i.fq, label %.lr.ph, label %.loopexit416

.loopexit416:                                     ; preds = %.lr.ph, %.lr.ph439
  %i.fr = phi i32 [ %i.fa, %.lr.ph439 ], [ %i.fo, %.lr.ph ] ; 3 uses
  %.not469 = icmp eq i32 %i.fr, 0
  br i1 %.not469, label %._crit_edge448, label %.preheader415.lr.ph

.preheader415.lr.ph:                              ; preds = %.loopexit416
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 48
end_hunk_0
begin_hunk_1_@jar_mod_fillbuffer:bb.a
  store i16 %spec.store.select.i, ptr %i.cj, align 8
  store i16 0, ptr %i.ck, align 2
  store i16 1, ptr %i.ct, align 2
  br label %worknote.exit

bb.ax:                                            ; preds = %bb.u
  %i.kb = getelementptr inbounds nuw i8, ptr %i.dx, i64 26
  store i8 %i.eq, ptr %i.kb, align 2
  br label %worknote.exit

bb.ay:                                            ; preds = %bb.u
  %i.kc = lshr i32 %i.er, 4
  %i.kd = mul nuw nsw i32 %i.kc, 10
  %i.ke = and i32 %i.er, 15
  %i.kf = add nuw nsw i32 %i.kd, %i.ke
  %i.kg = load i16, ptr %i.cm, align 8
  %i.kh = trunc nuw nsw i32 %i.kf to i16
  %i.ki = mul i16 %i.kg, %i.kh                    ; 3 uses
  store i16 %i.ki, ptr %i.ck, align 2
  store i16 1, ptr %i.ct, align 2
  %i.kj = add i16 %i.ds, 1                        ; 2 uses
  %i.kk = load i8, ptr %i.cu, align 2
  %i.kl = zext i8 %i.kk to i16
  %.not237.i = icmp ult i16 %i.kj, %i.kl
  %spec.store.select250.i = select i1 %.not237.i, i16 %i.kj, i16 0 ; 2 uses
  store i16 %spec.store.select250.i, ptr %i.cj, align 8
  br label %worknote.exit

bb.az:                                            ; preds = %bb.u
  %i.km = lshr i32 %i.er, 4
  switch i32 %i.km, label %worknote.exit [
    i32 1, label %bb.ba
    i32 2, label %bb.bb
    i32 10, label %bb.bc
    i32 11, label %bb.bd
    i32 6, label %bb.be
    i32 14, label %bb.bl
    i32 12, label %bb.bm
  ]

bb.ba:                                            ; preds = %bb.az
  %i.kn = and i8 %i.eq, 15
  %i.ko = zext nneg i8 %i.kn to i16
  %i.kp = sub i16 %i.hk, %i.ko
  %spec.store.select251.i = tail call i16 @llvm.umax.i16(i16 %i.kp, i16 113)
  store i16 %spec.store.select251.i, ptr %i.eu, align 8
  br label %worknote.exit

bb.bb:                                            ; preds = %bb.az
  %i.kq = and i8 %i.eq, 15
  %i.kr = zext nneg i8 %i.kq to i16
  %i.ks = add i16 %i.hk, %i.kr
  %spec.store.select252.i = tail call i16 @llvm.umin.i16(i16 %i.ks, i16 856)
  store i16 %spec.store.select252.i, ptr %i.eu, align 8
  br label %worknote.exit

bb.bc:                                            ; preds = %bb.az
  %i.kt = and i8 %i.eq, 15
  %i.ku = getelementptr inbounds nuw i8, ptr %i.dx, i64 26 ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 2
  %i.kw = add i8 %i.kv, %i.kt
  %spec.store.select253.i = tail call i8 @llvm.umin.i8(i8 %i.kw, i8 64)
  store i8 %spec.store.select253.i, ptr %i.ku, align 2
  br label %worknote.exit

bb.bd:                                            ; preds = %bb.az
  %i.kx = and i8 %i.eq, 15
  %i.ky = getelementptr inbounds nuw i8, ptr %i.dx, i64 26 ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 2
  %i.la = sub i8 %i.kz, %i.kx                     ; 2 uses
  %i.lb = icmp ugt i8 %i.la, -56
  %spec.store.select254.i = select i1 %i.lb, i8 0, i8 %i.la
  store i8 %spec.store.select254.i, ptr %i.ky, align 2
  br label %worknote.exit

bb.be:                                            ; preds = %bb.az
  %i.lc = and i32 %i.er, 15                       ; 2 uses
  %.not234.i = icmp eq i32 %i.lc, 0
  br i1 %.not234.i, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ld = getelementptr inbounds nuw i8, ptr %i.dx, i64 68 ; 3 uses
  %i.le = load i16, ptr %i.ld, align 4            ; 2 uses
  %.not235.i = icmp eq i16 %i.le, 0
  br i1 %.not235.i, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lf = add i16 %i.le, -1                       ; 2 uses
  store i16 %i.lf, ptr %i.ld, align 4
  %.not236.i = icmp eq i16 %i.lf, 0
  %i.lg = getelementptr inbounds nuw i8, ptr %i.dx, i64 70 ; 2 uses
  br i1 %.not236.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lh = load i16, ptr %i.lg, align 2            ; 3 uses
  store i16 %i.lh, ptr %i.ck, align 2
  store i16 1, ptr %i.ct, align 2
  br label %worknote.exit

bb.bi:                                            ; preds = %bb.bg
  store i16 %i.du, ptr %i.lg, align 2
  br label %worknote.exit

bb.bj:                                            ; preds = %bb.bf
  %i.li = trunc nuw nsw i32 %i.lc to i16
  store i16 %i.li, ptr %i.ld, align 4
  %i.lj = getelementptr inbounds nuw i8, ptr %i.dx, i64 70
  %i.lk = load i16, ptr %i.lj, align 2            ; 3 uses
  store i16 %i.lk, ptr %i.ck, align 2
  store i16 1, ptr %i.ct, align 2
  br label %worknote.exit

bb.bk:                                            ; preds = %bb.be
  %i.ll = getelementptr inbounds nuw i8, ptr %i.dx, i64 70
  store i16 %i.dt, ptr %i.ll, align 2
  br label %worknote.exit

bb.bl:                                            ; preds = %bb.az
  %i.lm = and i8 %i.eq, 15
  %i.ln = zext nneg i8 %i.lm to i16
  store i16 %i.ln, ptr %i.cf, align 4
  br label %worknote.exit

bb.bm:                                            ; preds = %bb.az
  store i8 12, ptr %i.hl, align 8
  %i.lo = and i8 %i.eq, 15                        ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.dx, i64 66
  store i8 %i.lo, ptr %i.lp, align 2
  %.not233.i = icmp eq i8 %i.lo, 0
  br i1 %.not233.i, label %bb.bn, label %worknote.exit

bb.bn:                                            ; preds = %bb.bm
  %i.lq = getelementptr inbounds nuw i8, ptr %i.dx, i64 26
  store i8 0, ptr %i.lq, align 2
  br label %worknote.exit

bb.bo:                                            ; preds = %bb.u
  %i.lr = add i8 %i.eq, -33
  %or.cond255.i = icmp ult i8 %i.lr, -32
  br i1 %or.cond255.i, label %bb.bp, label %.thread.i

.thread.i:                                        ; preds = %bb.bo
  store i8 %i.eq, ptr %i.cq, align 4
  %i.ls = zext nneg i8 %i.eq to i64
  %i.lt = load i64, ptr %i.cr, align 8
  %i.lu = mul i64 %i.lt, 5
  %i.lv = load i8, ptr %i.cs, align 8
  %i.lw = zext i8 %i.lv to i64
  %i.lx = shl nuw nsw i64 %i.lw, 1
  %i.ly = udiv i64 %i.lu, %i.lx
  %i.lz = mul i64 %i.ly, %i.ls
  store i64 %i.lz, ptr %i.ce, align 8
  br label %worknote.exit

bb.bp:                                            ; preds = %bb.bo
  %i.ma = icmp ugt i8 %i.eq, 32
  br i1 %i.ma, label %bb.bq, label %worknote.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 %i.eq, ptr %i.cs, align 8
  %i.mb = load i8, ptr %i.cq, align 4
  %i.mc = zext i8 %i.mb to i64
  %i.md = load i64, ptr %i.cr, align 8
  %i.me = mul i64 %i.md, 5
  %i.mf = zext i8 %i.eq to i64
  %i.mg = shl nuw nsw i64 %i.mf, 1
  %i.mh = udiv i64 %i.me, %i.mg
  %i.mi = mul i64 %i.mh, %i.mc
  store i64 %i.mi, ptr %i.ce, align 8
  br label %worknote.exit

worknote.exit:                                    ; preds = %bb.u, %bb.v, %getnote.exit269.i, %bb.ae, %bb.af, %bb.ai, %bb.aj, %bb.am, %bb.an, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %.thread.i, %bb.bp, %bb.bq
  %i.mj = phi i16 [ %i.ds, %bb.u ], [ %i.ds, %bb.v ], [ %i.ds, %getnote.exit269.i ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.af ], [ %i.ds, %bb.ai ], [ %i.ds, %bb.aj ], [ %i.ds, %bb.am ], [ %i.ds, %bb.an ], [ %i.ds, %bb.aq ], [ %i.ds, %bb.ar ], [ %i.ds, %bb.as ], [ %i.ds, %bb.at ], [ %i.ds, %bb.au ], [ %i.ds, %bb.av ], [ %spec.store.select.i, %bb.aw ], [ %i.ds, %bb.ax ], [ %spec.store.select250.i, %bb.ay ], [ %i.ds, %bb.az ], [ %i.ds, %bb.ba ], [ %i.ds, %bb.bb ], [ %i.ds, %bb.bc ], [ %i.ds, %bb.bd ], [ %i.ds, %bb.bh ], [ %i.ds, %bb.bi ], [ %i.ds, %bb.bj ], [ %i.ds, %bb.bk ], [ %i.ds, %bb.bl ], [ %i.ds, %bb.bm ], [ %i.ds, %bb.bn ], [ %i.ds, %.thread.i ], [ %i.ds, %bb.bp ], [ %i.ds, %bb.bq ] ; 2 uses
  %i.mk = phi i16 [ %i.dt, %bb.u ], [ %i.dt, %bb.v ], [ %i.dt, %getnote.exit269.i ], [ %i.dt, %bb.ae ], [ %i.dt, %bb.af ], [ %i.dt, %bb.ai ], [ %i.dt, %bb.aj ], [ %i.dt, %bb.am ], [ %i.dt, %bb.an ], [ %i.dt, %bb.aq ], [ %i.dt, %bb.ar ], [ %i.dt, %bb.as ], [ %i.dt, %bb.at ], [ %i.dt, %bb.au ], [ %i.dt, %bb.av ], [ 0, %bb.aw ], [ %i.dt, %bb.ax ], [ %i.ki, %bb.ay ], [ %i.dt, %bb.az ], [ %i.dt, %bb.ba ], [ %i.dt, %bb.bb ], [ %i.dt, %bb.bc ], [ %i.dt, %bb.bd ], [ %i.lh, %bb.bh ], [ %i.dt, %bb.bi ], [ %i.lk, %bb.bj ], [ %i.dt, %bb.bk ], [ %i.dt, %bb.bl ], [ %i.dt, %bb.bm ], [ %i.dt, %bb.bn ], [ %i.dt, %.thread.i ], [ %i.dt, %bb.bp ], [ %i.dt, %bb.bq ] ; 2 uses
  %i.ml = phi i16 [ %i.du, %bb.u ], [ %i.du, %bb.v ], [ %i.du, %getnote.exit269.i ], [ %i.du, %bb.ae ], [ %i.du, %bb.af ], [ %i.du, %bb.ai ], [ %i.du, %bb.aj ], [ %i.du, %bb.am ], [ %i.du, %bb.an ], [ %i.du, %bb.aq ], [ %i.du, %bb.ar ], [ %i.du, %bb.as ], [ %i.du, %bb.at ], [ %i.du, %bb.au ], [ %i.du, %bb.av ], [ 0, %bb.aw ], [ %i.du, %bb.ax ], [ %i.ki, %bb.ay ], [ %i.du, %bb.az ], [ %i.du, %bb.ba ], [ %i.du, %bb.bb ], [ %i.du, %bb.bc ], [ %i.du, %bb.bd ], [ %i.lh, %bb.bh ], [ %i.du, %bb.bi ], [ %i.lk, %bb.bj ], [ %i.dt, %bb.bk ], [ %i.du, %bb.bl ], [ %i.du, %bb.bm ], [ %i.du, %bb.bn ], [ %i.du, %.thread.i ], [ %i.du, %bb.bp ], [ %i.du, %bb.bq ]
  %i.mm = add i8 %.0241303, 1                     ; 2 uses
  %i.mn = load i16, ptr %i.cm, align 8            ; 2 uses
  %i.mo = zext i8 %i.mm to i16
  %i.mp = icmp ugt i16 %i.mn, %i.mo
  br i1 %i.mp, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %worknote.exit, %bb.f
  %i.mq = phi i16 [ %i.dh, %bb.f ], [ %i.mj, %worknote.exit ]
  %i.mr = phi i16 [ %i.do, %bb.f ], [ %i.mk, %worknote.exit ] ; 2 uses
  %.lcssa = phi i16 [ 0, %bb.f ], [ %i.mn, %worknote.exit ] ; 2 uses
  %i.ms = load i16, ptr %i.ct, align 2
  %.not272 = icmp eq i16 %i.ms, 0
  br i1 %.not272, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge
  %i.mt = add i16 %i.mr, %.lcssa                  ; 2 uses
  store i16 %i.mt, ptr %i.ck, align 2
  br label %bb.bt

bb.bs:                                            ; preds = %._crit_edge
  store i16 0, ptr %i.ct, align 2
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.mu = phi i16 [ %i.mr, %bb.bs ], [ %i.mt, %bb.br ]
  %4 = zext i16 %i.mu to i32
  %5 = zext nneg i16 %.lcssa to i32
  %6 = shl nuw nsw i32 %5, 6
  %i.mv = icmp eq i32 %6, %4
  br i1 %i.mv, label %bb.bu, label %.sink.split

bb.bu:                                            ; preds = %bb.bt
  %i.mw = add i16 %i.mq, 1                        ; 2 uses
  store i16 %i.mw, ptr %i.cj, align 8
  store i16 0, ptr %i.ck, align 2
  %i.mx = load i8, ptr %i.cu, align 2
  %i.my = zext i8 %i.mx to i16
  %.not273 = icmp ult i16 %i.mw, %i.my
  br i1 %.not273, label %.sink.split, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i16 0, ptr %i.cj, align 8
  %i.mz = load i16, ptr %i.cv, align 8
  %i.na = add i16 %i.mz, 1
  store i16 %i.na, ptr %i.cv, align 8
  br label %.sink.split

bb.bw:                                            ; preds = %bb.e
  %i.nb = add i16 %i.dg, -1
  store i16 %i.nb, ptr %i.cf, align 4
  store i64 0, ptr %i.cd, align 8
  br label %.sink.split

bb.bx:                                            ; preds = %bb.d
  %.pre = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.nc = add i64 %.pre, 1
  store i64 %i.nc, ptr %i.cg, align 8
  %i.nd = load i8, ptr %i.cq, align 4
  %i.ne = zext i8 %i.nd to i64
  %i.nf = udiv i64 %i.de, %i.ne
  %i.ng = icmp ugt i64 %.pre, %i.nf
  br i1 %i.ng, label %bb.by, label %bb.cz

bb.by:                                            ; preds = %bb.bx
  %i.nh = load i16, ptr %i.cm, align 8            ; 2 uses
  %.not333 = icmp eq i16 %i.nh, 0
  br i1 %.not333, label %.sink.split, label %.lr.ph306

.lr.ph306:                                        ; preds = %bb.by, %workeffect.exit
  %.1242304 = phi i8 [ %i.rg, %workeffect.exit ], [ 0, %bb.by ] ; 2 uses
  %i.ni = zext i8 %.1242304 to i64
  %i.nj = getelementptr inbounds nuw [72 x i8], ptr %i.cl, i64 %i.ni ; 25 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 40
  %i.nl = load i8, ptr %i.nk, align 8             ; 3 uses
  switch i8 %i.nl, label %workeffect.exit [
    i8 0, label %bb.bz
    i8 1, label %bb.cb
    i8 2, label %bb.cd
    i8 5, label %bb.cf
    i8 3, label %bb.cf
    i8 6, label %bb.cq
    i8 4, label %bb.cq
    i8 10, label %bb.cu
    i8 12, label %bb.cx
  ]

bb.bz:                                            ; preds = %.lr.ph306
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 41
  %i.nn = load i8, ptr %i.nm, align 1
  %.not109.i = icmp eq i8 %i.nn, 0
  br i1 %.not109.i, label %workeffect.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.np = load i16, ptr %i.no, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nj, i64 52
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nj, i64 58 ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 2             ; 2 uses
  %i.nt = zext i8 %i.ns to i64
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %i.nq, i64 %i.nt
  %i.nv = load i16, ptr %i.nu, align 2
  %i.nw = sub i16 %i.np, %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nj, i64 44
  store i16 %i.nw, ptr %i.nx, align 4
  %i.ny = add i8 %i.ns, 1                         ; 2 uses
  %i.nz = icmp ugt i8 %i.ny, 2
  %spec.store.select.i289 = select i1 %i.nz, i8 0, i8 %i.ny
  store i8 %spec.store.select.i289, ptr %i.nr, align 2
  br label %workeffect.exit

bb.cb:                                            ; preds = %.lr.ph306
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nj, i64 24 ; 2 uses
  %i.ob = load i16, ptr %i.oa, align 8            ; 2 uses
  %.not108.i = icmp eq i16 %i.ob, 0
  br i1 %.not108.i, label %workeffect.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nj, i64 41
  %i.od = load i8, ptr %i.oc, align 1
  %i.oe = zext i8 %i.od to i16
  %i.of = sub i16 %i.ob, %i.oe                    ; 2 uses
  %i.og = add i16 %i.of, -20001
  %or.cond.i288 = icmp ult i16 %i.og, -19888
  %spec.store.select118.i = select i1 %or.cond.i288, i16 113, i16 %i.of
  store i16 %spec.store.select118.i, ptr %i.oa, align 8
  br label %workeffect.exit

bb.cd:                                            ; preds = %.lr.ph306
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nj, i64 24 ; 2 uses
  %i.oi = load i16, ptr %i.oh, align 8            ; 2 uses
  %.not107.i = icmp eq i16 %i.oi, 0
  br i1 %.not107.i, label %workeffect.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nj, i64 41
  %i.ok = load i8, ptr %i.oj, align 1
  %i.ol = zext i8 %i.ok to i16
  %i.om = add i16 %i.oi, %i.ol
  %spec.store.select110.i = tail call i16 @llvm.umin.i16(i16 %i.om, i16 20000)
  store i16 %spec.store.select110.i, ptr %i.oh, align 8
  br label %workeffect.exit

bb.cf:                                            ; preds = %.lr.ph306, %.lr.ph306
  %i.on = getelementptr inbounds nuw i8, ptr %i.nj, i64 24 ; 2 uses
  %i.oo = load i16, ptr %i.on, align 8            ; 4 uses
  %i.op = zext i16 %i.oo to i32                   ; 4 uses
  %.not102.i = icmp eq i16 %i.oo, 0
  br i1 %.not102.i, label %bb.cm, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nj, i64 48 ; 2 uses
  %i.or = load i16, ptr %i.oq, align 8            ; 4 uses
  %i.os = sext i16 %i.or to i32                   ; 5 uses
  %.not103.i = icmp eq i32 %i.op, %i.os
  %.not104.i = icmp eq i16 %i.or, 0
  %or.cond111.i = or i1 %.not104.i, %.not103.i
  br i1 %or.cond111.i, label %bb.cm, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ot = icmp sgt i32 %i.op, %i.os
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nj, i64 46
  %i.ov = load i16, ptr %i.ou, align 2            ; 3 uses
  %i.ow = sext i16 %i.ov to i32                   ; 2 uses
  br i1 %i.ot, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ox = sub nsw i32 %i.op, %i.os
  %.not106.i = icmp slt i32 %i.ox, %i.ow
  %i.oy = sub i16 %i.oo, %i.ov
  %spec.select13.i = select i1 %.not106.i, i16 %i.or, i16 %i.oy
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.oz = sub nuw nsw i32 %i.os, %i.op
  %.not105.i = icmp slt i32 %i.oz, %i.ow
  %i.pa = add i16 %i.ov, %i.oo
  %spec.select14.i = select i1 %.not105.i, i16 %i.or, i16 %i.pa
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.sink.i287 = phi i16 [ %spec.select14.i, %bb.cj ], [ %spec.select13.i, %bb.ci ] ; 2 uses
  store i16 %.sink.i287, ptr %i.on, align 8
  %i.pb = zext i16 %.sink.i287 to i32
  %i.pc = icmp eq i32 %i.pb, %i.os
  br i1 %i.pc, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i16 0, ptr %i.oq, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cg, %bb.cf
  %i.pd = icmp eq i8 %i.nl, 5
  br i1 %i.pd, label %bb.cn, label %workeffect.exit

bb.cn:                                            ; preds = %bb.cm
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nj, i64 62
  %i.pf = load i8, ptr %i.pe, align 2             ; 3 uses
  %i.pg = icmp ugt i8 %i.pf, 15
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nj, i64 26 ; 3 uses
  %i.pi = load i8, ptr %i.ph, align 2             ; 2 uses
  br i1 %i.pg, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.pj = lshr i8 %i.pf, 4
  %i.pk = add i8 %i.pi, %i.pj
  %spec.store.select112.i = tail call i8 @llvm.umin.i8(i8 %i.pk, i8 63)
  store i8 %spec.store.select112.i, ptr %i.ph, align 2
  br label %workeffect.exit

bb.cp:                                            ; preds = %bb.cn
  %i.pl = sub i8 %i.pi, %i.pf                     ; 2 uses
  %i.pm = icmp ugt i8 %i.pl, 63
  %spec.store.select113.i = select i1 %i.pm, i8 0, i8 %i.pl
  store i8 %spec.store.select113.i, ptr %i.ph, align 2
  br label %workeffect.exit

bb.cq:                                            ; preds = %.lr.ph306, %.lr.ph306
  %i.pn = getelementptr inbounds nuw i8, ptr %i.nj, i64 63
  %i.po = load i8, ptr %i.pn, align 1             ; 2 uses
  %i.pp = and i8 %i.po, 15
  %i.pq = zext nneg i8 %i.pp to i32
  %i.pr = getelementptr inbounds nuw i8, ptr %i.nj, i64 64 ; 2 uses
  %i.ps = load i8, ptr %i.pr, align 8             ; 3 uses
  %i.pt = and i8 %i.ps, 31
  %i.pu = zext nneg i8 %i.pt to i64
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr @sintable, i64 %i.pu
  %i.pw = load i16, ptr %i.pv, align 2
  %i.px = sext i16 %i.pw to i32
  %i.py = mul nsw i32 %i.px, %i.pq
end_hunk_1
