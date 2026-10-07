Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMesh?download=true
inline.NumInlined: 287
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh:bb.a
  %i.ul = load i32, ptr %i.tz, align 4, !tbaa !76
  %i.um = load i32, ptr %i.ua, align 4, !tbaa !76
  %i.un = load i32, ptr %i.ub, align 4, !tbaa !76
  %i.uo = insertelement <4 x i32> poison, i32 %i.uk, i64 0
  %i.up = insertelement <4 x i32> %i.uo, i32 %i.ul, i64 1
  %i.uq = insertelement <4 x i32> %i.up, i32 %i.um, i64 2
  %i.ur = insertelement <4 x i32> %i.uq, i32 %i.un, i64 3
  %i.us = icmp slt <4 x i32> %i.uj, splat (i32 2)
  %i.ut = icmp slt <4 x i32> %i.ur, splat (i32 2)
  %i.uu = zext <4 x i1> %i.us to <4 x i32>
  %i.uv = zext <4 x i1> %i.ut to <4 x i32>
  %i.uw = add <4 x i32> %vec.phi1583, %i.uu       ; 2 uses
  %i.ux = add <4 x i32> %vec.phi1584, %i.uv       ; 2 uses
  %index.next1585 = add nuw i64 %index1582, 8     ; 2 uses
  %i.uy = icmp eq i64 %index.next1585, %n.vec1580
  br i1 %i.uy, label %middle.block1586, label %vector.body1581, !llvm.loop !90

middle.block1586:                                 ; preds = %vector.body1581
  %bin.rdx1587 = add <4 x i32> %i.ux, %i.uw
  %i.uz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1587)
  br label %.lr.ph169.i.preheader

.lr.ph169.i.preheader:                            ; preds = %.lr.ph169.preheader.i, %middle.block1586
  %indvars.iv195.i.ph = phi i64 [ 0, %.lr.ph169.preheader.i ], [ %n.vec1580, %middle.block1586 ]
  %.068167.i.ph = phi i32 [ 0, %.lr.ph169.preheader.i ], [ %i.uz, %middle.block1586 ]
  br label %.lr.ph169.i

bb.bj:                                            ; preds = %._crit_edge161.i, %.lr.ph165.i
  %i.va = phi i32 [ %i.sw, %.lr.ph165.i ], [ %i.vn, %._crit_edge161.i ]
  %indvars.iv192.i = phi i64 [ 0, %.lr.ph165.i ], [ %indvars.iv.next193.i, %._crit_edge161.i ] ; 2 uses
  %.077163.i = phi i32 [ 0, %.lr.ph165.i ], [ %.178.lcssa.i, %._crit_edge161.i ] ; 2 uses
  %i.vb = trunc nuw nsw i64 %indvars.iv192.i to i32
  %i.vc = mul i32 %i.rj, %i.vb
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [2 x i8], ptr %i.sy, i64 %i.vd ; 3 uses
  br label %.lr.ph.i94.i427

.lr.ph.i94.i427:                                  ; preds = %bb.bk, %bb.bj
  %indvars.iv.i95.i428 = phi i64 [ %indvars.iv.next.i96.i429, %bb.bk ], [ 0, %bb.bj ] ; 3 uses
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv.i95.i428
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !77
  %i.vh = icmp eq i16 %i.vg, -1
  br i1 %i.vh, label %._crit_edge.loopexit.split.loop.exit15.i98.i439, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i94.i427
  %indvars.iv.next.i96.i429 = add nuw nsw i64 %indvars.iv.i95.i428, 1 ; 2 uses
  %exitcond.not.i97.i430 = icmp eq i64 %indvars.iv.next.i96.i429, %wide.trip.count.i.i425
  br i1 %exitcond.not.i97.i430, label %_ZL14countPolyVertsPKti.exit99.i431, label %.lr.ph.i94.i427

._crit_edge.loopexit.split.loop.exit15.i98.i439:  ; preds = %.lr.ph.i94.i427
  %i.vi = trunc nuw nsw i64 %indvars.iv.i95.i428 to i32
  br label %_ZL14countPolyVertsPKti.exit99.i431

_ZL14countPolyVertsPKti.exit99.i431:              ; preds = %bb.bk, %._crit_edge.loopexit.split.loop.exit15.i98.i439
  %i.vj = phi i32 [ %i.vi, %._crit_edge.loopexit.split.loop.exit15.i98.i439 ], [ %i.rf, %bb.bk ] ; 3 uses
  %i.vk = icmp sgt i32 %i.vj, 0
  br i1 %i.vk, label %.lr.ph160.preheader.i, label %._crit_edge161.i

.lr.ph160.preheader.i:                            ; preds = %_ZL14countPolyVertsPKti.exit99.i431
  %wide.trip.count190.i = zext nneg i32 %i.vj to i64
  %i.vl = zext nneg i32 %i.vj to i64
  %i.vm = getelementptr [2 x i8], ptr %i.ve, i64 %i.vl
  %.phi.trans.insert200.i.phi.trans.insert = getelementptr i8, ptr %i.vm, i64 -2
  %.pre.i.pre = load i16, ptr %.phi.trans.insert200.i.phi.trans.insert, align 2, !tbaa !77
  br label %.lr.ph160.i

._crit_edge161.loopexit.i:                        ; preds = %._crit_edge.thread.i
  %.pre201.i = load i32, ptr %i.cd, align 4, !tbaa !73
  br label %._crit_edge161.i

._crit_edge161.i:                                 ; preds = %._crit_edge161.loopexit.i, %_ZL14countPolyVertsPKti.exit99.i431
  %i.vn = phi i32 [ %i.va, %_ZL14countPolyVertsPKti.exit99.i431 ], [ %.pre201.i, %._crit_edge161.loopexit.i ] ; 2 uses
  %.178.lcssa.i = phi i32 [ %.077163.i, %_ZL14countPolyVertsPKti.exit99.i431 ], [ %.3.i, %._crit_edge161.loopexit.i ] ; 4 uses
  %indvars.iv.next193.i = add nuw nsw i64 %indvars.iv192.i, 1 ; 2 uses
  %i.vo = sext i32 %i.vn to i64
  %i.vp = icmp slt i64 %indvars.iv.next193.i, %i.vo
  br i1 %i.vp, label %bb.bj, label %.preheader.i432

.lr.ph160.i:                                      ; preds = %._crit_edge.thread.i, %.lr.ph160.preheader.i
  %.pre.i = phi i16 [ %.pre.i.pre, %.lr.ph160.preheader.i ], [ %i.vr, %._crit_edge.thread.i ] ; 2 uses
  %indvars.iv187.i = phi i64 [ 0, %.lr.ph160.preheader.i ], [ %indvars.iv.next188.i, %._crit_edge.thread.i ] ; 2 uses
  %.178157.i = phi i32 [ %.077163.i, %.lr.ph160.preheader.i ], [ %.3.i, %._crit_edge.thread.i ] ; 7 uses
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv187.i
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !77 ; 3 uses
  %i.vs = icmp eq i16 %i.vr, %i.re
  br i1 %i.vs, label %.lr.ph160._crit_edge.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph160.i
  %i.vt = icmp eq i16 %.pre.i, %i.re
  br i1 %i.vt, label %.lr.ph160._crit_edge.i, label %._crit_edge.thread.i

.lr.ph160._crit_edge.i:                           ; preds = %bb.bl, %.lr.ph160.i
  %i.vu = phi i16 [ %i.re, %bb.bl ], [ %.pre.i, %.lr.ph160.i ] ; 2 uses
  %i.vv = zext i16 %i.vr to i32                   ; 2 uses
  %i.vw = zext i16 %i.vu to i32                   ; 2 uses
  %i.vx = icmp eq i16 %i.vu, %i.re                ; 2 uses
  %spec.select110.i = select i1 %i.vx, i32 %i.vw, i32 %i.vv
  %spec.select111.i = select i1 %i.vx, i32 %i.vv, i32 %i.vw ; 2 uses
  %i.vy = icmp sgt i32 %.178157.i, 0
  br i1 %i.vy, label %.lr.ph.preheader.i435, label %.critedge.i434

.lr.ph.preheader.i435:                            ; preds = %.lr.ph160._crit_edge.i
  %wide.trip.count185.i = zext nneg i32 %.178157.i to i64 ; 2 uses
  br label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %.thread.i, %.lr.ph.preheader.i435
  %indvars.iv183.ph.i = phi i64 [ %indvars.iv.next184222.i, %.thread.i ], [ 0, %.lr.ph.preheader.i435 ]
  %.072155.ph.i = phi i1 [ true, %.thread.i ], [ false, %.lr.ph.preheader.i435 ]
  br label %.lr.ph.i436

._crit_edge.i438:                                 ; preds = %bb.bm
  br i1 %.072155.ph.i, label %._crit_edge.thread.i, label %.critedge.i434

.lr.ph.i436:                                      ; preds = %bb.bm, %.lr.ph.outer.i
  %indvars.iv183.i = phi i64 [ %indvars.iv.next184.i, %bb.bm ], [ %indvars.iv183.ph.i, %.lr.ph.outer.i ] ; 3 uses
  %.idx.i437 = mul nuw nsw i64 %indvars.iv183.i, 12
  %i.vz = getelementptr inbounds nuw i8, ptr %i.sv, i64 %.idx.i437 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !76
  %i.wc = icmp eq i32 %i.wb, %spec.select111.i
  br i1 %i.wc, label %.thread.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i436
  %indvars.iv.next184.i = add nuw nsw i64 %indvars.iv183.i, 1 ; 2 uses
  %exitcond186.not.i = icmp eq i64 %indvars.iv.next184.i, %wide.trip.count185.i
  br i1 %exitcond186.not.i, label %._crit_edge.i438, label %.lr.ph.i436

.thread.i:                                        ; preds = %.lr.ph.i436
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 8 ; 2 uses
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !76
  %i.wf = add nsw i32 %i.we, 1
  store i32 %i.wf, ptr %i.wd, align 4, !tbaa !76
  %indvars.iv.next184222.i = add nuw nsw i64 %indvars.iv183.i, 1 ; 2 uses
  %exitcond186.not223.i = icmp eq i64 %indvars.iv.next184222.i, %wide.trip.count185.i
  br i1 %exitcond186.not223.i, label %._crit_edge.thread.i, label %.lr.ph.outer.i

.critedge.i434:                                   ; preds = %._crit_edge.i438, %.lr.ph160._crit_edge.i
  %i.wg = mul nsw i32 %.178157.i, 3
  %i.wh = sext i32 %i.wg to i64
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.wh ; 3 uses
  store i32 %spec.select110.i, ptr %i.wi, align 4, !tbaa !76
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  store i32 %spec.select111.i, ptr %i.wj, align 4, !tbaa !76
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  store i32 1, ptr %i.wk, align 4, !tbaa !76
  %i.wl = add nsw i32 %.178157.i, 1
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.thread.i, %.critedge.i434, %._crit_edge.i438, %bb.bl
  %.3.i = phi i32 [ %.178157.i, %bb.bl ], [ %.178157.i, %._crit_edge.i438 ], [ %i.wl, %.critedge.i434 ], [ %.178157.i, %.thread.i ] ; 2 uses
  %indvars.iv.next188.i = add nuw nsw i64 %indvars.iv187.i, 1 ; 2 uses
  %exitcond191.not.i = icmp eq i64 %indvars.iv.next188.i, %wide.trip.count190.i
  br i1 %exitcond191.not.i, label %._crit_edge161.loopexit.i, label %.lr.ph160.i

.lr.ph169.i:                                      ; preds = %.lr.ph169.i.preheader, %.lr.ph169.i
  %indvars.iv195.i = phi i64 [ %indvars.iv.next196.i, %.lr.ph169.i ], [ %indvars.iv195.i.ph, %.lr.ph169.i.preheader ] ; 2 uses
  %.068167.i = phi i32 [ %spec.select.i433, %.lr.ph169.i ], [ %.068167.i.ph, %.lr.ph169.i.preheader ]
  %.idx209.i = mul nuw nsw i64 %indvars.iv195.i, 12
  %i.wm = getelementptr inbounds nuw i8, ptr %i.sv, i64 %.idx209.i
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !76
  %i.wp = icmp slt i32 %i.wo, 2
  %i.wq = zext i1 %i.wp to i32
  %spec.select.i433 = add nuw nsw i32 %.068167.i, %i.wq ; 2 uses
  %indvars.iv.next196.i = add nuw nsw i64 %indvars.iv195.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %indvars.iv.next196.i, %wide.trip.count198.i
  br i1 %exitcond199.not.i, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit, label %.lr.ph169.i, !llvm.loop !91

_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread578: ; preds = %.preheader.i432, %.preheader112.i
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.sv) #8
  br label %bb.bn

_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit: ; preds = %.lr.ph169.i
  %i.wr = icmp samesign ult i32 %spec.select.i433, 3
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.sv) #8
  br i1 %i.wr, label %bb.bn, label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread

bb.bn:                                            ; preds = %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread578, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit
  %i.ws = load i32, ptr %i.ce, align 4, !tbaa !74 ; 35 uses
  %i.wt = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.wu = icmp sgt i32 %i.wt, 0
  br i1 %i.wu, label %.lr.ph601.i, label %._crit_edge602.i

.lr.ph601.i:                                      ; preds = %bb.bn
  %i.wv = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.ww = shl i32 %i.ws, 1
  %i.wx = icmp sgt i32 %i.ws, 0
  %wide.trip.count.i.i453 = zext nneg i32 %i.ws to i64
  %wide.trip.count706.i = zext nneg i32 %i.wt to i64
  %broadcast.splatinsert1563 = insertelement <4 x i16> poison, i16 %i.re, i64 0
  %broadcast.splat1564 = shufflevector <4 x i16> %broadcast.splatinsert1563, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.bo

._crit_edge602.i:                                 ; preds = %._crit_edge.i454, %bb.bn
  %.0371.lcssa.i = phi i32 [ 0, %bb.bn ], [ %.1372.lcssa.i, %._crit_edge.i454 ] ; 5 uses
  %i.wy = sext i32 %.0371.lcssa.i to i64
  %i.wz = shl nsw i64 %i.wy, 2
  %i.xa = sext i32 %i.ws to i64                   ; 9 uses
  %i.xb = mul i64 %i.wz, %i.xa                    ; 4 uses
  %i.xc = shl i64 %i.xb, 2
  %i.xd = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.xc, i32 noundef 1) #8 ; 20 uses
  %.not.i444 = icmp eq ptr %i.xd, null
  br i1 %.not.i444, label %_ZL12removeVertexP9rcContextR10rcPolyMeshti.exit.thread, label %bb.bq

bb.bo:                                            ; preds = %._crit_edge.i454, %.lr.ph601.i
  %indvars.iv703.i = phi i64 [ 0, %.lr.ph601.i ], [ %indvars.iv.next704.i, %._crit_edge.i454 ] ; 2 uses
  %.0371598.i = phi i32 [ 0, %.lr.ph601.i ], [ %.1372.lcssa.i, %._crit_edge.i454 ] ; 4 uses
  %i.xe = trunc nuw nsw i64 %indvars.iv703.i to i32
  %i.xf = mul i32 %i.ww, %i.xe
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [2 x i8], ptr %i.wv, i64 %i.xg ; 3 uses
  br i1 %i.wx, label %.lr.ph.i.i455, label %._crit_edge.i454

.lr.ph.i.i455:                                    ; preds = %bb.bo, %bb.bp
  %indvars.iv.i.i456 = phi i64 [ %indvars.iv.next.i.i457, %bb.bp ], [ 0, %bb.bo ] ; 3 uses
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %indvars.iv.i.i456
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !77
  %i.xk = icmp eq i16 %i.xj, -1
  br i1 %i.xk, label %._crit_edge.loopexit.split.loop.exit15.i.i466, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i455
  %indvars.iv.next.i.i457 = add nuw nsw i64 %indvars.iv.i.i456, 1 ; 2 uses
  %exitcond.not.i.i458 = icmp eq i64 %indvars.iv.next.i.i457, %wide.trip.count.i.i453
  br i1 %exitcond.not.i.i458, label %_ZL14countPolyVertsPKti.exit.i, label %.lr.ph.i.i455

._crit_edge.loopexit.split.loop.exit15.i.i466:    ; preds = %.lr.ph.i.i455
  %i.xl = trunc nuw nsw i64 %indvars.iv.i.i456 to i32
  br label %_ZL14countPolyVertsPKti.exit.i

_ZL14countPolyVertsPKti.exit.i:                   ; preds = %bb.bp, %._crit_edge.loopexit.split.loop.exit15.i.i466
  %i.xm = phi i32 [ %i.xl, %._crit_edge.loopexit.split.loop.exit15.i.i466 ], [ %i.ws, %bb.bp ] ; 3 uses
  %i.xn = icmp sgt i32 %i.xm, 0
  br i1 %i.xn, label %.lr.ph.preheader.i459, label %._crit_edge.i454

.lr.ph.preheader.i459:                            ; preds = %_ZL14countPolyVertsPKti.exit.i
  %wide.trip.count.i460 = zext nneg i32 %i.xm to i64 ; 3 uses
  %min.iters.check1560 = icmp ult i32 %i.xm, 8
  br i1 %min.iters.check1560, label %.lr.ph.i461.preheader, label %vector.ph1561

vector.ph1561:                                    ; preds = %.lr.ph.preheader.i459
  %n.vec1562 = and i64 %wide.trip.count.i460, 2147483640 ; 3 uses
  %i.xo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0371598.i, i64 0
  br label %vector.body1565

vector.body1565:                                  ; preds = %vector.body1565, %vector.ph1561
  %index1566 = phi i64 [ 0, %vector.ph1561 ], [ %index.next1571, %vector.body1565 ] ; 2 uses
  %vec.phi1567 = phi <4 x i32> [ %i.xo, %vector.ph1561 ], [ %i.xv, %vector.body1565 ]
  %vec.phi1568 = phi <4 x i32> [ zeroinitializer, %vector.ph1561 ], [ %i.xw, %vector.body1565 ]
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %index1566 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %wide.load1569 = load <4 x i16>, ptr %i.xp, align 2, !tbaa !77
  %wide.load1570 = load <4 x i16>, ptr %i.xq, align 2, !tbaa !77
  %i.xr = icmp eq <4 x i16> %wide.load1569, %broadcast.splat1564
  %i.xs = icmp eq <4 x i16> %wide.load1570, %broadcast.splat1564
  %i.xt = zext <4 x i1> %i.xr to <4 x i32>
  %i.xu = zext <4 x i1> %i.xs to <4 x i32>
  %i.xv = add <4 x i32> %vec.phi1567, %i.xt       ; 2 uses
  %i.xw = add <4 x i32> %vec.phi1568, %i.xu       ; 2 uses
  %index.next1571 = add nuw i64 %index1566, 8     ; 2 uses
  %i.xx = icmp eq i64 %index.next1571, %n.vec1562
  br i1 %i.xx, label %middle.block1572, label %vector.body1565, !llvm.loop !92

middle.block1572:                                 ; preds = %vector.body1565
  %bin.rdx1573 = add <4 x i32> %i.xw, %i.xv
  %i.xy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1573) ; 2 uses
  %cmp.n1574 = icmp eq i64 %n.vec1562, %wide.trip.count.i460
  br i1 %cmp.n1574, label %._crit_edge.i454, label %.lr.ph.i461.preheader

.lr.ph.i461.preheader:                            ; preds = %.lr.ph.preheader.i459, %middle.block1572
  %indvars.iv.i462.ph = phi i64 [ 0, %.lr.ph.preheader.i459 ], [ %n.vec1562, %middle.block1572 ]
  %.1372596.i.ph = phi i32 [ %.0371598.i, %.lr.ph.preheader.i459 ], [ %i.xy, %middle.block1572 ]
  br label %.lr.ph.i461

._crit_edge.i454:                                 ; preds = %.lr.ph.i461, %middle.block1572, %_ZL14countPolyVertsPKti.exit.i, %bb.bo
  %.1372.lcssa.i = phi i32 [ %.0371598.i, %_ZL14countPolyVertsPKti.exit.i ], [ %.0371598.i, %bb.bo ], [ %i.xy, %middle.block1572 ], [ %spec.select.i463, %.lr.ph.i461 ] ; 2 uses
  %indvars.iv.next704.i = add nuw nsw i64 %indvars.iv703.i, 1 ; 2 uses
  %exitcond707.not.i = icmp eq i64 %indvars.iv.next704.i, %wide.trip.count706.i
  br i1 %exitcond707.not.i, label %._crit_edge602.i, label %bb.bo

.lr.ph.i461:                                      ; preds = %.lr.ph.i461.preheader, %.lr.ph.i461
  %indvars.iv.i462 = phi i64 [ %indvars.iv.next.i464, %.lr.ph.i461 ], [ %indvars.iv.i462.ph, %.lr.ph.i461.preheader ] ; 2 uses
  %.1372596.i = phi i32 [ %spec.select.i463, %.lr.ph.i461 ], [ %.1372596.i.ph, %.lr.ph.i461.preheader ]
  %i.xz = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %indvars.iv.i462
  %i.ya = load i16, ptr %i.xz, align 2, !tbaa !77
  %i.yb = icmp eq i16 %i.ya, %i.re
  %i.yc = zext i1 %i.yb to i32
  %spec.select.i463 = add nsw i32 %.1372596.i, %i.yc ; 2 uses
  %indvars.iv.next.i464 = add nuw nsw i64 %indvars.iv.i462, 1 ; 2 uses
  %exitcond.not.i465 = icmp eq i64 %indvars.iv.next.i464, %wide.trip.count.i460
  br i1 %exitcond.not.i465, label %._crit_edge.i454, label %.lr.ph.i461, !llvm.loop !93

_ZL12removeVertexP9rcContextR10rcPolyMeshti.exit.thread: ; preds = %._crit_edge602.i
  %i.yd = shl i32 %i.ws, 2
  %i.ye = mul i32 %i.yd, %.0371.lcssa.i
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef %i.ye) #8
  br label %bb.dz

bb.bq:                                            ; preds = %._crit_edge602.i
  %i.yf = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.xb, i32 noundef 1) #8 ; 20 uses
  %.not393.i = icmp eq ptr %i.yf, null
  br i1 %.not393.i, label %.critedge583, label %bb.br

.critedge583:                                     ; preds = %bb.bq
  %i.yg = mul nsw i32 %.0371.lcssa.i, %i.ws
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %i.yg) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  br label %bb.dz

bb.br:                                            ; preds = %bb.bq
  %i.yh = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.xb, i32 noundef 1) #8 ; 17 uses
  %.not394.i = icmp eq ptr %i.yh, null
  br i1 %.not394.i, label %.critedge584, label %bb.bs

.critedge584:                                     ; preds = %bb.br
  %i.yi = mul nsw i32 %.0371.lcssa.i, %i.ws
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef %i.yi) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yf) #8
  br label %bb.dz

bb.bs:                                            ; preds = %bb.br
  %i.yj = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.xb, i32 noundef 1) #8 ; 14 uses
  %.not395.i = icmp eq ptr %i.yj, null
  br i1 %.not395.i, label %.critedge585, label %.preheader585.i

.preheader585.i:                                  ; preds = %bb.bs
  %i.yk = load i32, ptr %i.cd, align 4, !tbaa !73 ; 3 uses
  %i.yl = icmp sgt i32 %i.yk, 0
  br i1 %i.yl, label %.lr.ph618.i, label %._crit_edge619.i

.lr.ph618.i:                                      ; preds = %.preheader585.i
  %i.ym = shl i32 %i.ws, 1                        ; 2 uses
  %i.yn = icmp sgt i32 %i.ws, 0
  %wide.trip.count.i421.i = zext nneg i32 %i.ws to i64
  %i.yo = shl nuw nsw i64 %i.xa, 1                ; 2 uses
  %broadcast.splatinsert1530 = insertelement <8 x i16> poison, i16 %i.re, i64 0
  %broadcast.splat1531 = shufflevector <8 x i16> %broadcast.splatinsert1530, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1549 = insertelement <4 x i16> poison, i16 %i.re, i64 0
  %broadcast.splat1550 = shufflevector <4 x i16> %broadcast.splatinsert1549, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %bb.bt

.critedge585:                                     ; preds = %bb.bs
  %i.yp = mul nsw i32 %.0371.lcssa.i, %i.ws
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef %i.yp) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yh) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yf) #8
  br label %bb.dz

._crit_edge619.i:                                 ; preds = %.critedge694.i, %.preheader585.i
  %.0358.lcssa.i = phi i32 [ 0, %.preheader585.i ], [ %.3361.i, %.critedge694.i ] ; 4 uses
  %.lcssa593.i = phi i32 [ %i.yk, %.preheader585.i ], [ %i.acb, %.critedge694.i ] ; 2 uses
  %i.yq = and i32 %.0314813, 65535                ; 4 uses
  %i.yr = load i32, ptr %i.cc, align 8, !tbaa !72
  %i.ys = add nsw i32 %i.yr, -1                   ; 3 uses
  %i.yt = icmp sgt i32 %i.ys, %i.yq
  br i1 %i.yt, label %.lr.ph624.i, label %._crit_edge625.i

.lr.ph624.i:                                      ; preds = %._crit_edge619.i
  %i.yu = load ptr, ptr %3, align 8, !tbaa !68    ; 6 uses
  %i.yv = zext nneg i32 %i.yq to i64              ; 5 uses
  %wide.trip.count720.i = zext nneg i32 %i.ys to i64 ; 3 uses
  %i.yw = sub nsw i64 %wide.trip.count720.i, %i.yv
  %xtraiter1784 = and i64 %i.yw, 1
  %lcmp.mod1785.not = icmp eq i64 %xtraiter1784, 0
  br i1 %lcmp.mod1785.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph624.i
  %indvars.iv.next718.i.prol = add nuw nsw i64 %i.yv, 1 ; 2 uses
  %.idx.i451.prol = mul nuw nsw i64 %indvars.iv.next718.i.prol, 6
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.idx.i451.prol ; 2 uses
  %.idx820.i.prol = mul nuw nsw i64 %i.yv, 6
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.idx820.i.prol ; 2 uses
  %i.yz = load <2 x i16>, ptr %i.yx, align 2, !tbaa !77
  store <2 x i16> %i.yz, ptr %i.yy, align 2, !tbaa !77
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !77
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yy, i64 4
  store i16 %i.zb, ptr %i.zc, align 2, !tbaa !77
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph624.i
  %indvars.iv717.i.unr = phi i64 [ %i.yv, %.lr.ph624.i ], [ %indvars.iv.next718.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.zd = add nsw i64 %wide.trip.count720.i, -1
  %i.ze = icmp eq i64 %i.zd, %i.yv
  br i1 %i.ze, label %._crit_edge625.i, label %.lr.ph624.i.new

bb.bt:                                            ; preds = %.critedge694.i, %.lr.ph618.i
  %i.zf = phi i32 [ %i.yk, %.lr.ph618.i ], [ %i.acb, %.critedge694.i ] ; 3 uses
  %.0356617.i = phi i32 [ 0, %.lr.ph618.i ], [ %i.acc, %.critedge694.i ] ; 6 uses
  %.0358616.i = phi i32 [ 0, %.lr.ph618.i ], [ %.3361.i, %.critedge694.i ] ; 4 uses
  %i.zg = load ptr, ptr %i.bv, align 8, !tbaa !69 ; 2 uses
  %i.zh = mul i32 %.0356617.i, %i.ym              ; 2 uses
  %i.zi = sext i32 %i.zh to i64
  %i.zj = getelementptr inbounds [2 x i8], ptr %i.zg, i64 %i.zi ; 8 uses
  br i1 %i.yn, label %.lr.ph.i422.i, label %.critedge694.i

.lr.ph.i422.i:                                    ; preds = %bb.bt, %bb.bu
  %indvars.iv.i423.i = phi i64 [ %indvars.iv.next.i424.i, %bb.bu ], [ 0, %bb.bt ] ; 3 uses
  %i.zk = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %indvars.iv.i423.i
  %i.zl = load i16, ptr %i.zk, align 2, !tbaa !77
end_hunk_0
begin_hunk_1_@_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh:bb.a
  %i.axb = icmp sgt i64 %indvars.iv761.i804, 2
  br i1 %i.axb, label %.lr.ph679.preheader.i, label %.thread.loopexit.i.loopexit

.thread.loopexit.i.loopexit:                      ; preds = %._crit_edge680.i, %bb.du
  %indvars.iv761.i.lcssa.ph = phi i64 [ 1, %bb.du ], [ %indvars.iv761.i804, %._crit_edge680.i ]
  %i.axc = trunc nsw i64 %indvars.iv761.i.lcssa.ph to i32
  br label %.thread.i446

.thread.i446:                                     ; preds = %.preheader.i448, %.thread.loopexit.i.loopexit, %bb.dc
  %.4.i = phi i32 [ %.1333.i, %bb.dc ], [ %.1333.i, %.preheader.i448 ], [ %i.axc, %.thread.loopexit.i.loopexit ] ; 2 uses
  %i.axd = icmp sgt i32 %.4.i, 0
  br i1 %i.axd, label %.lr.ph692.i, label %.loopexit.i447

.lr.ph692.i:                                      ; preds = %.thread.i446
  %i.axe = shl i32 %i.ws, 1
  %i.axf = shl nsw i64 %i.xa, 2
  %i.axg = icmp sgt i32 %i.ws, 0
  %wide.trip.count772.i = zext nneg i32 %.4.i to i64
  %.pre774.i = load i32, ptr %i.cd, align 4, !tbaa !73
  %wide.trip.count767.i = zext i32 %i.ws to i64   ; 8 uses
  %i.axh = mul nsw i64 %i.xa, -2
  %min.iters.check1425 = icmp ult i32 %i.ws, 4
  %min.iters.check1427 = icmp ult i32 %i.ws, 16
  %i.axi = and i64 %wide.trip.count767.i, 12
  %n.vec1429 = and i64 %wide.trip.count767.i, 2147483632 ; 4 uses
  %cmp.n1436 = icmp eq i64 %n.vec1429, %wide.trip.count767.i
  %min.epilog.iters.check1441 = icmp eq i64 %i.axi, 0
  %n.vec1443 = and i64 %wide.trip.count767.i, 2147483644 ; 3 uses
  %cmp.n1449 = icmp eq i64 %n.vec1443, %wide.trip.count767.i
  %xtraiter1799 = and i64 %wide.trip.count767.i, 3 ; 2 uses
  %lcmp.mod1800.not = icmp eq i64 %xtraiter1799, 0
  br label %bb.dw

bb.dv:                                            ; preds = %.critedge418.i
  %indvars.iv.next770.i = add nuw nsw i64 %indvars.iv769.i, 1 ; 2 uses
  %exitcond773.not.i = icmp eq i64 %indvars.iv.next770.i, %wide.trip.count772.i
  br i1 %exitcond773.not.i, label %.loopexit.i447, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.lr.ph692.i
  %i.axj = phi i32 [ %.pre774.i, %.lr.ph692.i ], [ %i.ayt, %bb.dv ] ; 2 uses
  %indvars.iv769.i = phi i64 [ 0, %.lr.ph692.i ], [ %indvars.iv.next770.i, %bb.dv ] ; 5 uses
  %i.axk = mul i64 %i.axh, %indvars.iv769.i
  %i.axl = sub i64 %i.axk, %i.amo
  %.not406.i = icmp slt i32 %i.axj, %.0350.lcssa1116
  br i1 %.not406.i, label %bb.dx, label %.loopexit.i447

bb.dx:                                            ; preds = %bb.dw
  %i.axm = load ptr, ptr %i.bv, align 8, !tbaa !69 ; 2 uses
  %i.axn = ptrtoaddr ptr %i.axm to i64
  %i.axo = mul i32 %i.axe, %i.axj
  %i.axp = sext i32 %i.axo to i64                 ; 2 uses
  %i.axq = getelementptr inbounds [2 x i8], ptr %i.axm, i64 %i.axp ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.axq, i8 -1, i64 %i.axf, i1 false)
  br i1 %i.axg, label %iter.check1438, label %.critedge418.i

iter.check1438:                                   ; preds = %bb.dx
  %i.axr = mul nuw nsw i64 %indvars.iv769.i, %i.xa
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.amn, i64 %i.axr ; 7 uses
  br i1 %min.iters.check1425, label %vec.epilog.scalar.ph1439.preheader, label %vector.memcheck1423

vector.memcheck1423:                              ; preds = %iter.check1438
  %i.axs = add i64 %i.axl, %i.axn
  %i.axt = shl nsw i64 %i.axp, 1
  %i.axu = add i64 %i.axs, %i.axt
  %i.axv = add i64 %i.axu, -1
  %diff.check1424 = icmp ult i64 %i.axv, 31
  br i1 %diff.check1424, label %vec.epilog.scalar.ph1439.preheader, label %vector.main.loop.iter.check1426

vector.main.loop.iter.check1426:                  ; preds = %vector.memcheck1423
  br i1 %min.iters.check1427, label %vec.epilog.ph1442, label %vector.body1430

vector.body1430:                                  ; preds = %vector.main.loop.iter.check1426, %vector.body1430
  %index1431 = phi i64 [ %index.next1434, %vector.body1430 ], [ 0, %vector.main.loop.iter.check1426 ] ; 3 uses
  %i.axw = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index1431 ; 2 uses
  %i.axx = getelementptr i8, ptr %i.axw, i64 16
  %wide.load1432 = load <8 x i16>, ptr %i.axw, align 2, !tbaa !77
  %wide.load1433 = load <8 x i16>, ptr %i.axx, align 2, !tbaa !77
  %i.axy = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %index1431 ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 16
  store <8 x i16> %wide.load1432, ptr %i.axy, align 2, !tbaa !77
  store <8 x i16> %wide.load1433, ptr %i.axz, align 2, !tbaa !77
  %index.next1434 = add nuw i64 %index1431, 16    ; 2 uses
  %i.aya = icmp eq i64 %index.next1434, %n.vec1429
  br i1 %i.aya, label %middle.block1435, label %vector.body1430, !llvm.loop !100

middle.block1435:                                 ; preds = %vector.body1430
  br i1 %cmp.n1436, label %.critedge418.i, label %vec.epilog.iter.check1440

vec.epilog.iter.check1440:                        ; preds = %middle.block1435
  br i1 %min.epilog.iters.check1441, label %vec.epilog.scalar.ph1439.preheader, label %vec.epilog.ph1442, !prof !114

vec.epilog.ph1442:                                ; preds = %vector.main.loop.iter.check1426, %vec.epilog.iter.check1440
  %vec.epilog.resume.val1437 = phi i64 [ %n.vec1429, %vec.epilog.iter.check1440 ], [ 0, %vector.main.loop.iter.check1426 ]
  br label %vec.epilog.vector.body1444

vec.epilog.vector.body1444:                       ; preds = %vec.epilog.vector.body1444, %vec.epilog.ph1442
  %index1445 = phi i64 [ %vec.epilog.resume.val1437, %vec.epilog.ph1442 ], [ %index.next1447, %vec.epilog.vector.body1444 ] ; 3 uses
  %i.ayb = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index1445
  %wide.load1446 = load <4 x i16>, ptr %i.ayb, align 2, !tbaa !77
  %i.ayc = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %index1445
  store <4 x i16> %wide.load1446, ptr %i.ayc, align 2, !tbaa !77
  %index.next1447 = add nuw i64 %index1445, 4     ; 2 uses
  %i.ayd = icmp eq i64 %index.next1447, %n.vec1443
  br i1 %i.ayd, label %vec.epilog.middle.block1448, label %vec.epilog.vector.body1444, !llvm.loop !101

vec.epilog.middle.block1448:                      ; preds = %vec.epilog.vector.body1444
  br i1 %cmp.n1449, label %.critedge418.i, label %vec.epilog.scalar.ph1439.preheader

vec.epilog.scalar.ph1439.preheader:               ; preds = %iter.check1438, %vector.memcheck1423, %vec.epilog.iter.check1440, %vec.epilog.middle.block1448
  %indvars.iv764.i.ph = phi i64 [ 0, %iter.check1438 ], [ 0, %vector.memcheck1423 ], [ %n.vec1429, %vec.epilog.iter.check1440 ], [ %n.vec1443, %vec.epilog.middle.block1448 ] ; 3 uses
  br i1 %lcmp.mod1800.not, label %vec.epilog.scalar.ph1439.prol.loopexit, label %vec.epilog.scalar.ph1439.prol

vec.epilog.scalar.ph1439.prol:                    ; preds = %vec.epilog.scalar.ph1439.preheader, %vec.epilog.scalar.ph1439.prol
  %indvars.iv764.i.prol = phi i64 [ %indvars.iv.next765.i.prol, %vec.epilog.scalar.ph1439.prol ], [ %indvars.iv764.i.ph, %vec.epilog.scalar.ph1439.preheader ] ; 3 uses
  %prol.iter1801 = phi i64 [ %prol.iter1801.next, %vec.epilog.scalar.ph1439.prol ], [ 0, %vec.epilog.scalar.ph1439.preheader ]
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv764.i.prol
  %i.aye = load i16, ptr %gep.i.prol, align 2, !tbaa !77
  %i.ayf = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv764.i.prol
  store i16 %i.aye, ptr %i.ayf, align 2, !tbaa !77
  %indvars.iv.next765.i.prol = add nuw nsw i64 %indvars.iv764.i.prol, 1 ; 2 uses
  %prol.iter1801.next = add i64 %prol.iter1801, 1 ; 2 uses
  %prol.iter1801.cmp.not = icmp eq i64 %prol.iter1801.next, %xtraiter1799
  br i1 %prol.iter1801.cmp.not, label %vec.epilog.scalar.ph1439.prol.loopexit, label %vec.epilog.scalar.ph1439.prol, !llvm.loop !102

vec.epilog.scalar.ph1439.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1439.prol, %vec.epilog.scalar.ph1439.preheader
  %indvars.iv764.i.unr = phi i64 [ %indvars.iv764.i.ph, %vec.epilog.scalar.ph1439.preheader ], [ %indvars.iv.next765.i.prol, %vec.epilog.scalar.ph1439.prol ]
  %i.ayg = sub nsw i64 %indvars.iv764.i.ph, %wide.trip.count767.i
  %i.ayh = icmp ugt i64 %i.ayg, -4
  br i1 %i.ayh, label %.critedge418.i, label %vec.epilog.scalar.ph1439

.critedge418.i:                                   ; preds = %vec.epilog.scalar.ph1439.prol.loopexit, %vec.epilog.scalar.ph1439, %middle.block1435, %vec.epilog.middle.block1448, %bb.dx
  %i.ayi = getelementptr inbounds nuw [2 x i8], ptr %i.ams, i64 %indvars.iv769.i
  %i.ayj = load i16, ptr %i.ayi, align 2, !tbaa !77
  %i.ayk = load ptr, ptr %i.bz, align 8, !tbaa !70
  %i.ayl = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.aym = sext i32 %i.ayl to i64                 ; 2 uses
  %i.ayn = getelementptr inbounds [2 x i8], ptr %i.ayk, i64 %i.aym
  store i16 %i.ayj, ptr %i.ayn, align 2, !tbaa !77
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.amt, i64 %indvars.iv769.i
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !78
  %i.ayq = load ptr, ptr %i.cb, align 8, !tbaa !71
  %i.ayr = getelementptr inbounds i8, ptr %i.ayq, i64 %i.aym
  store i8 %i.ayp, ptr %i.ayr, align 1, !tbaa !78
  %i.ays = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.ayt = add nsw i32 %i.ays, 1                  ; 3 uses
  store i32 %i.ayt, ptr %i.cd, align 4, !tbaa !73
  %.not407.i = icmp slt i32 %i.ays, %.0350.lcssa1116
  br i1 %.not407.i, label %bb.dv, label %bb.dy

vec.epilog.scalar.ph1439:                         ; preds = %vec.epilog.scalar.ph1439.prol.loopexit, %vec.epilog.scalar.ph1439
  %indvars.iv764.i = phi i64 [ %indvars.iv.next765.i.3, %vec.epilog.scalar.ph1439 ], [ %indvars.iv764.i.unr, %vec.epilog.scalar.ph1439.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv764.i
  %i.ayu = load i16, ptr %gep.i, align 2, !tbaa !77
  %i.ayv = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv764.i
  store i16 %i.ayu, ptr %i.ayv, align 2, !tbaa !77
  %indvars.iv.next765.i = add nuw nsw i64 %indvars.iv764.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next765.i
  %i.ayw = load i16, ptr %gep.i.1, align 2, !tbaa !77
  %i.ayx = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv.next765.i
  store i16 %i.ayw, ptr %i.ayx, align 2, !tbaa !77
  %indvars.iv.next765.i.1 = add nuw nsw i64 %indvars.iv764.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next765.i.1
  %i.ayy = load i16, ptr %gep.i.2, align 2, !tbaa !77
  %i.ayz = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv.next765.i.1
  store i16 %i.ayy, ptr %i.ayz, align 2, !tbaa !77
  %indvars.iv.next765.i.2 = add nuw nsw i64 %indvars.iv764.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next765.i.2
  %i.aza = load i16, ptr %gep.i.3, align 2, !tbaa !77
  %i.azb = getelementptr inbounds nuw [2 x i8], ptr %i.axq, i64 %indvars.iv.next765.i.2
  store i16 %i.aza, ptr %i.azb, align 2, !tbaa !77
  %indvars.iv.next765.i.3 = add nuw nsw i64 %indvars.iv764.i, 4 ; 2 uses
  %exitcond768.not.i.3 = icmp eq i64 %indvars.iv.next765.i.3, %wide.trip.count767.i
  br i1 %exitcond768.not.i.3, label %.critedge418.i, label %vec.epilog.scalar.ph1439, !llvm.loop !103

bb.dy:                                            ; preds = %.critedge418.i
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.46, i32 noundef %i.ayt, i32 noundef range(i32 0, -2147483648) %.0350.lcssa1116) #8
  br label %.critedge592

.loopexit.i447:                                   ; preds = %bb.dw, %bb.dv, %.thread.i446, %._crit_edge657.i, %bb.cw
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amt) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.ams) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amn) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alo) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.all) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.ali) #8
  br label %.preheader

.critedge592:                                     ; preds = %bb.dy, %bb.cv
  tail call void @_Z6rcFreePv(ptr noundef %i.amt) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.ams) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amn) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alo) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.all) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.ali) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yj) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yh) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yf) #8
  br label %bb.dz

bb.dz:                                            ; preds = %.critedge592, %.critedge591, %.critedge590, %.critedge589, %.critedge588, %.critedge587, %.critedge585, %.critedge584, %.critedge583, %_ZL12removeVertexP9rcContextR10rcPolyMeshti.exit.thread
  %.sink = phi ptr [ %i.xd, %.critedge592 ], [ %i.xd, %.critedge591 ], [ %i.xd, %.critedge590 ], [ %i.xd, %.critedge589 ], [ %i.xd, %.critedge588 ], [ %i.xd, %.critedge587 ], [ %i.xd, %.critedge585 ], [ %i.xd, %.critedge584 ], [ %i.xd, %.critedge583 ], [ null, %_ZL12removeVertexP9rcContextR10rcPolyMeshti.exit.thread ]
  tail call void @_Z6rcFreePv(ptr noundef %.sink) #8
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %.0314813) #8
  br label %bb.ev

.preheader:                                       ; preds = %._crit_edge635.i, %.loopexit.i447
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yj) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yh) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yf) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.xd) #8
  %i.azc = load i32, ptr %i.cc, align 8, !tbaa !72
  %i.azd = icmp slt i32 %.0314813, %i.azc
  br i1 %i.azd, label %.lr.ph810, label %._crit_edge811

._crit_edge811:                                   ; preds = %.lr.ph810, %.preheader
  %i.aze = add nsw i32 %.0314813, -1
  br label %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread

.lr.ph810:                                        ; preds = %.preheader, %.lr.ph810
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %.lr.ph810 ], [ %i.rb, %.preheader ] ; 2 uses
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, 1 ; 3 uses
  %i.azf = getelementptr inbounds i8, ptr %i.bm, i64 %indvars.iv.next1009
  %i.azg = load i8, ptr %i.azf, align 1, !tbaa !78
  %i.azh = getelementptr inbounds i8, ptr %i.bm, i64 %indvars.iv1008
  store i8 %i.azg, ptr %i.azh, align 1, !tbaa !78
  %i.azi = load i32, ptr %i.cc, align 8, !tbaa !72
  %i.azj = sext i32 %i.azi to i64
  %i.azk = icmp slt i64 %indvars.iv.next1009, %i.azj
  br i1 %i.azk, label %.lr.ph810, label %._crit_edge811

_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread: ; preds = %.lr.ph125.i, %bb.bg, %._crit_edge126.i, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread580, %.lr.ph814, %._crit_edge811, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit
  %.1 = phi i32 [ %i.aze, %._crit_edge811 ], [ %.0314813, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit ], [ %.0314813, %.lr.ph814 ], [ %.0314813, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread580 ], [ %.0314813, %._crit_edge126.i ], [ %.0314813, %bb.bg ], [ %.0314813, %.lr.ph125.i ]
  %i.azl = add nsw i32 %.1, 1                     ; 2 uses
  %i.azm = load i32, ptr %i.cc, align 8, !tbaa !72 ; 2 uses
  %.not399 = icmp slt i32 %i.azl, %i.azm
  br i1 %.not399, label %.lr.ph814, label %.critedge407

.critedge407:                                     ; preds = %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread, %.critedge405.preheader
  %i.azn = phi i32 [ %i.dj, %.critedge405.preheader ], [ %i.azm, %_ZL15canRemoveVertexP9rcContextR10rcPolyMesht.exit.thread ]
  %i.azo = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.azp = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.azq = tail call fastcc noundef zeroext i1 @_ZL18buildMeshAdjacencyPtiii(ptr noundef %i.azo, i32 noundef %i.azp, i32 noundef %i.azn, i32 noundef %2)
  br i1 %i.azq, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.critedge407
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.14) #8
  br label %bb.ev

bb.eb:                                            ; preds = %.critedge407
  %i.azr = load i32, ptr %i.ad, align 8, !tbaa !65
  %i.azs = icmp sgt i32 %i.azr, 0
  %.pre1026 = load i32, ptr %i.cd, align 4, !tbaa !73 ; 3 uses
  br i1 %i.azs, label %bb.ec, label %.loopexit

bb.ec:                                            ; preds = %bb.eb
  %i.azt = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !118 ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.azw = load i32, ptr %i.azv, align 8, !tbaa !119 ; 2 uses
  %i.azx = icmp sgt i32 %.pre1026, 0
  br i1 %i.azx, label %.lr.ph822, label %.loopexit

.lr.ph822:                                        ; preds = %bb.ec
  %i.azy = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.azz = shl i32 %2, 1
  %i.baa = icmp sgt i32 %2, 0
  br i1 %i.baa, label %.lr.ph817.preheader, label %.loopexit

.lr.ph817.preheader:                              ; preds = %.lr.ph822
  %i.bab = zext nneg i32 %2 to i64                ; 2 uses
  %wide.trip.count1022 = zext nneg i32 %.pre1026 to i64
  br label %.lr.ph817

.lr.ph817:                                        ; preds = %.lr.ph817.preheader, %._crit_edge818
  %indvars.iv1018 = phi i64 [ 0, %.lr.ph817.preheader ], [ %indvars.iv.next1019, %._crit_edge818 ] ; 2 uses
  %i.bac = trunc nuw nsw i64 %indvars.iv1018 to i32
  %i.bad = mul i32 %i.azz, %i.bac
  %i.bae = sext i32 %i.bad to i64
  %i.baf = getelementptr inbounds [2 x i8], ptr %i.azy, i64 %i.bae ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.baf, i64 %i.bab
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph817, %._crit_edge1027
  %indvars.iv1012 = phi i64 [ 0, %.lr.ph817 ], [ %i.bak, %._crit_edge1027 ] ; 3 uses
  %i.bag = getelementptr inbounds nuw [2 x i8], ptr %i.baf, i64 %indvars.iv1012
  %i.bah = load i16, ptr %i.bag, align 2, !tbaa !77 ; 2 uses
  %i.bai = icmp eq i16 %i.bah, -1
  br i1 %i.bai, label %._crit_edge818, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv1012 ; 2 uses
  %i.baj = load i16, ptr %gep, align 2, !tbaa !77
  %.not401 = icmp eq i16 %i.baj, -1
  %i.bak = add nuw nsw i64 %indvars.iv1012, 1     ; 4 uses
  br i1 %.not401, label %bb.ef, label %._crit_edge1027

bb.ef:                                            ; preds = %bb.ee
  %.not402 = icmp slt i64 %i.bak, %i.br
  br i1 %.not402, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.bal = getelementptr inbounds nuw [2 x i8], ptr %i.baf, i64 %i.bak
  %i.bam = load i16, ptr %i.bal, align 2, !tbaa !77 ; 2 uses
  %i.ban = icmp eq i16 %i.bam, -1
  br i1 %i.ban, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pre1025 = load i16, ptr %i.baf, align 2, !tbaa !77
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.bao = phi i16 [ %.pre1025, %bb.eh ], [ %i.bam, %bb.eg ]
  %i.bap = load ptr, ptr %3, align 8, !tbaa !68   ; 2 uses
  %i.baq = zext i16 %i.bah to i64
  %.idx = mul nuw nsw i64 %i.baq, 6
  %i.bar = getelementptr inbounds nuw i8, ptr %i.bap, i64 %.idx ; 2 uses
  %i.bas = zext i16 %i.bao to i64
  %.idx403 = mul nuw nsw i64 %i.bas, 6
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bap, i64 %.idx403 ; 4 uses
  %i.bau = load i16, ptr %i.bar, align 2, !tbaa !77 ; 2 uses
  %i.bav = icmp eq i16 %i.bau, 0
  br i1 %i.bav, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.baw = load i16, ptr %i.bat, align 2, !tbaa !77
  %i.bax = icmp eq i16 %i.baw, 0
  br i1 %i.bax, label %._crit_edge1027.sink.split, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bar, i64 4
  %i.baz = load i16, ptr %i.bay, align 2, !tbaa !77 ; 2 uses
  %i.bba = zext i16 %i.baz to i32
  %i.bbb = icmp eq i32 %i.azw, %i.bba
  br i1 %i.bbb, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bat, i64 4
  %i.bbd = load i16, ptr %i.bbc, align 2, !tbaa !77
  %i.bbe = zext i16 %i.bbd to i32
  %i.bbf = icmp eq i32 %i.azw, %i.bbe
  br i1 %i.bbf, label %._crit_edge1027.sink.split, label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.bbg = zext i16 %i.bau to i32
  %i.bbh = icmp eq i32 %i.azu, %i.bbg
  br i1 %i.bbh, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.bbi = load i16, ptr %i.bat, align 2, !tbaa !77
  %i.bbj = zext i16 %i.bbi to i32
  %i.bbk = icmp eq i32 %i.azu, %i.bbj
  br i1 %i.bbk, label %._crit_edge1027.sink.split, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.bbl = icmp eq i16 %i.baz, 0
  br i1 %i.bbl, label %bb.ep, label %._crit_edge1027

bb.ep:                                            ; preds = %bb.eo
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bat, i64 4
  %i.bbn = load i16, ptr %i.bbm, align 2, !tbaa !77
  %i.bbo = icmp eq i16 %i.bbn, 0
  br i1 %i.bbo, label %._crit_edge1027.sink.split, label %._crit_edge1027

._crit_edge1027.sink.split:                       ; preds = %bb.ep, %bb.en, %bb.el, %bb.ej
  %.sink1264 = phi i16 [ -32768, %bb.ej ], [ -32767, %bb.el ], [ -32766, %bb.en ], [ -32765, %bb.ep ]
  store i16 %.sink1264, ptr %gep, align 2, !tbaa !77
  br label %._crit_edge1027

._crit_edge1027:                                  ; preds = %._crit_edge1027.sink.split, %bb.ee, %bb.ep, %bb.eo
  %exitcond1017.not = icmp eq i64 %i.bak, %i.bab
  br i1 %exitcond1017.not, label %._crit_edge818, label %bb.ed

._crit_edge818:                                   ; preds = %._crit_edge1027, %bb.ed
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 1 ; 2 uses
  %exitcond1023.not = icmp eq i64 %indvars.iv.next1019, %wide.trip.count1022
  br i1 %exitcond1023.not, label %.loopexit, label %.lr.ph817

.loopexit:                                        ; preds = %._crit_edge818, %bb.ec, %.lr.ph822, %bb.eb
  %i.bbp = sext i32 %.pre1026 to i64
  %i.bbq = shl nsw i64 %i.bbp, 1
  %i.bbr = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bbq, i32 noundef 0) #8 ; 3 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bbr, ptr %i.bbs, align 8, !tbaa !82
  %.not400 = icmp eq ptr %i.bbr, null
  %i.bbt = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  br i1 %.not400, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.loopexit
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.15, i32 noundef %i.bbt) #8
  br label %bb.ev

bb.er:                                            ; preds = %.loopexit
  %i.bbu = sext i32 %i.bbt to i64
  %i.bbv = shl nsw i64 %i.bbu, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bbr, i8 0, i64 %i.bbv, i1 false)
  %i.bbw = load i32, ptr %i.cc, align 8, !tbaa !72 ; 2 uses
  %i.bbx = icmp sgt i32 %i.bbw, 65535
  br i1 %i.bbx, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.16, i32 noundef %i.bbw, i32 noundef 65535) #8
  br label %bb.et
end_hunk_1
