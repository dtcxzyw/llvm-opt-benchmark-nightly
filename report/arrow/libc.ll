Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/libc?download=true
inline.NumInlined: 24
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_mi_vsnprintf:bb.a
bb.ak:                                            ; preds = %bb.aj
  br i1 %i.cg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ch = load ptr, ptr %i.g, align 8
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr i8, ptr %i.ch, i64 %i.ci
  %i.ck = add nuw nsw i32 %i.cf, 8
  store i32 %i.ck, ptr %3, align 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.cl = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  store ptr %i.cm, ptr %i.f, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cn = phi ptr [ %i.cj, %bb.al ], [ %i.cl, %bb.am ]
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !24
  br label %bb.bh

bb.ao:                                            ; preds = %bb.aj
  br i1 %i.cg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cp = load ptr, ptr %i.g, align 8
  %i.cq = zext nneg i32 %i.cf to i64
  %i.cr = getelementptr i8, ptr %i.cp, i64 %i.cq
  %i.cs = add nuw nsw i32 %i.cf, 8
  store i32 %i.cs, ptr %3, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ct = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  store ptr %i.cu, ptr %i.f, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cv = phi ptr [ %i.cr, %bb.ap ], [ %i.ct, %bb.aq ]
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !24
  br label %bb.bh

bb.as:                                            ; preds = %bb.aj
  br i1 %i.cg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.cx = load ptr, ptr %i.g, align 8
  %i.cy = zext nneg i32 %i.cf to i64
  %i.cz = getelementptr i8, ptr %i.cx, i64 %i.cy
  %i.da = add nuw nsw i32 %i.cf, 8
  store i32 %i.da, ptr %3, align 8
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.db = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  store ptr %i.dc, ptr %i.f, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.dd = phi ptr [ %i.cz, %bb.at ], [ %i.db, %bb.au ]
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !26
  br label %bb.bh

bb.aw:                                            ; preds = %bb.aj
  br i1 %i.cg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.df = load ptr, ptr %i.g, align 8
  %i.dg = zext nneg i32 %i.cf to i64
  %i.dh = getelementptr i8, ptr %i.df, i64 %i.dg
  %i.di = add nuw nsw i32 %i.cf, 8
  store i32 %i.di, ptr %3, align 8
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.dj = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  store ptr %i.dk, ptr %i.f, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dl = phi ptr [ %i.dh, %bb.ax ], [ %i.dj, %bb.ay ]
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !24
  br label %bb.bh

bb.ba:                                            ; preds = %bb.aj
  br i1 %i.cg, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.dn = load ptr, ptr %i.g, align 8
  %i.do = zext nneg i32 %i.cf to i64
  %i.dp = getelementptr i8, ptr %i.dn, i64 %i.do
  %i.dq = add nuw nsw i32 %i.cf, 8
  store i32 %i.dq, ptr %3, align 8
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.dr = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  store ptr %i.ds, ptr %i.f, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.dt = phi ptr [ %i.dp, %bb.bb ], [ %i.dr, %bb.bc ]
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7
  %i.dv = zext i32 %i.du to i64
  br label %bb.bh

bb.be:                                            ; preds = %bb.ai
  %i.dw = load i32, ptr %3, align 8               ; 3 uses
  %i.dx = icmp ult i32 %i.dw, 41
  br i1 %i.dx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.dy = load ptr, ptr %i.g, align 8
  %i.dz = zext nneg i32 %i.dw to i64
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.dz
  %i.eb = add nuw nsw i32 %i.dw, 8
  store i32 %i.eb, ptr %3, align 8
  br label %.lr.ph.i284

bb.bg:                                            ; preds = %bb.be
  %i.ec = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  store ptr %i.ed, ptr %i.f, align 8
  br label %.lr.ph.i284

.lr.ph.i284:                                      ; preds = %bb.bg, %bb.bf
  %i.ee = phi ptr [ %i.ea, %bb.bf ], [ %i.ec, %bb.bg ]
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !24
  %i.eg = getelementptr inbounds nuw i8, ptr %.0337377, i64 1 ; 3 uses
  store i8 48, ptr %.0337377, align 1, !tbaa !8
  %i.eh = icmp ult ptr %i.eg, %i.e
  br i1 %i.eh, label %.lr.ph.i284.1, label %mi_outs.exit287

.lr.ph.i284.1:                                    ; preds = %.lr.ph.i284
  %i.ei = getelementptr inbounds nuw i8, ptr %.0337377, i64 2
  store i8 120, ptr %i.eg, align 1, !tbaa !8
  br label %mi_outs.exit287

mi_outs.exit287:                                  ; preds = %.lr.ph.i284.1, %.lr.ph.i284
  %.lcssa482 = phi ptr [ %i.eg, %.lr.ph.i284 ], [ %i.ei, %.lr.ph.i284.1 ]
  %i.ej = tail call i64 @llvm.usub.sat.i64(i64 %.2, i64 2)
  br label %bb.bh

bb.bh:                                            ; preds = %mi_outs.exit287, %bb.an, %bb.av, %bb.bd, %bb.az, %bb.ar
  %.1338 = phi ptr [ %.0337377, %bb.bd ], [ %.0337377, %bb.an ], [ %.0337377, %bb.ar ], [ %.0337377, %bb.av ], [ %.0337377, %bb.az ], [ %.lcssa482, %mi_outs.exit287 ] ; 19 uses
  %.3 = phi i64 [ %.2, %bb.bd ], [ %.2, %bb.an ], [ %.2, %bb.ar ], [ %.2, %bb.av ], [ %.2, %bb.az ], [ %i.ej, %mi_outs.exit287 ] ; 2 uses
  %.0207 = phi i64 [ %i.dv, %bb.bd ], [ %i.co, %bb.an ], [ %i.cw, %bb.ar ], [ %i.de, %bb.av ], [ %i.dm, %bb.az ], [ %i.ef, %mi_outs.exit287 ] ; 4 uses
  %i.ek = icmp eq i64 %.3, 0
  br i1 %i.ek, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  switch i8 %.6226, label %bb.bk [
    i8 120, label %bb.bj
    i8 112, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %i.el = icmp ult i64 %.0207, 4294967296
  %i.em = icmp ult i64 %.0207, 281474976710656
  %i.en = select i1 %i.em, i64 12, i64 16
  %i.eo = select i1 %i.el, i64 8, i64 %i.en
  %spec.store.select = select i1 %i.cb, i64 %i.eo, i64 2
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bh
  %.1216 = phi i8 [ 48, %bb.bj ], [ %.0215, %bb.bi ], [ %.0215, %bb.bh ] ; 5 uses
  %.5 = phi i64 [ %spec.store.select, %bb.bj ], [ 0, %bb.bi ], [ %.3, %bb.bh ] ; 5 uses
  %i.ep = or i1 %i.cc, %i.cb
  %i.eq = select i1 %i.ep, i64 16, i64 10         ; 3 uses
  %i.er = icmp eq i64 %.0207, 0
  br i1 %i.er, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %.not47.i = icmp ne i8 %.0211, 0
  %.not.i.i = icmp ult ptr %.1338, %i.e
  %or.cond.i = select i1 %.not47.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %bb.bm, label %mi_outc.exit.i

bb.bm:                                            ; preds = %bb.bl
  store i8 %.0211, ptr %.1338, align 1, !tbaa !8
  %i.es = getelementptr inbounds nuw i8, ptr %.1338, i64 1
  br label %mi_outc.exit.i

mi_outc.exit.i:                                   ; preds = %bb.bm, %bb.bl
  %.18 = phi ptr [ %i.es, %bb.bm ], [ %.1338, %bb.bl ] ; 4 uses
  %.not.i48.i = icmp ult ptr %.18, %i.e
  br i1 %.not.i48.i, label %bb.bn, label %mi_outs.exit

bb.bn:                                            ; preds = %mi_outc.exit.i
  store i8 48, ptr %.18, align 1, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %.18, i64 1
  br label %mi_outs.exit

bb.bo:                                            ; preds = %bb.bk
  %i.eu = icmp ult ptr %.1338, %i.e
  br i1 %i.eu, label %.split.i, label %mi_outc.exit53.i

.split.i:                                         ; preds = %bb.bo, %mi_outc.exit51.i
  %.16 = phi ptr [ %.17, %mi_outc.exit51.i ], [ %.1338, %bb.bo ]
  %i.ev = phi ptr [ %i.fe, %mi_outc.exit51.i ], [ %.1338, %bb.bo ] ; 4 uses
  %.054.i = phi i64 [ %i.ew, %mi_outc.exit51.i ], [ %.0207, %bb.bo ] ; 3 uses
  %.not.i50.i = icmp ult ptr %i.ev, %i.e
  %i.ew = udiv i64 %.054.i, %i.eq
  %i.ex = urem i64 %.054.i, %i.eq                 ; 2 uses
  br i1 %.not.i50.i, label %bb.bp, label %mi_outc.exit51.i

bb.bp:                                            ; preds = %.split.i
  %i.ey = icmp samesign ult i64 %i.ex, 10
  %i.ez = trunc nuw nsw i64 %i.ex to i8           ; 2 uses
  %i.fa = or disjoint i8 %i.ez, 48
  %i.fb = add nuw nsw i8 %i.ez, 55
  %i.fc = select i1 %i.ey, i8 %i.fa, i8 %i.fb
  store i8 %i.fc, ptr %i.ev, align 1, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 1 ; 2 uses
  br label %mi_outc.exit51.i

mi_outc.exit51.i:                                 ; preds = %bb.bp, %.split.i
  %.17 = phi ptr [ %i.fd, %bb.bp ], [ %.16, %.split.i ] ; 2 uses
  %i.fe = phi ptr [ %i.fd, %bb.bp ], [ %i.ev, %.split.i ] ; 5 uses
  %.not.i289 = icmp ugt i64 %i.eq, %.054.i
  br i1 %.not.i289, label %.split56.us.i, label %.split.i, !llvm.loop !15

.split56.us.i:                                    ; preds = %mi_outc.exit51.i
  %.not46.i = icmp ne i8 %.0211, 0
  %.not.i52.i = icmp ult ptr %i.fe, %i.e
  %or.cond70.i = select i1 %.not46.i, i1 %.not.i52.i, i1 false
  br i1 %or.cond70.i, label %bb.bq, label %mi_outc.exit53.i

bb.bq:                                            ; preds = %.split56.us.i
  store i8 %.0211, ptr %i.fe, align 1, !tbaa !8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 2 uses
  br label %mi_outc.exit53.i

mi_outc.exit53.i:                                 ; preds = %bb.bo, %bb.bq, %.split56.us.i
  %.15 = phi ptr [ %i.ff, %bb.bq ], [ %.17, %.split56.us.i ], [ %.1338, %bb.bo ] ; 3 uses
  %4 = phi ptr [ %i.ff, %bb.bq ], [ %i.fe, %.split56.us.i ], [ %.1338, %bb.bo ]
  %i.fg = ptrtoint ptr %4 to i64
  %i.fh = ptrtoint ptr %.1338 to i64
  %i.fi = sub i64 %i.fg, %i.fh                    ; 3 uses
  %i.fj = lshr i64 %i.fi, 1                       ; 4 uses
  %.not58.i = icmp eq i64 %i.fj, 0
  br i1 %.not58.i, label %mi_outs.exit, label %.lr.ph.i288

.lr.ph.i288:                                      ; preds = %mi_outc.exit53.i
  %i.fk = getelementptr i8, ptr %.1338, i64 %i.fi ; 3 uses
  %i.fl = icmp eq i64 %i.fj, 1
  br i1 %i.fl, label %.epil.preheader486, label %.lr.ph.i288.new

.lr.ph.i288.new:                                  ; preds = %.lr.ph.i288
  %unroll_iter490 = and i64 %i.fj, 9223372036854775806
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.lr.ph.i288.new
  %.04257.i = phi i64 [ 0, %.lr.ph.i288.new ], [ %i.fx, %bb.br ] ; 5 uses
  %niter491 = phi i64 [ 0, %.lr.ph.i288.new ], [ %niter491.next.1, %bb.br ]
  %i.fm = xor i64 %.04257.i, -1
  %i.fn = getelementptr i8, ptr %i.fk, i64 %i.fm  ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !8
  %i.fp = getelementptr inbounds nuw i8, ptr %.1338, i64 %.04257.i ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !8
  store i8 %i.fq, ptr %i.fn, align 1, !tbaa !8
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !8
  %i.fr = xor i64 %.04257.i, -2
  %i.fs = getelementptr i8, ptr %i.fk, i64 %i.fr  ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %.1338, i64 %.04257.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !8
  store i8 %i.fw, ptr %i.fs, align 1, !tbaa !8
  store i8 %i.ft, ptr %i.fv, align 1, !tbaa !8
  %i.fx = add nuw nsw i64 %.04257.i, 2            ; 2 uses
  %niter491.next.1 = add i64 %niter491, 2         ; 2 uses
  %niter491.ncmp.1 = icmp eq i64 %niter491.next.1, %unroll_iter490
  br i1 %niter491.ncmp.1, label %mi_outs.exit.loopexit.unr-lcssa, label %bb.br, !llvm.loop !16

bb.bs:                                            ; preds = %bb.ai, %bb.ai
  %i.fy = add i8 %.0212, -76                      ; 2 uses
  %i.fz = tail call i8 @llvm.fshl.i8(i8 %i.fy, i8 %i.fy, i8 7)
  %i.ga = load i32, ptr %3, align 8               ; 11 uses
  %i.gb = icmp ult i32 %i.ga, 41                  ; 5 uses
  switch i8 %i.fz, label %bb.cj [
    i8 23, label %bb.bt
    i8 20, label %bb.bx
    i8 0, label %bb.cb
    i8 16, label %bb.cf
  ]

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.gb, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.gc = load ptr, ptr %i.g, align 8
  %i.gd = zext nneg i32 %i.ga to i64
  %i.ge = getelementptr i8, ptr %i.gc, i64 %i.gd
  %i.gf = add nuw nsw i32 %i.ga, 8
  store i32 %i.gf, ptr %3, align 8
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.gg = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  store ptr %i.gh, ptr %i.f, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.gi = phi ptr [ %i.ge, %bb.bu ], [ %i.gg, %bb.bv ]
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !24
  br label %bb.cn

bb.bx:                                            ; preds = %bb.bs
  br i1 %i.gb, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.gk = load ptr, ptr %i.g, align 8
  %i.gl = zext nneg i32 %i.ga to i64
  %i.gm = getelementptr i8, ptr %i.gk, i64 %i.gl
  %i.gn = add nuw nsw i32 %i.ga, 8
  store i32 %i.gn, ptr %3, align 8
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.go = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  store ptr %i.gp, ptr %i.f, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.gq = phi ptr [ %i.gm, %bb.by ], [ %i.go, %bb.bz ]
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !24
  br label %bb.cn

bb.cb:                                            ; preds = %bb.bs
  br i1 %i.gb, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.gs = load ptr, ptr %i.g, align 8
  %i.gt = zext nneg i32 %i.ga to i64
  %i.gu = getelementptr i8, ptr %i.gs, i64 %i.gt
  %i.gv = add nuw nsw i32 %i.ga, 8
  store i32 %i.gv, ptr %3, align 8
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.gw = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  store ptr %i.gx, ptr %i.f, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.gy = phi ptr [ %i.gu, %bb.cc ], [ %i.gw, %bb.cd ]
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !26
  br label %bb.cn

bb.cf:                                            ; preds = %bb.bs
  br i1 %i.gb, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ha = load ptr, ptr %i.g, align 8
  %i.hb = zext nneg i32 %i.ga to i64
  %i.hc = getelementptr i8, ptr %i.ha, i64 %i.hb
  %i.hd = add nuw nsw i32 %i.ga, 8
  store i32 %i.hd, ptr %3, align 8
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.he = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 8
  store ptr %i.hf, ptr %i.f, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.hg = phi ptr [ %i.hc, %bb.cg ], [ %i.he, %bb.ch ]
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !24
  br label %bb.cn

bb.cj:                                            ; preds = %bb.bs
  br i1 %i.gb, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.hi = load ptr, ptr %i.g, align 8
  %i.hj = zext nneg i32 %i.ga to i64
  %i.hk = getelementptr i8, ptr %i.hi, i64 %i.hj
  %i.hl = add nuw nsw i32 %i.ga, 8
  store i32 %i.hl, ptr %3, align 8
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.hm = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 8
  store ptr %i.hn, ptr %i.f, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.ho = phi ptr [ %i.hk, %bb.ck ], [ %i.hm, %bb.cl ]
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !7
  %i.hq = sext i32 %i.hp to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.ca, %bb.ci, %bb.cm, %bb.ce, %bb.bw
  %.0206 = phi i64 [ %i.gj, %bb.bw ], [ %i.gr, %bb.ca ], [ %i.gz, %bb.ce ], [ %i.hh, %bb.ci ], [ %i.hq, %bb.cm ] ; 4 uses
  %i.hr = icmp slt i64 %.0206, 0
  br i1 %i.hr, label %.thread348, label %bb.co

.thread348:                                       ; preds = %bb.cn
  %i.hs = sub i64 0, %.0206
  br label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.ht = icmp eq i64 %.0206, 0
  br i1 %i.ht, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %.not47.i304.not = icmp eq i8 %.0211, 0
  br i1 %.not47.i304.not, label %mi_outc.exit.i308, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store i8 %.0211, ptr %.0337377, align 1, !tbaa !8
  %i.hu = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_outc.exit.i308

mi_outc.exit.i308:                                ; preds = %bb.cq, %bb.cp
  %.24 = phi ptr [ %i.hu, %bb.cq ], [ %.0337377, %bb.cp ] ; 4 uses
  %.not.i48.i309 = icmp ult ptr %.24, %i.e
  br i1 %.not.i48.i309, label %bb.cr, label %mi_outs.exit

bb.cr:                                            ; preds = %mi_outc.exit.i308
  store i8 48, ptr %.24, align 1, !tbaa !8
  %i.hv = getelementptr inbounds nuw i8, ptr %.24, i64 1
  br label %mi_outs.exit

bb.cs:                                            ; preds = %.thread348, %bb.co
  %.0352 = phi i8 [ 45, %.thread348 ], [ %.0211, %bb.co ] ; 2 uses
  %.1351 = phi i64 [ %i.hs, %.thread348 ], [ %.0206, %bb.co ]
  br label %.split.i299

.split.i299:                                      ; preds = %bb.cs, %mi_outc.exit51.i302
  %.22 = phi ptr [ %.0337377, %bb.cs ], [ %.23, %mi_outc.exit51.i302 ]
end_hunk_0
