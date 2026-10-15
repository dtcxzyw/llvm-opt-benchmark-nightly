Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgemm_itcopy?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dgemm_itcopy:bb.a

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.n = load <8 x double>, ptr %.0332378, align 1, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %.0332378, i64 64
  %i.p = load <8 x double>, ptr %i.o, align 1, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %.0332378, i64 128 ; 2 uses
  %i.r = load <8 x double>, ptr %.0320379, align 1, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %.0320379, i64 64
  %i.t = load <8 x double>, ptr %i.s, align 1, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %.0320379, i64 128 ; 2 uses
  %i.v = load <8 x double>, ptr %.0314380, align 1, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %.0314380, i64 64
  %i.x = load <8 x double>, ptr %i.w, align 1, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %.0314380, i64 128 ; 2 uses
  %i.z = load <8 x double>, ptr %.0308381, align 1, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %.0308381, i64 64
  %i.ab = load <8 x double>, ptr %i.aa, align 1, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %.0308381, i64 128 ; 2 uses
  store <8 x double> %i.n, ptr %i.m, align 1, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store <8 x double> %i.p, ptr %i.ad, align 1, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store <8 x double> %i.r, ptr %i.ae, align 1, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  store <8 x double> %i.t, ptr %i.af, align 1, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  store <8 x double> %i.v, ptr %i.ag, align 1, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  store <8 x double> %i.x, ptr %i.ah, align 1, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  store <8 x double> %i.z, ptr %i.ai, align 1, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 448
  store <8 x double> %i.ab, ptr %i.aj, align 1, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx366 ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0293372.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.0296371.unr = phi ptr [ %i.m, %.lr.ph.preheader ], [ %i.ak, %.lr.ph.prol ]
  %.1309370.unr = phi ptr [ %.0308381, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %.1315369.unr = phi ptr [ %.0314380, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol ]
  %.1321368.unr = phi ptr [ %.0320379, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.1333367.unr = phi ptr [ %.0332378, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.lcssa503.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.lcssa502.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.lcssa501.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol ]
  %.lcssa500.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %.lcssa499.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ak, %.lr.ph.prol ]
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0293372 = phi i64 [ %i.ch, %.lr.ph ], [ %.0293372.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0296371 = phi ptr [ %i.cg, %.lr.ph ], [ %.0296371.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.1309370 = phi ptr [ %i.by, %.lr.ph ], [ %.1309370.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.1315369 = phi ptr [ %i.bu, %.lr.ph ], [ %.1315369.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.1321368 = phi ptr [ %i.bq, %.lr.ph ], [ %.1321368.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.1333367 = phi ptr [ %i.bm, %.lr.ph ], [ %.1333367.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.al = load <8 x double>, ptr %.1333367, align 1, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %.1333367, i64 64
  %i.an = load <8 x double>, ptr %i.am, align 1, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %.1333367, i64 128
  %i.ap = load <8 x double>, ptr %.1321368, align 1, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %.1321368, i64 64
  %i.ar = load <8 x double>, ptr %i.aq, align 1, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %.1321368, i64 128
  %i.at = load <8 x double>, ptr %.1315369, align 1, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %.1315369, i64 64
  %i.av = load <8 x double>, ptr %i.au, align 1, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %.1315369, i64 128
  %i.ax = load <8 x double>, ptr %.1309370, align 1, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %.1309370, i64 64
  %i.az = load <8 x double>, ptr %i.ay, align 1, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %.1309370, i64 128
  store <8 x double> %i.al, ptr %.0296371, align 1, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %.0296371, i64 64
  store <8 x double> %i.an, ptr %i.bb, align 1, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %.0296371, i64 128
  store <8 x double> %i.ap, ptr %i.bc, align 1, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %.0296371, i64 192
  store <8 x double> %i.ar, ptr %i.bd, align 1, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %.0296371, i64 256
  store <8 x double> %i.at, ptr %i.be, align 1, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %.0296371, i64 320
  store <8 x double> %i.av, ptr %i.bf, align 1, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %.0296371, i64 384
  store <8 x double> %i.ax, ptr %i.bg, align 1, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %.0296371, i64 448
  store <8 x double> %i.az, ptr %i.bh, align 1, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %.0296371, i64 %.idx366 ; 9 uses
  %i.bj = load <8 x double>, ptr %i.ao, align 1, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %.1333367, i64 192
  %i.bl = load <8 x double>, ptr %i.bk, align 1, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %.1333367, i64 256 ; 2 uses
  %i.bn = load <8 x double>, ptr %i.as, align 1, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %.1321368, i64 192
  %i.bp = load <8 x double>, ptr %i.bo, align 1, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %.1321368, i64 256 ; 2 uses
  %i.br = load <8 x double>, ptr %i.aw, align 1, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %.1315369, i64 192
  %i.bt = load <8 x double>, ptr %i.bs, align 1, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %.1315369, i64 256 ; 2 uses
  %i.bv = load <8 x double>, ptr %i.ba, align 1, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %.1309370, i64 192
  %i.bx = load <8 x double>, ptr %i.bw, align 1, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %.1309370, i64 256 ; 2 uses
  store <8 x double> %i.bj, ptr %i.bi, align 1, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  store <8 x double> %i.bl, ptr %i.bz, align 1, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  store <8 x double> %i.bn, ptr %i.ca, align 1, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  store <8 x double> %i.bp, ptr %i.cb, align 1, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 256
  store <8 x double> %i.br, ptr %i.cc, align 1, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 320
  store <8 x double> %i.bt, ptr %i.cd, align 1, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 384
  store <8 x double> %i.bv, ptr %i.ce, align 1, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 448
  store <8 x double> %i.bx, ptr %i.cf, align 1, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx366 ; 2 uses
  %i.ch = add nsw i64 %.0293372, -32              ; 2 uses
  %i.ci = icmp sgt i64 %.0293372, 47
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  %.1333.lcssa = phi ptr [ %.0332378, %bb.b ], [ %.lcssa503.unr, %.lr.ph.prol.loopexit ], [ %i.bm, %.lr.ph ] ; 3 uses
  %.1321.lcssa = phi ptr [ %.0320379, %bb.b ], [ %.lcssa502.unr, %.lr.ph.prol.loopexit ], [ %i.bq, %.lr.ph ] ; 3 uses
  %.1315.lcssa = phi ptr [ %.0314380, %bb.b ], [ %.lcssa501.unr, %.lr.ph.prol.loopexit ], [ %i.bu, %.lr.ph ] ; 3 uses
  %.1309.lcssa = phi ptr [ %.0308381, %bb.b ], [ %.lcssa500.unr, %.lr.ph.prol.loopexit ], [ %i.by, %.lr.ph ] ; 3 uses
  %.0296.lcssa = phi ptr [ %i.m, %bb.b ], [ %.lcssa499.unr, %.lr.ph.prol.loopexit ], [ %i.cg, %.lr.ph ]
  %.0293.lcssa = phi i64 [ %1, %bb.b ], [ %i.j, %.lr.ph.prol.loopexit ], [ %i.ch, %.lr.ph ] ; 3 uses
  %.idx360 = mul i64 %i.l, -64
  %i.cj = getelementptr inbounds i8, ptr %.0296.lcssa, i64 %.idx360 ; 6 uses
  %i.ck = icmp sgt i64 %.0293.lcssa, 7
  br i1 %i.ck, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.cl = load <8 x double>, ptr %.1333.lcssa, align 1, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %.1333.lcssa, i64 64
  %i.cn = load <8 x double>, ptr %.1321.lcssa, align 1, !tbaa !14
  %i.co = getelementptr inbounds nuw i8, ptr %.1321.lcssa, i64 64
  %i.cp = load <8 x double>, ptr %.1315.lcssa, align 1, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %.1315.lcssa, i64 64
  %i.cr = load <8 x double>, ptr %.1309.lcssa, align 1, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %.1309.lcssa, i64 64
  store <8 x double> %i.cl, ptr %i.cj, align 1, !tbaa !14
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  store <8 x double> %i.cn, ptr %i.ct, align 1, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  store <8 x double> %i.cp, ptr %i.cu, align 1, !tbaa !14
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 192
  store <8 x double> %i.cr, ptr %i.cv, align 1, !tbaa !14
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx361
  %i.cx = add nsw i64 %.0293.lcssa, -8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.2334 = phi ptr [ %i.cm, %bb.c ], [ %.1333.lcssa, %._crit_edge ] ; 3 uses
  %.2322 = phi ptr [ %i.co, %bb.c ], [ %.1321.lcssa, %._crit_edge ] ; 3 uses
  %.2316 = phi ptr [ %i.cq, %bb.c ], [ %.1315.lcssa, %._crit_edge ] ; 3 uses
  %.2310 = phi ptr [ %i.cs, %bb.c ], [ %.1309.lcssa, %._crit_edge ] ; 3 uses
  %.1297 = phi ptr [ %i.cw, %bb.c ], [ %i.cj, %._crit_edge ]
  %.1294 = phi i64 [ %i.cx, %bb.c ], [ %.0293.lcssa, %._crit_edge ] ; 3 uses
  %.idx362 = mul i64 %i.l, -32
  %i.cy = getelementptr inbounds i8, ptr %.1297, i64 %.idx362 ; 6 uses
  %i.cz = icmp sgt i64 %.1294, 3
  br i1 %i.cz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.da = load <4 x double>, ptr %.2334, align 1, !tbaa !14
  %i.db = getelementptr inbounds nuw i8, ptr %.2334, i64 32
  %i.dc = load <4 x double>, ptr %.2322, align 1, !tbaa !14
  %i.dd = getelementptr inbounds nuw i8, ptr %.2322, i64 32
  %i.de = load <4 x double>, ptr %.2316, align 1, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %.2316, i64 32
  %i.dg = load <4 x double>, ptr %.2310, align 1, !tbaa !14
  %i.dh = getelementptr inbounds nuw i8, ptr %.2310, i64 32
  store <4 x double> %i.da, ptr %i.cy, align 1, !tbaa !14
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store <4 x double> %i.dc, ptr %i.di, align 1, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  store <4 x double> %i.de, ptr %i.dj, align 1, !tbaa !14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  store <4 x double> %i.dg, ptr %i.dk, align 1, !tbaa !14
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx363
  %i.dm = add nsw i64 %.1294, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3335 = phi ptr [ %i.db, %bb.e ], [ %.2334, %bb.d ] ; 3 uses
  %.3323 = phi ptr [ %i.dd, %bb.e ], [ %.2322, %bb.d ] ; 3 uses
  %.3317 = phi ptr [ %i.df, %bb.e ], [ %.2316, %bb.d ] ; 3 uses
  %.3311 = phi ptr [ %i.dh, %bb.e ], [ %.2310, %bb.d ] ; 3 uses
  %.2298 = phi ptr [ %i.dl, %bb.e ], [ %i.cy, %bb.d ]
  %.2295 = phi i64 [ %i.dm, %bb.e ], [ %.1294, %bb.d ] ; 3 uses
  %.idx364 = mul i64 %i.l, -16
  %i.dn = getelementptr inbounds i8, ptr %.2298, i64 %.idx364 ; 6 uses
  %i.do = icmp sgt i64 %.2295, 1
  br i1 %i.do, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dp = load <2 x double>, ptr %.3335, align 1, !tbaa !14
  %i.dq = getelementptr inbounds nuw i8, ptr %.3335, i64 16
  %i.dr = load <2 x double>, ptr %.3323, align 1, !tbaa !14
  %i.ds = getelementptr inbounds nuw i8, ptr %.3323, i64 16
  %i.dt = load <2 x double>, ptr %.3317, align 1, !tbaa !14
  %i.du = getelementptr inbounds nuw i8, ptr %.3317, i64 16
  %i.dv = load <2 x double>, ptr %.3311, align 1, !tbaa !14
  %i.dw = getelementptr inbounds nuw i8, ptr %.3311, i64 16
  store <2 x double> %i.dp, ptr %i.dn, align 1, !tbaa !14
  %5 = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <2 x double> %i.dr, ptr %5, align 1, !tbaa !14
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store <2 x double> %i.dt, ptr %i.dx, align 1, !tbaa !14
  %6 = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store <2 x double> %i.dv, ptr %6, align 1, !tbaa !14
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx365
  %i.dz = add nsw i64 %.2295, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.4336 = phi ptr [ %i.dq, %bb.g ], [ %.3335, %bb.f ] ; 3 uses
  %.4324 = phi ptr [ %i.ds, %bb.g ], [ %.3323, %bb.f ] ; 3 uses
  %.4318 = phi ptr [ %i.du, %bb.g ], [ %.3317, %bb.f ] ; 3 uses
  %.4312 = phi ptr [ %i.dw, %bb.g ], [ %.3311, %bb.f ] ; 3 uses
  %.3299 = phi ptr [ %i.dy, %bb.g ], [ %i.dn, %bb.f ]
  %.3 = phi i64 [ %i.dz, %bb.g ], [ %.2295, %bb.f ]
  %i.ea = icmp sgt i64 %.3, 0
  br i1 %i.ea, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.eb = sub nsw i64 0, %i.l
  %i.ec = getelementptr inbounds [8 x i8], ptr %.3299, i64 %i.eb ; 4 uses
  %i.ed = load double, ptr %.4336, align 8, !tbaa !17
  %i.ee = getelementptr inbounds nuw i8, ptr %.4336, i64 8
  %i.ef = load double, ptr %.4324, align 8, !tbaa !17
  %i.eg = getelementptr inbounds nuw i8, ptr %.4324, i64 8
  %i.eh = load double, ptr %.4318, align 8, !tbaa !17
  %i.ei = getelementptr inbounds nuw i8, ptr %.4318, i64 8
  %i.ej = load double, ptr %.4312, align 8, !tbaa !17
  %i.ek = getelementptr inbounds nuw i8, ptr %.4312, i64 8
  store double %i.ed, ptr %i.ec, align 8, !tbaa !17
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store double %i.ef, ptr %i.el, align 8, !tbaa !17
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store double %i.eh, ptr %i.em, align 8, !tbaa !17
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store double %i.ej, ptr %i.en, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.5337 = phi ptr [ %i.ee, %bb.i ], [ %.4336, %bb.h ]
  %.5325 = phi ptr [ %i.eg, %bb.i ], [ %.4324, %bb.h ]
  %.5319 = phi ptr [ %i.ei, %bb.i ], [ %.4318, %bb.h ]
  %.5313 = phi ptr [ %i.ek, %bb.i ], [ %.4312, %bb.h ]
  %i.eo = getelementptr inbounds [8 x i8], ptr %.5337, i64 %i.b ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %.5325, i64 %i.b ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %.5319, i64 %i.b
  %i.er = getelementptr inbounds [8 x i8], ptr %.5313, i64 %i.b
  %i.es = add nsw i64 %.0382, -4                  ; 2 uses
  %i.et = icmp sgt i64 %.0382, 7
  br i1 %i.et, label %bb.b, label %._crit_edge385, !llvm.loop !9

._crit_edge385:                                   ; preds = %bb.j, %bb.a
  %.0332.lcssa = phi ptr [ %2, %bb.a ], [ %i.eo, %bb.j ] ; 3 uses
  %.0320.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.ep, %bb.j ] ; 2 uses
  %.0.lcssa = phi i64 [ %0, %bb.a ], [ %i.es, %bb.j ] ; 4 uses
  %i.eu = shl nsw i64 %3, 1
  %i.ev = sub nsw i64 %i.b, %i.eu                 ; 4 uses
  %i.ew = icmp sgt i64 %.0.lcssa, 1
  br i1 %i.ew, label %.lr.ph404, label %._crit_edge405

.lr.ph404:                                        ; preds = %._crit_edge385
  %i.ex = icmp sgt i64 %1, 15
  %.idx358 = shl nuw nsw i64 %0, 7
  %.idx353 = shl nuw nsw i64 %0, 6                ; 2 uses
  %.idx355 = shl nuw nsw i64 %0, 5                ; 2 uses
  %.idx357 = shl nuw nsw i64 %0, 4                ; 2 uses
  br i1 %i.ex, label %.lr.ph394.us, label %.lr.ph404.split

.lr.ph394.us:                                     ; preds = %.lr.ph404, %bb.s
  %.1402.us = phi i64 [ %i.gw, %bb.s ], [ %.0.lcssa, %.lr.ph404 ] ; 3 uses
  %.6326401.us = phi ptr [ %i.gv, %bb.s ], [ %.0320.lcssa, %.lr.ph404 ]
  %.6338400.us = phi ptr [ %i.gu, %bb.s ], [ %.0332.lcssa, %.lr.ph404 ]
  %i.ey = sub nsw i64 %0, %.1402.us               ; 5 uses
  %.idx351.us = shl nuw nsw i64 %i.ey, 7
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 %.idx351.us
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph394.us, %bb.k
  %.4392.us = phi i64 [ %1, %.lr.ph394.us ], [ %i.fm, %bb.k ] ; 4 uses
  %.4300391.us = phi ptr [ %i.ez, %.lr.ph394.us ], [ %i.fl, %bb.k ] ; 5 uses
  %.7327390.us = phi ptr [ %.6326401.us, %.lr.ph394.us ], [ %i.fh, %bb.k ] ; 4 uses
  %.7339389.us = phi ptr [ %.6338400.us, %.lr.ph394.us ], [ %i.fd, %bb.k ] ; 4 uses
  %i.fa = load <8 x double>, ptr %.7339389.us, align 1, !tbaa !14
  %i.fb = getelementptr inbounds nuw i8, ptr %.7339389.us, i64 64
  %i.fc = load <8 x double>, ptr %i.fb, align 1, !tbaa !14
  %i.fd = getelementptr inbounds nuw i8, ptr %.7339389.us, i64 128 ; 3 uses
  %i.fe = load <8 x double>, ptr %.7327390.us, align 1, !tbaa !14
  %i.ff = getelementptr inbounds nuw i8, ptr %.7327390.us, i64 64
  %i.fg = load <8 x double>, ptr %i.ff, align 1, !tbaa !14
  %i.fh = getelementptr inbounds nuw i8, ptr %.7327390.us, i64 128 ; 3 uses
  store <8 x double> %i.fa, ptr %.4300391.us, align 1, !tbaa !14
  %i.fi = getelementptr inbounds nuw i8, ptr %.4300391.us, i64 64
  store <8 x double> %i.fc, ptr %i.fi, align 1, !tbaa !14
  %i.fj = getelementptr inbounds nuw i8, ptr %.4300391.us, i64 128
  store <8 x double> %i.fe, ptr %i.fj, align 1, !tbaa !14
  %i.fk = getelementptr inbounds nuw i8, ptr %.4300391.us, i64 192
  store <8 x double> %i.fg, ptr %i.fk, align 1, !tbaa !14
  %i.fl = getelementptr inbounds nuw i8, ptr %.4300391.us, i64 %.idx358 ; 2 uses
  %i.fm = add nsw i64 %.4392.us, -16              ; 2 uses
  %i.fn = icmp sgt i64 %.4392.us, 31
  br i1 %i.fn, label %bb.k, label %._crit_edge395.us, !llvm.loop !10

bb.l:                                             ; preds = %._crit_edge395.us
  %i.fo = load <8 x double>, ptr %i.fd, align 1, !tbaa !14
  %i.fp = getelementptr inbounds nuw i8, ptr %.7339389.us, i64 192
  %i.fq = load <8 x double>, ptr %i.fh, align 1, !tbaa !14
  %i.fr = getelementptr inbounds nuw i8, ptr %.7327390.us, i64 192
  store <8 x double> %i.fo, ptr %i.gy, align 1, !tbaa !14
  %i.fs = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  store <8 x double> %i.fq, ptr %i.fs, align 1, !tbaa !14
  %i.ft = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx353
  %i.fu = add nsw i64 %.4392.us, -24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge395.us
  %.8340.us = phi ptr [ %i.fp, %bb.l ], [ %i.fd, %._crit_edge395.us ] ; 3 uses
  %.8328.us = phi ptr [ %i.fr, %bb.l ], [ %i.fh, %._crit_edge395.us ] ; 3 uses
  %.5301.us = phi ptr [ %i.ft, %bb.l ], [ %i.gy, %._crit_edge395.us ]
  %.5.us = phi i64 [ %i.fu, %bb.l ], [ %i.fm, %._crit_edge395.us ] ; 3 uses
  %.idx354.us = mul i64 %i.ey, -32
  %i.fv = getelementptr inbounds i8, ptr %.5301.us, i64 %.idx354.us ; 4 uses
  %i.fw = icmp sgt i64 %.5.us, 3
  br i1 %i.fw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fx = load <4 x double>, ptr %.8340.us, align 1, !tbaa !14
  %i.fy = getelementptr inbounds nuw i8, ptr %.8340.us, i64 32
  %i.fz = load <4 x double>, ptr %.8328.us, align 1, !tbaa !14
  %i.ga = getelementptr inbounds nuw i8, ptr %.8328.us, i64 32
  store <4 x double> %i.fx, ptr %i.fv, align 1, !tbaa !14
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  store <4 x double> %i.fz, ptr %i.gb, align 1, !tbaa !14
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx355
  %i.gd = add nsw i64 %.5.us, -4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.9341.us = phi ptr [ %i.fy, %bb.n ], [ %.8340.us, %bb.m ] ; 3 uses
  %.9329.us = phi ptr [ %i.ga, %bb.n ], [ %.8328.us, %bb.m ] ; 3 uses
  %.6302.us = phi ptr [ %i.gc, %bb.n ], [ %i.fv, %bb.m ]
  %.6.us = phi i64 [ %i.gd, %bb.n ], [ %.5.us, %bb.m ] ; 3 uses
  %.idx356.us = mul i64 %i.ey, -16
  %i.ge = getelementptr inbounds i8, ptr %.6302.us, i64 %.idx356.us ; 4 uses
  %i.gf = icmp sgt i64 %.6.us, 1
  br i1 %i.gf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gg = load <2 x double>, ptr %.9341.us, align 1, !tbaa !14
  %i.gh = getelementptr inbounds nuw i8, ptr %.9341.us, i64 16
  %i.gi = load <2 x double>, ptr %.9329.us, align 1, !tbaa !14
  %i.gj = getelementptr inbounds nuw i8, ptr %.9329.us, i64 16
  store <2 x double> %i.gg, ptr %i.ge, align 1, !tbaa !14
  %7 = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <2 x double> %i.gi, ptr %7, align 1, !tbaa !14
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.idx357
  %i.gl = add nsw i64 %.6.us, -2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.10342.us = phi ptr [ %i.gh, %bb.p ], [ %.9341.us, %bb.o ] ; 3 uses
  %.10330.us = phi ptr [ %i.gj, %bb.p ], [ %.9329.us, %bb.o ] ; 3 uses
  %.7303.us = phi ptr [ %i.gk, %bb.p ], [ %i.ge, %bb.o ]
  %.7.us = phi i64 [ %i.gl, %bb.p ], [ %.6.us, %bb.o ]
  %i.gm = icmp sgt i64 %.7.us, 0
  br i1 %i.gm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gn = sub i64 0, %i.ey
  %i.go = getelementptr inbounds [8 x i8], ptr %.7303.us, i64 %i.gn ; 2 uses
  %i.gp = load double, ptr %.10342.us, align 8, !tbaa !17
  %i.gq = getelementptr inbounds nuw i8, ptr %.10342.us, i64 8
  %i.gr = load double, ptr %.10330.us, align 8, !tbaa !17
  %i.gs = getelementptr inbounds nuw i8, ptr %.10330.us, i64 8
  store double %i.gp, ptr %i.go, align 8, !tbaa !17
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store double %i.gr, ptr %i.gt, align 8, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.11343.us = phi ptr [ %i.gq, %bb.r ], [ %.10342.us, %bb.q ]
  %.11331.us = phi ptr [ %i.gs, %bb.r ], [ %.10330.us, %bb.q ]
  %i.gu = getelementptr inbounds [8 x i8], ptr %.11343.us, i64 %i.ev ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %.11331.us, i64 %i.ev
  %i.gw = add nsw i64 %.1402.us, -2               ; 2 uses
  %i.gx = icmp sgt i64 %.1402.us, 3
  br i1 %i.gx, label %.lr.ph394.us, label %._crit_edge405, !llvm.loop !11

._crit_edge395.us:                                ; preds = %bb.k
  %.idx352.us = mul i64 %i.ey, -64
  %i.gy = getelementptr inbounds i8, ptr %i.fl, i64 %.idx352.us ; 4 uses
  %i.gz = icmp sgt i64 %.4392.us, 23
  br i1 %i.gz, label %bb.l, label %bb.m

.lr.ph404.split:                                  ; preds = %.lr.ph404
  %i.ha = icmp sgt i64 %1, 7
  %i.hb = add nsw i64 %1, -8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph404.split, %bb.ab
  %.1402 = phi i64 [ %.0.lcssa, %.lr.ph404.split ], [ %i.im, %bb.ab ] ; 3 uses
  %.6326401 = phi ptr [ %.0320.lcssa, %.lr.ph404.split ], [ %i.il, %bb.ab ] ; 3 uses
  %.6338400 = phi ptr [ %.0332.lcssa, %.lr.ph404.split ], [ %i.ik, %bb.ab ] ; 3 uses
  %i.hc = sub nsw i64 %0, %.1402                  ; 5 uses
  %.idx351 = shl nuw nsw i64 %i.hc, 7
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 %.idx351
  %.idx352 = mul i64 %i.hc, -64
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 %.idx352 ; 4 uses
  br i1 %i.ha, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hf = load <8 x double>, ptr %.6338400, align 1, !tbaa !14
  %i.hg = getelementptr inbounds nuw i8, ptr %.6338400, i64 64
  %i.hh = load <8 x double>, ptr %.6326401, align 1, !tbaa !14
  %i.hi = getelementptr inbounds nuw i8, ptr %.6326401, i64 64
  store <8 x double> %i.hf, ptr %i.he, align 1, !tbaa !14
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 64
  store <8 x double> %i.hh, ptr %i.hj, align 1, !tbaa !14
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 %.idx353
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.8340 = phi ptr [ %i.hg, %bb.u ], [ %.6338400, %bb.t ] ; 3 uses
  %.8328 = phi ptr [ %i.hi, %bb.u ], [ %.6326401, %bb.t ] ; 3 uses
  %.5301 = phi ptr [ %i.hk, %bb.u ], [ %i.he, %bb.t ]
  %.5 = phi i64 [ %i.hb, %bb.u ], [ %1, %bb.t ]   ; 3 uses
  %.idx354 = mul i64 %i.hc, -32
  %i.hl = getelementptr inbounds i8, ptr %.5301, i64 %.idx354 ; 4 uses
  %i.hm = icmp sgt i64 %.5, 3
  br i1 %i.hm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hn = load <4 x double>, ptr %.8340, align 1, !tbaa !14
  %i.ho = getelementptr inbounds nuw i8, ptr %.8340, i64 32
  %i.hp = load <4 x double>, ptr %.8328, align 1, !tbaa !14
  %i.hq = getelementptr inbounds nuw i8, ptr %.8328, i64 32
  store <4 x double> %i.hn, ptr %i.hl, align 1, !tbaa !14
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  store <4 x double> %i.hp, ptr %i.hr, align 1, !tbaa !14
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.idx355
  %i.ht = add nsw i64 %.5, -4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.9341 = phi ptr [ %i.ho, %bb.w ], [ %.8340, %bb.v ] ; 3 uses
  %.9329 = phi ptr [ %i.hq, %bb.w ], [ %.8328, %bb.v ] ; 3 uses
  %.6302 = phi ptr [ %i.hs, %bb.w ], [ %i.hl, %bb.v ]
  %.6 = phi i64 [ %i.ht, %bb.w ], [ %.5, %bb.v ]  ; 3 uses
  %.idx356 = mul i64 %i.hc, -16
  %i.hu = getelementptr inbounds i8, ptr %.6302, i64 %.idx356 ; 4 uses
  %i.hv = icmp sgt i64 %.6, 1
  br i1 %i.hv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hw = load <2 x double>, ptr %.9341, align 1, !tbaa !14
  %i.hx = getelementptr inbounds nuw i8, ptr %.9341, i64 16
  %i.hy = load <2 x double>, ptr %.9329, align 1, !tbaa !14
  %i.hz = getelementptr inbounds nuw i8, ptr %.9329, i64 16
  store <2 x double> %i.hw, ptr %i.hu, align 1, !tbaa !14
  %8 = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <2 x double> %i.hy, ptr %8, align 1, !tbaa !14
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.idx357
  %i.ib = add nsw i64 %.6, -2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.10342 = phi ptr [ %i.hx, %bb.y ], [ %.9341, %bb.x ] ; 3 uses
  %.10330 = phi ptr [ %i.hz, %bb.y ], [ %.9329, %bb.x ] ; 3 uses
  %.7303 = phi ptr [ %i.ia, %bb.y ], [ %i.hu, %bb.x ]
  %.7 = phi i64 [ %i.ib, %bb.y ], [ %.6, %bb.x ]
  %i.ic = icmp sgt i64 %.7, 0
  br i1 %i.ic, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.id = sub i64 0, %i.hc
  %i.ie = getelementptr inbounds [8 x i8], ptr %.7303, i64 %i.id ; 2 uses
  %i.if = load double, ptr %.10342, align 8, !tbaa !17
  %i.ig = getelementptr inbounds nuw i8, ptr %.10342, i64 8
  %i.ih = load double, ptr %.10330, align 8, !tbaa !17
  %i.ii = getelementptr inbounds nuw i8, ptr %.10330, i64 8
  store double %i.if, ptr %i.ie, align 8, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store double %i.ih, ptr %i.ij, align 8, !tbaa !17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.11343 = phi ptr [ %i.ig, %bb.aa ], [ %.10342, %bb.z ]
  %.11331 = phi ptr [ %i.ii, %bb.aa ], [ %.10330, %bb.z ]
  %i.ik = getelementptr inbounds [8 x i8], ptr %.11343, i64 %i.ev ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %.11331, i64 %i.ev
  %i.im = add nsw i64 %.1402, -2                  ; 2 uses
  %i.in = icmp sgt i64 %.1402, 3
  br i1 %i.in, label %bb.t, label %._crit_edge405, !llvm.loop !11

._crit_edge405:                                   ; preds = %bb.ab, %bb.s, %._crit_edge385
  %.6338.lcssa = phi ptr [ %.0332.lcssa, %._crit_edge385 ], [ %i.gu, %bb.s ], [ %i.ik, %bb.ab ] ; 3 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %._crit_edge385 ], [ %i.gw, %bb.s ], [ %i.im, %bb.ab ]
  %i.io = icmp eq i64 %.1.lcssa, 1
  br i1 %i.io, label %.lr.ph420, label %._crit_edge421

.lr.ph420:                                        ; preds = %._crit_edge405
  %i.ip = add nsw i64 %0, -1                      ; 4 uses
  %.idx = shl nsw i64 %i.ip, 7
  %i.iq = getelementptr inbounds i8, ptr %4, i64 %.idx ; 3 uses
  %i.ir = icmp sgt i64 %1, 15
  %.idx350 = shl nsw i64 %0, 7                    ; 9 uses
  %.idx344 = mul i64 %i.ip, -64
  %.idx345 = shl nsw i64 %0, 6
  %.idx346 = mul i64 %i.ip, -32
  %.idx347 = shl nsw i64 %0, 5
  %.idx348 = mul i64 %i.ip, -16
  %.idx349 = shl nsw i64 %0, 4
  %i.is = sub i64 1, %0
  br i1 %i.ir, label %.lr.ph413.preheader, label %._crit_edge414

.lr.ph413.preheader:                              ; preds = %.lr.ph420
  %i.it = add nsw i64 %1, -16                     ; 2 uses
  %i.iu = lshr i64 %i.it, 4
  %i.iv = add nuw nsw i64 %i.iu, 1
  %xtraiter507 = and i64 %i.iv, 7                 ; 2 uses
  %lcmp.mod508.not = icmp eq i64 %xtraiter507, 0
  br i1 %lcmp.mod508.not, label %.lr.ph413.prol.loopexit, label %.lr.ph413.prol

.lr.ph413.prol:                                   ; preds = %.lr.ph413.preheader, %.lr.ph413.prol
  %.8411.prol = phi i64 [ %i.jc, %.lr.ph413.prol ], [ %1, %.lr.ph413.preheader ]
  %.8304410.prol = phi ptr [ %i.jb, %.lr.ph413.prol ], [ %i.iq, %.lr.ph413.preheader ] ; 3 uses
  %.13409.prol = phi ptr [ %i.iz, %.lr.ph413.prol ], [ %.6338.lcssa, %.lr.ph413.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph413.prol ], [ 0, %.lr.ph413.preheader ]
  %i.iw = load <8 x double>, ptr %.13409.prol, align 1, !tbaa !14
  %i.ix = getelementptr inbounds nuw i8, ptr %.13409.prol, i64 64
  %i.iy = load <8 x double>, ptr %i.ix, align 1, !tbaa !14
  %i.iz = getelementptr inbounds nuw i8, ptr %.13409.prol, i64 128 ; 3 uses
  store <8 x double> %i.iw, ptr %.8304410.prol, align 1, !tbaa !14
  %i.ja = getelementptr inbounds nuw i8, ptr %.8304410.prol, i64 64
  store <8 x double> %i.iy, ptr %i.ja, align 1, !tbaa !14
  %i.jb = getelementptr inbounds i8, ptr %.8304410.prol, i64 %.idx350 ; 3 uses
  %i.jc = add nsw i64 %.8411.prol, -16            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter507
  br i1 %prol.iter.cmp.not, label %.lr.ph413.prol.loopexit, label %.lr.ph413.prol, !llvm.loop !12

.lr.ph413.prol.loopexit:                          ; preds = %.lr.ph413.prol, %.lr.ph413.preheader
  %.8411.unr = phi i64 [ %1, %.lr.ph413.preheader ], [ %i.jc, %.lr.ph413.prol ]
  %.8304410.unr = phi ptr [ %i.iq, %.lr.ph413.preheader ], [ %i.jb, %.lr.ph413.prol ]
  %.13409.unr = phi ptr [ %.6338.lcssa, %.lr.ph413.preheader ], [ %i.iz, %.lr.ph413.prol ]
  %.lcssa488.unr = phi ptr [ poison, %.lr.ph413.preheader ], [ %i.iz, %.lr.ph413.prol ]
  %.lcssa487.unr = phi ptr [ poison, %.lr.ph413.preheader ], [ %i.jb, %.lr.ph413.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph413.preheader ], [ %i.jc, %.lr.ph413.prol ]
  %i.jd = icmp ult i64 %i.it, 112
  br i1 %i.jd, label %._crit_edge414, label %.lr.ph413

.lr.ph413:                                        ; preds = %.lr.ph413.prol.loopexit, %.lr.ph413
  %.8411 = phi i64 [ %i.la, %.lr.ph413 ], [ %.8411.unr, %.lr.ph413.prol.loopexit ] ; 2 uses
  %.8304410 = phi ptr [ %i.kz, %.lr.ph413 ], [ %.8304410.unr, %.lr.ph413.prol.loopexit ] ; 3 uses
  %.13409 = phi ptr [ %i.kx, %.lr.ph413 ], [ %.13409.unr, %.lr.ph413.prol.loopexit ] ; 17 uses
  %i.je = load <8 x double>, ptr %.13409, align 1, !tbaa !14
  %i.jf = getelementptr inbounds nuw i8, ptr %.13409, i64 64
  %i.jg = load <8 x double>, ptr %i.jf, align 1, !tbaa !14
  %i.jh = getelementptr inbounds nuw i8, ptr %.13409, i64 128
  store <8 x double> %i.je, ptr %.8304410, align 1, !tbaa !14
  %i.ji = getelementptr inbounds nuw i8, ptr %.8304410, i64 64
  store <8 x double> %i.jg, ptr %i.ji, align 1, !tbaa !14
  %i.jj = getelementptr inbounds i8, ptr %.8304410, i64 %.idx350 ; 3 uses
  %i.jk = load <8 x double>, ptr %i.jh, align 1, !tbaa !14
  %i.jl = getelementptr inbounds nuw i8, ptr %.13409, i64 192
  %i.jm = load <8 x double>, ptr %i.jl, align 1, !tbaa !14
  %i.jn = getelementptr inbounds nuw i8, ptr %.13409, i64 256
  store <8 x double> %i.jk, ptr %i.jj, align 1, !tbaa !14
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 64
  store <8 x double> %i.jm, ptr %i.jo, align 1, !tbaa !14
  %i.jp = getelementptr inbounds i8, ptr %i.jj, i64 %.idx350 ; 3 uses
  %i.jq = load <8 x double>, ptr %i.jn, align 1, !tbaa !14
  %i.jr = getelementptr inbounds nuw i8, ptr %.13409, i64 320
  %i.js = load <8 x double>, ptr %i.jr, align 1, !tbaa !14
  %i.jt = getelementptr inbounds nuw i8, ptr %.13409, i64 384
  store <8 x double> %i.jq, ptr %i.jp, align 1, !tbaa !14
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 64
  store <8 x double> %i.js, ptr %i.ju, align 1, !tbaa !14
  %i.jv = getelementptr inbounds i8, ptr %i.jp, i64 %.idx350 ; 3 uses
  %i.jw = load <8 x double>, ptr %i.jt, align 1, !tbaa !14
  %i.jx = getelementptr inbounds nuw i8, ptr %.13409, i64 448
  %i.jy = load <8 x double>, ptr %i.jx, align 1, !tbaa !14
  %i.jz = getelementptr inbounds nuw i8, ptr %.13409, i64 512
  store <8 x double> %i.jw, ptr %i.jv, align 1, !tbaa !14
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  store <8 x double> %i.jy, ptr %i.ka, align 1, !tbaa !14
  %i.kb = getelementptr inbounds i8, ptr %i.jv, i64 %.idx350 ; 3 uses
  %i.kc = load <8 x double>, ptr %i.jz, align 1, !tbaa !14
  %i.kd = getelementptr inbounds nuw i8, ptr %.13409, i64 576
  %i.ke = load <8 x double>, ptr %i.kd, align 1, !tbaa !14
  %i.kf = getelementptr inbounds nuw i8, ptr %.13409, i64 640
  store <8 x double> %i.kc, ptr %i.kb, align 1, !tbaa !14
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  store <8 x double> %i.ke, ptr %i.kg, align 1, !tbaa !14
  %i.kh = getelementptr inbounds i8, ptr %i.kb, i64 %.idx350 ; 3 uses
  %i.ki = load <8 x double>, ptr %i.kf, align 1, !tbaa !14
  %i.kj = getelementptr inbounds nuw i8, ptr %.13409, i64 704
  %i.kk = load <8 x double>, ptr %i.kj, align 1, !tbaa !14
  %i.kl = getelementptr inbounds nuw i8, ptr %.13409, i64 768
  store <8 x double> %i.ki, ptr %i.kh, align 1, !tbaa !14
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 64
  store <8 x double> %i.kk, ptr %i.km, align 1, !tbaa !14
  %i.kn = getelementptr inbounds i8, ptr %i.kh, i64 %.idx350 ; 3 uses
  %i.ko = load <8 x double>, ptr %i.kl, align 1, !tbaa !14
  %i.kp = getelementptr inbounds nuw i8, ptr %.13409, i64 832
  %i.kq = load <8 x double>, ptr %i.kp, align 1, !tbaa !14
  %i.kr = getelementptr inbounds nuw i8, ptr %.13409, i64 896
  store <8 x double> %i.ko, ptr %i.kn, align 1, !tbaa !14
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 64
  store <8 x double> %i.kq, ptr %i.ks, align 1, !tbaa !14
  %i.kt = getelementptr inbounds i8, ptr %i.kn, i64 %.idx350 ; 3 uses
  %i.ku = load <8 x double>, ptr %i.kr, align 1, !tbaa !14
  %i.kv = getelementptr inbounds nuw i8, ptr %.13409, i64 960
  %i.kw = load <8 x double>, ptr %i.kv, align 1, !tbaa !14
  %i.kx = getelementptr inbounds nuw i8, ptr %.13409, i64 1024 ; 2 uses
  store <8 x double> %i.ku, ptr %i.kt, align 1, !tbaa !14
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 64
  store <8 x double> %i.kw, ptr %i.ky, align 1, !tbaa !14
  %i.kz = getelementptr inbounds i8, ptr %i.kt, i64 %.idx350 ; 2 uses
  %i.la = add nsw i64 %.8411, -128                ; 2 uses
  %i.lb = icmp sgt i64 %.8411, 143
  br i1 %i.lb, label %.lr.ph413, label %._crit_edge414, !llvm.loop !13

._crit_edge414:                                   ; preds = %.lr.ph413.prol.loopexit, %.lr.ph413, %.lr.ph420
  %.13.lcssa = phi ptr [ %.6338.lcssa, %.lr.ph420 ], [ %.lcssa488.unr, %.lr.ph413.prol.loopexit ], [ %i.kx, %.lr.ph413 ] ; 3 uses
  %.8304.lcssa = phi ptr [ %i.iq, %.lr.ph420 ], [ %.lcssa487.unr, %.lr.ph413.prol.loopexit ], [ %i.kz, %.lr.ph413 ]
  %.8.lcssa = phi i64 [ %1, %.lr.ph420 ], [ %.lcssa.unr, %.lr.ph413.prol.loopexit ], [ %i.la, %.lr.ph413 ] ; 3 uses
  %i.lc = getelementptr inbounds i8, ptr %.8304.lcssa, i64 %.idx344 ; 3 uses
  %i.ld = icmp sgt i64 %.8.lcssa, 7
  br i1 %i.ld, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge414
  %i.le = load <8 x double>, ptr %.13.lcssa, align 1, !tbaa !14
  %i.lf = getelementptr inbounds nuw i8, ptr %.13.lcssa, i64 64
  store <8 x double> %i.le, ptr %i.lc, align 1, !tbaa !14
  %i.lg = getelementptr inbounds i8, ptr %i.lc, i64 %.idx345
  %i.lh = add nsw i64 %.8.lcssa, -8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge414
  %.14 = phi ptr [ %i.lf, %bb.ac ], [ %.13.lcssa, %._crit_edge414 ] ; 3 uses
  %.9305 = phi ptr [ %i.lg, %bb.ac ], [ %i.lc, %._crit_edge414 ]
  %.9 = phi i64 [ %i.lh, %bb.ac ], [ %.8.lcssa, %._crit_edge414 ] ; 3 uses
  %i.li = getelementptr inbounds i8, ptr %.9305, i64 %.idx346 ; 3 uses
  %i.lj = icmp sgt i64 %.9, 3
  br i1 %i.lj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.lk = load <4 x double>, ptr %.14, align 1, !tbaa !14
  %i.ll = getelementptr inbounds nuw i8, ptr %.14, i64 32
  store <4 x double> %i.lk, ptr %i.li, align 1, !tbaa !14
  %i.lm = getelementptr inbounds i8, ptr %i.li, i64 %.idx347
  %i.ln = add nsw i64 %.9, -4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.15 = phi ptr [ %i.ll, %bb.ae ], [ %.14, %bb.ad ] ; 3 uses
  %.10306 = phi ptr [ %i.lm, %bb.ae ], [ %i.li, %bb.ad ]
  %.10 = phi i64 [ %i.ln, %bb.ae ], [ %.9, %bb.ad ] ; 3 uses
  %i.lo = getelementptr inbounds i8, ptr %.10306, i64 %.idx348 ; 3 uses
  %i.lp = icmp sgt i64 %.10, 1
end_hunk_0
