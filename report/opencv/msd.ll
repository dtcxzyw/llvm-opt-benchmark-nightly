Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/msd?download=true
inline.NumInlined: 804
inline.NumDeleted: 382
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv11xfeatures2d16MSDDetector_Impl27contextualSelfDissimilarityERNS_3MatEiiPf:bb.a
  %i.ec = add nsw i32 %i.eb, %2
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ed
  store float %i.ea, ptr %i.ee, align 4, !tbaa !29
  %i.ef = add i32 %2, 1                           ; 5 uses
  %i.eg = icmp slt i32 %i.ef, %3                  ; 2 uses
  br i1 %i.eg, label %.preheader516.lr.ph, label %.preheader513

.preheader516.lr.ph:                              ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit
  %i.eh = sub i32 0, %.fr689
  %.not411575 = icmp slt i32 %.fr689, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.el = xor i32 %.fr689, -1
  %i.em = zext nneg i32 %.fr690 to i64
  %i.en = getelementptr [4 x i8], ptr %.sroa.0469.0, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 -4     ; 8 uses
  %i.ep = add nsw i32 %.fr690, -2                 ; 3 uses
  %i.eq = icmp sgt i32 %.fr690, 1                 ; 2 uses
  %smax750 = tail call i32 @llvm.smax.i32(i32 %.fr690, i32 1)
  %i.er = sext i32 %i.eh to i64
  %i.es = sext i32 %i.m to i64                    ; 2 uses
  %i.et = add i32 %.fr689, 1
  %i.eu = sub i32 %i.ef, %i.d
  %i.ev = sext i32 %.fr689 to i64                 ; 3 uses
  %i.ew = add i32 %.fr689, %i.y                   ; 3 uses
  %i.ex = add i32 %i.ew, 1
  %i.ey = sext i32 %i.ef to i64
  %i.ez = sext i32 %i.d to i64
  %i.fa = sext i32 %i.eb to i64
  %wide.trip.count751 = zext nneg i32 %smax750 to i64 ; 3 uses
  %.not410588 = icmp slt i32 %i.d, 0
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.fa
  %min.iters.check918 = icmp slt i32 %.fr690, 8
  %n.vec920 = and i64 %wide.trip.count751, 2147483640 ; 3 uses
  %cmp.n925 = icmp eq i64 %n.vec920, %wide.trip.count751
  br label %.preheader516

.lr.ph547:                                        ; preds = %.lr.ph547.preheader, %._crit_edge548.split
  %indvars.iv730 = phi i64 [ %i.bk, %.lr.ph547.preheader ], [ %indvars.iv.next731, %._crit_edge548.split ] ; 3 uses
  %.0381551 = phi i32 [ 0, %.lr.ph547.preheader ], [ %.2, %._crit_edge548.split ]
  %i.fb = icmp eq i64 %indvars.iv730, %i.bf
  br label %bb.r

._crit_edge548.split:                             ; preds = %bb.v
  %indvars.iv.next731 = add nuw nsw i64 %indvars.iv730, 1 ; 2 uses
  %lftr.wideiv734 = trunc i64 %indvars.iv.next731 to i32
  %exitcond735.not = icmp eq i32 %i.bm, %lftr.wideiv734
  br i1 %exitcond735.not, label %._crit_edge555.split, label %.lr.ph547, !llvm.loop !117

bb.r:                                             ; preds = %.lr.ph547, %bb.v
  %indvars.iv727 = phi i64 [ %i.bi, %.lr.ph547 ], [ %indvars.iv.next728, %bb.v ] ; 4 uses
  %.1544 = phi i32 [ %.0381551, %.lr.ph547 ], [ %.2, %bb.v ] ; 3 uses
  %i.fc = icmp eq i64 %indvars.iv727, %i.bh
  %or.cond = and i1 %i.fb, %i.fc
  br i1 %or.cond, label %bb.v, label %.lr.ph537

.lr.ph537:                                        ; preds = %bb.r
  %i.fd = sext i32 %.1544 to i64                  ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.fd ; 2 uses
  store i32 0, ptr %i.fe, align 4, !tbaa !47
  %i.ff = load ptr, ptr %i.ax, align 8, !tbaa !51 ; 2 uses
  %invariant.gep897 = getelementptr i8, ptr %i.ff, i64 %indvars.iv727
  br label %.lr.ph531

._crit_edge538.split:                             ; preds = %._crit_edge
  %i.fg = load i32, ptr %i.bb, align 4, !tbaa !47
  %i.fh = icmp slt i32 %i.fn, %i.fg
  br i1 %i.fh, label %bb.t, label %.loopexit517

.lr.ph531:                                        ; preds = %.lr.ph537, %._crit_edge
  %i.fi = phi i32 [ 0, %.lr.ph537 ], [ %i.fn, %._crit_edge ]
  %indvars.iv722 = phi i64 [ %i.be, %.lr.ph537 ], [ %indvars.iv.next723, %._crit_edge ] ; 3 uses
  %i.fj = add nsw i64 %indvars.iv722, %i.bh       ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !144
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fd ; 2 uses
  store i32 0, ptr %i.fm, align 4, !tbaa !47
  %gep898 = getelementptr i8, ptr %invariant.gep897, i64 %indvars.iv722
  %invariant.gep532 = getelementptr i8, ptr %i.ff, i64 %i.fj
  br label %bb.s

._crit_edge:                                      ; preds = %bb.s
  %i.fn = add nuw nsw i32 %i.fi, %i.gc            ; 4 uses
  store i32 %i.fn, ptr %i.fe, align 4, !tbaa !47
  %indvars.iv.next723 = add nsw i64 %indvars.iv722, 1 ; 2 uses
  %lftr.wideiv725 = trunc i64 %indvars.iv.next723 to i32
  %exitcond726.not = icmp eq i32 %i.bg, %lftr.wideiv725
  br i1 %exitcond726.not, label %._crit_edge538.split, label %.lr.ph531, !llvm.loop !120

bb.s:                                             ; preds = %.lr.ph531, %bb.s
  %i.fo = phi i32 [ 0, %.lr.ph531 ], [ %i.gc, %bb.s ]
  %indvars.iv718 = phi i64 [ %i.be, %.lr.ph531 ], [ %indvars.iv.next719, %bb.s ] ; 3 uses
  %i.fp = add nsw i64 %indvars.iv718, %indvars.iv730
  %i.fq = load i32, ptr %i.aw, align 4, !tbaa !52
  %i.fr = icmp slt i32 %i.fq, 2                   ; 2 uses
  %i.fs = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ft = mul i64 %i.fs, %i.fp
  %.sink.idx.i = select i1 %i.fr, i64 0, i64 %i.ft
  %gep = getelementptr i8, ptr %gep898, i64 %.sink.idx.i
  %i.fu = load i8, ptr %gep, align 1, !tbaa !53
  %i.fv = add nsw i64 %indvars.iv718, %i.bf
  %i.fw = mul i64 %i.fs, %i.fv
  %.sink.idx.i424 = select i1 %i.fr, i64 0, i64 %i.fw
  %gep533 = getelementptr i8, ptr %invariant.gep532, i64 %.sink.idx.i424
  %i.fx = zext i8 %i.fu to i32
  %i.fy = load i8, ptr %gep533, align 1, !tbaa !53
  %i.fz = zext i8 %i.fy to i32
  %i.ga = sub nsw i32 %i.fx, %i.fz                ; 2 uses
  %i.gb = mul nsw i32 %i.ga, %i.ga
  %i.gc = add nuw nsw i32 %i.gb, %i.fo            ; 3 uses
  store i32 %i.gc, ptr %i.fm, align 4, !tbaa !47
  %indvars.iv.next719 = add nsw i64 %indvars.iv718, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next719 to i32
  %exitcond721.not = icmp eq i32 %i.bg, %lftr.wideiv
  br i1 %exitcond721.not, label %._crit_edge, label %bb.s, !llvm.loop !121

bb.t:                                             ; preds = %._crit_edge538.split
  store i32 %i.fn, ptr %i.bb, align 4, !tbaa !47
  br i1 %i.bd, label %.lr.ph541, label %.loopexit517

.lr.ph541:                                        ; preds = %bb.t, %bb.u
  %.0375539 = phi i32 [ %i.gj, %bb.u ], [ %i.bc, %bb.t ] ; 3 uses
  %i.gd = zext nneg i32 %.0375539 to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.gd ; 3 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !47 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !47 ; 2 uses
  %i.gi = icmp sgt i32 %i.gf, %i.gh
  br i1 %i.gi, label %bb.u, label %.loopexit517

bb.u:                                             ; preds = %.lr.ph541
  store i32 %i.gh, ptr %i.ge, align 4, !tbaa !47
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !47
  %i.gj = add nsw i32 %.0375539, -1
  %i.gk = icmp sgt i32 %.0375539, 0
  br i1 %i.gk, label %.lr.ph541, label %.loopexit517, !llvm.loop !115

.loopexit517:                                     ; preds = %.lr.ph541, %bb.u, %bb.t, %._crit_edge538.split
  %i.gl = add nsw i32 %.1544, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %.loopexit517
  %.2 = phi i32 [ %.1544, %bb.r ], [ %i.gl, %.loopexit517 ] ; 2 uses
  %indvars.iv.next728 = add nsw i64 %indvars.iv727, 1
  %.not412.not = icmp slt i64 %indvars.iv727, %i.bj
  br i1 %.not412.not, label %bb.r, label %._crit_edge548.split, !llvm.loop !116

.preheader516:                                    ; preds = %.preheader516.lr.ph, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432
  %indvars.iv776 = phi i64 [ %i.ey, %.preheader516.lr.ph ], [ %indvars.iv.next777, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432 ] ; 7 uses
  %indvars.iv758 = phi i32 [ %i.eu, %.preheader516.lr.ph ], [ %indvars.iv.next759, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432 ] ; 2 uses
  %i.gm = sext i32 %indvars.iv758 to i64
  br i1 %.not.i.i.i.i, label %.preheader515, label %.lr.ph574.preheader

.lr.ph574.preheader:                              ; preds = %.preheader516
  br i1 %min.iters.check918, label %.lr.ph574.preheader955, label %vector.body921

vector.body921:                                   ; preds = %.lr.ph574.preheader, %vector.body921
  %index922 = phi i64 [ %index.next923, %vector.body921 ], [ 0, %.lr.ph574.preheader ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index922 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.gn, align 4, !tbaa !47
  store <4 x i32> splat (i32 2147483647), ptr %i.go, align 4, !tbaa !47
  %index.next923 = add nuw i64 %index922, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next923, %n.vec920
  br i1 %i.gp, label %middle.block924, label %vector.body921, !llvm.loop !122

middle.block924:                                  ; preds = %vector.body921
  br i1 %cmp.n925, label %.preheader515, label %.lr.ph574.preheader955

.lr.ph574.preheader955:                           ; preds = %.lr.ph574.preheader, %middle.block924
  %indvars.iv747.ph = phi i64 [ 0, %.lr.ph574.preheader ], [ %n.vec920, %middle.block924 ]
  br label %.lr.ph574

.preheader513:                                    ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit
  %i.gq = sub nsw i32 %i.j, %i.m                  ; 2 uses
  %.0382679 = add nsw i32 %i.m, 1                 ; 2 uses
  %i.gr = icmp slt i32 %.0382679, %i.gq
  br i1 %i.gr, label %.preheader512.lr.ph, label %.preheader

.preheader512.lr.ph:                              ; preds = %.preheader513
  %i.gs = sub i32 %2, %i.d                        ; 6 uses
  %i.gt = add i32 %i.d, %2                        ; 6 uses
  %.not407624 = icmp slt i32 %i.d, 0              ; 2 uses
  %i.gu = sub i32 0, %.fr689
  %.not408615 = icmp slt i32 %.fr689, 0
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.gy = xor i32 %.fr689, -1                     ; 3 uses
  %i.gz = zext nneg i32 %.fr690 to i64
  %i.ha = getelementptr [4 x i8], ptr %.sroa.0469.0, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.ha, i64 -4     ; 12 uses
  %i.hc = add nsw i32 %.fr690, -2                 ; 4 uses
  %i.hd = icmp sgt i32 %.fr690, 1                 ; 3 uses
  %smax784 = tail call i32 @llvm.smax.i32(i32 %.fr690, i32 1) ; 2 uses
  %i.he = sext i32 %i.gu to i64
  %i.hf = sext i32 %2 to i64                      ; 3 uses
  %i.hg = add i32 %.fr689, 1                      ; 2 uses
  %5 = sext i32 %i.gs to i64
  %i.hh = sext i32 %i.gt to i64
  %i.hi = sext i32 %i.gy to i64
  %i.hj = sext i32 %.fr689 to i64                 ; 6 uses
  %smax803 = tail call i32 @llvm.smax.i32(i32 %i.gt, i32 %i.gs)
  %i.hk = add i32 %i.d, %smax803
  %i.hl = sub i32 %i.hk, %2
  %i.hm = zext i32 %i.hl to i64
  %i.hn = shl nuw nsw i64 %i.hm, 2
  %i.ho = add nuw nsw i64 %i.hn, 4                ; 2 uses
  %i.hp = sub i32 %i.ef, %i.d
  %i.hq = sext i32 %i.ef to i64
  %i.hr = sext i32 %i.d to i64                    ; 2 uses
  %i.hs = sext i32 %.0382679 to i64
  %wide.trip.count785 = zext nneg i32 %smax784 to i64 ; 5 uses
  %invariant.gep902 = getelementptr [4 x i8], ptr %4, i64 %i.hf
  %wide.trip.count816 = zext nneg i32 %smax784 to i64
  %min.iters.check938 = icmp slt i32 %.fr690, 8
  %n.vec940 = and i64 %wide.trip.count785, 2147483640 ; 3 uses
  %cmp.n945 = icmp eq i64 %n.vec940, %wide.trip.count785
  %min.iters.check928 = icmp slt i32 %.fr690, 8
  %n.vec930 = and i64 %wide.trip.count785, 2147483640 ; 3 uses
  %cmp.n935 = icmp eq i64 %n.vec930, %wide.trip.count785
  br label %.preheader512

.preheader515:                                    ; preds = %.lr.ph574, %middle.block924, %.preheader516
  br i1 %.not550, label %._crit_edge601.split, label %.lr.ph600

.lr.ph600:                                        ; preds = %.preheader515
  %i.ht = add nsw i64 %indvars.iv776, %i.ez       ; 4 uses
  %i.hu = add nsw i64 %indvars.iv776, %i.ev       ; 2 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.hu ; 4 uses
  %i.hw = trunc nsw i64 %indvars.iv776 to i32     ; 3 uses
  %i.hx = add i32 %i.hw, %i.el
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.hy ; 4 uses
  br i1 %.not410588, label %._crit_edge601.split, label %.lr.ph600.split

.lr.ph600.split:                                  ; preds = %.lr.ph600
  br i1 %.not411575, label %.lr.ph600.split.split.us, label %.lr.ph592

.lr.ph600.split.split.us:                         ; preds = %.lr.ph600.split
  %i.ia = trunc i64 %indvars.iv776 to i32
  %i.ib = sub i32 %i.ia, %i.d                     ; 3 uses
  br i1 %i.eq, label %.lr.ph592.us.us, label %.lr.ph592.us

.lr.ph592.us.us:                                  ; preds = %.lr.ph600.split.split.us, %._crit_edge593.split.us.us.split.us.us
  %.0373598.us.us = phi i32 [ %i.jw, %._crit_edge593.split.us.us.split.us.us ], [ %.fr689, %.lr.ph600.split.split.us ] ; 3 uses
  %.3597.us.us = phi i32 [ %.us-phi606, %._crit_edge593.split.us.us.split.us.us ], [ 0, %.lr.ph600.split.split.us ] ; 2 uses
  %i.ic = icmp eq i32 %.0373598.us.us, %i.m
  %.fr607 = freeze i1 %i.ic
  br i1 %.fr607, label %.lr.ph592.split.us.us.split.us.us.split, label %.lr.ph592.split.us.us.split.us.us.split.us

.lr.ph592.split.us.us.split.us.us.split.us:       ; preds = %.lr.ph592.us.us
  %i.id = load ptr, ptr %i.hv, align 8, !tbaa !144
  %i.ie = load ptr, ptr %i.hz, align 8, !tbaa !144
  %i.if = sext i32 %.3597.us.us to i64
  br label %bb.w

bb.w:                                             ; preds = %.loopexit514.us.us.us.us.us, %.lr.ph592.split.us.us.split.us.us.split.us
  %indvars.iv772 = phi i64 [ %indvars.iv.next773, %.loopexit514.us.us.us.us.us ], [ %i.if, %.lr.ph592.split.us.us.split.us.us.split.us ] ; 4 uses
  %.0372590.us.us.us.us.us = phi i32 [ %i.iw, %.loopexit514.us.us.us.us.us ], [ %i.ib, %.lr.ph592.split.us.us.split.us.us.split.us ] ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.id, i64 %indvars.iv772
  store i32 0, ptr %i.ig, align 4, !tbaa !47
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %indvars.iv772 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !47
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %indvars.iv772
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !47
  %i.il = sub i32 %i.ii, %i.ik                    ; 3 uses
  store i32 %i.il, ptr %i.ih, align 4, !tbaa !47
  %i.im = load i32, ptr %i.eo, align 4, !tbaa !47
  %i.in = icmp slt i32 %i.il, %i.im
  br i1 %i.in, label %.lr.ph586.us.us.us.us.us, label %.loopexit514.us.us.us.us.us

.lr.ph586.us.us.us.us.us:                         ; preds = %bb.w
  store i32 %i.il, ptr %i.eo, align 4, !tbaa !47
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph586.us.us.us.us.us
  %.0370584.us.us.us.us.us = phi i32 [ %i.ep, %.lr.ph586.us.us.us.us.us ], [ %i.iu, %bb.y ] ; 3 uses
  %i.io = zext nneg i32 %.0370584.us.us.us.us.us to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.io ; 3 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !47 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 4 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !47 ; 2 uses
  %i.it = icmp sgt i32 %i.iq, %i.is
  br i1 %i.it, label %bb.y, label %.loopexit514.us.us.us.us.us

bb.y:                                             ; preds = %bb.x
  store i32 %i.is, ptr %i.ip, align 4, !tbaa !47
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !47
  %i.iu = add nsw i32 %.0370584.us.us.us.us.us, -1
  %i.iv = icmp sgt i32 %.0370584.us.us.us.us.us, 0
  br i1 %i.iv, label %bb.x, label %.loopexit514.us.us.us.us.us, !llvm.loop !123

.loopexit514.us.us.us.us.us:                      ; preds = %bb.y, %bb.x, %bb.w
  %indvars.iv.next773 = add nsw i64 %indvars.iv772, 1 ; 2 uses
  %i.iw = add nsw i32 %.0372590.us.us.us.us.us, 1
  %i.ix = sext i32 %.0372590.us.us.us.us.us to i64
  %.not410.us.us.us.us.us.not = icmp sgt i64 %i.ht, %i.ix
  br i1 %.not410.us.us.us.us.us.not, label %bb.w, label %._crit_edge593.split.us.us.split.us.us.loopexit697, !llvm.loop !124

.lr.ph592.split.us.us.split.us.us.split:          ; preds = %.lr.ph592.us.us, %bb.ac
  %.0372590.us.us.us.us = phi i32 [ %i.jt, %bb.ac ], [ %i.ib, %.lr.ph592.us.us ] ; 3 uses
  %.4589.us.us.us.us = phi i32 [ %.5.us.us.us.us, %bb.ac ], [ %.3597.us.us, %.lr.ph592.us.us ] ; 3 uses
  %i.iy = icmp eq i32 %.0372590.us.us.us.us, %i.hw
  br i1 %i.iy, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.lr.ph592.split.us.us.split.us.us.split
  %i.iz = load ptr, ptr %i.hv, align 8, !tbaa !144
  %i.ja = sext i32 %.4589.us.us.us.us to i64      ; 3 uses
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.ja
  store i32 0, ptr %i.jb, align 4, !tbaa !47
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ja ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !47
  %i.je = load ptr, ptr %i.hz, align 8, !tbaa !144
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.ja
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !47
  %i.jh = sub i32 %i.jd, %i.jg                    ; 3 uses
  store i32 %i.jh, ptr %i.jc, align 4, !tbaa !47
  %i.ji = load i32, ptr %i.eo, align 4, !tbaa !47
  %i.jj = icmp slt i32 %i.jh, %i.ji
  br i1 %i.jj, label %.lr.ph586.us.us.us.us, label %.loopexit514.us.us.us.us

.lr.ph586.us.us.us.us:                            ; preds = %bb.z
  store i32 %i.jh, ptr %i.eo, align 4, !tbaa !47
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph586.us.us.us.us
  %.0370584.us.us.us.us = phi i32 [ %i.ep, %.lr.ph586.us.us.us.us ], [ %i.jq, %bb.ab ] ; 3 uses
  %i.jk = zext nneg i32 %.0370584.us.us.us.us to i64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.jk ; 3 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !47 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 4 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !47 ; 2 uses
  %i.jp = icmp sgt i32 %i.jm, %i.jo
  br i1 %i.jp, label %bb.ab, label %.loopexit514.us.us.us.us

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.jo, ptr %i.jl, align 4, !tbaa !47
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !47
  %i.jq = add nsw i32 %.0370584.us.us.us.us, -1
  %i.jr = icmp sgt i32 %.0370584.us.us.us.us, 0
  br i1 %i.jr, label %bb.aa, label %.loopexit514.us.us.us.us, !llvm.loop !123

.loopexit514.us.us.us.us:                         ; preds = %bb.ab, %bb.aa, %bb.z
  %i.js = add nsw i32 %.4589.us.us.us.us, 1
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit514.us.us.us.us, %.lr.ph592.split.us.us.split.us.us.split
  %.5.us.us.us.us = phi i32 [ %.4589.us.us.us.us, %.lr.ph592.split.us.us.split.us.us.split ], [ %i.js, %.loopexit514.us.us.us.us ] ; 2 uses
  %i.jt = add nsw i32 %.0372590.us.us.us.us, 1
  %i.ju = sext i32 %.0372590.us.us.us.us to i64
  %.not410.us.us.us.us.not = icmp sgt i64 %i.ht, %i.ju
  br i1 %.not410.us.us.us.us.not, label %.lr.ph592.split.us.us.split.us.us.split, label %._crit_edge593.split.us.us.split.us.us, !llvm.loop !124

._crit_edge593.split.us.us.split.us.us.loopexit697: ; preds = %.loopexit514.us.us.us.us.us
  %i.jv = trunc nsw i64 %indvars.iv.next773 to i32
  br label %._crit_edge593.split.us.us.split.us.us

._crit_edge593.split.us.us.split.us.us:           ; preds = %bb.ac, %._crit_edge593.split.us.us.split.us.us.loopexit697
  %.us-phi606 = phi i32 [ %i.jv, %._crit_edge593.split.us.us.split.us.us.loopexit697 ], [ %.5.us.us.us.us, %bb.ac ]
  %i.jw = add i32 %.0373598.us.us, 1
  %exitcond775.not = icmp eq i32 %.0373598.us.us, %i.ew
  br i1 %exitcond775.not, label %._crit_edge601.split, label %.lr.ph592.us.us, !llvm.loop !125

.lr.ph592.us:                                     ; preds = %.lr.ph600.split.split.us, %._crit_edge593.split.us.us.split
  %.0373598.us = phi i32 [ %i.kn, %._crit_edge593.split.us.us.split ], [ %.fr689, %.lr.ph600.split.split.us ] ; 3 uses
  %.3597.us = phi i32 [ %.5.us.us, %._crit_edge593.split.us.us.split ], [ 0, %.lr.ph600.split.split.us ]
  %i.jx = icmp eq i32 %.0373598.us, %i.m
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %.lr.ph592.us
  %.0372590.us.us = phi i32 [ %i.ib, %.lr.ph592.us ], [ %i.kl, %bb.ag ] ; 3 uses
  %.4589.us.us = phi i32 [ %.3597.us, %.lr.ph592.us ], [ %.5.us.us, %bb.ag ] ; 3 uses
  %i.jy = icmp eq i32 %.0372590.us.us, %i.hw
  %or.cond420.us.us = and i1 %i.jx, %i.jy
  br i1 %or.cond420.us.us, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jz = load ptr, ptr %i.hv, align 8, !tbaa !144
  %i.ka = sext i32 %.4589.us.us to i64            ; 3 uses
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.ka
  store i32 0, ptr %i.kb, align 4, !tbaa !47
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ka ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !47
  %i.ke = load ptr, ptr %i.hz, align 8, !tbaa !144
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.ka
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !47
  %i.kh = sub i32 %i.kd, %i.kg                    ; 3 uses
  store i32 %i.kh, ptr %i.kc, align 4, !tbaa !47
  %i.ki = load i32, ptr %i.eo, align 4, !tbaa !47
  %i.kj = icmp slt i32 %i.kh, %i.ki
  br i1 %i.kj, label %.loopexit514.us.us, label %bb.af

.loopexit514.us.us:                               ; preds = %bb.ae
  store i32 %i.kh, ptr %i.eo, align 4, !tbaa !47
  br label %bb.af

bb.af:                                            ; preds = %.loopexit514.us.us, %bb.ae
  %i.kk = add nsw i32 %.4589.us.us, 1
  br label %bb.ag

end_hunk_0
begin_hunk_1_@_ZN2cv11xfeatures2d16MSDDetector_Impl27contextualSelfDissimilarityERNS_3MatEiiPf:bb.a
  br i1 %i.na, label %.lr.ph622.us.us.us.us.us, label %.loopexit508.us.us.us.us.us

.lr.ph622.us.us.us.us.us:                         ; preds = %.lr.ph628.split.us.split.us.us.us.split.us
  store i32 0, ptr %i.hb, align 4, !tbaa !47
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.lr.ph622.us.us.us.us.us
  %.0365620.us.us.us.us.us = phi i32 [ %i.hc, %.lr.ph622.us.us.us.us.us ], [ %i.nh, %bb.an ] ; 3 uses
  %i.nb = zext nneg i32 %.0365620.us.us.us.us.us to i64
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.nb ; 3 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !47 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 4 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !47 ; 2 uses
  %i.ng = icmp sgt i32 %i.nd, %i.nf
  br i1 %i.ng, label %bb.an, label %.loopexit508.us.us.us.us.us

bb.an:                                            ; preds = %bb.am
  store i32 %i.nf, ptr %i.nc, align 4, !tbaa !47
  store i32 %i.nd, ptr %i.ne, align 4, !tbaa !47
  %i.nh = add nsw i32 %.0365620.us.us.us.us.us, -1
  %i.ni = icmp sgt i32 %.0365620.us.us.us.us.us, 0
  br i1 %i.ni, label %bb.am, label %.loopexit508.us.us.us.us.us, !llvm.loop !131

.loopexit508.us.us.us.us.us:                      ; preds = %bb.an, %bb.am, %.lr.ph628.split.us.split.us.us.us.split.us
  %indvars.iv.next810 = add nsw i64 %indvars.iv809, 1 ; 2 uses
  %i.nj = add nsw i32 %.0367626.us.us.us.us.us, 1
  %.not407.us.us.us.us.us.not = icmp slt i32 %.0367626.us.us.us.us.us, %i.gt
  br i1 %.not407.us.us.us.us.us.not, label %.lr.ph628.split.us.split.us.us.us.split.us, label %._crit_edge629.split.us.split.us.us.us.loopexit693, !llvm.loop !132

.lr.ph628.split.us.split.us.us.us.split:          ; preds = %.lr.ph628.us.us, %bb.ar
  %.0367626.us.us.us.us = phi i32 [ %i.ny, %bb.ar ], [ %i.gs, %.lr.ph628.us.us ] ; 3 uses
  %.7625.us.us.us.us = phi i32 [ %.8.us.us.us.us, %bb.ar ], [ %.6635.us.us, %.lr.ph628.us.us ] ; 3 uses
  %i.nk = icmp eq i32 %.0367626.us.us.us.us, %2
  br i1 %i.nk, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph628.split.us.split.us.us.us.split
  %i.nl = sext i32 %.7625.us.us.us.us to i64
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.nl
  store i32 0, ptr %i.nm, align 4, !tbaa !47
  %i.nn = load i32, ptr %i.hb, align 4, !tbaa !47
  %i.no = icmp sgt i32 %i.nn, 0
  br i1 %i.no, label %.lr.ph622.us.us.us.us, label %.loopexit508.us.us.us.us

.lr.ph622.us.us.us.us:                            ; preds = %bb.ao
  store i32 0, ptr %i.hb, align 4, !tbaa !47
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.lr.ph622.us.us.us.us
  %.0365620.us.us.us.us = phi i32 [ %i.hc, %.lr.ph622.us.us.us.us ], [ %i.nv, %bb.aq ] ; 3 uses
  %i.np = zext nneg i32 %.0365620.us.us.us.us to i64
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.np ; 3 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !47 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 4 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !47 ; 2 uses
  %i.nu = icmp sgt i32 %i.nr, %i.nt
  br i1 %i.nu, label %bb.aq, label %.loopexit508.us.us.us.us

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.nt, ptr %i.nq, align 4, !tbaa !47
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !47
  %i.nv = add nsw i32 %.0365620.us.us.us.us, -1
  %i.nw = icmp sgt i32 %.0365620.us.us.us.us, 0
  br i1 %i.nw, label %bb.ap, label %.loopexit508.us.us.us.us, !llvm.loop !131

.loopexit508.us.us.us.us:                         ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.nx = add nsw i32 %.7625.us.us.us.us, 1
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit508.us.us.us.us, %.lr.ph628.split.us.split.us.us.us.split
  %.8.us.us.us.us = phi i32 [ %.7625.us.us.us.us, %.lr.ph628.split.us.split.us.us.us.split ], [ %i.nx, %.loopexit508.us.us.us.us ] ; 2 uses
  %i.ny = add nsw i32 %.0367626.us.us.us.us, 1
  %.not407.us.us.us.us.not = icmp slt i32 %.0367626.us.us.us.us, %i.gt
  br i1 %.not407.us.us.us.us.not, label %.lr.ph628.split.us.split.us.us.us.split, label %._crit_edge629.split.us.split.us.us.us, !llvm.loop !132

._crit_edge629.split.us.split.us.us.us.loopexit693: ; preds = %.loopexit508.us.us.us.us.us
  %i.nz = trunc nsw i64 %indvars.iv.next810 to i32
  br label %._crit_edge629.split.us.split.us.us.us

._crit_edge629.split.us.split.us.us.us:           ; preds = %bb.ar, %._crit_edge629.split.us.split.us.us.us.loopexit693
  %.us-phi657 = phi i32 [ %i.nz, %._crit_edge629.split.us.split.us.us.us.loopexit693 ], [ %.8.us.us.us.us, %bb.ar ]
  %i.oa = add nsw i32 %.0368636.us.us, 1
  %i.ob = sext i32 %.0368636.us.us to i64
  %.not404.us.us.not = icmp sgt i64 %i.mp, %i.ob
  br i1 %.not404.us.us.not, label %.lr.ph628.us.us, label %._crit_edge639.split, !llvm.loop !133

.lr.ph628.us:                                     ; preds = %.lr.ph638.split.split.us, %._crit_edge629.split.us.split.us647
  %.0368636.us = phi i32 [ %i.ol, %._crit_edge629.split.us.split.us647 ], [ %i.mu, %.lr.ph638.split.split.us ] ; 3 uses
  %.6635.us = phi i32 [ %.us-phi653, %._crit_edge629.split.us.split.us647 ], [ 0, %.lr.ph638.split.split.us ] ; 2 uses
  %i.oc = icmp eq i32 %.0368636.us, %i.mv
  %.fr654 = freeze i1 %i.oc
  br i1 %.fr654, label %.lr.ph628.split.us.split.us649.split, label %.lr.ph628.split.us.split.us649.split.us

.lr.ph628.split.us.split.us649.split:             ; preds = %.lr.ph628.us, %bb.au
  %.0367626.us.us641 = phi i32 [ %i.oj, %bb.au ], [ %i.gs, %.lr.ph628.us ] ; 3 uses
  %.7625.us.us642 = phi i32 [ %.8.us.us645, %bb.au ], [ %.6635.us, %.lr.ph628.us ] ; 3 uses
  %i.od = icmp eq i32 %.0367626.us.us641, %2
  br i1 %i.od, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.lr.ph628.split.us.split.us649.split
  %i.oe = sext i32 %.7625.us.us642 to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.oe
  store i32 0, ptr %i.of, align 4, !tbaa !47
  %i.og = load i32, ptr %i.hb, align 4, !tbaa !47
  %i.oh = icmp sgt i32 %i.og, 0
  br i1 %i.oh, label %.loopexit508.us.us644, label %bb.at

.loopexit508.us.us644:                            ; preds = %bb.as
  store i32 0, ptr %i.hb, align 4, !tbaa !47
  br label %bb.at

bb.at:                                            ; preds = %.loopexit508.us.us644, %bb.as
  %i.oi = add nsw i32 %.7625.us.us642, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph628.split.us.split.us649.split
  %.8.us.us645 = phi i32 [ %.7625.us.us642, %.lr.ph628.split.us.split.us649.split ], [ %i.oi, %bb.at ] ; 2 uses
  %i.oj = add nsw i32 %.0367626.us.us641, 1
  %.not407.us.us646.not = icmp slt i32 %.0367626.us.us641, %i.gt
  br i1 %.not407.us.us646.not, label %.lr.ph628.split.us.split.us649.split, label %._crit_edge629.split.us.split.us647, !llvm.loop !132

._crit_edge629.split.us.split.us647.loopexit694:  ; preds = %bb.aw
  %i.ok = trunc nsw i64 %indvars.iv.next805 to i32
  br label %._crit_edge629.split.us.split.us647

._crit_edge629.split.us.split.us647:              ; preds = %bb.au, %._crit_edge629.split.us.split.us647.loopexit694
  %.us-phi653 = phi i32 [ %i.ok, %._crit_edge629.split.us.split.us647.loopexit694 ], [ %.8.us.us645, %bb.au ]
  %i.ol = add nsw i32 %.0368636.us, 1
  %i.om = sext i32 %.0368636.us to i64
  %.not404.us.not = icmp sgt i64 %i.mp, %i.om
  br i1 %.not404.us.not, label %.lr.ph628.us, label %._crit_edge639.split, !llvm.loop !133

.lr.ph628.split.us.split.us649.split.us:          ; preds = %.lr.ph628.us
  %.promoted655 = load i32, ptr %i.hb, align 4, !tbaa !47
  %i.on = sext i32 %.6635.us to i64               ; 2 uses
  %i.oo = shl nsw i64 %i.on, 2
  %scevgep802 = getelementptr i8, ptr %i.ad, i64 %i.oo
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep802, i8 0, i64 %i.ho, i1 false), !tbaa !47
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %.lr.ph628.split.us.split.us649.split.us
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %bb.aw ], [ %i.on, %.lr.ph628.split.us.split.us649.split.us ]
  %i.op = phi i32 [ %i.or, %bb.aw ], [ %.promoted655, %.lr.ph628.split.us.split.us649.split.us ] ; 2 uses
  %.0367626.us.us641.us = phi i32 [ %i.os, %bb.aw ], [ %i.gs, %.lr.ph628.split.us.split.us649.split.us ] ; 2 uses
  %i.oq = icmp sgt i32 %i.op, 0
  br i1 %i.oq, label %.loopexit508.us.us644.us, label %bb.aw

.loopexit508.us.us644.us:                         ; preds = %bb.av
  store i32 0, ptr %i.hb, align 4, !tbaa !47
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit508.us.us644.us, %bb.av
  %i.or = phi i32 [ 0, %.loopexit508.us.us644.us ], [ %i.op, %bb.av ]
  %indvars.iv.next805 = add nsw i64 %indvars.iv804, 1 ; 2 uses
  %i.os = add nsw i32 %.0367626.us.us641.us, 1
  %.not407.us.us646.us.not = icmp slt i32 %.0367626.us.us641.us, %i.gt
  br i1 %.not407.us.us646.us.not, label %bb.av, label %._crit_edge629.split.us.split.us647.loopexit694, !llvm.loop !132

.lr.ph613:                                        ; preds = %.lr.ph613.preheader950, %.lr.ph613
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %.lr.ph613 ], [ %indvars.iv781.ph, %.lr.ph613.preheader950 ] ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv781
  store i32 2147483647, ptr %i.ot, align 4, !tbaa !47
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %exitcond786.not = icmp eq i64 %indvars.iv.next782, %wide.trip.count785
  br i1 %exitcond786.not, label %._crit_edge614, label %.lr.ph613, !llvm.loop !134

._crit_edge639.split:                             ; preds = %._crit_edge629.split, %._crit_edge629.split.us.split.us647, %._crit_edge629.split.us.split.us.us.us, %._crit_edge614
  br i1 %.not.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443, label %.lr.ph.i438

.lr.ph.i438:                                      ; preds = %._crit_edge639.split, %.lr.ph.i438
  %indvars.iv.i439 = phi i64 [ %indvars.iv.next.i441, %.lr.ph.i438 ], [ 0, %._crit_edge639.split ] ; 2 uses
  %.0810.i440 = phi float [ %i.ox, %.lr.ph.i438 ], [ 0.000000e+00, %._crit_edge639.split ]
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv.i439
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !47
  %i.ow = sitofp i32 %i.ov to float
  %i.ox = fadd float %.0810.i440, %i.ow           ; 2 uses
  %indvars.iv.next.i441 = add i64 %indvars.iv.i439, 1 ; 2 uses
  %i.oy = and i64 %indvars.iv.next.i441, 4294967295
  %i.oz = icmp ugt i64 %i.ds, %i.oy
  br i1 %i.oz, label %.lr.ph.i438, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443, !llvm.loop !119

_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443: ; preds = %.lr.ph.i438, %._crit_edge639.split
  %.08.lcssa.i442 = phi float [ 0.000000e+00, %._crit_edge639.split ], [ %i.ox, %.lr.ph.i438 ]
  %i.pa = fdiv float %.08.lcssa.i442, %i.dz
  %i.pb = mul nsw i64 %indvars.iv833, %i.ae       ; 2 uses
  %gep903 = getelementptr [4 x i8], ptr %invariant.gep902, i64 %i.pb
  store float %i.pa, ptr %gep903, align 4, !tbaa !29
  br i1 %i.eg, label %.preheader510.lr.ph, label %.loopexit511

.preheader510.lr.ph:                              ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443
  %i.pc = add nsw i64 %indvars.iv833, %i.hj
  %i.pd = sub i32 %.0382.in680, %.fr689
  %i.pe = sext i32 %i.pd to i64
  %invariant.gep900 = getelementptr [4 x i8], ptr %4, i64 %i.pb
  br label %.preheader510

.lr.ph628:                                        ; preds = %.lr.ph638.split, %._crit_edge629.split
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %._crit_edge629.split ], [ %i.ml, %.lr.ph638.split ] ; 5 uses
  %.6635 = phi i32 [ %.8, %._crit_edge629.split ], [ 0, %.lr.ph638.split ]
  %i.pf = icmp eq i64 %indvars.iv798, %indvars.iv833
  %i.pg = add nsw i64 %indvars.iv798, %i.hj
  %6 = add nsw i64 %indvars.iv798, %i.hi
  br label %bb.ax

._crit_edge629.split:                             ; preds = %bb.bb
  %indvars.iv.next799 = add nsw i64 %indvars.iv798, 1
  %.not404.not = icmp slt i64 %indvars.iv798, %i.mp
  br i1 %.not404.not, label %.lr.ph628, label %._crit_edge639.split, !llvm.loop !133

bb.ax:                                            ; preds = %.lr.ph628, %bb.bb
  %indvars.iv792 = phi i64 [ %5, %.lr.ph628 ], [ %indvars.iv.next793, %bb.bb ] ; 4 uses
  %.7625 = phi i32 [ %.6635, %.lr.ph628 ], [ %.8, %bb.bb ] ; 3 uses
  %i.ph = icmp eq i64 %indvars.iv792, %i.hf
  %or.cond421 = and i1 %i.pf, %i.ph
  br i1 %or.cond421, label %bb.bb, label %.lr.ph618

.lr.ph618:                                        ; preds = %bb.ax
  %i.pi = sext i32 %.7625 to i64                  ; 2 uses
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.pi ; 2 uses
  store i32 0, ptr %i.pj, align 4, !tbaa !47
  %i.pk = load ptr, ptr %i.gw, align 8, !tbaa !51 ; 4 uses
  br label %bb.ay

._crit_edge619:                                   ; preds = %bb.ay
  %i.pl = load i32, ptr %i.hb, align 4, !tbaa !47
  %i.pm = icmp slt i32 %i.qw, %i.pl
  br i1 %i.pm, label %bb.az, label %.loopexit508

bb.ay:                                            ; preds = %.lr.ph618, %bb.ay
  %i.pn = phi i32 [ 0, %.lr.ph618 ], [ %i.qw, %bb.ay ]
  %indvars.iv787 = phi i64 [ %i.he, %.lr.ph618 ], [ %indvars.iv.next788, %bb.ay ] ; 3 uses
  %i.po = add nsw i64 %indvars.iv787, %indvars.iv792 ; 2 uses
  %i.pp = load i32, ptr %i.gv, align 4, !tbaa !52
  %i.pq = icmp slt i32 %i.pp, 2                   ; 2 uses
  %i.pr = load i64, ptr %i.gx, align 8            ; 2 uses
  %i.ps = mul i64 %i.pr, %i.pg
  %.sink.idx.i444 = select i1 %i.pq, i64 0, i64 %i.ps
  %.sink.i445 = getelementptr inbounds nuw i8, ptr %i.pk, i64 %.sink.idx.i444
  %i.pt = getelementptr inbounds i8, ptr %.sink.i445, i64 %i.po
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !53
  %i.pv = add nsw i64 %indvars.iv787, %i.hf       ; 3 uses
  %i.pw = mul i64 %i.pr, %i.mq
  %.sink.idx.i446 = select i1 %i.pq, i64 0, i64 %i.pw
  %.sink.i447 = getelementptr inbounds nuw i8, ptr %i.pk, i64 %.sink.idx.i446
  %i.px = getelementptr inbounds i8, ptr %.sink.i447, i64 %i.pv
  %i.py = zext i8 %i.pu to i32
  %i.pz = load i8, ptr %i.px, align 1, !tbaa !53
  %i.qa = zext i8 %i.pz to i32
  %i.qb = sub nsw i32 %i.py, %i.qa                ; 2 uses
  %i.qc = mul nsw i32 %i.qb, %i.qb
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.pv
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !144
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.qe, i64 %i.pi ; 3 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !47
  %i.qh = add nsw i32 %i.qc, %i.qg                ; 2 uses
  store i32 %i.qh, ptr %i.qf, align 4, !tbaa !47
  %i.qi = load i32, ptr %i.gv, align 4, !tbaa !52
  %i.qj = icmp slt i32 %i.qi, 2                   ; 2 uses
  %i.qk = load i64, ptr %i.gx, align 8            ; 2 uses
  %i.ql = mul i64 %i.qk, %6
  %.sink.idx.i448 = select i1 %i.qj, i64 0, i64 %i.ql
  %.sink.i449 = getelementptr inbounds nuw i8, ptr %i.pk, i64 %.sink.idx.i448
  %i.qm = getelementptr inbounds i8, ptr %.sink.i449, i64 %i.po
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !53
  %i.qo = mul i64 %i.qk, %i.ms
  %.sink.idx.i450 = select i1 %i.qj, i64 0, i64 %i.qo
  %.sink.i451 = getelementptr inbounds nuw i8, ptr %i.pk, i64 %.sink.idx.i450
  %i.qp = getelementptr inbounds i8, ptr %.sink.i451, i64 %i.pv
  %i.qq = zext i8 %i.qn to i32
  %i.qr = load i8, ptr %i.qp, align 1, !tbaa !53
  %i.qs = zext i8 %i.qr to i32
  %i.qt = sub nsw i32 %i.qq, %i.qs                ; 2 uses
  %i.qu = mul nsw i32 %i.qt, %i.qt
  %i.qv = sub nsw i32 %i.qh, %i.qu                ; 2 uses
  store i32 %i.qv, ptr %i.qf, align 4, !tbaa !47
  %i.qw = add nsw i32 %i.qv, %i.pn                ; 4 uses
  store i32 %i.qw, ptr %i.pj, align 4, !tbaa !47
  %indvars.iv.next788 = add nsw i64 %indvars.iv787, 1 ; 2 uses
  %lftr.wideiv790 = trunc i64 %indvars.iv.next788 to i32
  %exitcond791.not = icmp eq i32 %i.hg, %lftr.wideiv790
  br i1 %exitcond791.not, label %._crit_edge619, label %bb.ay, !llvm.loop !135

bb.az:                                            ; preds = %._crit_edge619
  store i32 %i.qw, ptr %i.hb, align 4, !tbaa !47
  br i1 %i.hd, label %.lr.ph622, label %.loopexit508

.lr.ph622:                                        ; preds = %bb.az, %bb.ba
  %.0365620 = phi i32 [ %i.rd, %bb.ba ], [ %i.hc, %bb.az ] ; 3 uses
  %i.qx = zext nneg i32 %.0365620 to i64
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.qx ; 3 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !47 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 4 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !47 ; 2 uses
  %i.rc = icmp sgt i32 %i.qz, %i.rb
  br i1 %i.rc, label %bb.ba, label %.loopexit508

bb.ba:                                            ; preds = %.lr.ph622
  store i32 %i.rb, ptr %i.qy, align 4, !tbaa !47
  store i32 %i.qz, ptr %i.ra, align 4, !tbaa !47
  %i.rd = add nsw i32 %.0365620, -1
  %i.re = icmp sgt i32 %.0365620, 0
  br i1 %i.re, label %.lr.ph622, label %.loopexit508, !llvm.loop !131

.loopexit508:                                     ; preds = %.lr.ph622, %bb.ba, %bb.az, %._crit_edge619
  %i.rf = add nsw i32 %.7625, 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ax, %.loopexit508
  %.8 = phi i32 [ %.7625, %bb.ax ], [ %i.rf, %.loopexit508 ] ; 2 uses
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 1
  %.not407.not = icmp slt i64 %indvars.iv792, %i.hh
  br i1 %.not407.not, label %bb.ax, label %._crit_edge629.split, !llvm.loop !132

.preheader510:                                    ; preds = %.preheader510.lr.ph, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458
  %indvars.iv828 = phi i64 [ %i.hq, %.preheader510.lr.ph ], [ %indvars.iv.next829, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458 ] ; 6 uses
  %indvars.iv818 = phi i32 [ %i.hp, %.preheader510.lr.ph ], [ %indvars.iv.next819, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458 ] ; 2 uses
  %i.rg = sext i32 %indvars.iv818 to i64
  br i1 %.not.i.i.i.i, label %.preheader509, label %.lr.ph660.preheader

.lr.ph660.preheader:                              ; preds = %.preheader510
  br i1 %min.iters.check928, label %.lr.ph660.preheader947, label %vector.body931

vector.body931:                                   ; preds = %.lr.ph660.preheader, %vector.body931
  %index932 = phi i64 [ %index.next933, %vector.body931 ], [ 0, %.lr.ph660.preheader ] ; 2 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index932 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.rh, align 4, !tbaa !47
  store <4 x i32> splat (i32 2147483647), ptr %i.ri, align 4, !tbaa !47
  %index.next933 = add nuw i64 %index932, 8       ; 2 uses
  %i.rj = icmp eq i64 %index.next933, %n.vec930
  br i1 %i.rj, label %middle.block934, label %vector.body931, !llvm.loop !136

middle.block934:                                  ; preds = %vector.body931
  br i1 %cmp.n935, label %.preheader509, label %.lr.ph660.preheader947

.lr.ph660.preheader947:                           ; preds = %.lr.ph660.preheader, %middle.block934
  %indvars.iv812.ph = phi i64 [ 0, %.lr.ph660.preheader ], [ %n.vec930, %middle.block934 ]
  br label %.lr.ph660

.preheader509:                                    ; preds = %.lr.ph660, %middle.block934, %.preheader510
  br i1 %.not407624, label %._crit_edge676.split, label %.lr.ph669.preheader

.lr.ph669.preheader:                              ; preds = %.preheader509
  %i.rk = add nsw i64 %indvars.iv828, %i.hr
  %i.rl = add nsw i64 %indvars.iv828, %i.hj       ; 3 uses
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.rl
  %i.rn = trunc nsw i64 %indvars.iv828 to i32
  %i.ro = add i32 %i.rn, %i.gy
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.rp
  br label %.lr.ph669

.lr.ph660:                                        ; preds = %.lr.ph660.preheader947, %.lr.ph660
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %.lr.ph660 ], [ %indvars.iv812.ph, %.lr.ph660.preheader947 ] ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv812
  store i32 2147483647, ptr %i.rr, align 4, !tbaa !47
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, 1 ; 2 uses
  %exitcond817.not = icmp eq i64 %indvars.iv.next813, %wide.trip.count816
  br i1 %exitcond817.not, label %.preheader509, label %.lr.ph660, !llvm.loop !137

._crit_edge676.split:                             ; preds = %._crit_edge670, %.preheader509
  br i1 %.not.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458, label %.lr.ph.i453

.lr.ph.i453:                                      ; preds = %._crit_edge676.split, %.lr.ph.i453
  %indvars.iv.i454 = phi i64 [ %indvars.iv.next.i456, %.lr.ph.i453 ], [ 0, %._crit_edge676.split ] ; 2 uses
  %.0810.i455 = phi float [ %i.rv, %.lr.ph.i453 ], [ 0.000000e+00, %._crit_edge676.split ]
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv.i454
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !47
  %i.ru = sitofp i32 %i.rt to float
  %i.rv = fadd float %.0810.i455, %i.ru           ; 2 uses
  %indvars.iv.next.i456 = add i64 %indvars.iv.i454, 1 ; 2 uses
  %i.rw = and i64 %indvars.iv.next.i456, 4294967295
  %i.rx = icmp ugt i64 %i.ds, %i.rw
  br i1 %i.rx, label %.lr.ph.i453, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458, !llvm.loop !119

_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458: ; preds = %.lr.ph.i453, %._crit_edge676.split
  %.08.lcssa.i457 = phi float [ 0.000000e+00, %._crit_edge676.split ], [ %i.rv, %.lr.ph.i453 ]
  %i.ry = fdiv float %.08.lcssa.i457, %i.dz
  %gep901 = getelementptr [4 x i8], ptr %invariant.gep900, i64 %indvars.iv828
  store float %i.ry, ptr %gep901, align 4, !tbaa !29
  %indvars.iv.next829 = add nsw i64 %indvars.iv828, 1 ; 2 uses
  %indvars.iv.next819 = add i32 %indvars.iv818, 1
  %lftr.wideiv831 = trunc i64 %indvars.iv.next829 to i32
  %exitcond832.not = icmp eq i32 %3, %lftr.wideiv831
  br i1 %exitcond832.not, label %.loopexit511, label %.preheader510, !llvm.loop !138

.lr.ph669:                                        ; preds = %.lr.ph669.preheader, %._crit_edge670
  %indvars.iv824 = phi i64 [ %i.ml, %.lr.ph669.preheader ], [ %indvars.iv.next825, %._crit_edge670 ] ; 5 uses
  %.9673 = phi i32 [ 0, %.lr.ph669.preheader ], [ %.11, %._crit_edge670 ]
  %i.rz = icmp eq i64 %indvars.iv824, %indvars.iv833
  %i.sa = add nsw i64 %indvars.iv824, %i.hj
  %i.sb = trunc nsw i64 %indvars.iv824 to i32
  %i.sc = add i32 %i.sb, %i.gy
  %i.sd = sext i32 %i.sc to i64
  br label %bb.bc

._crit_edge670:                                   ; preds = %bb.bg
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, 1
  %.not405.not = icmp slt i64 %indvars.iv824, %i.mp
  br i1 %.not405.not, label %.lr.ph669, label %._crit_edge676.split, !llvm.loop !139

bb.bc:                                            ; preds = %.lr.ph669, %bb.bg
  %indvars.iv820 = phi i64 [ %i.rg, %.lr.ph669 ], [ %indvars.iv.next821, %bb.bg ] ; 4 uses
  %.10666 = phi i32 [ %.9673, %.lr.ph669 ], [ %.11, %bb.bg ] ; 3 uses
  %i.se = icmp eq i64 %indvars.iv820, %indvars.iv828
  %or.cond422 = and i1 %i.rz, %i.se
  br i1 %or.cond422, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.sf = add nsw i64 %indvars.iv820, %i.hj       ; 2 uses
  %i.sg = load i32, ptr %i.gv, align 4, !tbaa !52
  %i.sh = icmp slt i32 %i.sg, 2                   ; 2 uses
  %i.si = load ptr, ptr %i.gw, align 8, !tbaa !51 ; 4 uses
  %i.sj = load i64, ptr %i.gx, align 8            ; 2 uses
  %i.sk = mul i64 %i.sj, %i.sa
  %.sink.idx.i459 = select i1 %i.sh, i64 0, i64 %i.sk
  %.sink.i460 = getelementptr inbounds nuw i8, ptr %i.si, i64 %.sink.idx.i459
  %i.sl = getelementptr inbounds i8, ptr %.sink.i460, i64 %i.sf
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !53
  %i.sn = mul i64 %i.sj, %i.pc
  %.sink.idx.i461 = select i1 %i.sh, i64 0, i64 %i.sn
  %.sink.i462 = getelementptr inbounds nuw i8, ptr %i.si, i64 %.sink.idx.i461
  %i.so = getelementptr inbounds i8, ptr %.sink.i462, i64 %i.rl
  %i.sp = zext i8 %i.sm to i32
  %i.sq = load i8, ptr %i.so, align 1, !tbaa !53
  %i.sr = zext i8 %i.sq to i32
  %i.ss = sub nsw i32 %i.sp, %i.sr                ; 2 uses
  %i.st = mul nsw i32 %i.ss, %i.ss
  %i.su = load ptr, ptr %i.rm, align 8, !tbaa !144
  %i.sv = sext i32 %.10666 to i64                 ; 3 uses
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.sv ; 3 uses
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !47
  %i.sy = add nsw i32 %i.st, %i.sx                ; 2 uses
  store i32 %i.sy, ptr %i.sw, align 4, !tbaa !47
  %i.sz = load i32, ptr %i.gv, align 4, !tbaa !52
  %i.ta = icmp slt i32 %i.sz, 2                   ; 2 uses
  %i.tb = load i64, ptr %i.gx, align 8            ; 2 uses
  %i.tc = mul i64 %i.tb, %i.sd
  %.sink.idx.i463 = select i1 %i.ta, i64 0, i64 %i.tc
  %.sink.i464 = getelementptr inbounds nuw i8, ptr %i.si, i64 %.sink.idx.i463
  %i.td = getelementptr inbounds i8, ptr %.sink.i464, i64 %i.sf
  %i.te = load i8, ptr %i.td, align 1, !tbaa !53
  %i.tf = mul i64 %i.tb, %i.pe
  %.sink.idx.i465 = select i1 %i.ta, i64 0, i64 %i.tf
  %.sink.i466 = getelementptr inbounds nuw i8, ptr %i.si, i64 %.sink.idx.i465
  %i.tg = getelementptr inbounds i8, ptr %.sink.i466, i64 %i.rl
  %i.th = zext i8 %i.te to i32
  %i.ti = load i8, ptr %i.tg, align 1, !tbaa !53
  %i.tj = zext i8 %i.ti to i32
  %i.tk = sub nsw i32 %i.th, %i.tj                ; 2 uses
  %i.tl = mul nsw i32 %i.tk, %i.tk
  %i.tm = sub nsw i32 %i.sy, %i.tl                ; 2 uses
  store i32 %i.tm, ptr %i.sw, align 4, !tbaa !47
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.sv ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !47
  %i.tp = add nsw i32 %i.tm, %i.to
  %i.tq = load ptr, ptr %i.rq, align 8, !tbaa !144
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.tq, i64 %i.sv
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !47
  %i.tt = sub i32 %i.tp, %i.ts                    ; 3 uses
  store i32 %i.tt, ptr %i.tn, align 4, !tbaa !47
  %i.tu = load i32, ptr %i.hb, align 4, !tbaa !47
  %i.tv = icmp slt i32 %i.tt, %i.tu
  br i1 %i.tv, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.bd
  store i32 %i.tt, ptr %i.hb, align 4, !tbaa !47
  br i1 %i.hd, label %.lr.ph663, label %.loopexit

.lr.ph663:                                        ; preds = %bb.be, %bb.bf
  %.0361661 = phi i32 [ %i.uc, %bb.bf ], [ %i.hc, %bb.be ] ; 3 uses
  %i.tw = zext nneg i32 %.0361661 to i64
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.tw ; 3 uses
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !47 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 4 ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !47 ; 2 uses
  %i.ub = icmp sgt i32 %i.ty, %i.ua
  br i1 %i.ub, label %bb.bf, label %.loopexit

bb.bf:                                            ; preds = %.lr.ph663
  store i32 %i.ua, ptr %i.tx, align 4, !tbaa !47
  store i32 %i.ty, ptr %i.tz, align 4, !tbaa !47
  %i.uc = add nsw i32 %.0361661, -1
  %i.ud = icmp sgt i32 %.0361661, 0
  br i1 %i.ud, label %.lr.ph663, label %.loopexit, !llvm.loop !140

.loopexit:                                        ; preds = %.lr.ph663, %bb.bf, %bb.be, %bb.bd
  %i.ue = add nsw i32 %.10666, 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %.loopexit
  %.11 = phi i32 [ %.10666, %bb.bc ], [ %i.ue, %.loopexit ] ; 2 uses
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, 1
  %.not406.not = icmp slt i64 %indvars.iv820, %i.rk
  br i1 %.not406.not, label %bb.bc, label %._crit_edge670, !llvm.loop !141

.lr.ph686:                                        ; preds = %.lr.ph686.preheader, %bb.bi
  %indvars.iv838 = phi i64 [ 0, %.lr.ph686.preheader ], [ %indvars.iv.next839, %bb.bi ] ; 2 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv838
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !144 ; 2 uses
  %i.uh = icmp eq ptr %i.ug, null
  br i1 %i.uh, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph686
  tail call void @_ZdaPv(ptr noundef nonnull %i.ug) #24
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph686, %bb.bh
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1 ; 2 uses
  %exitcond842.not = icmp eq i64 %indvars.iv.next839, %wide.trip.count841
  br i1 %exitcond842.not, label %._crit_edge687, label %.lr.ph686, !llvm.loop !142
end_hunk_1
