Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/static?download=true
inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 40
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_Z13_mi_vsnprintfPcmPKcP13__va_list_tag:bb.a
bb.ai:                                            ; preds = %bb.ah
  br i1 %i.by, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bz = load ptr, ptr %i.g, align 8
  %i.ca = zext nneg i32 %i.bx to i64
  %i.cb = getelementptr i8, ptr %i.bz, i64 %i.ca
  %i.cc = add nuw nsw i32 %i.bx, 8
  store i32 %i.cc, ptr %3, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.cd = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  store ptr %i.ce, ptr %i.f, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cf = phi ptr [ %i.cb, %bb.aj ], [ %i.cd, %bb.ak ]
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !98
  br label %bb.bf

bb.am:                                            ; preds = %bb.ah
  br i1 %i.by, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ch = load ptr, ptr %i.g, align 8
  %i.ci = zext nneg i32 %i.bx to i64
  %i.cj = getelementptr i8, ptr %i.ch, i64 %i.ci
  %i.ck = add nuw nsw i32 %i.bx, 8
  store i32 %i.ck, ptr %3, align 8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.cl = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  store ptr %i.cm, ptr %i.f, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.cn = phi ptr [ %i.cj, %bb.an ], [ %i.cl, %bb.ao ]
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !98
  br label %bb.bf

bb.aq:                                            ; preds = %bb.ah
  br i1 %i.by, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cp = load ptr, ptr %i.g, align 8
  %i.cq = zext nneg i32 %i.bx to i64
  %i.cr = getelementptr i8, ptr %i.cp, i64 %i.cq
  %i.cs = add nuw nsw i32 %i.bx, 8
  store i32 %i.cs, ptr %3, align 8
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ct = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  store ptr %i.cu, ptr %i.f, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.cv = phi ptr [ %i.cr, %bb.ar ], [ %i.ct, %bb.as ]
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !332
  br label %bb.bf

bb.au:                                            ; preds = %bb.ah
  br i1 %i.by, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.cx = load ptr, ptr %i.g, align 8
  %i.cy = zext nneg i32 %i.bx to i64
  %i.cz = getelementptr i8, ptr %i.cx, i64 %i.cy
  %i.da = add nuw nsw i32 %i.bx, 8
  store i32 %i.da, ptr %3, align 8
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.db = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  store ptr %i.dc, ptr %i.f, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.dd = phi ptr [ %i.cz, %bb.av ], [ %i.db, %bb.aw ]
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !98
  br label %bb.bf

bb.ay:                                            ; preds = %bb.ah
  br i1 %i.by, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.df = load ptr, ptr %i.g, align 8
  %i.dg = zext nneg i32 %i.bx to i64
  %i.dh = getelementptr i8, ptr %i.df, i64 %i.dg
  %i.di = add nuw nsw i32 %i.bx, 8
  store i32 %i.di, ptr %3, align 8
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.dj = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  store ptr %i.dk, ptr %i.f, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.dl = phi ptr [ %i.dh, %bb.az ], [ %i.dj, %bb.ba ]
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !97
  %i.dn = zext i32 %i.dm to i64
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ag
  %i.do = load i32, ptr %3, align 8               ; 3 uses
  %i.dp = icmp ult i32 %i.do, 41
  br i1 %i.dp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.dq = load ptr, ptr %i.g, align 8
  %i.dr = zext nneg i32 %i.do to i64
  %i.ds = getelementptr i8, ptr %i.dq, i64 %i.dr
  %i.dt = add nuw nsw i32 %i.do, 8
  store i32 %i.dt, ptr %3, align 8
  br label %.lr.ph.i255

bb.be:                                            ; preds = %bb.bc
  %i.du = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  store ptr %i.dv, ptr %i.f, align 8
  br label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %bb.be, %bb.bd
  %i.dw = phi ptr [ %i.ds, %bb.bd ], [ %i.du, %bb.be ]
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !98
  %i.dy = getelementptr inbounds nuw i8, ptr %.0302343, i64 1 ; 3 uses
  store i8 48, ptr %.0302343, align 1, !tbaa !69
  %i.dz = icmp ult ptr %i.dy, %i.e
  br i1 %i.dz, label %.lr.ph.i255.1, label %_ZL7mi_outsPKcPPcS1_.exit258

.lr.ph.i255.1:                                    ; preds = %.lr.ph.i255
  %i.ea = getelementptr inbounds nuw i8, ptr %.0302343, i64 2
  store i8 120, ptr %i.dy, align 1, !tbaa !69
  br label %_ZL7mi_outsPKcPPcS1_.exit258

_ZL7mi_outsPKcPPcS1_.exit258:                     ; preds = %.lr.ph.i255.1, %.lr.ph.i255
  %.lcssa443 = phi ptr [ %i.dy, %.lr.ph.i255 ], [ %i.ea, %.lr.ph.i255.1 ]
  %i.eb = tail call i64 @llvm.usub.sat.i64(i64 %.2, i64 2)
  br label %bb.bf

bb.bf:                                            ; preds = %_ZL7mi_outsPKcPPcS1_.exit258, %bb.al, %bb.at, %bb.bb, %bb.ax, %bb.ap
  %.1303 = phi ptr [ %.0302343, %bb.bb ], [ %.0302343, %bb.al ], [ %.0302343, %bb.ap ], [ %.0302343, %bb.at ], [ %.0302343, %bb.ax ], [ %.lcssa443, %_ZL7mi_outsPKcPPcS1_.exit258 ] ; 19 uses
  %.3 = phi i64 [ %.2, %bb.bb ], [ %.2, %bb.al ], [ %.2, %bb.ap ], [ %.2, %bb.at ], [ %.2, %bb.ax ], [ %i.eb, %_ZL7mi_outsPKcPPcS1_.exit258 ] ; 2 uses
  %.0191 = phi i64 [ %i.dn, %bb.bb ], [ %i.cg, %bb.al ], [ %i.co, %bb.ap ], [ %i.cw, %bb.at ], [ %i.de, %bb.ax ], [ %i.dx, %_ZL7mi_outsPKcPPcS1_.exit258 ] ; 4 uses
  %i.ec = icmp eq i64 %.3, 0
  br i1 %i.ec, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  switch i8 %.6210, label %bb.bi [
    i8 120, label %bb.bh
    i8 112, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  %i.ed = icmp ult i64 %.0191, 4294967296
  %i.ee = icmp ult i64 %.0191, 281474976710656
  %i.ef = select i1 %i.ee, i64 12, i64 16
  %i.eg = select i1 %i.ed, i64 8, i64 %i.ef
  %spec.store.select = select i1 %i.bt, i64 %i.eg, i64 2
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.bf
  %.1200 = phi i8 [ 48, %bb.bh ], [ %.0199, %bb.bg ], [ %.0199, %bb.bf ] ; 5 uses
  %.5 = phi i64 [ %spec.store.select, %bb.bh ], [ 0, %bb.bg ], [ %.3, %bb.bf ] ; 5 uses
  %i.eh = or i1 %i.bu, %i.bt
  %i.ei = select i1 %i.eh, i64 16, i64 10         ; 3 uses
  %i.ej = icmp eq i64 %.0191, 0
  br i1 %i.ej, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %.not47.i = icmp ne i8 %.0195, 0
  %.not.i.i = icmp ult ptr %.1303, %i.e
  %or.cond.i = select i1 %.not47.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %bb.bk, label %_ZL7mi_outccPPcS_.exit.i

bb.bk:                                            ; preds = %bb.bj
  store i8 %.0195, ptr %.1303, align 1, !tbaa !69
  %i.ek = getelementptr inbounds nuw i8, ptr %.1303, i64 1
  br label %_ZL7mi_outccPPcS_.exit.i

_ZL7mi_outccPPcS_.exit.i:                         ; preds = %bb.bk, %bb.bj
  %.12 = phi ptr [ %i.ek, %bb.bk ], [ %.1303, %bb.bj ] ; 4 uses
  %.not.i48.i = icmp ult ptr %.12, %i.e
  br i1 %.not.i48.i, label %bb.bl, label %_ZL7mi_outsPKcPPcS1_.exit

bb.bl:                                            ; preds = %_ZL7mi_outccPPcS_.exit.i
  store i8 48, ptr %.12, align 1, !tbaa !69
  %i.el = getelementptr inbounds nuw i8, ptr %.12, i64 1
  br label %_ZL7mi_outsPKcPPcS1_.exit

bb.bm:                                            ; preds = %bb.bi
  %i.em = icmp ult ptr %.1303, %i.e
  br i1 %i.em, label %.split.i, label %_ZL7mi_outccPPcS_.exit53.i

.split.i:                                         ; preds = %bb.bm, %_ZL7mi_outccPPcS_.exit51.i
  %.10 = phi ptr [ %.11, %_ZL7mi_outccPPcS_.exit51.i ], [ %.1303, %bb.bm ]
  %i.en = phi ptr [ %i.ew, %_ZL7mi_outccPPcS_.exit51.i ], [ %.1303, %bb.bm ] ; 4 uses
  %.054.i = phi i64 [ %i.eo, %_ZL7mi_outccPPcS_.exit51.i ], [ %.0191, %bb.bm ] ; 3 uses
  %.not.i50.i = icmp ult ptr %i.en, %i.e
  %i.eo = udiv i64 %.054.i, %i.ei
  %i.ep = urem i64 %.054.i, %i.ei                 ; 2 uses
  br i1 %.not.i50.i, label %bb.bn, label %_ZL7mi_outccPPcS_.exit51.i

bb.bn:                                            ; preds = %.split.i
  %i.eq = icmp samesign ult i64 %i.ep, 10
  %i.er = trunc nuw nsw i64 %i.ep to i8           ; 2 uses
  %i.es = or disjoint i8 %i.er, 48
  %i.et = add nuw nsw i8 %i.er, 55
  %i.eu = select i1 %i.eq, i8 %i.es, i8 %i.et
  store i8 %i.eu, ptr %i.en, align 1, !tbaa !69
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 1 ; 2 uses
  br label %_ZL7mi_outccPPcS_.exit51.i

_ZL7mi_outccPPcS_.exit51.i:                       ; preds = %bb.bn, %.split.i
  %.11 = phi ptr [ %i.ev, %bb.bn ], [ %.10, %.split.i ] ; 2 uses
  %i.ew = phi ptr [ %i.ev, %bb.bn ], [ %i.en, %.split.i ] ; 5 uses
  %.not.i260 = icmp ugt i64 %i.ei, %.054.i
  br i1 %.not.i260, label %.split56.us.i, label %.split.i, !llvm.loop !327

.split56.us.i:                                    ; preds = %_ZL7mi_outccPPcS_.exit51.i
  %.not46.i = icmp ne i8 %.0195, 0
  %.not.i52.i = icmp ult ptr %i.ew, %i.e
  %or.cond70.i = select i1 %.not46.i, i1 %.not.i52.i, i1 false
  br i1 %or.cond70.i, label %bb.bo, label %_ZL7mi_outccPPcS_.exit53.i

bb.bo:                                            ; preds = %.split56.us.i
  store i8 %.0195, ptr %i.ew, align 1, !tbaa !69
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1 ; 2 uses
  br label %_ZL7mi_outccPPcS_.exit53.i

_ZL7mi_outccPPcS_.exit53.i:                       ; preds = %bb.bm, %bb.bo, %.split56.us.i
  %.9310 = phi ptr [ %i.ex, %bb.bo ], [ %.11, %.split56.us.i ], [ %.1303, %bb.bm ] ; 3 uses
  %4 = phi ptr [ %i.ex, %bb.bo ], [ %i.ew, %.split56.us.i ], [ %.1303, %bb.bm ]
  %i.ey = ptrtoint ptr %4 to i64
  %i.ez = ptrtoint ptr %.1303 to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 3 uses
  %i.fb = lshr i64 %i.fa, 1                       ; 4 uses
  %.not58.i = icmp eq i64 %i.fb, 0
  br i1 %.not58.i, label %_ZL7mi_outsPKcPPcS1_.exit, label %.lr.ph.i259

.lr.ph.i259:                                      ; preds = %_ZL7mi_outccPPcS_.exit53.i
  %i.fc = getelementptr i8, ptr %.1303, i64 %i.fa ; 3 uses
  %i.fd = icmp eq i64 %i.fb, 1
  br i1 %i.fd, label %.epil.preheader448, label %.lr.ph.i259.new

.lr.ph.i259.new:                                  ; preds = %.lr.ph.i259
  %unroll_iter452 = and i64 %i.fb, 9223372036854775806
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.i259.new
  %.04257.i = phi i64 [ 0, %.lr.ph.i259.new ], [ %i.fp, %bb.bp ] ; 5 uses
  %niter453 = phi i64 [ 0, %.lr.ph.i259.new ], [ %niter453.next.1, %bb.bp ]
  %i.fe = xor i64 %.04257.i, -1
  %i.ff = getelementptr i8, ptr %i.fc, i64 %i.fe  ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !69
  %i.fh = getelementptr inbounds nuw i8, ptr %.1303, i64 %.04257.i ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !69
  store i8 %i.fi, ptr %i.ff, align 1, !tbaa !69
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !69
  %i.fj = xor i64 %.04257.i, -2
  %i.fk = getelementptr i8, ptr %i.fc, i64 %i.fj  ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !69
  %i.fm = getelementptr inbounds nuw i8, ptr %.1303, i64 %.04257.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !69
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !69
  store i8 %i.fl, ptr %i.fn, align 1, !tbaa !69
  %i.fp = add nuw nsw i64 %.04257.i, 2            ; 2 uses
  %niter453.next.1 = add i64 %niter453, 2         ; 2 uses
  %niter453.ncmp.1 = icmp eq i64 %niter453.next.1, %unroll_iter452
  br i1 %niter453.ncmp.1, label %_ZL7mi_outsPKcPPcS1_.exit.loopexit437.unr-lcssa, label %bb.bp, !llvm.loop !328

bb.bq:                                            ; preds = %bb.ag, %bb.ag
  %i.fq = add i8 %.0196, -76                      ; 2 uses
  %i.fr = tail call i8 @llvm.fshl.i8(i8 %i.fq, i8 %i.fq, i8 7)
  %i.fs = load i32, ptr %3, align 8               ; 11 uses
  %i.ft = icmp ult i32 %i.fs, 41                  ; 5 uses
  switch i8 %i.fr, label %bb.ch [
    i8 23, label %bb.br
    i8 20, label %bb.bv
    i8 0, label %bb.bz
    i8 16, label %bb.cd
  ]

bb.br:                                            ; preds = %bb.bq
  br i1 %i.ft, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.fu = load ptr, ptr %i.g, align 8
  %i.fv = zext nneg i32 %i.fs to i64
  %i.fw = getelementptr i8, ptr %i.fu, i64 %i.fv
  %i.fx = add nuw nsw i32 %i.fs, 8
  store i32 %i.fx, ptr %3, align 8
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.fy = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 8
  store ptr %i.fz, ptr %i.f, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ga = phi ptr [ %i.fw, %bb.bs ], [ %i.fy, %bb.bt ]
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !98
  br label %bb.cl

bb.bv:                                            ; preds = %bb.bq
  br i1 %i.ft, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.gc = load ptr, ptr %i.g, align 8
  %i.gd = zext nneg i32 %i.fs to i64
  %i.ge = getelementptr i8, ptr %i.gc, i64 %i.gd
  %i.gf = add nuw nsw i32 %i.fs, 8
  store i32 %i.gf, ptr %3, align 8
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.gg = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  store ptr %i.gh, ptr %i.f, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.gi = phi ptr [ %i.ge, %bb.bw ], [ %i.gg, %bb.bx ]
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !98
  br label %bb.cl

bb.bz:                                            ; preds = %bb.bq
  br i1 %i.ft, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.gk = load ptr, ptr %i.g, align 8
  %i.gl = zext nneg i32 %i.fs to i64
  %i.gm = getelementptr i8, ptr %i.gk, i64 %i.gl
  %i.gn = add nuw nsw i32 %i.fs, 8
  store i32 %i.gn, ptr %3, align 8
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.go = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  store ptr %i.gp, ptr %i.f, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.gq = phi ptr [ %i.gm, %bb.ca ], [ %i.go, %bb.cb ]
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !332
  br label %bb.cl

bb.cd:                                            ; preds = %bb.bq
  br i1 %i.ft, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.gs = load ptr, ptr %i.g, align 8
  %i.gt = zext nneg i32 %i.fs to i64
  %i.gu = getelementptr i8, ptr %i.gs, i64 %i.gt
  %i.gv = add nuw nsw i32 %i.fs, 8
  store i32 %i.gv, ptr %3, align 8
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.gw = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  store ptr %i.gx, ptr %i.f, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.gy = phi ptr [ %i.gu, %bb.ce ], [ %i.gw, %bb.cf ]
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !98
  br label %bb.cl

bb.ch:                                            ; preds = %bb.bq
  br i1 %i.ft, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ha = load ptr, ptr %i.g, align 8
  %i.hb = zext nneg i32 %i.fs to i64
  %i.hc = getelementptr i8, ptr %i.ha, i64 %i.hb
  %i.hd = add nuw nsw i32 %i.fs, 8
  store i32 %i.hd, ptr %3, align 8
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.he = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 8
  store ptr %i.hf, ptr %i.f, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.hg = phi ptr [ %i.hc, %bb.ci ], [ %i.he, %bb.cj ]
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !97
  %i.hi = sext i32 %i.hh to i64
  br label %bb.cl

bb.cl:                                            ; preds = %bb.by, %bb.cg, %bb.ck, %bb.cc, %bb.bu
  %.0190 = phi i64 [ %i.gb, %bb.bu ], [ %i.gj, %bb.by ], [ %i.gr, %bb.cc ], [ %i.gz, %bb.cg ], [ %i.hi, %bb.ck ] ; 4 uses
  %i.hj = icmp slt i64 %.0190, 0
  br i1 %i.hj, label %.thread313, label %bb.cm

.thread313:                                       ; preds = %bb.cl
  %i.hk = sub i64 0, %.0190
  br label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.hl = icmp eq i64 %.0190, 0
  br i1 %i.hl, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %.not47.i275.not = icmp eq i8 %.0195, 0
  br i1 %.not47.i275.not, label %_ZL7mi_outccPPcS_.exit.i279, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i8 %.0195, ptr %.0302343, align 1, !tbaa !69
  %i.hm = getelementptr inbounds nuw i8, ptr %.0302343, i64 1
  br label %_ZL7mi_outccPPcS_.exit.i279

_ZL7mi_outccPPcS_.exit.i279:                      ; preds = %bb.co, %bb.cn
  %.18 = phi ptr [ %i.hm, %bb.co ], [ %.0302343, %bb.cn ] ; 4 uses
  %.not.i48.i280 = icmp ult ptr %.18, %i.e
  br i1 %.not.i48.i280, label %bb.cp, label %_ZL7mi_outsPKcPPcS1_.exit

bb.cp:                                            ; preds = %_ZL7mi_outccPPcS_.exit.i279
  store i8 48, ptr %.18, align 1, !tbaa !69
  %i.hn = getelementptr inbounds nuw i8, ptr %.18, i64 1
  br label %_ZL7mi_outsPKcPPcS1_.exit

bb.cq:                                            ; preds = %.thread313, %bb.cm
  %.0317 = phi i8 [ 45, %.thread313 ], [ %.0195, %bb.cm ] ; 2 uses
  %.1316 = phi i64 [ %i.hk, %.thread313 ], [ %.0190, %bb.cm ]
  br label %.split.i270

.split.i270:                                      ; preds = %bb.cq, %_ZL7mi_outccPPcS_.exit51.i273
  %.16 = phi ptr [ %.0302343, %bb.cq ], [ %.17, %_ZL7mi_outccPPcS_.exit51.i273 ]
end_hunk_0
