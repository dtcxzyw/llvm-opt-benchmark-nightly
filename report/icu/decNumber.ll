inline.NumInlined: 181
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL11decToStringPK9decNumberPch:bb.a
  br i1 %i.eh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i8 %i.ef, ptr %.6282, align 1, !tbaa !12
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.ei = lshr exact i32 %i.ea, 2
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %i.ej = phi i8 [ %i.ef, %bb.av ], [ 48, %bb.as ] ; 2 uses
  %.17 = phi i32 [ %.16, %bb.av ], [ %.14, %bb.as ] ; 2 uses
  %.2 = phi i32 [ %i.ei, %bb.av ], [ %i.dy, %bb.as ] ; 3 uses
  %.not361 = icmp uge i32 %.17, %.2               ; 3 uses
  %i.ek = select i1 %.not361, i32 %.2, i32 0
  %.18 = sub nuw nsw i32 %.17, %i.ek              ; 2 uses
  %i.el = lshr i32 %.2, 1                         ; 2 uses
  %.not362 = icmp uge i32 %.18, %i.el             ; 3 uses
  %i.em = select i1 %.not362, i32 %i.el, i32 0
  %.19 = sub nuw nsw i32 %.18, %i.em
  %i.en = or i1 %.not361, %.not362
  br i1 %i.en, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.eo = add nuw nsw i8 %i.ej, 2
  %i.ep = select i1 %.not361, i8 %i.eo, i8 %i.ej
  %i.eq = zext i1 %.not362 to i8
  %simplifycfg.merge559 = add nuw nsw i8 %i.ep, %i.eq
  store i8 %simplifycfg.merge559, ptr %.6282, align 1, !tbaa !12
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.er = add nsw i32 %.5296, -1
  br label %bb.ap, !llvm.loop !25

bb.az:                                            ; preds = %bb.ad
  store i8 48, ptr %.2278, align 1, !tbaa !12
  %i.es = getelementptr inbounds nuw i8, ptr %.2278, i64 1
  store i8 46, ptr %i.es, align 1, !tbaa !12
  %i.et = getelementptr i8, ptr %.2278, i64 2     ; 2 uses
  %i.eu = icmp slt i32 %.1301, 0
  br i1 %i.eu, label %.lr.ph.preheader, label %.preheader381.preheader

.lr.ph.preheader:                                 ; preds = %bb.az
  %i.ev = xor i32 %.1301, -1
  %i.ew = zext nneg i32 %i.ev to i64              ; 2 uses
  %i.ex = add nuw nsw i64 %i.ew, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.et, i8 48, i64 %i.ex, i1 false), !tbaa !12
  %i.ey = getelementptr i8, ptr %.2278, i64 %i.ew
  %scevgep = getelementptr i8, ptr %i.ey, i64 3
  br label %.preheader381.preheader

.preheader381.preheader:                          ; preds = %.lr.ph.preheader, %bb.az
  %.10286.ph = phi ptr [ %i.et, %bb.az ], [ %scevgep, %.lr.ph.preheader ]
  br label %.preheader381

.preheader381:                                    ; preds = %.preheader381.preheader, %bb.bi
  %.6297 = phi i32 [ %i.ga, %bb.bi ], [ %i.ae, %.preheader381.preheader ] ; 2 uses
  %.10286 = phi ptr [ %i.fz, %bb.bi ], [ %.10286.ph, %.preheader381.preheader ] ; 5 uses
  %.5274.idx = phi i64 [ %.6275.idx, %bb.bi ], [ %.add345, %.preheader381.preheader ] ; 3 uses
  %.20 = phi i32 [ %.26, %bb.bi ], [ %i.ce, %.preheader381.preheader ]
  %i.ez = icmp slt i32 %.6297, 0
  br i1 %i.ez, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %.preheader381
  %i.fa = icmp eq i64 %.5274.idx, 9
  br i1 %i.fa, label %.loopexit377, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.5274.add = add nsw i64 %.5274.idx, -1         ; 2 uses
  %.ptr348 = getelementptr inbounds i8, ptr %0, i64 %.5274.add
  %i.fb = load i8, ptr %.ptr348, align 1, !tbaa !12
  %i.fc = zext i8 %i.fb to i32
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader381, %bb.bb
  %.7298 = phi i32 [ 0, %bb.bb ], [ %.6297, %.preheader381 ] ; 2 uses
  %.6275.idx = phi i64 [ %.5274.add, %bb.bb ], [ %.5274.idx, %.preheader381 ]
  %.21 = phi i32 [ %i.fc, %bb.bb ], [ %.20, %.preheader381 ] ; 4 uses
  store i8 48, ptr %.10286, align 1, !tbaa !12
  %i.fd = zext nneg i32 %.7298 to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !16 ; 2 uses
  %i.fg = shl i32 %i.ff, 1                        ; 2 uses
  %i.fh = icmp ugt i32 %.21, %i.fg
  br i1 %i.fh, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.fi = shl i32 %i.ff, 3                        ; 4 uses
  %.not349 = icmp uge i32 %.21, %i.fi             ; 3 uses
  %i.fj = select i1 %.not349, i8 56, i8 48        ; 2 uses
  %i.fk = select i1 %.not349, i32 %i.fi, i32 0
  %.22 = sub nuw nsw i32 %.21, %i.fk              ; 2 uses
  %i.fl = lshr exact i32 %i.fi, 1                 ; 2 uses
  %.not350 = icmp uge i32 %.22, %i.fl             ; 3 uses
  %i.fm = or disjoint i8 %i.fj, 4
  %i.fn = select i1 %.not350, i8 %i.fm, i8 %i.fj  ; 2 uses
  %i.fo = select i1 %.not350, i32 %i.fl, i32 0
  %.23 = sub nuw nsw i32 %.22, %i.fo
  %i.fp = or i1 %.not349, %.not350
  br i1 %i.fp, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i8 %i.fn, ptr %.10286, align 1, !tbaa !12
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.fq = lshr exact i32 %i.fi, 2
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  %i.fr = phi i8 [ %i.fn, %bb.bf ], [ 48, %bb.bc ] ; 2 uses
  %.24 = phi i32 [ %.23, %bb.bf ], [ %.21, %bb.bc ] ; 2 uses
  %.3 = phi i32 [ %i.fq, %bb.bf ], [ %i.fg, %bb.bc ] ; 3 uses
  %.not351 = icmp uge i32 %.24, %.3               ; 3 uses
  %i.fs = select i1 %.not351, i32 %.3, i32 0
  %.25 = sub nuw nsw i32 %.24, %i.fs              ; 2 uses
  %i.ft = lshr i32 %.3, 1                         ; 2 uses
  %.not352 = icmp uge i32 %.25, %i.ft             ; 3 uses
  %i.fu = select i1 %.not352, i32 %i.ft, i32 0
  %.26 = sub nuw nsw i32 %.25, %i.fu
  %i.fv = or i1 %.not351, %.not352
  br i1 %i.fv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fw = add nuw nsw i8 %i.fr, 2
  %i.fx = select i1 %.not351, i8 %i.fw, i8 %i.fr
  %i.fy = zext i1 %.not352 to i8
  %simplifycfg.merge560 = add nuw nsw i8 %i.fx, %i.fy
  store i8 %simplifycfg.merge560, ptr %.10286, align 1, !tbaa !12
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.fz = getelementptr inbounds nuw i8, ptr %.10286, i64 1
  %i.ga = add nsw i32 %.7298, -1
  br label %.preheader381, !llvm.loop !26

.loopexit377:                                     ; preds = %bb.ba, %bb.aq, %.thread451, %.lr.ph392.preheader
  %.1260449 = phi i32 [ %.1260450, %.lr.ph392.preheader ], [ %.1260450, %.thread451 ], [ %.1260450, %bb.aq ], [ %.1260, %bb.ba ] ; 4 uses
  %.11287 = phi ptr [ %scevgep414, %.lr.ph392.preheader ], [ %i.di, %.thread451 ], [ %.6282, %bb.aq ], [ %.10286, %bb.ba ] ; 4 uses
  %.not363 = icmp eq i32 %.1260449, 0
  br i1 %.not363, label %.loopexit, label %bb.bj

bb.bj:                                            ; preds = %.loopexit377
  store i8 69, ptr %.11287, align 1, !tbaa !12
  %i.gb = getelementptr inbounds nuw i8, ptr %.11287, i64 1 ; 2 uses
  store i8 43, ptr %i.gb, align 1, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %.11287, i64 2 ; 5 uses
  %i.gd = icmp slt i32 %.1260449, 0
  br i1 %i.gd, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i8 45, ptr %i.gb, align 1, !tbaa !12
  %i.ge = sub nsw i32 0, %.1260449
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.27 = phi i32 [ %i.ge, %bb.bk ], [ %.1260449, %bb.bj ] ; 4 uses
  store i8 48, ptr %i.gc, align 1, !tbaa !12
  %i.gf = icmp samesign ugt i32 %.27, 2000000000
  br i1 %i.gf, label %.thread465, label %bb.bm

.thread465:                                       ; preds = %bb.bl
  store i8 52, ptr %i.gc, align 1, !tbaa !12
  %i.gg = add nsw i32 %.27, -1852516352
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %.not366.not = icmp eq i32 %.27, 2000000000
  br i1 %.not366.not, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i8 50, ptr %i.gc, align 1, !tbaa !12
  br label %bb.bo

bb.bo:                                            ; preds = %.thread465, %bb.bn, %bb.bm
  %.4469 = phi i32 [ 1000000000, %bb.bn ], [ 1000000000, %bb.bm ], [ 463129088, %.thread465 ] ; 2 uses
  %i.gh = phi i8 [ 50, %bb.bn ], [ 48, %bb.bm ], [ 52, %.thread465 ] ; 2 uses
  %.32 = phi i32 [ 0, %bb.bn ], [ %.27, %bb.bm ], [ %i.gg, %.thread465 ] ; 3 uses
  %.not367 = icmp samesign ult i32 %.32, %.4469
  br i1 %.not367, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gi = sub nuw nsw i32 %.32, %.4469
  %i.gj = or disjoint i8 %i.gh, 1                 ; 2 uses
  store i8 %i.gj, ptr %i.gc, align 1, !tbaa !12
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.gk = phi i8 [ %i.gj, %bb.bp ], [ %i.gh, %bb.bo ]
  %.33 = phi i32 [ %i.gi, %bb.bp ], [ %.32, %bb.bo ] ; 5 uses
  %i.gl = icmp ne i8 %i.gk, 48                    ; 2 uses
  %spec.select374.idx = zext i1 %i.gl to i64
  %spec.select374 = getelementptr inbounds nuw i8, ptr %i.gc, i64 %spec.select374.idx ; 4 uses
  store i8 48, ptr %spec.select374, align 1, !tbaa !12
  %i.gm = icmp samesign ugt i32 %.33, 200000000
  br i1 %i.gm, label %condstore.split, label %bb.bs

condstore.split:                                  ; preds = %bb.bq
  %.not364.1 = icmp samesign ugt i32 %.33, 799999999 ; 3 uses
  %i.gn = add nsw i32 %.33, -800000000
  %i.go = select i1 %.not364.1, i8 56, i8 48      ; 2 uses
  %.29.1 = select i1 %.not364.1, i32 %i.gn, i32 %.33 ; 3 uses
  %.not365.1 = icmp samesign ugt i32 %.29.1, 399999999 ; 3 uses
  %i.gp = add nsw i32 %.29.1, -400000000
  %i.gq = or disjoint i8 %i.go, 4
  %.ph = select i1 %.not365.1, i8 %i.gq, i8 %i.go ; 3 uses
  %.31.1.ph = select i1 %.not365.1, i32 %i.gp, i32 %.29.1 ; 2 uses
  %i.gr = or i1 %.not364.1, %.not365.1
  br i1 %i.gr, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %condstore.split
  store i8 %.ph, ptr %spec.select374, align 1, !tbaa !12
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %condstore.split, %bb.bq
  %i.gs = phi i8 [ 48, %bb.bq ], [ %.ph, %condstore.split ], [ %.ph, %bb.br ] ; 2 uses
  %.31.1 = phi i32 [ %.33, %bb.bq ], [ %.31.1.ph, %condstore.split ], [ %.31.1.ph, %bb.br ] ; 3 uses
  %.not366.1 = icmp samesign ugt i32 %.31.1, 199999999 ; 3 uses
  %i.gt = add nsw i32 %.31.1, -200000000
  %i.gu = add nuw nsw i8 %i.gs, 2
  %i.gv = select i1 %.not366.1, i8 %i.gu, i8 %i.gs
  %.32.1 = select i1 %.not366.1, i32 %i.gt, i32 %.31.1 ; 3 uses
  %.not367.1 = icmp samesign ugt i32 %.32.1, 99999999 ; 3 uses
  %i.gw = add nsw i32 %.32.1, -100000000
  %i.gx = zext i1 %.not367.1 to i8
  %i.gy = add nuw nsw i8 %i.gv, %i.gx             ; 2 uses
  %.33.1 = select i1 %.not367.1, i32 %i.gw, i32 %.32.1 ; 7 uses
  %i.gz = or i1 %.not366.1, %.not367.1
  br i1 %i.gz, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i8 %i.gy, ptr %spec.select374, align 1, !tbaa !12
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.ha = icmp ne i8 %i.gy, 48
  %or.cond5.1 = or i1 %i.gl, %i.ha                ; 2 uses
  %spec.select374.idx.1 = zext i1 %or.cond5.1 to i64
  %spec.select374.1 = getelementptr inbounds nuw i8, ptr %spec.select374, i64 %spec.select374.idx.1 ; 5 uses
  store i8 48, ptr %spec.select374.1, align 1, !tbaa !12
  %i.hb = icmp samesign ugt i32 %.33.1, 20000000
  br i1 %i.hb, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %.not364.2 = icmp samesign ult i32 %.33.1, 80000000
  br i1 %.not364.2, label %bb.bw, label %.thread473

.thread473:                                       ; preds = %bb.bv
  %i.hc = add nsw i32 %.33.1, -80000000
  br label %.sink.split

bb.bw:                                            ; preds = %bb.bv
  %.not365.2 = icmp samesign ult i32 %.33.1, 40000000
  br i1 %.not365.2, label %.thread476, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hd = add nsw i32 %.33.1, -40000000
  store i8 52, ptr %spec.select374.1, align 1, !tbaa !12
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bu
  %i.he = phi i8 [ 48, %bb.bu ], [ 52, %bb.bx ]   ; 2 uses
  %.31.2 = phi i32 [ %.33.1, %bb.bu ], [ %i.hd, %bb.bx ] ; 3 uses
  %.not366.2 = icmp samesign ult i32 %.31.2, 20000000
  br i1 %.not366.2, label %bb.bz, label %.thread476

.thread476:                                       ; preds = %bb.bw, %bb.by
  %.31.2479 = phi i32 [ %.31.2, %bb.by ], [ %.33.1, %bb.bw ]
  %i.hf = phi i8 [ %i.he, %bb.by ], [ 48, %bb.bw ]
  %i.hg = add nsw i32 %.31.2479, -20000000
  %i.hh = add nuw nsw i8 %i.hf, 2
  br label %.sink.split

.sink.split:                                      ; preds = %.thread476, %.thread473
  %.sink = phi i8 [ 56, %.thread473 ], [ %i.hh, %.thread476 ] ; 2 uses
  %.32.2.ph = phi i32 [ %i.hc, %.thread473 ], [ %i.hg, %.thread476 ]
  store i8 %.sink, ptr %spec.select374.1, align 1, !tbaa !12
  br label %bb.bz

bb.bz:                                            ; preds = %.sink.split, %bb.by
  %i.hi = phi i8 [ %i.he, %bb.by ], [ %.sink, %.sink.split ] ; 2 uses
  %.32.2 = phi i32 [ %.31.2, %bb.by ], [ %.32.2.ph, %.sink.split ] ; 3 uses
  %.not367.2 = icmp samesign ult i32 %.32.2, 10000000
  br i1 %.not367.2, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hj = add nsw i32 %.32.2, -10000000
  %i.hk = add nuw nsw i8 %i.hi, 1                 ; 2 uses
  store i8 %i.hk, ptr %spec.select374.1, align 1, !tbaa !12
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.hl = phi i8 [ %i.hk, %bb.ca ], [ %i.hi, %bb.bz ]
  %.33.2 = phi i32 [ %i.hj, %bb.ca ], [ %.32.2, %bb.bz ] ; 7 uses
  %i.hm = icmp ne i8 %i.hl, 48
  %or.cond5.2 = or i1 %or.cond5.1, %i.hm          ; 2 uses
  %spec.select374.idx.2 = zext i1 %or.cond5.2 to i64
  %spec.select374.2 = getelementptr inbounds nuw i8, ptr %spec.select374.1, i64 %spec.select374.idx.2 ; 5 uses
  store i8 48, ptr %spec.select374.2, align 1, !tbaa !12
  %i.hn = icmp samesign ugt i32 %.33.2, 2000000
  br i1 %i.hn, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %.not364.3 = icmp samesign ult i32 %.33.2, 8000000
  br i1 %.not364.3, label %bb.cd, label %.thread483

.thread483:                                       ; preds = %bb.cc
  %i.ho = add nsw i32 %.33.2, -8000000
  br label %.sink.split562

bb.cd:                                            ; preds = %bb.cc
  %.not365.3 = icmp samesign ult i32 %.33.2, 4000000
  br i1 %.not365.3, label %.thread486, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hp = add nsw i32 %.33.2, -4000000
  store i8 52, ptr %spec.select374.2, align 1, !tbaa !12
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cb
  %i.hq = phi i8 [ 48, %bb.cb ], [ 52, %bb.ce ]   ; 2 uses
  %.31.3 = phi i32 [ %.33.2, %bb.cb ], [ %i.hp, %bb.ce ] ; 3 uses
  %.not366.3 = icmp samesign ult i32 %.31.3, 2000000
  br i1 %.not366.3, label %bb.cg, label %.thread486

.thread486:                                       ; preds = %bb.cd, %bb.cf
  %.31.3489 = phi i32 [ %.31.3, %bb.cf ], [ %.33.2, %bb.cd ]
  %i.hr = phi i8 [ %i.hq, %bb.cf ], [ 48, %bb.cd ]
  %i.hs = add nsw i32 %.31.3489, -2000000
  %i.ht = add nuw nsw i8 %i.hr, 2
  br label %.sink.split562

.sink.split562:                                   ; preds = %.thread486, %.thread483
  %.sink564 = phi i8 [ 56, %.thread483 ], [ %i.ht, %.thread486 ] ; 2 uses
  %.32.3.ph = phi i32 [ %i.ho, %.thread483 ], [ %i.hs, %.thread486 ]
  store i8 %.sink564, ptr %spec.select374.2, align 1, !tbaa !12
  br label %bb.cg

bb.cg:                                            ; preds = %.sink.split562, %bb.cf
  %i.hu = phi i8 [ %i.hq, %bb.cf ], [ %.sink564, %.sink.split562 ] ; 2 uses
  %.32.3 = phi i32 [ %.31.3, %bb.cf ], [ %.32.3.ph, %.sink.split562 ] ; 3 uses
  %.not367.3 = icmp samesign ult i32 %.32.3, 1000000
  br i1 %.not367.3, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hv = add nsw i32 %.32.3, -1000000
  %i.hw = add nuw nsw i8 %i.hu, 1                 ; 2 uses
  store i8 %i.hw, ptr %spec.select374.2, align 1, !tbaa !12
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.hx = phi i8 [ %i.hw, %bb.ch ], [ %i.hu, %bb.cg ]
  %.33.3 = phi i32 [ %i.hv, %bb.ch ], [ %.32.3, %bb.cg ] ; 7 uses
  %i.hy = icmp ne i8 %i.hx, 48
  %or.cond5.3 = or i1 %or.cond5.2, %i.hy          ; 2 uses
  %spec.select374.idx.3 = zext i1 %or.cond5.3 to i64
  %spec.select374.3 = getelementptr inbounds nuw i8, ptr %spec.select374.2, i64 %spec.select374.idx.3 ; 5 uses
  store i8 48, ptr %spec.select374.3, align 1, !tbaa !12
  %i.hz = icmp samesign ugt i32 %.33.3, 200000
  br i1 %i.hz, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %.not364.4 = icmp samesign ult i32 %.33.3, 800000
  br i1 %.not364.4, label %bb.ck, label %.thread493

.thread493:                                       ; preds = %bb.cj
  %i.ia = add nsw i32 %.33.3, -800000
  br label %.sink.split565

bb.ck:                                            ; preds = %bb.cj
  %.not365.4 = icmp samesign ult i32 %.33.3, 400000
  br i1 %.not365.4, label %.thread496, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ib = add nsw i32 %.33.3, -400000
  store i8 52, ptr %spec.select374.3, align 1, !tbaa !12
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ci
  %i.ic = phi i8 [ 48, %bb.ci ], [ 52, %bb.cl ]   ; 2 uses
  %.31.4 = phi i32 [ %.33.3, %bb.ci ], [ %i.ib, %bb.cl ] ; 3 uses
  %.not366.4 = icmp samesign ult i32 %.31.4, 200000
  br i1 %.not366.4, label %bb.cn, label %.thread496

.thread496:                                       ; preds = %bb.ck, %bb.cm
  %.31.4499 = phi i32 [ %.31.4, %bb.cm ], [ %.33.3, %bb.ck ]
  %i.id = phi i8 [ %i.ic, %bb.cm ], [ 48, %bb.ck ]
  %i.ie = add nsw i32 %.31.4499, -200000
  %i.if = add nuw nsw i8 %i.id, 2
  br label %.sink.split565

.sink.split565:                                   ; preds = %.thread496, %.thread493
  %.sink567 = phi i8 [ 56, %.thread493 ], [ %i.if, %.thread496 ] ; 2 uses
  %.32.4.ph = phi i32 [ %i.ia, %.thread493 ], [ %i.ie, %.thread496 ]
  store i8 %.sink567, ptr %spec.select374.3, align 1, !tbaa !12
  br label %bb.cn

bb.cn:                                            ; preds = %.sink.split565, %bb.cm
  %i.ig = phi i8 [ %i.ic, %bb.cm ], [ %.sink567, %.sink.split565 ] ; 2 uses
  %.32.4 = phi i32 [ %.31.4, %bb.cm ], [ %.32.4.ph, %.sink.split565 ] ; 3 uses
  %.not367.4 = icmp samesign ult i32 %.32.4, 100000
  br i1 %.not367.4, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ih = add nsw i32 %.32.4, -100000
  %i.ii = add nuw nsw i8 %i.ig, 1                 ; 2 uses
  store i8 %i.ii, ptr %spec.select374.3, align 1, !tbaa !12
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ij = phi i8 [ %i.ii, %bb.co ], [ %i.ig, %bb.cn ]
  %.33.4 = phi i32 [ %i.ih, %bb.co ], [ %.32.4, %bb.cn ] ; 7 uses
  %i.ik = icmp ne i8 %i.ij, 48
  %or.cond5.4 = or i1 %or.cond5.3, %i.ik          ; 2 uses
  %spec.select374.idx.4 = zext i1 %or.cond5.4 to i64
  %spec.select374.4 = getelementptr inbounds nuw i8, ptr %spec.select374.3, i64 %spec.select374.idx.4 ; 5 uses
  store i8 48, ptr %spec.select374.4, align 1, !tbaa !12
  %i.il = icmp samesign ugt i32 %.33.4, 20000
  br i1 %i.il, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %.not364.5 = icmp samesign ult i32 %.33.4, 80000
  br i1 %.not364.5, label %bb.cr, label %.thread503
end_hunk_0
