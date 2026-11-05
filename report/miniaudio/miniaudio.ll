Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_channel_map_build_shuffle_table:bb.a
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us85

ma_channel_map_get_channel.exit45.us.us.us.us85:  ; preds = %switch.lookup, %bb.f, %bb.e
  %.0.i44.us.us.us.us86 = phi i8 [ 0, %bb.e ], [ %switch.masked, %switch.lookup ], [ %i.o, %bb.f ] ; 3 uses
  %i.p = icmp eq i8 %.0.i.us.us.us, %.0.i44.us.us.us.us86
  br i1 %i.p, label %.split.us.us.us.split.us88.loopexit, label %bb.g

bb.g:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85
  switch i8 %.0.i.us.us.us, label %bb.j [
    i8 2, label %bb.i
    i8 11, label %bb.i
    i8 3, label %bb.h
    i8 12, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  switch i8 %.0.i44.us.us.us.us86, label %bb.j [
    i8 3, label %.sink.split
    i8 12, label %.sink.split
  ]

bb.i:                                             ; preds = %bb.g, %bb.g
  switch i8 %.0.i44.us.us.us.us86, label %bb.j [
    i8 2, label %.sink.split
    i8 11, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.i, %bb.i, %bb.h, %bb.h
  %i.q = trunc i32 %.03651.us.us.us.us76 to i8
  store i8 %i.q, ptr %i.g, align 1, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %bb.h, %bb.g
  %i.r = add nuw i32 %.03651.us.us.us.us76, 1     ; 2 uses
  %exitcond136.not = icmp eq i32 %i.r, %1
  br i1 %exitcond136.not, label %..loopexit_crit_edge.split.us.us.us.split.us87, label %.peel.next139, !llvm.loop !2074

.split.us.us.us.split.us88.loopexit:              ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85
  %i.s = trunc i32 %.03651.us.us.us.us76 to i8
  br label %.split.us.us.us.split.us88

.split.us.us.us.split.us88.fold.split:            ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85.peel
  br label %.split.us.us.us.split.us88

.split.us.us.us.split.us88:                       ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85.peel, %.split.us.us.us.split.us88.fold.split, %.split.us.us.us.split.us88.loopexit
  %.03651.us.us.us.us76.lcssa = phi i8 [ %i.s, %.split.us.us.us.split.us88.loopexit ], [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us85.peel ], [ 1, %.split.us.us.us.split.us88.fold.split ]
  store i8 %.03651.us.us.us.us76.lcssa, ptr %i.g, align 1, !tbaa !119
  br label %..loopexit_crit_edge.split.us.us.us.split.us87

..loopexit_crit_edge.split.us.us.us.split.us87:   ; preds = %bb.j, %.split.us.us.us.split.us88
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %.loopexit49, label %.preheader.split.us.split.us.split.us, !llvm.loop !2075

.preheader.split.us.split.us.split:               ; preds = %.preheader.split.us.split.us.split.preheader, %..loopexit_crit_edge.split.us.us.us.split.us
  %indvars.iv131 = phi i64 [ 0, %.preheader.split.us.split.us.split.preheader ], [ %indvars.iv.next132, %..loopexit_crit_edge.split.us.us.us.split.us ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv131 ; 5 uses
  store i8 -1, ptr %i.t, align 1, !tbaa !119
  br i1 %i.d, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.split.us.split.us.split
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv131
  %i.v = load i8, ptr %i.u, align 1, !tbaa !119
  br label %ma_channel_map_get_channel.exit.us.us

bb.l:                                             ; preds = %.preheader.split.us.split.us.split
  %i.w = trunc nuw i64 %indvars.iv131 to i32
  %i.x = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %3, i32 noundef %i.w)
  br label %ma_channel_map_get_channel.exit.us.us

ma_channel_map_get_channel.exit.us.us:            ; preds = %bb.l, %bb.k
  %.0.i.us.us = phi i8 [ %i.x, %bb.l ], [ %i.v, %bb.k ] ; 5 uses
  br i1 %cond182, label %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1, label %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2

ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1: ; preds = %ma_channel_map_get_channel.exit.us.us
  %i.y = icmp eq i8 %.0.i.us.us, 1
  br i1 %i.y, label %.split.us.us.us.split.us, label %..loopexit_crit_edge.split.us.us.us.split.us

ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2: ; preds = %ma_channel_map_get_channel.exit.us.us
  switch i8 %.0.i.us.us, label %bb.n [
    i8 2, label %.split.us.us.us.split.us
    i8 11, label %bb.m
  ]

bb.m:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2
  store i8 0, ptr %i.t, align 1, !tbaa !119
  br label %bb.n

bb.n:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2, %bb.m
  br i1 %exitcond117.peel.not, label %..loopexit_crit_edge.split.us.us.us.split.us, label %ma_channel_map_get_channel.exit45.us.us.us.us.peel127

ma_channel_map_get_channel.exit45.us.us.us.us.peel127: ; preds = %bb.n
  switch i8 %.0.i.us.us, label %bb.p [
    i8 3, label %.split.us.us.us.split.us
    i8 12, label %bb.o
  ]

bb.o:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel127
  store i8 1, ptr %i.t, align 1, !tbaa !119
  br label %bb.p

bb.p:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel127, %bb.o
  br i1 %exitcond117.peel129.not, label %..loopexit_crit_edge.split.us.us.us.split.us, label %.peel.next118

.peel.next118:                                    ; preds = %bb.p, %bb.y
  %.03651.us.us.us.us = phi i32 [ %i.ak, %bb.y ], [ 2, %bb.p ] ; 14 uses
  switch i32 %1, label %bb.u [
    i32 7, label %bb.t
    i32 6, label %bb.q
    i32 5, label %bb.r
    i32 3, label %switch.lookup.i68.i.us.us.us.us
    i32 4, label %bb.s
  ]

bb.q:                                             ; preds = %.peel.next118
  %i.z = icmp ult i32 %.03651.us.us.us.us, 6
  br i1 %i.z, label %switch.lookup197, label %ma_channel_map_get_channel.exit45.us.us.us.us

bb.r:                                             ; preds = %.peel.next118
  %i.aa = icmp ult i32 %.03651.us.us.us.us, 5
  br i1 %i.aa, label %switch.lookup202, label %ma_channel_map_get_channel.exit45.us.us.us.us

bb.s:                                             ; preds = %.peel.next118
  %i.ab = icmp ult i32 %.03651.us.us.us.us, 4
  br i1 %i.ab, label %switch.lookup207, label %ma_channel_map_get_channel.exit45.us.us.us.us

switch.lookup.i68.i.us.us.us.us:                  ; preds = %.peel.next118
  %switch.idx.cast.i69.i.us.us.us.us = trunc nuw nsw i32 %.03651.us.us.us.us to i8
  %switch.offset.i70.i.us.us.us.us = add nuw nsw i8 %switch.idx.cast.i69.i.us.us.us.us, 2
  br label %ma_channel_map_get_channel.exit45.us.us.us.us

bb.t:                                             ; preds = %.peel.next118
  %i.ac = icmp ult i32 %.03651.us.us.us.us, 7
  br i1 %i.ac, label %switch.lookup211, label %ma_channel_map_get_channel.exit45.us.us.us.us

bb.u:                                             ; preds = %.peel.next118
  %i.ad = icmp ult i32 %.03651.us.us.us.us, 8
  br i1 %i.ad, label %switch.lookup216, label %ma_channel_map_get_channel.exit45.us.us.us.us

switch.lookup197:                                 ; preds = %bb.q
  %i.ae = shl nuw nsw i32 %.03651.us.us.us.us, 3
  %switch.shiftamt199 = zext nneg i32 %i.ae to i48
  %switch.downshift200 = lshr i48 13241468322562, %switch.shiftamt199
  %switch.masked201 = trunc i48 %switch.downshift200 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us

switch.lookup202:                                 ; preds = %bb.r
  %i.af = shl nuw nsw i32 %.03651.us.us.us.us, 3
  %switch.shiftamt204 = zext nneg i32 %i.af to i40
  %switch.downshift205 = lshr i40 30165697282, %switch.shiftamt204
  %switch.masked206 = trunc i40 %switch.downshift205 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us

switch.lookup207:                                 ; preds = %bb.s
  %switch.shiftamt208 = shl nuw nsw i32 %.03651.us.us.us.us, 3
  %switch.downshift209 = lshr i32 168035074, %switch.shiftamt208
  %switch.masked210 = trunc i32 %switch.downshift209 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us

switch.lookup211:                                 ; preds = %bb.t
  %i.ag = shl nuw nsw i32 %.03651.us.us.us.us, 3
  %switch.shiftamt213 = zext nneg i32 %i.ag to i56
  %switch.downshift214 = lshr i56 3389837382255362, %switch.shiftamt213
  %switch.masked215 = trunc i56 %switch.downshift214 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us

switch.lookup216:                                 ; preds = %bb.u
  %i.ah = shl nuw nsw i32 %.03651.us.us.us.us, 3
  %switch.shiftamt218 = zext nneg i32 %i.ah to i64
  %switch.downshift219 = lshr i64 867795075634299650, %switch.shiftamt218
  %switch.masked220 = trunc i64 %switch.downshift219 to i8
  br label %ma_channel_map_get_channel.exit45.us.us.us.us

ma_channel_map_get_channel.exit45.us.us.us.us:    ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %switch.lookup216, %switch.lookup211, %switch.lookup207, %switch.lookup202, %switch.lookup197, %switch.lookup.i68.i.us.us.us.us
  %.0.i44.us.us.us.us = phi i8 [ %switch.masked206, %switch.lookup202 ], [ %switch.offset.i70.i.us.us.us.us, %switch.lookup.i68.i.us.us.us.us ], [ %switch.masked210, %switch.lookup207 ], [ %switch.masked220, %switch.lookup216 ], [ %switch.masked201, %switch.lookup197 ], [ %switch.masked215, %switch.lookup211 ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %i.ai = icmp eq i8 %.0.i.us.us, %.0.i44.us.us.us.us
  br i1 %i.ai, label %.split.us.us.us.split.us.loopexit, label %bb.v

bb.v:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us
  switch i8 %.0.i.us.us, label %bb.y [
    i8 2, label %bb.x
    i8 11, label %bb.x
    i8 3, label %bb.w
    i8 12, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  switch i8 %.0.i44.us.us.us.us, label %bb.y [
    i8 3, label %.sink.split183
    i8 12, label %.sink.split183
  ]

bb.x:                                             ; preds = %bb.v, %bb.v
  switch i8 %.0.i44.us.us.us.us, label %bb.y [
    i8 2, label %.sink.split183
    i8 11, label %.sink.split183
  ]

.sink.split183:                                   ; preds = %bb.x, %bb.x, %bb.w, %bb.w
  %i.aj = trunc nuw i32 %.03651.us.us.us.us to i8
  store i8 %i.aj, ptr %i.t, align 1, !tbaa !119
  br label %bb.y

bb.y:                                             ; preds = %.sink.split183, %bb.x, %bb.w, %bb.v
  %i.ak = add nuw i32 %.03651.us.us.us.us, 1      ; 2 uses
  %exitcond117.not = icmp eq i32 %i.ak, %1
  br i1 %exitcond117.not, label %..loopexit_crit_edge.split.us.us.us.split.us, label %.peel.next118, !llvm.loop !2076

.split.us.us.us.split.us.loopexit:                ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us
  %i.al = trunc i32 %.03651.us.us.us.us to i8
  br label %.split.us.us.us.split.us

.split.us.us.us.split.us:                         ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us.peel127, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1, %.split.us.us.us.split.us.loopexit
  %.03651.us.us.us.us.lcssa = phi i8 [ 1, %ma_channel_map_get_channel.exit45.us.us.us.us.peel127 ], [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1 ], [ %i.al, %.split.us.us.us.split.us.loopexit ], [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt2 ]
  store i8 %.03651.us.us.us.us.lcssa, ptr %i.t, align 1, !tbaa !119
  br label %..loopexit_crit_edge.split.us.us.us.split.us

..loopexit_crit_edge.split.us.us.us.split.us:     ; preds = %bb.y, %ma_channel_map_get_channel.exit45.us.us.us.us.peel.jt1, %bb.n, %bb.p, %.split.us.us.us.split.us
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count155
  br i1 %exitcond135.not, label %.loopexit49, label %.preheader.split.us.split.us.split, !llvm.loop !2075

.preheader.split.us.split:                        ; preds = %.preheader.split.us.split.preheader, %..loopexit_crit_edge.split.us68
  %indvars.iv112 = phi i64 [ 0, %.preheader.split.us.split.preheader ], [ %indvars.iv.next113, %..loopexit_crit_edge.split.us68 ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv112 ; 4 uses
  store i8 -1, ptr %i.am, align 1, !tbaa !119
  br i1 %i.d, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.preheader.split.us.split
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv112
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !119
  br label %ma_channel_map_get_channel.exit.us

bb.aa:                                            ; preds = %.preheader.split.us.split
  %i.ap = trunc nuw i64 %indvars.iv112 to i32
  %i.aq = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %3, i32 noundef %i.ap)
  br label %ma_channel_map_get_channel.exit.us

ma_channel_map_get_channel.exit.us:               ; preds = %bb.aa, %bb.z
  %.0.i.us = phi i8 [ %i.aq, %bb.aa ], [ %i.ao, %bb.z ]
  %.0.i.fr.us = freeze i8 %.0.i.us                ; 4 uses
  switch i8 %.0.i.fr.us, label %ma_channel_map_get_channel.exit45.us64 [
    i8 2, label %ma_channel_map_get_channel.exit45.us52.us.preheader
    i8 11, label %ma_channel_map_get_channel.exit45.us52.us.preheader
    i8 3, label %ma_channel_map_get_channel.exit45.us57.us.preheader
    i8 12, label %ma_channel_map_get_channel.exit45.us57.us.preheader
  ]

ma_channel_map_get_channel.exit45.us57.us.preheader: ; preds = %ma_channel_map_get_channel.exit.us, %ma_channel_map_get_channel.exit.us
  br label %ma_channel_map_get_channel.exit45.us57.us

ma_channel_map_get_channel.exit45.us52.us.preheader: ; preds = %ma_channel_map_get_channel.exit.us, %ma_channel_map_get_channel.exit.us
  br label %ma_channel_map_get_channel.exit45.us52.us

ma_channel_map_get_channel.exit45.us57.us:        ; preds = %ma_channel_map_get_channel.exit45.us57.us.preheader, %bb.ad
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ad ], [ 0, %ma_channel_map_get_channel.exit45.us57.us.preheader ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !119 ; 2 uses
  %i.at = icmp eq i8 %.0.i.fr.us, %i.as
  br i1 %i.at, label %.split.us72, label %bb.ab

bb.ab:                                            ; preds = %ma_channel_map_get_channel.exit45.us57.us
  switch i8 %i.as, label %bb.ad [
    i8 3, label %bb.ac
    i8 12, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.au = trunc i64 %indvars.iv to i8
  store i8 %i.au, ptr %i.am, align 1, !tbaa !119
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.split.us68, label %ma_channel_map_get_channel.exit45.us57.us, !llvm.loop !2077

ma_channel_map_get_channel.exit45.us52.us:        ; preds = %ma_channel_map_get_channel.exit45.us52.us.preheader, %bb.ag
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %bb.ag ], [ 0, %ma_channel_map_get_channel.exit45.us52.us.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv102
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !119 ; 2 uses
  %i.ax = icmp eq i8 %.0.i.fr.us, %i.aw
  br i1 %i.ax, label %.split.us72, label %bb.ae

bb.ae:                                            ; preds = %ma_channel_map_get_channel.exit45.us52.us
  switch i8 %i.aw, label %bb.ag [
    i8 2, label %bb.af
    i8 11, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.ay = trunc i64 %indvars.iv102 to i8
  store i8 %i.ay, ptr %i.am, align 1, !tbaa !119
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %..loopexit_crit_edge.split.us68, label %ma_channel_map_get_channel.exit45.us52.us, !llvm.loop !2077

ma_channel_map_get_channel.exit45.us64:           ; preds = %ma_channel_map_get_channel.exit.us, %bb.ah
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %bb.ah ], [ 0, %ma_channel_map_get_channel.exit.us ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv107
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !119
  %i.bb = icmp eq i8 %.0.i.fr.us, %i.ba
  br i1 %i.bb, label %.split.us72, label %bb.ah

bb.ah:                                            ; preds = %ma_channel_map_get_channel.exit45.us64
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %..loopexit_crit_edge.split.us68, label %ma_channel_map_get_channel.exit45.us64, !llvm.loop !2077

.split.us72:                                      ; preds = %ma_channel_map_get_channel.exit45.us57.us, %ma_channel_map_get_channel.exit45.us52.us, %ma_channel_map_get_channel.exit45.us64
  %.us-phi55.us.in = phi i64 [ %indvars.iv102, %ma_channel_map_get_channel.exit45.us52.us ], [ %indvars.iv107, %ma_channel_map_get_channel.exit45.us64 ], [ %indvars.iv, %ma_channel_map_get_channel.exit45.us57.us ]
  %i.bc = trunc i64 %.us-phi55.us.in to i8
  store i8 %i.bc, ptr %i.am, align 1, !tbaa !119
  br label %..loopexit_crit_edge.split.us68

..loopexit_crit_edge.split.us68:                  ; preds = %bb.ad, %bb.ag, %bb.ah, %.split.us72
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  br i1 %exitcond116.not, label %.loopexit49, label %.preheader.split.us.split, !llvm.loop !2075

.loopexit49:                                      ; preds = %..loopexit_crit_edge.split.us68, %..loopexit_crit_edge.split.us.us.us.split.us, %..loopexit_crit_edge.split.us.us.us.split.us87, %bb.a
  %.037 = phi i32 [ -2, %bb.a ], [ 0, %..loopexit_crit_edge.split.us.us.us.split.us ], [ 0, %..loopexit_crit_edge.split.us.us.us.split.us87 ], [ 0, %..loopexit_crit_edge.split.us68 ]
  ret i32 %.037
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ma_channel_map_contains_channel_position(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i8 noundef zeroext %2) local_unnamed_addr #19 {
bb.a:
  %.not17.i = icmp eq i32 %0, 0
  br i1 %.not17.i, label %ma_channel_map_find_channel_position.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_channel_map_get_channel.exit.us.i, label %ma_channel_map_get_channel.exit.preheader.i

ma_channel_map_get_channel.exit.preheader.i:      ; preds = %.lr.ph.i
  %wide.trip.count.i = zext i32 %0 to i64
  br label %ma_channel_map_get_channel.exit.i

ma_channel_map_get_channel.exit.us.i:             ; preds = %.lr.ph.i, %bb.b
  %.016.us.i = phi i32 [ %i.d, %bb.b ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.b = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %0, i32 noundef %.016.us.i)
  %i.c = icmp eq i8 %i.b, %2
  br i1 %i.c, label %ma_channel_map_find_channel_position.exit, label %bb.b

bb.b:                                             ; preds = %ma_channel_map_get_channel.exit.us.i
  %i.d = add nuw i32 %.016.us.i, 1                ; 2 uses
  %exitcond23.not.i = icmp eq i32 %i.d, %0
  br i1 %exitcond23.not.i, label %ma_channel_map_find_channel_position.exit, label %ma_channel_map_get_channel.exit.us.i, !llvm.loop !41

ma_channel_map_get_channel.exit.i:                ; preds = %bb.c, %ma_channel_map_get_channel.exit.preheader.i
  %indvars.iv.i = phi i64 [ 0, %ma_channel_map_get_channel.exit.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !119
  %i.g = icmp eq i8 %i.f, %2
  br i1 %i.g, label %ma_channel_map_find_channel_position.exit, label %bb.c

bb.c:                                             ; preds = %ma_channel_map_get_channel.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ma_channel_map_find_channel_position.exit, label %ma_channel_map_get_channel.exit.i, !llvm.loop !41

ma_channel_map_find_channel_position.exit:        ; preds = %ma_channel_map_get_channel.exit.i, %bb.c, %ma_channel_map_get_channel.exit.us.i, %bb.b, %bb.a
  %.012.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %ma_channel_map_get_channel.exit.us.i ], [ 0, %bb.c ], [ 1, %ma_channel_map_get_channel.exit.i ]
  ret i32 %.012.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @ma_channel_map_get_spatial_channel_count(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #19 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_channel_map_get_channel.exit.us, label %ma_channel_map_get_channel.exit.preheader

ma_channel_map_get_channel.exit.preheader:        ; preds = %.lr.ph
  %wide.trip.count = zext i32 %1 to i64
  br label %ma_channel_map_get_channel.exit

ma_channel_map_get_channel.exit.us:               ; preds = %.lr.ph, %bb.c
  %.021.us = phi i32 [ %i.l, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %.0720.us = phi i32 [ %i.k, %bb.c ], [ 0, %.lr.ph ] ; 3 uses
  %i.b = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %1, i32 noundef %.021.us) ; 4 uses
  switch i8 %i.b, label %bb.b [
    i8 5, label %ma_is_spatial_channel_position.exit.thread14.us
    i8 1, label %ma_is_spatial_channel_position.exit.thread14.us
    i8 0, label %ma_is_spatial_channel_position.exit.thread14.us
  ]

bb.b:                                             ; preds = %ma_channel_map_get_channel.exit.us
  %i.c = icmp samesign ugt i8 %i.b, 19
  br i1 %i.c, label %ma_is_spatial_channel_position.exit.thread14.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %bb.b
  %i.d = zext nneg i8 %i.b to i64
end_hunk_0
