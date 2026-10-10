Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_channel_map_build_shuffle_table:bb.a
  %i.b = icmp eq i32 %1, 0
  %or.cond = or i1 %i.b, %i.a
  %i.c = icmp eq i32 %3, 0
  %or.cond3 = or i1 %i.c, %or.cond
  br i1 %or.cond3, label %.loopexit49, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp eq ptr %2, null                     ; 3 uses
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %.preheader.split.us.split.us, label %.preheader.split.us.split.preheader

.preheader.split.us.split.preheader:              ; preds = %.preheader
  %wide.trip.count115 = zext i32 %3 to i64
  %wide.trip.count = zext i32 %1 to i64
  %wide.trip.count105 = zext i32 %1 to i64
  %wide.trip.count110 = zext i32 %1 to i64
  br label %.preheader.split.us.split

.preheader.split.us.split.us:                     ; preds = %.preheader
  %i.f = icmp ugt i32 %1, 8
  %wide.trip.count155 = zext i32 %3 to i64        ; 2 uses
  br i1 %i.f, label %.preheader.split.us.split.us.split.us, label %.preheader.split.us.split.us.split.preheader

.preheader.split.us.split.us.split.preheader:     ; preds = %.preheader.split.us.split.us
  %exitcond117.peel.not = icmp eq i32 %1, 1
  %exitcond117.peel129.not = icmp eq i32 %1, 2
  %cond182 = icmp eq i32 %1, 1
  br label %.preheader.split.us.split.us.split

.preheader.split.us.split.us.split.us:            ; preds = %.preheader.split.us.split.us, %..loopexit_crit_edge.split.us.us.us.split.us87
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %..loopexit_crit_edge.split.us.us.us.split.us87 ], [ 0, %.preheader.split.us.split.us ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv152 ; 4 uses
  store i8 -1, ptr %i.g, align 1, !tbaa !119
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us.split.us.split.us
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv152
  %i.i = load i8, ptr %i.h, align 1, !tbaa !119
  br label %ma_channel_map_get_channel.exit45.us.us.us.us85.peel

bb.c:                                             ; preds = %.preheader.split.us.split.us.split.us
  %i.j = trunc nuw i64 %indvars.iv152 to i32
  %i.k = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %3, i32 noundef %i.j)
  br label %ma_channel_map_get_channel.exit45.us.us.us.us85.peel

ma_channel_map_get_channel.exit45.us.us.us.us85.peel: ; preds = %bb.c, %bb.b
  %.0.i.us.us.us = phi i8 [ %i.k, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  switch i8 %.0.i.us.us.us, label %.peel.next139.preheader [
    i8 2, label %.split.us.us.us.split.us88
    i8 11, label %.peel.next139.sink.split
    i8 3, label %.split.us.us.us.split.us88.fold.split
    i8 12, label %bb.d
  ]

bb.d:                                             ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85.peel
  br label %.peel.next139.sink.split

.peel.next139.sink.split:                         ; preds = %ma_channel_map_get_channel.exit45.us.us.us.us85.peel, %bb.d
  %.sink = phi i8 [ 1, %bb.d ], [ 0, %ma_channel_map_get_channel.exit45.us.us.us.us85.peel ]
  store i8 %.sink, ptr %i.g, align 1, !tbaa !119
  br label %.peel.next139.preheader

.peel.next139.preheader:                          ; preds = %.peel.next139.sink.split, %ma_channel_map_get_channel.exit45.us.us.us.us85.peel
  br label %.peel.next139

.peel.next139:                                    ; preds = %.peel.next139.preheader, %bb.j
  %.03651.us.us.us.us76 = phi i32 [ %i.r, %bb.j ], [ 2, %.peel.next139.preheader ] ; 7 uses
  %i.l = icmp ult i32 %.03651.us.us.us.us76, 8
  br i1 %i.l, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %.peel.next139
  %i.m = icmp ult i32 %.03651.us.us.us.us76, 32
  br i1 %i.m, label %bb.f, label %ma_channel_map_get_channel.exit45.us.us.us.us85

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i32 %.03651.us.us.us.us76 to i8
  %i.o = add nuw nsw i8 %i.n, 12
  br label %ma_channel_map_get_channel.exit45.us.us.us.us85

switch.lookup:                                    ; preds = %.peel.next139
  %switch.tableidx = add nsw i32 %.03651.us.us.us.us76, -1
  %switch.cast = zext i32 %switch.tableidx to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 3389824514196483, %switch.shiftamt
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
  br i1 %exitcond136.not, label %..loopexit_crit_edge.split.us.us.us.split.us87, label %.peel.next139, !llvm.loop !2077

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
  br i1 %exitcond156.not, label %.loopexit49, label %.preheader.split.us.split.us.split.us, !llvm.loop !2078

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
  %i.z = icmp samesign ult i32 %.03651.us.us.us.us, 6
  br i1 %i.z, label %switch.lookup197, label %ma_channel_map_get_channel.exit45.us.us.us.us

bb.r:                                             ; preds = %.peel.next118
  %i.aa = icmp samesign ult i32 %.03651.us.us.us.us, 5
  br i1 %i.aa, label %switch.lookup202, label %ma_channel_map_get_channel.exit45.us.us.us.us

bb.s:                                             ; preds = %.peel.next118
  %i.ab = icmp samesign ult i32 %.03651.us.us.us.us, 4
  br i1 %i.ab, label %switch.lookup207, label %ma_channel_map_get_channel.exit45.us.us.us.us

switch.lookup.i68.i.us.us.us.us:                  ; preds = %.peel.next118
  %switch.idx.cast.i69.i.us.us.us.us = trunc nuw nsw i32 %.03651.us.us.us.us to i8
  %switch.offset.i70.i.us.us.us.us = add nuw nsw i8 %switch.idx.cast.i69.i.us.us.us.us, 2
  br label %ma_channel_map_get_channel.exit45.us.us.us.us

bb.t:                                             ; preds = %.peel.next118
  %i.ac = icmp samesign ult i32 %.03651.us.us.us.us, 7
  br i1 %i.ac, label %switch.lookup211, label %ma_channel_map_get_channel.exit45.us.us.us.us

bb.u:                                             ; preds = %.peel.next118
  %i.ad = icmp samesign ult i32 %.03651.us.us.us.us, 8
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
  %i.aj = trunc i32 %.03651.us.us.us.us to i8
  store i8 %i.aj, ptr %i.t, align 1, !tbaa !119
  br label %bb.y

bb.y:                                             ; preds = %.sink.split183, %bb.x, %bb.w, %bb.v
  %i.ak = add nuw nsw i32 %.03651.us.us.us.us, 1  ; 2 uses
  %exitcond117.not = icmp eq i32 %i.ak, %1
  br i1 %exitcond117.not, label %..loopexit_crit_edge.split.us.us.us.split.us, label %.peel.next118, !llvm.loop !2079

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
  br i1 %exitcond135.not, label %.loopexit49, label %.preheader.split.us.split.us.split, !llvm.loop !2078

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
  br i1 %exitcond.not, label %..loopexit_crit_edge.split.us68, label %ma_channel_map_get_channel.exit45.us57.us, !llvm.loop !2080

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
  br i1 %exitcond106.not, label %..loopexit_crit_edge.split.us68, label %ma_channel_map_get_channel.exit45.us52.us, !llvm.loop !2080

ma_channel_map_get_channel.exit45.us64:           ; preds = %ma_channel_map_get_channel.exit.us, %bb.ah
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %bb.ah ], [ 0, %ma_channel_map_get_channel.exit.us ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv107
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !119
  %i.bb = icmp eq i8 %.0.i.fr.us, %i.ba
  br i1 %i.bb, label %.split.us72, label %bb.ah

bb.ah:                                            ; preds = %ma_channel_map_get_channel.exit45.us64
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %..loopexit_crit_edge.split.us68, label %ma_channel_map_get_channel.exit45.us64, !llvm.loop !2080

.split.us72:                                      ; preds = %ma_channel_map_get_channel.exit45.us57.us, %ma_channel_map_get_channel.exit45.us52.us, %ma_channel_map_get_channel.exit45.us64
  %.us-phi55.us.in = phi i64 [ %indvars.iv102, %ma_channel_map_get_channel.exit45.us52.us ], [ %indvars.iv107, %ma_channel_map_get_channel.exit45.us64 ], [ %indvars.iv, %ma_channel_map_get_channel.exit45.us57.us ]
  %i.bc = trunc i64 %.us-phi55.us.in to i8
  store i8 %i.bc, ptr %i.am, align 1, !tbaa !119
  br label %..loopexit_crit_edge.split.us68

..loopexit_crit_edge.split.us68:                  ; preds = %bb.ad, %bb.ag, %bb.ah, %.split.us72
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  br i1 %exitcond116.not, label %.loopexit49, label %.preheader.split.us.split, !llvm.loop !2078

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
  %i.e = shl nuw nsw i64 1, %i.d                  ; 2 uses
  %i.f = and i64 %i.e, 777180
  %or.cond18.us = icmp eq i64 %i.f, 0
  br i1 %or.cond18.us, label %ma_is_spatial_channel_position.exit.us, label %ma_is_spatial_channel_position.exit.thread.us

end_hunk_0
begin_hunk_1_@ma_wav_read_pcm_frames:bb.a
bb.i:                                             ; preds = %bb.h
  store i64 %.0, ptr %3, align 8, !tbaa !164
  br label %bb.j

bb.j:                                             ; preds = %ma_wav_get_data_format.exit, %bb.i, %bb.h, %bb.c
  %.1 = phi i32 [ -2, %bb.c ], [ -3, %ma_wav_get_data_format.exit ], [ %spec.select, %bb.i ], [ %spec.select, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -3, 1) i32 @ma_wav_get_data_format(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i64 noundef %5) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not31 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not32 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %3, align 4, !tbaa !118
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not33 = icmp ne ptr %4, null                  ; 2 uses
  %i.a = icmp ne i64 %5, 0                        ; 2 uses
  %or.cond = and i1 %.not33, %i.a
  br i1 %or.cond, label %bb.h, label %ma_zero_memory_default.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %4, i8 0, i64 %5, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.h, %bb.g
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_channel_map_init_standard.exit, label %bb.i

bb.i:                                             ; preds = %ma_zero_memory_default.exit
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !668
  store i32 %i.d, ptr %1, align 4, !tbaa !118
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not31, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load i16, ptr %i.e, align 8, !tbaa !690
  %i.g = zext i16 %i.f to i32
  store i32 %i.g, ptr %2, align 4, !tbaa !118
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.i = load i32, ptr %i.h, align 4, !tbaa !691
  store i32 %i.i, ptr %3, align 4, !tbaa !118
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %.not33, label %bb.p, label %ma_channel_map_init_standard.exit

bb.p:                                             ; preds = %bb.o
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = load i16, ptr %i.j, align 8, !tbaa !690  ; 2 uses
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = icmp ne i16 %i.k, 0
  %or.cond3.i.not = and i1 %i.m, %i.a
  br i1 %or.cond3.i.not, label %.preheader.i, label %ma_channel_map_init_standard.exit

.preheader.i:                                     ; preds = %bb.p, %.preheader.i
  %.024.i = phi i32 [ %i.q, %.preheader.i ], [ 0, %bb.p ] ; 2 uses
  %.01723.i = phi ptr [ %i.o, %.preheader.i ], [ %4, %bb.p ] ; 2 uses
  %.01822.i = phi i64 [ %i.p, %.preheader.i ], [ %5, %bb.p ]
  %i.n = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.l, i32 noundef %.024.i)
  store i8 %i.n, ptr %.01723.i, align 1, !tbaa !119
  %i.o = getelementptr inbounds nuw i8, ptr %.01723.i, i64 1
  %i.p = add i64 %.01822.i, -1                    ; 2 uses
  %i.q = add nuw nsw i32 %.024.i, 1               ; 2 uses
  %i.r = icmp samesign uge i32 %i.q, %i.l
  %i.s = icmp eq i64 %i.p, 0
  %or.cond5.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond5.i, label %ma_channel_map_init_standard.exit, label %.preheader.i, !llvm.loop !5

ma_channel_map_init_standard.exit:                ; preds = %.preheader.i, %bb.p, %bb.o, %ma_zero_memory_default.exit
  %.0 = phi i32 [ -3, %ma_zero_memory_default.exit ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %.preheader.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_wav_read_pcm_frames_f32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 10 uses
  %i.d = alloca [2048 x i16], align 16            ; 5 uses
  %i.e = alloca [4096 x i8], align 16             ; 16 uses
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq i64 %1, 0
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !692  ; 11 uses
  %i.l = zext i16 %i.k to i64
  %i.m = mul i64 %1, %i.l
  %i.n = and i64 %i.m, 4611686017353646080
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.rhs.trunc93 = zext i16 %i.k to i32
  %i.o = udiv i32 1073741823, %.rhs.trunc93
  %.zext94 = zext nneg i32 %i.o to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.030 = phi i64 [ %.zext94, %bb.e ], [ %1, %bb.d ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.q = load i16, ptr %i.p, align 4, !tbaa !693
  switch i16 %i.q, label %bb.ax [
    i16 1, label %bb.g
    i16 2, label %bb.u
    i16 17, label %bb.u
    i16 3, label %bb.x
    i16 6, label %bb.ah
    i16 7, label %bb.ap
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.s = load i16, ptr %i.r, align 2, !tbaa !694
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 7
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.x = load i16, ptr %i.w, align 2, !tbaa !695
  %i.y = zext i16 %i.x to i32
  %i.z = mul nuw nsw i32 %i.y, %i.t
  %i.aa = lshr exact i32 %i.z, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !696
  %i.ad = zext i16 %i.ac to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

ma_dr_wav_get_bytes_per_pcm_frame.exit.i:         ; preds = %bb.h, %bb.i
  %.0.i.i = phi i32 [ %i.aa, %bb.h ], [ %i.ad, %bb.i ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %ma_dr_wav_read_pcm_frames_f32__pcm.exit, label %bb.j

bb.j:                                             ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i
  %i.ae = zext i16 %i.k to i32                    ; 3 uses
  %i.af = udiv i32 %.0.i.i, %i.ae                 ; 5 uses
  %i.ag = urem i32 %.0.i.i, %i.ae
  %i.ah = icmp samesign uge i32 %.0.i.i, %i.ae
  %.not.i = icmp eq i32 %i.ag, 0
  %or.cond278.a = and i1 %i.ah, %.not.i
  br i1 %or.cond278.a, label %.preheader.i, label %ma_dr_wav_read_pcm_frames_f32__pcm.exit

.preheader.i:                                     ; preds = %bb.j
  %i.ai = udiv i32 4096, %.0.i.i
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = zext nneg i32 %i.af to i64              ; 4 uses
  %i.al = icmp samesign ugt i32 %i.af, 8
  %i.am = shl nuw nsw i32 %i.af, 3
  %i.an = sub nsw i32 64, %i.am
  %3 = zext i32 %i.an to i64                      ; 2 uses
  %xtraiter264 = and i64 %i.ak, 3                 ; 3 uses
  %i.ao = add nsw i32 %i.af, -1
  %i.ap = icmp ult i32 %i.ao, 3
  %unroll_iter269 = and i64 %i.ak, 12
  %lcmp.mod266.not = icmp eq i64 %xtraiter264, 0
  %lcmp.mod268 = icmp ne i64 %xtraiter264, 0
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03053.i = phi i64 [ 0, %.preheader.i ], [ %i.gq, %.loopexit.i ] ; 3 uses
  %.03152.i = phi ptr [ %2, %.preheader.i ], [ %i.go, %.loopexit.i ] ; 15 uses
  %.03351.i = phi i64 [ %.030, %.preheader.i ], [ %i.gp, %.loopexit.i ] ; 2 uses
  %.033..i = call i64 @llvm.umin.i64(i64 %.03351.i, i64 %i.aj)
  %i.aq = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.033..i, ptr noundef nonnull %i.e) ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %ma_dr_wav_read_pcm_frames_f32__pcm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i16, ptr %i.j, align 8, !tbaa !692
  %i.at = zext i16 %i.as to i64
  %i.au = mul i64 %i.aq, %i.at                    ; 25 uses
  %i.av = mul i64 %i.au, %i.ak
  %i.aw = icmp ugt i64 %i.av, 4096
  br i1 %i.aw, label %ma_dr_wav_read_pcm_frames_f32__pcm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i32 %i.af, label %bb.r [
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 4, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %.not50.i.i = icmp eq i64 %i.au, 0
  br i1 %.not50.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.n
  %min.iters.check190 = icmp ult i64 %i.au, 8
  br i1 %min.iters.check190, label %.lr.ph.i.i.i.preheader242, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec192 = and i64 %i.au, -8                   ; 4 uses
  %i.ax = shl i64 %n.vec192, 2
  %i.ay = getelementptr i8, ptr %.03152.i, i64 %i.ax
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body193 ] ; 3 uses
  %i.az = shl i64 %index194, 2
  %next.gep195 = getelementptr i8, ptr %.03152.i, i64 %i.az ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 %index194 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %wide.load196 = load <4 x i8>, ptr %i.ba, align 8, !tbaa !119
  %wide.load197 = load <4 x i8>, ptr %i.bb, align 4, !tbaa !119
  %i.bc = uitofp <4 x i8> %wide.load196 to <4 x float>
  %i.bd = uitofp <4 x i8> %wide.load197 to <4 x float>
  %i.be = fmul nnan <4 x float> %i.bc, splat (float f0x3C008081)
  %i.bf = fmul nnan <4 x float> %i.bd, splat (float f0x3C008081)
  %i.bg = fadd <4 x float> %i.be, splat (float -1.000000e+00)
  %i.bh = fadd <4 x float> %i.bf, splat (float -1.000000e+00)
  %i.bi = getelementptr i8, ptr %next.gep195, i64 16
  store <4 x float> %i.bg, ptr %next.gep195, align 4, !tbaa !349
  store <4 x float> %i.bh, ptr %i.bi, align 4, !tbaa !349
  %index.next198 = add nuw i64 %index194, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.bj, label %middle.block199, label %vector.body193, !llvm.loop !2207

middle.block199:                                  ; preds = %vector.body193
  %cmp.n200 = icmp eq i64 %i.au, %n.vec192
  br i1 %cmp.n200, label %.loopexit.i, label %.lr.ph.i.i.i.preheader242

.lr.ph.i.i.i.preheader242:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block199
  %.015.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i.i.i.preheader ], [ %i.ay, %middle.block199 ]
  %.01114.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec192, %middle.block199 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader242, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader242 ] ; 2 uses
  %.01114.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i ], [ %.01114.i.i.i.ph, %.lr.ph.i.i.i.preheader242 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01114.i.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !119
  %i.bm = uitofp i8 %i.bl to float
  %i.bn = fmul nnan float %i.bm, f0x3C008081
  %i.bo = fadd float %i.bn, -1.000000e+00
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  store float %i.bo, ptr %.015.i.i.i, align 4, !tbaa !349
  %i.bq = add nuw nsw i64 %.01114.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bq, %i.au
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !2208

bb.o:                                             ; preds = %bb.m
  %.not49.i.i = icmp eq i64 %i.au, 0
  br i1 %.not49.i.i, label %.loopexit.i, label %.lr.ph.i40.i.i.preheader

.lr.ph.i40.i.i.preheader:                         ; preds = %bb.o
  %min.iters.check204 = icmp ult i64 %i.au, 8
  br i1 %min.iters.check204, label %.lr.ph.i40.i.i.preheader244, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph.i40.i.i.preheader
  %n.vec206 = and i64 %i.au, -8                   ; 4 uses
  %i.br = shl i64 %n.vec206, 2
  %i.bs = getelementptr i8, ptr %.03152.i, i64 %i.br
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next212, %vector.body207 ] ; 3 uses
  %i.bt = shl i64 %index208, 2
  %next.gep209 = getelementptr i8, ptr %.03152.i, i64 %i.bt ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index208 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %wide.load210 = load <4 x i16>, ptr %i.bu, align 16, !tbaa !122
  %wide.load211 = load <4 x i16>, ptr %i.bv, align 8, !tbaa !122
  %i.bw = sitofp <4 x i16> %wide.load210 to <4 x float>
  %i.bx = sitofp <4 x i16> %wide.load211 to <4 x float>
  %i.by = fmul nnan <4 x float> %i.bw, splat (float f0x38000000)
  %i.bz = fmul nnan <4 x float> %i.bx, splat (float f0x38000000)
  %i.ca = getelementptr i8, ptr %next.gep209, i64 16
  store <4 x float> %i.by, ptr %next.gep209, align 4, !tbaa !349
  store <4 x float> %i.bz, ptr %i.ca, align 4, !tbaa !349
  %index.next212 = add nuw i64 %index208, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next212, %n.vec206
  br i1 %i.cb, label %middle.block213, label %vector.body207, !llvm.loop !2209

middle.block213:                                  ; preds = %vector.body207
  %cmp.n214 = icmp eq i64 %i.au, %n.vec206
  br i1 %cmp.n214, label %.loopexit.i, label %.lr.ph.i40.i.i.preheader244

.lr.ph.i40.i.i.preheader244:                      ; preds = %.lr.ph.i40.i.i.preheader, %middle.block213
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i40.i.i.preheader ], [ %n.vec206, %middle.block213 ]
  %.0811.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i40.i.i.preheader ], [ %i.bs, %middle.block213 ]
  br label %.lr.ph.i40.i.i

.lr.ph.i40.i.i:                                   ; preds = %.lr.ph.i40.i.i.preheader244, %.lr.ph.i40.i.i
  %.012.i.i.i = phi i64 [ %i.ch, %.lr.ph.i40.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i40.i.i.preheader244 ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i ], [ %.0811.i.i.i.ph, %.lr.ph.i40.i.i.preheader244 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.012.i.i.i
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !122
  %i.ce = sitofp i16 %i.cd to float
  %i.cf = fmul nnan float %i.ce, f0x38000000
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  store float %i.cf, ptr %.0811.i.i.i, align 4, !tbaa !349
  %i.ch = add nuw nsw i64 %.012.i.i.i, 1          ; 2 uses
  %exitcond.not.i41.i.i = icmp eq i64 %i.ch, %i.au
  br i1 %exitcond.not.i41.i.i, label %.loopexit.i, label %.lr.ph.i40.i.i, !llvm.loop !2210

bb.p:                                             ; preds = %bb.m
  %.not48.i.i = icmp eq i64 %i.au, 0
  br i1 %.not48.i.i, label %.loopexit.i, label %.lr.ph.i42.i.i.preheader

.lr.ph.i42.i.i.preheader:                         ; preds = %bb.p
  %min.iters.check218 = icmp ult i64 %i.au, 4
  br i1 %min.iters.check218, label %.lr.ph.i42.i.i.preheader246, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph.i42.i.i.preheader
  %n.vec220 = and i64 %i.au, -4                   ; 4 uses
  %i.ci = shl i64 %n.vec220, 2
  %i.cj = getelementptr i8, ptr %.03152.i, i64 %i.ci
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next224, %vector.body221 ] ; 6 uses
  %i.ck = shl i64 %index222, 2
  %next.gep223 = getelementptr i8, ptr %.03152.i, i64 %i.ck
  %i.cl = mul i64 %index222, 3
  %i.cm = mul i64 %index222, 3
  %i.cn = mul i64 %index222, 3
  %i.co = mul i64 %index222, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cl ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cm ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  %i.cs = getelementptr i8, ptr %i.e, i64 %i.cn   ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 6
  %i.cu = getelementptr i8, ptr %i.e, i64 %i.co   ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 9
  %i.cw = load i16, ptr %i.cp, align 4
  %i.cx = load i16, ptr %i.cr, align 1
  %i.cy = load i16, ptr %i.ct, align 2
  %i.cz = load i16, ptr %i.cv, align 1
  %i.da = insertelement <4 x i16> poison, i16 %i.cw, i64 0
  %i.db = insertelement <4 x i16> %i.da, i16 %i.cx, i64 1
  %i.dc = insertelement <4 x i16> %i.db, i16 %i.cy, i64 2
  %i.dd = insertelement <4 x i16> %i.dc, i16 %i.cz, i64 3
  %i.de = zext <4 x i16> %i.dd to <4 x i32>
  %i.df = shl nuw nsw <4 x i32> %i.de, splat (i32 8)
  %i.dg = getelementptr i8, ptr %i.cp, i64 2
  %i.dh = getelementptr i8, ptr %i.cq, i64 5
  %i.di = getelementptr i8, ptr %i.cs, i64 8
  %i.dj = getelementptr i8, ptr %i.cu, i64 11
  %i.dk = load i8, ptr %i.dg, align 2, !tbaa !119
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !119
  %i.dm = load i8, ptr %i.di, align 4, !tbaa !119
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !119
  %i.do = insertelement <4 x i8> poison, i8 %i.dk, i64 0
  %i.dp = insertelement <4 x i8> %i.do, i8 %i.dl, i64 1
  %i.dq = insertelement <4 x i8> %i.dp, i8 %i.dm, i64 2
  %i.dr = insertelement <4 x i8> %i.dq, i8 %i.dn, i64 3
  %i.ds = zext <4 x i8> %i.dr to <4 x i32>
  %i.dt = shl nuw <4 x i32> %i.ds, splat (i32 24)
  %i.du = or disjoint <4 x i32> %i.dt, %i.df
  %i.dv = ashr exact <4 x i32> %i.du, splat (i32 8)
  %i.dw = sitofp <4 x i32> %i.dv to <4 x float>
  %i.dx = fmul nnan <4 x float> %i.dw, splat (float f0x34000000)
  store <4 x float> %i.dx, ptr %next.gep223, align 4, !tbaa !349
  %index.next224 = add nuw i64 %index222, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next224, %n.vec220
  br i1 %i.dy, label %middle.block225, label %vector.body221, !llvm.loop !2211

middle.block225:                                  ; preds = %vector.body221
  %cmp.n226 = icmp eq i64 %i.au, %n.vec220
  br i1 %cmp.n226, label %.loopexit.i, label %.lr.ph.i42.i.i.preheader246

.lr.ph.i42.i.i.preheader246:                      ; preds = %.lr.ph.i42.i.i.preheader, %middle.block225
  %.020.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i42.i.i.preheader ], [ %i.cj, %middle.block225 ]
  %.01619.i.i.i.ph = phi i64 [ 0, %.lr.ph.i42.i.i.preheader ], [ %n.vec220, %middle.block225 ]
  br label %.lr.ph.i42.i.i

.lr.ph.i42.i.i:                                   ; preds = %.lr.ph.i42.i.i.preheader246, %.lr.ph.i42.i.i
  %.020.i.i.i = phi ptr [ %i.em, %.lr.ph.i42.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i42.i.i.preheader246 ] ; 2 uses
  %.01619.i.i.i = phi i64 [ %i.en, %.lr.ph.i42.i.i ], [ %.01619.i.i.i.ph, %.lr.ph.i42.i.i.preheader246 ] ; 2 uses
  %i.dz = mul i64 %.01619.i.i.i, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dz ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 1
  %i.ec = zext i16 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 8
  %i.ee = getelementptr i8, ptr %i.ea, i64 2
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !119
  %i.eg = zext i8 %i.ef to i32
  %i.eh = shl nuw i32 %i.eg, 24
  %i.ei = or disjoint i32 %i.eh, %i.ed
  %i.ej = ashr exact i32 %i.ei, 8
  %i.ek = sitofp i32 %i.ej to float
  %i.el = fmul nnan float %i.ek, f0x34000000
  %i.em = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  store float %i.el, ptr %.020.i.i.i, align 4, !tbaa !349
  %i.en = add nuw i64 %.01619.i.i.i, 1            ; 2 uses
  %exitcond.not.i43.i.i = icmp eq i64 %i.en, %i.au
  br i1 %exitcond.not.i43.i.i, label %.loopexit.i, label %.lr.ph.i42.i.i, !llvm.loop !2212

bb.q:                                             ; preds = %bb.m
  %.not.i41.i = icmp eq i64 %i.au, 0
  br i1 %.not.i41.i, label %.loopexit.i, label %.lr.ph.i44.i.i.preheader

.lr.ph.i44.i.i.preheader:                         ; preds = %bb.q
  %min.iters.check230 = icmp ult i64 %i.au, 4
  br i1 %min.iters.check230, label %.lr.ph.i44.i.i.preheader248, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph.i44.i.i.preheader
  %n.vec232 = and i64 %i.au, -4                   ; 4 uses
  %i.eo = shl i64 %n.vec232, 2
  %i.ep = getelementptr i8, ptr %.03152.i, i64 %i.eo
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next237, %vector.body233 ] ; 3 uses
  %i.eq = shl i64 %index234, 2
  %next.gep235 = getelementptr i8, ptr %.03152.i, i64 %i.eq
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index234
  %wide.load236 = load <4 x i32>, ptr %i.er, align 16, !tbaa !118
  %i.es = sitofp <4 x i32> %wide.load236 to <4 x double>
  %i.et = fmul nnan <4 x double> %i.es, splat (double f0x3E00000000000000)
  %i.eu = fptrunc <4 x double> %i.et to <4 x float>
  store <4 x float> %i.eu, ptr %next.gep235, align 4, !tbaa !349
  %index.next237 = add nuw i64 %index234, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.ev, label %middle.block238, label %vector.body233, !llvm.loop !2213

middle.block238:                                  ; preds = %vector.body233
  %cmp.n239 = icmp eq i64 %i.au, %n.vec232
  br i1 %cmp.n239, label %.loopexit.i, label %.lr.ph.i44.i.i.preheader248

.lr.ph.i44.i.i.preheader248:                      ; preds = %.lr.ph.i44.i.i.preheader, %middle.block238
  %.012.i45.i.i.ph = phi i64 [ 0, %.lr.ph.i44.i.i.preheader ], [ %n.vec232, %middle.block238 ]
  %.0811.i46.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i44.i.i.preheader ], [ %i.ep, %middle.block238 ]
  br label %.lr.ph.i44.i.i

.lr.ph.i44.i.i:                                   ; preds = %.lr.ph.i44.i.i.preheader248, %.lr.ph.i44.i.i
  %.012.i45.i.i = phi i64 [ %i.fc, %.lr.ph.i44.i.i ], [ %.012.i45.i.i.ph, %.lr.ph.i44.i.i.preheader248 ] ; 2 uses
  %.0811.i46.i.i = phi ptr [ %i.fb, %.lr.ph.i44.i.i ], [ %.0811.i46.i.i.ph, %.lr.ph.i44.i.i.preheader248 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.012.i45.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !118
  %i.ey = sitofp i32 %i.ex to double
  %i.ez = fmul nnan double %i.ey, f0x3E00000000000000
  %i.fa = fptrunc double %i.ez to float
  %i.fb = getelementptr inbounds nuw i8, ptr %.0811.i46.i.i, i64 4
  store float %i.fa, ptr %.0811.i46.i.i, align 4, !tbaa !349
  %i.fc = add nuw nsw i64 %.012.i45.i.i, 1        ; 2 uses
  %exitcond.not.i47.i.i = icmp eq i64 %i.fc, %i.au
  br i1 %exitcond.not.i47.i.i, label %.loopexit.i, label %.lr.ph.i44.i.i, !llvm.loop !2214

bb.r:                                             ; preds = %bb.m
  br i1 %i.al, label %bb.s, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.r
  %.not61.i.i = icmp eq i64 %i.au, 0
  br i1 %.not61.i.i, label %.loopexit.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %bb.r
  %i.fd = shl i64 %i.au, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03152.i, i8 0, i64 %i.fd, i1 false)
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.epilog-lcssa
  %.03660.i.i = phi i32 [ %i.gl, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.03759.i.i = phi ptr [ %i.gk, %.epilog-lcssa ], [ %.03152.i, %.preheader.i.i ] ; 2 uses
  %.03858.i.i = phi ptr [ %i.gg, %.epilog-lcssa ], [ %i.e, %.preheader.i.i ] ; 6 uses
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.new
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.i.new ], [ %3, %.lr.ph.i.i ] ; 5 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %.03555.i.i = phi i64 [ %i.ga, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %niter270 = phi i64 [ %niter270.next.3, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !119
  %i.fg = zext i8 %i.ff to i64
  %i.fh = shl i64 %i.fg, %indvars.iv.i.i.a
  %i.fi = or i64 %i.fh, %.03555.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i.i.a, 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !119
  %i.fm = zext i8 %i.fl to i64
  %i.fn = shl i64 %i.fm, %indvars.iv.next.i
  %i.fo = or i64 %i.fn, %i.fi
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.i.a, 16
  %i.fp = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !119
  %i.fs = zext i8 %i.fr to i64
  %i.ft = shl i64 %i.fs, %indvars.iv.next.i.1
  %i.fu = or i64 %i.ft, %i.fo
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.i.a, 24
  %i.fv = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 3
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !119
  %i.fy = zext i8 %i.fx to i64
  %i.fz = shl i64 %i.fy, %indvars.iv.next.i.2
  %i.ga = or i64 %i.fz, %i.fu                     ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.i.a, 32 ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter270.next.3 = add i64 %niter270, 4         ; 2 uses
  %niter270.ncmp.3 = icmp eq i64 %niter270.next.3, %unroll_iter269
  br i1 %niter270.ncmp.3, label %.unr-lcssa, label %.lr.ph.i.i.new, !llvm.loop !2215

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.new
  br i1 %lcmp.mod266.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init.a = phi i64 [ %3, %.lr.ph.i.i ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03555.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ga, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod268)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv.i.i.epil.a = phi i64 [ %indvars.iv.next.i.epil, %bb.t ], [ %indvars.iv.i.i.epil.init.a, %.epil.preheader ] ; 2 uses
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %bb.t ], [ %indvars.iv.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.03555.i.i.epil = phi i64 [ %i.gf, %bb.t ], [ %.03555.i.i.epil.init, %.epil.preheader ]
  %epil.iter265 = phi i64 [ %epil.iter265.next, %bb.t ], [ 0, %.epil.preheader ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.epil
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !119
  %i.gd = zext i8 %i.gc to i64
  %i.ge = shl i64 %i.gd, %indvars.iv.i.i.epil.a
  %i.gf = or i64 %i.ge, %.03555.i.i.epil          ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.a, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter265.next = add i64 %epil.iter265, 1   ; 2 uses
  %epil.iter265.cmp.not = icmp eq i64 %epil.iter265.next, %xtraiter264
  br i1 %epil.iter265.cmp.not, label %.epilog-lcssa, label %bb.t, !llvm.loop !2216

.epilog-lcssa:                                    ; preds = %bb.t, %.unr-lcssa
  %.lcssa = phi i64 [ %i.ga, %.unr-lcssa ], [ %i.gf, %bb.t ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %i.ak
  %i.gh = sitofp i64 %.lcssa to double
  %i.gi = fmul nnan double %i.gh, f0x3C00000000000000
  %i.gj = fptrunc double %i.gi to float
  %i.gk = getelementptr inbounds nuw i8, ptr %.03759.i.i, i64 4
  store float %i.gj, ptr %.03759.i.i, align 4, !tbaa !349
  %i.gl = add i32 %.03660.i.i, 1                  ; 2 uses
  %i.gm = zext i32 %i.gl to i64
  %i.gn = icmp ugt i64 %i.au, %i.gm
  br i1 %i.gn, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !2217

.loopexit.i:                                      ; preds = %.lr.ph.i44.i.i, %.lr.ph.i42.i.i, %.lr.ph.i40.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block238, %middle.block225, %middle.block213, %middle.block199, %bb.s, %.preheader.i.i, %bb.q, %bb.p, %bb.o, %bb.n
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.03152.i, i64 %i.au
  %i.gp = sub i64 %.03351.i, %i.aq                ; 2 uses
  %i.gq = add i64 %i.aq, %.03053.i                ; 2 uses
  %.not40.i = icmp eq i64 %i.gp, 0
  br i1 %.not40.i, label %ma_dr_wav_read_pcm_frames_f32__pcm.exit, label %bb.k

ma_dr_wav_read_pcm_frames_f32__pcm.exit:          ; preds = %bb.k, %bb.l, %.loopexit.i, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i, %bb.j
  %.035.i = phi i64 [ 0, %bb.j ], [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i ], [ %.03053.i, %bb.k ], [ %i.gq, %.loopexit.i ], [ %.03053.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  br label %bb.ax

bb.u:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.i37, %bb.u
  %i.gr = phi i16 [ %i.k, %bb.u ], [ %i.gw, %.loopexit.i37 ]
  %.01932.i = phi i64 [ 0, %bb.u ], [ %i.hs, %.loopexit.i37 ] ; 2 uses
  %.02031.i = phi ptr [ %2, %bb.u ], [ %i.hq, %.loopexit.i37 ] ; 4 uses
  %.02230.i = phi i64 [ %.030, %bb.u ], [ %i.hr, %.loopexit.i37 ] ; 2 uses
  %i.gs = udiv i16 2048, %i.gr
  %i.gt = zext nneg i16 %i.gs to i64
  %.022..i = call i64 @llvm.umin.i64(i64 %.02230.i, i64 %i.gt)
  %i.gu = call i64 @ma_dr_wav_read_pcm_frames_s16(ptr noundef nonnull %0, i64 noundef %.022..i, ptr noundef nonnull %i.d) ; 4 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gw = load i16, ptr %i.j, align 8, !tbaa !692 ; 2 uses
  %i.gx = zext i16 %i.gw to i64
  %i.gy = mul i64 %i.gu, %i.gx                    ; 6 uses
  %.not35.i = icmp eq i64 %i.gy, 0
  br i1 %.not35.i, label %.loopexit.i37, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.w
  %min.iters.check176 = icmp ult i64 %i.gy, 8
  br i1 %min.iters.check176, label %.lr.ph.i.i35.preheader250, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.i35.preheader
  %n.vec178 = and i64 %i.gy, -8                   ; 4 uses
  %i.gz = shl i64 %n.vec178, 2
  %i.ha = getelementptr i8, ptr %.02031.i, i64 %i.gz
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body179 ] ; 3 uses
  %i.hb = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %.02031.i, i64 %i.hb ; 2 uses
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index180 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %wide.load182 = load <4 x i16>, ptr %i.hc, align 16, !tbaa !122
  %wide.load183 = load <4 x i16>, ptr %i.hd, align 8, !tbaa !122
  %i.he = sitofp <4 x i16> %wide.load182 to <4 x float>
  %i.hf = sitofp <4 x i16> %wide.load183 to <4 x float>
  %i.hg = fmul nnan <4 x float> %i.he, splat (float f0x38000000)
  %i.hh = fmul nnan <4 x float> %i.hf, splat (float f0x38000000)
  %i.hi = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x float> %i.hg, ptr %next.gep181, align 4, !tbaa !349
  store <4 x float> %i.hh, ptr %i.hi, align 4, !tbaa !349
  %index.next184 = add nuw i64 %index180, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.hj, label %middle.block185, label %vector.body179, !llvm.loop !2218

middle.block185:                                  ; preds = %vector.body179
  %cmp.n186 = icmp eq i64 %i.gy, %n.vec178
  br i1 %cmp.n186, label %.loopexit.i37, label %.lr.ph.i.i35.preheader250

.lr.ph.i.i35.preheader250:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block185
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i35.preheader ], [ %n.vec178, %middle.block185 ]
  %.0811.i.i.ph = phi ptr [ %.02031.i, %.lr.ph.i.i35.preheader ], [ %i.ha, %middle.block185 ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader250, %.lr.ph.i.i35
  %.012.i.i = phi i64 [ %i.hp, %.lr.ph.i.i35 ], [ %.012.i.i.ph, %.lr.ph.i.i35.preheader250 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.ho, %.lr.ph.i.i35 ], [ %.0811.i.i.ph, %.lr.ph.i.i35.preheader250 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.012.i.i
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !122
  %i.hm = sitofp i16 %i.hl to float
  %i.hn = fmul nnan float %i.hm, f0x38000000
  %i.ho = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  store float %i.hn, ptr %.0811.i.i, align 4, !tbaa !349
  %i.hp = add nuw nsw i64 %.012.i.i, 1            ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %i.hp, %i.gy
  br i1 %exitcond.not.i.i36, label %.loopexit.i37, label %.lr.ph.i.i35, !llvm.loop !2219

.loopexit.i37:                                    ; preds = %.lr.ph.i.i35, %middle.block185, %bb.w
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.02031.i, i64 %i.gy
  %i.hr = sub i64 %.02230.i, %i.gu                ; 2 uses
  %i.hs = add i64 %i.gu, %.01932.i                ; 2 uses
  %.not.i38 = icmp eq i64 %i.hr, 0
  br i1 %.not.i38, label %ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit, label %bb.v

ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit:  ; preds = %bb.v, %.loopexit.i37
  %.019.lcssa.i = phi i64 [ %.01932.i, %bb.v ], [ %i.hs, %.loopexit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %bb.ax

bb.x:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !694 ; 2 uses
  %i.hv = icmp eq i16 %i.hu, 32
  br i1 %i.hv, label %bb.y, label %._crit_edge.i

bb.y:                                             ; preds = %bb.x
  %i.hw = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %.030, ptr noundef nonnull %2)
  br label %ma_dr_wav_read_pcm_frames_f32__ieee.exit

._crit_edge.i:                                    ; preds = %bb.x
  %i.hx = zext i16 %i.hu to i32                   ; 2 uses
  %i.hy = and i32 %i.hx, 7
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !695
  %i.ic = zext i16 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ic, %i.hx
  %i.ie = lshr exact i32 %i.id, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41

bb.aa:                                            ; preds = %._crit_edge.i
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ig = load i16, ptr %i.if, align 8, !tbaa !696
  %i.ih = zext i16 %i.ig to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41

ma_dr_wav_get_bytes_per_pcm_frame.exit.i41:       ; preds = %bb.z, %bb.aa
  %.0.i.i39 = phi i32 [ %i.ie, %bb.z ], [ %i.ih, %bb.aa ] ; 5 uses
  %.old.i42 = icmp eq i32 %.0.i.i39, 0
  br i1 %.old.i42, label %ma_dr_wav_read_pcm_frames_f32__ieee.exit, label %bb.ab

bb.ab:                                            ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41
  %i.ii = zext i16 %i.k to i32                    ; 3 uses
  %i.ij = udiv i32 %.0.i.i39, %i.ii
  %i.ik = urem i32 %.0.i.i39, %i.ii
  %.fr.i = freeze i32 %i.ij                       ; 2 uses
  %i.il = icmp samesign uge i32 %.0.i.i39, %i.ii
  %.not.i43 = icmp eq i32 %i.ik, 0
  %or.cond279.a = and i1 %i.il, %.not.i43
  br i1 %or.cond279.a, label %.preheader.i44, label %ma_dr_wav_read_pcm_frames_f32__ieee.exit

.preheader.i44:                                   ; preds = %bb.ab
  %i.im = udiv i32 4096, %.0.i.i39
  %i.in = zext nneg i32 %i.im to i64              ; 3 uses
  %i.io = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us56.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i44, %.loopexit.us.i
  %.03555.us.i = phi i64 [ %i.jp, %.loopexit.us.i ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03654.us.i = phi ptr [ %i.jn, %.loopexit.us.i ], [ %2, %.preheader.i44 ] ; 5 uses
  %.03853.us.i = phi i64 [ %i.jo, %.loopexit.us.i ], [ %.030, %.preheader.i44 ] ; 2 uses
  %.038..us.i = call i64 @llvm.umin.i64(i64 %.03853.us.i, i64 %i.in)
  %i.ip = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.038..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %ma_dr_wav_read_pcm_frames_f32__ieee.exit, label %bb.ac

bb.ac:                                            ; preds = %.preheader.split.us.i
  %i.ir = load i16, ptr %i.j, align 8, !tbaa !692
  %i.is = zext i16 %i.ir to i64
  %i.it = mul i64 %i.ip, %i.is                    ; 8 uses
  %i.iu = mul i64 %i.it, %i.io
  %i.iv = icmp ugt i64 %i.iu, 4096
  br i1 %i.iv, label %ma_dr_wav_read_pcm_frames_f32__ieee.exit, label %.preheader.i.us.i

.preheader.i.us.i:                                ; preds = %bb.ac
  %.not18.i.us.i = icmp eq i64 %i.it, 0
  br i1 %.not18.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %.preheader.i.us.i
  %min.iters.check162 = icmp ult i64 %i.it, 12
  br i1 %min.iters.check162, label %.lr.ph.i.us.i.preheader251, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.us.i.preheader
  %i.iw = add i64 %i.it, -1                       ; 2 uses
  %i.ix = and i64 %i.iw, 4294967295
  %i.iy = icmp eq i64 %i.ix, 4294967295
end_hunk_1
begin_hunk_2_@ma_dr_wav_read_pcm_frames_f32:bb.a
  br i1 %i.pa, label %.lr.ph.i.i72.epil.preheader, label %.lr.ph.i.i72.preheader.new

.lr.ph.i.i72.preheader.new:                       ; preds = %.lr.ph.i.i72.preheader
  %unroll_iter = and i64 %i.ox, -4
  br label %.lr.ph.i.i72

.lr.ph.i.i72:                                     ; preds = %.lr.ph.i.i72, %.lr.ph.i.i72.preheader.new
  %.012.i.i73 = phi i64 [ 0, %.lr.ph.i.i72.preheader.new ], [ %i.qk, %.lr.ph.i.i72 ] ; 5 uses
  %.0811.i.i74 = phi ptr [ %.03046.i68, %.lr.ph.i.i72.preheader.new ], [ %i.qj, %.lr.ph.i.i72 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i72.preheader.new ], [ %niter.next.3, %.lr.ph.i.i72 ]
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i73
  %i.pc = load i8, ptr %i.pb, align 4, !tbaa !119
  %i.pd = zext i8 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.pd
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !122
  %i.pg = sitofp i16 %i.pf to float
  %i.ph = fmul nnan float %i.pg, f0x38000000
  %i.pi = getelementptr inbounds nuw i8, ptr %.0811.i.i74, i64 4
  store float %i.ph, ptr %.0811.i.i74, align 4, !tbaa !349
  %i.pj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i73
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 1
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !119
  %i.pm = zext i8 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.pm
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !122
  %i.pp = sitofp i16 %i.po to float
  %i.pq = fmul nnan float %i.pp, f0x38000000
  %i.pr = getelementptr inbounds nuw i8, ptr %.0811.i.i74, i64 8
  store float %i.pq, ptr %i.pi, align 4, !tbaa !349
  %i.ps = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i73
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 2
  %i.pu = load i8, ptr %i.pt, align 2, !tbaa !119
  %i.pv = zext i8 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.pv
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !122
  %i.py = sitofp i16 %i.px to float
  %i.pz = fmul nnan float %i.py, f0x38000000
  %i.qa = getelementptr inbounds nuw i8, ptr %.0811.i.i74, i64 12
  store float %i.pz, ptr %i.pr, align 4, !tbaa !349
  %i.qb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i73
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 3
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !119
  %i.qe = zext i8 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.qe
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !122
  %i.qh = sitofp i16 %i.qg to float
  %i.qi = fmul nnan float %i.qh, f0x38000000
  %i.qj = getelementptr inbounds nuw i8, ptr %.0811.i.i74, i64 16 ; 2 uses
  store float %i.qi, ptr %i.qa, align 4, !tbaa !349
  %i.qk = add nuw nsw i64 %.012.i.i73, 4          ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i76.loopexit.unr-lcssa, label %.lr.ph.i.i72, !llvm.loop !52

.loopexit.i76.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i72
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i76, label %.lr.ph.i.i72.epil.preheader

.lr.ph.i.i72.epil.preheader:                      ; preds = %.loopexit.i76.loopexit.unr-lcssa, %.lr.ph.i.i72.preheader
  %.012.i.i73.epil.init = phi i64 [ 0, %.lr.ph.i.i72.preheader ], [ %i.qk, %.loopexit.i76.loopexit.unr-lcssa ]
  %.0811.i.i74.epil.init = phi ptr [ %.03046.i68, %.lr.ph.i.i72.preheader ], [ %i.qj, %.loopexit.i76.loopexit.unr-lcssa ]
  %lcmp.mod257 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod257)
  br label %.lr.ph.i.i72.epil

.lr.ph.i.i72.epil:                                ; preds = %.lr.ph.i.i72.epil, %.lr.ph.i.i72.epil.preheader
  %.012.i.i73.epil = phi i64 [ %i.qt, %.lr.ph.i.i72.epil ], [ %.012.i.i73.epil.init, %.lr.ph.i.i72.epil.preheader ] ; 2 uses
  %.0811.i.i74.epil = phi ptr [ %i.qs, %.lr.ph.i.i72.epil ], [ %.0811.i.i74.epil.init, %.lr.ph.i.i72.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i72.epil ], [ 0, %.lr.ph.i.i72.epil.preheader ]
  %i.ql = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i73.epil
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !119
  %i.qn = zext i8 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.qn
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !122
  %i.qq = sitofp i16 %i.qp to float
  %i.qr = fmul nnan float %i.qq, f0x38000000
  %i.qs = getelementptr inbounds nuw i8, ptr %.0811.i.i74.epil, i64 4
  store float %i.qr, ptr %.0811.i.i74.epil, align 4, !tbaa !349
  %i.qt = add nuw nsw i64 %.012.i.i73.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i76, label %.lr.ph.i.i72.epil, !llvm.loop !2225

.loopexit.i76:                                    ; preds = %.loopexit.i76.loopexit.unr-lcssa, %.lr.ph.i.i72.epil, %bb.aw
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.03046.i68, i64 %i.ox
  %i.qv = sub i64 %.03245.i69, %i.ot              ; 2 uses
  %i.qw = add i64 %i.ot, %.02947.i67              ; 2 uses
  %.not39.i77 = icmp eq i64 %i.qv, 0
  br i1 %.not39.i77, label %ma_dr_wav_read_pcm_frames_f32__mulaw.exit, label %bb.au

ma_dr_wav_read_pcm_frames_f32__mulaw.exit:        ; preds = %bb.au, %bb.av, %.loopexit.i76, %bb.as, %bb.at
  %.034.i65 = phi i64 [ 0, %bb.at ], [ 0, %bb.as ], [ %.02947.i67, %bb.au ], [ %i.qw, %.loopexit.i76 ], [ %.02947.i67, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.ax

bb.ax:                                            ; preds = %bb.f, %bb.a, %ma_dr_wav_read_pcm_frames_f32__mulaw.exit, %ma_dr_wav_read_pcm_frames_f32__alaw.exit, %ma_dr_wav_read_pcm_frames_f32__ieee.exit, %ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit, %ma_dr_wav_read_pcm_frames_f32__pcm.exit, %bb.c
  %.0 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.c ], [ %.035.i, %ma_dr_wav_read_pcm_frames_f32__pcm.exit ], [ %.019.lcssa.i, %ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit ], [ %.040.i, %ma_dr_wav_read_pcm_frames_f32__ieee.exit ], [ %.034.i, %ma_dr_wav_read_pcm_frames_f32__alaw.exit ], [ %.034.i65, %ma_dr_wav_read_pcm_frames_f32__mulaw.exit ], [ 0, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_wav_read_pcm_frames_s16(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 9 uses
  %i.d = alloca [4096 x i8], align 16             ; 20 uses
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq i64 %1, 0
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.az

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !692  ; 10 uses
  %i.k = zext i16 %i.j to i64
  %i.l = mul i64 %1, %i.k
  %i.m = and i64 %i.l, 9223372034707292160
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.rhs.trunc87 = zext i16 %i.j to i32
  %i.n = udiv i32 2147483647, %.rhs.trunc87
  %.zext88 = zext nneg i32 %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.033 = phi i64 [ %.zext88, %bb.e ], [ %1, %bb.d ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.p = load i16, ptr %i.o, align 4, !tbaa !693
  switch i16 %i.p, label %bb.az [
    i16 1, label %bb.g
    i16 3, label %bb.t
    i16 6, label %bb.ah
    i16 7, label %bb.ap
    i16 2, label %bb.ax
    i16 17, label %bb.ay
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.d, i8 0, i64 4096, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.r = load i16, ptr %i.q, align 2, !tbaa !694  ; 2 uses
  %i.s = icmp eq i16 %i.r, 16
  br i1 %i.s, label %.split.i, label %._crit_edge.i

.split.i:                                         ; preds = %bb.g
  %i.t = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %.033, ptr noundef nonnull %2)
  br label %ma_dr_wav_read_pcm_frames_s16__pcm.exit

._crit_edge.i:                                    ; preds = %bb.g
  %i.u = zext i16 %i.r to i32                     ; 2 uses
  %i.v = and i32 %i.u, 7
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.y = load i16, ptr %i.x, align 2, !tbaa !695
  %i.z = zext i16 %i.y to i32
  %i.aa = mul nuw nsw i32 %i.z, %i.u
  %i.ab = lshr exact i32 %i.aa, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !696
  %i.ae = zext i16 %i.ad to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

ma_dr_wav_get_bytes_per_pcm_frame.exit.i:         ; preds = %bb.h, %bb.i
  %.0.i.i = phi i32 [ %i.ab, %bb.h ], [ %i.ae, %bb.i ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit, label %bb.j

bb.j:                                             ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i
  %i.af = zext i16 %i.j to i32                    ; 3 uses
  %i.ag = udiv i32 %.0.i.i, %i.af                 ; 5 uses
  %i.ah = urem i32 %.0.i.i, %i.af
  %i.ai = icmp samesign uge i32 %.0.i.i, %i.af
  %.not.i = icmp eq i32 %i.ah, 0
  %or.cond220.a = and i1 %i.ai, %.not.i
  br i1 %or.cond220.a, label %.preheader.i, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit

.preheader.i:                                     ; preds = %bb.j
  %i.aj = udiv i32 4096, %.0.i.i
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.am = icmp samesign ugt i32 %i.ag, 8
  %i.an = shl nuw nsw i32 %i.ag, 3
  %i.ao = sub nsw i32 64, %i.an
  %3 = zext i32 %i.ao to i64                      ; 2 uses
  %xtraiter208 = and i64 %i.al, 3                 ; 3 uses
  %i.ap = add nsw i32 %i.ag, -1
  %i.aq = icmp ult i32 %i.ap, 3
  %unroll_iter213 = and i64 %i.al, 12
  %lcmp.mod210.not = icmp eq i64 %xtraiter208, 0
  %lcmp.mod212 = icmp ne i64 %xtraiter208, 0
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03761.i = phi i64 [ 0, %.preheader.i ], [ %i.fu, %.loopexit.i ] ; 3 uses
  %.03860.i = phi ptr [ %2, %.preheader.i ], [ %i.fs, %.loopexit.i ] ; 11 uses
  %.04059.i = phi i64 [ %.033, %.preheader.i ], [ %i.ft, %.loopexit.i ] ; 2 uses
  %.040..i = call i64 @llvm.umin.i64(i64 %.04059.i, i64 %i.ak)
  %i.ar = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.040..i, ptr noundef nonnull %i.d) ; 5 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i16, ptr %i.i, align 8, !tbaa !692
  %i.au = zext i16 %i.at to i64                   ; 2 uses
  %i.av = mul i64 %i.ar, %i.au                    ; 25 uses
  %i.aw = mul i64 %i.av, %i.al
  %i.ax = icmp ugt i64 %i.aw, 4096
  br i1 %i.ax, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i32 %i.ag, label %bb.q [
    i32 1, label %bb.n
    i32 2, label %.preheader51.i.i
    i32 3, label %bb.o
    i32 4, label %bb.p
  ]

.preheader51.i.i:                                 ; preds = %bb.m
  %.not.i49.i = icmp eq i64 %i.av, 0
  br i1 %.not.i49.i, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader51.i.i
  %i.ay = shl i64 %i.ar, 1
  %i.az = mul i64 %i.ay, %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.03860.i, ptr nonnull align 16 %i.d, i64 %i.az, i1 false), !tbaa !122
  br label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.n
  %min.iters.check152 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check152, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check153 = icmp ult i64 %i.av, 16
  br i1 %min.iters.check153, label %vec.epilog.ph, label %vector.ph154

vector.ph154:                                     ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.av, 12
  %n.vec155 = and i64 %i.av, -16                  ; 4 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.ph154, %vector.body156
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next160, %vector.body156 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 %index157 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %wide.load158 = load <8 x i8>, ptr %i.bb, align 16, !tbaa !119
  %wide.load159 = load <8 x i8>, ptr %i.bc, align 8, !tbaa !119
  %i.bd = zext <8 x i8> %wide.load158 to <8 x i16>
  %i.be = zext <8 x i8> %wide.load159 to <8 x i16>
  %i.bf = shl nuw <8 x i16> %i.bd, splat (i16 8)
  %i.bg = shl nuw <8 x i16> %i.be, splat (i16 8)
  %i.bh = xor <8 x i16> %i.bf, splat (i16 -32768)
  %i.bi = xor <8 x i16> %i.bg, splat (i16 -32768)
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index157 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <8 x i16> %i.bh, ptr %i.bj, align 2, !tbaa !122
  store <8 x i16> %i.bi, ptr %i.bk, align 2, !tbaa !122
  %index.next160 = add nuw i64 %index157, 16      ; 2 uses
  %i.bl = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.bl, label %middle.block161, label %vector.body156, !llvm.loop !2226

middle.block161:                                  ; preds = %vector.body156
  %cmp.n162 = icmp eq i64 %i.av, %n.vec155
  br i1 %cmp.n162, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block161
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec155, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec163 = and i64 %i.av, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index164 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next166, %vec.epilog.vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 %index164
  %wide.load165 = load <4 x i8>, ptr %i.bm, align 4, !tbaa !119
  %i.bn = zext <4 x i8> %wide.load165 to <4 x i16>
  %i.bo = shl nuw <4 x i16> %i.bn, splat (i16 8)
  %i.bp = xor <4 x i16> %i.bo, splat (i16 -32768)
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index164
  store <4 x i16> %i.bp, ptr %i.bq, align 2, !tbaa !122
  %index.next166 = add nuw i64 %index164, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next166, %n.vec163
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2227

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n167 = icmp eq i64 %i.av, %n.vec163
  br i1 %cmp.n167, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec155, %vec.epilog.iter.check ], [ %n.vec163, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 %.09.i.i.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !119
  %i.bu = zext i8 %i.bt to i16
  %i.bv = shl nuw i16 %i.bu, 8
  %i.bw = xor i16 %i.bv, -32768
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.09.i.i.i
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !122
  %i.by = add nuw nsw i64 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.av
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !2228

bb.o:                                             ; preds = %bb.m
  %.not.i44.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i44.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %bb.o
  %min.iters.check170 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check170, label %.lr.ph.i45.i.i.preheader192, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph.i45.i.i.preheader
  %n.vec172 = and i64 %i.av, -8                   ; 3 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next175, %vector.body173 ] ; 10 uses
  %i.bz = mul i64 %index174, 3
  %i.ca = mul i64 %index174, 3
  %i.cb = mul i64 %index174, 3
  %i.cc = mul i64 %index174, 3
  %i.cd = mul i64 %index174, 3
  %i.ce = mul i64 %index174, 3
  %i.cf = mul i64 %index174, 3
  %i.cg = mul i64 %index174, 3
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.bz
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ca
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.cb
  %i.ck = getelementptr i8, ptr %i.d, i64 %i.cc
  %i.cl = getelementptr i8, ptr %i.d, i64 %i.cd
  %i.cm = getelementptr i8, ptr %i.d, i64 %i.ce
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.co = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cp = getelementptr i8, ptr %i.ch, i64 1
  %i.cq = getelementptr i8, ptr %i.ci, i64 4
  %i.cr = getelementptr i8, ptr %i.cj, i64 7
  %i.cs = getelementptr i8, ptr %i.ck, i64 10
  %i.ct = getelementptr i8, ptr %i.cl, i64 13
  %i.cu = getelementptr i8, ptr %i.cm, i64 16
  %i.cv = getelementptr i8, ptr %i.cn, i64 19
  %i.cw = getelementptr i8, ptr %i.co, i64 22
  %i.cx = load i16, ptr %i.cp, align 1
  %i.cy = load i16, ptr %i.cq, align 4
  %i.cz = load i16, ptr %i.cr, align 1
  %i.da = load i16, ptr %i.cs, align 2
  %i.db = load i16, ptr %i.ct, align 1
  %i.dc = load i16, ptr %i.cu, align 8
  %i.dd = load i16, ptr %i.cv, align 1
  %i.de = load i16, ptr %i.cw, align 2
  %i.df = insertelement <8 x i16> poison, i16 %i.cx, i64 0
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 1
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 2
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 3
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.db, i64 4
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.dc, i64 5
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 6
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.de, i64 7
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index174
  store <8 x i16> %i.dm, ptr %i.dn, align 2, !tbaa !122
  %index.next175 = add nuw i64 %index174, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next175, %n.vec172
  br i1 %i.do, label %middle.block176, label %vector.body173, !llvm.loop !2229

middle.block176:                                  ; preds = %vector.body173
  %cmp.n177 = icmp eq i64 %i.av, %n.vec172
  br i1 %cmp.n177, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader192

.lr.ph.i45.i.i.preheader192:                      ; preds = %.lr.ph.i45.i.i.preheader, %middle.block176
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec172, %middle.block176 ]
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.preheader192, %.lr.ph.i45.i.i
  %.012.i.i.i = phi i64 [ %i.du, %.lr.ph.i45.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i45.i.i.preheader192 ] ; 3 uses
  %i.dp = mul i64 %.012.i.i.i, 3
  %i.dq = getelementptr i8, ptr %i.d, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 1
  %i.ds = load i16, ptr %i.dr, align 1
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.012.i.i.i
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !122
  %i.du = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i46.i.i = icmp eq i64 %i.du, %i.av
  br i1 %exitcond.not.i46.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i, !llvm.loop !2230

bb.p:                                             ; preds = %bb.m
  %.not.i47.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i47.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader

.lr.ph.i48.i.i.preheader:                         ; preds = %bb.p
  %min.iters.check180 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check180, label %.lr.ph.i48.i.i.preheader194, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph.i48.i.i.preheader
  %n.vec182 = and i64 %i.av, -8                   ; 3 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next187, %vector.body183 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index184 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load185 = load <4 x i32>, ptr %i.dv, align 16, !tbaa !118
  %wide.load186 = load <4 x i32>, ptr %i.dw, align 16, !tbaa !118
  %i.dx = lshr <4 x i32> %wide.load185, splat (i32 16)
  %i.dy = lshr <4 x i32> %wide.load186, splat (i32 16)
  %i.dz = trunc nuw <4 x i32> %i.dx to <4 x i16>
  %i.ea = trunc nuw <4 x i32> %i.dy to <4 x i16>
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index184 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store <4 x i16> %i.dz, ptr %i.eb, align 2, !tbaa !122
  store <4 x i16> %i.ea, ptr %i.ec, align 2, !tbaa !122
  %index.next187 = add nuw i64 %index184, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next187, %n.vec182
  br i1 %i.ed, label %middle.block188, label %vector.body183, !llvm.loop !2231

middle.block188:                                  ; preds = %vector.body183
  %cmp.n189 = icmp eq i64 %i.av, %n.vec182
  br i1 %cmp.n189, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader194

.lr.ph.i48.i.i.preheader194:                      ; preds = %.lr.ph.i48.i.i.preheader, %middle.block188
  %.08.i.i.i.ph = phi i64 [ 0, %.lr.ph.i48.i.i.preheader ], [ %n.vec182, %middle.block188 ]
  br label %.lr.ph.i48.i.i

.lr.ph.i48.i.i:                                   ; preds = %.lr.ph.i48.i.i.preheader194, %.lr.ph.i48.i.i
  %.08.i.i.i = phi i64 [ %i.ej, %.lr.ph.i48.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i48.i.i.preheader194 ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.08.i.i.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !118
  %i.eg = lshr i32 %i.ef, 16
  %i.eh = trunc nuw i32 %i.eg to i16
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.08.i.i.i
  store i16 %i.eh, ptr %i.ei, align 2, !tbaa !122
  %i.ej = add nuw nsw i64 %.08.i.i.i, 1           ; 2 uses
  %exitcond.not.i49.i.i = icmp eq i64 %i.ej, %i.av
  br i1 %exitcond.not.i49.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i, !llvm.loop !2232

bb.q:                                             ; preds = %bb.m
  br i1 %i.am, label %bb.r, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.q
  %.not64.i.i = icmp eq i64 %i.av, 0
  br i1 %.not64.i.i, label %.loopexit.i, label %.lr.ph63.i.i

bb.r:                                             ; preds = %bb.q
  %i.ek = shl i64 %i.av, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %.03860.i, i8 0, i64 %i.ek, i1 false)
  br label %.loopexit.i

.lr.ph63.i.i:                                     ; preds = %.preheader.i.i, %.epilog-lcssa
  %.162.i.i = phi i64 [ %i.fr, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.14161.i.i = phi ptr [ %i.fq, %.epilog-lcssa ], [ %.03860.i, %.preheader.i.i ] ; 2 uses
  %.04260.i.i = phi ptr [ %i.fn, %.epilog-lcssa ], [ %i.d, %.preheader.i.i ] ; 6 uses
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph63.i.i.new

.lr.ph63.i.i.new:                                 ; preds = %.lr.ph63.i.i, %.lr.ph63.i.i.new
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.3, %.lr.ph63.i.i.new ], [ %3, %.lr.ph63.i.i ] ; 5 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ] ; 5 uses
  %.03857.i.i = phi i64 [ %i.fh, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ]
  %niter214 = phi i64 [ %niter214.next.3, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i
  %i.em = load i8, ptr %i.el, align 1, !tbaa !119
  %i.en = zext i8 %i.em to i64
  %i.eo = shl i64 %i.en, %indvars.iv.i.i.a
  %i.ep = or i64 %i.eo, %.03857.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i.i.a, 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !119
  %i.et = zext i8 %i.es to i64
  %i.eu = shl i64 %i.et, %indvars.iv.next.i
  %i.ev = or i64 %i.eu, %i.ep
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.i.a, 16
  %i.ew = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !119
  %i.ez = zext i8 %i.ey to i64
  %i.fa = shl i64 %i.ez, %indvars.iv.next.i.1
  %i.fb = or i64 %i.fa, %i.ev
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.i.a, 24
  %i.fc = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 3
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !119
  %i.ff = zext i8 %i.fe to i64
  %i.fg = shl i64 %i.ff, %indvars.iv.next.i.2
  %i.fh = or i64 %i.fg, %i.fb                     ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.i.a, 32 ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter214.next.3 = add i64 %niter214, 4         ; 2 uses
  %niter214.ncmp.3 = icmp eq i64 %niter214.next.3, %unroll_iter213
  br i1 %niter214.ncmp.3, label %.unr-lcssa, label %.lr.ph63.i.i.new, !llvm.loop !2233

.unr-lcssa:                                       ; preds = %.lr.ph63.i.i.new
  br i1 %lcmp.mod210.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph63.i.i
  %indvars.iv.i.i.epil.init.a = phi i64 [ %3, %.lr.ph63.i.i ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph63.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03857.i.i.epil.init = phi i64 [ 0, %.lr.ph63.i.i ], [ %i.fh, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod212)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %indvars.iv.i.i.epil.a = phi i64 [ %indvars.iv.next.i.epil, %bb.s ], [ %indvars.iv.i.i.epil.init.a, %.epil.preheader ] ; 2 uses
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %bb.s ], [ %indvars.iv.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.03857.i.i.epil = phi i64 [ %i.fm, %bb.s ], [ %.03857.i.i.epil.init, %.epil.preheader ]
  %epil.iter209 = phi i64 [ %epil.iter209.next, %bb.s ], [ 0, %.epil.preheader ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.epil
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !119
  %i.fk = zext i8 %i.fj to i64
  %i.fl = shl i64 %i.fk, %indvars.iv.i.i.epil.a
  %i.fm = or i64 %i.fl, %.03857.i.i.epil          ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.a, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter209.next = add i64 %epil.iter209, 1   ; 2 uses
  %epil.iter209.cmp.not = icmp eq i64 %epil.iter209.next, %xtraiter208
  br i1 %epil.iter209.cmp.not, label %.epilog-lcssa, label %bb.s, !llvm.loop !2234

.epilog-lcssa:                                    ; preds = %bb.s, %.unr-lcssa
  %.lcssa = phi i64 [ %i.fh, %.unr-lcssa ], [ %i.fm, %bb.s ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %i.al
  %i.fo = lshr i64 %.lcssa, 48
  %i.fp = trunc nuw i64 %i.fo to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %.14161.i.i, i64 2
  store i16 %i.fp, ptr %.14161.i.i, align 2, !tbaa !122
  %i.fr = add nuw i64 %.162.i.i, 1                ; 2 uses
  %exitcond72.not.i.i = icmp eq i64 %i.fr, %i.av
  br i1 %exitcond72.not.i.i, label %.loopexit.i, label %.lr.ph63.i.i, !llvm.loop !2235

.loopexit.i:                                      ; preds = %.lr.ph.i48.i.i, %.lr.ph.i45.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block188, %middle.block176, %middle.block161, %vec.epilog.middle.block, %bb.r, %.preheader.i.i, %bb.p, %bb.o, %bb.n, %.lr.ph.i.preheader.i, %.preheader51.i.i
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %i.av
  %i.ft = sub i64 %.04059.i, %i.ar                ; 2 uses
  %i.fu = add i64 %i.ar, %.03761.i                ; 2 uses
  %.not48.i = icmp eq i64 %i.ft, 0
  br i1 %.not48.i, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit, label %bb.k

ma_dr_wav_read_pcm_frames_s16__pcm.exit:          ; preds = %bb.k, %bb.l, %.loopexit.i, %.split.i, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i, %bb.j
  %.042.i = phi i64 [ %i.t, %.split.i ], [ 0, %bb.j ], [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i ], [ %.03761.i, %bb.k ], [ %i.fu, %.loopexit.i ], [ %.03761.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %bb.az

bb.t:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !694
  %i.fx = zext i16 %i.fw to i32                   ; 2 uses
  %i.fy = and i32 %i.fx, 7
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !695
  %i.gc = zext i16 %i.gb to i32
  %i.gd = mul nuw nsw i32 %i.gc, %i.fx
  %i.ge = lshr exact i32 %i.gd, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i40

bb.v:                                             ; preds = %bb.t
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gg = load i16, ptr %i.gf, align 8, !tbaa !696
  %i.gh = zext i16 %i.gg to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i40

ma_dr_wav_get_bytes_per_pcm_frame.exit.i40:       ; preds = %bb.u, %bb.v
  %.0.i.i38 = phi i32 [ %i.ge, %bb.u ], [ %i.gh, %bb.v ] ; 5 uses
  %.old.i41 = icmp eq i32 %.0.i.i38, 0
  br i1 %.old.i41, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.w

bb.w:                                             ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i40
  %i.gi = zext i16 %i.j to i32                    ; 3 uses
  %i.gj = udiv i32 %.0.i.i38, %i.gi
  %i.gk = urem i32 %.0.i.i38, %i.gi
  %.fr.i = freeze i32 %i.gj                       ; 2 uses
  %i.gl = icmp samesign uge i32 %.0.i.i38, %i.gi
  %.not.i42 = icmp eq i32 %i.gk, 0
  %or.cond221.a = and i1 %i.gl, %.not.i42
  br i1 %or.cond221.a, label %.preheader.i43, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit

.preheader.i43:                                   ; preds = %bb.w
  %i.gm = udiv i32 4096, %.0.i.i38
  %i.gn = zext nneg i32 %i.gm to i64              ; 3 uses
  %i.go = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us54.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i43, %.loopexit.us.i
  %.03353.us.i = phi i64 [ %i.hw, %.loopexit.us.i ], [ 0, %.preheader.i43 ] ; 3 uses
  %.03452.us.i = phi ptr [ %i.hu, %.loopexit.us.i ], [ %2, %.preheader.i43 ] ; 3 uses
  %.03651.us.i = phi i64 [ %i.hv, %.loopexit.us.i ], [ %.033, %.preheader.i43 ] ; 2 uses
  %.036..us.i = call i64 @llvm.umin.i64(i64 %.03651.us.i, i64 %i.gn)
  %i.gp = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.036..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.x

bb.x:                                             ; preds = %.preheader.split.us.i
  %i.gr = load i16, ptr %i.i, align 8, !tbaa !692
  %i.gs = zext i16 %i.gr to i64
  %i.gt = mul i64 %i.gp, %i.gs                    ; 7 uses
  %i.gu = mul i64 %i.gt, %i.go
  %i.gv = icmp ugt i64 %i.gu, 4096
  br i1 %i.gv, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i.i.us.i = icmp eq i64 %i.gt, 0
  br i1 %.not.i.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.y
  %min.iters.check = icmp ult i64 %i.gt, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.us.i.preheader196, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.us.i.preheader
  %n.vec = and i64 %i.gt, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index
  %wide.load = load <4 x float>, ptr %i.gw, align 16, !tbaa !349 ; 3 uses
  %i.gx = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.gy = fcmp ogt <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.gz = select <4 x i1> %i.gy, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load
  %i.ha = fadd <4 x float> %i.gz, splat (float 1.000000e+00)
  %i.hb = fmul <4 x float> %i.ha, splat (float 3.276750e+04)
  %i.hc = fptosi <4 x float> %i.hb to <4 x i32>
  %i.hd = trunc <4 x i32> %i.hc to <4 x i16>
  %i.he = xor <4 x i16> %i.hd, splat (i16 -32768)
  %predphi = select <4 x i1> %i.gx, <4 x i16> splat (i16 -32768), <4 x i16> %i.he
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %index
  store <4 x i16> %predphi, ptr %i.hf, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !2236

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gt, %n.vec
  br i1 %cmp.n, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader196

.lr.ph.i.i.us.i.preheader196:                     ; preds = %.lr.ph.i.i.us.i.preheader, %middle.block
  %.014.i.i.us.i.ph = phi i64 [ 0, %.lr.ph.i.i.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.us.i.preheader196, %bb.aa
  %.014.i.i.us.i = phi i64 [ %i.ht, %bb.aa ], [ %.014.i.i.us.i.ph, %.lr.ph.i.i.us.i.preheader196 ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.014.i.i.us.i
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !349 ; 3 uses
  %i.hj = fcmp olt float %i.hi, -1.000000e+00
  br i1 %i.hj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.us.i
  %i.hk = fcmp ogt float %i.hi, 1.000000e+00
  %i.hl = select i1 %i.hk, float 1.000000e+00, float %i.hi
  %i.hm = fadd float %i.hl, 1.000000e+00
  %i.hn = fmul float %i.hm, 3.276750e+04
  %i.ho = fptosi float %i.hn to i32
  %i.hp = trunc i32 %i.ho to i16
  %i.hq = xor i16 %i.hp, -32768
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i.us.i
  %i.hr = phi i16 [ %i.hq, %bb.z ], [ -32768, %.lr.ph.i.i.us.i ]
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %.014.i.i.us.i
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !122
  %i.ht = add nuw nsw i64 %.014.i.i.us.i, 1       ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.ht, %i.gt
  br i1 %exitcond.not.i.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i, !llvm.loop !2237

.loopexit.us.i:                                   ; preds = %bb.aa, %middle.block, %bb.y
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %i.gt
  %i.hv = sub i64 %.03651.us.i, %i.gp             ; 2 uses
  %i.hw = add i64 %i.gp, %.03353.us.i             ; 2 uses
  %.not44.us.i = icmp eq i64 %i.hv, 0
  br i1 %.not44.us.i, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %.preheader.split.us.i

.preheader.split.us54.i:                          ; preds = %.preheader.i43, %.loopexit50.us.i
  %.03353.us55.i = phi i64 [ %i.it, %.loopexit50.us.i ], [ 0, %.preheader.i43 ] ; 3 uses
  %.03452.us56.i = phi ptr [ %i.ir, %.loopexit50.us.i ], [ %2, %.preheader.i43 ] ; 2 uses
  %.03651.us57.i = phi i64 [ %i.is, %.loopexit50.us.i ], [ %.033, %.preheader.i43 ] ; 2 uses
  %.036..us58.i = call i64 @llvm.umin.i64(i64 %.03651.us57.i, i64 %i.gn)
  %i.hx = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.036..us58.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.ab

bb.ab:                                            ; preds = %.preheader.split.us54.i
  %i.hz = load i16, ptr %i.i, align 8, !tbaa !692
  %i.ia = zext i16 %i.hz to i64
  %i.ib = mul i64 %i.hx, %i.ia                    ; 4 uses
  %i.ic = mul i64 %i.ib, %i.go
  %i.id = icmp ugt i64 %i.ic, 4096
  br i1 %i.id, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i9.i.us.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i9.i.us.i, label %.loopexit50.us.i, label %.lr.ph.i10.i.us.i

.lr.ph.i10.i.us.i:                                ; preds = %bb.ac, %bb.ae
  %.014.i11.i.us.i = phi i64 [ %i.iq, %bb.ae ], [ 0, %bb.ac ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.014.i11.i.us.i
  %i.if = load double, ptr %i.ie, align 8, !tbaa !404 ; 3 uses
  %i.ig = fcmp olt double %i.if, -1.000000e+00
  br i1 %i.ig, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i10.i.us.i
  %i.ih = fcmp ogt double %i.if, 1.000000e+00
  %i.ii = select i1 %i.ih, double 1.000000e+00, double %i.if
  %i.ij = fadd double %i.ii, 1.000000e+00
  %i.ik = fmul double %i.ij, 3.276750e+04
  %i.il = fptosi double %i.ik to i32
  %i.im = trunc i32 %i.il to i16
  %i.in = xor i16 %i.im, -32768
  br label %bb.ae
end_hunk_2
begin_hunk_3_@ma_dr_wav_read_pcm_frames_s16:bb.a

.lr.ph.i.i67.preheader:                           ; preds = %bb.aw
  %xtraiter = and i64 %i.mt, 3                    ; 3 uses
  %i.mw = icmp ult i64 %i.mt, 4
  br i1 %i.mw, label %.lr.ph.i.i67.epil.preheader, label %.lr.ph.i.i67.preheader.new

.lr.ph.i.i67.preheader.new:                       ; preds = %.lr.ph.i.i67.preheader
  %unroll_iter = and i64 %i.mt, -4
  br label %.lr.ph.i.i67

.lr.ph.i.i67:                                     ; preds = %.lr.ph.i.i67, %.lr.ph.i.i67.preheader.new
  %.06.i.i68 = phi i64 [ 0, %.lr.ph.i.i67.preheader.new ], [ %i.ny, %.lr.ph.i.i67 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i67.preheader.new ], [ %niter.next.3, %.lr.ph.i.i67 ]
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06.i.i68
  %i.my = load i8, ptr %i.mx, align 4, !tbaa !119
  %i.mz = zext i8 %i.my to i64
  %i.na = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.mz
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !122
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %.06.i.i68
  store i16 %i.nb, ptr %i.nc, align 2, !tbaa !122
  %i.nd = or disjoint i64 %.06.i.i68, 1           ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !119
  %i.ng = zext i8 %i.nf to i64
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.ng
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !122
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %i.nd
  store i16 %i.ni, ptr %i.nj, align 2, !tbaa !122
  %i.nk = or disjoint i64 %.06.i.i68, 2           ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 2, !tbaa !119
  %i.nn = zext i8 %i.nm to i64
  %i.no = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.nn
  %i.np = load i16, ptr %i.no, align 2, !tbaa !122
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %i.nk
  store i16 %i.np, ptr %i.nq, align 2, !tbaa !122
  %i.nr = or disjoint i64 %.06.i.i68, 3           ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !119
  %i.nu = zext i8 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.nu
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !122
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %i.nr
  store i16 %i.nw, ptr %i.nx, align 2, !tbaa !122
  %i.ny = add nuw nsw i64 %.06.i.i68, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i70.loopexit.unr-lcssa, label %.lr.ph.i.i67, !llvm.loop !55

.loopexit.i70.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i67
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i70, label %.lr.ph.i.i67.epil.preheader

.lr.ph.i.i67.epil.preheader:                      ; preds = %.loopexit.i70.loopexit.unr-lcssa, %.lr.ph.i.i67.preheader
  %.06.i.i68.epil.init = phi i64 [ 0, %.lr.ph.i.i67.preheader ], [ %i.ny, %.loopexit.i70.loopexit.unr-lcssa ]
  %lcmp.mod201 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod201)
  br label %.lr.ph.i.i67.epil

.lr.ph.i.i67.epil:                                ; preds = %.lr.ph.i.i67.epil, %.lr.ph.i.i67.epil.preheader
  %.06.i.i68.epil = phi i64 [ %i.of, %.lr.ph.i.i67.epil ], [ %.06.i.i68.epil.init, %.lr.ph.i.i67.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i67.epil ], [ 0, %.lr.ph.i.i67.epil.preheader ]
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06.i.i68.epil
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !119
  %i.ob = zext i8 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.ob
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !122
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %.06.i.i68.epil
  store i16 %i.od, ptr %i.oe, align 2, !tbaa !122
  %i.of = add nuw nsw i64 %.06.i.i68.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i70, label %.lr.ph.i.i67.epil, !llvm.loop !2239

.loopexit.i70:                                    ; preds = %.loopexit.i70.loopexit.unr-lcssa, %.lr.ph.i.i67.epil, %bb.aw
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %.03351.i63, i64 %i.mt
  %i.oh = sub i64 %.03550.i64, %i.mp              ; 2 uses
  %i.oi = add i64 %i.mp, %.03252.i62              ; 2 uses
  %.not43.i71 = icmp eq i64 %i.oh, 0
  br i1 %.not43.i71, label %ma_dr_wav_read_pcm_frames_s16__mulaw.exit, label %bb.au

ma_dr_wav_read_pcm_frames_s16__mulaw.exit:        ; preds = %bb.au, %bb.av, %.loopexit.i70, %bb.as, %bb.at
  %.037.i60 = phi i64 [ 0, %bb.at ], [ 0, %bb.as ], [ %.03252.i62, %bb.au ], [ %i.oi, %.loopexit.i70 ], [ %.03252.i62, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.az

bb.ax:                                            ; preds = %bb.f
  %i.oj = tail call fastcc i64 @ma_dr_wav_read_pcm_frames_s16__msadpcm(ptr noundef %0, i64 noundef %.033, ptr noundef %2)
  br label %bb.az

bb.ay:                                            ; preds = %bb.f
  %i.ok = tail call fastcc i64 @ma_dr_wav_read_pcm_frames_s16__ima(ptr noundef %0, i64 noundef %.033, ptr noundef %2)
  br label %bb.az

bb.az:                                            ; preds = %bb.f, %bb.a, %bb.ay, %bb.ax, %ma_dr_wav_read_pcm_frames_s16__mulaw.exit, %ma_dr_wav_read_pcm_frames_s16__alaw.exit, %ma_dr_wav_read_pcm_frames_s16__ieee.exit, %ma_dr_wav_read_pcm_frames_s16__pcm.exit, %bb.c
  %.0 = phi i64 [ 0, %bb.a ], [ %i.h, %bb.c ], [ %.042.i, %ma_dr_wav_read_pcm_frames_s16__pcm.exit ], [ %.038.i, %ma_dr_wav_read_pcm_frames_s16__ieee.exit ], [ %.037.i, %ma_dr_wav_read_pcm_frames_s16__alaw.exit ], [ %.037.i60, %ma_dr_wav_read_pcm_frames_s16__mulaw.exit ], [ %i.oj, %bb.ax ], [ %i.ok, %bb.ay ], [ 0, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_wav_read_pcm_frames_s32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 10 uses
  %i.d = alloca [2048 x i16], align 16            ; 5 uses
  %i.e = alloca [4096 x i8], align 16             ; 16 uses
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq i64 %1, 0
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !692  ; 11 uses
  %i.l = zext i16 %i.k to i64
  %i.m = mul i64 %1, %i.l
  %i.n = and i64 %i.m, 4611686017353646080
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.rhs.trunc93 = zext i16 %i.k to i32
  %i.o = udiv i32 1073741823, %.rhs.trunc93
  %.zext94 = zext nneg i32 %i.o to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.030 = phi i64 [ %.zext94, %bb.e ], [ %1, %bb.d ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.q = load i16, ptr %i.p, align 4, !tbaa !693
  switch i16 %i.q, label %bb.ax [
    i16 1, label %bb.g
    i16 2, label %bb.u
    i16 17, label %bb.u
    i16 3, label %bb.x
    i16 6, label %bb.ah
    i16 7, label %bb.ap
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.s = load i16, ptr %i.r, align 2, !tbaa !694  ; 2 uses
  %i.t = icmp eq i16 %i.s, 32
  br i1 %i.t, label %bb.h, label %._crit_edge.i

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %.030, ptr noundef nonnull %2)
  br label %ma_dr_wav_read_pcm_frames_s32__pcm.exit

._crit_edge.i:                                    ; preds = %bb.g
  %i.v = zext i16 %i.s to i32                     ; 2 uses
  %i.w = and i32 %i.v, 7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.z = load i16, ptr %i.y, align 2, !tbaa !695
  %i.aa = zext i16 %i.z to i32
  %i.ab = mul nuw nsw i32 %i.aa, %i.v
  %i.ac = lshr exact i32 %i.ab, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !696
  %i.af = zext i16 %i.ae to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

ma_dr_wav_get_bytes_per_pcm_frame.exit.i:         ; preds = %bb.i, %bb.j
  %.0.i.i = phi i32 [ %i.ac, %bb.i ], [ %i.af, %bb.j ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %ma_dr_wav_read_pcm_frames_s32__pcm.exit, label %bb.k

bb.k:                                             ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i
  %i.ag = zext i16 %i.k to i32                    ; 3 uses
  %i.ah = udiv i32 %.0.i.i, %i.ag                 ; 5 uses
  %i.ai = urem i32 %.0.i.i, %i.ag
  %i.aj = icmp samesign uge i32 %.0.i.i, %i.ag
  %.not.i = icmp eq i32 %i.ai, 0
  %or.cond279.a = and i1 %i.aj, %.not.i
  br i1 %or.cond279.a, label %.preheader.i, label %ma_dr_wav_read_pcm_frames_s32__pcm.exit

.preheader.i:                                     ; preds = %bb.k
  %i.ak = udiv i32 4096, %.0.i.i
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = zext nneg i32 %i.ah to i64              ; 4 uses
  %i.an = icmp samesign ugt i32 %i.ah, 8
  %i.ao = shl nuw nsw i32 %i.ah, 3
  %i.ap = sub nsw i32 64, %i.ao
  %3 = zext i32 %i.ap to i64                      ; 2 uses
  %xtraiter265 = and i64 %i.am, 3                 ; 3 uses
  %i.aq = add nsw i32 %i.ah, -1
  %i.ar = icmp ult i32 %i.aq, 3
  %unroll_iter270 = and i64 %i.am, 12
  %lcmp.mod267.not = icmp eq i64 %xtraiter265, 0
  %lcmp.mod269 = icmp ne i64 %xtraiter265, 0
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03558.i = phi i64 [ 0, %.preheader.i ], [ %i.gn, %.loopexit.i ] ; 3 uses
  %.03657.i = phi ptr [ %2, %.preheader.i ], [ %i.gl, %.loopexit.i ] ; 16 uses
  %.03856.i = phi i64 [ %.030, %.preheader.i ], [ %i.gm, %.loopexit.i ] ; 2 uses
  %.038..i = call i64 @llvm.umin.i64(i64 %.03856.i, i64 %i.al)
  %i.as = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.038..i, ptr noundef nonnull %i.e) ; 4 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %ma_dr_wav_read_pcm_frames_s32__pcm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i16, ptr %i.j, align 8, !tbaa !692
  %i.av = zext i16 %i.au to i64
  %i.aw = mul i64 %i.as, %i.av                    ; 26 uses
  %i.ax = mul i64 %i.aw, %i.am
  %i.ay = icmp ugt i64 %i.ax, 4096
  br i1 %i.ay, label %ma_dr_wav_read_pcm_frames_s32__pcm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i32 %i.ah, label %bb.r [
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 4, label %.preheader56.i.i
  ]

.preheader56.i.i:                                 ; preds = %bb.n
  %.not67.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not67.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader56.i.i
  %min.iters.check230 = icmp ult i64 %i.aw, 12
  br i1 %min.iters.check230, label %.lr.ph.i.i.preheader249, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.preheader
  %i.az = add i64 %i.aw, -1                       ; 2 uses
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = icmp eq i64 %i.ba, 4294967295
  %i.bc = icmp ugt i64 %i.az, 4294967295
  %i.bd = or i1 %i.bb, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i.preheader249, label %vector.ph231

vector.ph231:                                     ; preds = %vector.scevcheck
  %n.vec232 = and i64 %i.aw, 8589934584           ; 4 uses
  %i.be = shl nuw nsw i64 %n.vec232, 2
  %i.bf = getelementptr i8, ptr %.03657.i, i64 %i.be
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next238, %vector.body233 ] ; 3 uses
  %i.bg = shl i64 %index234, 2
  %next.gep235 = getelementptr i8, ptr %.03657.i, i64 %i.bg ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index234 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load236 = load <4 x i32>, ptr %i.bh, align 16, !tbaa !118
  %wide.load237 = load <4 x i32>, ptr %i.bi, align 16, !tbaa !118
  %i.bj = getelementptr i8, ptr %next.gep235, i64 16
  store <4 x i32> %wide.load236, ptr %next.gep235, align 4, !tbaa !118
  store <4 x i32> %wide.load237, ptr %i.bj, align 4, !tbaa !118
  %index.next238 = add nuw i64 %index234, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next238, %n.vec232
  br i1 %i.bk, label %middle.block239, label %vector.body233, !llvm.loop !2240

middle.block239:                                  ; preds = %vector.body233
  %cmp.n240 = icmp eq i64 %i.aw, %n.vec232
  br i1 %cmp.n240, label %.loopexit.i, label %.lr.ph.i.i.preheader249

.lr.ph.i.i.preheader249:                          ; preds = %vector.scevcheck, %.lr.ph.i.i.preheader, %middle.block239
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec232, %middle.block239 ]
  %.04058.i.i.ph = phi ptr [ %.03657.i, %vector.scevcheck ], [ %.03657.i, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block239 ]
  br label %.lr.ph.i.i

bb.o:                                             ; preds = %bb.n
  %.not52.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not52.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.o
  %min.iters.check190 = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check190, label %.lr.ph.i.i.i.preheader243, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec192 = and i64 %i.aw, -8                   ; 4 uses
  %i.bl = shl i64 %n.vec192, 2
  %i.bm = getelementptr i8, ptr %.03657.i, i64 %i.bl
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body193 ] ; 3 uses
  %i.bn = shl i64 %index194, 2
  %next.gep195 = getelementptr i8, ptr %.03657.i, i64 %i.bn ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 %index194 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %wide.load196 = load <4 x i8>, ptr %i.bo, align 8, !tbaa !119
  %wide.load197 = load <4 x i8>, ptr %i.bp, align 4, !tbaa !119
  %i.bq = zext <4 x i8> %wide.load196 to <4 x i32>
  %i.br = zext <4 x i8> %wide.load197 to <4 x i32>
  %i.bs = shl nuw <4 x i32> %i.bq, splat (i32 24)
  %i.bt = shl nuw <4 x i32> %i.br, splat (i32 24)
  %i.bu = xor <4 x i32> %i.bs, splat (i32 -2147483648)
  %i.bv = xor <4 x i32> %i.bt, splat (i32 -2147483648)
  %i.bw = getelementptr i8, ptr %next.gep195, i64 16
  store <4 x i32> %i.bu, ptr %next.gep195, align 4, !tbaa !118
  store <4 x i32> %i.bv, ptr %i.bw, align 4, !tbaa !118
  %index.next198 = add nuw i64 %index194, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.bx, label %middle.block199, label %vector.body193, !llvm.loop !2241

middle.block199:                                  ; preds = %vector.body193
  %cmp.n200 = icmp eq i64 %i.aw, %n.vec192
  br i1 %cmp.n200, label %.loopexit.i, label %.lr.ph.i.i.i.preheader243

.lr.ph.i.i.i.preheader243:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block199
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec192, %middle.block199 ]
  %.0811.i.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i.i.i.preheader ], [ %i.bm, %middle.block199 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader243, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.ce, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader243 ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %.0811.i.i.i.ph, %.lr.ph.i.i.i.preheader243 ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 %.012.i.i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !119
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw i32 %i.ca, 24
  %i.cc = xor i32 %i.cb, -2147483648
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  store i32 %i.cc, ptr %.0811.i.i.i, align 4, !tbaa !118
  %i.ce = add nuw nsw i64 %.012.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ce, %i.aw
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !2242

bb.p:                                             ; preds = %bb.n
  %.not51.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not51.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %bb.p
  %min.iters.check204 = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check204, label %.lr.ph.i45.i.i.preheader245, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph.i45.i.i.preheader
  %n.vec206 = and i64 %i.aw, -8                   ; 4 uses
  %i.cf = shl i64 %n.vec206, 2
  %i.cg = getelementptr i8, ptr %.03657.i, i64 %i.cf
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next212, %vector.body207 ] ; 3 uses
  %i.ch = shl i64 %index208, 2
  %next.gep209 = getelementptr i8, ptr %.03657.i, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index208 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %wide.load210 = load <4 x i16>, ptr %i.ci, align 16, !tbaa !122
  %wide.load211 = load <4 x i16>, ptr %i.cj, align 8, !tbaa !122
  %i.ck = sext <4 x i16> %wide.load210 to <4 x i32>
  %i.cl = sext <4 x i16> %wide.load211 to <4 x i32>
  %i.cm = shl nsw <4 x i32> %i.ck, splat (i32 16)
  %i.cn = shl nsw <4 x i32> %i.cl, splat (i32 16)
  %i.co = getelementptr i8, ptr %next.gep209, i64 16
  store <4 x i32> %i.cm, ptr %next.gep209, align 4, !tbaa !118
  store <4 x i32> %i.cn, ptr %i.co, align 4, !tbaa !118
  %index.next212 = add nuw i64 %index208, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next212, %n.vec206
  br i1 %i.cp, label %middle.block213, label %vector.body207, !llvm.loop !2243

middle.block213:                                  ; preds = %vector.body207
  %cmp.n214 = icmp eq i64 %i.aw, %n.vec206
  br i1 %cmp.n214, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader245

.lr.ph.i45.i.i.preheader245:                      ; preds = %.lr.ph.i45.i.i.preheader, %middle.block213
  %.012.i46.i.i.ph = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec206, %middle.block213 ]
  %.0811.i47.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i45.i.i.preheader ], [ %i.cg, %middle.block213 ]
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.preheader245, %.lr.ph.i45.i.i
  %.012.i46.i.i = phi i64 [ %i.cv, %.lr.ph.i45.i.i ], [ %.012.i46.i.i.ph, %.lr.ph.i45.i.i.preheader245 ] ; 2 uses
  %.0811.i47.i.i = phi ptr [ %i.cu, %.lr.ph.i45.i.i ], [ %.0811.i47.i.i.ph, %.lr.ph.i45.i.i.preheader245 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.012.i46.i.i
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !122
  %i.cs = sext i16 %i.cr to i32
  %i.ct = shl nsw i32 %i.cs, 16
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i47.i.i, i64 4
  store i32 %i.ct, ptr %.0811.i47.i.i, align 4, !tbaa !118
  %i.cv = add nuw nsw i64 %.012.i46.i.i, 1        ; 2 uses
  %exitcond.not.i48.i.i = icmp eq i64 %i.cv, %i.aw
  br i1 %exitcond.not.i48.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i, !llvm.loop !2244

bb.q:                                             ; preds = %bb.n
  %.not.i46.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i46.i, label %.loopexit.i, label %.lr.ph.i49.i.i.preheader

.lr.ph.i49.i.i.preheader:                         ; preds = %bb.q
  %min.iters.check218 = icmp ult i64 %i.aw, 4
  br i1 %min.iters.check218, label %.lr.ph.i49.i.i.preheader247, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph.i49.i.i.preheader
  %n.vec220 = and i64 %i.aw, -4                   ; 4 uses
  %i.cw = shl i64 %n.vec220, 2
  %i.cx = getelementptr i8, ptr %.03657.i, i64 %i.cw
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next224, %vector.body221 ] ; 6 uses
  %i.cy = shl i64 %index222, 2
  %next.gep223 = getelementptr i8, ptr %.03657.i, i64 %i.cy
  %i.cz = mul i64 %index222, 3
  %i.da = mul i64 %index222, 3
  %i.db = mul i64 %index222, 3
  %i.dc = mul i64 %index222, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cz ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.da ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 3
  %i.dg = getelementptr i8, ptr %i.e, i64 %i.db   ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 6
  %i.di = getelementptr i8, ptr %i.e, i64 %i.dc   ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 9
  %i.dk = load i16, ptr %i.dd, align 4
  %i.dl = load i16, ptr %i.df, align 1
  %i.dm = load i16, ptr %i.dh, align 2
  %i.dn = load i16, ptr %i.dj, align 1
  %i.do = insertelement <4 x i16> poison, i16 %i.dk, i64 0
  %i.dp = insertelement <4 x i16> %i.do, i16 %i.dl, i64 1
  %i.dq = insertelement <4 x i16> %i.dp, i16 %i.dm, i64 2
  %i.dr = insertelement <4 x i16> %i.dq, i16 %i.dn, i64 3
  %i.ds = zext <4 x i16> %i.dr to <4 x i32>
  %i.dt = shl nuw nsw <4 x i32> %i.ds, splat (i32 8)
  %i.du = getelementptr i8, ptr %i.dd, i64 2
  %i.dv = getelementptr i8, ptr %i.de, i64 5
  %i.dw = getelementptr i8, ptr %i.dg, i64 8
  %i.dx = getelementptr i8, ptr %i.di, i64 11
  %i.dy = load i8, ptr %i.du, align 2, !tbaa !119
  %i.dz = load i8, ptr %i.dv, align 1, !tbaa !119
  %i.ea = load i8, ptr %i.dw, align 4, !tbaa !119
  %i.eb = load i8, ptr %i.dx, align 1, !tbaa !119
  %i.ec = insertelement <4 x i8> poison, i8 %i.dy, i64 0
  %i.ed = insertelement <4 x i8> %i.ec, i8 %i.dz, i64 1
  %i.ee = insertelement <4 x i8> %i.ed, i8 %i.ea, i64 2
  %i.ef = insertelement <4 x i8> %i.ee, i8 %i.eb, i64 3
  %i.eg = zext <4 x i8> %i.ef to <4 x i32>
  %i.eh = shl nuw <4 x i32> %i.eg, splat (i32 24)
  %i.ei = or disjoint <4 x i32> %i.eh, %i.dt
  store <4 x i32> %i.ei, ptr %next.gep223, align 4, !tbaa !118
  %index.next224 = add nuw i64 %index222, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next224, %n.vec220
  br i1 %i.ej, label %middle.block225, label %vector.body221, !llvm.loop !2245

middle.block225:                                  ; preds = %vector.body221
  %cmp.n226 = icmp eq i64 %i.aw, %n.vec220
  br i1 %cmp.n226, label %.loopexit.i, label %.lr.ph.i49.i.i.preheader247

.lr.ph.i49.i.i.preheader247:                      ; preds = %.lr.ph.i49.i.i.preheader, %middle.block225
  %.020.i.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i49.i.i.preheader ], [ %i.cx, %middle.block225 ]
  %.01619.i.i.i.ph = phi i64 [ 0, %.lr.ph.i49.i.i.preheader ], [ %n.vec220, %middle.block225 ]
  br label %.lr.ph.i49.i.i

.lr.ph.i49.i.i:                                   ; preds = %.lr.ph.i49.i.i.preheader247, %.lr.ph.i49.i.i
  %.020.i.i.i = phi ptr [ %i.eu, %.lr.ph.i49.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i49.i.i.preheader247 ] ; 2 uses
  %.01619.i.i.i = phi i64 [ %i.ev, %.lr.ph.i49.i.i ], [ %.01619.i.i.i.ph, %.lr.ph.i49.i.i.preheader247 ] ; 2 uses
  %i.ek = mul i64 %.01619.i.i.i, 3
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ek ; 2 uses
  %i.em = load i16, ptr %i.el, align 1
  %i.en = zext i16 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 8
  %i.ep = getelementptr i8, ptr %i.el, i64 2
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !119
  %i.er = zext i8 %i.eq to i32
  %i.es = shl nuw i32 %i.er, 24
  %i.et = or disjoint i32 %i.es, %i.eo
  %i.eu = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  store i32 %i.et, ptr %.020.i.i.i, align 4, !tbaa !118
  %i.ev = add nuw i64 %.01619.i.i.i, 1            ; 2 uses
  %exitcond.not.i50.i.i = icmp eq i64 %i.ev, %i.aw
  br i1 %exitcond.not.i50.i.i, label %.loopexit.i, label %.lr.ph.i49.i.i, !llvm.loop !2246

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader249, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader249 ] ; 2 uses
  %.04058.i.i = phi ptr [ %i.ey, %.lr.ph.i.i ], [ %.04058.i.i.ph, %.lr.ph.i.i.preheader249 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !118
  %i.ey = getelementptr inbounds nuw i8, ptr %.04058.i.i, i64 4
  store i32 %i.ex, ptr %.04058.i.i, align 4, !tbaa !118
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ez = and i64 %indvars.iv.next.i.i, 4294967295
  %i.fa = icmp ugt i64 %i.aw, %i.ez
  br i1 %i.fa, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !2247

bb.r:                                             ; preds = %bb.n
  br i1 %i.an, label %bb.s, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.r
  %.not68.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not68.i.i, label %.loopexit.i, label %.lr.ph66.i.i

bb.s:                                             ; preds = %bb.r
  %i.fb = shl i64 %i.aw, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03657.i, i8 0, i64 %i.fb, i1 false)
  br label %.loopexit.i

.lr.ph66.i.i:                                     ; preds = %.preheader.i.i, %.epilog-lcssa
  %.165.i.i = phi i32 [ %i.gi, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.14164.i.i = phi ptr [ %i.gh, %.epilog-lcssa ], [ %.03657.i, %.preheader.i.i ] ; 2 uses
  %.04263.i.i = phi ptr [ %i.ge, %.epilog-lcssa ], [ %i.e, %.preheader.i.i ] ; 6 uses
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph66.i.i.new

.lr.ph66.i.i.new:                                 ; preds = %.lr.ph66.i.i, %.lr.ph66.i.i.new
  %indvars.iv75.i.i.a = phi i64 [ %indvars.iv.next.i.3, %.lr.ph66.i.i.new ], [ %3, %.lr.ph66.i.i ] ; 5 uses
  %indvars.iv75.i.i = phi i64 [ %indvars.iv.next76.i.i.3, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ] ; 5 uses
  %.03860.i.i = phi i64 [ %i.fy, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ]
  %niter271 = phi i64 [ %niter271.next.3, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !119
  %i.fe = zext i8 %i.fd to i64
  %i.ff = shl i64 %i.fe, %indvars.iv75.i.i.a
  %i.fg = or i64 %i.ff, %.03860.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv75.i.i.a, 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !119
  %i.fk = zext i8 %i.fj to i64
  %i.fl = shl i64 %i.fk, %indvars.iv.next.i
  %i.fm = or i64 %i.fl, %i.fg
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv75.i.i.a, 16
  %i.fn = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !119
  %i.fq = zext i8 %i.fp to i64
  %i.fr = shl i64 %i.fq, %indvars.iv.next.i.1
  %i.fs = or i64 %i.fr, %i.fm
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv75.i.i.a, 24
  %i.ft = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 3
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !119
  %i.fw = zext i8 %i.fv to i64
  %i.fx = shl i64 %i.fw, %indvars.iv.next.i.2
  %i.fy = or i64 %i.fx, %i.fs                     ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv75.i.i.a, 32 ; 2 uses
  %indvars.iv.next76.i.i.3 = add nuw nsw i64 %indvars.iv75.i.i, 4 ; 2 uses
  %niter271.next.3 = add i64 %niter271, 4         ; 2 uses
  %niter271.ncmp.3 = icmp eq i64 %niter271.next.3, %unroll_iter270
  br i1 %niter271.ncmp.3, label %.unr-lcssa, label %.lr.ph66.i.i.new, !llvm.loop !2248

.unr-lcssa:                                       ; preds = %.lr.ph66.i.i.new
  br i1 %lcmp.mod267.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph66.i.i
  %indvars.iv75.i.i.epil.init.a = phi i64 [ %3, %.lr.ph66.i.i ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %indvars.iv75.i.i.epil.init = phi i64 [ 0, %.lr.ph66.i.i ], [ %indvars.iv.next76.i.i.3, %.unr-lcssa ]
  %.03860.i.i.epil.init = phi i64 [ 0, %.lr.ph66.i.i ], [ %i.fy, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod269)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv75.i.i.epil.a = phi i64 [ %indvars.iv.next.i.epil, %bb.t ], [ %indvars.iv75.i.i.epil.init.a, %.epil.preheader ] ; 2 uses
  %indvars.iv75.i.i.epil = phi i64 [ %indvars.iv.next76.i.i.epil, %bb.t ], [ %indvars.iv75.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.03860.i.i.epil = phi i64 [ %i.gd, %bb.t ], [ %.03860.i.i.epil.init, %.epil.preheader ]
  %epil.iter266 = phi i64 [ %epil.iter266.next, %bb.t ], [ 0, %.epil.preheader ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i.epil
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !119
  %i.gb = zext i8 %i.ga to i64
  %i.gc = shl i64 %i.gb, %indvars.iv75.i.i.epil.a
  %i.gd = or i64 %i.gc, %.03860.i.i.epil          ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv75.i.i.epil.a, 8
  %indvars.iv.next76.i.i.epil = add nuw nsw i64 %indvars.iv75.i.i.epil, 1
  %epil.iter266.next = add i64 %epil.iter266, 1   ; 2 uses
  %epil.iter266.cmp.not = icmp eq i64 %epil.iter266.next, %xtraiter265
  br i1 %epil.iter266.cmp.not, label %.epilog-lcssa, label %bb.t, !llvm.loop !2249

.epilog-lcssa:                                    ; preds = %bb.t, %.unr-lcssa
  %.lcssa = phi i64 [ %i.fy, %.unr-lcssa ], [ %i.gd, %bb.t ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %i.am
  %i.gf = lshr i64 %.lcssa, 32
  %i.gg = trunc nuw i64 %i.gf to i32
  %i.gh = getelementptr inbounds nuw i8, ptr %.14164.i.i, i64 4
  store i32 %i.gg, ptr %.14164.i.i, align 4, !tbaa !118
  %i.gi = add i32 %.165.i.i, 1                    ; 2 uses
  %i.gj = zext i32 %i.gi to i64
  %i.gk = icmp ugt i64 %i.aw, %i.gj
  br i1 %i.gk, label %.lr.ph66.i.i, label %.loopexit.i, !llvm.loop !2250

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i49.i.i, %.lr.ph.i45.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block239, %middle.block225, %middle.block213, %middle.block199, %bb.s, %.preheader.i.i, %bb.q, %bb.p, %bb.o, %.preheader56.i.i
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.03657.i, i64 %i.aw
  %i.gm = sub i64 %.03856.i, %i.as                ; 2 uses
  %i.gn = add i64 %i.as, %.03558.i                ; 2 uses
  %.not45.i = icmp eq i64 %i.gm, 0
  br i1 %.not45.i, label %ma_dr_wav_read_pcm_frames_s32__pcm.exit, label %bb.l

ma_dr_wav_read_pcm_frames_s32__pcm.exit:          ; preds = %bb.l, %bb.m, %.loopexit.i, %bb.h, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i, %bb.k
  %.040.i = phi i64 [ %i.u, %bb.h ], [ 0, %bb.k ], [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i ], [ %.03558.i, %bb.l ], [ %i.gn, %.loopexit.i ], [ %.03558.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  br label %bb.ax

bb.u:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.i37, %bb.u
  %i.go = phi i16 [ %i.k, %bb.u ], [ %i.gt, %.loopexit.i37 ]
  %.01932.i = phi i64 [ 0, %bb.u ], [ %i.hp, %.loopexit.i37 ] ; 2 uses
  %.02031.i = phi ptr [ %2, %bb.u ], [ %i.hn, %.loopexit.i37 ] ; 4 uses
  %.02230.i = phi i64 [ %.030, %bb.u ], [ %i.ho, %.loopexit.i37 ] ; 2 uses
  %i.gp = udiv i16 2048, %i.go
  %i.gq = zext nneg i16 %i.gp to i64
  %.022..i = call i64 @llvm.umin.i64(i64 %.02230.i, i64 %i.gq)
  %i.gr = call i64 @ma_dr_wav_read_pcm_frames_s16(ptr noundef nonnull %0, i64 noundef %.022..i, ptr noundef nonnull %i.d) ; 4 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %ma_dr_wav_read_pcm_frames_s32__msadpcm_ima.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gt = load i16, ptr %i.j, align 8, !tbaa !692 ; 2 uses
  %i.gu = zext i16 %i.gt to i64
  %i.gv = mul i64 %i.gr, %i.gu                    ; 6 uses
  %.not35.i = icmp eq i64 %i.gv, 0
  br i1 %.not35.i, label %.loopexit.i37, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.w
  %min.iters.check176 = icmp ult i64 %i.gv, 8
  br i1 %min.iters.check176, label %.lr.ph.i.i35.preheader251, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.i35.preheader
  %n.vec178 = and i64 %i.gv, -8                   ; 4 uses
  %i.gw = shl i64 %n.vec178, 2
  %i.gx = getelementptr i8, ptr %.02031.i, i64 %i.gw
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body179 ] ; 3 uses
  %i.gy = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %.02031.i, i64 %i.gy ; 2 uses
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index180 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %wide.load182 = load <4 x i16>, ptr %i.gz, align 16, !tbaa !122
  %wide.load183 = load <4 x i16>, ptr %i.ha, align 8, !tbaa !122
  %i.hb = sext <4 x i16> %wide.load182 to <4 x i32>
  %i.hc = sext <4 x i16> %wide.load183 to <4 x i32>
  %i.hd = shl nsw <4 x i32> %i.hb, splat (i32 16)
  %i.he = shl nsw <4 x i32> %i.hc, splat (i32 16)
  %i.hf = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x i32> %i.hd, ptr %next.gep181, align 4, !tbaa !118
  store <4 x i32> %i.he, ptr %i.hf, align 4, !tbaa !118
  %index.next184 = add nuw i64 %index180, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.hg, label %middle.block185, label %vector.body179, !llvm.loop !2251

middle.block185:                                  ; preds = %vector.body179
  %cmp.n186 = icmp eq i64 %i.gv, %n.vec178
  br i1 %cmp.n186, label %.loopexit.i37, label %.lr.ph.i.i35.preheader251

.lr.ph.i.i35.preheader251:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block185
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i35.preheader ], [ %n.vec178, %middle.block185 ]
  %.0811.i.i.ph = phi ptr [ %.02031.i, %.lr.ph.i.i35.preheader ], [ %i.gx, %middle.block185 ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader251, %.lr.ph.i.i35
  %.012.i.i = phi i64 [ %i.hm, %.lr.ph.i.i35 ], [ %.012.i.i.ph, %.lr.ph.i.i35.preheader251 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.hl, %.lr.ph.i.i35 ], [ %.0811.i.i.ph, %.lr.ph.i.i35.preheader251 ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.012.i.i
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !122
  %i.hj = sext i16 %i.hi to i32
  %i.hk = shl nsw i32 %i.hj, 16
  %i.hl = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  store i32 %i.hk, ptr %.0811.i.i, align 4, !tbaa !118
  %i.hm = add nuw nsw i64 %.012.i.i, 1            ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %i.hm, %i.gv
  br i1 %exitcond.not.i.i36, label %.loopexit.i37, label %.lr.ph.i.i35, !llvm.loop !2252

.loopexit.i37:                                    ; preds = %.lr.ph.i.i35, %middle.block185, %bb.w
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.02031.i, i64 %i.gv
  %i.ho = sub i64 %.02230.i, %i.gr                ; 2 uses
  %i.hp = add i64 %i.gr, %.01932.i                ; 2 uses
  %.not.i38 = icmp eq i64 %i.ho, 0
  br i1 %.not.i38, label %ma_dr_wav_read_pcm_frames_s32__msadpcm_ima.exit, label %bb.v

ma_dr_wav_read_pcm_frames_s32__msadpcm_ima.exit:  ; preds = %bb.v, %.loopexit.i37
  %.019.lcssa.i = phi i64 [ %.01932.i, %bb.v ], [ %i.hp, %.loopexit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %bb.ax

bb.x:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !694
  %i.hs = zext i16 %i.hr to i32                   ; 2 uses
  %i.ht = and i32 %i.hs, 7
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !695
  %i.hx = zext i16 %i.hw to i32
  %i.hy = mul nuw nsw i32 %i.hx, %i.hs
  %i.hz = lshr exact i32 %i.hy, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41

bb.z:                                             ; preds = %bb.x
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ib = load i16, ptr %i.ia, align 8, !tbaa !696
  %i.ic = zext i16 %i.ib to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41

ma_dr_wav_get_bytes_per_pcm_frame.exit.i41:       ; preds = %bb.y, %bb.z
  %.0.i.i39 = phi i32 [ %i.hz, %bb.y ], [ %i.ic, %bb.z ] ; 5 uses
  %.old.i42 = icmp eq i32 %.0.i.i39, 0
  br i1 %.old.i42, label %ma_dr_wav_read_pcm_frames_s32__ieee.exit, label %bb.aa

bb.aa:                                            ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41
  %i.id = zext i16 %i.k to i32                    ; 3 uses
  %i.ie = udiv i32 %.0.i.i39, %i.id
  %i.if = urem i32 %.0.i.i39, %i.id
  %.fr.i = freeze i32 %i.ie                       ; 2 uses
  %i.ig = icmp samesign uge i32 %.0.i.i39, %i.id
  %.not.i43 = icmp eq i32 %i.if, 0
  %or.cond280.a = and i1 %i.ig, %.not.i43
  br i1 %or.cond280.a, label %.preheader.i44, label %ma_dr_wav_read_pcm_frames_s32__ieee.exit

.preheader.i44:                                   ; preds = %bb.aa
  %i.ih = udiv i32 4096, %.0.i.i39
  %i.ii = zext nneg i32 %i.ih to i64              ; 3 uses
  %i.ij = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us51.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i44, %.loopexit.us.i
  %.03050.us.i = phi i64 [ %i.jk, %.loopexit.us.i ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03149.us.i = phi ptr [ %i.ji, %.loopexit.us.i ], [ %2, %.preheader.i44 ] ; 4 uses
  %.03348.us.i = phi i64 [ %i.jj, %.loopexit.us.i ], [ %.030, %.preheader.i44 ] ; 2 uses
  %.033..us.i = call i64 @llvm.umin.i64(i64 %.03348.us.i, i64 %i.ii)
  %i.ik = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.033..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %ma_dr_wav_read_pcm_frames_s32__ieee.exit, label %bb.ab

bb.ab:                                            ; preds = %.preheader.split.us.i
  %i.im = load i16, ptr %i.j, align 8, !tbaa !692
  %i.in = zext i16 %i.im to i64
  %i.io = mul i64 %i.ik, %i.in                    ; 7 uses
  %i.ip = mul i64 %i.io, %i.ij
  %i.iq = icmp ugt i64 %i.ip, 4096
  br i1 %i.iq, label %ma_dr_wav_read_pcm_frames_s32__ieee.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not13.i.us.i = icmp eq i64 %i.io, 0
  br i1 %.not13.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.ac
  %min.iters.check162 = icmp ult i64 %i.io, 8
  br i1 %min.iters.check162, label %.lr.ph.i.i.us.i.preheader252, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph.i.i.us.i.preheader
  %n.vec164 = and i64 %i.io, -8                   ; 4 uses
  %i.ir = shl i64 %n.vec164, 2
  %i.is = getelementptr i8, ptr %.03149.us.i, i64 %i.ir
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next170, %vector.body165 ] ; 3 uses
  %i.it = shl i64 %index166, 2
  %next.gep167 = getelementptr i8, ptr %.03149.us.i, i64 %i.it ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index166 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %wide.load168 = load <4 x float>, ptr %i.iu, align 16, !tbaa !349
end_hunk_3
begin_hunk_4_@ma_dr_wav_init__internal:bb.a
  %i.ls = load i8, ptr %i.hm, align 2, !tbaa !119
  %i.lt = zext i8 %i.ls to i32
  %i.lu = shl nuw nsw i32 %i.lt, 8
  %i.lv = or disjoint i32 %i.lu, %i.lr
  %i.lw = load i8, ptr %i.hn, align 1, !tbaa !119
  %i.lx = zext i8 %i.lw to i32
  %i.ly = shl nuw nsw i32 %i.lx, 16
  %i.lz = or disjoint i32 %i.lv, %i.ly
  %i.ma = load i8, ptr %i.hk, align 8, !tbaa !119
  %i.mb = zext i8 %i.ma to i32
  %i.mc = shl nuw i32 %i.mb, 24
  %i.md = or disjoint i32 %i.lz, %i.mc
  store i32 %i.md, ptr %i.gx, align 4, !tbaa !2824
  %i.me = load i8, ptr %i.hp, align 1, !tbaa !119
  %i.mf = zext i8 %i.me to i16
  %i.mg = load i8, ptr %i.ho, align 4, !tbaa !119
  %i.mh = zext i8 %i.mg to i16
  %i.mi = shl nuw i16 %i.mh, 8
  %i.mj = or disjoint i16 %i.mi, %i.mf
  store i16 %i.mj, ptr %i.gw, align 4, !tbaa !2825
  %i.mk = load i8, ptr %i.hr, align 1, !tbaa !119
  %i.ml = zext i8 %i.mk to i16
  %i.mm = load i8, ptr %i.hq, align 2, !tbaa !119
  %i.mn = zext i8 %i.mm to i16
  %i.mo = shl nuw i16 %i.mn, 8
  %i.mp = or disjoint i16 %i.mo, %i.ml
  br label %ma_dr_wav_bytes_to_u16_ex.exit625

bb.ax:                                            ; preds = %bb.av
  %i.mq = load <2 x i16>, ptr %i.o, align 16
  store <2 x i16> %i.mq, ptr %4, align 4, !tbaa !122
  %i.mr = load <2 x i32>, ptr %i.hg, align 4
  store <2 x i32> %i.mr, ptr %i.gu, align 4, !tbaa !118
  %i.ms = load i16, ptr %i.ho, align 4
  store i16 %i.ms, ptr %i.gw, align 4, !tbaa !2825
  %i.mt = load i16, ptr %i.hq, align 2
  br label %ma_dr_wav_bytes_to_u16_ex.exit625

ma_dr_wav_bytes_to_u16_ex.exit625:                ; preds = %bb.aw, %bb.ax
  %.0.i624 = phi i16 [ %i.mp, %bb.aw ], [ %i.mt, %bb.ax ]
  store i16 %.0.i624, ptr %i.gv, align 2, !tbaa !2826
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hs, i8 0, i64 24, i1 false)
  %i.mu = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.mv = icmp ugt i64 %i.mu, 16
  br i1 %i.mv, label %bb.ay, label %bb.bm

bb.ay:                                            ; preds = %ma_dr_wav_bytes_to_u16_ex.exit625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #55
  %i.mw = load ptr, ptr %0, align 8, !tbaa !673
  %i.mx = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.my = call i64 %i.mw(ptr noundef %i.mx, ptr noundef nonnull %i.p, i64 noundef 2) #55
  %.not520 = icmp eq i64 %i.my, 2
  br i1 %.not520, label %bb.az, label %.critedge546

bb.az:                                            ; preds = %bb.ay
  %i.mz = add i64 %i.iu, 18                       ; 2 uses
  %i.na = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.na, label %bb.bb [
    i32 4, label %bb.ba
    i32 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.nb = load i8, ptr %i.hw, align 1, !tbaa !119
  %i.nc = zext i8 %i.nb to i16
  %i.nd = load i8, ptr %i.p, align 2, !tbaa !119
  %i.ne = zext i8 %i.nd to i16
  %i.nf = shl nuw i16 %i.ne, 8
  %i.ng = or disjoint i16 %i.nf, %i.nc
  br label %ma_dr_wav_bytes_to_u16_ex.exit619

bb.bb:                                            ; preds = %bb.az
  %i.nh = load i16, ptr %i.p, align 2
  br label %ma_dr_wav_bytes_to_u16_ex.exit619

ma_dr_wav_bytes_to_u16_ex.exit619:                ; preds = %bb.ba, %bb.bb
  %.0.i618 = phi i16 [ %i.ng, %bb.ba ], [ %i.nh, %bb.bb ] ; 5 uses
  store i16 %.0.i618, ptr %i.hs, align 4, !tbaa !2827
  %i.ni = zext i16 %.0.i618 to i32
  %.not521 = icmp eq i16 %.0.i618, 0
  br i1 %.not521, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %ma_dr_wav_bytes_to_u16_ex.exit619
  %i.nj = load i16, ptr %4, align 4, !tbaa !1077
  %i.nk = icmp eq i16 %i.nj, -2                   ; 2 uses
  %i.nl = icmp ne i16 %.0.i618, 22
  %or.cond53 = and i1 %i.nl, %i.nk
  br i1 %or.cond53, label %.critedge546, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.nk, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #55
  %i.nm = load ptr, ptr %0, align 8, !tbaa !673
  %i.nn = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.no = zext i16 %.0.i618 to i64
  %i.np = call i64 %i.nm(ptr noundef %i.nn, ptr noundef nonnull %i.q, i64 noundef %i.no) #55
  %i.nq = load i16, ptr %i.hs, align 4, !tbaa !2827
  %i.nr = zext i16 %i.nq to i64                   ; 2 uses
  %.not522 = icmp eq i64 %i.np, %i.nr
  br i1 %.not522, label %bb.bf, label %.critedge544

bb.bf:                                            ; preds = %bb.be
  %i.ns = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.ns, label %bb.bh [
    i32 4, label %bb.bg
    i32 1, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %i.nt = load i8, ptr %i.hx, align 1, !tbaa !119
  %i.nu = zext i8 %i.nt to i16
  %i.nv = load i8, ptr %i.q, align 16, !tbaa !119
  %i.nw = zext i8 %i.nv to i16
  %i.nx = shl nuw i16 %i.nw, 8
  %i.ny = or disjoint i16 %i.nx, %i.nu
  store i16 %i.ny, ptr %i.ht, align 2, !tbaa !2828
  %i.nz = load i32, ptr %i.hy, align 2
  %i.oa = call i32 @llvm.bswap.i32(i32 %i.nz)
  br label %ma_dr_wav_bytes_to_u32_ex.exit572

bb.bh:                                            ; preds = %bb.bf
  %i.ob = load i16, ptr %i.q, align 16
  store i16 %i.ob, ptr %i.ht, align 2, !tbaa !2828
  %i.oc = load i32, ptr %i.hy, align 2
  br label %ma_dr_wav_bytes_to_u32_ex.exit572

ma_dr_wav_bytes_to_u32_ex.exit572:                ; preds = %bb.bg, %bb.bh
  %.0.i571 = phi i32 [ %i.oa, %bb.bg ], [ %i.oc, %bb.bh ]
  store i32 %.0.i571, ptr %i.hu, align 4, !tbaa !2829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hv, ptr noundef nonnull align 2 dereferenceable(16) %i.hz, i64 16, i1 false), !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #55
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  %i.od = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.oe = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.of = call i32 %i.od(ptr noundef %i.oe, i32 noundef %i.ni, i32 noundef 1) #55
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %.critedge546, label %._crit_edge1501

._crit_edge1501:                                  ; preds = %bb.bi
  %.pre1502 = load i16, ptr %i.hs, align 4, !tbaa !2827
  %.pre1507 = zext i16 %.pre1502 to i64
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge1501, %ma_dr_wav_bytes_to_u32_ex.exit572
  %.pre-phi = phi i64 [ %.pre1507, %._crit_edge1501 ], [ %i.nr, %ma_dr_wav_bytes_to_u32_ex.exit572 ] ; 2 uses
  %i.oh = add i64 %i.mz, %.pre-phi
  %i.oi = add nuw nsw i64 %.pre-phi, 18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %ma_dr_wav_bytes_to_u16_ex.exit619
  %i.oj = phi i64 [ %i.oh, %bb.bj ], [ %i.mz, %ma_dr_wav_bytes_to_u16_ex.exit619 ]
  %.0393 = phi i64 [ %i.oi, %bb.bj ], [ 18, %ma_dr_wav_bytes_to_u16_ex.exit619 ] ; 2 uses
  %i.ok = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.ol = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.om = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.on = sub i64 %i.om, %.0393
  %i.oo = trunc i64 %i.on to i32
  %i.op = call i32 %i.ok(ptr noundef %i.ol, i32 noundef %i.oo, i32 noundef 1) #55
  %i.oq = icmp eq i32 %i.op, 0
  br i1 %i.oq, label %.critedge546, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.or = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.os = sub i64 %i.or, %.0393
  %i.ot = add i64 %i.os, %i.oj                    ; 2 uses
  store i64 %i.ot, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #55
  br label %bb.bm

.critedge544:                                     ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #55
  br label %.critedge546

bb.bm:                                            ; preds = %bb.bl, %ma_dr_wav_bytes_to_u16_ex.exit625
  %i.ou = phi i64 [ %i.ot, %bb.bl ], [ %i.ko, %ma_dr_wav_bytes_to_u16_ex.exit625 ] ; 2 uses
  %i.ov = load i32, ptr %i.ga, align 8, !tbaa !1080 ; 4 uses
  %.not523 = icmp eq i32 %i.ov, 0
  br i1 %.not523, label %ma_dr_wav__seek_forward.exit684.thread.jt6, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ow = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.ox = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %i.oy = icmp slt i32 %i.ov, 0
  br i1 %i.oy, label %.lr.ph1405.preheader, label %ma_dr_wav__seek_forward.exit684

.lr.ph1405.preheader:                             ; preds = %bb.bn
  %i.oz = zext i32 %i.ov to i64
  br label %.lr.ph1405

.lr.ph1405:                                       ; preds = %.lr.ph1405.preheader, %.lr.ph.i678
  %.013.i6791404 = phi i64 [ %i.pb, %.lr.ph.i678 ], [ %i.oz, %.lr.ph1405.preheader ]
  %i.pa = call i32 %i.ow(ptr noundef %i.ox, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i683 = icmp eq i32 %i.pa, 0
  br i1 %.not11.i683, label %ma_dr_wav__seek_forward.exit684.thread.jt5, label %.lr.ph.i678

.lr.ph.i678:                                      ; preds = %.lr.ph1405
  %i.pb = add nsw i64 %.013.i6791404, -2147483647 ; 3 uses
  %i.pc = icmp ugt i64 %i.pb, 2147483647
  br i1 %i.pc, label %.lr.ph1405, label %ma_dr_wav__seek_forward.exit684.loopexit

ma_dr_wav__seek_forward.exit684.loopexit:         ; preds = %.lr.ph.i678
  %i.pd = trunc nuw nsw i64 %i.pb to i32
  br label %ma_dr_wav__seek_forward.exit684

ma_dr_wav__seek_forward.exit684:                  ; preds = %ma_dr_wav__seek_forward.exit684.loopexit, %bb.bn
  %.013.i679.lcssa = phi i32 [ %i.ov, %bb.bn ], [ %i.pd, %ma_dr_wav__seek_forward.exit684.loopexit ]
  %i.pe = call i32 %i.ow(ptr noundef %i.ox, i32 noundef %.013.i679.lcssa, i32 noundef 1) #55, !inline_history !2819
  %.not10.i680.not = icmp eq i32 %i.pe, 0
  br i1 %.not10.i680.not, label %ma_dr_wav__seek_forward.exit684.thread.jt5, label %bb.bo

bb.bo:                                            ; preds = %ma_dr_wav__seek_forward.exit684
  %i.pf = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.pg = zext i32 %i.pf to i64
  %i.ph = add i64 %i.ou, %i.pg                    ; 2 uses
  store i64 %i.ph, ptr %i.d, align 8, !tbaa !164
  br label %ma_dr_wav__seek_forward.exit684.thread.jt6

.critedge546:                                     ; preds = %bb.bk, %bb.bc, %bb.bi, %bb.ay, %.critedge544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #55
  br label %ma_dr_wav__seek_forward.exit684.thread.jt1

ma_dr_wav__seek_forward.exit684.thread.jt6:       ; preds = %bb.bm, %bb.bo
  %i.pi = phi i64 [ %i.ph, %bb.bo ], [ %i.ou, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %.backedge

ma_dr_wav__seek_forward.exit684.thread.jt5:       ; preds = %ma_dr_wav__seek_forward.exit684, %.lr.ph1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %.loopexit1323

ma_dr_wav__seek_forward.exit684.thread.jt1:       ; preds = %bb.au, %.critedge546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %bb.dj

bb.bp:                                            ; preds = %ma_dr_wav_fourcc_equal.exit674.thread
  %i.pj = icmp eq i8 %i.jo, 100
  %i.pk = icmp eq i8 %i.jq, 97                    ; 2 uses
  %or.cond1102 = select i1 %i.pj, i1 %i.pk, i1 false
  %or.cond1106 = select i1 %or.cond1102, i1 %i.jt, i1 false
  %.not1220 = icmp eq i8 %i.ju, 97
  %or.cond1270 = select i1 %or.cond1106, i1 %.not1220, i1 false
  br i1 %or.cond1270, label %bb.bq, label %ma_dr_wav_fourcc_equal.exit685.thread

ma_dr_wav_guid_equal.exit.thread:                 ; preds = %bb.at, %bb.as
  %.not.i686 = icmp eq i8 %.pr1009, 100
  %.not.1.i688 = icmp eq i8 %.pre1486.fr, 97
  %.not.2.i689 = icmp eq i8 %.pre1487.fr, 116
  %i.pl = shufflevector <4 x i8> %i.jw, <4 x i8> %i.jx, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.pm = insertelement <8 x i8> %i.pl, i8 %.pre1488, i64 0
  %.fr1833 = freeze <8 x i8> %i.pm
  %i.pn = icmp eq <8 x i8> %.fr1833, <i8 97, i8 -13, i8 -84, i8 -45, i8 17, i8 -116, i8 -47, i8 0> ; 2 uses
  %i.po = icmp eq <4 x i8> %.fr1832, <i8 -64, i8 79, i8 -114, i8 -37>
  %.not.15.i702.not = icmp eq i8 %.pre1500, -118
  %i.pp = shufflevector <8 x i1> %i.pn, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.pp, %i.po
  %i.pq = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pr = shufflevector <8 x i1> %i.pq, <8 x i1> %i.pn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ps = bitcast <8 x i1> %i.pr to i8
  %i.pt = icmp eq i8 %i.ps, -1
  %op.rdx = select i1 %.not.i686, i1 %i.pt, i1 false
  %op.rdx1819 = and i1 %.not.1.i688, %.not.2.i689
  %i.pu = freeze i1 %op.rdx
  %op.rdx1820 = and i1 %i.pu, %op.rdx1819
  %op.rdx1821 = select i1 %op.rdx1820, i1 %.not.15.i702.not, i1 false
  br i1 %op.rdx1821, label %bb.bq, label %ma_dr_wav_guid_equal.exit704.thread

bb.bq:                                            ; preds = %ma_dr_wav_guid_equal.exit.thread, %bb.bp
  store i64 %i.iu, ptr %i.gh, align 8, !tbaa !688
  %.not518 = icmp eq i32 %i.jk, 3
  %spec.select = select i1 %.not518, i64 %.2413, i64 %i.it ; 4 uses
  br i1 %or.cond13, label %bb.br, label %.loopexit1323

bb.br:                                            ; preds = %bb.bq
  %i.pv = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.pw = zext i32 %i.pv to i64
  %i.px = add i64 %i.it, %i.pw                    ; 5 uses
  %i.py = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.pz = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i705 = icmp eq i64 %i.px, 0
  br i1 %.not12.i705, label %ma_dr_wav__seek_forward.exit712.thread876, label %.lr.ph.i706.preheader

.lr.ph.i706.preheader:                            ; preds = %bb.br
  %i.qa = icmp ugt i64 %i.px, 2147483647
  br i1 %i.qa, label %.lr.ph1401, label %ma_dr_wav__seek_forward.exit712

.lr.ph1401:                                       ; preds = %.lr.ph.i706.preheader, %.lr.ph.i706
  %.013.i7071400 = phi i64 [ %i.qc, %.lr.ph.i706 ], [ %i.px, %.lr.ph.i706.preheader ]
  %i.qb = call i32 %i.py(ptr noundef %i.pz, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i711 = icmp eq i32 %i.qb, 0
  br i1 %.not11.i711, label %.loopexit1323, label %.lr.ph.i706

.lr.ph.i706:                                      ; preds = %.lr.ph1401
  %i.qc = add i64 %.013.i7071400, -2147483647     ; 3 uses
  %i.qd = icmp ugt i64 %i.qc, 2147483647
  br i1 %i.qd, label %.lr.ph1401, label %ma_dr_wav__seek_forward.exit712

ma_dr_wav__seek_forward.exit712:                  ; preds = %.lr.ph.i706, %.lr.ph.i706.preheader
  %.013.i707.lcssa = phi i64 [ %i.px, %.lr.ph.i706.preheader ], [ %i.qc, %.lr.ph.i706 ]
  %i.qe = trunc nuw nsw i64 %.013.i707.lcssa to i32
  %i.qf = call i32 %i.py(ptr noundef %i.pz, i32 noundef %i.qe, i32 noundef 1) #55, !inline_history !2819
  %.not10.i708.not = icmp eq i32 %i.qf, 0
  br i1 %.not10.i708.not, label %.loopexit1323, label %ma_dr_wav__seek_forward.exit712.thread876

ma_dr_wav__seek_forward.exit712.thread876:        ; preds = %bb.br, %ma_dr_wav__seek_forward.exit712
  %i.qg = add i64 %i.px, %i.iu                    ; 2 uses
  store i64 %i.qg, ptr %i.d, align 8, !tbaa !164
  br label %.backedge

ma_dr_wav_fourcc_equal.exit685.thread:            ; preds = %bb.bp
  switch i32 %i.jk, label %ma_dr_wav_fourcc_equal.exit713.thread [
    i32 0, label %bb.bs
    i32 1, label %bb.bs
    i32 3, label %bb.bs
  ]

bb.bs:                                            ; preds = %ma_dr_wav_fourcc_equal.exit685.thread, %ma_dr_wav_fourcc_equal.exit685.thread, %ma_dr_wav_fourcc_equal.exit685.thread
  %or.cond1138 = select i1 %i.jp, i1 %i.pk, i1 false
  %i.qh = icmp eq i8 %i.js, 99
  %or.cond1142 = select i1 %or.cond1138, i1 %i.qh, i1 false
  %.not1234 = icmp eq i8 %i.ju, 116
  %or.cond1276 = select i1 %or.cond1142, i1 %.not1234, i1 false
  br i1 %or.cond1276, label %bb.bt, label %ma_dr_wav_fourcc_equal.exit713.thread

ma_dr_wav_guid_equal.exit704.thread:              ; preds = %ma_dr_wav_guid_equal.exit.thread
  %i.qi = call i32 @ma_dr_wav_guid_equal(ptr noundef nonnull %7, ptr noundef nonnull @ma_dr_wavGUID_W64_FACT)
  %.not496 = icmp eq i32 %i.qi, 0
  br i1 %.not496, label %ma_dr_wav_fourcc_equal.exit713.thread, label %.thread883

bb.bt:                                            ; preds = %bb.bs
  switch i32 %i.jk, label %bb.cb [
    i32 0, label %bb.bu
    i32 1, label %bb.bu
    i32 2, label %.thread883
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #55
  %i.qj = load ptr, ptr %0, align 8, !tbaa !673
  %i.qk = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ql = call i64 %i.qj(ptr noundef %i.qk, ptr noundef nonnull %i.r, i64 noundef 4) #55, !inline_history !2818 ; 2 uses
  %i.qm = add i64 %i.iu, %i.ql                    ; 2 uses
  store i64 %i.qm, ptr %i.d, align 8, !tbaa !164
  %.not517 = icmp eq i64 %i.ql, 4
  br i1 %.not517, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.qn = add i64 %i.it, -4
  %i.qo = load i16, ptr %i.gy, align 4, !tbaa !693
  %i.qp = icmp eq i16 %i.qo, 2
  br i1 %i.qp, label %bb.bw, label %.thread884

bb.bw:                                            ; preds = %bb.bv
  %i.qq = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.qq, label %bb.by [
    i32 4, label %bb.bx
    i32 1, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw, %bb.bw
  %i.qr = load i32, ptr %i.r, align 4
  %i.qs = call i32 @llvm.bswap.i32(i32 %i.qr)
  br label %.thread884

bb.by:                                            ; preds = %bb.bw
  %i.qt = load i32, ptr %i.r, align 4
  br label %.thread884

.thread884:                                       ; preds = %bb.by, %bb.bx, %bb.bv
  %storemerge.shrunk = phi i32 [ 0, %bb.bv ], [ %i.qs, %bb.bx ], [ %i.qt, %bb.by ]
  %storemerge = zext i32 %storemerge.shrunk to i64
  store i64 %storemerge, ptr %i.f, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #55
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #55
  br label %.thread988

.thread883:                                       ; preds = %ma_dr_wav_guid_equal.exit704.thread, %bb.bt
  %i.qu = load ptr, ptr %0, align 8, !tbaa !673
  %i.qv = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.qw = call i64 %i.qu(ptr noundef %i.qv, ptr noundef nonnull %i.f, i64 noundef 8) #55, !inline_history !2818 ; 2 uses
  %i.qx = add i64 %i.iu, %i.qw                    ; 2 uses
  store i64 %i.qx, ptr %i.d, align 8, !tbaa !164
  %.not516 = icmp eq i64 %i.qw, 8
  br i1 %.not516, label %bb.ca, label %.thread988

bb.ca:                                            ; preds = %.thread883
  %i.qy = add i64 %i.it, -8
  br label %bb.cb

bb.cb:                                            ; preds = %.thread884, %bb.bt, %bb.ca
  %i.qz = phi i64 [ %i.qm, %.thread884 ], [ %i.qx, %bb.ca ], [ %i.iu, %bb.bt ]
  %.1395 = phi i64 [ %i.qn, %.thread884 ], [ %i.qy, %bb.ca ], [ %i.it, %bb.bt ]
  %i.ra = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.rb = zext i32 %i.ra to i64
  %i.rc = add i64 %.1395, %i.rb                   ; 5 uses
end_hunk_4
begin_hunk_5_@ma_dr_mp3dec_decode_frame:bb.a
  %i.buq = sext i32 %i.bup to i64
  %i.bur = getelementptr inbounds i8, ptr %i.mb, i64 %i.buq ; 2 uses
  %i.bus = and i32 %i.bul, 7                      ; 4 uses
  %i.but = add nuw nsw i32 %i.bus, 6
  %i.buu = load i8, ptr %i.bur, align 1, !tbaa !119
  %i.buv = zext i8 %i.buu to i32
  %i.buw = lshr i32 255, %i.bus
  %i.bux = and i32 %i.buw, %i.buv                 ; 2 uses
  %i.buy = icmp samesign ugt i32 %i.bus, 2
  br i1 %i.buy, label %.lr.ph.i.preheader.2.i.i, label %._crit_edge.i.2.i.i

.lr.ph.i.preheader.2.i.i:                         ; preds = %bb.fm
  %i.buz = add nsw i32 %i.bus, -2                 ; 2 uses
  %i.bva = shl nuw nsw i32 %i.bux, %i.buz
  %.0.i.2.i.i = getelementptr inbounds nuw i8, ptr %i.bur, i64 1
  %i.bvb = load i8, ptr %.0.i.2.i.i, align 1, !tbaa !119
  %i.bvc = zext i8 %i.bvb to i32
  br label %._crit_edge.i.2.i.i

._crit_edge.i.2.i.i:                              ; preds = %.lr.ph.i.preheader.2.i.i, %bb.fm
  %.020.lcssa.i.2.i.i = phi i32 [ %i.bux, %bb.fm ], [ %i.bvc, %.lr.ph.i.preheader.2.i.i ]
  %.019.lcssa.i.2.i.i = phi i32 [ 0, %bb.fm ], [ %i.bva, %.lr.ph.i.preheader.2.i.i ]
  %.018.lcssa.i.2.i.i = phi i32 [ %i.but, %bb.fm ], [ %i.buz, %.lr.ph.i.preheader.2.i.i ]
  %i.bvd = sub nuw nsw i32 8, %.018.lcssa.i.2.i.i
  %i.bve = lshr i32 %.020.lcssa.i.2.i.i, %i.bvd
  %i.bvf = or i32 %i.bve, %.019.lcssa.i.2.i.i
  %i.bvg = trunc nuw nsw i32 %i.bvf to i16
  br label %ma_dr_mp3_bs_get_bits.exit.2.i.i

ma_dr_mp3_bs_get_bits.exit.2.i.i:                 ; preds = %._crit_edge.i.2.i.i, %bb.fl
  %.021.i.2.i.i = phi i16 [ %i.bvg, %._crit_edge.i.2.i.i ], [ 0, %bb.fl ] ; 2 uses
  %i.bvh = urem i16 %.021.i.2.i.i, 3
  %.zext.i.i = zext nneg i16 %i.bvh to i32
  %i.bvi = add nsw i32 %i.bsc, %.zext.i.i
  %i.bvj = sext i32 %i.bvi to i64
  %i.bvk = getelementptr inbounds [4 x i8], ptr @ma_dr_mp3_L12_read_scalefactors.g_deq_L12, i64 %i.bvj
  %i.bvl = load float, ptr %i.bvk, align 4, !tbaa !349
  %i.bvm = udiv i16 %.021.i.2.i.i, 3
  %.zext47.i.i = zext nneg i16 %i.bvm to i32
  %i.bvn = lshr i32 2097152, %.zext47.i.i
  %i.bvo = uitofp nneg i32 %i.bvn to float
  %i.bvp = fmul float %i.bvl, %i.bvo
  br label %bb.fn

bb.fn:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit.2.i.i, %bb.fk, %.thread43.i.i
  %.promoted315 = phi i32 [ %i.bun, %ma_dr_mp3_bs_get_bits.exit.2.i.i ], [ %i.bul, %bb.fk ], [ %i.brt, %.thread43.i.i ] ; 2 uses
  %.1.2.i.i = phi float [ %i.bvp, %ma_dr_mp3_bs_get_bits.exit.2.i.i ], [ %.1.1.i.i, %bb.fk ], [ 0.000000e+00, %.thread43.i.i ]
  %i.bvq = getelementptr inbounds nuw i8, ptr %.01928.i.i, i64 8
  %i.bvr = getelementptr inbounds nuw i8, ptr %.01928.i.i, i64 12
  store float %.1.2.i.i, ptr %i.bvq, align 4, !tbaa !349
  %indvars.iv.next.i.i174 = add nuw nsw i64 %indvars.iv.i.i173, 1 ; 2 uses
  %exitcond.not.i.i175 = icmp eq i64 %indvars.iv.next.i.i174, %wide.trip.count111.i
  br i1 %exitcond.not.i.i175, label %ma_dr_mp3_L12_read_scalefactors.exit.preheader.i, label %.lr.ph.i81.i, !llvm.loop !3019

ma_dr_mp3_L12_read_scalefactors.exit.preheader.i: ; preds = %bb.fn
  %i.bvs = icmp ult i32 %i.bmg, %.1.i.i163
  br i1 %i.bvs, label %ma_dr_mp3_L12_read_scalefactors.exit.i.preheader, label %ma_dr_mp3_L12_read_scale_info.exit

ma_dr_mp3_L12_read_scalefactors.exit.i.preheader: ; preds = %ma_dr_mp3_L12_read_scalefactors.exit.preheader.i
  %i.bvt = sub nsw i64 %wide.trip.count.i164, %i.bnn
  %xtraiter = and i64 %i.bvt, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ma_dr_mp3_L12_read_scalefactors.exit.i.prol.loopexit, label %ma_dr_mp3_L12_read_scalefactors.exit.i.prol

ma_dr_mp3_L12_read_scalefactors.exit.i.prol:      ; preds = %ma_dr_mp3_L12_read_scalefactors.exit.i.preheader, %ma_dr_mp3_L12_read_scalefactors.exit.i.prol
  %indvars.iv113.i.prol = phi i64 [ %indvars.iv.next114.i.prol, %ma_dr_mp3_L12_read_scalefactors.exit.i.prol ], [ %i.bnn, %ma_dr_mp3_L12_read_scalefactors.exit.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %ma_dr_mp3_L12_read_scalefactors.exit.i.prol ], [ 0, %ma_dr_mp3_L12_read_scalefactors.exit.i.preheader ]
  %i.bvu = shl nuw nsw i64 %indvars.iv113.i.prol, 1
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bnm, i64 %i.bvu
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvv, i64 1
  store i8 0, ptr %i.bvw, align 1, !tbaa !119
  %indvars.iv.next114.i.prol = add nuw nsw i64 %indvars.iv113.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %ma_dr_mp3_L12_read_scalefactors.exit.i.prol.loopexit, label %ma_dr_mp3_L12_read_scalefactors.exit.i.prol, !llvm.loop !3020

ma_dr_mp3_L12_read_scalefactors.exit.i.prol.loopexit: ; preds = %ma_dr_mp3_L12_read_scalefactors.exit.i.prol, %ma_dr_mp3_L12_read_scalefactors.exit.i.preheader
  %indvars.iv113.i.unr = phi i64 [ %i.bnn, %ma_dr_mp3_L12_read_scalefactors.exit.i.preheader ], [ %indvars.iv.next114.i.prol, %ma_dr_mp3_L12_read_scalefactors.exit.i.prol ]
  %i.bvx = sub nsw i64 %i.bnn, %wide.trip.count.i164
  %i.bvy = icmp ugt i64 %i.bvx, -8
  br i1 %i.bvy, label %ma_dr_mp3_L12_read_scale_info.exit, label %ma_dr_mp3_L12_read_scalefactors.exit.i

ma_dr_mp3_L12_read_scalefactors.exit.i:           ; preds = %ma_dr_mp3_L12_read_scalefactors.exit.i.prol.loopexit, %ma_dr_mp3_L12_read_scalefactors.exit.i
  %indvars.iv113.i = phi i64 [ %indvars.iv.next114.i.7, %ma_dr_mp3_L12_read_scalefactors.exit.i ], [ %indvars.iv113.i.unr, %ma_dr_mp3_L12_read_scalefactors.exit.i.prol.loopexit ] ; 9 uses
  %i.bvz = shl nuw nsw i64 %indvars.iv113.i, 1
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bnm, i64 %i.bvz
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bwa, i64 1
  store i8 0, ptr %i.bwb, align 1, !tbaa !119
  %indvars.iv.next114.i = shl i64 %indvars.iv113.i, 1
  %i.bwc = getelementptr i8, ptr %i.bnm, i64 %indvars.iv.next114.i
  %i.bwd = getelementptr i8, ptr %i.bwc, i64 3
  store i8 0, ptr %i.bwd, align 1, !tbaa !119
  %indvars.iv.next114.i.1 = shl i64 %indvars.iv113.i, 1
  %i.bwe = getelementptr i8, ptr %i.bnm, i64 %indvars.iv.next114.i.1
  %i.bwf = getelementptr i8, ptr %i.bwe, i64 5
  store i8 0, ptr %i.bwf, align 1, !tbaa !119
  %indvars.iv.next114.i.2 = shl i64 %indvars.iv113.i, 1
  %i.bwg = getelementptr i8, ptr %i.bnm, i64 %indvars.iv.next114.i.2
  %i.bwh = getelementptr i8, ptr %i.bwg, i64 7
  store i8 0, ptr %i.bwh, align 1, !tbaa !119
  %indvars.iv.next114.i.3 = shl i64 %indvars.iv113.i, 1
  %i.bwi = getelementptr i8, ptr %i.bnm, i64 %indvars.iv.next114.i.3
  %i.bwj = getelementptr i8, ptr %i.bwi, i64 9
  store i8 0, ptr %i.bwj, align 1, !tbaa !119
  %indvars.iv.next114.i.4 = shl i64 %indvars.iv113.i, 1
  %i.bwk = getelementptr i8, ptr %i.bnm, i64 %indvars.iv.next114.i.4
  %i.bwl = getelementptr i8, ptr %i.bwk, i64 11
  store i8 0, ptr %i.bwl, align 1, !tbaa !119
  %indvars.iv.next114.i.5 = shl i64 %indvars.iv113.i, 1
  %i.bwm = getelementptr i8, ptr %i.bnm, i64 %indvars.iv.next114.i.5
  %i.bwn = getelementptr i8, ptr %i.bwm, i64 13
  store i8 0, ptr %i.bwn, align 1, !tbaa !119
  %indvars.iv.next114.i.6 = shl i64 %indvars.iv113.i, 1
  %i.bwo = getelementptr i8, ptr %i.bnm, i64 %indvars.iv.next114.i.6
  %i.bwp = getelementptr i8, ptr %i.bwo, i64 15
  store i8 0, ptr %i.bwp, align 1, !tbaa !119
  %indvars.iv.next114.i.7 = add nuw nsw i64 %indvars.iv113.i, 8 ; 2 uses
  %exitcond116.not.i.7 = icmp eq i64 %indvars.iv.next114.i.7, %wide.trip.count.i164
  br i1 %exitcond116.not.i.7, label %ma_dr_mp3_L12_read_scale_info.exit, label %ma_dr_mp3_L12_read_scalefactors.exit.i, !llvm.loop !3021

ma_dr_mp3_L12_read_scale_info.exit:               ; preds = %ma_dr_mp3_L12_read_scalefactors.exit.i.prol.loopexit, %ma_dr_mp3_L12_read_scalefactors.exit.i, %ma_dr_mp3_L12_read_scalefactors.exit.preheader.i
  %i.bwq = getelementptr inbounds nuw i8, ptr %0, i64 9632 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4608) %i.bwq, i8 0, i64 4608, i1 false)
  %i.bwr = shl nuw nsw i32 %.1.i.i163, 1
  %wide.trip.count93.i = zext nneg i32 %i.bwr to i64
  %.val126 = load i8, ptr %i.bnl, align 1
  %i.bws = getelementptr inbounds nuw i8, ptr %0, i64 11936
  %i.bwt = zext i8 %.val126 to i32                ; 2 uses
  %i.bwu = mul nuw nsw i32 %i.bwt, 18
  %i.bwv = zext nneg i32 %i.bwu to i64            ; 2 uses
  %i.bww = getelementptr inbounds nuw [4 x i8], ptr %i.bws, i64 %i.bwv
  %i.bwx = getelementptr inbounds nuw [4 x i8], ptr %i.bwq, i64 %i.bwv
  %i.bwy = sub nsw i32 %.1.i.i163, %i.bwt
  %i.bwz = mul nsw i32 %i.bwy, 18
  %i.bxa = sext i32 %i.bwz to i64
  %i.bxb = shl nsw i64 %i.bxa, 2
  %i.bxc = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.bxd = getelementptr inbounds nuw i8, ptr %0, i64 14400
  br label %.lr.ph72.preheader.i

bb.fo:                                            ; preds = %bb.fv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.fx, label %.lr.ph72.preheader.i, !llvm.loop !3022

.lr.ph72.preheader.i:                             ; preds = %bb.fo, %ma_dr_mp3_L12_read_scale_info.exit
  %indvars.iv = phi i64 [ 0, %ma_dr_mp3_L12_read_scale_info.exit ], [ %indvars.iv.next, %bb.fo ] ; 2 uses
  %.196320 = phi i32 [ 0, %ma_dr_mp3_L12_read_scale_info.exit ], [ %.2, %bb.fo ] ; 2 uses
  %.1101319 = phi ptr [ %3, %ma_dr_mp3_L12_read_scale_info.exit ], [ %.2102, %bb.fo ] ; 3 uses
  %.lcssa309311.lcssa.lcssa317318 = phi i32 [ %.promoted315, %ma_dr_mp3_L12_read_scale_info.exit ], [ %.lcssa309311, %bb.fo ]
  %i.bxe = sext i32 %.196320 to i64
  %i.bxf = getelementptr inbounds [4 x i8], ptr %i.bwq, i64 %i.bxe
  %i.bxg = load i32, ptr %i.lk, align 4, !tbaa !838 ; 3 uses
  %i.bxh = or i32 %i.bxg, 1                       ; 3 uses
  %i.bxi = icmp sgt i32 %i.bxg, -1                ; 2 uses
  %i.bxj = sext i32 %i.bxh to i64
  %wide.trip.count.i180 = zext i32 %i.bxh to i64  ; 2 uses
  %i.bxk = icmp ult i32 %i.bxg, 2
  %i.bxl = add nsw i64 %wide.trip.count.i180, -3
  br label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %._crit_edge.i182, %.lr.ph72.preheader.i
  %.lcssa309311.lcssa314 = phi i32 [ %.lcssa309311.lcssa.lcssa317318, %.lr.ph72.preheader.i ], [ %.lcssa309311, %._crit_edge.i182 ]
  %indvars.iv95.i = phi i64 [ 0, %.lr.ph72.preheader.i ], [ %indvars.iv.next96.i, %._crit_edge.i182 ] ; 2 uses
  %.03974.i = phi i32 [ 576, %.lr.ph72.preheader.i ], [ %i.cak, %._crit_edge.i182 ]
  %i.bxm = mul nsw i64 %indvars.iv95.i, %i.bxj
  %i.bxn = getelementptr inbounds [4 x i8], ptr %i.bxf, i64 %i.bxm
  br label %bb.fp

bb.fp:                                            ; preds = %.loopexit.i, %.lr.ph72.i
  %.lcssa309312 = phi i32 [ %.lcssa309311.lcssa314, %.lr.ph72.i ], [ %.lcssa309311, %.loopexit.i ] ; 6 uses
  %indvars.iv90.i = phi i64 [ 0, %.lr.ph72.i ], [ %indvars.iv.next91.i, %.loopexit.i ] ; 2 uses
  %.03870.i = phi ptr [ %i.bxn, %.lr.ph72.i ], [ %i.caj, %.loopexit.i ] ; 5 uses
  %.169.i = phi i32 [ %.03974.i, %.lr.ph72.i ], [ %i.cak, %.loopexit.i ] ; 2 uses
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bnm, i64 %indvars.iv90.i
  %i.bxp = load i8, ptr %i.bxo, align 1, !tbaa !119 ; 3 uses
  %i.bxq = zext i8 %i.bxp to i32                  ; 4 uses
  %.not.i181 = icmp eq i8 %i.bxp, 0
  br i1 %.not.i181, label %.loopexit.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.bxr = icmp ult i8 %i.bxp, 17
  br i1 %i.bxr, label %bb.fr, label %bb.ft

bb.fr:                                            ; preds = %bb.fq
  %i.bxs = add nsw i32 %i.bxq, -1
  %notmask.i = shl nsw i32 -1, %i.bxs
  %.neg.i187 = add nsw i32 %notmask.i, 1
  br i1 %i.bxi, label %.lr.ph67.i, label %.loopexit.i

.lr.ph67.i:                                       ; preds = %bb.fr, %ma_dr_mp3_bs_get_bits.exit.i193
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %ma_dr_mp3_bs_get_bits.exit.i193 ], [ 0, %bb.fr ] ; 2 uses
  %i.bxt = phi i32 [ %i.bxu, %ma_dr_mp3_bs_get_bits.exit.i193 ], [ %.lcssa309312, %bb.fr ] ; 3 uses
  %i.bxu = add nsw i32 %i.bxt, %i.bxq             ; 3 uses
  %i.bxv = icmp sgt i32 %i.bxu, %i.me
  br i1 %i.bxv, label %ma_dr_mp3_bs_get_bits.exit.i193, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph67.i
  %i.bxw = ashr i32 %i.bxt, 3
  %i.bxx = sext i32 %i.bxw to i64
  %i.bxy = getelementptr inbounds i8, ptr %i.mb, i64 %i.bxx ; 3 uses
  %i.bxz = and i32 %i.bxt, 7                      ; 2 uses
  %i.bya = add nuw nsw i32 %i.bxz, %i.bxq         ; 5 uses
  %i.byb = load i8, ptr %i.bxy, align 1, !tbaa !119
  %i.byc = zext i8 %i.byb to i32
  %i.byd = lshr i32 255, %i.bxz
  %i.bye = and i32 %i.byd, %i.byc                 ; 2 uses
  %i.byf = icmp samesign ugt i32 %i.bya, 8
  br i1 %i.byf, label %.lr.ph.i.i195, label %._crit_edge.i.i189

.lr.ph.i.i195:                                    ; preds = %bb.fs
  %.0.i.i200 = getelementptr inbounds nuw i8, ptr %i.bxy, i64 1
  %i.byg = add nsw i32 %i.bya, -8                 ; 2 uses
  %i.byh = shl i32 %i.bye, %i.byg                 ; 2 uses
  %i.byi = load i8, ptr %.0.i.i200, align 1, !tbaa !119
  %i.byj = zext i8 %i.byi to i32                  ; 2 uses
  %i.byk = icmp samesign ugt i32 %i.bya, 16
  br i1 %i.byk, label %.lr.ph.i.i195.1, label %._crit_edge.i.i189

.lr.ph.i.i195.1:                                  ; preds = %.lr.ph.i.i195
  %.0.i.i200.1 = getelementptr inbounds nuw i8, ptr %i.bxy, i64 2
  %7 = add nsw i32 %i.bya, -16                    ; 2 uses
  %8 = shl i32 %i.byj, %7
  %9 = or i32 %8, %i.byh
  %10 = load i8, ptr %.0.i.i200.1, align 1, !tbaa !119
  %11 = zext i8 %10 to i32
  br label %._crit_edge.i.i189

._crit_edge.i.i189:                               ; preds = %.lr.ph.i.i195, %.lr.ph.i.i195.1, %bb.fs
  %.020.lcssa.i.i190 = phi i32 [ %i.bye, %bb.fs ], [ %i.byj, %.lr.ph.i.i195 ], [ %11, %.lr.ph.i.i195.1 ]
  %.019.lcssa.i.i191 = phi i32 [ 0, %bb.fs ], [ %i.byh, %.lr.ph.i.i195 ], [ %9, %.lr.ph.i.i195.1 ]
  %.018.lcssa.i.i192 = phi i32 [ %i.bya, %bb.fs ], [ %i.byg, %.lr.ph.i.i195 ], [ %7, %.lr.ph.i.i195.1 ]
  %i.byl = sub nuw nsw i32 8, %.018.lcssa.i.i192
  %i.bym = lshr i32 %.020.lcssa.i.i190, %i.byl
  %i.byn = or i32 %i.bym, %.019.lcssa.i.i191
  br label %ma_dr_mp3_bs_get_bits.exit.i193

ma_dr_mp3_bs_get_bits.exit.i193:                  ; preds = %._crit_edge.i.i189, %.lr.ph67.i
  %.021.i.i194 = phi i32 [ %i.byn, %._crit_edge.i.i189 ], [ 0, %.lr.ph67.i ]
  %i.byo = add i32 %.neg.i187, %.021.i.i194
  %i.byp = sitofp i32 %i.byo to float
  %i.byq = getelementptr inbounds nuw [4 x i8], ptr %.03870.i, i64 %indvars.iv85.i
  store float %i.byp, ptr %i.byq, align 4, !tbaa !349
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next86.i, %wide.trip.count.i180
  br i1 %exitcond89.not.i, label %.loopexit.i, label %.lr.ph67.i, !llvm.loop !3023

bb.ft:                                            ; preds = %bb.fq
  %i.byr = add nsw i32 %i.bxq, -17
  %i.bys = shl i32 2, %i.byr                      ; 4 uses
  %i.byt = or disjoint i32 %i.bys, 1              ; 5 uses
  %i.byu = add nuw i32 %i.bys, 3
  %i.byv = lshr i32 %i.bys, 3
  %i.byw = sub i32 %i.byu, %i.byv                 ; 2 uses
  %i.byx = add nsw i32 %.lcssa309312, %i.byw      ; 3 uses
  %i.byy = icmp sgt i32 %i.byx, %i.me
  br i1 %i.byy, label %ma_dr_mp3_bs_get_bits.exit56.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.byz = ashr i32 %.lcssa309312, 3
  %i.bza = sext i32 %i.byz to i64
  %i.bzb = getelementptr inbounds i8, ptr %i.mb, i64 %i.bza ; 2 uses
  %i.bzc = and i32 %.lcssa309312, 7               ; 2 uses
  %i.bzd = add i32 %i.bzc, %i.byw                 ; 3 uses
  %i.bze = load i8, ptr %i.bzb, align 1, !tbaa !119
  %i.bzf = zext i8 %i.bze to i32
  %i.bzg = lshr i32 255, %i.bzc
  %i.bzh = and i32 %i.bzg, %i.bzf                 ; 2 uses
  %i.bzi = icmp sgt i32 %i.bzd, 8
  br i1 %i.bzi, label %.lr.ph.i50.i, label %._crit_edge.i45.i

.lr.ph.i50.i:                                     ; preds = %bb.fu, %.lr.ph.i50.i
  %.pn26.i51.i = phi ptr [ %.0.i55.i, %.lr.ph.i50.i ], [ %i.bzb, %bb.fu ]
  %.01825.i52.i = phi i32 [ %i.bzj, %.lr.ph.i50.i ], [ %i.bzd, %bb.fu ] ; 2 uses
  %.01924.i53.i = phi i32 [ %i.bzl, %.lr.ph.i50.i ], [ 0, %bb.fu ]
  %.02023.i54.i = phi i32 [ %i.bzn, %.lr.ph.i50.i ], [ %i.bzh, %bb.fu ]
  %.0.i55.i = getelementptr inbounds nuw i8, ptr %.pn26.i51.i, i64 1 ; 2 uses
  %i.bzj = add nsw i32 %.01825.i52.i, -8          ; 3 uses
  %i.bzk = shl i32 %.02023.i54.i, %i.bzj
  %i.bzl = or i32 %i.bzk, %.01924.i53.i           ; 2 uses
  %i.bzm = load i8, ptr %.0.i55.i, align 1, !tbaa !119
  %i.bzn = zext i8 %i.bzm to i32                  ; 2 uses
  %i.bzo = icmp samesign ugt i32 %.01825.i52.i, 16
  br i1 %i.bzo, label %.lr.ph.i50.i, label %._crit_edge.i45.i, !llvm.loop !2977

._crit_edge.i45.i:                                ; preds = %.lr.ph.i50.i, %bb.fu
  %.020.lcssa.i46.i = phi i32 [ %i.bzh, %bb.fu ], [ %i.bzn, %.lr.ph.i50.i ]
  %.019.lcssa.i47.i = phi i32 [ 0, %bb.fu ], [ %i.bzl, %.lr.ph.i50.i ]
  %.018.lcssa.i48.i = phi i32 [ %i.bzd, %bb.fu ], [ %i.bzj, %.lr.ph.i50.i ]
  %i.bzp = sub nsw i32 8, %.018.lcssa.i48.i
  %i.bzq = lshr i32 %.020.lcssa.i46.i, %i.bzp
  %i.bzr = or i32 %i.bzq, %.019.lcssa.i47.i
  br label %ma_dr_mp3_bs_get_bits.exit56.i

ma_dr_mp3_bs_get_bits.exit56.i:                   ; preds = %._crit_edge.i45.i, %bb.ft
  %.021.i49.i = phi i32 [ %i.bzr, %._crit_edge.i45.i ], [ 0, %bb.ft ] ; 2 uses
  br i1 %i.bxi, label %.lr.ph.i183, label %.loopexit.i

.lr.ph.i183:                                      ; preds = %ma_dr_mp3_bs_get_bits.exit56.i
  %i.bzs = lshr exact i32 %i.bys, 1               ; 3 uses
  br i1 %i.bxk, label %.loopexit.i.loopexit727.epilog-lcssa, label %.lr.ph.i183.new

.lr.ph.i183.new:                                  ; preds = %.lr.ph.i183, %.lr.ph.i183.new
  %indvars.iv.i184 = phi i64 [ %indvars.iv.next.i185.1, %.lr.ph.i183.new ], [ 0, %.lr.ph.i183 ] ; 3 uses
  %.065.i = phi i32 [ %i.cad, %.lr.ph.i183.new ], [ %.021.i49.i, %.lr.ph.i183 ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i183.new ], [ 0, %.lr.ph.i183 ] ; 2 uses
  %i.bzt = urem i32 %.065.i, %i.byt
  %i.bzu = sub i32 %i.bzt, %i.bzs
  %i.bzv = sitofp i32 %i.bzu to float
  %i.bzw = getelementptr inbounds nuw [4 x i8], ptr %.03870.i, i64 %indvars.iv.i184
  store float %i.bzv, ptr %i.bzw, align 4, !tbaa !349
  %i.bzx = udiv i32 %.065.i, %i.byt               ; 2 uses
  %i.bzy = urem i32 %i.bzx, %i.byt
  %i.bzz = sub i32 %i.bzy, %i.bzs
  %i.caa = sitofp i32 %i.bzz to float
  %i.cab = getelementptr inbounds nuw [4 x i8], ptr %.03870.i, i64 %indvars.iv.i184
  %i.cac = getelementptr inbounds nuw i8, ptr %i.cab, i64 4
  store float %i.caa, ptr %i.cac, align 4, !tbaa !349
  %indvars.iv.next.i185.1 = add nuw nsw i64 %indvars.iv.i184, 2 ; 2 uses
  %i.cad = udiv i32 %i.bzx, %i.byt                ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.bxl
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit727.epilog-lcssa, label %.lr.ph.i183.new, !llvm.loop !3024

.loopexit.i.loopexit727.epilog-lcssa:             ; preds = %.lr.ph.i183, %.lr.ph.i183.new
  %indvars.iv.i184.epil.init = phi i64 [ 0, %.lr.ph.i183 ], [ %indvars.iv.next.i185.1, %.lr.ph.i183.new ]
  %.065.i.epil.init = phi i32 [ %.021.i49.i, %.lr.ph.i183 ], [ %i.cad, %.lr.ph.i183.new ]
  %i.cae = urem i32 %.065.i.epil.init, %i.byt
  %i.caf = sub i32 %i.cae, %i.bzs
  %i.cag = sitofp i32 %i.caf to float
  %i.cah = getelementptr inbounds nuw [4 x i8], ptr %.03870.i, i64 %indvars.iv.i184.epil.init
  store float %i.cag, ptr %i.cah, align 4, !tbaa !349
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %ma_dr_mp3_bs_get_bits.exit.i193, %.loopexit.i.loopexit727.epilog-lcssa, %ma_dr_mp3_bs_get_bits.exit56.i, %bb.fr, %bb.fp
  %.lcssa309311 = phi i32 [ %i.byx, %.loopexit.i.loopexit727.epilog-lcssa ], [ %.lcssa309312, %bb.fp ], [ %i.byx, %ma_dr_mp3_bs_get_bits.exit56.i ], [ %.lcssa309312, %bb.fr ], [ %i.bxu, %ma_dr_mp3_bs_get_bits.exit.i193 ] ; 4 uses
  %i.cai = sext i32 %.169.i to i64
  %i.caj = getelementptr inbounds [4 x i8], ptr %.03870.i, i64 %i.cai
  %i.cak = sub nsw i32 18, %.169.i                ; 2 uses
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %exitcond94.not.i = icmp eq i64 %indvars.iv.next91.i, %wide.trip.count93.i
  br i1 %exitcond94.not.i, label %._crit_edge.i182, label %bb.fp, !llvm.loop !3025

._crit_edge.i182:                                 ; preds = %.loopexit.i
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next96.i, 4
  br i1 %exitcond98.not.i, label %ma_dr_mp3_L12_dequantize_granule.exit, label %.lr.ph72.i, !llvm.loop !3026

ma_dr_mp3_L12_dequantize_granule.exit:            ; preds = %._crit_edge.i182
  %i.cal = shl nsw i32 %i.bxh, 2
  %i.cam = add nsw i32 %i.cal, %.196320           ; 2 uses
  %i.can = icmp eq i32 %i.cam, 12
  br i1 %i.can, label %.preheader.i202.preheader, label %bb.fv

.preheader.i202.preheader:                        ; preds = %ma_dr_mp3_L12_dequantize_granule.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bww, ptr nonnull align 4 %i.bwx, i64 %i.bxb, i1 false)
  %i.cao = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  br label %.preheader.i202

.preheader.i202:                                  ; preds = %.preheader.i202.preheader, %.preheader.i202
  %.0184.i = phi i32 [ %i.cbn, %.preheader.i202 ], [ 0, %.preheader.i202.preheader ]
  %.0193.i = phi ptr [ %i.cbo, %.preheader.i202 ], [ %i.bwq, %.preheader.i202.preheader ] ; 8 uses
  %.0202.i = phi ptr [ %i.cbp, %.preheader.i202 ], [ %i.cao, %.preheader.i202.preheader ] ; 3 uses
  %i.cap = getelementptr inbounds nuw i8, ptr %.0202.i, i64 12
  %i.caq = load float, ptr %.0202.i, align 4, !tbaa !349
  %i.car = load float, ptr %i.cap, align 4, !tbaa !349
  %i.cas = getelementptr inbounds nuw i8, ptr %.0193.i, i64 2304 ; 2 uses
  %i.cat = load <4 x float>, ptr %.0193.i, align 4, !tbaa !349
  %i.cau = insertelement <4 x float> poison, float %i.caq, i64 0
  %i.cav = shufflevector <4 x float> %i.cau, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.caw = fmul <4 x float> %i.cav, %i.cat
  store <4 x float> %i.caw, ptr %.0193.i, align 4, !tbaa !349
  %i.cax = load <4 x float>, ptr %i.cas, align 4, !tbaa !349
  %i.cay = insertelement <4 x float> poison, float %i.car, i64 0
  %i.caz = shufflevector <4 x float> %i.cay, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cba = fmul <4 x float> %i.caz, %i.cax
  store <4 x float> %i.cba, ptr %i.cas, align 4, !tbaa !349
  %i.cbb = getelementptr inbounds nuw i8, ptr %.0193.i, i64 16 ; 2 uses
  %i.cbc = getelementptr inbounds nuw i8, ptr %.0193.i, i64 2320 ; 2 uses
  %i.cbd = load <4 x float>, ptr %i.cbb, align 4, !tbaa !349
  %i.cbe = fmul <4 x float> %i.cav, %i.cbd
  store <4 x float> %i.cbe, ptr %i.cbb, align 4, !tbaa !349
  %i.cbf = load <4 x float>, ptr %i.cbc, align 4, !tbaa !349
  %i.cbg = fmul <4 x float> %i.caz, %i.cbf
  store <4 x float> %i.cbg, ptr %i.cbc, align 4, !tbaa !349
  %i.cbh = getelementptr inbounds nuw i8, ptr %.0193.i, i64 32 ; 2 uses
  %i.cbi = getelementptr inbounds nuw i8, ptr %.0193.i, i64 2336 ; 2 uses
  %i.cbj = load <4 x float>, ptr %i.cbh, align 4, !tbaa !349
  %i.cbk = fmul <4 x float> %i.cav, %i.cbj
  store <4 x float> %i.cbk, ptr %i.cbh, align 4, !tbaa !349
  %i.cbl = load <4 x float>, ptr %i.cbi, align 4, !tbaa !349
  %i.cbm = fmul <4 x float> %i.caz, %i.cbl
  store <4 x float> %i.cbm, ptr %i.cbi, align 4, !tbaa !349
  %i.cbn = add nuw nsw i32 %.0184.i, 1            ; 2 uses
  %i.cbo = getelementptr inbounds nuw i8, ptr %.0193.i, i64 72
  %i.cbp = getelementptr inbounds nuw i8, ptr %.0202.i, i64 24
  %exitcond.not.i203 = icmp eq i32 %i.cbn, %.1.i.i163
  br i1 %exitcond.not.i203, label %ma_dr_mp3_L12_apply_scf_384.exit, label %.preheader.i202, !llvm.loop !3027

ma_dr_mp3_L12_apply_scf_384.exit:                 ; preds = %.preheader.i202
  %i.cbq = load i32, ptr %i.kq, align 4, !tbaa !840
  tail call fastcc void @ma_dr_mp3d_synth_granule(ptr noundef nonnull %i.bxc, ptr noundef nonnull %i.bwq, i32 noundef 12, i32 noundef %i.cbq, ptr noundef %.1101319, ptr noundef nonnull %i.bxd)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4608) %i.bwq, i8 0, i64 4608, i1 false)
  %i.cbr = load i32, ptr %i.kq, align 4, !tbaa !840
  %i.cbs = sext i32 %i.cbr to i64
  %i.cbt = mul nsw i64 %i.cbs, 768
  %i.cbu = getelementptr inbounds nuw i8, ptr %.1101319, i64 %i.cbt
  br label %bb.fv

bb.fv:                                            ; preds = %ma_dr_mp3_L12_apply_scf_384.exit, %ma_dr_mp3_L12_dequantize_granule.exit
  %.2102 = phi ptr [ %i.cbu, %ma_dr_mp3_L12_apply_scf_384.exit ], [ %.1101319, %ma_dr_mp3_L12_dequantize_granule.exit ]
  %.2 = phi i32 [ 0, %ma_dr_mp3_L12_apply_scf_384.exit ], [ %i.cam, %ma_dr_mp3_L12_dequantize_granule.exit ]
  %i.cbv = icmp sgt i32 %.lcssa309311, %i.me
  br i1 %i.cbv, label %bb.fw, label %bb.fo

bb.fw:                                            ; preds = %bb.fv
  store i8 0, ptr %i.d, align 8, !tbaa !119
  br label %.thread224

.thread224:                                       ; preds = %bb.ep, %bb.fw
  %.198.ph = phi i32 [ 0, %bb.fw ], [ %i.blz, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  br label %bb.fz

bb.fx:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %ma_dr_mp3_L3_save_reservoir.exit
  %.192 = phi i32 [ %i.nm, %ma_dr_mp3_L3_save_reservoir.exit ], [ 1, %bb.fx ]
  %i.cbw = getelementptr i8, ptr %0, i64 6153
  %.val = load i8, ptr %i.cbw, align 1, !tbaa !119
end_hunk_5
