Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/libc?download=true
inline.NumInlined: 24
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_mi_vsnprintf:bb.a
  %i.by = icmp ne i8 %i.bx, 0
  %i.bz = icmp ult ptr %i.bw, %i.e
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %.lr.ph.i, label %mi_outs.exit, !llvm.loop !17

bb.ai:                                            ; preds = %bb.ac
  %i.cb = icmp eq i8 %.6234, 112                  ; 2 uses
  %i.cc = icmp eq i8 %.6234, 120
  switch i8 %.6234, label %bb.cw [
    i8 120, label %bb.aj
    i8 117, label %bb.aj
    i8 112, label %bb.be
    i8 105, label %bb.bs
    i8 100, label %bb.bs
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai
  %i.cd = add i8 %.0215, -76                      ; 2 uses
  %i.ce = tail call i8 @llvm.fshl.i8(i8 %i.cd, i8 %i.cd, i8 7)
  %i.cf = load i32, ptr %3, align 8               ; 11 uses
  %i.cg = icmp ult i32 %i.cf, 41                  ; 5 uses
  switch i8 %i.ce, label %bb.ba [
    i8 23, label %bb.ak
    i8 20, label %bb.ao
    i8 0, label %bb.as
    i8 16, label %bb.aw
  ]

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
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !18
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
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !18
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
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !20
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
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !18
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
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
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
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %.0337377, i64 1 ; 3 uses
  store i8 48, ptr %.0337377, align 1, !tbaa !7
  %i.eh = icmp ult ptr %i.eg, %i.e
  br i1 %i.eh, label %.lr.ph.i284.1, label %mi_outs.exit287

.lr.ph.i284.1:                                    ; preds = %.lr.ph.i284
  %i.ei = getelementptr inbounds nuw i8, ptr %.0337377, i64 2
  store i8 120, ptr %i.eg, align 1, !tbaa !7
  br label %mi_outs.exit287

mi_outs.exit287:                                  ; preds = %.lr.ph.i284.1, %.lr.ph.i284
  %.lcssa483 = phi ptr [ %i.eg, %.lr.ph.i284 ], [ %i.ei, %.lr.ph.i284.1 ]
  %i.ej = tail call i64 @llvm.usub.sat.i64(i64 %.2218, i64 2)
  br label %bb.bh

bb.bh:                                            ; preds = %mi_outs.exit287, %bb.an, %bb.av, %bb.bd, %bb.az, %bb.ar
  %.1338 = phi ptr [ %.0337377, %bb.bd ], [ %.0337377, %bb.an ], [ %.0337377, %bb.ar ], [ %.0337377, %bb.av ], [ %.0337377, %bb.az ], [ %.lcssa483, %mi_outs.exit287 ] ; 19 uses
  %.3219 = phi i64 [ %.2218, %bb.bd ], [ %.2218, %bb.an ], [ %.2218, %bb.ar ], [ %.2218, %bb.av ], [ %.2218, %bb.az ], [ %i.ej, %mi_outs.exit287 ] ; 2 uses
  %.0208 = phi i64 [ %i.dv, %bb.bd ], [ %i.co, %bb.an ], [ %i.cw, %bb.ar ], [ %i.de, %bb.av ], [ %i.dm, %bb.az ], [ %i.ef, %mi_outs.exit287 ] ; 4 uses
  %i.ek = icmp eq i64 %.3219, 0
  br i1 %i.ek, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  switch i8 %.6234, label %bb.bk [
    i8 120, label %bb.bj
    i8 112, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %i.el = icmp ult i64 %.0208, 4294967296
  %i.em = icmp ult i64 %.0208, 281474976710656
  %i.en = select i1 %i.em, i64 12, i64 16
  %i.eo = select i1 %i.el, i64 8, i64 %i.en
  %spec.store.select = select i1 %i.cb, i64 %i.eo, i64 2
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bh
  %.1224 = phi i8 [ 48, %bb.bj ], [ %.0223, %bb.bi ], [ %.0223, %bb.bh ] ; 5 uses
  %.5221 = phi i64 [ %spec.store.select, %bb.bj ], [ 0, %bb.bi ], [ %.3219, %bb.bh ] ; 5 uses
  %i.ep = or i1 %i.cc, %i.cb                      ; 3 uses
  %i.eq = select i1 %i.ep, i64 16, i64 10
  %i.er = icmp eq i64 %.0208, 0
  br i1 %i.er, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %.not47.i = icmp ne i8 %.0214, 0
  %.not.i.i = icmp ult ptr %.1338, %i.e
  %or.cond.i = select i1 %.not47.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %bb.bm, label %mi_outc.exit.i

bb.bm:                                            ; preds = %bb.bl
  store i8 %.0214, ptr %.1338, align 1, !tbaa !7
  %i.es = getelementptr inbounds nuw i8, ptr %.1338, i64 1
  br label %mi_outc.exit.i

mi_outc.exit.i:                                   ; preds = %bb.bm, %bb.bl
  %.18 = phi ptr [ %i.es, %bb.bm ], [ %.1338, %bb.bl ] ; 4 uses
  %.not.i48.i = icmp ult ptr %.18, %i.e
  br i1 %.not.i48.i, label %bb.bn, label %mi_outs.exit

bb.bn:                                            ; preds = %mi_outc.exit.i
  store i8 48, ptr %.18, align 1, !tbaa !7
  %i.et = getelementptr inbounds nuw i8, ptr %.18, i64 1
  br label %mi_outs.exit

bb.bo:                                            ; preds = %bb.bk
  %i.eu = icmp ult ptr %.1338, %i.e
  br i1 %i.eu, label %.split.i, label %.split56.us.i

.split.i:                                         ; preds = %bb.bo, %mi_outc.exit51.i
  %.16 = phi ptr [ %.17, %mi_outc.exit51.i ], [ %.1338, %bb.bo ]
  %i.ev = phi ptr [ %i.fe, %mi_outc.exit51.i ], [ %.1338, %bb.bo ] ; 4 uses
  %.054.i = phi i64 [ %7, %mi_outc.exit51.i ], [ %.0208, %bb.bo ] ; 5 uses
  %.not.i50.i = icmp ult ptr %i.ev, %i.e
  %i.ew = udiv i64 %.054.i, 10
  %i.ex = urem i64 %.054.i, 10
  br i1 %.not.i50.i, label %bb.bp, label %mi_outc.exit51.i

bb.bp:                                            ; preds = %.split.i
  %4 = and i64 %.054.i, 15
  %5 = select i1 %i.ep, i64 %4, i64 %i.ex         ; 2 uses
  %i.ey = icmp samesign ult i64 %5, 10
  %i.ez = trunc nuw nsw i64 %5 to i8              ; 2 uses
  %i.fa = or disjoint i8 %i.ez, 48
  %i.fb = add nuw nsw i8 %i.ez, 55
  %i.fc = select i1 %i.ey, i8 %i.fa, i8 %i.fb
  store i8 %i.fc, ptr %i.ev, align 1, !tbaa !7
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 1 ; 2 uses
  br label %mi_outc.exit51.i

mi_outc.exit51.i:                                 ; preds = %bb.bp, %.split.i
  %.17 = phi ptr [ %i.fd, %bb.bp ], [ %.16, %.split.i ] ; 2 uses
  %i.fe = phi ptr [ %i.fd, %bb.bp ], [ %i.ev, %.split.i ] ; 2 uses
  %6 = lshr i64 %.054.i, 4
  %7 = select i1 %i.ep, i64 %6, i64 %i.ew
  %.not.i289 = icmp ugt i64 %i.eq, %.054.i
  br i1 %.not.i289, label %.split56.us.i, label %.split.i, !llvm.loop !22

.split56.us.i:                                    ; preds = %mi_outc.exit51.i, %bb.bo
  %.14 = phi ptr [ %.1338, %bb.bo ], [ %.17, %mi_outc.exit51.i ]
  %i.ff = phi ptr [ %.1338, %bb.bo ], [ %i.fe, %mi_outc.exit51.i ] ; 4 uses
  %.not46.i = icmp ne i8 %.0214, 0
  %.not.i52.i = icmp ult ptr %i.ff, %i.e
  %or.cond70.i = select i1 %.not46.i, i1 %.not.i52.i, i1 false
  br i1 %or.cond70.i, label %bb.bq, label %mi_outc.exit53.i

bb.bq:                                            ; preds = %.split56.us.i
  store i8 %.0214, ptr %i.ff, align 1, !tbaa !7
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1 ; 2 uses
  br label %mi_outc.exit53.i

mi_outc.exit53.i:                                 ; preds = %bb.bq, %.split56.us.i
  %.15 = phi ptr [ %i.fg, %bb.bq ], [ %.14, %.split56.us.i ] ; 3 uses
  %i.fh = phi ptr [ %i.fg, %bb.bq ], [ %i.ff, %.split56.us.i ]
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %.1338 to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 3 uses
  %i.fl = lshr i64 %i.fk, 1                       ; 4 uses
  %.not58.i = icmp eq i64 %i.fl, 0
  br i1 %.not58.i, label %mi_outs.exit, label %.lr.ph.i288

.lr.ph.i288:                                      ; preds = %mi_outc.exit53.i
  %i.fm = getelementptr i8, ptr %.1338, i64 %i.fk ; 3 uses
  %i.fn = icmp eq i64 %i.fl, 1
  br i1 %i.fn, label %.epil.preheader487, label %.lr.ph.i288.new

.lr.ph.i288.new:                                  ; preds = %.lr.ph.i288
  %unroll_iter491 = and i64 %i.fl, 9223372036854775806
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.lr.ph.i288.new
  %.04257.i = phi i64 [ 0, %.lr.ph.i288.new ], [ %i.fz, %bb.br ] ; 5 uses
  %niter492 = phi i64 [ 0, %.lr.ph.i288.new ], [ %niter492.next.1, %bb.br ]
  %i.fo = xor i64 %.04257.i, -1
  %i.fp = getelementptr i8, ptr %i.fm, i64 %i.fo  ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !7
  %i.fr = getelementptr inbounds nuw i8, ptr %.1338, i64 %.04257.i ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !7
  store i8 %i.fs, ptr %i.fp, align 1, !tbaa !7
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !7
  %i.ft = xor i64 %.04257.i, -2
  %i.fu = getelementptr i8, ptr %i.fm, i64 %i.ft  ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !7
  %i.fw = getelementptr inbounds nuw i8, ptr %.1338, i64 %.04257.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !7
  store i8 %i.fy, ptr %i.fu, align 1, !tbaa !7
  store i8 %i.fv, ptr %i.fx, align 1, !tbaa !7
  %i.fz = add nuw nsw i64 %.04257.i, 2            ; 2 uses
  %niter492.next.1 = add i64 %niter492, 2         ; 2 uses
  %niter492.ncmp.1 = icmp eq i64 %niter492.next.1, %unroll_iter491
  br i1 %niter492.ncmp.1, label %mi_outs.exit.loopexit.unr-lcssa, label %bb.br, !llvm.loop !24

bb.bs:                                            ; preds = %bb.ai, %bb.ai
  %i.ga = add i8 %.0215, -76                      ; 2 uses
  %i.gb = tail call i8 @llvm.fshl.i8(i8 %i.ga, i8 %i.ga, i8 7)
  %i.gc = load i32, ptr %3, align 8               ; 11 uses
  %i.gd = icmp ult i32 %i.gc, 41                  ; 5 uses
  switch i8 %i.gb, label %bb.cj [
    i8 23, label %bb.bt
    i8 20, label %bb.bx
    i8 0, label %bb.cb
    i8 16, label %bb.cf
  ]

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.gd, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ge = load ptr, ptr %i.g, align 8
  %i.gf = zext nneg i32 %i.gc to i64
  %i.gg = getelementptr i8, ptr %i.ge, i64 %i.gf
  %i.gh = add nuw nsw i32 %i.gc, 8
  store i32 %i.gh, ptr %3, align 8
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.gi = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 8
  store ptr %i.gj, ptr %i.f, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.gk = phi ptr [ %i.gg, %bb.bu ], [ %i.gi, %bb.bv ]
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !18
  br label %bb.cn

bb.bx:                                            ; preds = %bb.bs
  br i1 %i.gd, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.gm = load ptr, ptr %i.g, align 8
  %i.gn = zext nneg i32 %i.gc to i64
  %i.go = getelementptr i8, ptr %i.gm, i64 %i.gn
  %i.gp = add nuw nsw i32 %i.gc, 8
  store i32 %i.gp, ptr %3, align 8
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.gq = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  store ptr %i.gr, ptr %i.f, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.gs = phi ptr [ %i.go, %bb.by ], [ %i.gq, %bb.bz ]
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !18
  br label %bb.cn

bb.cb:                                            ; preds = %bb.bs
  br i1 %i.gd, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.gu = load ptr, ptr %i.g, align 8
  %i.gv = zext nneg i32 %i.gc to i64
  %i.gw = getelementptr i8, ptr %i.gu, i64 %i.gv
  %i.gx = add nuw nsw i32 %i.gc, 8
  store i32 %i.gx, ptr %3, align 8
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.gy = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  store ptr %i.gz, ptr %i.f, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.ha = phi ptr [ %i.gw, %bb.cc ], [ %i.gy, %bb.cd ]
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !20
  br label %bb.cn

bb.cf:                                            ; preds = %bb.bs
  br i1 %i.gd, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.hc = load ptr, ptr %i.g, align 8
  %i.hd = zext nneg i32 %i.gc to i64
  %i.he = getelementptr i8, ptr %i.hc, i64 %i.hd
  %i.hf = add nuw nsw i32 %i.gc, 8
  store i32 %i.hf, ptr %3, align 8
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.hg = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 8
  store ptr %i.hh, ptr %i.f, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.hi = phi ptr [ %i.he, %bb.cg ], [ %i.hg, %bb.ch ]
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !18
  br label %bb.cn

bb.cj:                                            ; preds = %bb.bs
  br i1 %i.gd, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.hk = load ptr, ptr %i.g, align 8
  %i.hl = zext nneg i32 %i.gc to i64
  %i.hm = getelementptr i8, ptr %i.hk, i64 %i.hl
  %i.hn = add nuw nsw i32 %i.gc, 8
  store i32 %i.hn, ptr %3, align 8
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.ho = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 8
  store ptr %i.hp, ptr %i.f, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.hq = phi ptr [ %i.hm, %bb.ck ], [ %i.ho, %bb.cl ]
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.hs = sext i32 %i.hr to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.ca, %bb.ci, %bb.cm, %bb.ce, %bb.bw
  %.0207 = phi i64 [ %i.gl, %bb.bw ], [ %i.gt, %bb.ca ], [ %i.hb, %bb.ce ], [ %i.hj, %bb.ci ], [ %i.hs, %bb.cm ] ; 4 uses
  %i.ht = icmp slt i64 %.0207, 0
  br i1 %i.ht, label %.thread348, label %bb.co

.thread348:                                       ; preds = %bb.cn
  %i.hu = sub i64 0, %.0207
  br label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.hv = icmp eq i64 %.0207, 0
  br i1 %i.hv, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %.not47.i304.not = icmp eq i8 %.0214, 0
  br i1 %.not47.i304.not, label %mi_outc.exit.i308, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store i8 %.0214, ptr %.0337377, align 1, !tbaa !7
end_hunk_0
