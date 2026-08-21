Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/utrie2_builder?download=true
inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@utrie2_freeze_78:bb.a
  %i.aed = icmp sgt i32 %i.aec, 0
  br i1 %i.aed, label %.lr.ph521.preheader, label %.loopexit152

.lr.ph521.preheader:                              ; preds = %._crit_edge
  %i.aee = zext nneg i32 %i.add to i64
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %i.aee ; 3 uses
  %i.aeg = zext nneg i32 %i.aec to i64            ; 2 uses
  %min.iters.check1716 = icmp ult i32 %i.aec, 8
  br i1 %min.iters.check1716, label %.lr.ph521.preheader1750, label %vector.ph1717

vector.ph1717:                                    ; preds = %.lr.ph521.preheader
  %n.vec1718 = and i64 %i.aeg, 2147483640         ; 5 uses
  %i.aeh = trunc nuw nsw i64 %n.vec1718 to i32
  %i.aei = sub nsw i32 %i.aec, %i.aeh
  %i.aej = shl nuw nsw i64 %n.vec1718, 1
  %i.aek = getelementptr i8, ptr %.3133.lcssa, i64 %i.aej ; 2 uses
  %i.ael = shl nuw nsw i64 %n.vec1718, 2
  %i.aem = getelementptr i8, ptr %i.aef, i64 %i.ael
  %broadcast.splatinsert1719 = insertelement <4 x i32> poison, i32 %.0127.151, i64 0
  %broadcast.splat1720 = shufflevector <4 x i32> %broadcast.splatinsert1719, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1721

vector.body1721:                                  ; preds = %vector.body1721, %vector.ph1717
  %index1722 = phi i64 [ 0, %vector.ph1717 ], [ %index.next1727, %vector.body1721 ] ; 3 uses
  %i.aen = shl i64 %index1722, 1
  %next.gep1723 = getelementptr i8, ptr %.3133.lcssa, i64 %i.aen ; 2 uses
  %i.aeo = shl i64 %index1722, 2
  %next.gep1724 = getelementptr i8, ptr %i.aef, i64 %i.aeo ; 2 uses
  %i.aep = getelementptr i8, ptr %next.gep1724, i64 16
  %wide.load1725 = load <4 x i32>, ptr %next.gep1724, align 4, !tbaa !28
  %wide.load1726 = load <4 x i32>, ptr %i.aep, align 4, !tbaa !28
  %i.aeq = add <4 x i32> %wide.load1725, %broadcast.splat1720
  %i.aer = add <4 x i32> %wide.load1726, %broadcast.splat1720
  %i.aes = lshr <4 x i32> %i.aeq, splat (i32 2)
  %i.aet = lshr <4 x i32> %i.aer, splat (i32 2)
  %i.aeu = trunc <4 x i32> %i.aes to <4 x i16>
  %i.aev = trunc <4 x i32> %i.aet to <4 x i16>
  %i.aew = getelementptr i8, ptr %next.gep1723, i64 8
  store <4 x i16> %i.aeu, ptr %next.gep1723, align 2, !tbaa !50
  store <4 x i16> %i.aev, ptr %i.aew, align 2, !tbaa !50
  %index.next1727 = add nuw i64 %index1722, 8     ; 2 uses
  %i.aex = icmp eq i64 %index.next1727, %n.vec1718
  br i1 %i.aex, label %middle.block1728, label %vector.body1721, !llvm.loop !94

middle.block1728:                                 ; preds = %vector.body1721
  %cmp.n1729 = icmp eq i64 %n.vec1718, %i.aeg
  br i1 %cmp.n1729, label %.loopexit152, label %.lr.ph521.preheader1750

.lr.ph521.preheader1750:                          ; preds = %.lr.ph521.preheader, %middle.block1728
  %.4519.ph = phi i32 [ %i.aec, %.lr.ph521.preheader ], [ %i.aei, %middle.block1728 ]
  %.4134518.ph = phi ptr [ %.3133.lcssa, %.lr.ph521.preheader ], [ %i.aek, %middle.block1728 ]
  %.2138517.ph = phi ptr [ %i.aef, %.lr.ph521.preheader ], [ %i.aem, %middle.block1728 ]
  br label %.lr.ph521

.lr.ph521:                                        ; preds = %.lr.ph521.preheader1750, %.lr.ph521
  %.4519 = phi i32 [ %i.afe, %.lr.ph521 ], [ %.4519.ph, %.lr.ph521.preheader1750 ] ; 2 uses
  %.4134518 = phi ptr [ %i.afd, %.lr.ph521 ], [ %.4134518.ph, %.lr.ph521.preheader1750 ] ; 2 uses
  %.2138517 = phi ptr [ %i.aey, %.lr.ph521 ], [ %.2138517.ph, %.lr.ph521.preheader1750 ] ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.2138517, i64 4
  %i.aez = load i32, ptr %.2138517, align 4, !tbaa !28
  %i.afa = add i32 %i.aez, %.0127.151
  %i.afb = lshr i32 %i.afa, 2
  %i.afc = trunc i32 %i.afb to i16
  %i.afd = getelementptr inbounds nuw i8, ptr %.4134518, i64 2 ; 2 uses
  store i16 %i.afc, ptr %.4134518, align 2, !tbaa !50
  %i.afe = add nsw i32 %.4519, -1
  %i.aff = icmp samesign ugt i32 %.4519, 1
  br i1 %i.aff, label %.lr.ph521, label %.loopexit152, !llvm.loop !95

.loopexit152:                                     ; preds = %.lr.ph521, %middle.block1728, %._crit_edge, %.preheader153
  %.5135 = phi ptr [ %i.acz, %.preheader153 ], [ %.3133.lcssa, %._crit_edge ], [ %i.aek, %middle.block1728 ], [ %i.afd, %.lr.ph521 ] ; 6 uses
  %trunc = trunc nuw i32 %1 to i1
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.f, i64 144128 ; 3 uses
  br i1 %trunc, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.loopexit152
  store ptr %.5135, ptr %i.afg, align 8, !tbaa !43
  store ptr null, ptr %i.afh, align 8, !tbaa !44
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !20 ; 6 uses
  %i.afk = icmp sgt i32 %i.vp, 0
  br i1 %i.afk, label %.lr.ph527.preheader, label %.loopexit

.lr.ph527.preheader:                              ; preds = %bb.bs
  %i.afl = zext nneg i32 %i.vp to i64             ; 2 uses
  %min.iters.check1734 = icmp ult i32 %i.vp, 8
  br i1 %min.iters.check1734, label %.lr.ph527.preheader1749, label %vector.ph1735

vector.ph1735:                                    ; preds = %.lr.ph527.preheader
  %n.vec1736 = and i64 %i.afl, 2147483640         ; 5 uses
  %i.afm = trunc nuw nsw i64 %n.vec1736 to i32
  %i.afn = sub nsw i32 %i.vp, %i.afm
  %i.afo = shl nuw nsw i64 %n.vec1736, 1
  %i.afp = getelementptr i8, ptr %.5135, i64 %i.afo
  %i.afq = shl nuw nsw i64 %n.vec1736, 2
  %i.afr = getelementptr i8, ptr %i.afj, i64 %i.afq
  br label %vector.body1737

vector.body1737:                                  ; preds = %vector.body1737, %vector.ph1735
  %index1738 = phi i64 [ 0, %vector.ph1735 ], [ %index.next1743, %vector.body1737 ] ; 3 uses
  %i.afs = shl i64 %index1738, 1
  %next.gep1739 = getelementptr i8, ptr %.5135, i64 %i.afs ; 2 uses
  %i.aft = shl i64 %index1738, 2
  %next.gep1740 = getelementptr i8, ptr %i.afj, i64 %i.aft ; 2 uses
  %i.afu = getelementptr i8, ptr %next.gep1740, i64 16
  %wide.load1741 = load <4 x i32>, ptr %next.gep1740, align 4, !tbaa !28
  %wide.load1742 = load <4 x i32>, ptr %i.afu, align 4, !tbaa !28
  %i.afv = trunc <4 x i32> %wide.load1741 to <4 x i16>
  %i.afw = trunc <4 x i32> %wide.load1742 to <4 x i16>
  %i.afx = getelementptr i8, ptr %next.gep1739, i64 8
  store <4 x i16> %i.afv, ptr %next.gep1739, align 2, !tbaa !50
  store <4 x i16> %i.afw, ptr %i.afx, align 2, !tbaa !50
  %index.next1743 = add nuw i64 %index1738, 8     ; 2 uses
  %i.afy = icmp eq i64 %index.next1743, %n.vec1736
  br i1 %i.afy, label %middle.block1744, label %vector.body1737, !llvm.loop !96

middle.block1744:                                 ; preds = %vector.body1737
  %cmp.n1745 = icmp eq i64 %n.vec1736, %i.afl
  br i1 %cmp.n1745, label %.loopexit, label %.lr.ph527.preheader1749

.lr.ph527.preheader1749:                          ; preds = %.lr.ph527.preheader, %middle.block1744
  %.5525.ph = phi i32 [ %i.vp, %.lr.ph527.preheader ], [ %i.afn, %middle.block1744 ]
  %.6524.ph = phi ptr [ %.5135, %.lr.ph527.preheader ], [ %i.afp, %middle.block1744 ]
  %.3139523.ph = phi ptr [ %i.afj, %.lr.ph527.preheader ], [ %i.afr, %middle.block1744 ]
  br label %.lr.ph527

.lr.ph527:                                        ; preds = %.lr.ph527.preheader1749, %.lr.ph527
  %.5525 = phi i32 [ %i.agd, %.lr.ph527 ], [ %.5525.ph, %.lr.ph527.preheader1749 ] ; 2 uses
  %.6524 = phi ptr [ %i.agc, %.lr.ph527 ], [ %.6524.ph, %.lr.ph527.preheader1749 ] ; 2 uses
  %.3139523 = phi ptr [ %i.afz, %.lr.ph527 ], [ %.3139523.ph, %.lr.ph527.preheader1749 ] ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %.3139523, i64 4
  %i.aga = load i32, ptr %.3139523, align 4, !tbaa !28
  %i.agb = trunc i32 %i.aga to i16
  %i.agc = getelementptr inbounds nuw i8, ptr %.6524, i64 2
  store i16 %i.agb, ptr %.6524, align 2, !tbaa !50
  %i.agd = add nsw i32 %.5525, -1
  %i.age = icmp samesign ugt i32 %.5525, 1
  br i1 %i.age, label %.lr.ph527, label %.loopexit, !llvm.loop !97

bb.bt:                                            ; preds = %.loopexit152
  store ptr null, ptr %i.afg, align 8, !tbaa !43
  store ptr %.5135, ptr %i.afh, align 8, !tbaa !44
  %i.agf = load ptr, ptr %i.afi, align 8, !tbaa !20
  %i.agg = sext i32 %i.vp to i64
  %i.agh = shl nsw i64 %i.agg, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.5135, ptr align 4 %i.agf, i64 %i.agh, i1 false)
  %.pre890 = load ptr, ptr %i.afi, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph527, %middle.block1744, %bb.bs, %bb.bt
  %i.agi = phi ptr [ %.pre890, %bb.bt ], [ %i.afj, %bb.bs ], [ %i.afj, %middle.block1744 ], [ %i.afj, %.lr.ph527 ]
  tail call void @uprv_free_78(ptr noundef %i.agi)
  tail call void @uprv_free_78(ptr noundef nonnull %i.f)
  store ptr null, ptr %i.e, align 8, !tbaa !19
  br label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread

_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread: ; preds = %bb.w, %_ZL11compactTrieP6UTrie2P10UErrorCode.exit, %bb.e, %bb.f, %bb.a, %.loopexit, %bb.bo, %bb.bm, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @utrie2_setRange32_78(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !8
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 21 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 144172
  %i.j = load i8, ptr %i.i, align 4, !tbaa !27
  %.not118 = icmp eq i8 %i.j, 0
  br i1 %.not118, label %bb.e, label %.critedge.sink.split

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ne i8 %4, 0                         ; 3 uses
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 144136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23
  %i.n = icmp eq i32 %3, %i.m
  br i1 %i.n, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = add nuw nsw i32 %2, 1                    ; 4 uses
  %i.p = and i32 %1, 31                           ; 5 uses
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
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 3 uses
  %i.w = zext nneg i32 %i.q to i64                ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w ; 31 uses
  br i1 %.not120, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 144136
  %i.z = load i32, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  %i.aa = shl nuw nsw i32 %i.p, 2
  %.idx = zext nneg i32 %i.aa to i64              ; 18 uses
  %.not.i = icmp eq i8 %4, 0
  %6 = lshr exact i64 %.idx, 2
  %7 = sub nuw nsw i64 32, %6                     ; 4 uses
  %min.iters.check204 = icmp samesign ugt i32 %i.p, 24 ; 2 uses
  br i1 %.not.i, label %.lr.ph19.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  br i1 %min.iters.check204, label %.lr.ph.i.preheader340, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %7, 56                         ; 4 uses
  %i.ab = shl nuw nsw i64 %n.vec, 2
  %i.ac = add nuw nsw i64 %i.ab, %.idx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ad, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat, ptr %i.ae, align 4, !tbaa !28
  %i.af = icmp eq i64 %n.vec, 8
  br i1 %i.af, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ah, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat, ptr %i.ai, align 4, !tbaa !28
  %i.aj = icmp eq i64 %n.vec, 16
  br i1 %i.aj, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.al, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat, ptr %i.am, align 4, !tbaa !28
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %_ZL9fillBlockPjiijja.exit, label %.lr.ph.i.preheader340

.lr.ph.i.preheader340:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.017.i.idx.ph = phi i64 [ %.idx, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i

.lr.ph19.i.preheader:                             ; preds = %bb.j
  br i1 %min.iters.check204, label %.lr.ph19.i.preheader339, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph19.i.preheader
  %n.vec206 = and i64 %7, 56                      ; 4 uses
  %i.an = shl nuw nsw i64 %n.vec206, 2
  %i.ao = add nuw nsw i64 %i.an, %.idx
  %broadcast.splatinsert207 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat208 = shufflevector <4 x i32> %broadcast.splatinsert207, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !28
  %wide.load211 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !28
  %i.ar = icmp eq <4 x i32> %wide.load, %broadcast.splat208 ; 4 uses
  %i.as = icmp eq <4 x i32> %wide.load211, %broadcast.splat208 ; 4 uses
  %i.at = extractelement <4 x i1> %i.ar, i64 0
  br i1 %i.at, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph205
  store i32 %3, ptr %i.ap, align 4, !tbaa !28
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph205
  %i.au = extractelement <4 x i1> %i.ar, i64 1
  br i1 %i.au, label %pred.store.if212, label %pred.store.continue213

pred.store.if212:                                 ; preds = %pred.store.continue
  %i.av = getelementptr i8, ptr %i.x, i64 %.idx
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  store i32 %3, ptr %i.aw, align 4, !tbaa !28
  br label %pred.store.continue213

pred.store.continue213:                           ; preds = %pred.store.if212, %pred.store.continue
  %i.ax = extractelement <4 x i1> %i.ar, i64 2
  br i1 %i.ax, label %pred.store.if214, label %pred.store.continue215

pred.store.if214:                                 ; preds = %pred.store.continue213
  %i.ay = getelementptr i8, ptr %i.x, i64 %.idx
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  store i32 %3, ptr %i.az, align 4, !tbaa !28
  br label %pred.store.continue215

pred.store.continue215:                           ; preds = %pred.store.if214, %pred.store.continue213
  %i.ba = extractelement <4 x i1> %i.ar, i64 3
  br i1 %i.ba, label %pred.store.if216, label %pred.store.continue217

pred.store.if216:                                 ; preds = %pred.store.continue215
  %i.bb = getelementptr i8, ptr %i.x, i64 %.idx
  %i.bc = getelementptr i8, ptr %i.bb, i64 12
  store i32 %3, ptr %i.bc, align 4, !tbaa !28
  br label %pred.store.continue217

pred.store.continue217:                           ; preds = %pred.store.if216, %pred.store.continue215
  %i.bd = extractelement <4 x i1> %i.as, i64 0
  br i1 %i.bd, label %pred.store.if218, label %pred.store.continue219

pred.store.if218:                                 ; preds = %pred.store.continue217
  %i.be = getelementptr i8, ptr %i.x, i64 %.idx
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  store i32 %3, ptr %i.bf, align 4, !tbaa !28
  br label %pred.store.continue219

pred.store.continue219:                           ; preds = %pred.store.if218, %pred.store.continue217
  %i.bg = extractelement <4 x i1> %i.as, i64 1
  br i1 %i.bg, label %pred.store.if220, label %pred.store.continue221

pred.store.if220:                                 ; preds = %pred.store.continue219
  %i.bh = getelementptr i8, ptr %i.x, i64 %.idx
  %i.bi = getelementptr i8, ptr %i.bh, i64 20
  store i32 %3, ptr %i.bi, align 4, !tbaa !28
  br label %pred.store.continue221

pred.store.continue221:                           ; preds = %pred.store.if220, %pred.store.continue219
  %i.bj = extractelement <4 x i1> %i.as, i64 2
  br i1 %i.bj, label %pred.store.if222, label %pred.store.continue223

pred.store.if222:                                 ; preds = %pred.store.continue221
  %i.bk = getelementptr i8, ptr %i.x, i64 %.idx
  %i.bl = getelementptr i8, ptr %i.bk, i64 24
  store i32 %3, ptr %i.bl, align 4, !tbaa !28
  br label %pred.store.continue223

pred.store.continue223:                           ; preds = %pred.store.if222, %pred.store.continue221
  %i.bm = extractelement <4 x i1> %i.as, i64 3
  br i1 %i.bm, label %pred.store.if224, label %pred.store.continue225

pred.store.if224:                                 ; preds = %pred.store.continue223
  %i.bn = getelementptr i8, ptr %i.x, i64 %.idx
  %i.bo = getelementptr i8, ptr %i.bn, i64 28
  store i32 %3, ptr %i.bo, align 4, !tbaa !28
  br label %pred.store.continue225

pred.store.continue225:                           ; preds = %pred.store.if224, %pred.store.continue223
  %i.bp = icmp eq i64 %n.vec206, 8
  br i1 %i.bp, label %middle.block227, label %vector.body209.1

vector.body209.1:                                 ; preds = %pred.store.continue225
  %i.bq = add nuw nsw i64 %.idx, 32               ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bq ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.br, align 4, !tbaa !28
  %wide.load211.1 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !28
  %i.bt = icmp eq <4 x i32> %wide.load.1, %broadcast.splat208 ; 4 uses
  %i.bu = icmp eq <4 x i32> %wide.load211.1, %broadcast.splat208 ; 4 uses
  %i.bv = extractelement <4 x i1> %i.bt, i64 0
  br i1 %i.bv, label %pred.store.if.1, label %pred.store.continue.1

pred.store.if.1:                                  ; preds = %vector.body209.1
  store i32 %3, ptr %i.br, align 4, !tbaa !28
  br label %pred.store.continue.1

pred.store.continue.1:                            ; preds = %pred.store.if.1, %vector.body209.1
  %i.bw = extractelement <4 x i1> %i.bt, i64 1
  br i1 %i.bw, label %pred.store.if212.1, label %pred.store.continue213.1

pred.store.if212.1:                               ; preds = %pred.store.continue.1
  %i.bx = getelementptr i8, ptr %i.x, i64 %i.bq
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  store i32 %3, ptr %i.by, align 4, !tbaa !28
  br label %pred.store.continue213.1

pred.store.continue213.1:                         ; preds = %pred.store.if212.1, %pred.store.continue.1
  %i.bz = extractelement <4 x i1> %i.bt, i64 2
  br i1 %i.bz, label %pred.store.if214.1, label %pred.store.continue215.1

pred.store.if214.1:                               ; preds = %pred.store.continue213.1
  %i.ca = getelementptr i8, ptr %i.x, i64 %i.bq
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  store i32 %3, ptr %i.cb, align 4, !tbaa !28
  br label %pred.store.continue215.1

pred.store.continue215.1:                         ; preds = %pred.store.if214.1, %pred.store.continue213.1
  %i.cc = extractelement <4 x i1> %i.bt, i64 3
  br i1 %i.cc, label %pred.store.if216.1, label %pred.store.continue217.1

pred.store.if216.1:                               ; preds = %pred.store.continue215.1
  %i.cd = getelementptr i8, ptr %i.x, i64 %i.bq
  %i.ce = getelementptr i8, ptr %i.cd, i64 12
  store i32 %3, ptr %i.ce, align 4, !tbaa !28
  br label %pred.store.continue217.1

pred.store.continue217.1:                         ; preds = %pred.store.if216.1, %pred.store.continue215.1
  %i.cf = extractelement <4 x i1> %i.bu, i64 0
  br i1 %i.cf, label %pred.store.if218.1, label %pred.store.continue219.1

pred.store.if218.1:                               ; preds = %pred.store.continue217.1
  %i.cg = getelementptr i8, ptr %i.x, i64 %i.bq
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  store i32 %3, ptr %i.ch, align 4, !tbaa !28
  br label %pred.store.continue219.1

pred.store.continue219.1:                         ; preds = %pred.store.if218.1, %pred.store.continue217.1
  %i.ci = extractelement <4 x i1> %i.bu, i64 1
  br i1 %i.ci, label %pred.store.if220.1, label %pred.store.continue221.1

pred.store.if220.1:                               ; preds = %pred.store.continue219.1
  %i.cj = getelementptr i8, ptr %i.x, i64 %i.bq
  %i.ck = getelementptr i8, ptr %i.cj, i64 20
  store i32 %3, ptr %i.ck, align 4, !tbaa !28
  br label %pred.store.continue221.1

pred.store.continue221.1:                         ; preds = %pred.store.if220.1, %pred.store.continue219.1
  %i.cl = extractelement <4 x i1> %i.bu, i64 2
  br i1 %i.cl, label %pred.store.if222.1, label %pred.store.continue223.1

pred.store.if222.1:                               ; preds = %pred.store.continue221.1
  %i.cm = getelementptr i8, ptr %i.x, i64 %i.bq
  %i.cn = getelementptr i8, ptr %i.cm, i64 24
  store i32 %3, ptr %i.cn, align 4, !tbaa !28
  br label %pred.store.continue223.1

pred.store.continue223.1:                         ; preds = %pred.store.if222.1, %pred.store.continue221.1
  %i.co = extractelement <4 x i1> %i.bu, i64 3
  br i1 %i.co, label %pred.store.if224.1, label %pred.store.continue225.1

pred.store.if224.1:                               ; preds = %pred.store.continue223.1
  %i.cp = getelementptr i8, ptr %i.x, i64 %i.bq
  %i.cq = getelementptr i8, ptr %i.cp, i64 28
  store i32 %3, ptr %i.cq, align 4, !tbaa !28
  br label %pred.store.continue225.1

pred.store.continue225.1:                         ; preds = %pred.store.if224.1, %pred.store.continue223.1
  %i.cr = icmp eq i64 %n.vec206, 16
  br i1 %i.cr, label %middle.block227, label %vector.body209.2

vector.body209.2:                                 ; preds = %pred.store.continue225.1
  %i.cs = add nuw nsw i64 %.idx, 64               ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cs ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load.2 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !28
  %wide.load211.2 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !28
  %i.cv = icmp eq <4 x i32> %wide.load.2, %broadcast.splat208 ; 4 uses
  %i.cw = icmp eq <4 x i32> %wide.load211.2, %broadcast.splat208 ; 4 uses
  %i.cx = extractelement <4 x i1> %i.cv, i64 0
  br i1 %i.cx, label %pred.store.if.2, label %pred.store.continue.2

pred.store.if.2:                                  ; preds = %vector.body209.2
  store i32 %3, ptr %i.ct, align 4, !tbaa !28
  br label %pred.store.continue.2

pred.store.continue.2:                            ; preds = %pred.store.if.2, %vector.body209.2
  %i.cy = extractelement <4 x i1> %i.cv, i64 1
  br i1 %i.cy, label %pred.store.if212.2, label %pred.store.continue213.2

pred.store.if212.2:                               ; preds = %pred.store.continue.2
  %i.cz = getelementptr i8, ptr %i.x, i64 %i.cs
  %i.da = getelementptr i8, ptr %i.cz, i64 4
  store i32 %3, ptr %i.da, align 4, !tbaa !28
  br label %pred.store.continue213.2

pred.store.continue213.2:                         ; preds = %pred.store.if212.2, %pred.store.continue.2
  %i.db = extractelement <4 x i1> %i.cv, i64 2
  br i1 %i.db, label %pred.store.if214.2, label %pred.store.continue215.2

pred.store.if214.2:                               ; preds = %pred.store.continue213.2
  %i.dc = getelementptr i8, ptr %i.x, i64 %i.cs
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  store i32 %3, ptr %i.dd, align 4, !tbaa !28
  br label %pred.store.continue215.2

pred.store.continue215.2:                         ; preds = %pred.store.if214.2, %pred.store.continue213.2
  %i.de = extractelement <4 x i1> %i.cv, i64 3
  br i1 %i.de, label %pred.store.if216.2, label %pred.store.continue217.2

pred.store.if216.2:                               ; preds = %pred.store.continue215.2
  %i.df = getelementptr i8, ptr %i.x, i64 %i.cs
  %i.dg = getelementptr i8, ptr %i.df, i64 12
  store i32 %3, ptr %i.dg, align 4, !tbaa !28
  br label %pred.store.continue217.2

pred.store.continue217.2:                         ; preds = %pred.store.if216.2, %pred.store.continue215.2
  %i.dh = extractelement <4 x i1> %i.cw, i64 0
  br i1 %i.dh, label %pred.store.if218.2, label %pred.store.continue219.2

pred.store.if218.2:                               ; preds = %pred.store.continue217.2
  %i.di = getelementptr i8, ptr %i.x, i64 %i.cs
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  store i32 %3, ptr %i.dj, align 4, !tbaa !28
  br label %pred.store.continue219.2

pred.store.continue219.2:                         ; preds = %pred.store.if218.2, %pred.store.continue217.2
  %i.dk = extractelement <4 x i1> %i.cw, i64 1
  br i1 %i.dk, label %pred.store.if220.2, label %pred.store.continue221.2

pred.store.if220.2:                               ; preds = %pred.store.continue219.2
  %i.dl = getelementptr i8, ptr %i.x, i64 %i.cs
  %i.dm = getelementptr i8, ptr %i.dl, i64 20
  store i32 %3, ptr %i.dm, align 4, !tbaa !28
  br label %pred.store.continue221.2

pred.store.continue221.2:                         ; preds = %pred.store.if220.2, %pred.store.continue219.2
  %i.dn = extractelement <4 x i1> %i.cw, i64 2
  br i1 %i.dn, label %pred.store.if222.2, label %pred.store.continue223.2

pred.store.if222.2:                               ; preds = %pred.store.continue221.2
  %i.do = getelementptr i8, ptr %i.x, i64 %i.cs
  %i.dp = getelementptr i8, ptr %i.do, i64 24
  store i32 %3, ptr %i.dp, align 4, !tbaa !28
  br label %pred.store.continue223.2

pred.store.continue223.2:                         ; preds = %pred.store.if222.2, %pred.store.continue221.2
  %i.dq = extractelement <4 x i1> %i.cw, i64 3
  br i1 %i.dq, label %pred.store.if224.2, label %middle.block227

pred.store.if224.2:                               ; preds = %pred.store.continue223.2
  %i.dr = getelementptr i8, ptr %i.x, i64 %i.cs
  %i.ds = getelementptr i8, ptr %i.dr, i64 28
  store i32 %3, ptr %i.ds, align 4, !tbaa !28
  br label %middle.block227

middle.block227:                                  ; preds = %pred.store.continue223.2, %pred.store.if224.2, %pred.store.continue225.1, %pred.store.continue225
  %cmp.n228 = icmp eq i64 %7, %n.vec206
  br i1 %cmp.n228, label %_ZL9fillBlockPjiijja.exit, label %.lr.ph19.i.preheader339

.lr.ph19.i.preheader339:                          ; preds = %.lr.ph19.i.preheader, %middle.block227
  %.118.i.idx.ph = phi i64 [ %.idx, %.lr.ph19.i.preheader ], [ %i.ao, %middle.block227 ]
  br label %.lr.ph19.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader340, %.lr.ph.i
  %.017.i.idx = phi i64 [ %.017.i.add, %.lr.ph.i ], [ %.017.i.idx.ph, %.lr.ph.i.preheader340 ] ; 3 uses
  %.017.i.ptr = getelementptr inbounds nuw i8, ptr %i.x, i64 %.017.i.idx
  %.017.i.add = add nuw nsw i64 %.017.i.idx, 4
  store i32 %3, ptr %.017.i.ptr, align 4, !tbaa !28
  %i.dt = icmp samesign ult i64 %.017.i.idx, 124
  br i1 %i.dt, label %.lr.ph.i, label %_ZL9fillBlockPjiijja.exit, !llvm.loop !98

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.preheader339, %bb.l
  %.118.i.idx = phi i64 [ %.118.i.add, %bb.l ], [ %.118.i.idx.ph, %.lr.ph19.i.preheader339 ] ; 3 uses
  %.118.i.ptr = getelementptr inbounds nuw i8, ptr %i.x, i64 %.118.i.idx ; 2 uses
  %i.du = load i32, ptr %.118.i.ptr, align 4, !tbaa !28
  %i.dv = icmp eq i32 %i.du, %i.z
  br i1 %i.dv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph19.i
  store i32 %3, ptr %.118.i.ptr, align 4, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph19.i
  %.118.i.add = add nuw nsw i64 %.118.i.idx, 4
  %i.dw = icmp samesign ult i64 %.118.i.idx, 124
  br i1 %i.dw, label %.lr.ph19.i, label %_ZL9fillBlockPjiijja.exit, !llvm.loop !99

bb.m:                                             ; preds = %bb.i
  %i.dx = and i32 %i.o, 31                        ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 144136
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !23 ; 2 uses
  %i.ea = zext nneg i32 %i.dx to i64              ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ea ; 2 uses
  %i.ec = zext nneg i32 %i.p to i64               ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ec ; 13 uses
  %.not.i129 = icmp eq i8 %4, 0
  %i.ee = icmp samesign ult i32 %i.p, %i.dx       ; 2 uses
  br i1 %.not.i129, label %.preheader.i133, label %.preheader15.i130

.preheader15.i130:                                ; preds = %bb.m
  br i1 %i.ee, label %.lr.ph.i131.preheader, label %.critedge

.lr.ph.i131.preheader:                            ; preds = %.preheader15.i130
  %i.ef = ptrtoaddr ptr %i.v to i64               ; 2 uses
  %i.eg = shl nuw nsw i64 %i.w, 2                 ; 2 uses
  %i.eh = shl nuw nsw i64 %i.ec, 2                ; 2 uses
  %i.ei = add i64 %i.eg, %i.ef                    ; 2 uses
  %i.ej = add i64 %i.ei, %i.eh
  %i.ek = add i64 %i.ej, 4
  %i.el = shl nuw nsw i64 %i.ea, 2
  %i.em = add i64 %i.ei, %i.el
  %i.en = tail call i64 @llvm.umax.i64(i64 %i.ek, i64 %i.em)
  %i.eo = xor i64 %i.ef, -1
  %i.ep = add i64 %i.en, %i.eo
  %i.eq = add nuw nsw i64 %i.eg, %i.eh
  %i.er = sub i64 %i.ep, %i.eq                    ; 2 uses
  %i.es = lshr i64 %i.er, 2
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check231 = icmp ult i64 %i.er, 28
  br i1 %min.iters.check231, label %.lr.ph.i131.preheader337, label %vector.ph232

vector.ph232:                                     ; preds = %.lr.ph.i131.preheader
  %n.vec233 = and i64 %i.et, 9223372036854775800  ; 3 uses
  %i.eu = shl i64 %n.vec233, 2
  %i.ev = getelementptr i8, ptr %i.ed, i64 %i.eu
  %broadcast.splatinsert234 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat235 = shufflevector <4 x i32> %broadcast.splatinsert234, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph232
  %index237 = phi i64 [ 0, %vector.ph232 ], [ %index.next238, %vector.body236 ] ; 2 uses
  %i.ew = shl i64 %index237, 2
  %next.gep = getelementptr i8, ptr %i.ed, i64 %i.ew ; 2 uses
  %i.ex = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat235, ptr %next.gep, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat235, ptr %i.ex, align 4, !tbaa !28
  %index.next238 = add nuw i64 %index237, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.ey, label %middle.block239, label %vector.body236, !llvm.loop !100

middle.block239:                                  ; preds = %vector.body236
  %cmp.n240 = icmp eq i64 %i.et, %n.vec233
  br i1 %cmp.n240, label %.critedge, label %.lr.ph.i131.preheader337

.lr.ph.i131.preheader337:                         ; preds = %.lr.ph.i131.preheader, %middle.block239
  %.017.i132.ph = phi ptr [ %i.ed, %.lr.ph.i131.preheader ], [ %i.ev, %middle.block239 ]
  br label %.lr.ph.i131

.preheader.i133:                                  ; preds = %bb.m
  br i1 %i.ee, label %.lr.ph19.i134.preheader, label %.critedge

.lr.ph19.i134.preheader:                          ; preds = %.preheader.i133
  %i.ez = ptrtoaddr ptr %i.v to i64               ; 2 uses
  %i.fa = shl nuw nsw i64 %i.w, 2                 ; 2 uses
  %i.fb = shl nuw nsw i64 %i.ec, 2                ; 2 uses
  %i.fc = add i64 %i.fa, %i.ez                    ; 2 uses
  %i.fd = add i64 %i.fc, %i.fb
  %i.fe = add i64 %i.fd, 4
  %i.ff = shl nuw nsw i64 %i.ea, 2
  %i.fg = add i64 %i.fc, %i.ff
  %i.fh = tail call i64 @llvm.umax.i64(i64 %i.fe, i64 %i.fg)
  %i.fi = xor i64 %i.ez, -1
  %i.fj = add i64 %i.fh, %i.fi
  %i.fk = add nuw nsw i64 %i.fa, %i.fb
  %i.fl = sub i64 %i.fj, %i.fk                    ; 2 uses
  %i.fm = lshr i64 %i.fl, 2
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %min.iters.check243 = icmp ult i64 %i.fl, 28
  br i1 %min.iters.check243, label %.lr.ph19.i134.preheader335, label %vector.ph244

vector.ph244:                                     ; preds = %.lr.ph19.i134.preheader
  %n.vec245 = and i64 %i.fn, 9223372036854775800  ; 3 uses
  %i.fo = shl i64 %n.vec245, 2
  %i.fp = getelementptr i8, ptr %i.ed, i64 %i.fo
  %broadcast.splatinsert246 = insertelement <4 x i32> poison, i32 %i.dz, i64 0
  %broadcast.splat247 = shufflevector <4 x i32> %broadcast.splatinsert246, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body248

vector.body248:                                   ; preds = %pred.store.continue275, %vector.ph244
  %index249 = phi i64 [ 0, %vector.ph244 ], [ %index.next276, %pred.store.continue275 ] ; 2 uses
  %i.fq = shl i64 %index249, 2                    ; 8 uses
  %next.gep250 = getelementptr i8, ptr %i.ed, i64 %i.fq ; 3 uses
  %i.fr = getelementptr i8, ptr %i.ed, i64 %i.fq
  %next.gep251 = getelementptr i8, ptr %i.fr, i64 4
  %i.fs = getelementptr i8, ptr %i.ed, i64 %i.fq
  %next.gep252 = getelementptr i8, ptr %i.fs, i64 8
  %i.ft = getelementptr i8, ptr %i.ed, i64 %i.fq
  %next.gep253 = getelementptr i8, ptr %i.ft, i64 12
  %i.fu = getelementptr i8, ptr %i.ed, i64 %i.fq
  %next.gep254 = getelementptr i8, ptr %i.fu, i64 16
  %i.fv = getelementptr i8, ptr %i.ed, i64 %i.fq
  %next.gep255 = getelementptr i8, ptr %i.fv, i64 20
  %i.fw = getelementptr i8, ptr %i.ed, i64 %i.fq
  %next.gep256 = getelementptr i8, ptr %i.fw, i64 24
  %i.fx = getelementptr i8, ptr %i.ed, i64 %i.fq
  %next.gep257 = getelementptr i8, ptr %i.fx, i64 28
  %i.fy = getelementptr i8, ptr %next.gep250, i64 16
  %wide.load258 = load <4 x i32>, ptr %next.gep250, align 4, !tbaa !28
  %wide.load259 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !28
  %i.fz = icmp eq <4 x i32> %wide.load258, %broadcast.splat247 ; 4 uses
  %i.ga = icmp eq <4 x i32> %wide.load259, %broadcast.splat247 ; 4 uses
  %i.gb = extractelement <4 x i1> %i.fz, i64 0
  br i1 %i.gb, label %pred.store.if260, label %pred.store.continue261

pred.store.if260:                                 ; preds = %vector.body248
  store i32 %3, ptr %next.gep250, align 4, !tbaa !28
  br label %pred.store.continue261

pred.store.continue261:                           ; preds = %pred.store.if260, %vector.body248
  %i.gc = extractelement <4 x i1> %i.fz, i64 1
  br i1 %i.gc, label %pred.store.if262, label %pred.store.continue263

pred.store.if262:                                 ; preds = %pred.store.continue261
  store i32 %3, ptr %next.gep251, align 4, !tbaa !28
  br label %pred.store.continue263

pred.store.continue263:                           ; preds = %pred.store.if262, %pred.store.continue261
  %i.gd = extractelement <4 x i1> %i.fz, i64 2
  br i1 %i.gd, label %pred.store.if264, label %pred.store.continue265

pred.store.if264:                                 ; preds = %pred.store.continue263
  store i32 %3, ptr %next.gep252, align 4, !tbaa !28
  br label %pred.store.continue265

pred.store.continue265:                           ; preds = %pred.store.if264, %pred.store.continue263
  %i.ge = extractelement <4 x i1> %i.fz, i64 3
  br i1 %i.ge, label %pred.store.if266, label %pred.store.continue267

pred.store.if266:                                 ; preds = %pred.store.continue265
  store i32 %3, ptr %next.gep253, align 4, !tbaa !28
  br label %pred.store.continue267

pred.store.continue267:                           ; preds = %pred.store.if266, %pred.store.continue265
  %i.gf = extractelement <4 x i1> %i.ga, i64 0
  br i1 %i.gf, label %pred.store.if268, label %pred.store.continue269

pred.store.if268:                                 ; preds = %pred.store.continue267
  store i32 %3, ptr %next.gep254, align 4, !tbaa !28
  br label %pred.store.continue269

pred.store.continue269:                           ; preds = %pred.store.if268, %pred.store.continue267
  %i.gg = extractelement <4 x i1> %i.ga, i64 1
  br i1 %i.gg, label %pred.store.if270, label %pred.store.continue271

pred.store.if270:                                 ; preds = %pred.store.continue269
  store i32 %3, ptr %next.gep255, align 4, !tbaa !28
  br label %pred.store.continue271

pred.store.continue271:                           ; preds = %pred.store.if270, %pred.store.continue269
  %i.gh = extractelement <4 x i1> %i.ga, i64 2
  br i1 %i.gh, label %pred.store.if272, label %pred.store.continue273

pred.store.if272:                                 ; preds = %pred.store.continue271
  store i32 %3, ptr %next.gep256, align 4, !tbaa !28
  br label %pred.store.continue273

pred.store.continue273:                           ; preds = %pred.store.if272, %pred.store.continue271
  %i.gi = extractelement <4 x i1> %i.ga, i64 3
  br i1 %i.gi, label %pred.store.if274, label %pred.store.continue275

pred.store.if274:                                 ; preds = %pred.store.continue273
  store i32 %3, ptr %next.gep257, align 4, !tbaa !28
  br label %pred.store.continue275

pred.store.continue275:                           ; preds = %pred.store.if274, %pred.store.continue273
  %index.next276 = add nuw i64 %index249, 8       ; 2 uses
  %i.gj = icmp eq i64 %index.next276, %n.vec245
  br i1 %i.gj, label %middle.block277, label %vector.body248, !llvm.loop !101

middle.block277:                                  ; preds = %pred.store.continue275
  %cmp.n278 = icmp eq i64 %i.fn, %n.vec245
  br i1 %cmp.n278, label %.critedge, label %.lr.ph19.i134.preheader335

.lr.ph19.i134.preheader335:                       ; preds = %.lr.ph19.i134.preheader, %middle.block277
  %.118.i135.ph = phi ptr [ %i.ed, %.lr.ph19.i134.preheader ], [ %i.fp, %middle.block277 ]
  br label %.lr.ph19.i134

.lr.ph.i131:                                      ; preds = %.lr.ph.i131.preheader337, %.lr.ph.i131
  %.017.i132 = phi ptr [ %i.gk, %.lr.ph.i131 ], [ %.017.i132.ph, %.lr.ph.i131.preheader337 ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.017.i132, i64 4 ; 2 uses
  store i32 %3, ptr %.017.i132, align 4, !tbaa !28
  %i.gl = icmp ult ptr %i.gk, %i.eb
  br i1 %i.gl, label %.lr.ph.i131, label %.critedge, !llvm.loop !102

.lr.ph19.i134:                                    ; preds = %.lr.ph19.i134.preheader335, %bb.o
  %.118.i135 = phi ptr [ %i.go, %bb.o ], [ %.118.i135.ph, %.lr.ph19.i134.preheader335 ] ; 3 uses
  %i.gm = load i32, ptr %.118.i135, align 4, !tbaa !28
  %i.gn = icmp eq i32 %i.gm, %i.dz
  br i1 %i.gn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph19.i134
  store i32 %3, ptr %.118.i135, align 4, !tbaa !28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph19.i134
  %i.go = getelementptr inbounds nuw i8, ptr %.118.i135, i64 4 ; 2 uses
  %i.gp = icmp ult ptr %i.go, %i.eb
  br i1 %i.gp, label %.lr.ph19.i134, label %.critedge, !llvm.loop !103

_ZL9fillBlockPjiijja.exit:                        ; preds = %.lr.ph.i, %bb.l, %middle.block, %middle.block227, %bb.g
  %.1103 = phi i32 [ %1, %bb.g ], [ %i.t, %middle.block227 ], [ %i.t, %middle.block ], [ %i.t, %bb.l ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.gq = and i32 %i.o, 31                        ; 2 uses
  %i.gr = and i32 %i.o, 4194272                   ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.g, i64 144136 ; 4 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !23
  %i.gu = icmp eq i32 %3, %i.gt
  br i1 %i.gu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZL9fillBlockPjiijja.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %i.g, i64 144164
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %_ZL9fillBlockPjiijja.exit, %bb.p
  %.0100 = phi i32 [ %i.gw, %bb.p ], [ -1, %_ZL9fillBlockPjiijja.exit ]
  %i.gx = icmp slt i32 %.1103, %i.gr
  br i1 %i.gx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q
  %i.gy = getelementptr inbounds nuw i8, ptr %i.g, i64 2176 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.g, i64 144164 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 144160
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 144144 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 144176 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.g, i64 144128 ; 3 uses
  %.not.i138 = icmp eq i8 %4, 0
  %i.he = getelementptr inbounds nuw i8, ptr %i.g, i64 144156 ; 2 uses
  %i.hf = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.hg = shufflevector <4 x i32> %i.hf, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %.critedge128
  %.1101174 = phi i32 [ %.0100, %.lr.ph ], [ %.3, %.critedge128 ] ; 9 uses
  %.2104173 = phi i32 [ %.1103, %.lr.ph ], [ %.3105, %.critedge128 ] ; 9 uses
  %i.hh = load i32, ptr %i.gs, align 8, !tbaa !23
  %i.hi = icmp eq i32 %3, %i.hh
  br i1 %i.hi, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.hj = and i32 %.2104173, 2096128
  %i.hk = icmp eq i32 %i.hj, 55296
  br i1 %i.hk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hl = lshr i32 %.2104173, 5
  %i.hm = add nuw nsw i32 %i.hl, 320
  br label %_ZL13isInNullBlockP9UNewTrie2ia.exit

bb.u:                                             ; preds = %bb.s
  %i.hn = lshr i32 %.2104173, 11
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !28
  %i.hr = lshr i32 %.2104173, 5
  %i.hs = and i32 %i.hr, 63
  %i.ht = add nsw i32 %i.hq, %i.hs
  br label %_ZL13isInNullBlockP9UNewTrie2ia.exit

_ZL13isInNullBlockP9UNewTrie2ia.exit:             ; preds = %bb.t, %bb.u
  %.0.i = phi i32 [ %i.hm, %bb.t ], [ %i.ht, %bb.u ]
  %i.hu = sext i32 %.0.i to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !28
  %i.hx = load i32, ptr %i.gz, align 4, !tbaa !29
  %.not = icmp eq i32 %i.hw, %i.hx
end_hunk_0
begin_hunk_1_@utrie2_setRange32_78:bb.a
  %i.ks = icmp eq i32 %i.kr, %i.je
  br i1 %i.ks, label %bb.au, label %.lr.ph19.i143.20

bb.au:                                            ; preds = %.lr.ph19.i143.19
  store i32 %3, ptr %.118.i144.ptr.19, align 4, !tbaa !28
  br label %.lr.ph19.i143.20

.lr.ph19.i143.20:                                 ; preds = %bb.au, %.lr.ph19.i143.19
  %.118.i144.ptr.20 = getelementptr inbounds nuw i8, ptr %i.jd, i64 80 ; 2 uses
  %i.kt = load i32, ptr %.118.i144.ptr.20, align 4, !tbaa !28
  %i.ku = icmp eq i32 %i.kt, %i.je
  br i1 %i.ku, label %bb.av, label %.lr.ph19.i143.21

bb.av:                                            ; preds = %.lr.ph19.i143.20
  store i32 %3, ptr %.118.i144.ptr.20, align 4, !tbaa !28
  br label %.lr.ph19.i143.21

.lr.ph19.i143.21:                                 ; preds = %bb.av, %.lr.ph19.i143.20
  %.118.i144.ptr.21 = getelementptr inbounds nuw i8, ptr %i.jd, i64 84 ; 2 uses
  %i.kv = load i32, ptr %.118.i144.ptr.21, align 4, !tbaa !28
  %i.kw = icmp eq i32 %i.kv, %i.je
  br i1 %i.kw, label %bb.aw, label %.lr.ph19.i143.22

bb.aw:                                            ; preds = %.lr.ph19.i143.21
  store i32 %3, ptr %.118.i144.ptr.21, align 4, !tbaa !28
  br label %.lr.ph19.i143.22

.lr.ph19.i143.22:                                 ; preds = %bb.aw, %.lr.ph19.i143.21
  %.118.i144.ptr.22 = getelementptr inbounds nuw i8, ptr %i.jd, i64 88 ; 2 uses
  %i.kx = load i32, ptr %.118.i144.ptr.22, align 4, !tbaa !28
  %i.ky = icmp eq i32 %i.kx, %i.je
  br i1 %i.ky, label %bb.ax, label %.lr.ph19.i143.23

bb.ax:                                            ; preds = %.lr.ph19.i143.22
  store i32 %3, ptr %.118.i144.ptr.22, align 4, !tbaa !28
  br label %.lr.ph19.i143.23

.lr.ph19.i143.23:                                 ; preds = %bb.ax, %.lr.ph19.i143.22
  %.118.i144.ptr.23 = getelementptr inbounds nuw i8, ptr %i.jd, i64 92 ; 2 uses
  %i.kz = load i32, ptr %.118.i144.ptr.23, align 4, !tbaa !28
  %i.la = icmp eq i32 %i.kz, %i.je
  br i1 %i.la, label %bb.ay, label %.lr.ph19.i143.24

bb.ay:                                            ; preds = %.lr.ph19.i143.23
  store i32 %3, ptr %.118.i144.ptr.23, align 4, !tbaa !28
  br label %.lr.ph19.i143.24

.lr.ph19.i143.24:                                 ; preds = %bb.ay, %.lr.ph19.i143.23
  %.118.i144.ptr.24 = getelementptr inbounds nuw i8, ptr %i.jd, i64 96 ; 2 uses
  %i.lb = load i32, ptr %.118.i144.ptr.24, align 4, !tbaa !28
  %i.lc = icmp eq i32 %i.lb, %i.je
  br i1 %i.lc, label %bb.az, label %.lr.ph19.i143.25

bb.az:                                            ; preds = %.lr.ph19.i143.24
  store i32 %3, ptr %.118.i144.ptr.24, align 4, !tbaa !28
  br label %.lr.ph19.i143.25

.lr.ph19.i143.25:                                 ; preds = %bb.az, %.lr.ph19.i143.24
  %.118.i144.ptr.25 = getelementptr inbounds nuw i8, ptr %i.jd, i64 100 ; 2 uses
  %i.ld = load i32, ptr %.118.i144.ptr.25, align 4, !tbaa !28
  %i.le = icmp eq i32 %i.ld, %i.je
  br i1 %i.le, label %bb.ba, label %.lr.ph19.i143.26

bb.ba:                                            ; preds = %.lr.ph19.i143.25
  store i32 %3, ptr %.118.i144.ptr.25, align 4, !tbaa !28
  br label %.lr.ph19.i143.26

.lr.ph19.i143.26:                                 ; preds = %bb.ba, %.lr.ph19.i143.25
  %.118.i144.ptr.26 = getelementptr inbounds nuw i8, ptr %i.jd, i64 104 ; 2 uses
  %i.lf = load i32, ptr %.118.i144.ptr.26, align 4, !tbaa !28
  %i.lg = icmp eq i32 %i.lf, %i.je
  br i1 %i.lg, label %bb.bb, label %.lr.ph19.i143.27

bb.bb:                                            ; preds = %.lr.ph19.i143.26
  store i32 %3, ptr %.118.i144.ptr.26, align 4, !tbaa !28
  br label %.lr.ph19.i143.27

.lr.ph19.i143.27:                                 ; preds = %bb.bb, %.lr.ph19.i143.26
  %.118.i144.ptr.27 = getelementptr inbounds nuw i8, ptr %i.jd, i64 108 ; 2 uses
  %i.lh = load i32, ptr %.118.i144.ptr.27, align 4, !tbaa !28
  %i.li = icmp eq i32 %i.lh, %i.je
  br i1 %i.li, label %bb.bc, label %.lr.ph19.i143.28

bb.bc:                                            ; preds = %.lr.ph19.i143.27
  store i32 %3, ptr %.118.i144.ptr.27, align 4, !tbaa !28
  br label %.lr.ph19.i143.28

.lr.ph19.i143.28:                                 ; preds = %bb.bc, %.lr.ph19.i143.27
  %.118.i144.ptr.28 = getelementptr inbounds nuw i8, ptr %i.jd, i64 112 ; 2 uses
  %i.lj = load i32, ptr %.118.i144.ptr.28, align 4, !tbaa !28
  %i.lk = icmp eq i32 %i.lj, %i.je
  br i1 %i.lk, label %bb.bd, label %.lr.ph19.i143.29

bb.bd:                                            ; preds = %.lr.ph19.i143.28
  store i32 %3, ptr %.118.i144.ptr.28, align 4, !tbaa !28
  br label %.lr.ph19.i143.29

.lr.ph19.i143.29:                                 ; preds = %bb.bd, %.lr.ph19.i143.28
  %.118.i144.ptr.29 = getelementptr inbounds nuw i8, ptr %i.jd, i64 116 ; 2 uses
  %i.ll = load i32, ptr %.118.i144.ptr.29, align 4, !tbaa !28
  %i.lm = icmp eq i32 %i.ll, %i.je
  br i1 %i.lm, label %bb.be, label %.lr.ph19.i143.30

bb.be:                                            ; preds = %.lr.ph19.i143.29
  store i32 %3, ptr %.118.i144.ptr.29, align 4, !tbaa !28
  br label %.lr.ph19.i143.30

.lr.ph19.i143.30:                                 ; preds = %bb.be, %.lr.ph19.i143.29
  %.118.i144.ptr.30 = getelementptr inbounds nuw i8, ptr %i.jd, i64 120 ; 2 uses
  %i.ln = load i32, ptr %.118.i144.ptr.30, align 4, !tbaa !28
  %i.lo = icmp eq i32 %i.ln, %i.je
  br i1 %i.lo, label %bb.bf, label %.lr.ph19.i143.31

bb.bf:                                            ; preds = %.lr.ph19.i143.30
  store i32 %3, ptr %.118.i144.ptr.30, align 4, !tbaa !28
  br label %.lr.ph19.i143.31

.lr.ph19.i143.31:                                 ; preds = %bb.bf, %.lr.ph19.i143.30
  %.118.i144.ptr.31 = getelementptr inbounds nuw i8, ptr %i.jd, i64 124 ; 2 uses
  %i.lp = load i32, ptr %.118.i144.ptr.31, align 4, !tbaa !28
  %i.lq = icmp eq i32 %i.lp, %i.je
  br i1 %i.lq, label %bb.bg, label %.critedge128

bb.bg:                                            ; preds = %.lr.ph19.i143.31
  store i32 %3, ptr %.118.i144.ptr.31, align 4, !tbaa !28
  br label %.critedge128

_ZL15isWritableBlockP9UNewTrie2i.exit.thread:     ; preds = %_ZL14getIndex2BlockP9UNewTrie2ia.exit.thread156, %_ZL15isWritableBlockP9UNewTrie2i.exit
  %i.lr = load ptr, ptr %i.hd, align 8, !tbaa !20
  %i.ls = sext i32 %i.iu to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !28
  %.not124 = icmp ne i32 %i.lu, %3
  %brmerge = or i1 %i.k, %.not.i137
  %or.cond163 = and i1 %brmerge, %.not124
  br i1 %or.cond163, label %bb.bh, label %.critedge128

bb.bh:                                            ; preds = %_ZL15isWritableBlockP9UNewTrie2i.exit.thread, %bb.z
  %i.lv = icmp sgt i32 %.1101174, -1
  br i1 %i.lv, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.lw = lshr i32 %.1101174, 5
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.lx ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !28
  %i.ma = add nsw i32 %i.lz, 1
  store i32 %i.ma, ptr %i.ly, align 4, !tbaa !28
  %i.mb = load i32, ptr %i.it, align 4, !tbaa !28 ; 2 uses
  %i.mc = ashr i32 %i.mb, 5
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.md ; 3 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !28
  %i.mg = add nsw i32 %i.mf, -1                   ; 2 uses
  store i32 %i.mg, ptr %i.me, align 4, !tbaa !28
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.bj, label %_ZL14setIndex2EntryP9UNewTrie2ii.exit

bb.bj:                                            ; preds = %bb.bi
  %i.mi = load i32, ptr %i.he, align 4, !tbaa !26
  %i.mj = sub nsw i32 0, %i.mi
  store i32 %i.mj, ptr %i.me, align 4, !tbaa !28
  store i32 %i.mb, ptr %i.he, align 4, !tbaa !26
  br label %_ZL14setIndex2EntryP9UNewTrie2ii.exit

_ZL14setIndex2EntryP9UNewTrie2ii.exit:            ; preds = %bb.bi, %bb.bj
  store i32 %.1101174, ptr %i.it, align 4, !tbaa !28
  br label %.critedge128

bb.bk:                                            ; preds = %bb.bh
  %i.mk = tail call fastcc noundef i32 @_ZL12getDataBlockP9UNewTrie2ia(ptr noundef %i.g, i32 noundef %.2104173, i8 noundef signext 1) ; 3 uses
  %i.ml = icmp slt i32 %i.mk, 0
  br i1 %i.ml, label %.critedge.sink.split, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mm = load ptr, ptr %i.hd, align 8, !tbaa !20
  %i.mn = zext nneg i32 %i.mk to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mn
  tail call fastcc void @_ZL10writeBlockPjj(ptr noundef %i.mo, i32 noundef %3)
  br label %.critedge128

.critedge128:                                     ; preds = %.lr.ph19.i143.31, %bb.bg, %.lr.ph.i140.preheader, %bb.bl, %_ZL14setIndex2EntryP9UNewTrie2ii.exit, %_ZL15isWritableBlockP9UNewTrie2i.exit.thread, %_ZL13isInNullBlockP9UNewTrie2ia.exit
  %.3 = phi i32 [ %.1101174, %_ZL13isInNullBlockP9UNewTrie2ia.exit ], [ %.1101174, %_ZL14setIndex2EntryP9UNewTrie2ii.exit ], [ %i.mk, %bb.bl ], [ %.1101174, %.lr.ph.i140.preheader ], [ %.1101174, %_ZL15isWritableBlockP9UNewTrie2i.exit.thread ], [ %.1101174, %bb.bg ], [ %.1101174, %.lr.ph19.i143.31 ]
  %.3105 = add nuw nsw i32 %.2104173, 32          ; 3 uses
  %i.mp = icmp slt i32 %.3105, %i.gr
  br i1 %i.mp, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge128, %bb.q
  %.2104.lcssa = phi i32 [ %.1103, %bb.q ], [ %.3105, %.critedge128 ]
  %.not121 = icmp eq i32 %i.gq, 0
  br i1 %.not121, label %.critedge, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge
  %i.mq = tail call fastcc noundef i32 @_ZL12getDataBlockP9UNewTrie2ia(ptr noundef %i.g, i32 noundef %.2104.lcssa, i8 noundef signext 1) ; 2 uses
  %i.mr = icmp slt i32 %i.mq, 0
  br i1 %i.mr, label %.critedge.sink.split, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ms = getelementptr inbounds nuw i8, ptr %i.g, i64 144128
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !20 ; 2 uses
  %i.mu = zext nneg i32 %i.mq to i64              ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.mu ; 14 uses
  %i.mw = load i32, ptr %i.gs, align 8, !tbaa !23 ; 2 uses
  %i.mx = zext nneg i32 %i.gq to i64              ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.mx ; 2 uses
  %.not.i146 = icmp eq i8 %4, 0
  %i.mz = ptrtoaddr ptr %i.mt to i64              ; 2 uses
  %i.na = shl nuw nsw i64 %i.mu, 2                ; 2 uses
  %i.nb = shl nuw nsw i64 %i.mx, 2
  %i.nc = add i64 %i.na, %i.mz                    ; 2 uses
  %i.nd = add i64 %i.nc, %i.nb
  %i.ne = add i64 %i.nc, 4
  %i.nf = tail call i64 @llvm.umax.i64(i64 %i.nd, i64 %i.ne)
  %i.ng = xor i64 %i.mz, -1
  %i.nh = add i64 %i.nf, %i.ng
  %i.ni = sub i64 %i.nh, %i.na                    ; 2 uses
  %i.nj = lshr i64 %i.ni, 2
  %i.nk = add nuw nsw i64 %i.nj, 1                ; 4 uses
  %min.iters.check294 = icmp ult i64 %i.ni, 28    ; 2 uses
  br i1 %.not.i146, label %.lr.ph19.i151.preheader, label %.lr.ph.i148.preheader

.lr.ph.i148.preheader:                            ; preds = %bb.bn
  br i1 %min.iters.check294, label %.lr.ph.i148.preheader333, label %vector.ph282

vector.ph282:                                     ; preds = %.lr.ph.i148.preheader
  %n.vec283 = and i64 %i.nk, 9223372036854775800  ; 3 uses
  %i.nl = shl i64 %n.vec283, 2
  %i.nm = getelementptr i8, ptr %i.mv, i64 %i.nl
  %broadcast.splatinsert284 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat285 = shufflevector <4 x i32> %broadcast.splatinsert284, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph282
  %index287 = phi i64 [ 0, %vector.ph282 ], [ %index.next289, %vector.body286 ] ; 2 uses
  %i.nn = shl i64 %index287, 2
  %next.gep288 = getelementptr i8, ptr %i.mv, i64 %i.nn ; 2 uses
  %i.no = getelementptr i8, ptr %next.gep288, i64 16
  store <4 x i32> %broadcast.splat285, ptr %next.gep288, align 4, !tbaa !28
  store <4 x i32> %broadcast.splat285, ptr %i.no, align 4, !tbaa !28
  %index.next289 = add nuw i64 %index287, 8       ; 2 uses
  %i.np = icmp eq i64 %index.next289, %n.vec283
  br i1 %i.np, label %middle.block290, label %vector.body286, !llvm.loop !105

middle.block290:                                  ; preds = %vector.body286
  %cmp.n291 = icmp eq i64 %i.nk, %n.vec283
  br i1 %cmp.n291, label %.critedge, label %.lr.ph.i148.preheader333

.lr.ph.i148.preheader333:                         ; preds = %.lr.ph.i148.preheader, %middle.block290
  %.017.i149.ph = phi ptr [ %i.mv, %.lr.ph.i148.preheader ], [ %i.nm, %middle.block290 ]
  br label %.lr.ph.i148

.lr.ph19.i151.preheader:                          ; preds = %bb.bn
  br i1 %min.iters.check294, label %.lr.ph19.i151.preheader332, label %vector.ph295

vector.ph295:                                     ; preds = %.lr.ph19.i151.preheader
  %n.vec296 = and i64 %i.nk, 9223372036854775800  ; 3 uses
  %i.nq = shl i64 %n.vec296, 2
  %i.nr = getelementptr i8, ptr %i.mv, i64 %i.nq
  %broadcast.splatinsert297 = insertelement <4 x i32> poison, i32 %i.mw, i64 0
  %broadcast.splat298 = shufflevector <4 x i32> %broadcast.splatinsert297, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body299

vector.body299:                                   ; preds = %pred.store.continue326, %vector.ph295
  %index300 = phi i64 [ 0, %vector.ph295 ], [ %index.next327, %pred.store.continue326 ] ; 2 uses
  %i.ns = shl i64 %index300, 2                    ; 8 uses
  %next.gep301 = getelementptr i8, ptr %i.mv, i64 %i.ns ; 3 uses
  %i.nt = getelementptr i8, ptr %i.mv, i64 %i.ns
  %next.gep302 = getelementptr i8, ptr %i.nt, i64 4
  %i.nu = getelementptr i8, ptr %i.mv, i64 %i.ns
  %next.gep303 = getelementptr i8, ptr %i.nu, i64 8
  %i.nv = getelementptr i8, ptr %i.mv, i64 %i.ns
  %next.gep304 = getelementptr i8, ptr %i.nv, i64 12
  %i.nw = getelementptr i8, ptr %i.mv, i64 %i.ns
  %next.gep305 = getelementptr i8, ptr %i.nw, i64 16
  %i.nx = getelementptr i8, ptr %i.mv, i64 %i.ns
  %next.gep306 = getelementptr i8, ptr %i.nx, i64 20
  %i.ny = getelementptr i8, ptr %i.mv, i64 %i.ns
  %next.gep307 = getelementptr i8, ptr %i.ny, i64 24
  %i.nz = getelementptr i8, ptr %i.mv, i64 %i.ns
  %next.gep308 = getelementptr i8, ptr %i.nz, i64 28
  %i.oa = getelementptr i8, ptr %next.gep301, i64 16
  %wide.load309 = load <4 x i32>, ptr %next.gep301, align 4, !tbaa !28
  %wide.load310 = load <4 x i32>, ptr %i.oa, align 4, !tbaa !28
  %i.ob = icmp eq <4 x i32> %wide.load309, %broadcast.splat298 ; 4 uses
  %i.oc = icmp eq <4 x i32> %wide.load310, %broadcast.splat298 ; 4 uses
  %i.od = extractelement <4 x i1> %i.ob, i64 0
  br i1 %i.od, label %pred.store.if311, label %pred.store.continue312

pred.store.if311:                                 ; preds = %vector.body299
  store i32 %3, ptr %next.gep301, align 4, !tbaa !28
  br label %pred.store.continue312

pred.store.continue312:                           ; preds = %pred.store.if311, %vector.body299
  %i.oe = extractelement <4 x i1> %i.ob, i64 1
  br i1 %i.oe, label %pred.store.if313, label %pred.store.continue314

pred.store.if313:                                 ; preds = %pred.store.continue312
  store i32 %3, ptr %next.gep302, align 4, !tbaa !28
  br label %pred.store.continue314

pred.store.continue314:                           ; preds = %pred.store.if313, %pred.store.continue312
  %i.of = extractelement <4 x i1> %i.ob, i64 2
  br i1 %i.of, label %pred.store.if315, label %pred.store.continue316

pred.store.if315:                                 ; preds = %pred.store.continue314
  store i32 %3, ptr %next.gep303, align 4, !tbaa !28
  br label %pred.store.continue316

pred.store.continue316:                           ; preds = %pred.store.if315, %pred.store.continue314
  %i.og = extractelement <4 x i1> %i.ob, i64 3
  br i1 %i.og, label %pred.store.if317, label %pred.store.continue318

pred.store.if317:                                 ; preds = %pred.store.continue316
  store i32 %3, ptr %next.gep304, align 4, !tbaa !28
  br label %pred.store.continue318

pred.store.continue318:                           ; preds = %pred.store.if317, %pred.store.continue316
  %i.oh = extractelement <4 x i1> %i.oc, i64 0
  br i1 %i.oh, label %pred.store.if319, label %pred.store.continue320

pred.store.if319:                                 ; preds = %pred.store.continue318
  store i32 %3, ptr %next.gep305, align 4, !tbaa !28
  br label %pred.store.continue320

pred.store.continue320:                           ; preds = %pred.store.if319, %pred.store.continue318
  %i.oi = extractelement <4 x i1> %i.oc, i64 1
  br i1 %i.oi, label %pred.store.if321, label %pred.store.continue322

pred.store.if321:                                 ; preds = %pred.store.continue320
  store i32 %3, ptr %next.gep306, align 4, !tbaa !28
  br label %pred.store.continue322

pred.store.continue322:                           ; preds = %pred.store.if321, %pred.store.continue320
  %i.oj = extractelement <4 x i1> %i.oc, i64 2
  br i1 %i.oj, label %pred.store.if323, label %pred.store.continue324

pred.store.if323:                                 ; preds = %pred.store.continue322
  store i32 %3, ptr %next.gep307, align 4, !tbaa !28
  br label %pred.store.continue324

pred.store.continue324:                           ; preds = %pred.store.if323, %pred.store.continue322
  %i.ok = extractelement <4 x i1> %i.oc, i64 3
  br i1 %i.ok, label %pred.store.if325, label %pred.store.continue326

pred.store.if325:                                 ; preds = %pred.store.continue324
  store i32 %3, ptr %next.gep308, align 4, !tbaa !28
  br label %pred.store.continue326

pred.store.continue326:                           ; preds = %pred.store.if325, %pred.store.continue324
  %index.next327 = add nuw i64 %index300, 8       ; 2 uses
  %i.ol = icmp eq i64 %index.next327, %n.vec296
  br i1 %i.ol, label %middle.block328, label %vector.body299, !llvm.loop !106

middle.block328:                                  ; preds = %pred.store.continue326
  %cmp.n329 = icmp eq i64 %i.nk, %n.vec296
  br i1 %cmp.n329, label %.critedge, label %.lr.ph19.i151.preheader332

.lr.ph19.i151.preheader332:                       ; preds = %.lr.ph19.i151.preheader, %middle.block328
  %.118.i152.ph = phi ptr [ %i.mv, %.lr.ph19.i151.preheader ], [ %i.nr, %middle.block328 ]
  br label %.lr.ph19.i151

.lr.ph.i148:                                      ; preds = %.lr.ph.i148.preheader333, %.lr.ph.i148
  %.017.i149 = phi ptr [ %i.om, %.lr.ph.i148 ], [ %.017.i149.ph, %.lr.ph.i148.preheader333 ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.017.i149, i64 4 ; 2 uses
  store i32 %3, ptr %.017.i149, align 4, !tbaa !28
  %i.on = icmp ult ptr %i.om, %i.my
  br i1 %i.on, label %.lr.ph.i148, label %.critedge, !llvm.loop !107

.lr.ph19.i151:                                    ; preds = %.lr.ph19.i151.preheader332, %bb.bp
  %.118.i152 = phi ptr [ %i.oq, %bb.bp ], [ %.118.i152.ph, %.lr.ph19.i151.preheader332 ] ; 3 uses
  %i.oo = load i32, ptr %.118.i152, align 4, !tbaa !28
  %i.op = icmp eq i32 %i.oo, %i.mw
  br i1 %i.op, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph19.i151
  store i32 %3, ptr %.118.i152, align 4, !tbaa !28
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph19.i151
  %i.oq = getelementptr inbounds nuw i8, ptr %.118.i152, i64 4 ; 2 uses
  %i.or = icmp ult ptr %i.oq, %i.my
  br i1 %i.or, label %.lr.ph19.i151, label %.critedge, !llvm.loop !108

.critedge.sink.split:                             ; preds = %bb.bk, %_ZL14getIndex2BlockP9UNewTrie2ia.exit, %_ZL16allocIndex2BlockP9UNewTrie2.exit.i, %bb.x, %bb.bm, %bb.h, %bb.c, %bb.d, %bb.b
  %.sink = phi i32 [ 30, %bb.d ], [ 7, %bb.h ], [ 30, %bb.c ], [ 7, %bb.bm ], [ 1, %bb.b ], [ 5, %_ZL14getIndex2BlockP9UNewTrie2ia.exit ], [ 7, %bb.bk ], [ 5, %bb.x ], [ 5, %_ZL16allocIndex2BlockP9UNewTrie2.exit.i ]
  store i32 %.sink, ptr %5, align 4, !tbaa !8
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i131, %bb.o, %.lr.ph.i148, %bb.bp, %middle.block239, %middle.block277, %middle.block290, %middle.block328, %.critedge.sink.split, %.preheader.i133, %.preheader15.i130, %._crit_edge, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
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
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144160
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZL14getIndex2BlockP9UNewTrie2ia.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144144 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36   ; 6 uses
  %i.m = icmp sgt i32 %i.l, 35424
  br i1 %i.m, label %_ZL14getIndex2BlockP9UNewTrie2ia.exit.thread, label %_ZL16allocIndex2BlockP9UNewTrie2.exit.i
end_hunk_1
