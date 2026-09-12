Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/misc?download=true
inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@inflate_fast:bb.a
  %i.bk = shl nuw nsw i64 %i.bi, %i.bj
  %i.bl = add i64 %i.be, %i.bk
  %i.bm = or disjoint i32 %.0283, 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1292 = phi i64 [ %i.bl, %bb.c ], [ %.0291, %bb.b ] ; 2 uses
  %.1284 = phi i32 [ %i.bm, %bb.c ], [ %.0283, %bb.b ]
  %.1 = phi ptr [ %i.bg, %bb.c ], [ %.0, %bb.b ]  ; 7 uses
  %i.bn = and i64 %.1292, %i.am
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bn ; 3 uses
  %.sroa.096.0395 = load i8, ptr %i.bo, align 2   ; 2 uses
  %.sroa.8.0.in396 = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %.sroa.8.0397 = load i8, ptr %.sroa.8.0.in396, align 1 ; 2 uses
  %.sroa.10.0.in398 = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %.sroa.10.0399 = load i16, ptr %.sroa.10.0.in398, align 2 ; 2 uses
  %i.bp = zext i8 %.sroa.8.0397 to i32
  %i.bq = zext nneg i8 %.sroa.8.0397 to i64
  %i.br = lshr i64 %.1292, %i.bq                  ; 2 uses
  %i.bs = sub i32 %.1284, %i.bp                   ; 2 uses
  %i.bt = icmp eq i8 %.sroa.096.0395, 0
  br i1 %i.bt, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.af, %bb.d
  %.sroa.10.0.lcssa = phi i16 [ %.sroa.10.0399, %bb.d ], [ %.sroa.10.0, %bb.af ]
  %.lcssa368 = phi i64 [ %i.br, %bb.d ], [ %i.pf, %bb.af ]
  %.lcssa365 = phi i32 [ %i.bs, %bb.d ], [ %i.pg, %bb.af ]
  %i.bu = trunc i16 %.sroa.10.0.lcssa to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.0301, i64 1
  store i8 %i.bu, ptr %.0301, align 1
  br label %bb.ah

.lr.ph:                                           ; preds = %bb.d, %bb.af
  %.in = phi i8 [ %.sroa.096.0, %bb.af ], [ %.sroa.096.0395, %bb.d ]
  %i.bw = phi i32 [ %i.pg, %bb.af ], [ %i.bs, %bb.d ] ; 8 uses
  %i.bx = phi i64 [ %i.pf, %bb.af ], [ %i.br, %bb.d ] ; 7 uses
  %.sroa.10.0400 = phi i16 [ %.sroa.10.0, %bb.af ], [ %.sroa.10.0399, %bb.d ] ; 2 uses
  %i.by = zext i8 %.in to i32                     ; 5 uses
  %i.bz = and i32 %i.by, 16
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %bb.ae, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ca = zext i16 %.sroa.10.0400 to i32          ; 2 uses
  %i.cb = and i32 %i.by, 15                       ; 5 uses
  %.not338 = icmp eq i32 %i.cb, 0
  br i1 %.not338, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cc = icmp ult i32 %i.bw, %i.cb
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ce = load i8, ptr %.1, align 1
  %i.cf = zext i8 %i.ce to i64
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = shl nuw nsw i64 %i.cf, %i.cg
  %i.ci = add i64 %i.ch, %i.bx
  %i.cj = add nuw nsw i32 %i.bw, 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3294 = phi i64 [ %i.ci, %bb.g ], [ %i.bx, %bb.f ] ; 2 uses
  %.3286 = phi i32 [ %i.cj, %bb.g ], [ %i.bw, %bb.f ]
  %.2 = phi ptr [ %i.cd, %bb.g ], [ %.1, %bb.f ]
  %i.ck = trunc i64 %.3294 to i32
  %notmask339 = shl nsw i32 -1, %i.cb
  %i.cl = xor i32 %notmask339, -1
  %i.cm = and i32 %i.ck, %i.cl
  %i.cn = add nuw nsw i32 %i.cm, %i.ca
  %i.co = zext nneg i32 %i.cb to i64
  %i.cp = lshr i64 %.3294, %i.co
  %i.cq = sub i32 %.3286, %i.cb
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.4295 = phi i64 [ %i.cp, %bb.h ], [ %i.bx, %bb.e ] ; 2 uses
  %.4287 = phi i32 [ %i.cq, %bb.h ], [ %i.bw, %bb.e ] ; 5 uses
  %.0275 = phi i32 [ %i.cn, %bb.h ], [ %i.ca, %bb.e ] ; 11 uses
  %.3 = phi ptr [ %.2, %bb.h ], [ %.1, %bb.e ]    ; 4 uses
  %i.cr = icmp ult i32 %.4287, 15
  br i1 %i.cr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.ct = load i8, ptr %.3, align 1
  %i.cu = zext i8 %i.ct to i64
  %i.cv = zext nneg i32 %.4287 to i64
  %i.cw = shl nuw nsw i64 %i.cu, %i.cv
  %i.cx = add i64 %i.cw, %.4295
  %i.cy = add nuw nsw i32 %.4287, 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.da = load i8, ptr %i.cs, align 1
  %i.db = zext i8 %i.da to i64
  %i.dc = zext nneg i32 %i.cy to i64
  %i.dd = shl nuw nsw i64 %i.db, %i.dc
  %i.de = add i64 %i.cx, %i.dd
  %i.df = or disjoint i32 %.4287, 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5296 = phi i64 [ %i.de, %bb.j ], [ %.4295, %bb.i ] ; 2 uses
  %.5288 = phi i32 [ %i.df, %bb.j ], [ %.4287, %bb.i ]
  %.4 = phi ptr [ %i.cz, %bb.j ], [ %.3, %bb.i ]  ; 5 uses
  %i.dg = and i64 %.5296, %i.an
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.dg ; 3 uses
  %.sroa.096.1403 = load i8, ptr %i.dh, align 2
  %.sroa.8.1.in404 = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %.sroa.8.1405 = load i8, ptr %.sroa.8.1.in404, align 1 ; 2 uses
  %.sroa.10.1.in406 = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %.sroa.10.1407 = load i16, ptr %.sroa.10.1.in406, align 2 ; 2 uses
  %i.di = zext i8 %.sroa.8.1405 to i32
  %i.dj = zext nneg i8 %.sroa.8.1405 to i64
  %i.dk = lshr i64 %.5296, %i.dj                  ; 2 uses
  %i.dl = sub i32 %.5288, %i.di                   ; 2 uses
  %i.dm = zext i8 %.sroa.096.1403 to i32          ; 3 uses
  %i.dn = and i32 %i.dm, 16
  %.not342408 = icmp eq i32 %i.dn, 0
  br i1 %.not342408, label %.lr.ph411, label %._crit_edge412

._crit_edge412:                                   ; preds = %bb.ad, %bb.k
  %.sroa.10.1.lcssa = phi i16 [ %.sroa.10.1407, %bb.k ], [ %.sroa.10.1, %bb.ad ]
  %.lcssa376 = phi i64 [ %i.dk, %bb.k ], [ %i.or, %bb.ad ] ; 2 uses
  %.lcssa374 = phi i32 [ %i.dl, %bb.k ], [ %i.os, %bb.ad ] ; 5 uses
  %.lcssa = phi i32 [ %i.dm, %bb.k ], [ %i.ot, %bb.ad ]
  %i.do = zext i16 %.sroa.10.1.lcssa to i32       ; 4 uses
  %i.dp = and i32 %.lcssa, 15                     ; 5 uses
  %i.dq = icmp ult i32 %.lcssa374, %i.dp
  br i1 %i.dq, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge412
  %i.dr = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 2 uses
  %i.ds = load i8, ptr %.4, align 1
  %i.dt = zext i8 %i.ds to i64
  %i.du = zext nneg i32 %.lcssa374 to i64
  %i.dv = shl nuw nsw i64 %i.dt, %i.du
  %i.dw = add i64 %i.dv, %.lcssa376               ; 2 uses
  %i.dx = add nuw nsw i32 %.lcssa374, 8           ; 3 uses
  %i.dy = icmp samesign ult i32 %i.dx, %i.dp
  br i1 %i.dy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %.4, i64 2
  %i.ea = load i8, ptr %i.dr, align 1
  %i.eb = zext i8 %i.ea to i64
  %i.ec = zext nneg i32 %i.dx to i64
  %i.ed = shl nuw nsw i64 %i.eb, %i.ec
  %i.ee = add i64 %i.ed, %i.dw
  %i.ef = add nuw nsw i32 %.lcssa374, 16
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %._crit_edge412
  %.7298 = phi i64 [ %i.ee, %bb.m ], [ %i.dw, %bb.l ], [ %.lcssa376, %._crit_edge412 ] ; 2 uses
  %.7290 = phi i32 [ %i.ef, %bb.m ], [ %i.dx, %bb.l ], [ %.lcssa374, %._crit_edge412 ]
  %.5 = phi ptr [ %i.dz, %bb.m ], [ %i.dr, %bb.l ], [ %.4, %._crit_edge412 ] ; 6 uses
  %i.eg = trunc i64 %.7298 to i32
  %notmask344 = shl nsw i32 -1, %i.dp
  %i.eh = xor i32 %notmask344, -1
  %i.ei = and i32 %i.eg, %i.eh                    ; 4 uses
  %i.ej = add nuw nsw i32 %i.ei, %i.do            ; 8 uses
  %i.ek = zext nneg i32 %i.dp to i64
  %i.el = lshr i64 %.7298, %i.ek                  ; 6 uses
  %i.em = sub i32 %.7290, %i.dp                   ; 6 uses
  %i.en = ptrtoint ptr %.0301 to i64              ; 4 uses
  %i.eo = sub i64 %i.en, %i.ao
  %i.ep = trunc i64 %i.eo to i32                  ; 2 uses
  %i.eq = icmp ugt i32 %i.ej, %i.ep
  br i1 %i.eq, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.er = sub nuw nsw i32 %i.ej, %i.ep            ; 16 uses
  %i.es = icmp ugt i32 %i.er, %i.t
  br i1 %i.es, label %.loopexit362.sink.split.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.et = sub i32 %i.r, %i.er
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.eu ; 3 uses
  %i.ew = icmp ult i32 %i.er, %.0275
  br i1 %i.ew, label %.preheader.preheader, label %bb.u

.preheader.preheader:                             ; preds = %bb.q
  %i.ex = trunc i64 %i.en to i32
  %xtraiter636 = and i32 %i.er, 7                 ; 2 uses
  %lcmp.mod637.not = icmp eq i32 %xtraiter636, 0
  br i1 %lcmp.mod637.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.1302.prol = phi ptr [ %i.fa, %.preheader.prol ], [ %.0301, %.preheader.preheader ] ; 2 uses
  %.0279.prol = phi i32 [ %i.fb, %.preheader.prol ], [ %i.er, %.preheader.preheader ]
  %.0267.prol = phi ptr [ %i.ey, %.preheader.prol ], [ %i.ev, %.preheader.preheader ] ; 2 uses
  %prol.iter638 = phi i32 [ %prol.iter638.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.0267.prol, i64 1 ; 2 uses
  %i.ez = load i8, ptr %.0267.prol, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.1302.prol, i64 1 ; 3 uses
  store i8 %i.ez, ptr %.1302.prol, align 1
  %i.fb = add i32 %.0279.prol, -1                 ; 2 uses
  %prol.iter638.next = add i32 %prol.iter638, 1   ; 2 uses
  %prol.iter638.cmp.not = icmp eq i32 %prol.iter638.next, %xtraiter636
  br i1 %prol.iter638.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !19

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa604.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.fa, %.preheader.prol ]
  %.1302.unr = phi ptr [ %.0301, %.preheader.preheader ], [ %i.fa, %.preheader.prol ]
  %.0279.unr = phi i32 [ %i.er, %.preheader.preheader ], [ %i.fb, %.preheader.prol ]
  %.0267.unr = phi ptr [ %i.ev, %.preheader.preheader ], [ %i.ey, %.preheader.prol ]
  %i.fc = add i32 %i.av, %i.ei
  %i.fd = add i32 %i.fc, %i.do
  %i.fe = sub i32 %1, %i.fd
  %i.ff = add i32 %i.fe, %i.ex
  %i.fg = icmp ugt i32 %i.ff, -8
  br i1 %i.fg, label %.unr-lcssa639, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.1302 = phi ptr [ %i.ge, %.preheader ], [ %.1302.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.0279 = phi i32 [ %i.gf, %.preheader ], [ %.0279.unr, %.preheader.prol.loopexit ]
  %.0267 = phi ptr [ %i.gc, %.preheader ], [ %.0267.unr, %.preheader.prol.loopexit ] ; 9 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0267, i64 1
  %i.fi = load i8, ptr %.0267, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.1302, i64 1
  store i8 %i.fi, ptr %.1302, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %.0267, i64 2
  %i.fl = load i8, ptr %i.fh, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %.1302, i64 2
  store i8 %i.fl, ptr %i.fj, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %.0267, i64 3
  %i.fo = load i8, ptr %i.fk, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.1302, i64 3
  store i8 %i.fo, ptr %i.fm, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %.0267, i64 4
  %i.fr = load i8, ptr %i.fn, align 1
  %i.fs = getelementptr inbounds nuw i8, ptr %.1302, i64 4
  store i8 %i.fr, ptr %i.fp, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %.0267, i64 5
  %i.fu = load i8, ptr %i.fq, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %.1302, i64 5
  store i8 %i.fu, ptr %i.fs, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %.0267, i64 6
  %i.fx = load i8, ptr %i.ft, align 1
  %i.fy = getelementptr inbounds nuw i8, ptr %.1302, i64 6
  store i8 %i.fx, ptr %i.fv, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.0267, i64 7
  %i.ga = load i8, ptr %i.fw, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %.1302, i64 7
  store i8 %i.ga, ptr %i.fy, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.0267, i64 8
  %i.gd = load i8, ptr %i.fz, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.1302, i64 8 ; 2 uses
  store i8 %i.gd, ptr %i.gb, align 1
  %i.gf = add i32 %.0279, -8                      ; 2 uses
  %.not352.7 = icmp eq i32 %i.gf, 0
  br i1 %.not352.7, label %.unr-lcssa639, label %.preheader, !llvm.loop !20

.unr-lcssa639:                                    ; preds = %.preheader, %.preheader.prol.loopexit
  %.lcssa604 = phi ptr [ %.lcssa604.unr, %.preheader.prol.loopexit ], [ %i.ge, %.preheader ] ; 2 uses
  %i.gg = sub nuw nsw i32 %.0275, %i.er
  %i.gh = zext nneg i32 %i.ej to i64
  %i.gi = sub nsw i64 0, %i.gh
  %i.gj = getelementptr inbounds i8, ptr %.lcssa604, i64 %i.gi
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.gk = icmp ult i32 %i.v, %i.er
  br i1 %i.gk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gl = sub i32 %i.aq, %i.er
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.gm ; 3 uses
  %i.go = sub nuw nsw i32 %i.er, %i.v             ; 5 uses
  %i.gp = icmp ult i32 %i.go, %.0275
  br i1 %i.gp, label %.preheader527.preheader, label %bb.u

.preheader527.preheader:                          ; preds = %bb.s
  %i.gq = trunc i64 %i.en to i32
  %xtraiter628 = and i32 %i.go, 7                 ; 2 uses
  %lcmp.mod629.not = icmp eq i32 %xtraiter628, 0
  br i1 %lcmp.mod629.not, label %.preheader527.prol.loopexit, label %.preheader527.prol

.preheader527.prol:                               ; preds = %.preheader527.preheader, %.preheader527.prol
  %.2303.prol = phi ptr [ %i.gt, %.preheader527.prol ], [ %.0301, %.preheader527.preheader ] ; 2 uses
  %.1280.prol = phi i32 [ %i.gu, %.preheader527.prol ], [ %i.go, %.preheader527.preheader ]
  %.1268.prol = phi ptr [ %i.gr, %.preheader527.prol ], [ %i.gn, %.preheader527.preheader ] ; 2 uses
  %prol.iter630 = phi i32 [ %prol.iter630.next, %.preheader527.prol ], [ 0, %.preheader527.preheader ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.1268.prol, i64 1 ; 2 uses
  %i.gs = load i8, ptr %.1268.prol, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %.2303.prol, i64 1 ; 3 uses
  store i8 %i.gs, ptr %.2303.prol, align 1
  %i.gu = add i32 %.1280.prol, -1                 ; 2 uses
  %prol.iter630.next = add i32 %prol.iter630, 1   ; 2 uses
  %prol.iter630.cmp.not = icmp eq i32 %prol.iter630.next, %xtraiter628
  br i1 %prol.iter630.cmp.not, label %.preheader527.prol.loopexit, label %.preheader527.prol, !llvm.loop !21

.preheader527.prol.loopexit:                      ; preds = %.preheader527.prol, %.preheader527.preheader
  %.lcssa602.unr = phi ptr [ poison, %.preheader527.preheader ], [ %i.gt, %.preheader527.prol ]
  %.2303.unr = phi ptr [ %.0301, %.preheader527.preheader ], [ %i.gt, %.preheader527.prol ]
  %.1280.unr = phi i32 [ %i.go, %.preheader527.preheader ], [ %i.gu, %.preheader527.prol ]
  %.1268.unr = phi ptr [ %i.gn, %.preheader527.preheader ], [ %i.gr, %.preheader527.prol ]
  %i.gv = add i32 %i.au, %i.ei
  %i.gw = add i32 %i.gv, %i.do
  %i.gx = sub i32 %i.aw, %i.gw
  %i.gy = add i32 %i.gx, %i.gq
  %i.gz = icmp ugt i32 %i.gy, -8
  br i1 %i.gz, label %.unr-lcssa631, label %.preheader527

.preheader527:                                    ; preds = %.preheader527.prol.loopexit, %.preheader527
  %.2303 = phi ptr [ %i.hx, %.preheader527 ], [ %.2303.unr, %.preheader527.prol.loopexit ] ; 9 uses
  %.1280 = phi i32 [ %i.hy, %.preheader527 ], [ %.1280.unr, %.preheader527.prol.loopexit ]
  %.1268 = phi ptr [ %i.hv, %.preheader527 ], [ %.1268.unr, %.preheader527.prol.loopexit ] ; 9 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.1268, i64 1
  %i.hb = load i8, ptr %.1268, align 1
  %i.hc = getelementptr inbounds nuw i8, ptr %.2303, i64 1
  store i8 %i.hb, ptr %.2303, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %.1268, i64 2
  %i.he = load i8, ptr %i.ha, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.2303, i64 2
  store i8 %i.he, ptr %i.hc, align 1
  %i.hg = getelementptr inbounds nuw i8, ptr %.1268, i64 3
  %i.hh = load i8, ptr %i.hd, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.2303, i64 3
  store i8 %i.hh, ptr %i.hf, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.1268, i64 4
  %i.hk = load i8, ptr %i.hg, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.2303, i64 4
  store i8 %i.hk, ptr %i.hi, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %.1268, i64 5
  %i.hn = load i8, ptr %i.hj, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %.2303, i64 5
  store i8 %i.hn, ptr %i.hl, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.1268, i64 6
  %i.hq = load i8, ptr %i.hm, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %.2303, i64 6
  store i8 %i.hq, ptr %i.ho, align 1
  %i.hs = getelementptr inbounds nuw i8, ptr %.1268, i64 7
  %i.ht = load i8, ptr %i.hp, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.2303, i64 7
  store i8 %i.ht, ptr %i.hr, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.1268, i64 8
  %i.hw = load i8, ptr %i.hs, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.2303, i64 8 ; 2 uses
  store i8 %i.hw, ptr %i.hu, align 1
  %i.hy = add i32 %.1280, -8                      ; 2 uses
  %.not350.7 = icmp eq i32 %i.hy, 0
  br i1 %.not350.7, label %.unr-lcssa631, label %.preheader527, !llvm.loop !22

.unr-lcssa631:                                    ; preds = %.preheader527, %.preheader527.prol.loopexit
  %.lcssa602 = phi ptr [ %.lcssa602.unr, %.preheader527.prol.loopexit ], [ %i.hx, %.preheader527 ] ; 3 uses
  %i.hz = sub nuw nsw i32 %.0275, %i.go           ; 3 uses
  %i.ia = icmp ult i32 %i.v, %i.hz
  br i1 %i.ia, label %.preheader526.preheader, label %bb.u

.preheader526.preheader:                          ; preds = %.unr-lcssa631
  br i1 %lcmp.mod633.not, label %.preheader526.prol.loopexit, label %.preheader526.prol

.preheader526.prol:                               ; preds = %.preheader526.preheader, %.preheader526.prol
  %.3304.prol = phi ptr [ %i.id, %.preheader526.prol ], [ %.lcssa602, %.preheader526.preheader ] ; 2 uses
  %.2281.prol = phi i32 [ %i.ie, %.preheader526.prol ], [ %i.v, %.preheader526.preheader ]
  %.2269.prol = phi ptr [ %i.ib, %.preheader526.prol ], [ %i.x, %.preheader526.preheader ] ; 2 uses
  %prol.iter634 = phi i32 [ %prol.iter634.next, %.preheader526.prol ], [ 0, %.preheader526.preheader ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.2269.prol, i64 1 ; 2 uses
  %i.ic = load i8, ptr %.2269.prol, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.3304.prol, i64 1 ; 3 uses
  store i8 %i.ic, ptr %.3304.prol, align 1
  %i.ie = add i32 %.2281.prol, -1                 ; 2 uses
  %prol.iter634.next = add i32 %prol.iter634, 1   ; 2 uses
  %prol.iter634.cmp.not = icmp eq i32 %prol.iter634.next, %xtraiter632
  br i1 %prol.iter634.cmp.not, label %.preheader526.prol.loopexit, label %.preheader526.prol, !llvm.loop !23

.preheader526.prol.loopexit:                      ; preds = %.preheader526.prol, %.preheader526.preheader
  %.lcssa603.unr = phi ptr [ poison, %.preheader526.preheader ], [ %i.id, %.preheader526.prol ]
  %.3304.unr = phi ptr [ %.lcssa602, %.preheader526.preheader ], [ %i.id, %.preheader526.prol ]
  %.2281.unr = phi i32 [ %i.v, %.preheader526.preheader ], [ %i.ie, %.preheader526.prol ]
  %.2269.unr = phi ptr [ %i.x, %.preheader526.preheader ], [ %i.ib, %.preheader526.prol ]
  br i1 %i.ax, label %.unr-lcssa635, label %.preheader526

.preheader526:                                    ; preds = %.preheader526.prol.loopexit, %.preheader526
  %.3304 = phi ptr [ %i.jc, %.preheader526 ], [ %.3304.unr, %.preheader526.prol.loopexit ] ; 9 uses
  %.2281 = phi i32 [ %i.jd, %.preheader526 ], [ %.2281.unr, %.preheader526.prol.loopexit ]
  %.2269 = phi ptr [ %i.ja, %.preheader526 ], [ %.2269.unr, %.preheader526.prol.loopexit ] ; 9 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.2269, i64 1
  %i.ig = load i8, ptr %.2269, align 1
  %i.ih = getelementptr inbounds nuw i8, ptr %.3304, i64 1
  store i8 %i.ig, ptr %.3304, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.2269, i64 2
  %i.ij = load i8, ptr %i.if, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %.3304, i64 2
  store i8 %i.ij, ptr %i.ih, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %.2269, i64 3
  %i.im = load i8, ptr %i.ii, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %.3304, i64 3
  store i8 %i.im, ptr %i.ik, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %.2269, i64 4
  %i.ip = load i8, ptr %i.il, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.3304, i64 4
  store i8 %i.ip, ptr %i.in, align 1
  %i.ir = getelementptr inbounds nuw i8, ptr %.2269, i64 5
  %i.is = load i8, ptr %i.io, align 1
  %i.it = getelementptr inbounds nuw i8, ptr %.3304, i64 5
  store i8 %i.is, ptr %i.iq, align 1
  %i.iu = getelementptr inbounds nuw i8, ptr %.2269, i64 6
  %i.iv = load i8, ptr %i.ir, align 1
  %i.iw = getelementptr inbounds nuw i8, ptr %.3304, i64 6
  store i8 %i.iv, ptr %i.it, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %.2269, i64 7
  %i.iy = load i8, ptr %i.iu, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %.3304, i64 7
  store i8 %i.iy, ptr %i.iw, align 1
  %i.ja = getelementptr inbounds nuw i8, ptr %.2269, i64 8
  %i.jb = load i8, ptr %i.ix, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %.3304, i64 8 ; 2 uses
  store i8 %i.jb, ptr %i.iz, align 1
  %i.jd = add i32 %.2281, -8                      ; 2 uses
  %.not351.7 = icmp eq i32 %i.jd, 0
  br i1 %.not351.7, label %.unr-lcssa635, label %.preheader526, !llvm.loop !24

.unr-lcssa635:                                    ; preds = %.preheader526, %.preheader526.prol.loopexit
  %.lcssa603 = phi ptr [ %.lcssa603.unr, %.preheader526.prol.loopexit ], [ %i.jc, %.preheader526 ] ; 2 uses
  %i.je = sub nuw nsw i32 %i.hz, %i.v
  %i.jf = zext nneg i32 %i.ej to i64
  %i.jg = sub nsw i64 0, %i.jf
  %i.jh = getelementptr inbounds i8, ptr %.lcssa603, i64 %i.jg
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ji = sub nuw i32 %i.v, %i.er
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.jj ; 3 uses
  %i.jl = icmp ult i32 %i.er, %.0275
  br i1 %i.jl, label %.preheader528.preheader, label %bb.u

.preheader528.preheader:                          ; preds = %bb.t
  %i.jm = trunc i64 %i.en to i32
  %xtraiter625 = and i32 %i.er, 7                 ; 2 uses
  %lcmp.mod626.not = icmp eq i32 %xtraiter625, 0
  br i1 %lcmp.mod626.not, label %.preheader528.prol.loopexit, label %.preheader528.prol

.preheader528.prol:                               ; preds = %.preheader528.preheader, %.preheader528.prol
  %.4305.prol = phi ptr [ %i.jp, %.preheader528.prol ], [ %.0301, %.preheader528.preheader ] ; 2 uses
  %.3282.prol = phi i32 [ %i.jq, %.preheader528.prol ], [ %i.er, %.preheader528.preheader ]
  %.3270.prol = phi ptr [ %i.jn, %.preheader528.prol ], [ %i.jk, %.preheader528.preheader ] ; 2 uses
  %prol.iter627 = phi i32 [ %prol.iter627.next, %.preheader528.prol ], [ 0, %.preheader528.preheader ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.3270.prol, i64 1 ; 2 uses
  %i.jo = load i8, ptr %.3270.prol, align 1
  %i.jp = getelementptr inbounds nuw i8, ptr %.4305.prol, i64 1 ; 3 uses
  store i8 %i.jo, ptr %.4305.prol, align 1
  %i.jq = add i32 %.3282.prol, -1                 ; 2 uses
  %prol.iter627.next = add i32 %prol.iter627, 1   ; 2 uses
  %prol.iter627.cmp.not = icmp eq i32 %prol.iter627.next, %xtraiter625
  br i1 %prol.iter627.cmp.not, label %.preheader528.prol.loopexit, label %.preheader528.prol, !llvm.loop !25

.preheader528.prol.loopexit:                      ; preds = %.preheader528.prol, %.preheader528.preheader
  %.lcssa601.unr = phi ptr [ poison, %.preheader528.preheader ], [ %i.jp, %.preheader528.prol ]
  %.4305.unr = phi ptr [ %.0301, %.preheader528.preheader ], [ %i.jp, %.preheader528.prol ]
  %.3282.unr = phi i32 [ %i.er, %.preheader528.preheader ], [ %i.jq, %.preheader528.prol ]
  %.3270.unr = phi ptr [ %i.jk, %.preheader528.preheader ], [ %i.jn, %.preheader528.prol ]
  %i.jr = add i32 %i.at, %i.ei
  %i.js = add i32 %i.jr, %i.do
  %i.jt = sub i32 %1, %i.js
  %i.ju = add i32 %i.jt, %i.jm
  %i.jv = icmp ugt i32 %i.ju, -8
  br i1 %i.jv, label %.unr-lcssa, label %.preheader528

.preheader528:                                    ; preds = %.preheader528.prol.loopexit, %.preheader528
  %.4305 = phi ptr [ %i.kt, %.preheader528 ], [ %.4305.unr, %.preheader528.prol.loopexit ] ; 9 uses
  %.3282 = phi i32 [ %i.ku, %.preheader528 ], [ %.3282.unr, %.preheader528.prol.loopexit ]
  %.3270 = phi ptr [ %i.kr, %.preheader528 ], [ %.3270.unr, %.preheader528.prol.loopexit ] ; 9 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.3270, i64 1
  %i.jx = load i8, ptr %.3270, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %.4305, i64 1
  store i8 %i.jx, ptr %.4305, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %.3270, i64 2
  %i.ka = load i8, ptr %i.jw, align 1
  %i.kb = getelementptr inbounds nuw i8, ptr %.4305, i64 2
  store i8 %i.ka, ptr %i.jy, align 1
  %i.kc = getelementptr inbounds nuw i8, ptr %.3270, i64 3
  %i.kd = load i8, ptr %i.jz, align 1
  %i.ke = getelementptr inbounds nuw i8, ptr %.4305, i64 3
  store i8 %i.kd, ptr %i.kb, align 1
  %i.kf = getelementptr inbounds nuw i8, ptr %.3270, i64 4
  %i.kg = load i8, ptr %i.kc, align 1
  %i.kh = getelementptr inbounds nuw i8, ptr %.4305, i64 4
  store i8 %i.kg, ptr %i.ke, align 1
  %i.ki = getelementptr inbounds nuw i8, ptr %.3270, i64 5
  %i.kj = load i8, ptr %i.kf, align 1
  %i.kk = getelementptr inbounds nuw i8, ptr %.4305, i64 5
  store i8 %i.kj, ptr %i.kh, align 1
  %i.kl = getelementptr inbounds nuw i8, ptr %.3270, i64 6
  %i.km = load i8, ptr %i.ki, align 1
  %i.kn = getelementptr inbounds nuw i8, ptr %.4305, i64 6
  store i8 %i.km, ptr %i.kk, align 1
  %i.ko = getelementptr inbounds nuw i8, ptr %.3270, i64 7
  %i.kp = load i8, ptr %i.kl, align 1
  %i.kq = getelementptr inbounds nuw i8, ptr %.4305, i64 7
  store i8 %i.kp, ptr %i.kn, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %.3270, i64 8
  %i.ks = load i8, ptr %i.ko, align 1
  %i.kt = getelementptr inbounds nuw i8, ptr %.4305, i64 8 ; 2 uses
  store i8 %i.ks, ptr %i.kq, align 1
  %i.ku = add i32 %.3282, -8                      ; 2 uses
  %.not349.7 = icmp eq i32 %i.ku, 0
  br i1 %.not349.7, label %.unr-lcssa, label %.preheader528, !llvm.loop !26

.unr-lcssa:                                       ; preds = %.preheader528, %.preheader528.prol.loopexit
  %.lcssa601 = phi ptr [ %.lcssa601.unr, %.preheader528.prol.loopexit ], [ %i.kt, %.preheader528 ] ; 2 uses
  %i.kv = sub nuw nsw i32 %.0275, %i.er
  %i.kw = zext nneg i32 %i.ej to i64
  %i.kx = sub nsw i64 0, %i.kw
  %i.ky = getelementptr inbounds i8, ptr %.lcssa601, i64 %i.kx
  br label %bb.u

bb.u:                                             ; preds = %.unr-lcssa631, %.unr-lcssa635, %bb.s, %.unr-lcssa, %bb.t, %bb.q, %.unr-lcssa639
  %.5306 = phi ptr [ %.lcssa604, %.unr-lcssa639 ], [ %.0301, %bb.q ], [ %.lcssa603, %.unr-lcssa635 ], [ %.lcssa602, %.unr-lcssa631 ], [ %.0301, %bb.s ], [ %.lcssa601, %.unr-lcssa ], [ %.0301, %bb.t ] ; 2 uses
  %.1276 = phi i32 [ %i.gg, %.unr-lcssa639 ], [ %.0275, %bb.q ], [ %i.je, %.unr-lcssa635 ], [ %i.hz, %.unr-lcssa631 ], [ %.0275, %bb.s ], [ %i.kv, %.unr-lcssa ], [ %.0275, %bb.t ] ; 3 uses
  %.4271 = phi ptr [ %i.gj, %.unr-lcssa639 ], [ %i.ev, %bb.q ], [ %i.jh, %.unr-lcssa635 ], [ %i.x, %.unr-lcssa631 ], [ %i.gn, %bb.s ], [ %i.ky, %.unr-lcssa ], [ %i.jk, %bb.t ] ; 2 uses
  %i.kz = icmp ugt i32 %.1276, 2
  br i1 %i.kz, label %.lr.ph421, label %._crit_edge422

.lr.ph421:                                        ; preds = %bb.u, %.lr.ph421
  %.5272419 = phi ptr [ %i.lg, %.lr.ph421 ], [ %.4271, %bb.u ] ; 4 uses
  %.2277418 = phi i32 [ %i.lj, %.lr.ph421 ], [ %.1276, %bb.u ]
  %.6307417 = phi ptr [ %i.li, %.lr.ph421 ], [ %.5306, %bb.u ] ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.5272419, i64 1
  %i.lb = load i8, ptr %.5272419, align 1
  %i.lc = getelementptr inbounds nuw i8, ptr %.6307417, i64 1
  store i8 %i.lb, ptr %.6307417, align 1
  %i.ld = getelementptr inbounds nuw i8, ptr %.5272419, i64 2
  %i.le = load i8, ptr %i.la, align 1
  %i.lf = getelementptr inbounds nuw i8, ptr %.6307417, i64 2
  store i8 %i.le, ptr %i.lc, align 1
  %i.lg = getelementptr inbounds nuw i8, ptr %.5272419, i64 3 ; 2 uses
  %i.lh = load i8, ptr %i.ld, align 1
  %i.li = getelementptr inbounds nuw i8, ptr %.6307417, i64 3 ; 2 uses
  store i8 %i.lh, ptr %i.lf, align 1
  %i.lj = add i32 %.2277418, -3                   ; 3 uses
  %i.lk = icmp ugt i32 %i.lj, 2
  br i1 %i.lk, label %.lr.ph421, label %._crit_edge422, !llvm.loop !27

._crit_edge422:                                   ; preds = %.lr.ph421, %bb.u
  %.6307.lcssa = phi ptr [ %.5306, %bb.u ], [ %i.li, %.lr.ph421 ] ; 4 uses
  %.2277.lcssa = phi i32 [ %.1276, %bb.u ], [ %i.lj, %.lr.ph421 ] ; 2 uses
  %.5272.lcssa = phi ptr [ %.4271, %bb.u ], [ %i.lg, %.lr.ph421 ] ; 2 uses
  %.not353 = icmp eq i32 %.2277.lcssa, 0
  br i1 %.not353, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %._crit_edge422
  %i.ll = load i8, ptr %.5272.lcssa, align 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.6307.lcssa, i64 1 ; 2 uses
  store i8 %i.ll, ptr %.6307.lcssa, align 1
  %i.ln = icmp eq i32 %.2277.lcssa, 2
  br i1 %i.ln, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.lo = getelementptr inbounds nuw i8, ptr %.5272.lcssa, i64 1
  %i.lp = load i8, ptr %i.lo, align 1
  %i.lq = getelementptr inbounds nuw i8, ptr %.6307.lcssa, i64 2
  store i8 %i.lp, ptr %i.lm, align 1
  br label %bb.ah

bb.x:                                             ; preds = %bb.n
  %i.lr = zext nneg i32 %i.ej to i64
  %i.ls = sub nsw i64 0, %i.lr
  %i.lt = getelementptr inbounds i8, ptr %.0301, i64 %i.ls ; 3 uses
  %i.lu = getelementptr inbounds i8, ptr %.0301, i64 -1
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = and i64 %i.lv, 1
  %.not345 = icmp eq i64 %i.lw, 0
  br i1 %.not345, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  %i.ly = load i8, ptr %i.lt, align 1
  %i.lz = getelementptr inbounds nuw i8, ptr %.0301, i64 1
  store i8 %i.ly, ptr %.0301, align 1
  %i.ma = add nsw i32 %.0275, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.7308 = phi ptr [ %.0301, %bb.x ], [ %i.lz, %bb.y ] ; 5 uses
  %.3278 = phi i32 [ %.0275, %bb.x ], [ %i.ma, %bb.y ] ; 3 uses
  %.6273 = phi ptr [ %i.lt, %bb.x ], [ %i.lx, %bb.y ] ; 4 uses
  %i.mb = icmp samesign ugt i32 %i.ej, 2
  br i1 %i.mb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.mc = lshr i32 %.3278, 1                      ; 2 uses
  %i.md = zext nneg i32 %i.mc to i64              ; 3 uses
  %xtraiter622 = and i64 %i.md, 7                 ; 2 uses
  %lcmp.mod623.not = icmp eq i64 %xtraiter622, 0
  br i1 %lcmp.mod623.not, label %.prol.loopexit620, label %.prol.preheader619

.prol.preheader619:                               ; preds = %bb.aa, %.prol.preheader619
  %.0265.prol = phi ptr [ %i.mg, %.prol.preheader619 ], [ %.7308, %bb.aa ] ; 2 uses
  %.0263.prol = phi i64 [ %i.mh, %.prol.preheader619 ], [ %i.md, %bb.aa ]
  %.0262.prol = phi ptr [ %i.me, %.prol.preheader619 ], [ %.6273, %bb.aa ] ; 2 uses
  %prol.iter624 = phi i64 [ %prol.iter624.next, %.prol.preheader619 ], [ 0, %bb.aa ]
  %i.me = getelementptr inbounds nuw i8, ptr %.0262.prol, i64 2 ; 3 uses
  %i.mf = load i16, ptr %.0262.prol, align 2
  %i.mg = getelementptr inbounds nuw i8, ptr %.0265.prol, i64 2 ; 3 uses
  store i16 %i.mf, ptr %.0265.prol, align 2
  %i.mh = add i64 %.0263.prol, -1                 ; 2 uses
  %prol.iter624.next = add i64 %prol.iter624, 1   ; 2 uses
  %prol.iter624.cmp.not = icmp eq i64 %prol.iter624.next, %xtraiter622
  br i1 %prol.iter624.cmp.not, label %.prol.loopexit620, label %.prol.preheader619, !llvm.loop !28

.prol.loopexit620:                                ; preds = %.prol.preheader619, %bb.aa
  %.lcssa600.unr = phi ptr [ poison, %bb.aa ], [ %i.me, %.prol.preheader619 ]
  %.lcssa599.unr = phi ptr [ poison, %bb.aa ], [ %i.mg, %.prol.preheader619 ]
  %.0265.unr = phi ptr [ %.7308, %bb.aa ], [ %i.mg, %.prol.preheader619 ]
  %.0263.unr = phi i64 [ %i.md, %bb.aa ], [ %i.mh, %.prol.preheader619 ]
  %.0262.unr = phi ptr [ %.6273, %bb.aa ], [ %i.me, %.prol.preheader619 ]
  %i.mi = add nsw i32 %i.mc, -1
  %i.mj = icmp ult i32 %i.mi, 7
  br i1 %i.mj, label %.loopexit, label %.new621

.new621:                                          ; preds = %.prol.loopexit620, %.new621
  %.0265 = phi ptr [ %i.nh, %.new621 ], [ %.0265.unr, %.prol.loopexit620 ] ; 9 uses
  %.0263 = phi i64 [ %i.ni, %.new621 ], [ %.0263.unr, %.prol.loopexit620 ]
  %.0262 = phi ptr [ %i.nf, %.new621 ], [ %.0262.unr, %.prol.loopexit620 ] ; 9 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0262, i64 2
  %i.ml = load i16, ptr %.0262, align 2
  %i.mm = getelementptr inbounds nuw i8, ptr %.0265, i64 2
  store i16 %i.ml, ptr %.0265, align 2
  %i.mn = getelementptr inbounds nuw i8, ptr %.0262, i64 4
  %i.mo = load i16, ptr %i.mk, align 2
  %i.mp = getelementptr inbounds nuw i8, ptr %.0265, i64 4
  store i16 %i.mo, ptr %i.mm, align 2
  %i.mq = getelementptr inbounds nuw i8, ptr %.0262, i64 6
  %i.mr = load i16, ptr %i.mn, align 2
  %i.ms = getelementptr inbounds nuw i8, ptr %.0265, i64 6
  store i16 %i.mr, ptr %i.mp, align 2
  %i.mt = getelementptr inbounds nuw i8, ptr %.0262, i64 8
  %i.mu = load i16, ptr %i.mq, align 2
  %i.mv = getelementptr inbounds nuw i8, ptr %.0265, i64 8
  store i16 %i.mu, ptr %i.ms, align 2
  %i.mw = getelementptr inbounds nuw i8, ptr %.0262, i64 10
  %i.mx = load i16, ptr %i.mt, align 2
  %i.my = getelementptr inbounds nuw i8, ptr %.0265, i64 10
  store i16 %i.mx, ptr %i.mv, align 2
  %i.mz = getelementptr inbounds nuw i8, ptr %.0262, i64 12
  %i.na = load i16, ptr %i.mw, align 2
  %i.nb = getelementptr inbounds nuw i8, ptr %.0265, i64 12
  store i16 %i.na, ptr %i.my, align 2
  %i.nc = getelementptr inbounds nuw i8, ptr %.0262, i64 14
  %i.nd = load i16, ptr %i.mz, align 2
  %i.ne = getelementptr inbounds nuw i8, ptr %.0265, i64 14
  store i16 %i.nd, ptr %i.nb, align 2
  %i.nf = getelementptr inbounds nuw i8, ptr %.0262, i64 16 ; 2 uses
  %i.ng = load i16, ptr %i.nc, align 2
  %i.nh = getelementptr inbounds nuw i8, ptr %.0265, i64 16 ; 2 uses
  store i16 %i.ng, ptr %i.ne, align 2
  %i.ni = add i64 %.0263, -8                      ; 2 uses
  %.not347.7 = icmp eq i64 %i.ni, 0
  br i1 %.not347.7, label %.loopexit, label %.new621, !llvm.loop !29

bb.ab:                                            ; preds = %bb.z
  %i.nj = getelementptr inbounds i8, ptr %.7308, i64 -2
  %i.nk = load i16, ptr %i.nj, align 2            ; 3 uses
  %i.nl = icmp eq i32 %i.ej, 1
  %.sroa.5.0.extract.shift = lshr i16 %i.nk, 8
  %.sroa.5.0.insert.shift = and i16 %i.nk, -256
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.5.0.insert.shift, %.sroa.5.0.extract.shift
  %.0261 = select i1 %i.nl, i16 %.sroa.0.0.insert.insert, i16 %i.nk ; 9 uses
  %i.nm = lshr i32 %.3278, 1                      ; 2 uses
  %i.nn = zext nneg i32 %i.nm to i64              ; 3 uses
  %xtraiter = and i64 %i.nn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ab, %.prol.preheader
  %.1266.prol = phi ptr [ %i.no, %.prol.preheader ], [ %.7308, %bb.ab ] ; 2 uses
  %.1264.prol = phi i64 [ %i.np, %.prol.preheader ], [ %i.nn, %bb.ab ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ab ]
  %i.no = getelementptr inbounds nuw i8, ptr %.1266.prol, i64 2 ; 3 uses
  store i16 %.0261, ptr %.1266.prol, align 2
  %i.np = add i64 %.1264.prol, -1                 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !30

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ab
  %.lcssa598.unr = phi ptr [ poison, %bb.ab ], [ %i.no, %.prol.preheader ]
  %.1266.unr = phi ptr [ %.7308, %bb.ab ], [ %i.no, %.prol.preheader ]
  %.1264.unr = phi i64 [ %i.nn, %bb.ab ], [ %i.np, %.prol.preheader ]
  %i.nq = add nsw i32 %i.nm, -1
  %i.nr = icmp ult i32 %i.nq, 7
  br i1 %i.nr, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.1266 = phi ptr [ %i.nz, %.new ], [ %.1266.unr, %.prol.loopexit ] ; 9 uses
  %.1264 = phi i64 [ %i.oa, %.new ], [ %.1264.unr, %.prol.loopexit ]
  %i.ns = getelementptr inbounds nuw i8, ptr %.1266, i64 2
  store i16 %.0261, ptr %.1266, align 2
  %i.nt = getelementptr inbounds nuw i8, ptr %.1266, i64 4
  store i16 %.0261, ptr %i.ns, align 2
  %i.nu = getelementptr inbounds nuw i8, ptr %.1266, i64 6
  store i16 %.0261, ptr %i.nt, align 2
  %i.nv = getelementptr inbounds nuw i8, ptr %.1266, i64 8
  store i16 %.0261, ptr %i.nu, align 2
  %i.nw = getelementptr inbounds nuw i8, ptr %.1266, i64 10
end_hunk_0
