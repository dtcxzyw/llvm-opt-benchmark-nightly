Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/utrie2_builder?download=true
inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@utrie2_freeze_78:bb.a
  %i.aeh = shl nuw nsw i64 %n.vec1714, 1
  %i.aei = getelementptr i8, ptr %.3133.lcssa, i64 %i.aeh ; 2 uses
  %i.aej = shl nuw nsw i64 %n.vec1714, 2
  %i.aek = getelementptr i8, ptr %i.aed, i64 %i.aej
  %broadcast.splatinsert1715 = insertelement <4 x i32> poison, i32 %.0127.151, i64 0
  %broadcast.splat1716 = shufflevector <4 x i32> %broadcast.splatinsert1715, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1717

vector.body1717:                                  ; preds = %vector.body1717, %vector.ph1713
  %index1718 = phi i64 [ 0, %vector.ph1713 ], [ %index.next1723, %vector.body1717 ] ; 3 uses
  %i.ael = shl i64 %index1718, 1
  %next.gep1719 = getelementptr i8, ptr %.3133.lcssa, i64 %i.ael ; 2 uses
  %i.aem = shl i64 %index1718, 2
  %next.gep1720 = getelementptr i8, ptr %i.aed, i64 %i.aem ; 2 uses
  %i.aen = getelementptr i8, ptr %next.gep1720, i64 16
  %wide.load1721 = load <4 x i32>, ptr %next.gep1720, align 4, !tbaa !27
  %wide.load1722 = load <4 x i32>, ptr %i.aen, align 4, !tbaa !27
  %i.aeo = add <4 x i32> %wide.load1721, %broadcast.splat1716
  %i.aep = add <4 x i32> %wide.load1722, %broadcast.splat1716
  %i.aeq = lshr <4 x i32> %i.aeo, splat (i32 2)
  %i.aer = lshr <4 x i32> %i.aep, splat (i32 2)
  %i.aes = trunc <4 x i32> %i.aeq to <4 x i16>
  %i.aet = trunc <4 x i32> %i.aer to <4 x i16>
  %i.aeu = getelementptr i8, ptr %next.gep1719, i64 8
  store <4 x i16> %i.aes, ptr %next.gep1719, align 2, !tbaa !46
  store <4 x i16> %i.aet, ptr %i.aeu, align 2, !tbaa !46
  %index.next1723 = add nuw i64 %index1718, 8     ; 2 uses
  %i.aev = icmp eq i64 %index.next1723, %n.vec1714
  br i1 %i.aev, label %middle.block1724, label %vector.body1717, !llvm.loop !81

middle.block1724:                                 ; preds = %vector.body1717
  %cmp.n1725 = icmp eq i64 %n.vec1714, %i.aee
  br i1 %cmp.n1725, label %.loopexit152, label %.lr.ph520.preheader1746

.lr.ph520.preheader1746:                          ; preds = %.lr.ph520.preheader, %middle.block1724
  %.4518.ph = phi i32 [ %i.aea, %.lr.ph520.preheader ], [ %i.aeg, %middle.block1724 ]
  %.4134517.ph = phi ptr [ %.3133.lcssa, %.lr.ph520.preheader ], [ %i.aei, %middle.block1724 ]
  %.2138516.ph = phi ptr [ %i.aed, %.lr.ph520.preheader ], [ %i.aek, %middle.block1724 ]
  br label %.lr.ph520

.lr.ph520:                                        ; preds = %.lr.ph520.preheader1746, %.lr.ph520
  %.4518 = phi i32 [ %i.afc, %.lr.ph520 ], [ %.4518.ph, %.lr.ph520.preheader1746 ] ; 2 uses
  %.4134517 = phi ptr [ %i.afb, %.lr.ph520 ], [ %.4134517.ph, %.lr.ph520.preheader1746 ] ; 2 uses
  %.2138516 = phi ptr [ %i.aew, %.lr.ph520 ], [ %.2138516.ph, %.lr.ph520.preheader1746 ] ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %.2138516, i64 4
  %i.aex = load i32, ptr %.2138516, align 4, !tbaa !27
  %i.aey = add i32 %i.aex, %.0127.151
  %i.aez = lshr i32 %i.aey, 2
  %i.afa = trunc i32 %i.aez to i16
  %i.afb = getelementptr inbounds nuw i8, ptr %.4134517, i64 2 ; 2 uses
  store i16 %i.afa, ptr %.4134517, align 2, !tbaa !46
  %i.afc = add nsw i32 %.4518, -1
  %i.afd = icmp samesign ugt i32 %.4518, 1
  br i1 %i.afd, label %.lr.ph520, label %.loopexit152, !llvm.loop !82

.loopexit152:                                     ; preds = %.lr.ph520, %middle.block1724, %._crit_edge, %.preheader153
  %.5135 = phi ptr [ %i.acy, %.preheader153 ], [ %.3133.lcssa, %._crit_edge ], [ %i.aei, %middle.block1724 ], [ %i.afb, %.lr.ph520 ] ; 6 uses
  %trunc = trunc nuw i32 %1 to i1
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.f, i64 144128 ; 3 uses
  br i1 %trunc, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.loopexit152
  store ptr %.5135, ptr %i.afe, align 8, !tbaa !39
  store ptr null, ptr %i.aff, align 8, !tbaa !40
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !21 ; 6 uses
  %i.afi = icmp sgt i32 %i.vo, 0
  br i1 %i.afi, label %.lr.ph526.preheader, label %.loopexit

.lr.ph526.preheader:                              ; preds = %bb.bs
  %i.afj = zext nneg i32 %i.vo to i64             ; 2 uses
  %min.iters.check1730 = icmp ult i32 %i.vo, 8
  br i1 %min.iters.check1730, label %.lr.ph526.preheader1745, label %vector.ph1731

vector.ph1731:                                    ; preds = %.lr.ph526.preheader
  %n.vec1732 = and i64 %i.afj, 2147483640         ; 5 uses
  %i.afk = trunc nuw nsw i64 %n.vec1732 to i32
  %i.afl = sub nsw i32 %i.vo, %i.afk
  %i.afm = shl nuw nsw i64 %n.vec1732, 1
  %i.afn = getelementptr i8, ptr %.5135, i64 %i.afm
  %i.afo = shl nuw nsw i64 %n.vec1732, 2
  %i.afp = getelementptr i8, ptr %i.afh, i64 %i.afo
  br label %vector.body1733

vector.body1733:                                  ; preds = %vector.body1733, %vector.ph1731
  %index1734 = phi i64 [ 0, %vector.ph1731 ], [ %index.next1739, %vector.body1733 ] ; 3 uses
  %i.afq = shl i64 %index1734, 1
  %next.gep1735 = getelementptr i8, ptr %.5135, i64 %i.afq ; 2 uses
  %i.afr = shl i64 %index1734, 2
  %next.gep1736 = getelementptr i8, ptr %i.afh, i64 %i.afr ; 2 uses
  %i.afs = getelementptr i8, ptr %next.gep1736, i64 16
  %wide.load1737 = load <4 x i32>, ptr %next.gep1736, align 4, !tbaa !27
  %wide.load1738 = load <4 x i32>, ptr %i.afs, align 4, !tbaa !27
  %i.aft = trunc <4 x i32> %wide.load1737 to <4 x i16>
  %i.afu = trunc <4 x i32> %wide.load1738 to <4 x i16>
  %i.afv = getelementptr i8, ptr %next.gep1735, i64 8
  store <4 x i16> %i.aft, ptr %next.gep1735, align 2, !tbaa !46
  store <4 x i16> %i.afu, ptr %i.afv, align 2, !tbaa !46
  %index.next1739 = add nuw i64 %index1734, 8     ; 2 uses
  %i.afw = icmp eq i64 %index.next1739, %n.vec1732
  br i1 %i.afw, label %middle.block1740, label %vector.body1733, !llvm.loop !83

middle.block1740:                                 ; preds = %vector.body1733
  %cmp.n1741 = icmp eq i64 %n.vec1732, %i.afj
  br i1 %cmp.n1741, label %.loopexit, label %.lr.ph526.preheader1745

.lr.ph526.preheader1745:                          ; preds = %.lr.ph526.preheader, %middle.block1740
  %.5524.ph = phi i32 [ %i.vo, %.lr.ph526.preheader ], [ %i.afl, %middle.block1740 ]
  %.6523.ph = phi ptr [ %.5135, %.lr.ph526.preheader ], [ %i.afn, %middle.block1740 ]
  %.3139522.ph = phi ptr [ %i.afh, %.lr.ph526.preheader ], [ %i.afp, %middle.block1740 ]
  br label %.lr.ph526

.lr.ph526:                                        ; preds = %.lr.ph526.preheader1745, %.lr.ph526
  %.5524 = phi i32 [ %i.agb, %.lr.ph526 ], [ %.5524.ph, %.lr.ph526.preheader1745 ] ; 2 uses
  %.6523 = phi ptr [ %i.aga, %.lr.ph526 ], [ %.6523.ph, %.lr.ph526.preheader1745 ] ; 2 uses
  %.3139522 = phi ptr [ %i.afx, %.lr.ph526 ], [ %.3139522.ph, %.lr.ph526.preheader1745 ] ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.3139522, i64 4
  %i.afy = load i32, ptr %.3139522, align 4, !tbaa !27
  %i.afz = trunc i32 %i.afy to i16
  %i.aga = getelementptr inbounds nuw i8, ptr %.6523, i64 2
  store i16 %i.afz, ptr %.6523, align 2, !tbaa !46
  %i.agb = add nsw i32 %.5524, -1
  %i.agc = icmp samesign ugt i32 %.5524, 1
  br i1 %i.agc, label %.lr.ph526, label %.loopexit, !llvm.loop !84

bb.bt:                                            ; preds = %.loopexit152
  store ptr null, ptr %i.afe, align 8, !tbaa !39
  store ptr %.5135, ptr %i.aff, align 8, !tbaa !40
  %i.agd = load ptr, ptr %i.afg, align 8, !tbaa !21
  %i.age = sext i32 %i.vo to i64
  %i.agf = shl nsw i64 %i.age, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.5135, ptr align 4 %i.agd, i64 %i.agf, i1 false)
  %.pre888 = load ptr, ptr %i.afg, align 8, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph526, %middle.block1740, %bb.bs, %bb.bt
  %i.agg = phi ptr [ %.pre888, %bb.bt ], [ %i.afh, %bb.bs ], [ %i.afh, %middle.block1740 ], [ %i.afh, %.lr.ph526 ]
  tail call void @uprv_free_78(ptr noundef %i.agg)
  tail call void @uprv_free_78(ptr noundef nonnull %i.f)
  store ptr null, ptr %i.e, align 8, !tbaa !19
  br label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread

_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread: ; preds = %bb.w, %_ZL11compactTrieP6UTrie2P10UErrorCode.exit, %bb.e, %bb.f, %bb.a, %.loopexit, %bb.bo, %bb.bm, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @utrie2_setRange32_78(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !9
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
  %i.j = load i8, ptr %i.i, align 4, !tbaa !26
  %.not118 = icmp eq i8 %i.j, 0
  br i1 %.not118, label %bb.e, label %.critedge.sink.split

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ne i8 %4, 0                         ; 7 uses
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
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  %6 = ptrtoaddr ptr %i.v to i64                  ; 4 uses
  %i.w = zext nneg i32 %i.q to i64                ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w ; 31 uses
  br i1 %.not120, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 144136
  %i.z = load i32, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  %i.aa = shl nuw nsw i32 %i.p, 2
  %.idx = zext nneg i32 %i.aa to i64              ; 18 uses
  %i.ab = lshr exact i64 %.idx, 2
  %i.ac = sub nuw nsw i64 32, %i.ab               ; 4 uses
  %min.iters.check223 = icmp samesign ugt i32 %i.p, 24 ; 2 uses
  br i1 %i.k, label %.lr.ph.i.preheader, label %.lr.ph19.i.preheader

.lr.ph19.i.preheader:                             ; preds = %bb.j
  br i1 %min.iters.check223, label %.lr.ph19.i.preheader343, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph19.i.preheader
  %n.vec = and i64 %i.ac, 56                      ; 4 uses
  %i.ad = shl nuw nsw i64 %n.vec, 2
  %i.ae = add nuw nsw i64 %i.ad, %.idx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <4 x i32>, ptr %i.af, align 4, !tbaa !27
  %wide.load207 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !27
  %i.ah = icmp eq <4 x i32> %wide.load, %broadcast.splat ; 4 uses
  %i.ai = icmp eq <4 x i32> %wide.load207, %broadcast.splat ; 4 uses
  %i.aj = extractelement <4 x i1> %i.ah, i64 0
  br i1 %i.aj, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph
  store i32 %3, ptr %i.af, align 4, !tbaa !27
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph
  %i.ak = extractelement <4 x i1> %i.ah, i64 1
  br i1 %i.ak, label %pred.store.if208, label %pred.store.continue209

pred.store.if208:                                 ; preds = %pred.store.continue
  %i.al = getelementptr i8, ptr %i.x, i64 %.idx
  %i.am = getelementptr i8, ptr %i.al, i64 4
  store i32 %3, ptr %i.am, align 4, !tbaa !27
  br label %pred.store.continue209

pred.store.continue209:                           ; preds = %pred.store.if208, %pred.store.continue
  %i.an = extractelement <4 x i1> %i.ah, i64 2
  br i1 %i.an, label %pred.store.if210, label %pred.store.continue211

pred.store.if210:                                 ; preds = %pred.store.continue209
  %i.ao = getelementptr i8, ptr %i.x, i64 %.idx
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store i32 %3, ptr %i.ap, align 4, !tbaa !27
  br label %pred.store.continue211

pred.store.continue211:                           ; preds = %pred.store.if210, %pred.store.continue209
  %i.aq = extractelement <4 x i1> %i.ah, i64 3
  br i1 %i.aq, label %pred.store.if212, label %pred.store.continue213

pred.store.if212:                                 ; preds = %pred.store.continue211
  %i.ar = getelementptr i8, ptr %i.x, i64 %.idx
  %i.as = getelementptr i8, ptr %i.ar, i64 12
  store i32 %3, ptr %i.as, align 4, !tbaa !27
  br label %pred.store.continue213

pred.store.continue213:                           ; preds = %pred.store.if212, %pred.store.continue211
  %i.at = extractelement <4 x i1> %i.ai, i64 0
  br i1 %i.at, label %pred.store.if214, label %pred.store.continue215

pred.store.if214:                                 ; preds = %pred.store.continue213
  %i.au = getelementptr i8, ptr %i.x, i64 %.idx
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store i32 %3, ptr %i.av, align 4, !tbaa !27
  br label %pred.store.continue215

pred.store.continue215:                           ; preds = %pred.store.if214, %pred.store.continue213
  %i.aw = extractelement <4 x i1> %i.ai, i64 1
  br i1 %i.aw, label %pred.store.if216, label %pred.store.continue217

pred.store.if216:                                 ; preds = %pred.store.continue215
  %i.ax = getelementptr i8, ptr %i.x, i64 %.idx
  %i.ay = getelementptr i8, ptr %i.ax, i64 20
  store i32 %3, ptr %i.ay, align 4, !tbaa !27
  br label %pred.store.continue217

pred.store.continue217:                           ; preds = %pred.store.if216, %pred.store.continue215
  %i.az = extractelement <4 x i1> %i.ai, i64 2
  br i1 %i.az, label %pred.store.if218, label %pred.store.continue219

pred.store.if218:                                 ; preds = %pred.store.continue217
  %i.ba = getelementptr i8, ptr %i.x, i64 %.idx
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  store i32 %3, ptr %i.bb, align 4, !tbaa !27
  br label %pred.store.continue219

pred.store.continue219:                           ; preds = %pred.store.if218, %pred.store.continue217
  %i.bc = extractelement <4 x i1> %i.ai, i64 3
  br i1 %i.bc, label %pred.store.if220, label %pred.store.continue221

pred.store.if220:                                 ; preds = %pred.store.continue219
  %i.bd = getelementptr i8, ptr %i.x, i64 %.idx
  %i.be = getelementptr i8, ptr %i.bd, i64 28
  store i32 %3, ptr %i.be, align 4, !tbaa !27
  br label %pred.store.continue221

pred.store.continue221:                           ; preds = %pred.store.if220, %pred.store.continue219
  %i.bf = icmp eq i64 %n.vec, 8
  br i1 %i.bf, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %pred.store.continue221
  %i.bg = add nuw nsw i64 %.idx, 32               ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !27
  %wide.load207.1 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !27
  %i.bj = icmp eq <4 x i32> %wide.load.1, %broadcast.splat ; 4 uses
  %i.bk = icmp eq <4 x i32> %wide.load207.1, %broadcast.splat ; 4 uses
  %i.bl = extractelement <4 x i1> %i.bj, i64 0
  br i1 %i.bl, label %pred.store.if.1, label %pred.store.continue.1

pred.store.if.1:                                  ; preds = %vector.body.1
  store i32 %3, ptr %i.bh, align 4, !tbaa !27
  br label %pred.store.continue.1

pred.store.continue.1:                            ; preds = %pred.store.if.1, %vector.body.1
  %i.bm = extractelement <4 x i1> %i.bj, i64 1
  br i1 %i.bm, label %pred.store.if208.1, label %pred.store.continue209.1

pred.store.if208.1:                               ; preds = %pred.store.continue.1
  %i.bn = getelementptr i8, ptr %i.x, i64 %i.bg
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  store i32 %3, ptr %i.bo, align 4, !tbaa !27
  br label %pred.store.continue209.1

pred.store.continue209.1:                         ; preds = %pred.store.if208.1, %pred.store.continue.1
  %i.bp = extractelement <4 x i1> %i.bj, i64 2
  br i1 %i.bp, label %pred.store.if210.1, label %pred.store.continue211.1

pred.store.if210.1:                               ; preds = %pred.store.continue209.1
  %i.bq = getelementptr i8, ptr %i.x, i64 %i.bg
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store i32 %3, ptr %i.br, align 4, !tbaa !27
  br label %pred.store.continue211.1

pred.store.continue211.1:                         ; preds = %pred.store.if210.1, %pred.store.continue209.1
  %i.bs = extractelement <4 x i1> %i.bj, i64 3
  br i1 %i.bs, label %pred.store.if212.1, label %pred.store.continue213.1

pred.store.if212.1:                               ; preds = %pred.store.continue211.1
  %i.bt = getelementptr i8, ptr %i.x, i64 %i.bg
  %i.bu = getelementptr i8, ptr %i.bt, i64 12
  store i32 %3, ptr %i.bu, align 4, !tbaa !27
  br label %pred.store.continue213.1

pred.store.continue213.1:                         ; preds = %pred.store.if212.1, %pred.store.continue211.1
  %i.bv = extractelement <4 x i1> %i.bk, i64 0
  br i1 %i.bv, label %pred.store.if214.1, label %pred.store.continue215.1

pred.store.if214.1:                               ; preds = %pred.store.continue213.1
  %i.bw = getelementptr i8, ptr %i.x, i64 %i.bg
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  store i32 %3, ptr %i.bx, align 4, !tbaa !27
  br label %pred.store.continue215.1

pred.store.continue215.1:                         ; preds = %pred.store.if214.1, %pred.store.continue213.1
  %i.by = extractelement <4 x i1> %i.bk, i64 1
  br i1 %i.by, label %pred.store.if216.1, label %pred.store.continue217.1

pred.store.if216.1:                               ; preds = %pred.store.continue215.1
  %i.bz = getelementptr i8, ptr %i.x, i64 %i.bg
  %i.ca = getelementptr i8, ptr %i.bz, i64 20
  store i32 %3, ptr %i.ca, align 4, !tbaa !27
  br label %pred.store.continue217.1

pred.store.continue217.1:                         ; preds = %pred.store.if216.1, %pred.store.continue215.1
  %i.cb = extractelement <4 x i1> %i.bk, i64 2
  br i1 %i.cb, label %pred.store.if218.1, label %pred.store.continue219.1

pred.store.if218.1:                               ; preds = %pred.store.continue217.1
  %i.cc = getelementptr i8, ptr %i.x, i64 %i.bg
  %i.cd = getelementptr i8, ptr %i.cc, i64 24
  store i32 %3, ptr %i.cd, align 4, !tbaa !27
  br label %pred.store.continue219.1

pred.store.continue219.1:                         ; preds = %pred.store.if218.1, %pred.store.continue217.1
  %i.ce = extractelement <4 x i1> %i.bk, i64 3
  br i1 %i.ce, label %pred.store.if220.1, label %pred.store.continue221.1

pred.store.if220.1:                               ; preds = %pred.store.continue219.1
  %i.cf = getelementptr i8, ptr %i.x, i64 %i.bg
  %i.cg = getelementptr i8, ptr %i.cf, i64 28
  store i32 %3, ptr %i.cg, align 4, !tbaa !27
  br label %pred.store.continue221.1

pred.store.continue221.1:                         ; preds = %pred.store.if220.1, %pred.store.continue219.1
  %i.ch = icmp eq i64 %n.vec, 16
  br i1 %i.ch, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %pred.store.continue221.1
  %i.ci = add nuw nsw i64 %.idx, 64               ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load.2 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !27
  %wide.load207.2 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !27
  %i.cl = icmp eq <4 x i32> %wide.load.2, %broadcast.splat ; 4 uses
  %i.cm = icmp eq <4 x i32> %wide.load207.2, %broadcast.splat ; 4 uses
  %i.cn = extractelement <4 x i1> %i.cl, i64 0
  br i1 %i.cn, label %pred.store.if.2, label %pred.store.continue.2

pred.store.if.2:                                  ; preds = %vector.body.2
  store i32 %3, ptr %i.cj, align 4, !tbaa !27
  br label %pred.store.continue.2

pred.store.continue.2:                            ; preds = %pred.store.if.2, %vector.body.2
  %i.co = extractelement <4 x i1> %i.cl, i64 1
  br i1 %i.co, label %pred.store.if208.2, label %pred.store.continue209.2

pred.store.if208.2:                               ; preds = %pred.store.continue.2
  %i.cp = getelementptr i8, ptr %i.x, i64 %i.ci
  %i.cq = getelementptr i8, ptr %i.cp, i64 4
  store i32 %3, ptr %i.cq, align 4, !tbaa !27
  br label %pred.store.continue209.2

pred.store.continue209.2:                         ; preds = %pred.store.if208.2, %pred.store.continue.2
  %i.cr = extractelement <4 x i1> %i.cl, i64 2
  br i1 %i.cr, label %pred.store.if210.2, label %pred.store.continue211.2

pred.store.if210.2:                               ; preds = %pred.store.continue209.2
  %i.cs = getelementptr i8, ptr %i.x, i64 %i.ci
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  store i32 %3, ptr %i.ct, align 4, !tbaa !27
  br label %pred.store.continue211.2

pred.store.continue211.2:                         ; preds = %pred.store.if210.2, %pred.store.continue209.2
  %i.cu = extractelement <4 x i1> %i.cl, i64 3
  br i1 %i.cu, label %pred.store.if212.2, label %pred.store.continue213.2

pred.store.if212.2:                               ; preds = %pred.store.continue211.2
  %i.cv = getelementptr i8, ptr %i.x, i64 %i.ci
  %i.cw = getelementptr i8, ptr %i.cv, i64 12
  store i32 %3, ptr %i.cw, align 4, !tbaa !27
  br label %pred.store.continue213.2

pred.store.continue213.2:                         ; preds = %pred.store.if212.2, %pred.store.continue211.2
  %i.cx = extractelement <4 x i1> %i.cm, i64 0
  br i1 %i.cx, label %pred.store.if214.2, label %pred.store.continue215.2

pred.store.if214.2:                               ; preds = %pred.store.continue213.2
  %i.cy = getelementptr i8, ptr %i.x, i64 %i.ci
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  store i32 %3, ptr %i.cz, align 4, !tbaa !27
  br label %pred.store.continue215.2

pred.store.continue215.2:                         ; preds = %pred.store.if214.2, %pred.store.continue213.2
  %i.da = extractelement <4 x i1> %i.cm, i64 1
  br i1 %i.da, label %pred.store.if216.2, label %pred.store.continue217.2

pred.store.if216.2:                               ; preds = %pred.store.continue215.2
  %i.db = getelementptr i8, ptr %i.x, i64 %i.ci
  %i.dc = getelementptr i8, ptr %i.db, i64 20
  store i32 %3, ptr %i.dc, align 4, !tbaa !27
  br label %pred.store.continue217.2

pred.store.continue217.2:                         ; preds = %pred.store.if216.2, %pred.store.continue215.2
  %i.dd = extractelement <4 x i1> %i.cm, i64 2
  br i1 %i.dd, label %pred.store.if218.2, label %pred.store.continue219.2

pred.store.if218.2:                               ; preds = %pred.store.continue217.2
  %i.de = getelementptr i8, ptr %i.x, i64 %i.ci
  %i.df = getelementptr i8, ptr %i.de, i64 24
  store i32 %3, ptr %i.df, align 4, !tbaa !27
  br label %pred.store.continue219.2

pred.store.continue219.2:                         ; preds = %pred.store.if218.2, %pred.store.continue217.2
  %i.dg = extractelement <4 x i1> %i.cm, i64 3
  br i1 %i.dg, label %pred.store.if220.2, label %middle.block

pred.store.if220.2:                               ; preds = %pred.store.continue219.2
  %i.dh = getelementptr i8, ptr %i.x, i64 %i.ci
  %i.di = getelementptr i8, ptr %i.dh, i64 28
  store i32 %3, ptr %i.di, align 4, !tbaa !27
  br label %middle.block

middle.block:                                     ; preds = %pred.store.continue219.2, %pred.store.if220.2, %pred.store.continue221.1, %pred.store.continue221
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZL9fillBlockPjiijja.exit, label %.lr.ph19.i.preheader343

.lr.ph19.i.preheader343:                          ; preds = %.lr.ph19.i.preheader, %middle.block
  %.118.i.idx.ph = phi i64 [ %.idx, %.lr.ph19.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph19.i

.lr.ph.i.preheader:                               ; preds = %bb.j
  br i1 %min.iters.check223, label %.lr.ph.i.preheader342, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph.i.preheader
  %n.vec225 = and i64 %i.ac, 56                   ; 4 uses
  %i.dj = shl nuw nsw i64 %n.vec225, 2
  %i.dk = add nuw nsw i64 %i.dj, %.idx
  %broadcast.splatinsert226 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat227 = shufflevector <4 x i32> %broadcast.splatinsert226, <4 x i32> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <4 x i32> %broadcast.splat227, ptr %i.dl, align 4, !tbaa !27
  store <4 x i32> %broadcast.splat227, ptr %i.dm, align 4, !tbaa !27
  %i.dn = icmp eq i64 %n.vec225, 8
  br i1 %i.dn, label %middle.block231, label %vector.body228.1

vector.body228.1:                                 ; preds = %vector.ph224
  %i.do = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <4 x i32> %broadcast.splat227, ptr %i.dp, align 4, !tbaa !27
  store <4 x i32> %broadcast.splat227, ptr %i.dq, align 4, !tbaa !27
  %i.dr = icmp eq i64 %n.vec225, 16
  br i1 %i.dr, label %middle.block231, label %vector.body228.2

vector.body228.2:                                 ; preds = %vector.body228.1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <4 x i32> %broadcast.splat227, ptr %i.dt, align 4, !tbaa !27
  store <4 x i32> %broadcast.splat227, ptr %i.du, align 4, !tbaa !27
  br label %middle.block231

middle.block231:                                  ; preds = %vector.body228.2, %vector.body228.1, %vector.ph224
  %cmp.n232 = icmp eq i64 %i.ac, %n.vec225
  br i1 %cmp.n232, label %_ZL9fillBlockPjiijja.exit, label %.lr.ph.i.preheader342

.lr.ph.i.preheader342:                            ; preds = %.lr.ph.i.preheader, %middle.block231
  %.017.i.idx.ph = phi i64 [ %.idx, %.lr.ph.i.preheader ], [ %i.dk, %middle.block231 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader342, %.lr.ph.i
  %.017.i.idx = phi i64 [ %.017.i.add, %.lr.ph.i ], [ %.017.i.idx.ph, %.lr.ph.i.preheader342 ] ; 3 uses
  %.017.i.ptr = getelementptr inbounds nuw i8, ptr %i.x, i64 %.017.i.idx
  %.017.i.add = add nuw nsw i64 %.017.i.idx, 4
  store i32 %3, ptr %.017.i.ptr, align 4, !tbaa !27
  %i.dv = icmp samesign ult i64 %.017.i.idx, 124
  br i1 %i.dv, label %.lr.ph.i, label %_ZL9fillBlockPjiijja.exit, !llvm.loop !98

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.preheader343, %bb.l
  %.118.i.idx = phi i64 [ %.118.i.add, %bb.l ], [ %.118.i.idx.ph, %.lr.ph19.i.preheader343 ] ; 3 uses
  %.118.i.ptr = getelementptr inbounds nuw i8, ptr %i.x, i64 %.118.i.idx ; 2 uses
  %i.dw = load i32, ptr %.118.i.ptr, align 4, !tbaa !27
  %i.dx = icmp eq i32 %i.dw, %i.z
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph19.i
  store i32 %3, ptr %.118.i.ptr, align 4, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph19.i
  %.118.i.add = add nuw nsw i64 %.118.i.idx, 4
  %i.dy = icmp samesign ult i64 %.118.i.idx, 124
  br i1 %i.dy, label %.lr.ph19.i, label %_ZL9fillBlockPjiijja.exit, !llvm.loop !99

bb.m:                                             ; preds = %bb.i
  %i.dz = and i32 %i.o, 31                        ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 144136
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !23 ; 2 uses
  %i.ec = zext nneg i32 %i.dz to i64              ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ec ; 2 uses
  %i.ee = zext nneg i32 %i.p to i64               ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ee ; 13 uses
  %i.eg = icmp samesign ult i32 %i.p, %i.dz       ; 2 uses
  br i1 %i.k, label %.preheader15.i130, label %.preheader.i133

.preheader15.i130:                                ; preds = %bb.m
  br i1 %i.eg, label %.lr.ph.i131.preheader, label %.critedge

.lr.ph.i131.preheader:                            ; preds = %.preheader15.i130
  %i.eh = shl nuw nsw i64 %i.w, 2                 ; 2 uses
  %i.ei = shl nuw nsw i64 %i.ee, 2                ; 2 uses
  %i.ej = add i64 %i.eh, %6                       ; 2 uses
  %i.ek = add i64 %i.ej, %i.ei
  %i.el = add i64 %i.ek, 4
  %i.em = shl nuw nsw i64 %i.ec, 2
  %i.en = add i64 %i.ej, %i.em
  %i.eo = tail call i64 @llvm.umax.i64(i64 %i.el, i64 %i.en)
  %i.ep = xor i64 %6, -1
  %i.eq = add i64 %i.eo, %i.ep
  %i.er = add nuw nsw i64 %i.eh, %i.ei
  %i.es = sub i64 %i.eq, %i.er                    ; 2 uses
  %i.et = lshr i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %min.iters.check272 = icmp ult i64 %i.es, 28
  br i1 %min.iters.check272, label %.lr.ph.i131.preheader338, label %vector.ph273

vector.ph273:                                     ; preds = %.lr.ph.i131.preheader
  %n.vec274 = and i64 %i.eu, 9223372036854775800  ; 3 uses
  %i.ev = shl i64 %n.vec274, 2
  %i.ew = getelementptr i8, ptr %i.ef, i64 %i.ev
  %broadcast.splatinsert275 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat276 = shufflevector <4 x i32> %broadcast.splatinsert275, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph273
  %index278 = phi i64 [ 0, %vector.ph273 ], [ %index.next280, %vector.body277 ] ; 2 uses
  %i.ex = shl i64 %index278, 2
  %next.gep279 = getelementptr i8, ptr %i.ef, i64 %i.ex ; 2 uses
  %i.ey = getelementptr i8, ptr %next.gep279, i64 16
  store <4 x i32> %broadcast.splat276, ptr %next.gep279, align 4, !tbaa !27
  store <4 x i32> %broadcast.splat276, ptr %i.ey, align 4, !tbaa !27
  %index.next280 = add nuw i64 %index278, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next280, %n.vec274
  br i1 %i.ez, label %middle.block281, label %vector.body277, !llvm.loop !100

middle.block281:                                  ; preds = %vector.body277
  %cmp.n282 = icmp eq i64 %i.eu, %n.vec274
  br i1 %cmp.n282, label %.critedge, label %.lr.ph.i131.preheader338

.lr.ph.i131.preheader338:                         ; preds = %.lr.ph.i131.preheader, %middle.block281
  %.017.i132.ph = phi ptr [ %i.ef, %.lr.ph.i131.preheader ], [ %i.ew, %middle.block281 ]
  br label %.lr.ph.i131

.preheader.i133:                                  ; preds = %bb.m
  br i1 %i.eg, label %.lr.ph19.i134.preheader, label %.critedge

.lr.ph19.i134.preheader:                          ; preds = %.preheader.i133
  %i.fa = shl nuw nsw i64 %i.w, 2                 ; 2 uses
  %i.fb = shl nuw nsw i64 %i.ee, 2                ; 2 uses
  %i.fc = add i64 %i.fa, %6                       ; 2 uses
  %i.fd = add i64 %i.fc, %i.fb
  %i.fe = add i64 %i.fd, 4
  %i.ff = shl nuw nsw i64 %i.ec, 2
  %i.fg = add i64 %i.fc, %i.ff
  %i.fh = tail call i64 @llvm.umax.i64(i64 %i.fe, i64 %i.fg)
  %i.fi = xor i64 %6, -1
  %i.fj = add i64 %i.fh, %i.fi
  %i.fk = add nuw nsw i64 %i.fa, %i.fb
  %i.fl = sub i64 %i.fj, %i.fk                    ; 2 uses
  %i.fm = lshr i64 %i.fl, 2
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %min.iters.check235 = icmp ult i64 %i.fl, 28
  br i1 %min.iters.check235, label %.lr.ph19.i134.preheader340, label %vector.ph236

vector.ph236:                                     ; preds = %.lr.ph19.i134.preheader
  %n.vec237 = and i64 %i.fn, 9223372036854775800  ; 3 uses
  %i.fo = shl i64 %n.vec237, 2
  %i.fp = getelementptr i8, ptr %i.ef, i64 %i.fo
  %broadcast.splatinsert238 = insertelement <4 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat239 = shufflevector <4 x i32> %broadcast.splatinsert238, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body240

vector.body240:                                   ; preds = %pred.store.continue266, %vector.ph236
  %index241 = phi i64 [ 0, %vector.ph236 ], [ %index.next267, %pred.store.continue266 ] ; 2 uses
  %i.fq = shl i64 %index241, 2                    ; 8 uses
  %next.gep = getelementptr i8, ptr %i.ef, i64 %i.fq ; 3 uses
  %i.fr = getelementptr i8, ptr %i.ef, i64 %i.fq
  %next.gep242 = getelementptr i8, ptr %i.fr, i64 4
  %i.fs = getelementptr i8, ptr %i.ef, i64 %i.fq
  %next.gep243 = getelementptr i8, ptr %i.fs, i64 8
  %i.ft = getelementptr i8, ptr %i.ef, i64 %i.fq
  %next.gep244 = getelementptr i8, ptr %i.ft, i64 12
  %i.fu = getelementptr i8, ptr %i.ef, i64 %i.fq
  %next.gep245 = getelementptr i8, ptr %i.fu, i64 16
  %i.fv = getelementptr i8, ptr %i.ef, i64 %i.fq
  %next.gep246 = getelementptr i8, ptr %i.fv, i64 20
  %i.fw = getelementptr i8, ptr %i.ef, i64 %i.fq
  %next.gep247 = getelementptr i8, ptr %i.fw, i64 24
  %i.fx = getelementptr i8, ptr %i.ef, i64 %i.fq
  %next.gep248 = getelementptr i8, ptr %i.fx, i64 28
  %i.fy = getelementptr i8, ptr %next.gep, i64 16
  %wide.load249 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !27
  %wide.load250 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !27
  %i.fz = icmp eq <4 x i32> %wide.load249, %broadcast.splat239 ; 4 uses
  %i.ga = icmp eq <4 x i32> %wide.load250, %broadcast.splat239 ; 4 uses
  %i.gb = extractelement <4 x i1> %i.fz, i64 0
  br i1 %i.gb, label %pred.store.if251, label %pred.store.continue252

pred.store.if251:                                 ; preds = %vector.body240
  store i32 %3, ptr %next.gep, align 4, !tbaa !27
  br label %pred.store.continue252

pred.store.continue252:                           ; preds = %pred.store.if251, %vector.body240
  %i.gc = extractelement <4 x i1> %i.fz, i64 1
  br i1 %i.gc, label %pred.store.if253, label %pred.store.continue254

pred.store.if253:                                 ; preds = %pred.store.continue252
  store i32 %3, ptr %next.gep242, align 4, !tbaa !27
  br label %pred.store.continue254

pred.store.continue254:                           ; preds = %pred.store.if253, %pred.store.continue252
  %i.gd = extractelement <4 x i1> %i.fz, i64 2
  br i1 %i.gd, label %pred.store.if255, label %pred.store.continue256

pred.store.if255:                                 ; preds = %pred.store.continue254
  store i32 %3, ptr %next.gep243, align 4, !tbaa !27
  br label %pred.store.continue256

pred.store.continue256:                           ; preds = %pred.store.if255, %pred.store.continue254
  %i.ge = extractelement <4 x i1> %i.fz, i64 3
  br i1 %i.ge, label %pred.store.if257, label %pred.store.continue258

pred.store.if257:                                 ; preds = %pred.store.continue256
  store i32 %3, ptr %next.gep244, align 4, !tbaa !27
  br label %pred.store.continue258

pred.store.continue258:                           ; preds = %pred.store.if257, %pred.store.continue256
  %i.gf = extractelement <4 x i1> %i.ga, i64 0
  br i1 %i.gf, label %pred.store.if259, label %pred.store.continue260

pred.store.if259:                                 ; preds = %pred.store.continue258
  store i32 %3, ptr %next.gep245, align 4, !tbaa !27
  br label %pred.store.continue260

pred.store.continue260:                           ; preds = %pred.store.if259, %pred.store.continue258
  %i.gg = extractelement <4 x i1> %i.ga, i64 1
  br i1 %i.gg, label %pred.store.if261, label %pred.store.continue262

pred.store.if261:                                 ; preds = %pred.store.continue260
  store i32 %3, ptr %next.gep246, align 4, !tbaa !27
  br label %pred.store.continue262

pred.store.continue262:                           ; preds = %pred.store.if261, %pred.store.continue260
  %i.gh = extractelement <4 x i1> %i.ga, i64 2
  br i1 %i.gh, label %pred.store.if263, label %pred.store.continue264

pred.store.if263:                                 ; preds = %pred.store.continue262
  store i32 %3, ptr %next.gep247, align 4, !tbaa !27
  br label %pred.store.continue264

pred.store.continue264:                           ; preds = %pred.store.if263, %pred.store.continue262
  %i.gi = extractelement <4 x i1> %i.ga, i64 3
  br i1 %i.gi, label %pred.store.if265, label %pred.store.continue266

pred.store.if265:                                 ; preds = %pred.store.continue264
  store i32 %3, ptr %next.gep248, align 4, !tbaa !27
  br label %pred.store.continue266

pred.store.continue266:                           ; preds = %pred.store.if265, %pred.store.continue264
  %index.next267 = add nuw i64 %index241, 8       ; 2 uses
  %i.gj = icmp eq i64 %index.next267, %n.vec237
  br i1 %i.gj, label %middle.block268, label %vector.body240, !llvm.loop !101

middle.block268:                                  ; preds = %pred.store.continue266
  %cmp.n269 = icmp eq i64 %i.fn, %n.vec237
  br i1 %cmp.n269, label %.critedge, label %.lr.ph19.i134.preheader340

.lr.ph19.i134.preheader340:                       ; preds = %.lr.ph19.i134.preheader, %middle.block268
  %.118.i135.ph = phi ptr [ %i.ef, %.lr.ph19.i134.preheader ], [ %i.fp, %middle.block268 ]
  br label %.lr.ph19.i134

.lr.ph.i131:                                      ; preds = %.lr.ph.i131.preheader338, %.lr.ph.i131
  %.017.i132 = phi ptr [ %i.gk, %.lr.ph.i131 ], [ %.017.i132.ph, %.lr.ph.i131.preheader338 ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.017.i132, i64 4 ; 2 uses
  store i32 %3, ptr %.017.i132, align 4, !tbaa !27
  %i.gl = icmp ult ptr %i.gk, %i.ed
  br i1 %i.gl, label %.lr.ph.i131, label %.critedge, !llvm.loop !102

.lr.ph19.i134:                                    ; preds = %.lr.ph19.i134.preheader340, %bb.o
  %.118.i135 = phi ptr [ %i.go, %bb.o ], [ %.118.i135.ph, %.lr.ph19.i134.preheader340 ] ; 3 uses
  %i.gm = load i32, ptr %.118.i135, align 4, !tbaa !27
  %i.gn = icmp eq i32 %i.gm, %i.eb
  br i1 %i.gn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph19.i134
  store i32 %3, ptr %.118.i135, align 4, !tbaa !27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph19.i134
  %i.go = getelementptr inbounds nuw i8, ptr %.118.i135, i64 4 ; 2 uses
  %i.gp = icmp ult ptr %i.go, %i.ed
  br i1 %i.gp, label %.lr.ph19.i134, label %.critedge, !llvm.loop !103

_ZL9fillBlockPjiijja.exit:                        ; preds = %bb.l, %.lr.ph.i, %middle.block, %middle.block231, %bb.g
  %.1103 = phi i32 [ %1, %bb.g ], [ %i.t, %middle.block231 ], [ %i.t, %middle.block ], [ %i.t, %.lr.ph.i ], [ %i.t, %bb.l ] ; 3 uses
  %i.gq = and i32 %i.o, 31                        ; 2 uses
  %i.gr = and i32 %i.o, 4194272                   ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.g, i64 144136 ; 4 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !23
  %i.gu = icmp eq i32 %3, %i.gt
  br i1 %i.gu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZL9fillBlockPjiijja.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %i.g, i64 144164
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !28
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
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !27
  %i.hr = lshr i32 %.2104173, 5
  %i.hs = and i32 %i.hr, 63
  %i.ht = add nsw i32 %i.hq, %i.hs
  br label %_ZL13isInNullBlockP9UNewTrie2ia.exit

_ZL13isInNullBlockP9UNewTrie2ia.exit:             ; preds = %bb.t, %bb.u
  %.0.i = phi i32 [ %i.hm, %bb.t ], [ %i.ht, %bb.u ]
  %i.hu = sext i32 %.0.i to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !27
end_hunk_0
begin_hunk_1_@utrie2_setRange32_78:bb.a
  %i.ks = icmp eq i32 %i.kr, %i.je
  br i1 %i.ks, label %bb.au, label %.lr.ph19.i143.20

bb.au:                                            ; preds = %.lr.ph19.i143.19
  store i32 %3, ptr %.118.i144.ptr.19, align 4, !tbaa !27
  br label %.lr.ph19.i143.20

.lr.ph19.i143.20:                                 ; preds = %bb.au, %.lr.ph19.i143.19
  %.118.i144.ptr.20 = getelementptr inbounds nuw i8, ptr %i.jd, i64 80 ; 2 uses
  %i.kt = load i32, ptr %.118.i144.ptr.20, align 4, !tbaa !27
  %i.ku = icmp eq i32 %i.kt, %i.je
  br i1 %i.ku, label %bb.av, label %.lr.ph19.i143.21

bb.av:                                            ; preds = %.lr.ph19.i143.20
  store i32 %3, ptr %.118.i144.ptr.20, align 4, !tbaa !27
  br label %.lr.ph19.i143.21

.lr.ph19.i143.21:                                 ; preds = %bb.av, %.lr.ph19.i143.20
  %.118.i144.ptr.21 = getelementptr inbounds nuw i8, ptr %i.jd, i64 84 ; 2 uses
  %i.kv = load i32, ptr %.118.i144.ptr.21, align 4, !tbaa !27
  %i.kw = icmp eq i32 %i.kv, %i.je
  br i1 %i.kw, label %bb.aw, label %.lr.ph19.i143.22

bb.aw:                                            ; preds = %.lr.ph19.i143.21
  store i32 %3, ptr %.118.i144.ptr.21, align 4, !tbaa !27
  br label %.lr.ph19.i143.22

.lr.ph19.i143.22:                                 ; preds = %bb.aw, %.lr.ph19.i143.21
  %.118.i144.ptr.22 = getelementptr inbounds nuw i8, ptr %i.jd, i64 88 ; 2 uses
  %i.kx = load i32, ptr %.118.i144.ptr.22, align 4, !tbaa !27
  %i.ky = icmp eq i32 %i.kx, %i.je
  br i1 %i.ky, label %bb.ax, label %.lr.ph19.i143.23

bb.ax:                                            ; preds = %.lr.ph19.i143.22
  store i32 %3, ptr %.118.i144.ptr.22, align 4, !tbaa !27
  br label %.lr.ph19.i143.23

.lr.ph19.i143.23:                                 ; preds = %bb.ax, %.lr.ph19.i143.22
  %.118.i144.ptr.23 = getelementptr inbounds nuw i8, ptr %i.jd, i64 92 ; 2 uses
  %i.kz = load i32, ptr %.118.i144.ptr.23, align 4, !tbaa !27
  %i.la = icmp eq i32 %i.kz, %i.je
  br i1 %i.la, label %bb.ay, label %.lr.ph19.i143.24

bb.ay:                                            ; preds = %.lr.ph19.i143.23
  store i32 %3, ptr %.118.i144.ptr.23, align 4, !tbaa !27
  br label %.lr.ph19.i143.24

.lr.ph19.i143.24:                                 ; preds = %bb.ay, %.lr.ph19.i143.23
  %.118.i144.ptr.24 = getelementptr inbounds nuw i8, ptr %i.jd, i64 96 ; 2 uses
  %i.lb = load i32, ptr %.118.i144.ptr.24, align 4, !tbaa !27
  %i.lc = icmp eq i32 %i.lb, %i.je
  br i1 %i.lc, label %bb.az, label %.lr.ph19.i143.25

bb.az:                                            ; preds = %.lr.ph19.i143.24
  store i32 %3, ptr %.118.i144.ptr.24, align 4, !tbaa !27
  br label %.lr.ph19.i143.25

.lr.ph19.i143.25:                                 ; preds = %bb.az, %.lr.ph19.i143.24
  %.118.i144.ptr.25 = getelementptr inbounds nuw i8, ptr %i.jd, i64 100 ; 2 uses
  %i.ld = load i32, ptr %.118.i144.ptr.25, align 4, !tbaa !27
  %i.le = icmp eq i32 %i.ld, %i.je
  br i1 %i.le, label %bb.ba, label %.lr.ph19.i143.26

bb.ba:                                            ; preds = %.lr.ph19.i143.25
  store i32 %3, ptr %.118.i144.ptr.25, align 4, !tbaa !27
  br label %.lr.ph19.i143.26

.lr.ph19.i143.26:                                 ; preds = %bb.ba, %.lr.ph19.i143.25
  %.118.i144.ptr.26 = getelementptr inbounds nuw i8, ptr %i.jd, i64 104 ; 2 uses
  %i.lf = load i32, ptr %.118.i144.ptr.26, align 4, !tbaa !27
  %i.lg = icmp eq i32 %i.lf, %i.je
  br i1 %i.lg, label %bb.bb, label %.lr.ph19.i143.27

bb.bb:                                            ; preds = %.lr.ph19.i143.26
  store i32 %3, ptr %.118.i144.ptr.26, align 4, !tbaa !27
  br label %.lr.ph19.i143.27

.lr.ph19.i143.27:                                 ; preds = %bb.bb, %.lr.ph19.i143.26
  %.118.i144.ptr.27 = getelementptr inbounds nuw i8, ptr %i.jd, i64 108 ; 2 uses
  %i.lh = load i32, ptr %.118.i144.ptr.27, align 4, !tbaa !27
  %i.li = icmp eq i32 %i.lh, %i.je
  br i1 %i.li, label %bb.bc, label %.lr.ph19.i143.28

bb.bc:                                            ; preds = %.lr.ph19.i143.27
  store i32 %3, ptr %.118.i144.ptr.27, align 4, !tbaa !27
  br label %.lr.ph19.i143.28

.lr.ph19.i143.28:                                 ; preds = %bb.bc, %.lr.ph19.i143.27
  %.118.i144.ptr.28 = getelementptr inbounds nuw i8, ptr %i.jd, i64 112 ; 2 uses
  %i.lj = load i32, ptr %.118.i144.ptr.28, align 4, !tbaa !27
  %i.lk = icmp eq i32 %i.lj, %i.je
  br i1 %i.lk, label %bb.bd, label %.lr.ph19.i143.29

bb.bd:                                            ; preds = %.lr.ph19.i143.28
  store i32 %3, ptr %.118.i144.ptr.28, align 4, !tbaa !27
  br label %.lr.ph19.i143.29

.lr.ph19.i143.29:                                 ; preds = %bb.bd, %.lr.ph19.i143.28
  %.118.i144.ptr.29 = getelementptr inbounds nuw i8, ptr %i.jd, i64 116 ; 2 uses
  %i.ll = load i32, ptr %.118.i144.ptr.29, align 4, !tbaa !27
  %i.lm = icmp eq i32 %i.ll, %i.je
  br i1 %i.lm, label %bb.be, label %.lr.ph19.i143.30

bb.be:                                            ; preds = %.lr.ph19.i143.29
  store i32 %3, ptr %.118.i144.ptr.29, align 4, !tbaa !27
  br label %.lr.ph19.i143.30

.lr.ph19.i143.30:                                 ; preds = %bb.be, %.lr.ph19.i143.29
  %.118.i144.ptr.30 = getelementptr inbounds nuw i8, ptr %i.jd, i64 120 ; 2 uses
  %i.ln = load i32, ptr %.118.i144.ptr.30, align 4, !tbaa !27
  %i.lo = icmp eq i32 %i.ln, %i.je
  br i1 %i.lo, label %bb.bf, label %.lr.ph19.i143.31

bb.bf:                                            ; preds = %.lr.ph19.i143.30
  store i32 %3, ptr %.118.i144.ptr.30, align 4, !tbaa !27
  br label %.lr.ph19.i143.31

.lr.ph19.i143.31:                                 ; preds = %bb.bf, %.lr.ph19.i143.30
  %.118.i144.ptr.31 = getelementptr inbounds nuw i8, ptr %i.jd, i64 124 ; 2 uses
  %i.lp = load i32, ptr %.118.i144.ptr.31, align 4, !tbaa !27
  %i.lq = icmp eq i32 %i.lp, %i.je
  br i1 %i.lq, label %bb.bg, label %.critedge128

bb.bg:                                            ; preds = %.lr.ph19.i143.31
  store i32 %3, ptr %.118.i144.ptr.31, align 4, !tbaa !27
  br label %.critedge128

_ZL15isWritableBlockP9UNewTrie2i.exit.thread:     ; preds = %_ZL14getIndex2BlockP9UNewTrie2ia.exit.thread156, %_ZL15isWritableBlockP9UNewTrie2i.exit
  %i.lr = load ptr, ptr %i.hd, align 8, !tbaa !21
  %i.ls = sext i32 %i.iu to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !27
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
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !27
  %i.ma = add nsw i32 %i.lz, 1
  store i32 %i.ma, ptr %i.ly, align 4, !tbaa !27
  %i.mb = load i32, ptr %i.it, align 4, !tbaa !27 ; 2 uses
  %i.mc = ashr i32 %i.mb, 5
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.md ; 3 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !27
  %i.mg = add nsw i32 %i.mf, -1                   ; 2 uses
  store i32 %i.mg, ptr %i.me, align 4, !tbaa !27
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.bj, label %_ZL14setIndex2EntryP9UNewTrie2ii.exit

bb.bj:                                            ; preds = %bb.bi
  %i.mi = load i32, ptr %i.he, align 4, !tbaa !25
  %i.mj = sub nsw i32 0, %i.mi
  store i32 %i.mj, ptr %i.me, align 4, !tbaa !27
  store i32 %i.mb, ptr %i.he, align 4, !tbaa !25
  br label %_ZL14setIndex2EntryP9UNewTrie2ii.exit

_ZL14setIndex2EntryP9UNewTrie2ii.exit:            ; preds = %bb.bi, %bb.bj
  store i32 %.1101174, ptr %i.it, align 4, !tbaa !27
  br label %.critedge128

bb.bk:                                            ; preds = %bb.bh
  %i.mk = tail call fastcc noundef i32 @_ZL12getDataBlockP9UNewTrie2ia(ptr noundef %i.g, i32 noundef %.2104173, i8 noundef signext 1) ; 3 uses
  %i.ml = icmp slt i32 %i.mk, 0
  br i1 %i.ml, label %.critedge.sink.split, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mm = load ptr, ptr %i.hd, align 8, !tbaa !21
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
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !21 ; 2 uses
  %7 = ptrtoaddr ptr %i.mt to i64                 ; 2 uses
  %i.mu = zext nneg i32 %i.mq to i64              ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.mu ; 14 uses
  %i.mw = load i32, ptr %i.gs, align 8, !tbaa !23 ; 2 uses
  %i.mx = zext nneg i32 %i.gq to i64              ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.mx ; 2 uses
  %i.mz = shl nuw nsw i64 %i.mu, 2                ; 2 uses
  %i.na = shl nuw nsw i64 %i.mx, 2
  %i.nb = add i64 %i.mz, %7                       ; 2 uses
  %i.nc = add i64 %i.nb, %i.na
  %i.nd = add i64 %i.nb, 4
  %i.ne = tail call i64 @llvm.umax.i64(i64 %i.nc, i64 %i.nd)
  %i.nf = xor i64 %7, -1
  %i.ng = add i64 %i.ne, %i.nf
  %i.nh = sub i64 %i.ng, %i.mz                    ; 2 uses
  %i.ni = lshr i64 %i.nh, 2
  %i.nj = add nuw nsw i64 %i.ni, 1                ; 4 uses
  %min.iters.check323 = icmp ult i64 %i.nh, 28    ; 2 uses
  br i1 %i.k, label %.lr.ph.i148.preheader, label %.lr.ph19.i151.preheader

.lr.ph19.i151.preheader:                          ; preds = %bb.bn
  br i1 %min.iters.check323, label %.lr.ph19.i151.preheader336, label %vector.ph286

vector.ph286:                                     ; preds = %.lr.ph19.i151.preheader
  %n.vec287 = and i64 %i.nj, 9223372036854775800  ; 3 uses
  %i.nk = shl i64 %n.vec287, 2
  %i.nl = getelementptr i8, ptr %i.mv, i64 %i.nk
  %broadcast.splatinsert288 = insertelement <4 x i32> poison, i32 %i.mw, i64 0
  %broadcast.splat289 = shufflevector <4 x i32> %broadcast.splatinsert288, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body290

vector.body290:                                   ; preds = %pred.store.continue317, %vector.ph286
  %index291 = phi i64 [ 0, %vector.ph286 ], [ %index.next318, %pred.store.continue317 ] ; 2 uses
  %i.nm = shl i64 %index291, 2                    ; 8 uses
  %next.gep292 = getelementptr i8, ptr %i.mv, i64 %i.nm ; 3 uses
  %i.nn = getelementptr i8, ptr %i.mv, i64 %i.nm
  %next.gep293 = getelementptr i8, ptr %i.nn, i64 4
  %i.no = getelementptr i8, ptr %i.mv, i64 %i.nm
  %next.gep294 = getelementptr i8, ptr %i.no, i64 8
  %i.np = getelementptr i8, ptr %i.mv, i64 %i.nm
  %next.gep295 = getelementptr i8, ptr %i.np, i64 12
  %i.nq = getelementptr i8, ptr %i.mv, i64 %i.nm
  %next.gep296 = getelementptr i8, ptr %i.nq, i64 16
  %i.nr = getelementptr i8, ptr %i.mv, i64 %i.nm
  %next.gep297 = getelementptr i8, ptr %i.nr, i64 20
  %i.ns = getelementptr i8, ptr %i.mv, i64 %i.nm
  %next.gep298 = getelementptr i8, ptr %i.ns, i64 24
  %i.nt = getelementptr i8, ptr %i.mv, i64 %i.nm
  %next.gep299 = getelementptr i8, ptr %i.nt, i64 28
  %i.nu = getelementptr i8, ptr %next.gep292, i64 16
  %wide.load300 = load <4 x i32>, ptr %next.gep292, align 4, !tbaa !27
  %wide.load301 = load <4 x i32>, ptr %i.nu, align 4, !tbaa !27
  %i.nv = icmp eq <4 x i32> %wide.load300, %broadcast.splat289 ; 4 uses
  %i.nw = icmp eq <4 x i32> %wide.load301, %broadcast.splat289 ; 4 uses
  %i.nx = extractelement <4 x i1> %i.nv, i64 0
  br i1 %i.nx, label %pred.store.if302, label %pred.store.continue303

pred.store.if302:                                 ; preds = %vector.body290
  store i32 %3, ptr %next.gep292, align 4, !tbaa !27
  br label %pred.store.continue303

pred.store.continue303:                           ; preds = %pred.store.if302, %vector.body290
  %i.ny = extractelement <4 x i1> %i.nv, i64 1
  br i1 %i.ny, label %pred.store.if304, label %pred.store.continue305

pred.store.if304:                                 ; preds = %pred.store.continue303
  store i32 %3, ptr %next.gep293, align 4, !tbaa !27
  br label %pred.store.continue305

pred.store.continue305:                           ; preds = %pred.store.if304, %pred.store.continue303
  %i.nz = extractelement <4 x i1> %i.nv, i64 2
  br i1 %i.nz, label %pred.store.if306, label %pred.store.continue307

pred.store.if306:                                 ; preds = %pred.store.continue305
  store i32 %3, ptr %next.gep294, align 4, !tbaa !27
  br label %pred.store.continue307

pred.store.continue307:                           ; preds = %pred.store.if306, %pred.store.continue305
  %i.oa = extractelement <4 x i1> %i.nv, i64 3
  br i1 %i.oa, label %pred.store.if308, label %pred.store.continue309

pred.store.if308:                                 ; preds = %pred.store.continue307
  store i32 %3, ptr %next.gep295, align 4, !tbaa !27
  br label %pred.store.continue309

pred.store.continue309:                           ; preds = %pred.store.if308, %pred.store.continue307
  %i.ob = extractelement <4 x i1> %i.nw, i64 0
  br i1 %i.ob, label %pred.store.if310, label %pred.store.continue311

pred.store.if310:                                 ; preds = %pred.store.continue309
  store i32 %3, ptr %next.gep296, align 4, !tbaa !27
  br label %pred.store.continue311

pred.store.continue311:                           ; preds = %pred.store.if310, %pred.store.continue309
  %i.oc = extractelement <4 x i1> %i.nw, i64 1
  br i1 %i.oc, label %pred.store.if312, label %pred.store.continue313

pred.store.if312:                                 ; preds = %pred.store.continue311
  store i32 %3, ptr %next.gep297, align 4, !tbaa !27
  br label %pred.store.continue313

pred.store.continue313:                           ; preds = %pred.store.if312, %pred.store.continue311
  %i.od = extractelement <4 x i1> %i.nw, i64 2
  br i1 %i.od, label %pred.store.if314, label %pred.store.continue315

pred.store.if314:                                 ; preds = %pred.store.continue313
  store i32 %3, ptr %next.gep298, align 4, !tbaa !27
  br label %pred.store.continue315

pred.store.continue315:                           ; preds = %pred.store.if314, %pred.store.continue313
  %i.oe = extractelement <4 x i1> %i.nw, i64 3
  br i1 %i.oe, label %pred.store.if316, label %pred.store.continue317

pred.store.if316:                                 ; preds = %pred.store.continue315
  store i32 %3, ptr %next.gep299, align 4, !tbaa !27
  br label %pred.store.continue317

pred.store.continue317:                           ; preds = %pred.store.if316, %pred.store.continue315
  %index.next318 = add nuw i64 %index291, 8       ; 2 uses
  %i.of = icmp eq i64 %index.next318, %n.vec287
  br i1 %i.of, label %middle.block319, label %vector.body290, !llvm.loop !105

middle.block319:                                  ; preds = %pred.store.continue317
  %cmp.n320 = icmp eq i64 %i.nj, %n.vec287
  br i1 %cmp.n320, label %.critedge, label %.lr.ph19.i151.preheader336

.lr.ph19.i151.preheader336:                       ; preds = %.lr.ph19.i151.preheader, %middle.block319
  %.118.i152.ph = phi ptr [ %i.mv, %.lr.ph19.i151.preheader ], [ %i.nl, %middle.block319 ]
  br label %.lr.ph19.i151

.lr.ph.i148.preheader:                            ; preds = %bb.bn
  br i1 %min.iters.check323, label %.lr.ph.i148.preheader335, label %vector.ph324

vector.ph324:                                     ; preds = %.lr.ph.i148.preheader
  %n.vec325 = and i64 %i.nj, 9223372036854775800  ; 3 uses
  %i.og = shl i64 %n.vec325, 2
  %i.oh = getelementptr i8, ptr %i.mv, i64 %i.og
  %broadcast.splatinsert326 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat327 = shufflevector <4 x i32> %broadcast.splatinsert326, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph324
  %index329 = phi i64 [ 0, %vector.ph324 ], [ %index.next331, %vector.body328 ] ; 2 uses
  %i.oi = shl i64 %index329, 2
  %next.gep330 = getelementptr i8, ptr %i.mv, i64 %i.oi ; 2 uses
  %i.oj = getelementptr i8, ptr %next.gep330, i64 16
  store <4 x i32> %broadcast.splat327, ptr %next.gep330, align 4, !tbaa !27
  store <4 x i32> %broadcast.splat327, ptr %i.oj, align 4, !tbaa !27
  %index.next331 = add nuw i64 %index329, 8       ; 2 uses
  %i.ok = icmp eq i64 %index.next331, %n.vec325
  br i1 %i.ok, label %middle.block332, label %vector.body328, !llvm.loop !106

middle.block332:                                  ; preds = %vector.body328
  %cmp.n333 = icmp eq i64 %i.nj, %n.vec325
  br i1 %cmp.n333, label %.critedge, label %.lr.ph.i148.preheader335

.lr.ph.i148.preheader335:                         ; preds = %.lr.ph.i148.preheader, %middle.block332
  %.017.i149.ph = phi ptr [ %i.mv, %.lr.ph.i148.preheader ], [ %i.oh, %middle.block332 ]
  br label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %.lr.ph.i148.preheader335, %.lr.ph.i148
  %.017.i149 = phi ptr [ %i.ol, %.lr.ph.i148 ], [ %.017.i149.ph, %.lr.ph.i148.preheader335 ] ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.017.i149, i64 4 ; 2 uses
  store i32 %3, ptr %.017.i149, align 4, !tbaa !27
  %i.om = icmp ult ptr %i.ol, %i.my
  br i1 %i.om, label %.lr.ph.i148, label %.critedge, !llvm.loop !107

.lr.ph19.i151:                                    ; preds = %.lr.ph19.i151.preheader336, %bb.bp
  %.118.i152 = phi ptr [ %i.op, %bb.bp ], [ %.118.i152.ph, %.lr.ph19.i151.preheader336 ] ; 3 uses
  %i.on = load i32, ptr %.118.i152, align 4, !tbaa !27
  %i.oo = icmp eq i32 %i.on, %i.mw
  br i1 %i.oo, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph19.i151
  store i32 %3, ptr %.118.i152, align 4, !tbaa !27
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph19.i151
  %i.op = getelementptr inbounds nuw i8, ptr %.118.i152, i64 4 ; 2 uses
  %i.oq = icmp ult ptr %i.op, %i.my
  br i1 %i.oq, label %.lr.ph19.i151, label %.critedge, !llvm.loop !108

.critedge.sink.split:                             ; preds = %bb.bk, %_ZL14getIndex2BlockP9UNewTrie2ia.exit, %_ZL16allocIndex2BlockP9UNewTrie2.exit.i, %bb.x, %bb.bm, %bb.h, %bb.c, %bb.d, %bb.b
  %.sink = phi i32 [ 30, %bb.d ], [ 7, %bb.h ], [ 30, %bb.c ], [ 7, %bb.bm ], [ 1, %bb.b ], [ 5, %_ZL14getIndex2BlockP9UNewTrie2ia.exit ], [ 7, %bb.bk ], [ 5, %bb.x ], [ 5, %_ZL16allocIndex2BlockP9UNewTrie2.exit.i ]
  store i32 %.sink, ptr %5, align 4, !tbaa !9
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %.lr.ph.i131, %bb.bp, %.lr.ph.i148, %middle.block268, %middle.block281, %middle.block319, %middle.block332, %.critedge.sink.split, %.preheader.i133, %.preheader15.i130, %._crit_edge, %bb.f, %bb.a
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
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144160
  %i.i = load i32, ptr %i.h, align 8, !tbaa !33
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZL14getIndex2BlockP9UNewTrie2ia.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144144 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !34   ; 6 uses
end_hunk_1
