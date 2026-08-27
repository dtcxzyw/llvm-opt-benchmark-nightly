Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bacWriteVer?download=true
inline.NumInlined: 420
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@Bac_ManWriteVerilogBoxes:bb.a
  br i1 %.not.i9.i.i343, label %bb.wr, label %Vec_StrPush.exit.i339

bb.wr:                                            ; preds = %bb.wq
  %.not9.i10.i.i345 = icmp eq ptr %.pre8.i344, null
  %i.bdo = zext nneg i32 %spec.select.i.i342 to i64 ; 2 uses
  br i1 %.not9.i10.i.i345, label %bb.wt, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %i.bdp = tail call ptr @realloc(ptr noundef nonnull %.pre8.i344, i64 noundef %i.bdo) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i346

bb.wt:                                            ; preds = %bb.wr
  %i.bdq = tail call noalias ptr @malloc(i64 noundef %i.bdo) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i346

Vec_StrGrow.exit11.sink.split.i.i346:             ; preds = %bb.wt, %bb.ws, %bb.wp, %bb.wo
  %i.bdr = phi ptr [ %i.bdl, %bb.wp ], [ %i.bdk, %bb.wo ], [ %i.bdp, %bb.ws ], [ %i.bdq, %bb.wt ] ; 2 uses
  %spec.select.sink.i.i347 = phi i32 [ 16, %bb.wp ], [ 16, %bb.wo ], [ %spec.select.i.i342, %bb.ws ], [ %spec.select.i.i342, %bb.wt ]
  store ptr %i.bdr, ptr %i.j, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i347, ptr %i.c, align 8, !tbaa !49
  %.pre9.i348 = load i32, ptr %i.h, align 4, !tbaa !45
  br label %Vec_StrPush.exit.i339

Vec_StrPush.exit.i339:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i346, %bb.wq, %.Vec_StrPush.exit_crit_edge.i337
  %i.bds = phi i32 [ %i.bdf, %.Vec_StrPush.exit_crit_edge.i337 ], [ %i.bdf, %bb.wq ], [ %.pre9.i348, %Vec_StrGrow.exit11.sink.split.i.i346 ] ; 2 uses
  %i.bdt = phi ptr [ %.pre.i338, %.Vec_StrPush.exit_crit_edge.i337 ], [ %.pre8.i344, %bb.wq ], [ %i.bdr, %Vec_StrGrow.exit11.sink.split.i.i346 ]
  %i.bdu = add nsw i32 %i.bds, 1
  store i32 %i.bdu, ptr %i.h, align 4, !tbaa !45
  %i.bdv = sext i32 %i.bds to i64
  %i.bdw = getelementptr inbounds i8, ptr %i.bdt, i64 %i.bdv
  store i8 46, ptr %i.bdw, align 1, !tbaa !47
  %.val197 = load ptr, ptr %0, align 8, !tbaa !36
  %i.bdx = getelementptr i8, ptr %.val197, i64 16
  %.val197.val = load ptr, ptr %i.bdx, align 8, !tbaa !51
  %i.bdy = tail call ptr @Abc_NamStr(ptr noundef %.val197.val, i32 noundef range(i32 -536870912, 536870912) %i.ayg) #14 ; 2 uses
  %i.bdz = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bdy) #17 ; 2 uses
  %i.bea = trunc i64 %i.bdz to i32
  %i.beb = icmp sgt i32 %i.bea, 0
  br i1 %i.beb, label %.lr.ph.i351, label %.lr.ph.i368

.lr.ph.i351:                                      ; preds = %Vec_StrPush.exit.i339
  %wide.trip.count.i352 = and i64 %i.bdz, 2147483647
  br label %bb.wu

bb.wu:                                            ; preds = %Vec_StrPush.exit.i356, %.lr.ph.i351
  %indvars.iv.i353 = phi i64 [ 0, %.lr.ph.i351 ], [ %indvars.iv.next.i357, %Vec_StrPush.exit.i356 ] ; 2 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bdy, i64 %indvars.iv.i353
  %i.bed = load i8, ptr %i.bec, align 1, !tbaa !47
  %i.bee = load i32, ptr %i.h, align 4, !tbaa !45 ; 7 uses
  %i.bef = load i32, ptr %i.c, align 8, !tbaa !49
  %i.beg = icmp eq i32 %i.bee, %i.bef
  br i1 %i.beg, label %bb.wv, label %.Vec_StrPush.exit_crit_edge.i354

.Vec_StrPush.exit_crit_edge.i354:                 ; preds = %bb.wu
  %.pre.i355 = load ptr, ptr %i.j, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i356

bb.wv:                                            ; preds = %bb.wu
  %i.beh = icmp slt i32 %i.bee, 16
  br i1 %i.beh, label %bb.ww, label %bb.wz

bb.ww:                                            ; preds = %bb.wv
  %i.bei = load ptr, ptr %i.j, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i.i366 = icmp eq ptr %i.bei, null
  br i1 %.not9.i.i.i366, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.bej = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bei, i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i363

bb.wy:                                            ; preds = %bb.ww
  %i.bek = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i363

bb.wz:                                            ; preds = %bb.wv
  %i.bel = icmp samesign ult i32 %i.bee, 1073741823
  %i.bem = shl nuw nsw i32 %i.bee, 1
  %spec.select.i.i359 = select i1 %i.bel, i32 %i.bem, i32 2147483647 ; 4 uses
  %.not.i9.i.i360 = icmp samesign ult i32 %i.bee, %spec.select.i.i359
  %.pre8.i361 = load ptr, ptr %i.j, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i360, label %bb.xa, label %Vec_StrPush.exit.i356

bb.xa:                                            ; preds = %bb.wz
  %.not9.i10.i.i362 = icmp eq ptr %.pre8.i361, null
  %i.ben = zext nneg i32 %spec.select.i.i359 to i64 ; 2 uses
  br i1 %.not9.i10.i.i362, label %bb.xc, label %bb.xb

bb.xb:                                            ; preds = %bb.xa
  %i.beo = tail call ptr @realloc(ptr noundef nonnull %.pre8.i361, i64 noundef %i.ben) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i363

bb.xc:                                            ; preds = %bb.xa
  %i.bep = tail call noalias ptr @malloc(i64 noundef %i.ben) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i363

Vec_StrGrow.exit11.sink.split.i.i363:             ; preds = %bb.xc, %bb.xb, %bb.wy, %bb.wx
  %i.beq = phi ptr [ %i.bek, %bb.wy ], [ %i.bej, %bb.wx ], [ %i.beo, %bb.xb ], [ %i.bep, %bb.xc ] ; 2 uses
  %spec.select.sink.i.i364 = phi i32 [ 16, %bb.wy ], [ 16, %bb.wx ], [ %spec.select.i.i359, %bb.xb ], [ %spec.select.i.i359, %bb.xc ]
  store ptr %i.beq, ptr %i.j, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i364, ptr %i.c, align 8, !tbaa !49
  %.pre9.i365 = load i32, ptr %i.h, align 4, !tbaa !45
  br label %Vec_StrPush.exit.i356

Vec_StrPush.exit.i356:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i363, %bb.wz, %.Vec_StrPush.exit_crit_edge.i354
  %i.ber = phi i32 [ %i.bee, %.Vec_StrPush.exit_crit_edge.i354 ], [ %i.bee, %bb.wz ], [ %.pre9.i365, %Vec_StrGrow.exit11.sink.split.i.i363 ] ; 2 uses
  %i.bes = phi ptr [ %.pre.i355, %.Vec_StrPush.exit_crit_edge.i354 ], [ %.pre8.i361, %bb.wz ], [ %i.beq, %Vec_StrGrow.exit11.sink.split.i.i363 ]
  %i.bet = add nsw i32 %i.ber, 1
  store i32 %i.bet, ptr %i.h, align 4, !tbaa !45
  %i.beu = sext i32 %i.ber to i64
  %i.bev = getelementptr inbounds i8, ptr %i.bes, i64 %i.beu
  store i8 %i.bed, ptr %i.bev, align 1, !tbaa !47
  %indvars.iv.next.i357 = add nuw nsw i64 %indvars.iv.i353, 1 ; 2 uses
  %exitcond.not.i358 = icmp eq i64 %indvars.iv.next.i357, %wide.trip.count.i352
  br i1 %exitcond.not.i358, label %.lr.ph.i368, label %bb.wu, !llvm.loop !50

.lr.ph.i368:                                      ; preds = %Vec_StrPush.exit.i356, %Vec_StrPush.exit.i339
  %i.bew = load i32, ptr %i.h, align 4, !tbaa !45 ; 7 uses
  %i.bex = load i32, ptr %i.c, align 8, !tbaa !49
  %i.bey = icmp eq i32 %i.bew, %i.bex
  br i1 %i.bey, label %bb.xd, label %.Vec_StrPush.exit_crit_edge.i371

.Vec_StrPush.exit_crit_edge.i371:                 ; preds = %.lr.ph.i368
  %.pre.i372 = load ptr, ptr %i.j, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i373

bb.xd:                                            ; preds = %.lr.ph.i368
  %i.bez = icmp slt i32 %i.bew, 16
  br i1 %i.bez, label %bb.xe, label %bb.xh

bb.xe:                                            ; preds = %bb.xd
  %i.bfa = load ptr, ptr %i.j, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i.i383 = icmp eq ptr %i.bfa, null
  br i1 %.not9.i.i.i383, label %bb.xg, label %bb.xf

bb.xf:                                            ; preds = %bb.xe
  %i.bfb = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bfa, i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i380

bb.xg:                                            ; preds = %bb.xe
  %i.bfc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i380

bb.xh:                                            ; preds = %bb.xd
  %i.bfd = icmp samesign ult i32 %i.bew, 1073741823
  %i.bfe = shl nuw nsw i32 %i.bew, 1
  %spec.select.i.i376 = select i1 %i.bfd, i32 %i.bfe, i32 2147483647 ; 4 uses
  %.not.i9.i.i377 = icmp samesign ult i32 %i.bew, %spec.select.i.i376
  %.pre8.i378 = load ptr, ptr %i.j, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i377, label %bb.xi, label %Vec_StrPush.exit.i373

bb.xi:                                            ; preds = %bb.xh
  %.not9.i10.i.i379 = icmp eq ptr %.pre8.i378, null
  %i.bff = zext nneg i32 %spec.select.i.i376 to i64 ; 2 uses
  br i1 %.not9.i10.i.i379, label %bb.xk, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.bfg = tail call ptr @realloc(ptr noundef nonnull %.pre8.i378, i64 noundef %i.bff) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i380

bb.xk:                                            ; preds = %bb.xi
  %i.bfh = tail call noalias ptr @malloc(i64 noundef %i.bff) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i380

Vec_StrGrow.exit11.sink.split.i.i380:             ; preds = %bb.xk, %bb.xj, %bb.xg, %bb.xf
  %i.bfi = phi ptr [ %i.bfc, %bb.xg ], [ %i.bfb, %bb.xf ], [ %i.bfg, %bb.xj ], [ %i.bfh, %bb.xk ] ; 2 uses
  %spec.select.sink.i.i381 = phi i32 [ 16, %bb.xg ], [ 16, %bb.xf ], [ %spec.select.i.i376, %bb.xj ], [ %spec.select.i.i376, %bb.xk ]
  store ptr %i.bfi, ptr %i.j, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i381, ptr %i.c, align 8, !tbaa !49
  %.pre9.i382 = load i32, ptr %i.h, align 4, !tbaa !45
  br label %Vec_StrPush.exit.i373

Vec_StrPush.exit.i373:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i380, %bb.xh, %.Vec_StrPush.exit_crit_edge.i371
  %i.bfj = phi i32 [ %i.bew, %.Vec_StrPush.exit_crit_edge.i371 ], [ %i.bew, %bb.xh ], [ %.pre9.i382, %Vec_StrGrow.exit11.sink.split.i.i380 ] ; 2 uses
  %i.bfk = phi ptr [ %.pre.i372, %.Vec_StrPush.exit_crit_edge.i371 ], [ %.pre8.i378, %bb.xh ], [ %i.bfi, %Vec_StrGrow.exit11.sink.split.i.i380 ]
  %i.bfl = add nsw i32 %i.bfj, 1
  store i32 %i.bfl, ptr %i.h, align 4, !tbaa !45
  %i.bfm = sext i32 %i.bfj to i64
  %i.bfn = getelementptr inbounds i8, ptr %i.bfk, i64 %i.bfm
  store i8 40, ptr %i.bfn, align 1, !tbaa !47
  %i.bfo = sub nsw i32 %i.ayf, %i.ayd
  %.in.i385 = tail call i32 @llvm.abs.i32(i32 %i.bfo, i1 true)
  %i.bfp = add nuw nsw i32 %.in.i385, 1           ; 4 uses
  switch i32 %i.ayh, label %.lr.ph.i386 [
    i32 1, label %bb.xl
    i32 2, label %bb.xm
  ]

bb.xl:                                            ; preds = %Vec_StrPush.exit.i373
  %i.bfq = xor i32 %.0160748, -1
  %i.bfr = add i32 %i.axz, %i.bfq
  tail call fastcc void @Bac_ManWriteConcat(ptr noundef nonnull %0, i32 noundef %i.bfr, i32 noundef %i.bfp)
  %i.bfs = add nuw nsw i32 %i.bfp, %.0160748
  br label %.lr.ph.i386

bb.xm:                                            ; preds = %Vec_StrPush.exit.i373
  %i.bft = add nsw i32 %i.axy, %.0158749
  tail call fastcc void @Bac_ManWriteConcat(ptr noundef nonnull %0, i32 noundef %i.bft, i32 noundef %i.bfp)
  %i.bfu = add nuw nsw i32 %i.bfp, %.0158749
  br label %.lr.ph.i386

.lr.ph.i386:                                      ; preds = %Vec_StrPush.exit.i373, %bb.xm, %bb.xl
  %.1161 = phi i32 [ %i.bfs, %bb.xl ], [ %.0160748, %bb.xm ], [ %.0160748, %Vec_StrPush.exit.i373 ]
  %.1159 = phi i32 [ %.0158749, %bb.xl ], [ %i.bfu, %bb.xm ], [ %.0158749, %Vec_StrPush.exit.i373 ]
  %i.bfv = load i32, ptr %i.h, align 4, !tbaa !45 ; 7 uses
  %i.bfw = load i32, ptr %i.c, align 8, !tbaa !49
  %i.bfx = icmp eq i32 %i.bfv, %i.bfw
  br i1 %i.bfx, label %bb.xn, label %.Vec_StrPush.exit_crit_edge.i389

.Vec_StrPush.exit_crit_edge.i389:                 ; preds = %.lr.ph.i386
  %.pre.i390 = load ptr, ptr %i.j, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i391

bb.xn:                                            ; preds = %.lr.ph.i386
  %i.bfy = icmp slt i32 %i.bfv, 16
  br i1 %i.bfy, label %bb.xo, label %bb.xr

bb.xo:                                            ; preds = %bb.xn
  %i.bfz = load ptr, ptr %i.j, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i.i401 = icmp eq ptr %i.bfz, null
  br i1 %.not9.i.i.i401, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.bga = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bfz, i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i398

bb.xq:                                            ; preds = %bb.xo
  %i.bgb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i398

bb.xr:                                            ; preds = %bb.xn
  %i.bgc = icmp samesign ult i32 %i.bfv, 1073741823
  %i.bgd = shl nuw nsw i32 %i.bfv, 1
  %spec.select.i.i394 = select i1 %i.bgc, i32 %i.bgd, i32 2147483647 ; 4 uses
  %.not.i9.i.i395 = icmp samesign ult i32 %i.bfv, %spec.select.i.i394
  %.pre8.i396 = load ptr, ptr %i.j, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i395, label %bb.xs, label %Vec_StrPush.exit.i391

bb.xs:                                            ; preds = %bb.xr
  %.not9.i10.i.i397 = icmp eq ptr %.pre8.i396, null
  %i.bge = zext nneg i32 %spec.select.i.i394 to i64 ; 2 uses
  br i1 %.not9.i10.i.i397, label %bb.xu, label %bb.xt

bb.xt:                                            ; preds = %bb.xs
  %i.bgf = tail call ptr @realloc(ptr noundef nonnull %.pre8.i396, i64 noundef %i.bge) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i398

bb.xu:                                            ; preds = %bb.xs
  %i.bgg = tail call noalias ptr @malloc(i64 noundef %i.bge) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i398

Vec_StrGrow.exit11.sink.split.i.i398:             ; preds = %bb.xu, %bb.xt, %bb.xq, %bb.xp
  %i.bgh = phi ptr [ %i.bgb, %bb.xq ], [ %i.bga, %bb.xp ], [ %i.bgf, %bb.xt ], [ %i.bgg, %bb.xu ] ; 2 uses
  %spec.select.sink.i.i399 = phi i32 [ 16, %bb.xq ], [ 16, %bb.xp ], [ %spec.select.i.i394, %bb.xt ], [ %spec.select.i.i394, %bb.xu ]
  store ptr %i.bgh, ptr %i.j, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i399, ptr %i.c, align 8, !tbaa !49
  %.pre9.i400 = load i32, ptr %i.h, align 4, !tbaa !45
  br label %Vec_StrPush.exit.i391

Vec_StrPush.exit.i391:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i398, %bb.xr, %.Vec_StrPush.exit_crit_edge.i389
  %i.bgi = phi i32 [ %i.bfv, %.Vec_StrPush.exit_crit_edge.i389 ], [ %i.bfv, %bb.xr ], [ %.pre9.i400, %Vec_StrGrow.exit11.sink.split.i.i398 ] ; 2 uses
  %i.bgj = phi ptr [ %.pre.i390, %.Vec_StrPush.exit_crit_edge.i389 ], [ %.pre8.i396, %bb.xr ], [ %i.bgh, %Vec_StrGrow.exit11.sink.split.i.i398 ]
  %i.bgk = add nsw i32 %i.bgi, 1
  store i32 %i.bgk, ptr %i.h, align 4, !tbaa !45
  %i.bgl = sext i32 %i.bgi to i64
  %i.bgm = getelementptr inbounds i8, ptr %i.bgj, i64 %i.bgl
  store i8 41, ptr %i.bgm, align 1, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %.val181 = load i32, ptr %i.axu, align 4, !tbaa !18
  %i.bgn = trunc i64 %indvars.iv to i32
  %i.bgo = add i32 %i.bgn, 5
  %i.bgp = icmp slt i32 %i.bgo, %.val181
  br i1 %i.bgp, label %bb.uh, label %.lr.ph.i697, !llvm.loop !58

bb.xv:                                            ; preds = %bb.rx
  store ptr @Bac_BoxCollectRanges.pArray, ptr getelementptr inbounds nuw (i8, ptr @Bac_BoxCollectRanges.Bits, i64 8), align 8, !tbaa !8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @Bac_BoxCollectRanges.Bits, i64 4), align 4, !tbaa !18
  store i32 10, ptr @Bac_BoxCollectRanges.Bits, align 8, !tbaa !59
  %.not738 = icmp eq i64 %indvars.iv776, 0
  br i1 %.not738, label %.critedge.i403, label %.lr.ph.i405

.lr.ph.i405:                                      ; preds = %bb.xv, %bb.yf
  %i.bgq = phi ptr [ %.pre1.i67.i, %bb.yf ], [ @Bac_BoxCollectRanges.pArray, %bb.xv ] ; 9 uses
  %.pre.i.i406 = phi ptr [ %.pre.i64.i, %bb.yf ], [ @Bac_BoxCollectRanges.pArray, %bb.xv ] ; 2 uses
  %indvars.iv.i407 = phi i64 [ %indvars.iv.next.i408, %bb.yf ], [ %indvars.iv776, %bb.xv ] ; 3 uses
  %indvars.iv.next.i408 = add nsw i64 %indvars.iv.i407, -1 ; 4 uses
  %.val27.i = load ptr, ptr %i.f, align 8, !tbaa !46 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %.val27.i, i64 %indvars.iv.next.i408
  %i.bgs = load i8, ptr %i.bgr, align 1, !tbaa !47 ; 2 uses
  %.mask.i.i409 = and i8 %i.bgs, -2
  %.not.i410 = icmp eq i8 %.mask.i.i409, 6
  br i1 %.not.i410, label %bb.xw, label %.critedge.i403.loopexit

bb.xw:                                            ; preds = %.lr.ph.i405
  %i.bgt = and i8 %i.bgs, 1
  %.not26.i = icmp eq i8 %i.bgt, 0
  br i1 %.not26.i, label %.preheader.preheader, label %bb.yf

.preheader.preheader:                             ; preds = %bb.xw
  %i.bgu = icmp sgt i64 %indvars.iv.i407, 1
  br i1 %i.bgu, label %.lr.ph1157, label %Bac_BoxBiRange.exit.i

.preheader:                                       ; preds = %.lr.ph1157
  %i.bgv = icmp sgt i64 %indvars.iv.i.i4111156, 1
  br i1 %i.bgv, label %.lr.ph1157, label %Bac_BoxBiRange.exit.i, !llvm.loop !60

.lr.ph1157:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.i.i4111156 = phi i64 [ %indvars.iv.next.i.i, %.preheader ], [ %indvars.iv.next.i408, %.preheader.preheader ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i4111156, -1 ; 3 uses
  %i.bgw = getelementptr inbounds nuw i8, ptr %.val27.i, i64 %indvars.iv.next.i.i
  %i.bgx = load i8, ptr %i.bgw, align 1, !tbaa !47
  %or.cond.not.i.i = icmp eq i8 %i.bgx, 7
  br i1 %or.cond.not.i.i, label %.preheader, label %.critedge.split.loop.exit.i.i, !llvm.loop !60

.critedge.split.loop.exit.i.i:                    ; preds = %.lr.ph1157
  %i.bgy = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %Bac_BoxBiRange.exit.i

Bac_BoxBiRange.exit.i:                            ; preds = %.preheader, %.preheader.preheader, %.critedge.split.loop.exit.i.i
  %.lcssa.i.i = phi i32 [ %i.bgy, %.critedge.split.loop.exit.i.i ], [ -1, %.preheader.preheader ], [ -1, %.preheader ]
  %i.bgz = trunc nuw nsw i64 %indvars.iv.next.i408 to i32
  %i.bha = sub nsw i32 %i.bgz, %.lcssa.i.i
  %i.bhb = load i32, ptr getelementptr inbounds nuw (i8, ptr @Bac_BoxCollectRanges.Bits, i64 4), align 4, !tbaa !18 ; 7 uses
  %i.bhc = load i32, ptr @Bac_BoxCollectRanges.Bits, align 8, !tbaa !59
  %i.bhd = icmp eq i32 %i.bhb, %i.bhc
  br i1 %i.bhd, label %bb.xx, label %Vec_IntPush.exit.i

bb.xx:                                            ; preds = %Bac_BoxBiRange.exit.i
  %i.bhe = icmp slt i32 %i.bhb, 16
  br i1 %i.bhe, label %bb.xy, label %bb.yb

bb.xy:                                            ; preds = %bb.xx
  %.not9.i.i.i415 = icmp eq ptr %i.bgq, null
  br i1 %.not9.i.i.i415, label %bb.ya, label %bb.xz

bb.xz:                                            ; preds = %bb.xy
  %i.bhf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bgq, i64 noundef 64) #15
  br label %Vec_IntPush.exit.sink.split.i

bb.ya:                                            ; preds = %bb.xy
  %i.bhg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntPush.exit.sink.split.i

bb.yb:                                            ; preds = %bb.xx
  %i.bhh = icmp samesign ult i32 %i.bhb, 1073741823
  %i.bhi = shl nuw nsw i32 %i.bhb, 1
  %spec.select.i.i412 = select i1 %i.bhh, i32 %i.bhi, i32 2147483647 ; 4 uses
  %.not.i9.i.i413 = icmp samesign ult i32 %i.bhb, %spec.select.i.i412
  br i1 %.not.i9.i.i413, label %bb.yc, label %Vec_IntPush.exit.i

bb.yc:                                            ; preds = %bb.yb
  %.not9.i10.i.i414 = icmp eq ptr %i.bgq, null
  %i.bhj = zext nneg i32 %spec.select.i.i412 to i64
  %i.bhk = shl nuw nsw i64 %i.bhj, 2              ; 2 uses
  br i1 %.not9.i10.i.i414, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.bhl = tail call ptr @realloc(ptr noundef nonnull %i.bgq, i64 noundef %i.bhk) #15
  br label %Vec_IntPush.exit.sink.split.i

bb.ye:                                            ; preds = %bb.yc
  %i.bhm = tail call noalias ptr @malloc(i64 noundef %i.bhk) #16
  br label %Vec_IntPush.exit.sink.split.i

Vec_IntPush.exit.sink.split.i:                    ; preds = %bb.ye, %bb.yd, %bb.ya, %bb.xz
  %.sink85.i = phi ptr [ %i.bhg, %bb.ya ], [ %i.bhf, %bb.xz ], [ %i.bhl, %bb.yd ], [ %i.bhm, %bb.ye ] ; 3 uses
  %.sink.i = phi i32 [ 16, %bb.ya ], [ 16, %bb.xz ], [ %spec.select.i.i412, %bb.yd ], [ %spec.select.i.i412, %bb.ye ]
  store ptr %.sink85.i, ptr getelementptr inbounds nuw (i8, ptr @Bac_BoxCollectRanges.Bits, i64 8), align 8, !tbaa !8
  store i32 %.sink.i, ptr @Bac_BoxCollectRanges.Bits, align 8, !tbaa !59
  %.pre790 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Bac_BoxCollectRanges.Bits, i64 4), align 4, !tbaa !18
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntPush.exit.sink.split.i, %bb.yb, %Bac_BoxBiRange.exit.i
  %i.bhn = phi i32 [ %i.bhb, %bb.yb ], [ %i.bhb, %Bac_BoxBiRange.exit.i ], [ %.pre790, %Vec_IntPush.exit.sink.split.i ] ; 2 uses
  %.pre1.i68.i = phi ptr [ %i.bgq, %bb.yb ], [ %i.bgq, %Bac_BoxBiRange.exit.i ], [ %.sink85.i, %Vec_IntPush.exit.sink.split.i ]
  %.pre.i65.i = phi ptr [ %i.bgq, %bb.yb ], [ %.pre.i.i406, %Bac_BoxBiRange.exit.i ], [ %.sink85.i, %Vec_IntPush.exit.sink.split.i ] ; 2 uses
  %i.bho = add nsw i32 %i.bhn, 1
  store i32 %i.bho, ptr getelementptr inbounds nuw (i8, ptr @Bac_BoxCollectRanges.Bits, i64 4), align 4, !tbaa !18
  %i.bhp = sext i32 %i.bhn to i64
  %i.bhq = getelementptr inbounds [4 x i8], ptr %.pre.i65.i, i64 %i.bhp
  store i32 %i.bha, ptr %i.bhq, align 4, !tbaa !12
  br label %bb.yf

bb.yf:                                            ; preds = %Vec_IntPush.exit.i, %bb.xw
  %.pre1.i67.i = phi ptr [ %.pre1.i68.i, %Vec_IntPush.exit.i ], [ %i.bgq, %bb.xw ] ; 2 uses
  %.pre.i64.i = phi ptr [ %.pre.i65.i, %Vec_IntPush.exit.i ], [ %.pre.i.i406, %bb.xw ]
  %i.bhr = icmp sgt i64 %indvars.iv.i407, 1
  br i1 %i.bhr, label %.lr.ph.i405, label %.critedge.i403.loopexit, !llvm.loop !61

.critedge.i403.loopexit:                          ; preds = %.lr.ph.i405, %bb.yf
  %.pre.i3972.i.ph = phi ptr [ %i.bgq, %.lr.ph.i405 ], [ %.pre1.i67.i, %bb.yf ]
  %.val53.i.pre = load i32, ptr %i.d, align 4, !tbaa !45
  br label %.critedge.i403

.critedge.i403:                                   ; preds = %.critedge.i403.loopexit, %bb.xv
  %.val53.i = phi i32 [ %.val53.i792, %bb.xv ], [ %.val53.i.pre, %.critedge.i403.loopexit ] ; 2 uses
  %.pre.i3972.i = phi ptr [ @Bac_BoxCollectRanges.pArray, %bb.xv ], [ %.pre.i3972.i.ph, %.critedge.i403.loopexit ] ; 2 uses
  %i.bhs = add nuw nsw i64 %indvars.iv776, 1      ; 3 uses
  %i.bht = sext i32 %.val53.i to i64
  %i.bhu = icmp slt i64 %i.bhs, %i.bht
  br i1 %i.bhu, label %.lr.ph56.i, label %Bac_BoxCollectRanges.exit

end_hunk_0
begin_hunk_1_@Bac_ManWriteConcat:bb.a
  br i1 %.not9.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ih = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ig, i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i

bb.br:                                            ; preds = %bb.bp
  %i.ii = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i

bb.bs:                                            ; preds = %bb.bo
  %i.ij = icmp samesign ult i32 %i.ic, 1073741823
  %i.ik = shl nuw nsw i32 %i.ic, 1
  %spec.select.i = select i1 %i.ij, i32 %i.ik, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ic, %spec.select.i
  %.pre499.a = load ptr, ptr %i.f, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i, label %bb.bt, label %Vec_StrPush.exit

bb.bt:                                            ; preds = %bb.bs
  %.not9.i10.i = icmp eq ptr %.pre499.a, null
  %i.il = zext nneg i32 %spec.select.i to i64     ; 2 uses
  br i1 %.not9.i10.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.im = tail call ptr @realloc(ptr noundef nonnull %.pre499.a, i64 noundef %i.il) #15
  br label %Vec_StrGrow.exit11.sink.split.i

bb.bv:                                            ; preds = %bb.bt
  %i.in = tail call noalias ptr @malloc(i64 noundef %i.il) #16
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.bu, %bb.bv, %bb.bq, %bb.br
  %storemerge = phi ptr [ %i.ii, %bb.br ], [ %i.ih, %bb.bq ], [ %i.im, %bb.bu ], [ %i.in, %bb.bv ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.br ], [ 16, %bb.bq ], [ %spec.select.i, %bb.bu ], [ %spec.select.i, %bb.bv ]
  store ptr %storemerge, ptr %i.f, align 8, !tbaa !46
  store i32 %spec.select.sink.i, ptr %i.c, align 8, !tbaa !49
  %.pre500 = load i32, ptr %i.e, align 4, !tbaa !45
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %.Vec_StrPush.exit_crit_edge, %bb.bs, %Vec_StrGrow.exit11.sink.split.i
  %i.io = phi i32 [ %i.ic, %.Vec_StrPush.exit_crit_edge ], [ %i.ic, %bb.bs ], [ %.pre500, %Vec_StrGrow.exit11.sink.split.i ] ; 2 uses
  %i.ip = phi ptr [ %.pre, %.Vec_StrPush.exit_crit_edge ], [ %.pre499.a, %bb.bs ], [ %storemerge, %Vec_StrGrow.exit11.sink.split.i ]
  %i.iq = add nsw i32 %i.io, 1
  store i32 %i.iq, ptr %i.e, align 4, !tbaa !45
  %i.ir = sext i32 %i.io to i64
  %i.is = getelementptr inbounds i8, ptr %i.ip, i64 %i.ir
  store i8 %i.ib, ptr %i.is, align 1, !tbaa !47
  br label %Vec_StrPrintStr.exit267

Vec_StrPrintStr.exit267:                          ; preds = %Bac_ObjGetConst.exit271, %Vec_StrPush.exit
  %.1137 = phi i32 [ 0, %Vec_StrPush.exit ], [ %i.hw, %Bac_ObjGetConst.exit271 ]
  %.1 = phi i32 [ 4, %Vec_StrPush.exit ], [ %i.hx, %Bac_ObjGetConst.exit271 ]
  %indvars.iv.next484 = add nsw i64 %indvars.iv483, 1 ; 2 uses
  %lftr.wideiv486 = trunc i64 %indvars.iv.next484 to i32
  %exitcond487.not = icmp eq i32 %i.hi, %lftr.wideiv486
  br i1 %exitcond487.not, label %.backedge, label %.lr.ph449, !llvm.loop !70

.Vec_StrPush.exit_crit_edge.i275:                 ; preds = %.lr.ph.i272.preheader
  %.pre.i276 = load ptr, ptr %i.f, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i277

bb.bw:                                            ; preds = %.lr.ph.i272.preheader
  %i.it = icmp slt i32 %i.fw, 16
  br i1 %i.it, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.iu = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %.not9.i.i.i287 = icmp eq ptr %i.iu, null
  br i1 %.not9.i.i.i287, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iv = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.iu, i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i284

bb.bz:                                            ; preds = %bb.bx
  %i.iw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i284

bb.ca:                                            ; preds = %bb.bw
  %i.ix = icmp samesign ult i32 %i.fw, 1073741823
  %i.iy = shl nuw nsw i32 %i.fw, 1
  %spec.select.i.i280 = select i1 %i.ix, i32 %i.iy, i32 2147483647 ; 4 uses
  %.not.i9.i.i281 = icmp samesign ult i32 %i.fw, %spec.select.i.i280
  %.pre8.i282 = load ptr, ptr %i.f, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i281, label %bb.cb, label %Vec_StrPush.exit.i277

bb.cb:                                            ; preds = %bb.ca
  %.not9.i10.i.i283 = icmp eq ptr %.pre8.i282, null
  %i.iz = zext nneg i32 %spec.select.i.i280 to i64 ; 2 uses
  br i1 %.not9.i10.i.i283, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ja = tail call ptr @realloc(ptr noundef nonnull %.pre8.i282, i64 noundef %i.iz) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i284

bb.cd:                                            ; preds = %bb.cb
  %i.jb = tail call noalias ptr @malloc(i64 noundef %i.iz) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i284

Vec_StrGrow.exit11.sink.split.i.i284:             ; preds = %bb.cd, %bb.cc, %bb.bz, %bb.by
  %i.jc = phi ptr [ %i.iw, %bb.bz ], [ %i.iv, %bb.by ], [ %i.ja, %bb.cc ], [ %i.jb, %bb.cd ] ; 2 uses
  %spec.select.sink.i.i285 = phi i32 [ 16, %bb.bz ], [ 16, %bb.by ], [ %spec.select.i.i280, %bb.cc ], [ %spec.select.i.i280, %bb.cd ]
  store ptr %i.jc, ptr %i.f, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i285, ptr %i.c, align 8, !tbaa !49
  %.pre9.i286 = load i32, ptr %i.e, align 4, !tbaa !45
  br label %Vec_StrPush.exit.i277

Vec_StrPush.exit.i277:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i284, %bb.ca, %.Vec_StrPush.exit_crit_edge.i275
  %i.jd = phi i32 [ %i.fw, %.Vec_StrPush.exit_crit_edge.i275 ], [ %i.fw, %bb.ca ], [ %.pre9.i286, %Vec_StrGrow.exit11.sink.split.i.i284 ] ; 2 uses
  %i.je = phi ptr [ %.pre.i276, %.Vec_StrPush.exit_crit_edge.i275 ], [ %.pre8.i282, %bb.ca ], [ %i.jc, %Vec_StrGrow.exit11.sink.split.i.i284 ]
  %i.jf = add nsw i32 %i.jd, 1
  store i32 %i.jf, ptr %i.e, align 4, !tbaa !45
  %i.jg = sext i32 %i.jd to i64
  %i.jh = getelementptr inbounds i8, ptr %i.je, i64 %i.jg
  store i8 39, ptr %i.jh, align 1, !tbaa !47
  %i.ji = load i32, ptr %i.e, align 4, !tbaa !45  ; 7 uses
  %i.jj = load i32, ptr %i.c, align 8, !tbaa !49
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %bb.ce, label %.Vec_StrPush.exit_crit_edge.i275.1

.Vec_StrPush.exit_crit_edge.i275.1:               ; preds = %Vec_StrPush.exit.i277
  %.pre.i276.1 = load ptr, ptr %i.f, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i277.1

bb.ce:                                            ; preds = %Vec_StrPush.exit.i277
  %i.jl = icmp slt i32 %i.ji, 16
  br i1 %i.jl, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jm = icmp samesign ult i32 %i.ji, 1073741823
  %i.jn = shl nuw nsw i32 %i.ji, 1
  %spec.select.i.i280.1 = select i1 %i.jm, i32 %i.jn, i32 2147483647 ; 4 uses
  %.not.i9.i.i281.1 = icmp samesign ult i32 %i.ji, %spec.select.i.i280.1
  %.pre8.i282.1 = load ptr, ptr %i.f, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i281.1, label %bb.cg, label %Vec_StrPush.exit.i277.1

bb.cg:                                            ; preds = %bb.cf
  %.not9.i10.i.i283.1 = icmp eq ptr %.pre8.i282.1, null
  %i.jo = zext nneg i32 %spec.select.i.i280.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i283.1, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jp = tail call ptr @realloc(ptr noundef nonnull %.pre8.i282.1, i64 noundef %i.jo) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i284.1

bb.ci:                                            ; preds = %bb.cg
  %i.jq = tail call noalias ptr @malloc(i64 noundef %i.jo) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i284.1

bb.cj:                                            ; preds = %bb.ce
  %i.jr = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %.not9.i.i.i287.1 = icmp eq ptr %i.jr, null
  br i1 %.not9.i.i.i287.1, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.js = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.jr, i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i284.1

bb.cl:                                            ; preds = %bb.cj
  %i.jt = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i284.1

Vec_StrGrow.exit11.sink.split.i.i284.1:           ; preds = %bb.cl, %bb.ck, %bb.ci, %bb.ch
  %i.ju = phi ptr [ %i.jt, %bb.cl ], [ %i.js, %bb.ck ], [ %i.jp, %bb.ch ], [ %i.jq, %bb.ci ] ; 2 uses
  %spec.select.sink.i.i285.1 = phi i32 [ 16, %bb.cl ], [ 16, %bb.ck ], [ %spec.select.i.i280.1, %bb.ch ], [ %spec.select.i.i280.1, %bb.ci ]
  store ptr %i.ju, ptr %i.f, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i285.1, ptr %i.c, align 8, !tbaa !49
  %.pre9.i286.1 = load i32, ptr %i.e, align 4, !tbaa !45
  br label %Vec_StrPush.exit.i277.1

Vec_StrPush.exit.i277.1:                          ; preds = %Vec_StrGrow.exit11.sink.split.i.i284.1, %bb.cf, %.Vec_StrPush.exit_crit_edge.i275.1
  %i.jv = phi i32 [ %i.ji, %.Vec_StrPush.exit_crit_edge.i275.1 ], [ %i.ji, %bb.cf ], [ %.pre9.i286.1, %Vec_StrGrow.exit11.sink.split.i.i284.1 ] ; 2 uses
  %i.jw = phi ptr [ %.pre.i276.1, %.Vec_StrPush.exit_crit_edge.i275.1 ], [ %.pre8.i282.1, %bb.cf ], [ %i.ju, %Vec_StrGrow.exit11.sink.split.i.i284.1 ]
  %i.jx = add nsw i32 %i.jv, 1
  store i32 %i.jx, ptr %i.e, align 4, !tbaa !45
  %i.jy = sext i32 %i.jv to i64
  %i.jz = getelementptr inbounds i8, ptr %i.jw, i64 %i.jy
  store i8 98, ptr %i.jz, align 1, !tbaa !47
  %.not164442 = icmp sgt i32 %.0144464, %.0142.in.lcssa
  br i1 %.not164442, label %.backedge, label %Vec_StrPrintStr.exit288.preheader473

Vec_StrPrintStr.exit288.preheader473:             ; preds = %Vec_StrPush.exit.i277.1
  %i.ka = add i32 %.0142.in.lcssa, 1
  br label %Vec_StrPrintStr.exit288

Vec_StrPrintStr.exit288:                          ; preds = %Vec_StrPrintStr.exit288.preheader473, %Vec_StrPrintStr.exit288
  %indvars.iv479 = phi i64 [ %i.ep, %Vec_StrPrintStr.exit288.preheader473 ], [ %indvars.iv.next480, %Vec_StrPrintStr.exit288 ] ; 2 uses
  %.val179 = load ptr, ptr %i.de, align 8, !tbaa !8
  %i.kb = getelementptr inbounds [4 x i8], ptr %.val179, i64 %indvars.iv479
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !12
  %.val189 = load ptr, ptr %0, align 8, !tbaa !36
  %.val190 = load ptr, ptr %i.y, align 8, !tbaa !46
  %i.kd = getelementptr i8, ptr %.val189, i64 48
  %.val189.val = load ptr, ptr %i.kd, align 8, !tbaa !41
  tail call fastcc void @Bac_ManWriteConstBit(ptr %.val189.val, ptr %.val190, i32 noundef %i.kc, i32 noundef 0)
  %indvars.iv.next480 = add nsw i64 %indvars.iv479, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next480 to i32
  %exitcond482.not = icmp eq i32 %i.ka, %lftr.wideiv
  br i1 %exitcond482.not, label %.backedge, label %Vec_StrPrintStr.exit288, !llvm.loop !71

.backedge:                                        ; preds = %Vec_StrPrintStr.exit288, %Vec_StrPrintStr.exit267, %Bac_ManFindRealIndex.exit, %Bac_ManFindRealIndex.exit402, %Bac_ObjGetRange.exit, %Vec_StrPush.exit.i256.1, %Vec_StrPush.exit.i277.1, %Vec_StrPush.exit.i311, %bb.df
  %.0144.be = phi i32 [ %i.ke, %Bac_ManFindRealIndex.exit ], [ %.1143.lcssa, %Vec_StrPush.exit.i311 ], [ %i.ke, %bb.df ], [ %.0142.lcssa, %Vec_StrPush.exit.i277.1 ], [ %.0142.lcssa, %Vec_StrPrintStr.exit267 ], [ %.0142.lcssa, %Vec_StrPush.exit.i256.1 ], [ %.2.lcssa, %Bac_ObjGetRange.exit ], [ %.2.lcssa, %Bac_ManFindRealIndex.exit402 ], [ %.0142.lcssa, %Vec_StrPrintStr.exit288 ] ; 2 uses
  %.not153 = icmp sgt i32 %.0144.be, %1
  br i1 %.not153, label %.lr.ph.i403, label %bb.ai, !llvm.loop !72

Bac_ObjGetConst.exit.thread:                      ; preds = %Vec_StrPrintStr.exit245, %bb.au
  %i.ke = add nsw i32 %.0144464, 1                ; 4 uses
  %.not156450.not = icmp slt i32 %.0144464, %1    ; 2 uses
  br i1 %.not156450.not, label %.lr.ph452, label %._crit_edge.thread

.lr.ph452:                                        ; preds = %Bac_ObjGetConst.exit.thread, %bb.cm
  %indvars.iv488.in = phi i64 [ %indvars.iv488, %bb.cm ], [ %i.ep, %Bac_ObjGetConst.exit.thread ]
  %indvars.iv488 = add nsw i64 %indvars.iv488.in, 1 ; 4 uses
  %i.kf = getelementptr inbounds [4 x i8], ptr %.val184, i64 %indvars.iv488
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !12
  %.not157 = icmp eq i32 %i.kg, %i.er
  br i1 %.not157, label %bb.cm, label %._crit_edge.split.loop.exit552

bb.cm:                                            ; preds = %.lr.ph452
  %exitcond491.not = icmp eq i64 %indvars.iv488, %i.z
  br i1 %exitcond491.not, label %._crit_edge, label %.lr.ph452, !llvm.loop !73

._crit_edge.split.loop.exit552:                   ; preds = %.lr.ph452
  %i.kh = trunc nsw i64 %indvars.iv488 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.cm, %._crit_edge.split.loop.exit552
  %.1143.lcssa = phi i32 [ %i.kh, %._crit_edge.split.loop.exit552 ], [ %i.dc, %bb.cm ] ; 3 uses
  %i.ki = add nsw i32 %.0144464, 2
  %i.kj = icmp sgt i32 %.1143.lcssa, %i.ki
  br i1 %i.kj, label %.lr.ph.i289, label %._crit_edge.thread

.lr.ph.i289:                                      ; preds = %._crit_edge
  %i.kk = sub nsw i32 %.1143.lcssa, %.0144464
  tail call fastcc void @Vec_StrPrintNum(ptr noundef nonnull %i.c, i32 noundef %i.kk)
  %i.kl = load i32, ptr %i.e, align 4, !tbaa !45  ; 7 uses
  %i.km = load i32, ptr %i.c, align 8, !tbaa !49
  %i.kn = icmp eq i32 %i.kl, %i.km
  br i1 %i.kn, label %bb.cn, label %.Vec_StrPush.exit_crit_edge.i292

.Vec_StrPush.exit_crit_edge.i292:                 ; preds = %.lr.ph.i289
  %.pre.i293 = load ptr, ptr %i.f, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i294

bb.cn:                                            ; preds = %.lr.ph.i289
  %i.ko = icmp slt i32 %i.kl, 16
  br i1 %i.ko, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.kp = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %.not9.i.i.i304 = icmp eq ptr %i.kp, null
  br i1 %.not9.i.i.i304, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kq = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.kp, i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i301

bb.cq:                                            ; preds = %bb.co
  %i.kr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i301

bb.cr:                                            ; preds = %bb.cn
  %i.ks = icmp samesign ult i32 %i.kl, 1073741823
  %i.kt = shl nuw nsw i32 %i.kl, 1
  %spec.select.i.i297 = select i1 %i.ks, i32 %i.kt, i32 2147483647 ; 4 uses
  %.not.i9.i.i298 = icmp samesign ult i32 %i.kl, %spec.select.i.i297
  %.pre8.i299 = load ptr, ptr %i.f, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i298, label %bb.cs, label %Vec_StrPush.exit.i294

bb.cs:                                            ; preds = %bb.cr
  %.not9.i10.i.i300 = icmp eq ptr %.pre8.i299, null
  %i.ku = zext nneg i32 %spec.select.i.i297 to i64 ; 2 uses
  br i1 %.not9.i10.i.i300, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.kv = tail call ptr @realloc(ptr noundef nonnull %.pre8.i299, i64 noundef %i.ku) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i301

bb.cu:                                            ; preds = %bb.cs
  %i.kw = tail call noalias ptr @malloc(i64 noundef %i.ku) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i301

Vec_StrGrow.exit11.sink.split.i.i301:             ; preds = %bb.cu, %bb.ct, %bb.cq, %bb.cp
  %i.kx = phi ptr [ %i.kr, %bb.cq ], [ %i.kq, %bb.cp ], [ %i.kv, %bb.ct ], [ %i.kw, %bb.cu ] ; 2 uses
  %spec.select.sink.i.i302 = phi i32 [ 16, %bb.cq ], [ 16, %bb.cp ], [ %spec.select.i.i297, %bb.ct ], [ %spec.select.i.i297, %bb.cu ]
  store ptr %i.kx, ptr %i.f, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i302, ptr %i.c, align 8, !tbaa !49
  %.pre9.i303 = load i32, ptr %i.e, align 4, !tbaa !45
  br label %Vec_StrPush.exit.i294

Vec_StrPush.exit.i294:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i301, %bb.cr, %.Vec_StrPush.exit_crit_edge.i292
  %i.ky = phi i32 [ %i.kl, %.Vec_StrPush.exit_crit_edge.i292 ], [ %i.kl, %bb.cr ], [ %.pre9.i303, %Vec_StrGrow.exit11.sink.split.i.i301 ] ; 2 uses
  %i.kz = phi ptr [ %.pre.i293, %.Vec_StrPush.exit_crit_edge.i292 ], [ %.pre8.i299, %bb.cr ], [ %i.kx, %Vec_StrGrow.exit11.sink.split.i.i301 ]
  %i.la = add nsw i32 %i.ky, 1
  store i32 %i.la, ptr %i.e, align 4, !tbaa !45
  %i.lb = sext i32 %i.ky to i64
  %i.lc = getelementptr inbounds i8, ptr %i.kz, i64 %i.lb
  store i8 123, ptr %i.lc, align 1, !tbaa !47
  tail call fastcc void @Bac_ManWriteSig(ptr noundef nonnull %0, i32 noundef %.0144464)
  %i.ld = load i32, ptr %i.e, align 4, !tbaa !45  ; 7 uses
  %i.le = load i32, ptr %i.c, align 8, !tbaa !49
  %i.lf = icmp eq i32 %i.ld, %i.le
  br i1 %i.lf, label %bb.cv, label %.Vec_StrPush.exit_crit_edge.i309

.Vec_StrPush.exit_crit_edge.i309:                 ; preds = %Vec_StrPush.exit.i294
  %.pre.i310 = load ptr, ptr %i.f, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i311

bb.cv:                                            ; preds = %Vec_StrPush.exit.i294
  %i.lg = icmp slt i32 %i.ld, 16
  br i1 %i.lg, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %i.lh = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %.not9.i.i.i321 = icmp eq ptr %i.lh, null
  br i1 %.not9.i.i.i321, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.li = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.lh, i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i318

bb.cy:                                            ; preds = %bb.cw
  %i.lj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i318

bb.cz:                                            ; preds = %bb.cv
  %i.lk = icmp samesign ult i32 %i.ld, 1073741823
  %i.ll = shl nuw nsw i32 %i.ld, 1
  %spec.select.i.i314 = select i1 %i.lk, i32 %i.ll, i32 2147483647 ; 4 uses
  %.not.i9.i.i315 = icmp samesign ult i32 %i.ld, %spec.select.i.i314
  %.pre8.i316 = load ptr, ptr %i.f, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i315, label %bb.da, label %Vec_StrPush.exit.i311

bb.da:                                            ; preds = %bb.cz
  %.not9.i10.i.i317 = icmp eq ptr %.pre8.i316, null
  %i.lm = zext nneg i32 %spec.select.i.i314 to i64 ; 2 uses
  br i1 %.not9.i10.i.i317, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ln = tail call ptr @realloc(ptr noundef nonnull %.pre8.i316, i64 noundef %i.lm) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i318

bb.dc:                                            ; preds = %bb.da
  %i.lo = tail call noalias ptr @malloc(i64 noundef %i.lm) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i318

Vec_StrGrow.exit11.sink.split.i.i318:             ; preds = %bb.dc, %bb.db, %bb.cy, %bb.cx
  %i.lp = phi ptr [ %i.lj, %bb.cy ], [ %i.li, %bb.cx ], [ %i.ln, %bb.db ], [ %i.lo, %bb.dc ] ; 2 uses
  %spec.select.sink.i.i319 = phi i32 [ 16, %bb.cy ], [ 16, %bb.cx ], [ %spec.select.i.i314, %bb.db ], [ %spec.select.i.i314, %bb.dc ]
  store ptr %i.lp, ptr %i.f, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i319, ptr %i.c, align 8, !tbaa !49
  %.pre9.i320 = load i32, ptr %i.e, align 4, !tbaa !45
  br label %Vec_StrPush.exit.i311

Vec_StrPush.exit.i311:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i318, %bb.cz, %.Vec_StrPush.exit_crit_edge.i309
  %i.lq = phi i32 [ %i.ld, %.Vec_StrPush.exit_crit_edge.i309 ], [ %i.ld, %bb.cz ], [ %.pre9.i320, %Vec_StrGrow.exit11.sink.split.i.i318 ] ; 2 uses
  %i.lr = phi ptr [ %.pre.i310, %.Vec_StrPush.exit_crit_edge.i309 ], [ %.pre8.i316, %bb.cz ], [ %i.lp, %Vec_StrGrow.exit11.sink.split.i.i318 ]
  %i.ls = add nsw i32 %i.lq, 1
  store i32 %i.ls, ptr %i.e, align 4, !tbaa !45
  %i.lt = sext i32 %i.lq to i64
  %i.lu = getelementptr inbounds i8, ptr %i.lr, i64 %i.lt
  store i8 125, ptr %i.lu, align 1, !tbaa !47
  br label %.backedge

._crit_edge.thread:                               ; preds = %Bac_ObjGetConst.exit.thread, %._crit_edge
  %i.lv = and i8 %i.eu, -4
  %narrow.i.not.i = icmp eq i8 %i.lv, 4           ; 2 uses
  br i1 %narrow.i.not.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %._crit_edge.thread
  %i.lw = getelementptr inbounds [4 x i8], ptr %.val184, i64 %i.es
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !12
  %.val8.i = load ptr, ptr %i.df, align 8, !tbaa !8 ; 2 uses
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [4 x i8], ptr %.val8.i, i64 %i.ly
  br label %Bac_ObjName.exit

bb.de:                                            ; preds = %._crit_edge.thread
  %.val7.i = load ptr, ptr %i.df, align 8, !tbaa !8 ; 2 uses
  %i.ma = getelementptr inbounds [4 x i8], ptr %.val7.i, i64 %i.es
  br label %Bac_ObjName.exit

Bac_ObjName.exit:                                 ; preds = %bb.dd, %bb.de
  %.val8.i.i340 = phi ptr [ %.val8.i, %bb.dd ], [ %.val7.i, %bb.de ] ; 2 uses
  %.in.i = phi ptr [ %i.lz, %bb.dd ], [ %i.ma, %bb.de ]
  %i.mb = load i32, ptr %.in.i, align 4, !tbaa !12 ; 2 uses
  %i.mc = and i32 %i.mb, 3
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bb.df, label %.preheader

.preheader:                                       ; preds = %Bac_ObjName.exit
  br i1 %.not156450.not, label %.lr.ph458, label %._crit_edge459

bb.df:                                            ; preds = %Bac_ObjName.exit
  %i.me = ashr exact i32 %i.mb, 2
  %.val192 = load ptr, ptr %0, align 8, !tbaa !36 ; 2 uses
  %i.mf = getelementptr i8, ptr %.val192, i64 16
  %.val192.val = load ptr, ptr %i.mf, align 8, !tbaa !51
  %i.mg = getelementptr i8, ptr %.val192, i64 48
  %.val192.val195 = load ptr, ptr %i.mg, align 8, !tbaa !41
  tail call fastcc void @Bac_ManWriteVar(ptr %.val192.val, ptr %.val192.val195, i32 noundef %i.me)
end_hunk_1
