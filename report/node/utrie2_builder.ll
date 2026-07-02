inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@utrie2_freeze_78:bb.a
  %i.agr = sub nsw i32 %i.afw, %i.agq
  %broadcast.splatinsert1722 = insertelement <4 x i32> poison, i32 %.0139.151, i64 0
  %broadcast.splat1723 = shufflevector <4 x i32> %broadcast.splatinsert1722, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1724

vector.body1724:                                  ; preds = %vector.body1724, %vector.ph1719
  %index1725 = phi i64 [ 0, %vector.ph1719 ], [ %index.next1730, %vector.body1724 ] ; 3 uses
  %i.ags = shl i64 %index1725, 2
  %next.gep1726 = getelementptr i8, ptr %i.afz, i64 %i.ags ; 2 uses
  %i.agt = shl i64 %index1725, 1
  %next.gep1727 = getelementptr i8, ptr %.3130.lcssa, i64 %i.agt ; 2 uses
  %i.agu = getelementptr i8, ptr %next.gep1726, i64 16
  %wide.load1728 = load <4 x i32>, ptr %next.gep1726, align 4, !alias.scope !48
  %wide.load1729 = load <4 x i32>, ptr %i.agu, align 4, !alias.scope !48
  %i.agv = add <4 x i32> %wide.load1728, %broadcast.splat1723
  %i.agw = add <4 x i32> %wide.load1729, %broadcast.splat1723
  %i.agx = lshr <4 x i32> %i.agv, splat (i32 2)
  %i.agy = lshr <4 x i32> %i.agw, splat (i32 2)
  %i.agz = trunc <4 x i32> %i.agx to <4 x i16>
  %i.aha = trunc <4 x i32> %i.agy to <4 x i16>
  %i.ahb = getelementptr i8, ptr %next.gep1727, i64 8
  store <4 x i16> %i.agz, ptr %next.gep1727, align 2, !alias.scope !51, !noalias !48
  store <4 x i16> %i.aha, ptr %i.ahb, align 2, !alias.scope !51, !noalias !48
  %index.next1730 = add nuw i64 %index1725, 8     ; 2 uses
  %i.ahc = icmp eq i64 %index.next1730, %n.vec1721
  br i1 %i.ahc, label %middle.block1731, label %vector.body1724, !llvm.loop !53

middle.block1731:                                 ; preds = %vector.body1724
  %cmp.n1732 = icmp eq i64 %n.vec1721, %i.aga
  br i1 %cmp.n1732, label %.loopexit152, label %.lr.ph521.preheader1760

.lr.ph521.preheader1760:                          ; preds = %vector.memcheck1711, %.lr.ph521.preheader, %middle.block1731
  %.2519.ph = phi ptr [ %i.afz, %vector.memcheck1711 ], [ %i.afz, %.lr.ph521.preheader ], [ %i.agn, %middle.block1731 ]
  %.4518.ph = phi ptr [ %.3130.lcssa, %vector.memcheck1711 ], [ %.3130.lcssa, %.lr.ph521.preheader ], [ %i.agp, %middle.block1731 ]
  %.4135517.ph = phi i32 [ %i.afw, %vector.memcheck1711 ], [ %i.afw, %.lr.ph521.preheader ], [ %i.agr, %middle.block1731 ]
  br label %.lr.ph521

.lr.ph521:                                        ; preds = %.lr.ph521.preheader1760, %.lr.ph521
  %.2519 = phi ptr [ %i.ahd, %.lr.ph521 ], [ %.2519.ph, %.lr.ph521.preheader1760 ] ; 2 uses
  %.4518 = phi ptr [ %i.ahi, %.lr.ph521 ], [ %.4518.ph, %.lr.ph521.preheader1760 ] ; 2 uses
  %.4135517 = phi i32 [ %i.ahj, %.lr.ph521 ], [ %.4135517.ph, %.lr.ph521.preheader1760 ] ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.2519, i64 4
  %i.ahe = load i32, ptr %.2519, align 4
  %i.ahf = add i32 %i.ahe, %.0139.151
  %i.ahg = lshr i32 %i.ahf, 2
  %i.ahh = trunc i32 %i.ahg to i16
  %i.ahi = getelementptr inbounds nuw i8, ptr %.4518, i64 2 ; 2 uses
  store i16 %i.ahh, ptr %.4518, align 2
  %i.ahj = add nsw i32 %.4135517, -1
  %i.ahk = icmp samesign ugt i32 %.4135517, 1
  br i1 %i.ahk, label %.lr.ph521, label %.loopexit152, !llvm.loop !54

.loopexit152:                                     ; preds = %.lr.ph521, %middle.block1731, %._crit_edge, %.preheader153
  %.5 = phi ptr [ %i.adh, %.preheader153 ], [ %.3130.lcssa, %._crit_edge ], [ %i.agp, %middle.block1731 ], [ %i.ahi, %.lr.ph521 ] ; 9 uses
  %trunc = trunc nuw i32 %1 to i1
  %i.ahl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %trunc, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.loopexit152
  store ptr %.5, ptr %i.ahl, align 8
  store ptr null, ptr %i.ahm, align 8
  %i.ahn = load i32, ptr %i.vj, align 8           ; 7 uses
  %i.aho = icmp sgt i32 %i.ahn, 0
  br i1 %i.aho, label %.lr.ph527.preheader, label %.loopexit

.lr.ph527.preheader:                              ; preds = %bb.bs
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.f, i64 144128
  %i.ahq = load ptr, ptr %i.ahp, align 8          ; 6 uses
  %i.ahr = zext nneg i32 %i.ahn to i64            ; 2 uses
  %min.iters.check1743 = icmp ult i32 %i.ahn, 20
  br i1 %min.iters.check1743, label %.lr.ph527.preheader1759, label %vector.memcheck1736

vector.memcheck1736:                              ; preds = %.lr.ph527.preheader
  %i.ahs = add nsw i32 %i.ahn, -1
  %i.aht = zext i32 %i.ahs to i64                 ; 2 uses
  %i.ahu = shl nuw nsw i64 %i.aht, 1
  %i.ahv = getelementptr i8, ptr %.5, i64 %i.ahu
  %scevgep1737 = getelementptr i8, ptr %i.ahv, i64 2
  %i.ahw = shl nuw nsw i64 %i.aht, 2
  %i.ahx = getelementptr i8, ptr %i.ahq, i64 %i.ahw
  %scevgep1738 = getelementptr i8, ptr %i.ahx, i64 4
  %bound01739 = icmp ult ptr %.5, %scevgep1738
  %bound11740 = icmp ult ptr %i.ahq, %scevgep1737
  %found.conflict1741 = and i1 %bound01739, %bound11740
  br i1 %found.conflict1741, label %.lr.ph527.preheader1759, label %vector.ph1744

vector.ph1744:                                    ; preds = %vector.memcheck1736
  %n.vec1746 = and i64 %i.ahr, 2147483640         ; 5 uses
  %i.ahy = shl nuw nsw i64 %n.vec1746, 2
  %i.ahz = getelementptr i8, ptr %i.ahq, i64 %i.ahy
  %i.aia = shl nuw nsw i64 %n.vec1746, 1
  %i.aib = getelementptr i8, ptr %.5, i64 %i.aia
  %i.aic = trunc nuw nsw i64 %n.vec1746 to i32
  %i.aid = sub nsw i32 %i.ahn, %i.aic
  br label %vector.body1747

vector.body1747:                                  ; preds = %vector.body1747, %vector.ph1744
  %index1748 = phi i64 [ 0, %vector.ph1744 ], [ %index.next1753, %vector.body1747 ] ; 3 uses
  %i.aie = shl i64 %index1748, 2
  %next.gep1749 = getelementptr i8, ptr %i.ahq, i64 %i.aie ; 2 uses
  %i.aif = shl i64 %index1748, 1
  %next.gep1750 = getelementptr i8, ptr %.5, i64 %i.aif ; 2 uses
  %i.aig = getelementptr i8, ptr %next.gep1749, i64 16
  %wide.load1751 = load <4 x i32>, ptr %next.gep1749, align 4, !alias.scope !55
  %wide.load1752 = load <4 x i32>, ptr %i.aig, align 4, !alias.scope !55
  %i.aih = trunc <4 x i32> %wide.load1751 to <4 x i16>
  %i.aii = trunc <4 x i32> %wide.load1752 to <4 x i16>
  %i.aij = getelementptr i8, ptr %next.gep1750, i64 8
  store <4 x i16> %i.aih, ptr %next.gep1750, align 2, !alias.scope !58, !noalias !55
  store <4 x i16> %i.aii, ptr %i.aij, align 2, !alias.scope !58, !noalias !55
  %index.next1753 = add nuw i64 %index1748, 8     ; 2 uses
  %i.aik = icmp eq i64 %index.next1753, %n.vec1746
  br i1 %i.aik, label %middle.block1754, label %vector.body1747, !llvm.loop !60

middle.block1754:                                 ; preds = %vector.body1747
  %cmp.n1755 = icmp eq i64 %n.vec1746, %i.ahr
  br i1 %cmp.n1755, label %.loopexit, label %.lr.ph527.preheader1759

.lr.ph527.preheader1759:                          ; preds = %vector.memcheck1736, %.lr.ph527.preheader, %middle.block1754
  %.3525.ph = phi ptr [ %i.ahq, %vector.memcheck1736 ], [ %i.ahq, %.lr.ph527.preheader ], [ %i.ahz, %middle.block1754 ]
  %.6524.ph = phi ptr [ %.5, %vector.memcheck1736 ], [ %.5, %.lr.ph527.preheader ], [ %i.aib, %middle.block1754 ]
  %.5136523.ph = phi i32 [ %i.ahn, %vector.memcheck1736 ], [ %i.ahn, %.lr.ph527.preheader ], [ %i.aid, %middle.block1754 ]
  br label %.lr.ph527

.lr.ph527:                                        ; preds = %.lr.ph527.preheader1759, %.lr.ph527
  %.3525 = phi ptr [ %i.ail, %.lr.ph527 ], [ %.3525.ph, %.lr.ph527.preheader1759 ] ; 2 uses
  %.6524 = phi ptr [ %i.aio, %.lr.ph527 ], [ %.6524.ph, %.lr.ph527.preheader1759 ] ; 2 uses
  %.5136523 = phi i32 [ %i.aip, %.lr.ph527 ], [ %.5136523.ph, %.lr.ph527.preheader1759 ] ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.3525, i64 4
  %i.aim = load i32, ptr %.3525, align 4
  %i.ain = trunc i32 %i.aim to i16
  %i.aio = getelementptr inbounds nuw i8, ptr %.6524, i64 2
  store i16 %i.ain, ptr %.6524, align 2
  %i.aip = add nsw i32 %.5136523, -1
  %i.aiq = icmp samesign ugt i32 %.5136523, 1
  br i1 %i.aiq, label %.lr.ph527, label %.loopexit, !llvm.loop !61

bb.bt:                                            ; preds = %.loopexit152
  store ptr null, ptr %i.ahl, align 8
  store ptr %.5, ptr %i.ahm, align 8
  %i.air = getelementptr inbounds nuw i8, ptr %i.f, i64 144128
  %i.ais = load ptr, ptr %i.air, align 8
  %i.ait = load i32, ptr %i.vj, align 8
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = shl nsw i64 %i.aiu, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.5, ptr align 4 %i.ais, i64 %i.aiv, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph527, %middle.block1754, %bb.bs, %bb.bt
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.f, i64 144128
  %i.aix = load ptr, ptr %i.aiw, align 8
  tail call void @uprv_free_78(ptr noundef %i.aix) #8
  tail call void @uprv_free_78(ptr noundef nonnull %i.f) #8
  store ptr null, ptr %i.e, align 8
  br label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread

_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread: ; preds = %bb.w, %_ZL11compactTrieP6UTrie2P10UErrorCode.exit, %bb.e, %bb.f, %bb.a, %.loopexit, %bb.bo, %bb.bm, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @utrie2_setRange32_78(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i32 %1, 1114111
  %i.d = icmp ugt i32 %2, 1114111
  %or.cond = or i1 %i.c, %i.d
  %i.e = icmp sgt i32 %1, %2
  %or.cond126 = or i1 %i.e, %or.cond
  br i1 %or.cond126, label %.critedge.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8              ; 21 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 144172
  %i.j = load i8, ptr %i.i, align 4
  %.not118 = icmp eq i8 %i.j, 0
  br i1 %.not118, label %bb.e, label %.critedge.sink.split

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ne i8 %4, 0                         ; 3 uses
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 144136
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %3, %i.m
  br i1 %i.n, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = add nuw nsw i32 %2, 1                    ; 4 uses
  %i.p = and i32 %1, 31                           ; 4 uses
  %.not119 = icmp eq i32 %i.p, 0
  br i1 %.not119, label %_ZL9fillBlockPjiijja.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call fastcc noundef i32 @_ZL12getDataBlockP9UNewTrie2ia(ptr noundef %i.g, i32 noundef %1, i8 noundef signext 1) ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.critedge.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = add nuw nsw i32 %1, 31
  %i.t = and i32 %i.s, 4194272                    ; 5 uses
  %.not120 = icmp samesign ugt i32 %i.t, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 144128
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 4 uses
  %i.x = zext nneg i32 %i.q to i64                ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.x ; 31 uses
  br i1 %.not120, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 144136
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = shl nuw nsw i32 %i.p, 2
  %.idx = zext nneg i32 %i.ab to i64              ; 17 uses
  %.not.i = icmp eq i8 %4, 0
  %6 = and i32 %1, 31                             ; 2 uses
  %narrow340 = sub nuw nsw i32 32, %6
  %7 = zext nneg i32 %narrow340 to i64            ; 4 uses
  %min.iters.check205 = icmp samesign ugt i32 %6, 24 ; 2 uses
  br i1 %.not.i, label %.lr.ph19.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  br i1 %min.iters.check205, label %.lr.ph.i.preheader348, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %7, 56                         ; 4 uses
  %i.ac = shl nuw nsw i64 %n.vec, 2
  %i.ad = add nuw nsw i64 %i.ac, %.idx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.ae = getelementptr i8, ptr %i.y, i64 %.idx   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ae, align 4
  store <4 x i32> %broadcast.splat, ptr %i.af, align 4
  %i.ag = icmp eq i64 %n.vec, 8
  br i1 %i.ag, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ah = getelementptr i8, ptr %i.y, i64 32
  %i.ai = getelementptr i8, ptr %i.ah, i64 %.idx  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ai, align 4
  store <4 x i32> %broadcast.splat, ptr %i.aj, align 4
  %i.ak = icmp eq i64 %n.vec, 16
  br i1 %i.ak, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.al = getelementptr i8, ptr %i.y, i64 64
  %i.am = getelementptr i8, ptr %i.al, i64 %.idx  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.am, align 4
  store <4 x i32> %broadcast.splat, ptr %i.an, align 4
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %7
  br i1 %cmp.n, label %_ZL9fillBlockPjiijja.exit, label %.lr.ph.i.preheader348

.lr.ph.i.preheader348:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.017.i.idx.ph = phi i64 [ %.idx, %.lr.ph.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i

.lr.ph19.i.preheader:                             ; preds = %bb.j
  br i1 %min.iters.check205, label %.lr.ph19.i.preheader347, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph19.i.preheader
  %n.vec208 = and i64 %7, 56                      ; 4 uses
  %i.ao = shl nuw nsw i64 %n.vec208, 2
  %i.ap = add nuw nsw i64 %i.ao, %.idx
  %broadcast.splatinsert209 = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat210 = shufflevector <4 x i32> %broadcast.splatinsert209, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <4 x i32>, ptr %i.aq, align 4
  %wide.load213 = load <4 x i32>, ptr %i.ar, align 4
  %i.as = icmp eq <4 x i32> %wide.load, %broadcast.splat210 ; 4 uses
  %i.at = icmp eq <4 x i32> %wide.load213, %broadcast.splat210 ; 4 uses
  %i.au = extractelement <4 x i1> %i.as, i64 0
  br i1 %i.au, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph206
  store i32 %3, ptr %i.aq, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph206
  %i.av = extractelement <4 x i1> %i.as, i64 1
  br i1 %i.av, label %pred.store.if214, label %pred.store.continue215

pred.store.if214:                                 ; preds = %pred.store.continue
  %i.aw = getelementptr i8, ptr %i.y, i64 %.idx
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  store i32 %3, ptr %i.ax, align 4
  br label %pred.store.continue215

pred.store.continue215:                           ; preds = %pred.store.if214, %pred.store.continue
  %i.ay = extractelement <4 x i1> %i.as, i64 2
  br i1 %i.ay, label %pred.store.if216, label %pred.store.continue217

pred.store.if216:                                 ; preds = %pred.store.continue215
  %i.az = getelementptr i8, ptr %i.y, i64 %.idx
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  store i32 %3, ptr %i.ba, align 4
  br label %pred.store.continue217

pred.store.continue217:                           ; preds = %pred.store.if216, %pred.store.continue215
  %i.bb = extractelement <4 x i1> %i.as, i64 3
  br i1 %i.bb, label %pred.store.if218, label %pred.store.continue219

pred.store.if218:                                 ; preds = %pred.store.continue217
  %i.bc = getelementptr i8, ptr %i.y, i64 %.idx
  %i.bd = getelementptr i8, ptr %i.bc, i64 12
  store i32 %3, ptr %i.bd, align 4
  br label %pred.store.continue219

pred.store.continue219:                           ; preds = %pred.store.if218, %pred.store.continue217
  %i.be = extractelement <4 x i1> %i.at, i64 0
  br i1 %i.be, label %pred.store.if220, label %pred.store.continue221

pred.store.if220:                                 ; preds = %pred.store.continue219
  %i.bf = getelementptr i8, ptr %i.y, i64 %.idx
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  store i32 %3, ptr %i.bg, align 4
  br label %pred.store.continue221

pred.store.continue221:                           ; preds = %pred.store.if220, %pred.store.continue219
  %i.bh = extractelement <4 x i1> %i.at, i64 1
  br i1 %i.bh, label %pred.store.if222, label %pred.store.continue223

pred.store.if222:                                 ; preds = %pred.store.continue221
  %i.bi = getelementptr i8, ptr %i.y, i64 %.idx
  %i.bj = getelementptr i8, ptr %i.bi, i64 20
  store i32 %3, ptr %i.bj, align 4
  br label %pred.store.continue223

pred.store.continue223:                           ; preds = %pred.store.if222, %pred.store.continue221
  %i.bk = extractelement <4 x i1> %i.at, i64 2
  br i1 %i.bk, label %pred.store.if224, label %pred.store.continue225

pred.store.if224:                                 ; preds = %pred.store.continue223
  %i.bl = getelementptr i8, ptr %i.y, i64 %.idx
  %i.bm = getelementptr i8, ptr %i.bl, i64 24
  store i32 %3, ptr %i.bm, align 4
  br label %pred.store.continue225

pred.store.continue225:                           ; preds = %pred.store.if224, %pred.store.continue223
  %i.bn = extractelement <4 x i1> %i.at, i64 3
  br i1 %i.bn, label %pred.store.if226, label %pred.store.continue227

pred.store.if226:                                 ; preds = %pred.store.continue225
  %i.bo = getelementptr i8, ptr %i.y, i64 %.idx
  %i.bp = getelementptr i8, ptr %i.bo, i64 28
  store i32 %3, ptr %i.bp, align 4
  br label %pred.store.continue227

pred.store.continue227:                           ; preds = %pred.store.if226, %pred.store.continue225
  %i.bq = icmp eq i64 %n.vec208, 8
  br i1 %i.bq, label %middle.block229, label %vector.body211.1

vector.body211.1:                                 ; preds = %pred.store.continue227
  %i.br = add nuw nsw i64 %.idx, 32               ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.br ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bs, align 4
  %wide.load213.1 = load <4 x i32>, ptr %i.bt, align 4
  %i.bu = icmp eq <4 x i32> %wide.load.1, %broadcast.splat210 ; 4 uses
  %i.bv = icmp eq <4 x i32> %wide.load213.1, %broadcast.splat210 ; 4 uses
  %i.bw = extractelement <4 x i1> %i.bu, i64 0
  br i1 %i.bw, label %pred.store.if.1, label %pred.store.continue.1

pred.store.if.1:                                  ; preds = %vector.body211.1
  store i32 %3, ptr %i.bs, align 4
  br label %pred.store.continue.1

pred.store.continue.1:                            ; preds = %pred.store.if.1, %vector.body211.1
  %i.bx = extractelement <4 x i1> %i.bu, i64 1
  br i1 %i.bx, label %pred.store.if214.1, label %pred.store.continue215.1

pred.store.if214.1:                               ; preds = %pred.store.continue.1
  %i.by = getelementptr i8, ptr %i.y, i64 %i.br
  %i.bz = getelementptr i8, ptr %i.by, i64 4
  store i32 %3, ptr %i.bz, align 4
  br label %pred.store.continue215.1

pred.store.continue215.1:                         ; preds = %pred.store.if214.1, %pred.store.continue.1
  %i.ca = extractelement <4 x i1> %i.bu, i64 2
  br i1 %i.ca, label %pred.store.if216.1, label %pred.store.continue217.1

pred.store.if216.1:                               ; preds = %pred.store.continue215.1
  %i.cb = getelementptr i8, ptr %i.y, i64 %i.br
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  store i32 %3, ptr %i.cc, align 4
  br label %pred.store.continue217.1

pred.store.continue217.1:                         ; preds = %pred.store.if216.1, %pred.store.continue215.1
  %i.cd = extractelement <4 x i1> %i.bu, i64 3
  br i1 %i.cd, label %pred.store.if218.1, label %pred.store.continue219.1

pred.store.if218.1:                               ; preds = %pred.store.continue217.1
  %i.ce = getelementptr i8, ptr %i.y, i64 %i.br
  %i.cf = getelementptr i8, ptr %i.ce, i64 12
  store i32 %3, ptr %i.cf, align 4
  br label %pred.store.continue219.1

pred.store.continue219.1:                         ; preds = %pred.store.if218.1, %pred.store.continue217.1
  %i.cg = extractelement <4 x i1> %i.bv, i64 0
  br i1 %i.cg, label %pred.store.if220.1, label %pred.store.continue221.1

pred.store.if220.1:                               ; preds = %pred.store.continue219.1
  %i.ch = getelementptr i8, ptr %i.y, i64 %i.br
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  store i32 %3, ptr %i.ci, align 4
  br label %pred.store.continue221.1

pred.store.continue221.1:                         ; preds = %pred.store.if220.1, %pred.store.continue219.1
  %i.cj = extractelement <4 x i1> %i.bv, i64 1
  br i1 %i.cj, label %pred.store.if222.1, label %pred.store.continue223.1

pred.store.if222.1:                               ; preds = %pred.store.continue221.1
  %i.ck = getelementptr i8, ptr %i.y, i64 %i.br
  %i.cl = getelementptr i8, ptr %i.ck, i64 20
  store i32 %3, ptr %i.cl, align 4
  br label %pred.store.continue223.1

pred.store.continue223.1:                         ; preds = %pred.store.if222.1, %pred.store.continue221.1
  %i.cm = extractelement <4 x i1> %i.bv, i64 2
  br i1 %i.cm, label %pred.store.if224.1, label %pred.store.continue225.1

pred.store.if224.1:                               ; preds = %pred.store.continue223.1
  %i.cn = getelementptr i8, ptr %i.y, i64 %i.br
  %i.co = getelementptr i8, ptr %i.cn, i64 24
  store i32 %3, ptr %i.co, align 4
  br label %pred.store.continue225.1

pred.store.continue225.1:                         ; preds = %pred.store.if224.1, %pred.store.continue223.1
  %i.cp = extractelement <4 x i1> %i.bv, i64 3
  br i1 %i.cp, label %pred.store.if226.1, label %pred.store.continue227.1

pred.store.if226.1:                               ; preds = %pred.store.continue225.1
  %i.cq = getelementptr i8, ptr %i.y, i64 %i.br
  %i.cr = getelementptr i8, ptr %i.cq, i64 28
  store i32 %3, ptr %i.cr, align 4
  br label %pred.store.continue227.1

pred.store.continue227.1:                         ; preds = %pred.store.if226.1, %pred.store.continue225.1
  %i.cs = icmp eq i64 %n.vec208, 16
  br i1 %i.cs, label %middle.block229, label %vector.body211.2

vector.body211.2:                                 ; preds = %pred.store.continue227.1
  %i.ct = add nuw nsw i64 %.idx, 64               ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ct ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load.2 = load <4 x i32>, ptr %i.cu, align 4
  %wide.load213.2 = load <4 x i32>, ptr %i.cv, align 4
  %i.cw = icmp eq <4 x i32> %wide.load.2, %broadcast.splat210 ; 4 uses
  %i.cx = icmp eq <4 x i32> %wide.load213.2, %broadcast.splat210 ; 4 uses
  %i.cy = extractelement <4 x i1> %i.cw, i64 0
  br i1 %i.cy, label %pred.store.if.2, label %pred.store.continue.2

pred.store.if.2:                                  ; preds = %vector.body211.2
  store i32 %3, ptr %i.cu, align 4
  br label %pred.store.continue.2

pred.store.continue.2:                            ; preds = %pred.store.if.2, %vector.body211.2
  %i.cz = extractelement <4 x i1> %i.cw, i64 1
  br i1 %i.cz, label %pred.store.if214.2, label %pred.store.continue215.2

pred.store.if214.2:                               ; preds = %pred.store.continue.2
  %i.da = getelementptr i8, ptr %i.y, i64 %i.ct
  %i.db = getelementptr i8, ptr %i.da, i64 4
  store i32 %3, ptr %i.db, align 4
  br label %pred.store.continue215.2

pred.store.continue215.2:                         ; preds = %pred.store.if214.2, %pred.store.continue.2
  %i.dc = extractelement <4 x i1> %i.cw, i64 2
  br i1 %i.dc, label %pred.store.if216.2, label %pred.store.continue217.2

pred.store.if216.2:                               ; preds = %pred.store.continue215.2
  %i.dd = getelementptr i8, ptr %i.y, i64 %i.ct
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  store i32 %3, ptr %i.de, align 4
  br label %pred.store.continue217.2

pred.store.continue217.2:                         ; preds = %pred.store.if216.2, %pred.store.continue215.2
  %i.df = extractelement <4 x i1> %i.cw, i64 3
  br i1 %i.df, label %pred.store.if218.2, label %pred.store.continue219.2

pred.store.if218.2:                               ; preds = %pred.store.continue217.2
  %i.dg = getelementptr i8, ptr %i.y, i64 %i.ct
  %i.dh = getelementptr i8, ptr %i.dg, i64 12
  store i32 %3, ptr %i.dh, align 4
  br label %pred.store.continue219.2

pred.store.continue219.2:                         ; preds = %pred.store.if218.2, %pred.store.continue217.2
  %i.di = extractelement <4 x i1> %i.cx, i64 0
  br i1 %i.di, label %pred.store.if220.2, label %pred.store.continue221.2

pred.store.if220.2:                               ; preds = %pred.store.continue219.2
  %i.dj = getelementptr i8, ptr %i.y, i64 %i.ct
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i32 %3, ptr %i.dk, align 4
  br label %pred.store.continue221.2

pred.store.continue221.2:                         ; preds = %pred.store.if220.2, %pred.store.continue219.2
  %i.dl = extractelement <4 x i1> %i.cx, i64 1
  br i1 %i.dl, label %pred.store.if222.2, label %pred.store.continue223.2

pred.store.if222.2:                               ; preds = %pred.store.continue221.2
  %i.dm = getelementptr i8, ptr %i.y, i64 %i.ct
  %i.dn = getelementptr i8, ptr %i.dm, i64 20
  store i32 %3, ptr %i.dn, align 4
  br label %pred.store.continue223.2

pred.store.continue223.2:                         ; preds = %pred.store.if222.2, %pred.store.continue221.2
  %i.do = extractelement <4 x i1> %i.cx, i64 2
  br i1 %i.do, label %pred.store.if224.2, label %pred.store.continue225.2

pred.store.if224.2:                               ; preds = %pred.store.continue223.2
  %i.dp = getelementptr i8, ptr %i.y, i64 %i.ct
  %i.dq = getelementptr i8, ptr %i.dp, i64 24
  store i32 %3, ptr %i.dq, align 4
  br label %pred.store.continue225.2

pred.store.continue225.2:                         ; preds = %pred.store.if224.2, %pred.store.continue223.2
  %i.dr = extractelement <4 x i1> %i.cx, i64 3
  br i1 %i.dr, label %pred.store.if226.2, label %middle.block229

pred.store.if226.2:                               ; preds = %pred.store.continue225.2
  %i.ds = getelementptr i8, ptr %i.y, i64 %i.ct
  %i.dt = getelementptr i8, ptr %i.ds, i64 28
  store i32 %3, ptr %i.dt, align 4
  br label %middle.block229

middle.block229:                                  ; preds = %pred.store.continue225.2, %pred.store.if226.2, %pred.store.continue227.1, %pred.store.continue227
  %cmp.n230 = icmp eq i64 %n.vec208, %7
  br i1 %cmp.n230, label %_ZL9fillBlockPjiijja.exit, label %.lr.ph19.i.preheader347

.lr.ph19.i.preheader347:                          ; preds = %.lr.ph19.i.preheader, %middle.block229
  %.118.i.idx.ph = phi i64 [ %.idx, %.lr.ph19.i.preheader ], [ %i.ap, %middle.block229 ]
  br label %.lr.ph19.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader348, %.lr.ph.i
  %.017.i.idx = phi i64 [ %.017.i.add, %.lr.ph.i ], [ %.017.i.idx.ph, %.lr.ph.i.preheader348 ] ; 3 uses
  %.017.i.ptr = getelementptr inbounds nuw i8, ptr %i.y, i64 %.017.i.idx
  %.017.i.add = add nuw nsw i64 %.017.i.idx, 4
  store i32 %3, ptr %.017.i.ptr, align 4
  %i.du = icmp samesign ult i64 %.017.i.idx, 124
  br i1 %i.du, label %.lr.ph.i, label %_ZL9fillBlockPjiijja.exit, !llvm.loop !62

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.preheader347, %bb.l
  %.118.i.idx = phi i64 [ %.118.i.add, %bb.l ], [ %.118.i.idx.ph, %.lr.ph19.i.preheader347 ] ; 3 uses
  %.118.i.ptr = getelementptr inbounds nuw i8, ptr %i.y, i64 %.118.i.idx ; 2 uses
  %i.dv = load i32, ptr %.118.i.ptr, align 4
  %i.dw = icmp eq i32 %i.dv, %i.aa
  br i1 %i.dw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph19.i
  store i32 %3, ptr %.118.i.ptr, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph19.i
  %.118.i.add = add nuw nsw i64 %.118.i.idx, 4
  %i.dx = icmp samesign ult i64 %.118.i.idx, 124
  br i1 %i.dx, label %.lr.ph19.i, label %_ZL9fillBlockPjiijja.exit, !llvm.loop !63

bb.m:                                             ; preds = %bb.i
  %i.dy = and i32 %i.o, 31                        ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 144136
  %i.ea = load i32, ptr %i.dz, align 8            ; 2 uses
  %i.eb = zext nneg i32 %i.dy to i64              ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eb ; 2 uses
  %i.ed = zext nneg i32 %i.p to i64               ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ed ; 13 uses
  %.not.i129 = icmp eq i8 %4, 0
  %i.ef = icmp samesign ult i32 %i.p, %i.dy       ; 2 uses
  br i1 %.not.i129, label %.preheader.i133, label %.preheader15.i130

.preheader15.i130:                                ; preds = %bb.m
  br i1 %i.ef, label %.lr.ph.i131.preheader, label %.critedge

.lr.ph.i131.preheader:                            ; preds = %.preheader15.i130
  %i.eg = shl nuw nsw i64 %i.x, 2                 ; 2 uses
  %i.eh = add i64 %i.eg, %i.w                     ; 2 uses
  %i.ei = shl nuw nsw i64 %i.ed, 2                ; 2 uses
  %i.ej = add i64 %i.eh, %i.ei
  %i.ek = add i64 %i.ej, 4
  %i.el = shl nuw nsw i64 %i.eb, 2
  %i.em = add i64 %i.eh, %i.el
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ek, i64 %i.em)
  %i.en = xor i64 %i.w, -1
  %i.eo = add i64 %umax, %i.en
  %i.ep = add nuw nsw i64 %i.eg, %i.ei
  %i.eq = sub i64 %i.eo, %i.ep                    ; 2 uses
  %i.er = lshr i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check233 = icmp ult i64 %i.eq, 28
  br i1 %min.iters.check233, label %.lr.ph.i131.preheader345, label %vector.ph234

vector.ph234:                                     ; preds = %.lr.ph.i131.preheader
  %n.vec236 = and i64 %i.es, 9223372036854775800  ; 3 uses
  %i.et = shl i64 %n.vec236, 2
  %i.eu = getelementptr i8, ptr %i.ee, i64 %i.et
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph234
  %index240 = phi i64 [ 0, %vector.ph234 ], [ %index.next241, %vector.body239 ] ; 2 uses
  %i.ev = shl i64 %index240, 2
  %next.gep = getelementptr i8, ptr %i.ee, i64 %i.ev ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat238, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat238, ptr %i.ew, align 4
  %index.next241 = add nuw i64 %index240, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.ex, label %middle.block242, label %vector.body239, !llvm.loop !64

middle.block242:                                  ; preds = %vector.body239
  %cmp.n243 = icmp eq i64 %i.es, %n.vec236
  br i1 %cmp.n243, label %.critedge, label %.lr.ph.i131.preheader345

.lr.ph.i131.preheader345:                         ; preds = %.lr.ph.i131.preheader, %middle.block242
  %.017.i132.ph = phi ptr [ %i.ee, %.lr.ph.i131.preheader ], [ %i.eu, %middle.block242 ]
  br label %.lr.ph.i131

.preheader.i133:                                  ; preds = %bb.m
  br i1 %i.ef, label %.lr.ph19.i134.preheader, label %.critedge

.lr.ph19.i134.preheader:                          ; preds = %.preheader.i133
  %i.ey = shl nuw nsw i64 %i.x, 2                 ; 2 uses
  %i.ez = add i64 %i.ey, %i.w                     ; 2 uses
  %i.fa = shl nuw nsw i64 %i.ed, 2                ; 2 uses
  %i.fb = add i64 %i.ez, %i.fa
  %i.fc = add i64 %i.fb, 4
  %i.fd = shl nuw nsw i64 %i.eb, 2
  %i.fe = add i64 %i.ez, %i.fd
  %umax245 = tail call i64 @llvm.umax.i64(i64 %i.fc, i64 %i.fe)
  %i.ff = xor i64 %i.w, -1
  %i.fg = add i64 %umax245, %i.ff
  %i.fh = add nuw nsw i64 %i.ey, %i.fa
  %i.fi = sub i64 %i.fg, %i.fh                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 2
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %min.iters.check247 = icmp ult i64 %i.fi, 28
  br i1 %min.iters.check247, label %.lr.ph19.i134.preheader343, label %vector.ph248

vector.ph248:                                     ; preds = %.lr.ph19.i134.preheader
  %n.vec250 = and i64 %i.fk, 9223372036854775800  ; 3 uses
  %i.fl = shl i64 %n.vec250, 2
  %i.fm = getelementptr i8, ptr %i.ee, i64 %i.fl
  %broadcast.splatinsert251 = insertelement <4 x i32> poison, i32 %i.ea, i64 0
  %broadcast.splat252 = shufflevector <4 x i32> %broadcast.splatinsert251, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body253

vector.body253:                                   ; preds = %pred.store.continue280, %vector.ph248
  %index254 = phi i64 [ 0, %vector.ph248 ], [ %index.next281, %pred.store.continue280 ] ; 2 uses
  %i.fn = shl i64 %index254, 2                    ; 8 uses
  %next.gep255 = getelementptr i8, ptr %i.ee, i64 %i.fn ; 3 uses
  %i.fo = getelementptr i8, ptr %i.ee, i64 %i.fn
  %next.gep256 = getelementptr i8, ptr %i.fo, i64 4
  %i.fp = getelementptr i8, ptr %i.ee, i64 %i.fn
  %next.gep257 = getelementptr i8, ptr %i.fp, i64 8
  %i.fq = getelementptr i8, ptr %i.ee, i64 %i.fn
  %next.gep258 = getelementptr i8, ptr %i.fq, i64 12
  %i.fr = getelementptr i8, ptr %i.ee, i64 %i.fn
  %next.gep259 = getelementptr i8, ptr %i.fr, i64 16
  %i.fs = getelementptr i8, ptr %i.ee, i64 %i.fn
  %next.gep260 = getelementptr i8, ptr %i.fs, i64 20
  %i.ft = getelementptr i8, ptr %i.ee, i64 %i.fn
  %next.gep261 = getelementptr i8, ptr %i.ft, i64 24
  %i.fu = getelementptr i8, ptr %i.ee, i64 %i.fn
  %next.gep262 = getelementptr i8, ptr %i.fu, i64 28
  %i.fv = getelementptr i8, ptr %next.gep255, i64 16
  %wide.load263 = load <4 x i32>, ptr %next.gep255, align 4
  %wide.load264 = load <4 x i32>, ptr %i.fv, align 4
  %i.fw = icmp eq <4 x i32> %wide.load263, %broadcast.splat252 ; 4 uses
  %i.fx = icmp eq <4 x i32> %wide.load264, %broadcast.splat252 ; 4 uses
  %i.fy = extractelement <4 x i1> %i.fw, i64 0
  br i1 %i.fy, label %pred.store.if265, label %pred.store.continue266

pred.store.if265:                                 ; preds = %vector.body253
  store i32 %3, ptr %next.gep255, align 4
  br label %pred.store.continue266

pred.store.continue266:                           ; preds = %pred.store.if265, %vector.body253
  %i.fz = extractelement <4 x i1> %i.fw, i64 1
  br i1 %i.fz, label %pred.store.if267, label %pred.store.continue268

pred.store.if267:                                 ; preds = %pred.store.continue266
  store i32 %3, ptr %next.gep256, align 4
  br label %pred.store.continue268

pred.store.continue268:                           ; preds = %pred.store.if267, %pred.store.continue266
  %i.ga = extractelement <4 x i1> %i.fw, i64 2
  br i1 %i.ga, label %pred.store.if269, label %pred.store.continue270

pred.store.if269:                                 ; preds = %pred.store.continue268
  store i32 %3, ptr %next.gep257, align 4
  br label %pred.store.continue270

pred.store.continue270:                           ; preds = %pred.store.if269, %pred.store.continue268
  %i.gb = extractelement <4 x i1> %i.fw, i64 3
  br i1 %i.gb, label %pred.store.if271, label %pred.store.continue272

pred.store.if271:                                 ; preds = %pred.store.continue270
  store i32 %3, ptr %next.gep258, align 4
  br label %pred.store.continue272

pred.store.continue272:                           ; preds = %pred.store.if271, %pred.store.continue270
  %i.gc = extractelement <4 x i1> %i.fx, i64 0
  br i1 %i.gc, label %pred.store.if273, label %pred.store.continue274

pred.store.if273:                                 ; preds = %pred.store.continue272
  store i32 %3, ptr %next.gep259, align 4
  br label %pred.store.continue274

pred.store.continue274:                           ; preds = %pred.store.if273, %pred.store.continue272
  %i.gd = extractelement <4 x i1> %i.fx, i64 1
  br i1 %i.gd, label %pred.store.if275, label %pred.store.continue276

pred.store.if275:                                 ; preds = %pred.store.continue274
  store i32 %3, ptr %next.gep260, align 4
  br label %pred.store.continue276

pred.store.continue276:                           ; preds = %pred.store.if275, %pred.store.continue274
  %i.ge = extractelement <4 x i1> %i.fx, i64 2
  br i1 %i.ge, label %pred.store.if277, label %pred.store.continue278

pred.store.if277:                                 ; preds = %pred.store.continue276
  store i32 %3, ptr %next.gep261, align 4
  br label %pred.store.continue278

pred.store.continue278:                           ; preds = %pred.store.if277, %pred.store.continue276
  %i.gf = extractelement <4 x i1> %i.fx, i64 3
  br i1 %i.gf, label %pred.store.if279, label %pred.store.continue280
end_hunk_0
