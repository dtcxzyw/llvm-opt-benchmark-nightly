inline.NumInlined: 188
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9NCompress6NBZip211CThreadInfo11EncodeBlockEPKhj:bb.a
bb.l:                                             ; preds = %bb.k
  %i.dr = load ptr, ptr %i.de, align 8, !tbaa !66
  %i.ds = load i32, ptr %i.db, align 8, !tbaa !68 ; 2 uses
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.db, align 8, !tbaa !68
  %i.du = zext i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.du
  store i8 %i.dn, ptr %i.dv, align 1, !tbaa !54
  store i32 8, ptr %i.dc, align 4, !tbaa !69
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dw = phi i32 [ 8, %bb.l ], [ %i.dq, %bb.k ]
  %i.dx = icmp sgt i32 %i.dh, 0
  br i1 %i.dx, label %bb.k, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit337, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit337: ; preds = %bb.m
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 2 uses
  %exitcond480.not = icmp eq i64 %indvars.iv.next478, 16
  br i1 %exitcond480.not, label %.preheader407, label %.preheader408, !llvm.loop !108

.preheader407:                                    ; preds = %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit337, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit342
  %indvars.iv481 = phi i64 [ %indvars.iv.next482, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit342 ], [ 0, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit337 ] ; 3 uses
  %i.dy = lshr i64 %indvars.iv481, 4
  %i.dz = and i64 %i.dy, 268435455
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !104, !range !48, !noundef !49
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.n, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit342

bb.n:                                             ; preds = %.preheader407
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv481
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !104, !range !48, !noundef !49
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = load ptr, ptr %i.f, align 8, !tbaa !71  ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %.pre.i.i.i338 = load i32, ptr %i.eh, align 4, !tbaa !69
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.ek = phi i32 [ %.pre.i.i.i338, %bb.n ], [ %i.fb, %bb.q ] ; 3 uses
  %.014.i.i.i339 = phi i32 [ %i.ef, %bb.n ], [ %i.eu, %bb.q ] ; 2 uses
  %.01213.i.i.i340 = phi i32 [ 1, %bb.n ], [ %i.em, %bb.q ] ; 3 uses
  %i.el = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i340, i32 %i.ek) ; 3 uses
  %i.em = sub nsw i32 %.01213.i.i.i340, %i.el     ; 4 uses
  %i.en = load i8, ptr %i.ei, align 8, !tbaa !70
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl i32 %i.eo, %i.el
  %i.eq = lshr i32 %.014.i.i.i339, %i.em          ; 2 uses
  %i.er = or i32 %i.ep, %i.eq
  %i.es = trunc i32 %i.er to i8                   ; 2 uses
  store i8 %i.es, ptr %i.ei, align 8, !tbaa !70
  %i.et = shl i32 %i.eq, %i.em
  %i.eu = sub i32 %.014.i.i.i339, %i.et
  %i.ev = sub nsw i32 %i.ek, %i.el                ; 2 uses
  store i32 %i.ev, ptr %i.eh, align 4, !tbaa !69
  %.not.i.i.i341 = icmp sgt i32 %i.ek, %.01213.i.i.i340
  br i1 %.not.i.i.i341, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ew = load ptr, ptr %i.ej, align 8, !tbaa !66
  %i.ex = load i32, ptr %i.eg, align 8, !tbaa !68 ; 2 uses
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr %i.eg, align 8, !tbaa !68
  %i.ez = zext i32 %i.ex to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ez
  store i8 %i.es, ptr %i.fa, align 1, !tbaa !54
  store i32 8, ptr %i.eh, align 4, !tbaa !69
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fb = phi i32 [ 8, %bb.p ], [ %i.ev, %bb.o ]
  %i.fc = icmp sgt i32 %i.em, 0
  br i1 %i.fc, label %bb.o, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit342, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit342: ; preds = %bb.q, %.preheader407
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1 ; 2 uses
  %exitcond484.not = icmp eq i64 %indvars.iv.next482, 256
  br i1 %exitcond484.not, label %bb.r, label %.preheader407, !llvm.loop !109

bb.r:                                             ; preds = %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !24 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1032) %i.c, i8 0, i64 1032, i1 false), !tbaa !4
  %i.ff = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.fg = getelementptr inbounds i8, ptr %1, i64 -1
  %scevgep = getelementptr inbounds nuw i8, ptr %3, i64 1
  %umax = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  %wide.trip.count491 = zext i32 %umax to i64     ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.thread, %bb.r
  %indvars.iv488.ph = phi i64 [ %indvars.iv.next489610, %.thread ], [ 0, %bb.r ]
  %.0245.ph = phi i32 [ %i.go, %.thread ], [ 0, %bb.r ] ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %.outer, %bb.v
  %indvars.iv488 = phi i64 [ %indvars.iv.next489, %bb.v ], [ %indvars.iv488.ph, %.outer ] ; 3 uses
  %.0258 = phi i32 [ %i.gl, %bb.v ], [ 0, %.outer ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv488
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !54  ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.t ], [ 0, %bb.s ] ; 9 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !54
  %.not.i = icmp eq i8 %i.fn, %i.fl
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i, label %.preheader28.i, label %bb.t, !llvm.loop !110

.preheader28.i:                                   ; preds = %bb.t
  %i.fo = icmp samesign ugt i64 %indvars.iv.i, 7
  br i1 %i.fo, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader28.i
  %.1.lcssa.i.in = phi i64 [ %indvars.iv.i, %.preheader28.i ], [ %indvars.iv.next34.i, %.lr.ph.i ]
  %i.fp = and i64 %.1.lcssa.i.in, 4294967295      ; 2 uses
  %.not41.i = icmp eq i64 %i.fp, 0
  br i1 %.not41.i, label %_ZN9NCompress12CMtf8Encoder11FindAndMoveEh.exit, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %.preheader.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %scevgep, ptr nonnull align 1 %3, i64 %i.fp, i1 false), !tbaa !54
  br label %_ZN9NCompress12CMtf8Encoder11FindAndMoveEh.exit

.lr.ph.i:                                         ; preds = %.preheader28.i, %.lr.ph.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph.i ], [ %indvars.iv.i, %.preheader28.i ] ; 3 uses
  %i.fq = getelementptr i8, ptr %3, i64 %indvars.iv33.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 -7
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -8 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next34.i
  %i.ft = load <8 x i8>, ptr %i.fs, align 1, !tbaa !54
  store <8 x i8> %i.ft, ptr %i.fr, align 1, !tbaa !54
  %i.fu = icmp sgt i64 %indvars.iv33.i, 15
  br i1 %i.fu, label %.lr.ph.i, label %.preheader.i, !llvm.loop !111

_ZN9NCompress12CMtf8Encoder11FindAndMoveEh.exit:  ; preds = %.lr.ph31.preheader.i, %.preheader.i
  store i8 %i.fl, ptr %3, align 1, !tbaa !54
  %i.fv = icmp eq i64 %indvars.iv.i, 0
  br i1 %i.fv, label %bb.v, label %.preheader406

.preheader406:                                    ; preds = %_ZN9NCompress12CMtf8Encoder11FindAndMoveEh.exit
  %.not424 = icmp eq i32 %.0258, 0
  br i1 %.not424, label %._crit_edge, label %.lr.ph427

.lr.ph427:                                        ; preds = %.preheader406, %.lr.ph427
  %.1246426 = phi i32 [ %i.fz, %.lr.ph427 ], [ %.0245.ph, %.preheader406 ] ; 2 uses
  %.1259425 = phi i32 [ %i.gg, %.lr.ph427 ], [ %.0258, %.preheader406 ]
  %i.fw = add i32 %.1259425, -1                   ; 2 uses
  %i.fx = and i32 %i.fw, 1                        ; 2 uses
  %i.fy = trunc nuw nsw i32 %i.fx to i8
  %i.fz = add i32 %.1246426, 1                    ; 2 uses
  %i.ga = zext i32 %.1246426 to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ga
  store i8 %i.fy, ptr %i.gb, align 1, !tbaa !54
  %i.gc = zext nneg i32 %i.fx to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !4
  %i.gg = lshr i32 %i.fw, 1                       ; 2 uses
  %.not = icmp eq i32 %i.gg, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph427, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph427, %.preheader406
  %.1246.lcssa = phi i32 [ %.0245.ph, %.preheader406 ], [ %i.fz, %.lr.ph427 ] ; 4 uses
  %i.gh = icmp samesign ugt i64 %indvars.iv.i, 253
  br i1 %i.gh, label %bb.u, label %.thread

bb.u:                                             ; preds = %._crit_edge
  %i.gi = add i32 %.1246.lcssa, 1
  %i.gj = zext i32 %.1246.lcssa to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.gj
  store i8 -1, ptr %i.gk, align 1, !tbaa !54
  br label %.thread

bb.v:                                             ; preds = %_ZN9NCompress12CMtf8Encoder11FindAndMoveEh.exit
  %i.gl = add i32 %.0258, 1                       ; 3 uses
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next489, %wide.trip.count491
  br i1 %exitcond492.not, label %.preheader405, label %bb.s, !llvm.loop !113

.thread:                                          ; preds = %._crit_edge, %bb.u
  %.sink638 = phi i8 [ 2, %bb.u ], [ 1, %._crit_edge ]
  %.sink636 = phi i32 [ 2, %bb.u ], [ 1, %._crit_edge ]
  %.sink635 = phi i32 [ %i.gi, %bb.u ], [ %.1246.lcssa, %._crit_edge ]
  %i.gm = trunc i64 %indvars.iv.i to i8
  %i.gn = add i8 %.sink638, %i.gm
  %i.go = add i32 %.1246.lcssa, %.sink636         ; 2 uses
  %i.gp = zext i32 %.sink635 to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.gp
  store i8 %i.gn, ptr %i.gq, align 1, !tbaa !54
  %4 = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.gr = getelementptr i8, ptr %4, i64 4         ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !4
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !4
  %indvars.iv.next489610 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not611 = icmp eq i64 %indvars.iv.next489610, %wide.trip.count491
  br i1 %exitcond492.not611, label %._crit_edge432, label %.outer, !llvm.loop !113

.preheader405:                                    ; preds = %bb.v
  %.not323428 = icmp eq i32 %i.gl, 0
  br i1 %.not323428, label %._crit_edge432, label %.lr.ph431

.lr.ph431:                                        ; preds = %.preheader405, %.lr.ph431
  %.4249430 = phi i32 [ %i.gx, %.lr.ph431 ], [ %.0245.ph, %.preheader405 ] ; 2 uses
  %.3261429 = phi i32 [ %i.he, %.lr.ph431 ], [ %i.gl, %.preheader405 ]
  %i.gu = add i32 %.3261429, -1                   ; 2 uses
  %i.gv = and i32 %i.gu, 1                        ; 2 uses
  %i.gw = trunc nuw nsw i32 %i.gv to i8
  %i.gx = add i32 %.4249430, 1                    ; 2 uses
  %i.gy = zext i32 %.4249430 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.gy
  store i8 %i.gw, ptr %i.gz, align 1, !tbaa !54
  %i.ha = zext nneg i32 %i.gv to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !4
  %i.hd = add i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !4
  %i.he = lshr i32 %i.gu, 1                       ; 2 uses
  %.not323 = icmp eq i32 %i.he, 0
  br i1 %.not323, label %._crit_edge432, label %.lr.ph431, !llvm.loop !114

._crit_edge432:                                   ; preds = %.thread, %.lr.ph431, %.preheader405
  %.4249.lcssa = phi i32 [ %.0245.ph, %.preheader405 ], [ %i.gx, %.lr.ph431 ], [ %i.go, %.thread ] ; 4 uses
  %i.hf = add i32 %.1.1, 2                        ; 7 uses
  %i.hg = icmp slt i32 %.1.1, 254
  br i1 %i.hg, label %vector.ph, label %bb.w

bb.w:                                             ; preds = %._crit_edge432
  %i.hh = add i32 %.4249.lcssa, 1
  %i.hi = zext i32 %.4249.lcssa to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.hi
  store i8 -1, ptr %i.hj, align 1, !tbaa !54
  br label %vector.ph

vector.ph:                                        ; preds = %._crit_edge432, %bb.w
  %.sink644 = phi i8 [ 2, %bb.w ], [ 1, %._crit_edge432 ]
  %.sink642 = phi i32 [ 2, %bb.w ], [ 1, %._crit_edge432 ]
  %.sink641 = phi i32 [ %i.hh, %bb.w ], [ %.4249.lcssa, %._crit_edge432 ]
  %i.hk = trunc i32 %.1.1 to i8
  %i.hl = add i8 %.sink644, %i.hk
  %i.hm = add i32 %.4249.lcssa, %.sink642         ; 5 uses
  %i.hn = zext i32 %.sink641 to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.hn
  store i8 %i.hl, ptr %i.ho, align 1, !tbaa !54
  %i.hp = sext i32 %.1.1 to i64
  %i.hq = getelementptr [4 x i8], ptr %i.c, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 4      ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !4
  %i.ht = add i32 %i.hs, 1
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 1008
  %wide.load666.31 = load <4 x i32>, ptr %i.hu, align 16, !tbaa !4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 976
  %wide.load666.30 = load <4 x i32>, ptr %i.hv, align 16, !tbaa !4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 944
  %wide.load666.29 = load <4 x i32>, ptr %i.hw, align 16, !tbaa !4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 912
  %wide.load666.28 = load <4 x i32>, ptr %i.hx, align 16, !tbaa !4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 880
  %wide.load666.27 = load <4 x i32>, ptr %i.hy, align 16, !tbaa !4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.c, i64 848
  %wide.load666.26 = load <4 x i32>, ptr %i.hz, align 16, !tbaa !4
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 816
  %wide.load666.25 = load <4 x i32>, ptr %i.ia, align 16, !tbaa !4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 784
  %wide.load666.24 = load <4 x i32>, ptr %i.ib, align 16, !tbaa !4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 752
  %wide.load666.23 = load <4 x i32>, ptr %i.ic, align 16, !tbaa !4
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %wide.load666.22 = load <4 x i32>, ptr %i.id, align 16, !tbaa !4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  %wide.load666.21 = load <4 x i32>, ptr %i.ie, align 16, !tbaa !4
  %i.if = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  %wide.load666.20 = load <4 x i32>, ptr %i.if, align 16, !tbaa !4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  %wide.load666.19 = load <4 x i32>, ptr %i.ig, align 16, !tbaa !4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %wide.load666.18 = load <4 x i32>, ptr %i.ih, align 16, !tbaa !4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  %wide.load666.17 = load <4 x i32>, ptr %i.ii, align 16, !tbaa !4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %wide.load666.16 = load <4 x i32>, ptr %i.ij, align 16, !tbaa !4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %wide.load666.15 = load <4 x i32>, ptr %i.ik, align 16, !tbaa !4
  %i.il = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %wide.load666.14 = load <4 x i32>, ptr %i.il, align 16, !tbaa !4
  %i.im = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %wide.load666.13 = load <4 x i32>, ptr %i.im, align 16, !tbaa !4
  %i.in = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %wide.load666.12 = load <4 x i32>, ptr %i.in, align 16, !tbaa !4
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %wide.load666.11 = load <4 x i32>, ptr %i.io, align 16, !tbaa !4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %wide.load666.10 = load <4 x i32>, ptr %i.ip, align 16, !tbaa !4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %wide.load666.9 = load <4 x i32>, ptr %i.iq, align 16, !tbaa !4
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %wide.load666.8 = load <4 x i32>, ptr %i.ir, align 16, !tbaa !4
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %wide.load666.7 = load <4 x i32>, ptr %i.is, align 16, !tbaa !4
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %wide.load666.6 = load <4 x i32>, ptr %i.it, align 16, !tbaa !4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %wide.load666.5 = load <4 x i32>, ptr %i.iu, align 16, !tbaa !4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %wide.load666.4 = load <4 x i32>, ptr %i.iv, align 16, !tbaa !4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %wide.load666.3 = load <4 x i32>, ptr %i.iw, align 16, !tbaa !4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %wide.load666.2 = load <4 x i32>, ptr %i.ix, align 16, !tbaa !4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %wide.load666.1 = load <4 x i32>, ptr %i.iy, align 16, !tbaa !4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load666 = load <4 x i32>, ptr %i.iz, align 16, !tbaa !4
  %i.ja = add <4 x i32> %wide.load666.1, %wide.load666
  %i.jb = add <4 x i32> %wide.load666.2, %i.ja
  %i.jc = add <4 x i32> %wide.load666.3, %i.jb
  %i.jd = add <4 x i32> %wide.load666.4, %i.jc
  %i.je = add <4 x i32> %wide.load666.5, %i.jd
  %i.jf = add <4 x i32> %wide.load666.6, %i.je
  %i.jg = add <4 x i32> %wide.load666.7, %i.jf
  %i.jh = add <4 x i32> %wide.load666.8, %i.jg
  %i.ji = add <4 x i32> %wide.load666.9, %i.jh
  %i.jj = add <4 x i32> %wide.load666.10, %i.ji
  %i.jk = add <4 x i32> %wide.load666.11, %i.jj
  %i.jl = add <4 x i32> %wide.load666.12, %i.jk
  %i.jm = add <4 x i32> %wide.load666.13, %i.jl
  %i.jn = add <4 x i32> %wide.load666.14, %i.jm
  %i.jo = add <4 x i32> %wide.load666.15, %i.jn
  %i.jp = add <4 x i32> %wide.load666.16, %i.jo
  %i.jq = add <4 x i32> %wide.load666.17, %i.jp
  %i.jr = add <4 x i32> %wide.load666.18, %i.jq
  %i.js = add <4 x i32> %wide.load666.19, %i.jr
  %i.jt = add <4 x i32> %wide.load666.20, %i.js
  %i.ju = add <4 x i32> %wide.load666.21, %i.jt
  %i.jv = add <4 x i32> %wide.load666.22, %i.ju
  %i.jw = add <4 x i32> %wide.load666.23, %i.jv
  %i.jx = add <4 x i32> %wide.load666.24, %i.jw
  %i.jy = add <4 x i32> %wide.load666.25, %i.jx
  %i.jz = add <4 x i32> %wide.load666.26, %i.jy
  %i.ka = add <4 x i32> %wide.load666.27, %i.jz
  %i.kb = add <4 x i32> %wide.load666.28, %i.ka
  %i.kc = add <4 x i32> %wide.load666.29, %i.kb
  %i.kd = add <4 x i32> %wide.load666.30, %i.kc
  %i.ke = add <4 x i32> %wide.load666.31, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.c, i64 992
  %wide.load.31 = load <4 x i32>, ptr %i.kf, align 16, !tbaa !4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %wide.load.30 = load <4 x i32>, ptr %i.kg, align 16, !tbaa !4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.c, i64 928
  %wide.load.29 = load <4 x i32>, ptr %i.kh, align 16, !tbaa !4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.c, i64 896
  %wide.load.28 = load <4 x i32>, ptr %i.ki, align 16, !tbaa !4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.c, i64 864
  %wide.load.27 = load <4 x i32>, ptr %i.kj, align 16, !tbaa !4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %wide.load.26 = load <4 x i32>, ptr %i.kk, align 16, !tbaa !4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  %wide.load.25 = load <4 x i32>, ptr %i.kl, align 16, !tbaa !4
  %i.km = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  %wide.load.24 = load <4 x i32>, ptr %i.km, align 16, !tbaa !4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.c, i64 736
  %wide.load.23 = load <4 x i32>, ptr %i.kn, align 16, !tbaa !4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %wide.load.22 = load <4 x i32>, ptr %i.ko, align 16, !tbaa !4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.c, i64 672
  %wide.load.21 = load <4 x i32>, ptr %i.kp, align 16, !tbaa !4
  %i.kq = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %wide.load.20 = load <4 x i32>, ptr %i.kq, align 16, !tbaa !4
  %i.kr = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  %wide.load.19 = load <4 x i32>, ptr %i.kr, align 16, !tbaa !4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %wide.load.18 = load <4 x i32>, ptr %i.ks, align 16, !tbaa !4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %wide.load.17 = load <4 x i32>, ptr %i.kt, align 16, !tbaa !4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %wide.load.16 = load <4 x i32>, ptr %i.ku, align 16, !tbaa !4
  %i.kv = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %wide.load.15 = load <4 x i32>, ptr %i.kv, align 16, !tbaa !4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %wide.load.14 = load <4 x i32>, ptr %i.kw, align 16, !tbaa !4
  %i.kx = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %wide.load.13 = load <4 x i32>, ptr %i.kx, align 16, !tbaa !4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %wide.load.12 = load <4 x i32>, ptr %i.ky, align 16, !tbaa !4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %wide.load.11 = load <4 x i32>, ptr %i.kz, align 16, !tbaa !4
  %i.la = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %wide.load.10 = load <4 x i32>, ptr %i.la, align 16, !tbaa !4
  %i.lb = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %wide.load.9 = load <4 x i32>, ptr %i.lb, align 16, !tbaa !4
end_hunk_0
