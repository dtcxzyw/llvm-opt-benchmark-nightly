inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@utrie2_freeze_78:bb.a
  %i.agv = add <4 x i32> %wide.load1726, %broadcast.splat1721
  %i.agw = add <4 x i32> %wide.load1727, %broadcast.splat1721
  %i.agx = lshr <4 x i32> %i.agv, splat (i32 2)
  %i.agy = lshr <4 x i32> %i.agw, splat (i32 2)
  %i.agz = trunc <4 x i32> %i.agx to <4 x i16>
  %i.aha = trunc <4 x i32> %i.agy to <4 x i16>
  %i.ahb = getelementptr i8, ptr %next.gep1725, i64 8
  store <4 x i16> %i.agz, ptr %next.gep1725, align 2, !alias.scope !51, !noalias !48
  store <4 x i16> %i.aha, ptr %i.ahb, align 2, !alias.scope !51, !noalias !48
  %index.next1728 = add nuw i64 %index1723, 8     ; 2 uses
  %i.ahc = icmp eq i64 %index.next1728, %n.vec1719
  br i1 %i.ahc, label %middle.block1729, label %vector.body1722, !llvm.loop !53

middle.block1729:                                 ; preds = %vector.body1722
  %cmp.n1730 = icmp eq i64 %n.vec1719, %i.aga
  br i1 %cmp.n1730, label %.loopexit152, label %.lr.ph521.preheader1758

.lr.ph521.preheader1758:                          ; preds = %vector.memcheck1709, %.lr.ph521.preheader, %middle.block1729
  %.2519.ph = phi ptr [ %i.afz, %vector.memcheck1709 ], [ %i.afz, %.lr.ph521.preheader ], [ %i.agn, %middle.block1729 ]
  %.4518.ph = phi ptr [ %.3130.lcssa, %vector.memcheck1709 ], [ %.3130.lcssa, %.lr.ph521.preheader ], [ %i.agp, %middle.block1729 ]
  %.4135517.ph = phi i32 [ %i.afw, %vector.memcheck1709 ], [ %i.afw, %.lr.ph521.preheader ], [ %i.agr, %middle.block1729 ]
  br label %.lr.ph521

.lr.ph521:                                        ; preds = %.lr.ph521.preheader1758, %.lr.ph521
  %.2519 = phi ptr [ %i.ahd, %.lr.ph521 ], [ %.2519.ph, %.lr.ph521.preheader1758 ] ; 2 uses
  %.4518 = phi ptr [ %i.ahi, %.lr.ph521 ], [ %.4518.ph, %.lr.ph521.preheader1758 ] ; 2 uses
  %.4135517 = phi i32 [ %i.ahj, %.lr.ph521 ], [ %.4135517.ph, %.lr.ph521.preheader1758 ] ; 2 uses
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

.loopexit152:                                     ; preds = %.lr.ph521, %middle.block1729, %._crit_edge, %.preheader153
  %.5 = phi ptr [ %i.adh, %.preheader153 ], [ %.3130.lcssa, %._crit_edge ], [ %i.agp, %middle.block1729 ], [ %i.ahi, %.lr.ph521 ] ; 9 uses
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
  %min.iters.check1741 = icmp ult i32 %i.ahn, 20
  br i1 %min.iters.check1741, label %.lr.ph527.preheader1757, label %vector.memcheck1734

vector.memcheck1734:                              ; preds = %.lr.ph527.preheader
  %i.ahs = add nsw i32 %i.ahn, -1
  %i.aht = zext i32 %i.ahs to i64                 ; 2 uses
  %i.ahu = shl nuw nsw i64 %i.aht, 1
  %i.ahv = getelementptr i8, ptr %.5, i64 %i.ahu
  %scevgep1735 = getelementptr i8, ptr %i.ahv, i64 2
  %i.ahw = shl nuw nsw i64 %i.aht, 2
  %i.ahx = getelementptr i8, ptr %i.ahq, i64 %i.ahw
  %scevgep1736 = getelementptr i8, ptr %i.ahx, i64 4
  %bound01737 = icmp ult ptr %.5, %scevgep1736
  %bound11738 = icmp ult ptr %i.ahq, %scevgep1735
  %found.conflict1739 = and i1 %bound01737, %bound11738
  br i1 %found.conflict1739, label %.lr.ph527.preheader1757, label %vector.ph1742

vector.ph1742:                                    ; preds = %vector.memcheck1734
  %n.vec1744 = and i64 %i.ahr, 2147483640         ; 5 uses
  %i.ahy = shl nuw nsw i64 %n.vec1744, 2
  %i.ahz = getelementptr i8, ptr %i.ahq, i64 %i.ahy
  %i.aia = shl nuw nsw i64 %n.vec1744, 1
  %i.aib = getelementptr i8, ptr %.5, i64 %i.aia
  %i.aic = trunc nuw nsw i64 %n.vec1744 to i32
  %i.aid = sub nsw i32 %i.ahn, %i.aic
  br label %vector.body1745

vector.body1745:                                  ; preds = %vector.body1745, %vector.ph1742
  %index1746 = phi i64 [ 0, %vector.ph1742 ], [ %index.next1751, %vector.body1745 ] ; 3 uses
  %i.aie = shl i64 %index1746, 2
  %next.gep1747 = getelementptr i8, ptr %i.ahq, i64 %i.aie ; 2 uses
  %i.aif = shl i64 %index1746, 1
  %next.gep1748 = getelementptr i8, ptr %.5, i64 %i.aif ; 2 uses
  %i.aig = getelementptr i8, ptr %next.gep1747, i64 16
  %wide.load1749 = load <4 x i32>, ptr %next.gep1747, align 4, !alias.scope !55
  %wide.load1750 = load <4 x i32>, ptr %i.aig, align 4, !alias.scope !55
  %i.aih = trunc <4 x i32> %wide.load1749 to <4 x i16>
  %i.aii = trunc <4 x i32> %wide.load1750 to <4 x i16>
  %i.aij = getelementptr i8, ptr %next.gep1748, i64 8
  store <4 x i16> %i.aih, ptr %next.gep1748, align 2, !alias.scope !58, !noalias !55
  store <4 x i16> %i.aii, ptr %i.aij, align 2, !alias.scope !58, !noalias !55
  %index.next1751 = add nuw i64 %index1746, 8     ; 2 uses
  %i.aik = icmp eq i64 %index.next1751, %n.vec1744
  br i1 %i.aik, label %middle.block1752, label %vector.body1745, !llvm.loop !60

middle.block1752:                                 ; preds = %vector.body1745
  %cmp.n1753 = icmp eq i64 %n.vec1744, %i.ahr
  br i1 %cmp.n1753, label %.loopexit, label %.lr.ph527.preheader1757

.lr.ph527.preheader1757:                          ; preds = %vector.memcheck1734, %.lr.ph527.preheader, %middle.block1752
  %.3525.ph = phi ptr [ %i.ahq, %vector.memcheck1734 ], [ %i.ahq, %.lr.ph527.preheader ], [ %i.ahz, %middle.block1752 ]
  %.6524.ph = phi ptr [ %.5, %vector.memcheck1734 ], [ %.5, %.lr.ph527.preheader ], [ %i.aib, %middle.block1752 ]
  %.5136523.ph = phi i32 [ %i.ahn, %vector.memcheck1734 ], [ %i.ahn, %.lr.ph527.preheader ], [ %i.aid, %middle.block1752 ]
  br label %.lr.ph527

.lr.ph527:                                        ; preds = %.lr.ph527.preheader1757, %.lr.ph527
  %.3525 = phi ptr [ %i.ail, %.lr.ph527 ], [ %.3525.ph, %.lr.ph527.preheader1757 ] ; 2 uses
  %.6524 = phi ptr [ %i.aio, %.lr.ph527 ], [ %.6524.ph, %.lr.ph527.preheader1757 ] ; 2 uses
  %.5136523 = phi i32 [ %i.aip, %.lr.ph527 ], [ %.5136523.ph, %.lr.ph527.preheader1757 ] ; 2 uses
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

.loopexit:                                        ; preds = %.lr.ph527, %middle.block1752, %bb.bs, %bb.bt
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
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = zext nneg i32 %i.q to i64                ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w ; 31 uses
  br i1 %.not120, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 144136
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %i.aa = shl nuw nsw i32 %i.p, 2
  %.idx = zext nneg i32 %i.aa to i64              ; 17 uses
  %.not.i = icmp eq i8 %4, 0
  %i.ab = and i32 %1, 31                          ; 2 uses
  %narrow340 = sub nuw nsw i32 32, %i.ab
  %i.ac = zext nneg i32 %narrow340 to i64         ; 4 uses
  %min.iters.check205 = icmp samesign ugt i32 %i.ab, 24 ; 2 uses
  br i1 %.not.i, label %.lr.ph19.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  br i1 %min.iters.check205, label %.lr.ph.i.preheader349, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ac, 56                      ; 4 uses
  %i.ad = shl nuw nsw i64 %n.vec, 2
  %i.ae = add nuw nsw i64 %i.ad, %.idx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.af = getelementptr i8, ptr %i.x, i64 %.idx   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.af, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ag, align 4
  %i.ah = icmp eq i64 %n.vec, 8
  br i1 %i.ah, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ai = getelementptr i8, ptr %i.x, i64 32
  %i.aj = getelementptr i8, ptr %i.ai, i64 %.idx  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.aj, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ak, align 4
  %i.al = icmp eq i64 %n.vec, 16
  br i1 %i.al, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.am = getelementptr i8, ptr %i.x, i64 64
  %i.an = getelementptr i8, ptr %i.am, i64 %.idx  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.an, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ao, align 4
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br i1 %cmp.n, label %_ZL9fillBlockPjiijja.exit, label %.lr.ph.i.preheader349

.lr.ph.i.preheader349:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.017.i.idx.ph = phi i64 [ %.idx, %.lr.ph.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i

.lr.ph19.i.preheader:                             ; preds = %bb.j
  br i1 %min.iters.check205, label %.lr.ph19.i.preheader348, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph19.i.preheader
  %n.vec208 = and i64 %i.ac, 56                   ; 4 uses
  %i.ap = shl nuw nsw i64 %n.vec208, 2
  %i.aq = add nuw nsw i64 %i.ap, %.idx
  %broadcast.splatinsert209 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat210 = shufflevector <4 x i32> %broadcast.splatinsert209, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x i32>, ptr %i.ar, align 4
  %wide.load213 = load <4 x i32>, ptr %i.as, align 4
  %i.at = icmp eq <4 x i32> %wide.load, %broadcast.splat210 ; 4 uses
  %i.au = icmp eq <4 x i32> %wide.load213, %broadcast.splat210 ; 4 uses
  %i.av = extractelement <4 x i1> %i.at, i64 0
  br i1 %i.av, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph206
  store i32 %3, ptr %i.ar, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph206
  %i.aw = extractelement <4 x i1> %i.at, i64 1
  br i1 %i.aw, label %pred.store.if214, label %pred.store.continue215

pred.store.if214:                                 ; preds = %pred.store.continue
  %i.ax = getelementptr i8, ptr %i.x, i64 %.idx
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  store i32 %3, ptr %i.ay, align 4
  br label %pred.store.continue215

pred.store.continue215:                           ; preds = %pred.store.if214, %pred.store.continue
  %i.az = extractelement <4 x i1> %i.at, i64 2
  br i1 %i.az, label %pred.store.if216, label %pred.store.continue217

pred.store.if216:                                 ; preds = %pred.store.continue215
  %i.ba = getelementptr i8, ptr %i.x, i64 %.idx
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store i32 %3, ptr %i.bb, align 4
  br label %pred.store.continue217

pred.store.continue217:                           ; preds = %pred.store.if216, %pred.store.continue215
  %i.bc = extractelement <4 x i1> %i.at, i64 3
  br i1 %i.bc, label %pred.store.if218, label %pred.store.continue219

pred.store.if218:                                 ; preds = %pred.store.continue217
  %i.bd = getelementptr i8, ptr %i.x, i64 %.idx
  %i.be = getelementptr i8, ptr %i.bd, i64 12
  store i32 %3, ptr %i.be, align 4
  br label %pred.store.continue219

pred.store.continue219:                           ; preds = %pred.store.if218, %pred.store.continue217
  %i.bf = extractelement <4 x i1> %i.au, i64 0
  br i1 %i.bf, label %pred.store.if220, label %pred.store.continue221

pred.store.if220:                                 ; preds = %pred.store.continue219
  %i.bg = getelementptr i8, ptr %i.x, i64 %.idx
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  store i32 %3, ptr %i.bh, align 4
  br label %pred.store.continue221

pred.store.continue221:                           ; preds = %pred.store.if220, %pred.store.continue219
  %i.bi = extractelement <4 x i1> %i.au, i64 1
  br i1 %i.bi, label %pred.store.if222, label %pred.store.continue223

pred.store.if222:                                 ; preds = %pred.store.continue221
  %i.bj = getelementptr i8, ptr %i.x, i64 %.idx
  %i.bk = getelementptr i8, ptr %i.bj, i64 20
  store i32 %3, ptr %i.bk, align 4
  br label %pred.store.continue223

pred.store.continue223:                           ; preds = %pred.store.if222, %pred.store.continue221
  %i.bl = extractelement <4 x i1> %i.au, i64 2
  br i1 %i.bl, label %pred.store.if224, label %pred.store.continue225

pred.store.if224:                                 ; preds = %pred.store.continue223
  %i.bm = getelementptr i8, ptr %i.x, i64 %.idx
  %i.bn = getelementptr i8, ptr %i.bm, i64 24
  store i32 %3, ptr %i.bn, align 4
  br label %pred.store.continue225

pred.store.continue225:                           ; preds = %pred.store.if224, %pred.store.continue223
  %i.bo = extractelement <4 x i1> %i.au, i64 3
  br i1 %i.bo, label %pred.store.if226, label %pred.store.continue227

pred.store.if226:                                 ; preds = %pred.store.continue225
  %i.bp = getelementptr i8, ptr %i.x, i64 %.idx
  %i.bq = getelementptr i8, ptr %i.bp, i64 28
  store i32 %3, ptr %i.bq, align 4
  br label %pred.store.continue227

pred.store.continue227:                           ; preds = %pred.store.if226, %pred.store.continue225
  %i.br = icmp eq i64 %n.vec208, 8
  br i1 %i.br, label %middle.block229, label %vector.body211.1

vector.body211.1:                                 ; preds = %pred.store.continue227
  %i.bs = add nuw nsw i64 %.idx, 32               ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bt, align 4
  %wide.load213.1 = load <4 x i32>, ptr %i.bu, align 4
  %i.bv = icmp eq <4 x i32> %wide.load.1, %broadcast.splat210 ; 4 uses
  %i.bw = icmp eq <4 x i32> %wide.load213.1, %broadcast.splat210 ; 4 uses
  %i.bx = extractelement <4 x i1> %i.bv, i64 0
  br i1 %i.bx, label %pred.store.if.1, label %pred.store.continue.1

pred.store.if.1:                                  ; preds = %vector.body211.1
  store i32 %3, ptr %i.bt, align 4
  br label %pred.store.continue.1

pred.store.continue.1:                            ; preds = %pred.store.if.1, %vector.body211.1
  %i.by = extractelement <4 x i1> %i.bv, i64 1
  br i1 %i.by, label %pred.store.if214.1, label %pred.store.continue215.1

pred.store.if214.1:                               ; preds = %pred.store.continue.1
  %i.bz = getelementptr i8, ptr %i.x, i64 %i.bs
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  store i32 %3, ptr %i.ca, align 4
  br label %pred.store.continue215.1

pred.store.continue215.1:                         ; preds = %pred.store.if214.1, %pred.store.continue.1
  %i.cb = extractelement <4 x i1> %i.bv, i64 2
  br i1 %i.cb, label %pred.store.if216.1, label %pred.store.continue217.1

pred.store.if216.1:                               ; preds = %pred.store.continue215.1
  %i.cc = getelementptr i8, ptr %i.x, i64 %i.bs
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  store i32 %3, ptr %i.cd, align 4
  br label %pred.store.continue217.1

pred.store.continue217.1:                         ; preds = %pred.store.if216.1, %pred.store.continue215.1
  %i.ce = extractelement <4 x i1> %i.bv, i64 3
  br i1 %i.ce, label %pred.store.if218.1, label %pred.store.continue219.1

pred.store.if218.1:                               ; preds = %pred.store.continue217.1
  %i.cf = getelementptr i8, ptr %i.x, i64 %i.bs
  %i.cg = getelementptr i8, ptr %i.cf, i64 12
  store i32 %3, ptr %i.cg, align 4
  br label %pred.store.continue219.1

pred.store.continue219.1:                         ; preds = %pred.store.if218.1, %pred.store.continue217.1
  %i.ch = extractelement <4 x i1> %i.bw, i64 0
  br i1 %i.ch, label %pred.store.if220.1, label %pred.store.continue221.1

pred.store.if220.1:                               ; preds = %pred.store.continue219.1
  %i.ci = getelementptr i8, ptr %i.x, i64 %i.bs
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i32 %3, ptr %i.cj, align 4
  br label %pred.store.continue221.1

pred.store.continue221.1:                         ; preds = %pred.store.if220.1, %pred.store.continue219.1
  %i.ck = extractelement <4 x i1> %i.bw, i64 1
  br i1 %i.ck, label %pred.store.if222.1, label %pred.store.continue223.1

pred.store.if222.1:                               ; preds = %pred.store.continue221.1
  %i.cl = getelementptr i8, ptr %i.x, i64 %i.bs
  %i.cm = getelementptr i8, ptr %i.cl, i64 20
  store i32 %3, ptr %i.cm, align 4
  br label %pred.store.continue223.1

pred.store.continue223.1:                         ; preds = %pred.store.if222.1, %pred.store.continue221.1
  %i.cn = extractelement <4 x i1> %i.bw, i64 2
  br i1 %i.cn, label %pred.store.if224.1, label %pred.store.continue225.1

pred.store.if224.1:                               ; preds = %pred.store.continue223.1
  %i.co = getelementptr i8, ptr %i.x, i64 %i.bs
  %i.cp = getelementptr i8, ptr %i.co, i64 24
  store i32 %3, ptr %i.cp, align 4
  br label %pred.store.continue225.1

pred.store.continue225.1:                         ; preds = %pred.store.if224.1, %pred.store.continue223.1
  %i.cq = extractelement <4 x i1> %i.bw, i64 3
  br i1 %i.cq, label %pred.store.if226.1, label %pred.store.continue227.1

pred.store.if226.1:                               ; preds = %pred.store.continue225.1
  %i.cr = getelementptr i8, ptr %i.x, i64 %i.bs
  %i.cs = getelementptr i8, ptr %i.cr, i64 28
  store i32 %3, ptr %i.cs, align 4
  br label %pred.store.continue227.1

pred.store.continue227.1:                         ; preds = %pred.store.if226.1, %pred.store.continue225.1
  %i.ct = icmp eq i64 %n.vec208, 16
  br i1 %i.ct, label %middle.block229, label %vector.body211.2

vector.body211.2:                                 ; preds = %pred.store.continue227.1
  %i.cu = add nuw nsw i64 %.idx, 64               ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load.2 = load <4 x i32>, ptr %i.cv, align 4
  %wide.load213.2 = load <4 x i32>, ptr %i.cw, align 4
  %i.cx = icmp eq <4 x i32> %wide.load.2, %broadcast.splat210 ; 4 uses
  %i.cy = icmp eq <4 x i32> %wide.load213.2, %broadcast.splat210 ; 4 uses
  %i.cz = extractelement <4 x i1> %i.cx, i64 0
  br i1 %i.cz, label %pred.store.if.2, label %pred.store.continue.2

pred.store.if.2:                                  ; preds = %vector.body211.2
  store i32 %3, ptr %i.cv, align 4
  br label %pred.store.continue.2

pred.store.continue.2:                            ; preds = %pred.store.if.2, %vector.body211.2
  %i.da = extractelement <4 x i1> %i.cx, i64 1
  br i1 %i.da, label %pred.store.if214.2, label %pred.store.continue215.2

pred.store.if214.2:                               ; preds = %pred.store.continue.2
  %i.db = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.dc = getelementptr i8, ptr %i.db, i64 4
  store i32 %3, ptr %i.dc, align 4
  br label %pred.store.continue215.2

pred.store.continue215.2:                         ; preds = %pred.store.if214.2, %pred.store.continue.2
  %i.dd = extractelement <4 x i1> %i.cx, i64 2
  br i1 %i.dd, label %pred.store.if216.2, label %pred.store.continue217.2

pred.store.if216.2:                               ; preds = %pred.store.continue215.2
  %i.de = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.df = getelementptr i8, ptr %i.de, i64 8
  store i32 %3, ptr %i.df, align 4
  br label %pred.store.continue217.2

pred.store.continue217.2:                         ; preds = %pred.store.if216.2, %pred.store.continue215.2
  %i.dg = extractelement <4 x i1> %i.cx, i64 3
  br i1 %i.dg, label %pred.store.if218.2, label %pred.store.continue219.2

pred.store.if218.2:                               ; preds = %pred.store.continue217.2
  %i.dh = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.di = getelementptr i8, ptr %i.dh, i64 12
  store i32 %3, ptr %i.di, align 4
  br label %pred.store.continue219.2

pred.store.continue219.2:                         ; preds = %pred.store.if218.2, %pred.store.continue217.2
  %i.dj = extractelement <4 x i1> %i.cy, i64 0
  br i1 %i.dj, label %pred.store.if220.2, label %pred.store.continue221.2

pred.store.if220.2:                               ; preds = %pred.store.continue219.2
  %i.dk = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  store i32 %3, ptr %i.dl, align 4
  br label %pred.store.continue221.2

pred.store.continue221.2:                         ; preds = %pred.store.if220.2, %pred.store.continue219.2
  %i.dm = extractelement <4 x i1> %i.cy, i64 1
  br i1 %i.dm, label %pred.store.if222.2, label %pred.store.continue223.2

pred.store.if222.2:                               ; preds = %pred.store.continue221.2
  %i.dn = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.do = getelementptr i8, ptr %i.dn, i64 20
  store i32 %3, ptr %i.do, align 4
  br label %pred.store.continue223.2

pred.store.continue223.2:                         ; preds = %pred.store.if222.2, %pred.store.continue221.2
  %i.dp = extractelement <4 x i1> %i.cy, i64 2
  br i1 %i.dp, label %pred.store.if224.2, label %pred.store.continue225.2

pred.store.if224.2:                               ; preds = %pred.store.continue223.2
  %i.dq = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.dr = getelementptr i8, ptr %i.dq, i64 24
  store i32 %3, ptr %i.dr, align 4
  br label %pred.store.continue225.2

pred.store.continue225.2:                         ; preds = %pred.store.if224.2, %pred.store.continue223.2
  %i.ds = extractelement <4 x i1> %i.cy, i64 3
  br i1 %i.ds, label %pred.store.if226.2, label %middle.block229

pred.store.if226.2:                               ; preds = %pred.store.continue225.2
  %i.dt = getelementptr i8, ptr %i.x, i64 %i.cu
  %i.du = getelementptr i8, ptr %i.dt, i64 28
  store i32 %3, ptr %i.du, align 4
  br label %middle.block229

middle.block229:                                  ; preds = %pred.store.continue225.2, %pred.store.if226.2, %pred.store.continue227.1, %pred.store.continue227
  %cmp.n230 = icmp eq i64 %n.vec208, %i.ac
  br i1 %cmp.n230, label %_ZL9fillBlockPjiijja.exit, label %.lr.ph19.i.preheader348

.lr.ph19.i.preheader348:                          ; preds = %.lr.ph19.i.preheader, %middle.block229
  %.118.i.idx.ph = phi i64 [ %.idx, %.lr.ph19.i.preheader ], [ %i.aq, %middle.block229 ]
  br label %.lr.ph19.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader349, %.lr.ph.i
  %.017.i.idx = phi i64 [ %.017.i.add, %.lr.ph.i ], [ %.017.i.idx.ph, %.lr.ph.i.preheader349 ] ; 3 uses
  %.017.i.ptr = getelementptr inbounds nuw i8, ptr %i.x, i64 %.017.i.idx
  %.017.i.add = add nuw nsw i64 %.017.i.idx, 4
  store i32 %3, ptr %.017.i.ptr, align 4
  %i.dv = icmp samesign ult i64 %.017.i.idx, 124
  br i1 %i.dv, label %.lr.ph.i, label %_ZL9fillBlockPjiijja.exit, !llvm.loop !62

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.preheader348, %bb.l
  %.118.i.idx = phi i64 [ %.118.i.add, %bb.l ], [ %.118.i.idx.ph, %.lr.ph19.i.preheader348 ] ; 3 uses
  %.118.i.ptr = getelementptr inbounds nuw i8, ptr %i.x, i64 %.118.i.idx ; 2 uses
  %i.dw = load i32, ptr %.118.i.ptr, align 4
  %i.dx = icmp eq i32 %i.dw, %i.z
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph19.i
  store i32 %3, ptr %.118.i.ptr, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph19.i
  %.118.i.add = add nuw nsw i64 %.118.i.idx, 4
  %i.dy = icmp samesign ult i64 %.118.i.idx, 124
  br i1 %i.dy, label %.lr.ph19.i, label %_ZL9fillBlockPjiijja.exit, !llvm.loop !63

bb.m:                                             ; preds = %bb.i
  %i.dz = and i32 %i.o, 31                        ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 144136
  %i.eb = load i32, ptr %i.ea, align 8            ; 2 uses
  %i.ec = zext nneg i32 %i.dz to i64              ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ec ; 2 uses
  %i.ee = zext nneg i32 %i.p to i64               ; 5 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ee ; 13 uses
  %.not.i129 = icmp eq i8 %4, 0
  %i.eg = icmp samesign ult i32 %i.p, %i.dz       ; 2 uses
  br i1 %.not.i129, label %.preheader.i133, label %.preheader15.i130

.preheader15.i130:                                ; preds = %bb.m
  br i1 %i.eg, label %.lr.ph.i131.preheader, label %.critedge

.lr.ph.i131.preheader:                            ; preds = %.preheader15.i130
  %6 = ptrtoint ptr %i.v to i64                   ; 2 uses
  %i.eh = shl nuw nsw i64 %i.w, 2
  %7 = shl nuw nsw i64 %i.ee, 2
  %8 = add i64 %i.eh, %6                          ; 2 uses
  %i.ei = add i64 %8, %7
  %i.ej = add i64 %i.ei, 4
  %i.ek = shl nuw nsw i64 %i.ec, 2
  %i.el = add i64 %8, %i.ek
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ej, i64 %i.el)
  %9 = add nuw nsw i64 %i.w, %i.ee
  %10 = shl nuw nsw i64 %9, 2
  %i.em = add i64 %10, %6
  %11 = xor i64 %i.em, -1
  %12 = add i64 %umax, %11                        ; 2 uses
  %i.en = lshr i64 %12, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check233 = icmp ult i64 %12, 28
  br i1 %min.iters.check233, label %.lr.ph.i131.preheader346, label %vector.ph234

vector.ph234:                                     ; preds = %.lr.ph.i131.preheader
  %n.vec236 = and i64 %i.eo, 9223372036854775800  ; 3 uses
  %i.ep = shl i64 %n.vec236, 2
  %i.eq = getelementptr i8, ptr %i.ef, i64 %i.ep
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph234
  %index240 = phi i64 [ 0, %vector.ph234 ], [ %index.next241, %vector.body239 ] ; 2 uses
  %i.er = shl i64 %index240, 2
  %next.gep = getelementptr i8, ptr %i.ef, i64 %i.er ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat238, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat238, ptr %i.es, align 4
  %index.next241 = add nuw i64 %index240, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.et, label %middle.block242, label %vector.body239, !llvm.loop !64

middle.block242:                                  ; preds = %vector.body239
  %cmp.n243 = icmp eq i64 %i.eo, %n.vec236
  br i1 %cmp.n243, label %.critedge, label %.lr.ph.i131.preheader346

.lr.ph.i131.preheader346:                         ; preds = %.lr.ph.i131.preheader, %middle.block242
  %.017.i132.ph = phi ptr [ %i.ef, %.lr.ph.i131.preheader ], [ %i.eq, %middle.block242 ]
  br label %.lr.ph.i131

.preheader.i133:                                  ; preds = %bb.m
  br i1 %i.eg, label %.lr.ph19.i134.preheader, label %.critedge

.lr.ph19.i134.preheader:                          ; preds = %.preheader.i133
  %13 = ptrtoint ptr %i.v to i64                  ; 2 uses
  %i.eu = shl nuw nsw i64 %i.w, 2
  %14 = shl nuw nsw i64 %i.ee, 2
  %15 = add i64 %i.eu, %13                        ; 2 uses
  %i.ev = add i64 %15, %14
  %i.ew = add i64 %i.ev, 4
  %i.ex = shl nuw nsw i64 %i.ec, 2
  %i.ey = add i64 %15, %i.ex
  %umax245 = tail call i64 @llvm.umax.i64(i64 %i.ew, i64 %i.ey)
  %16 = add nuw nsw i64 %i.w, %i.ee
  %17 = shl nuw nsw i64 %16, 2
  %i.ez = add i64 %17, %13
  %18 = xor i64 %i.ez, -1
  %19 = add i64 %umax245, %18                     ; 2 uses
  %i.fa = lshr i64 %19, 2
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %min.iters.check247 = icmp ult i64 %19, 28
  br i1 %min.iters.check247, label %.lr.ph19.i134.preheader344, label %vector.ph248

vector.ph248:                                     ; preds = %.lr.ph19.i134.preheader
  %n.vec250 = and i64 %i.fb, 9223372036854775800  ; 3 uses
  %i.fc = shl i64 %n.vec250, 2
  %i.fd = getelementptr i8, ptr %i.ef, i64 %i.fc
  %broadcast.splatinsert251 = insertelement <4 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat252 = shufflevector <4 x i32> %broadcast.splatinsert251, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body253

vector.body253:                                   ; preds = %pred.store.continue280, %vector.ph248
  %index254 = phi i64 [ 0, %vector.ph248 ], [ %index.next281, %pred.store.continue280 ] ; 2 uses
  %i.fe = shl i64 %index254, 2                    ; 8 uses
  %next.gep255.a = getelementptr i8, ptr %i.ef, i64 %i.fe ; 3 uses
  %i.ff = getelementptr i8, ptr %i.ef, i64 %i.fe
  %next.gep256.a = getelementptr i8, ptr %i.ff, i64 4
  %i.fg = getelementptr i8, ptr %i.ef, i64 %i.fe
  %next.gep257.a = getelementptr i8, ptr %i.fg, i64 8
  %i.fh = getelementptr i8, ptr %i.ef, i64 %i.fe
  %next.gep258.a = getelementptr i8, ptr %i.fh, i64 12
  %i.fi = getelementptr i8, ptr %i.ef, i64 %i.fe
  %next.gep259.a = getelementptr i8, ptr %i.fi, i64 16
  %i.fj = getelementptr i8, ptr %i.ef, i64 %i.fe
  %next.gep260.a = getelementptr i8, ptr %i.fj, i64 20
  %i.fk = getelementptr i8, ptr %i.ef, i64 %i.fe
  %next.gep261.a = getelementptr i8, ptr %i.fk, i64 24
  %i.fl = getelementptr i8, ptr %i.ef, i64 %i.fe
  %next.gep262 = getelementptr i8, ptr %i.fl, i64 28
  %i.fm = getelementptr i8, ptr %next.gep255.a, i64 16
  %wide.load263.a = load <4 x i32>, ptr %next.gep255.a, align 4
  %wide.load264 = load <4 x i32>, ptr %i.fm, align 4
  %i.fn = icmp eq <4 x i32> %wide.load263.a, %broadcast.splat252 ; 4 uses
  %i.fo = icmp eq <4 x i32> %wide.load264, %broadcast.splat252 ; 4 uses
  %i.fp = extractelement <4 x i1> %i.fn, i64 0
  br i1 %i.fp, label %pred.store.if265, label %pred.store.continue266

pred.store.if265:                                 ; preds = %vector.body253
  store i32 %3, ptr %next.gep255.a, align 4
  br label %pred.store.continue266

pred.store.continue266:                           ; preds = %pred.store.if265, %vector.body253
  %i.fq = extractelement <4 x i1> %i.fn, i64 1
  br i1 %i.fq, label %pred.store.if267, label %pred.store.continue268

pred.store.if267:                                 ; preds = %pred.store.continue266
  store i32 %3, ptr %next.gep256.a, align 4
  br label %pred.store.continue268

pred.store.continue268:                           ; preds = %pred.store.if267, %pred.store.continue266
  %i.fr = extractelement <4 x i1> %i.fn, i64 2
  br i1 %i.fr, label %pred.store.if269, label %pred.store.continue270

pred.store.if269:                                 ; preds = %pred.store.continue268
  store i32 %3, ptr %next.gep257.a, align 4
  br label %pred.store.continue270

pred.store.continue270:                           ; preds = %pred.store.if269, %pred.store.continue268
  %i.fs = extractelement <4 x i1> %i.fn, i64 3
  br i1 %i.fs, label %pred.store.if271, label %pred.store.continue272

pred.store.if271:                                 ; preds = %pred.store.continue270
  store i32 %3, ptr %next.gep258.a, align 4
  br label %pred.store.continue272

pred.store.continue272:                           ; preds = %pred.store.if271, %pred.store.continue270
  %i.ft = extractelement <4 x i1> %i.fo, i64 0
  br i1 %i.ft, label %pred.store.if273, label %pred.store.continue274

pred.store.if273:                                 ; preds = %pred.store.continue272
  store i32 %3, ptr %next.gep259.a, align 4
  br label %pred.store.continue274

pred.store.continue274:                           ; preds = %pred.store.if273, %pred.store.continue272
  %i.fu = extractelement <4 x i1> %i.fo, i64 1
  br i1 %i.fu, label %pred.store.if275, label %pred.store.continue276

pred.store.if275:                                 ; preds = %pred.store.continue274
  store i32 %3, ptr %next.gep260.a, align 4
  br label %pred.store.continue276

pred.store.continue276:                           ; preds = %pred.store.if275, %pred.store.continue274
  %i.fv = extractelement <4 x i1> %i.fo, i64 2
  br i1 %i.fv, label %pred.store.if277, label %pred.store.continue278

pred.store.if277:                                 ; preds = %pred.store.continue276
  store i32 %3, ptr %next.gep261.a, align 4
  br label %pred.store.continue278

pred.store.continue278:                           ; preds = %pred.store.if277, %pred.store.continue276
  %i.fw = extractelement <4 x i1> %i.fo, i64 3
  br i1 %i.fw, label %pred.store.if279, label %pred.store.continue280

pred.store.if279:                                 ; preds = %pred.store.continue278
  store i32 %3, ptr %next.gep262, align 4
  br label %pred.store.continue280

pred.store.continue280:                           ; preds = %pred.store.if279, %pred.store.continue278
  %index.next281 = add nuw i64 %index254, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next281, %n.vec250
  br i1 %i.fx, label %middle.block282, label %vector.body253, !llvm.loop !65

middle.block282:                                  ; preds = %pred.store.continue280
  %cmp.n283 = icmp eq i64 %i.fb, %n.vec250
  br i1 %cmp.n283, label %.critedge, label %.lr.ph19.i134.preheader344

.lr.ph19.i134.preheader344:                       ; preds = %.lr.ph19.i134.preheader, %middle.block282
  %.118.i135.ph = phi ptr [ %i.ef, %.lr.ph19.i134.preheader ], [ %i.fd, %middle.block282 ]
  br label %.lr.ph19.i134

.lr.ph.i131:                                      ; preds = %.lr.ph.i131.preheader346, %.lr.ph.i131
  %.017.i132 = phi ptr [ %i.fy, %.lr.ph.i131 ], [ %.017.i132.ph, %.lr.ph.i131.preheader346 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.017.i132, i64 4 ; 2 uses
  store i32 %3, ptr %.017.i132, align 4
  %i.fz = icmp ult ptr %i.fy, %i.ed
  br i1 %i.fz, label %.lr.ph.i131, label %.critedge, !llvm.loop !66

.lr.ph19.i134:                                    ; preds = %.lr.ph19.i134.preheader344, %bb.o
  %.118.i135 = phi ptr [ %i.gc, %bb.o ], [ %.118.i135.ph, %.lr.ph19.i134.preheader344 ] ; 3 uses
  %i.ga = load i32, ptr %.118.i135, align 4
  %i.gb = icmp eq i32 %i.ga, %i.eb
  br i1 %i.gb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph19.i134
  store i32 %3, ptr %.118.i135, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph19.i134
  %i.gc = getelementptr inbounds nuw i8, ptr %.118.i135, i64 4 ; 2 uses
  %i.gd = icmp ult ptr %i.gc, %i.ed
  br i1 %i.gd, label %.lr.ph19.i134, label %.critedge, !llvm.loop !67

_ZL9fillBlockPjiijja.exit:                        ; preds = %.lr.ph.i, %bb.l, %middle.block, %middle.block229, %bb.g
  %.1 = phi i32 [ %1, %bb.g ], [ %i.t, %middle.block229 ], [ %i.t, %middle.block ], [ %i.t, %bb.l ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.ge = and i32 %i.o, 31                        ; 2 uses
  %i.gf = and i32 %i.o, 4194272                   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 144136 ; 4 uses
  %i.gh = load i32, ptr %i.gg, align 8
  %i.gi = icmp eq i32 %3, %i.gh
  br i1 %i.gi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZL9fillBlockPjiijja.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 144164
  %i.gk = load i32, ptr %i.gj, align 4
  br label %bb.q

bb.q:                                             ; preds = %_ZL9fillBlockPjiijja.exit, %bb.p
  %.0102 = phi i32 [ %i.gk, %bb.p ], [ -1, %_ZL9fillBlockPjiijja.exit ]
  %i.gl = icmp slt i32 %.1, %i.gf
  br i1 %i.gl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q
  %i.gm = getelementptr inbounds nuw i8, ptr %i.g, i64 2176 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.g, i64 144164 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 144160
  %i.gp = getelementptr inbounds nuw i8, ptr %i.g, i64 144144 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.g, i64 144176 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 144128 ; 3 uses
  %.not.i138 = icmp eq i8 %4, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %i.g, i64 144156 ; 2 uses
  %i.gt = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.gu = shufflevector <4 x i32> %i.gt, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %.critedge128
  %.2174 = phi i32 [ %.1, %.lr.ph ], [ %.3, %.critedge128 ] ; 9 uses
  %.1103173 = phi i32 [ %.0102, %.lr.ph ], [ %.3105, %.critedge128 ] ; 9 uses
  %i.gv = load i32, ptr %i.gg, align 8
  %i.gw = icmp eq i32 %3, %i.gv
  br i1 %i.gw, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.gx = and i32 %.2174, 2096128
  %i.gy = icmp eq i32 %i.gx, 55296
  br i1 %i.gy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gz = lshr i32 %.2174, 5
  %i.ha = add nuw nsw i32 %i.gz, 320
  br label %_ZL13isInNullBlockP9UNewTrie2ia.exit

bb.u:                                             ; preds = %bb.s
  %i.hb = lshr i32 %.2174, 11
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = lshr i32 %.2174, 5
  %i.hg = and i32 %i.hf, 63
  %i.hh = add nsw i32 %i.he, %i.hg
  br label %_ZL13isInNullBlockP9UNewTrie2ia.exit

_ZL13isInNullBlockP9UNewTrie2ia.exit:             ; preds = %bb.t, %bb.u
  %.0.i = phi i32 [ %i.ha, %bb.t ], [ %i.hh, %bb.u ]
  %i.hi = sext i32 %.0.i to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4
  %i.hl = load i32, ptr %i.gn, align 4
  %.not = icmp eq i32 %i.hk, %i.hl
  br i1 %.not, label %.critedge128, label %bb.v, !llvm.loop !68

bb.v:                                             ; preds = %_ZL13isInNullBlockP9UNewTrie2ia.exit, %bb.r
end_hunk_0
begin_hunk_1_@utrie2_setRange32_78:bb.a
  %i.kg = icmp eq i32 %i.kf, %i.is
  br i1 %i.kg, label %bb.au, label %.lr.ph19.i143.20

bb.au:                                            ; preds = %.lr.ph19.i143.19
  store i32 %3, ptr %.118.i144.ptr.19, align 4
  br label %.lr.ph19.i143.20

.lr.ph19.i143.20:                                 ; preds = %bb.au, %.lr.ph19.i143.19
  %.118.i144.ptr.20 = getelementptr inbounds nuw i8, ptr %i.ir, i64 80 ; 2 uses
  %i.kh = load i32, ptr %.118.i144.ptr.20, align 4
  %i.ki = icmp eq i32 %i.kh, %i.is
  br i1 %i.ki, label %bb.av, label %.lr.ph19.i143.21

bb.av:                                            ; preds = %.lr.ph19.i143.20
  store i32 %3, ptr %.118.i144.ptr.20, align 4
  br label %.lr.ph19.i143.21

.lr.ph19.i143.21:                                 ; preds = %bb.av, %.lr.ph19.i143.20
  %.118.i144.ptr.21 = getelementptr inbounds nuw i8, ptr %i.ir, i64 84 ; 2 uses
  %i.kj = load i32, ptr %.118.i144.ptr.21, align 4
  %i.kk = icmp eq i32 %i.kj, %i.is
  br i1 %i.kk, label %bb.aw, label %.lr.ph19.i143.22

bb.aw:                                            ; preds = %.lr.ph19.i143.21
  store i32 %3, ptr %.118.i144.ptr.21, align 4
  br label %.lr.ph19.i143.22

.lr.ph19.i143.22:                                 ; preds = %bb.aw, %.lr.ph19.i143.21
  %.118.i144.ptr.22 = getelementptr inbounds nuw i8, ptr %i.ir, i64 88 ; 2 uses
  %i.kl = load i32, ptr %.118.i144.ptr.22, align 4
  %i.km = icmp eq i32 %i.kl, %i.is
  br i1 %i.km, label %bb.ax, label %.lr.ph19.i143.23

bb.ax:                                            ; preds = %.lr.ph19.i143.22
  store i32 %3, ptr %.118.i144.ptr.22, align 4
  br label %.lr.ph19.i143.23

.lr.ph19.i143.23:                                 ; preds = %bb.ax, %.lr.ph19.i143.22
  %.118.i144.ptr.23 = getelementptr inbounds nuw i8, ptr %i.ir, i64 92 ; 2 uses
  %i.kn = load i32, ptr %.118.i144.ptr.23, align 4
  %i.ko = icmp eq i32 %i.kn, %i.is
  br i1 %i.ko, label %bb.ay, label %.lr.ph19.i143.24

bb.ay:                                            ; preds = %.lr.ph19.i143.23
  store i32 %3, ptr %.118.i144.ptr.23, align 4
  br label %.lr.ph19.i143.24

.lr.ph19.i143.24:                                 ; preds = %bb.ay, %.lr.ph19.i143.23
  %.118.i144.ptr.24 = getelementptr inbounds nuw i8, ptr %i.ir, i64 96 ; 2 uses
  %i.kp = load i32, ptr %.118.i144.ptr.24, align 4
  %i.kq = icmp eq i32 %i.kp, %i.is
  br i1 %i.kq, label %bb.az, label %.lr.ph19.i143.25

bb.az:                                            ; preds = %.lr.ph19.i143.24
  store i32 %3, ptr %.118.i144.ptr.24, align 4
  br label %.lr.ph19.i143.25

.lr.ph19.i143.25:                                 ; preds = %bb.az, %.lr.ph19.i143.24
  %.118.i144.ptr.25 = getelementptr inbounds nuw i8, ptr %i.ir, i64 100 ; 2 uses
  %i.kr = load i32, ptr %.118.i144.ptr.25, align 4
  %i.ks = icmp eq i32 %i.kr, %i.is
  br i1 %i.ks, label %bb.ba, label %.lr.ph19.i143.26

bb.ba:                                            ; preds = %.lr.ph19.i143.25
  store i32 %3, ptr %.118.i144.ptr.25, align 4
  br label %.lr.ph19.i143.26

.lr.ph19.i143.26:                                 ; preds = %bb.ba, %.lr.ph19.i143.25
  %.118.i144.ptr.26 = getelementptr inbounds nuw i8, ptr %i.ir, i64 104 ; 2 uses
  %i.kt = load i32, ptr %.118.i144.ptr.26, align 4
  %i.ku = icmp eq i32 %i.kt, %i.is
  br i1 %i.ku, label %bb.bb, label %.lr.ph19.i143.27

bb.bb:                                            ; preds = %.lr.ph19.i143.26
  store i32 %3, ptr %.118.i144.ptr.26, align 4
  br label %.lr.ph19.i143.27

.lr.ph19.i143.27:                                 ; preds = %bb.bb, %.lr.ph19.i143.26
  %.118.i144.ptr.27 = getelementptr inbounds nuw i8, ptr %i.ir, i64 108 ; 2 uses
  %i.kv = load i32, ptr %.118.i144.ptr.27, align 4
  %i.kw = icmp eq i32 %i.kv, %i.is
  br i1 %i.kw, label %bb.bc, label %.lr.ph19.i143.28

bb.bc:                                            ; preds = %.lr.ph19.i143.27
  store i32 %3, ptr %.118.i144.ptr.27, align 4
  br label %.lr.ph19.i143.28

.lr.ph19.i143.28:                                 ; preds = %bb.bc, %.lr.ph19.i143.27
  %.118.i144.ptr.28 = getelementptr inbounds nuw i8, ptr %i.ir, i64 112 ; 2 uses
  %i.kx = load i32, ptr %.118.i144.ptr.28, align 4
  %i.ky = icmp eq i32 %i.kx, %i.is
  br i1 %i.ky, label %bb.bd, label %.lr.ph19.i143.29

bb.bd:                                            ; preds = %.lr.ph19.i143.28
  store i32 %3, ptr %.118.i144.ptr.28, align 4
  br label %.lr.ph19.i143.29

.lr.ph19.i143.29:                                 ; preds = %bb.bd, %.lr.ph19.i143.28
  %.118.i144.ptr.29 = getelementptr inbounds nuw i8, ptr %i.ir, i64 116 ; 2 uses
  %i.kz = load i32, ptr %.118.i144.ptr.29, align 4
  %i.la = icmp eq i32 %i.kz, %i.is
  br i1 %i.la, label %bb.be, label %.lr.ph19.i143.30

bb.be:                                            ; preds = %.lr.ph19.i143.29
  store i32 %3, ptr %.118.i144.ptr.29, align 4
  br label %.lr.ph19.i143.30

.lr.ph19.i143.30:                                 ; preds = %bb.be, %.lr.ph19.i143.29
  %.118.i144.ptr.30 = getelementptr inbounds nuw i8, ptr %i.ir, i64 120 ; 2 uses
  %i.lb = load i32, ptr %.118.i144.ptr.30, align 4
  %i.lc = icmp eq i32 %i.lb, %i.is
  br i1 %i.lc, label %bb.bf, label %.lr.ph19.i143.31

bb.bf:                                            ; preds = %.lr.ph19.i143.30
  store i32 %3, ptr %.118.i144.ptr.30, align 4
  br label %.lr.ph19.i143.31

.lr.ph19.i143.31:                                 ; preds = %bb.bf, %.lr.ph19.i143.30
  %.118.i144.ptr.31 = getelementptr inbounds nuw i8, ptr %i.ir, i64 124 ; 2 uses
  %i.ld = load i32, ptr %.118.i144.ptr.31, align 4
  %i.le = icmp eq i32 %i.ld, %i.is
  br i1 %i.le, label %bb.bg, label %.critedge128

bb.bg:                                            ; preds = %.lr.ph19.i143.31
  store i32 %3, ptr %.118.i144.ptr.31, align 4
  br label %.critedge128

_ZL15isWritableBlockP9UNewTrie2i.exit.thread:     ; preds = %_ZL14getIndex2BlockP9UNewTrie2ia.exit.thread156, %_ZL15isWritableBlockP9UNewTrie2i.exit
  %i.lf = load ptr, ptr %i.gr, align 8
  %i.lg = sext i32 %i.ii to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4
  %.not124 = icmp ne i32 %i.li, %3
  %brmerge = or i1 %i.k, %.not.i137
  %or.cond163 = and i1 %brmerge, %.not124
  br i1 %or.cond163, label %bb.bh, label %.critedge128

bb.bh:                                            ; preds = %_ZL15isWritableBlockP9UNewTrie2i.exit.thread, %bb.z
  %i.lj = icmp sgt i32 %.1103173, -1
  br i1 %i.lj, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.lk = lshr i32 %.1103173, 5
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.ll ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = add nsw i32 %i.ln, 1
  store i32 %i.lo, ptr %i.lm, align 4
  %i.lp = load i32, ptr %i.ih, align 4            ; 2 uses
  %i.lq = ashr i32 %i.lp, 5
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %i.lr ; 3 uses
  %i.lt = load i32, ptr %i.ls, align 4
  %i.lu = add nsw i32 %i.lt, -1                   ; 2 uses
  store i32 %i.lu, ptr %i.ls, align 4
  %i.lv = icmp eq i32 %i.lu, 0
  br i1 %i.lv, label %bb.bj, label %_ZL14setIndex2EntryP9UNewTrie2ii.exit

bb.bj:                                            ; preds = %bb.bi
  %i.lw = load i32, ptr %i.gs, align 4
  %i.lx = sub nsw i32 0, %i.lw
  store i32 %i.lx, ptr %i.ls, align 4
  store i32 %i.lp, ptr %i.gs, align 4
  br label %_ZL14setIndex2EntryP9UNewTrie2ii.exit

_ZL14setIndex2EntryP9UNewTrie2ii.exit:            ; preds = %bb.bi, %bb.bj
  store i32 %.1103173, ptr %i.ih, align 4
  br label %.critedge128

bb.bk:                                            ; preds = %bb.bh
  %i.ly = tail call fastcc noundef i32 @_ZL12getDataBlockP9UNewTrie2ia(ptr noundef %i.g, i32 noundef %.2174, i8 noundef signext 1) ; 3 uses
  %i.lz = icmp slt i32 %i.ly, 0
  br i1 %i.lz, label %.critedge.sink.split, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ma = load ptr, ptr %i.gr, align 8
  %i.mb = zext nneg i32 %i.ly to i64
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mb
  tail call fastcc void @_ZL10writeBlockPjj(ptr noundef %i.mc, i32 noundef %3)
  br label %.critedge128

.critedge128:                                     ; preds = %.lr.ph19.i143.31, %bb.bg, %.lr.ph.i140.preheader, %bb.bl, %_ZL14setIndex2EntryP9UNewTrie2ii.exit, %_ZL15isWritableBlockP9UNewTrie2i.exit.thread, %_ZL13isInNullBlockP9UNewTrie2ia.exit
  %.3105 = phi i32 [ %.1103173, %_ZL13isInNullBlockP9UNewTrie2ia.exit ], [ %.1103173, %_ZL14setIndex2EntryP9UNewTrie2ii.exit ], [ %i.ly, %bb.bl ], [ %.1103173, %.lr.ph.i140.preheader ], [ %.1103173, %_ZL15isWritableBlockP9UNewTrie2i.exit.thread ], [ %.1103173, %bb.bg ], [ %.1103173, %.lr.ph19.i143.31 ]
  %.3 = add nuw nsw i32 %.2174, 32                ; 3 uses
  %i.md = icmp slt i32 %.3, %i.gf
  br i1 %i.md, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge128, %bb.q
  %.2.lcssa = phi i32 [ %.1, %bb.q ], [ %.3, %.critedge128 ]
  %.not121 = icmp eq i32 %i.ge, 0
  br i1 %.not121, label %.critedge, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge
  %i.me = tail call fastcc noundef i32 @_ZL12getDataBlockP9UNewTrie2ia(ptr noundef %i.g, i32 noundef %.2.lcssa, i8 noundef signext 1) ; 2 uses
  %i.mf = icmp slt i32 %i.me, 0
  br i1 %i.mf, label %.critedge.sink.split, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mg = getelementptr inbounds nuw i8, ptr %i.g, i64 144128
  %i.mh = load ptr, ptr %i.mg, align 8            ; 2 uses
  %i.mi = zext nneg i32 %i.me to i64              ; 3 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.mi ; 14 uses
  %i.mk = load i32, ptr %i.gg, align 8            ; 2 uses
  %i.ml = zext nneg i32 %i.ge to i64              ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.ml ; 2 uses
  %.not.i146 = icmp eq i8 %4, 0
  %20 = ptrtoint ptr %i.mh to i64                 ; 2 uses
  %i.mn = shl nuw nsw i64 %i.mi, 2
  %21 = shl nuw nsw i64 %i.ml, 2
  %22 = add i64 %i.mn, %20                        ; 2 uses
  %i.mo = add i64 %22, %21
  %i.mp = add i64 %22, 4
  %umax300 = tail call i64 @llvm.umax.i64(i64 %i.mo, i64 %i.mp)
  %23 = shl nuw nsw i64 %i.mi, 2
  %i.mq = add i64 %23, %20
  %24 = xor i64 %i.mq, -1
  %25 = add i64 %umax300, %24                     ; 2 uses
  %i.mr = lshr i64 %25, 2
  %i.ms = add nuw nsw i64 %i.mr, 1                ; 4 uses
  %min.iters.check302 = icmp ult i64 %25, 28      ; 2 uses
  br i1 %.not.i146, label %.lr.ph19.i151.preheader, label %.lr.ph.i148.preheader

.lr.ph.i148.preheader:                            ; preds = %bb.bn
  br i1 %min.iters.check302, label %.lr.ph.i148.preheader342, label %vector.ph288

vector.ph288:                                     ; preds = %.lr.ph.i148.preheader
  %n.vec290 = and i64 %i.ms, 9223372036854775800  ; 3 uses
  %i.mt = shl i64 %n.vec290, 2
  %i.mu = getelementptr i8, ptr %i.mj, i64 %i.mt
  %broadcast.splatinsert291 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat292 = shufflevector <4 x i32> %broadcast.splatinsert291, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph288
  %index294 = phi i64 [ 0, %vector.ph288 ], [ %index.next296, %vector.body293 ] ; 2 uses
  %i.mv = shl i64 %index294, 2
  %next.gep295 = getelementptr i8, ptr %i.mj, i64 %i.mv ; 2 uses
  %i.mw = getelementptr i8, ptr %next.gep295, i64 16
  store <4 x i32> %broadcast.splat292, ptr %next.gep295, align 4
  store <4 x i32> %broadcast.splat292, ptr %i.mw, align 4
  %index.next296 = add nuw i64 %index294, 8       ; 2 uses
  %i.mx = icmp eq i64 %index.next296, %n.vec290
  br i1 %i.mx, label %middle.block297, label %vector.body293, !llvm.loop !69

middle.block297:                                  ; preds = %vector.body293
  %cmp.n298 = icmp eq i64 %i.ms, %n.vec290
  br i1 %cmp.n298, label %.critedge, label %.lr.ph.i148.preheader342

.lr.ph.i148.preheader342:                         ; preds = %.lr.ph.i148.preheader, %middle.block297
  %.017.i149.ph = phi ptr [ %i.mj, %.lr.ph.i148.preheader ], [ %i.mu, %middle.block297 ]
  br label %.lr.ph.i148

.lr.ph19.i151.preheader:                          ; preds = %bb.bn
  br i1 %min.iters.check302, label %.lr.ph19.i151.preheader341, label %vector.ph303

vector.ph303:                                     ; preds = %.lr.ph19.i151.preheader
  %n.vec305 = and i64 %i.ms, 9223372036854775800  ; 3 uses
  %i.my = shl i64 %n.vec305, 2
  %i.mz = getelementptr i8, ptr %i.mj, i64 %i.my
  %broadcast.splatinsert306 = insertelement <4 x i32> poison, i32 %i.mk, i64 0
  %broadcast.splat307 = shufflevector <4 x i32> %broadcast.splatinsert306, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body308

vector.body308:                                   ; preds = %pred.store.continue335, %vector.ph303
  %index309 = phi i64 [ 0, %vector.ph303 ], [ %index.next336, %pred.store.continue335 ] ; 2 uses
  %i.na = shl i64 %index309, 2                    ; 8 uses
  %next.gep310.a = getelementptr i8, ptr %i.mj, i64 %i.na ; 3 uses
  %i.nb = getelementptr i8, ptr %i.mj, i64 %i.na
  %next.gep311.a = getelementptr i8, ptr %i.nb, i64 4
  %i.nc = getelementptr i8, ptr %i.mj, i64 %i.na
  %next.gep312.a = getelementptr i8, ptr %i.nc, i64 8
  %i.nd = getelementptr i8, ptr %i.mj, i64 %i.na
  %next.gep313.a = getelementptr i8, ptr %i.nd, i64 12
  %i.ne = getelementptr i8, ptr %i.mj, i64 %i.na
  %next.gep314.a = getelementptr i8, ptr %i.ne, i64 16
  %i.nf = getelementptr i8, ptr %i.mj, i64 %i.na
  %next.gep315 = getelementptr i8, ptr %i.nf, i64 20
  %i.ng = getelementptr i8, ptr %i.mj, i64 %i.na
  %next.gep316 = getelementptr i8, ptr %i.ng, i64 24
  %i.nh = getelementptr i8, ptr %i.mj, i64 %i.na
  %next.gep317 = getelementptr i8, ptr %i.nh, i64 28
  %i.ni = getelementptr i8, ptr %next.gep310.a, i64 16
  %wide.load318 = load <4 x i32>, ptr %next.gep310.a, align 4
  %wide.load319 = load <4 x i32>, ptr %i.ni, align 4
  %i.nj = icmp eq <4 x i32> %wide.load318, %broadcast.splat307 ; 4 uses
  %i.nk = icmp eq <4 x i32> %wide.load319, %broadcast.splat307 ; 4 uses
  %i.nl = extractelement <4 x i1> %i.nj, i64 0
  br i1 %i.nl, label %pred.store.if320, label %pred.store.continue321

pred.store.if320:                                 ; preds = %vector.body308
  store i32 %3, ptr %next.gep310.a, align 4
  br label %pred.store.continue321

pred.store.continue321:                           ; preds = %pred.store.if320, %vector.body308
  %i.nm = extractelement <4 x i1> %i.nj, i64 1
  br i1 %i.nm, label %pred.store.if322, label %pred.store.continue323

pred.store.if322:                                 ; preds = %pred.store.continue321
  store i32 %3, ptr %next.gep311.a, align 4
  br label %pred.store.continue323

pred.store.continue323:                           ; preds = %pred.store.if322, %pred.store.continue321
  %i.nn = extractelement <4 x i1> %i.nj, i64 2
  br i1 %i.nn, label %pred.store.if324, label %pred.store.continue325

pred.store.if324:                                 ; preds = %pred.store.continue323
  store i32 %3, ptr %next.gep312.a, align 4
  br label %pred.store.continue325

pred.store.continue325:                           ; preds = %pred.store.if324, %pred.store.continue323
  %i.no = extractelement <4 x i1> %i.nj, i64 3
  br i1 %i.no, label %pred.store.if326, label %pred.store.continue327

pred.store.if326:                                 ; preds = %pred.store.continue325
  store i32 %3, ptr %next.gep313.a, align 4
  br label %pred.store.continue327

pred.store.continue327:                           ; preds = %pred.store.if326, %pred.store.continue325
  %i.np = extractelement <4 x i1> %i.nk, i64 0
  br i1 %i.np, label %pred.store.if328, label %pred.store.continue329

pred.store.if328:                                 ; preds = %pred.store.continue327
  store i32 %3, ptr %next.gep314.a, align 4
  br label %pred.store.continue329

pred.store.continue329:                           ; preds = %pred.store.if328, %pred.store.continue327
  %i.nq = extractelement <4 x i1> %i.nk, i64 1
  br i1 %i.nq, label %pred.store.if330, label %pred.store.continue331

pred.store.if330:                                 ; preds = %pred.store.continue329
  store i32 %3, ptr %next.gep315, align 4
  br label %pred.store.continue331

pred.store.continue331:                           ; preds = %pred.store.if330, %pred.store.continue329
  %i.nr = extractelement <4 x i1> %i.nk, i64 2
  br i1 %i.nr, label %pred.store.if332, label %pred.store.continue333

pred.store.if332:                                 ; preds = %pred.store.continue331
  store i32 %3, ptr %next.gep316, align 4
  br label %pred.store.continue333

pred.store.continue333:                           ; preds = %pred.store.if332, %pred.store.continue331
  %i.ns = extractelement <4 x i1> %i.nk, i64 3
  br i1 %i.ns, label %pred.store.if334, label %pred.store.continue335

pred.store.if334:                                 ; preds = %pred.store.continue333
  store i32 %3, ptr %next.gep317, align 4
  br label %pred.store.continue335

pred.store.continue335:                           ; preds = %pred.store.if334, %pred.store.continue333
  %index.next336 = add nuw i64 %index309, 8       ; 2 uses
  %i.nt = icmp eq i64 %index.next336, %n.vec305
  br i1 %i.nt, label %middle.block337, label %vector.body308, !llvm.loop !70

middle.block337:                                  ; preds = %pred.store.continue335
  %cmp.n338 = icmp eq i64 %i.ms, %n.vec305
  br i1 %cmp.n338, label %.critedge, label %.lr.ph19.i151.preheader341

.lr.ph19.i151.preheader341:                       ; preds = %.lr.ph19.i151.preheader, %middle.block337
  %.118.i152.ph = phi ptr [ %i.mj, %.lr.ph19.i151.preheader ], [ %i.mz, %middle.block337 ]
  br label %.lr.ph19.i151

.lr.ph.i148:                                      ; preds = %.lr.ph.i148.preheader342, %.lr.ph.i148
  %.017.i149 = phi ptr [ %i.nu, %.lr.ph.i148 ], [ %.017.i149.ph, %.lr.ph.i148.preheader342 ] ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.017.i149, i64 4 ; 2 uses
  store i32 %3, ptr %.017.i149, align 4
  %i.nv = icmp ult ptr %i.nu, %i.mm
  br i1 %i.nv, label %.lr.ph.i148, label %.critedge, !llvm.loop !71

.lr.ph19.i151:                                    ; preds = %.lr.ph19.i151.preheader341, %bb.bp
  %.118.i152 = phi ptr [ %i.ny, %bb.bp ], [ %.118.i152.ph, %.lr.ph19.i151.preheader341 ] ; 3 uses
  %i.nw = load i32, ptr %.118.i152, align 4
  %i.nx = icmp eq i32 %i.nw, %i.mk
  br i1 %i.nx, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph19.i151
  store i32 %3, ptr %.118.i152, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph19.i151
  %i.ny = getelementptr inbounds nuw i8, ptr %.118.i152, i64 4 ; 2 uses
  %i.nz = icmp ult ptr %i.ny, %i.mm
  br i1 %i.nz, label %.lr.ph19.i151, label %.critedge, !llvm.loop !72

.critedge.sink.split:                             ; preds = %bb.bk, %_ZL14getIndex2BlockP9UNewTrie2ia.exit, %_ZL16allocIndex2BlockP9UNewTrie2.exit.i, %bb.x, %bb.bm, %bb.h, %bb.c, %bb.d, %bb.b
  %.sink = phi i32 [ 30, %bb.d ], [ 7, %bb.h ], [ 30, %bb.c ], [ 7, %bb.bm ], [ 1, %bb.b ], [ 5, %_ZL14getIndex2BlockP9UNewTrie2ia.exit ], [ 7, %bb.bk ], [ 5, %bb.x ], [ 5, %_ZL16allocIndex2BlockP9UNewTrie2.exit.i ]
  store i32 %.sink, ptr %5, align 4
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i131, %bb.o, %.lr.ph.i148, %bb.bp, %middle.block242, %middle.block282, %middle.block297, %middle.block337, %.critedge.sink.split, %.preheader.i133, %.preheader15.i130, %._crit_edge, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL12getDataBlockP9UNewTrie2ia(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i8 noundef signext range(i8 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, -1024
  %i.b = icmp eq i32 %i.a, 55296
  %i.c = icmp ne i8 %2, 0
  %or.cond.i = and i1 %i.b, %i.c
  br i1 %or.cond.i, label %_ZL14getIndex2BlockP9UNewTrie2ia.exit.thread23, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i32 %1, 11
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144160
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZL14getIndex2BlockP9UNewTrie2ia.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144144 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8              ; 6 uses
  %i.m = icmp sgt i32 %i.l, 35424
  br i1 %i.m, label %_ZL14getIndex2BlockP9UNewTrie2ia.exit.thread, label %_ZL16allocIndex2BlockP9UNewTrie2.exit.i

_ZL16allocIndex2BlockP9UNewTrie2.exit.i:          ; preds = %bb.c
  %i.n = add nsw i32 %i.l, 64
end_hunk_1
