Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/cast?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@CAST_set_key:bb.a
  %i.r = add nuw nsw i64 %.1196, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %spec.store.select
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.s = icmp ult i64 %1, 11
  %spec.select = zext i1 %i.s to i32
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.a
  %.sink = phi i32 [ 1, %bb.a ], [ %spec.select, %._crit_edge ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %.sink, ptr %i.t, align 4, !tbaa !11
  %i.u = load i32, ptr %i.a, align 16, !tbaa !9
  %i.v = shl i32 %i.u, 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9
  %i.y = shl i32 %i.x, 16
  %i.z = or i32 %i.y, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !9
  %i.ac = shl i32 %i.ab, 8
  %i.ad = or i32 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !9
  %i.ag = or i32 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load i32, ptr %i.ah, align 16, !tbaa !9
  %i.aj = shl i32 %i.ai, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !9
  %i.am = shl i32 %i.al, 16
  %i.an = or i32 %i.am, %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !9
  %i.aq = shl i32 %i.ap, 8
  %i.ar = or i32 %i.an, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9
  %i.au = or i32 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aw = load i32, ptr %i.av, align 16, !tbaa !9 ; 2 uses
  %i.ax = shl i32 %i.aw, 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !9  ; 2 uses
  %i.ba = shl i32 %i.az, 16
  %i.bb = or i32 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !9  ; 2 uses
  %i.be = shl i32 %i.bd, 8
  %i.bf = or i32 %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !9  ; 2 uses
  %i.bi = or i32 %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !9 ; 2 uses
  %i.bl = shl i32 %i.bk, 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !9  ; 2 uses
  %i.bo = shl i32 %i.bn, 16
  %i.bp = or i32 %i.bo, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !9  ; 2 uses
  %i.bs = shl i32 %i.br, 8
  %i.bt = or i32 %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !9  ; 2 uses
  %i.bw = or i32 %i.bt, %i.bv
  %.phi.trans.insert = zext i32 %i.bv to i64
  %.phi.trans.insert237 = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert237, align 4, !tbaa !9
  %.phi.trans.insert238 = zext i32 %i.aw to i64
  %.phi.trans.insert239 = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %.phi.trans.insert238
  %.pre240 = load i32, ptr %.phi.trans.insert239, align 4, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.thread
  %i.bx = phi i32 [ %.pre240, %._crit_edge.thread ], [ %i.yg, %bb.b ]
  %i.by = phi i32 [ %.pre, %._crit_edge.thread ], [ %i.yo, %bb.b ]
  %i.bz = phi i32 [ %i.bh, %._crit_edge.thread ], [ %i.vr, %bb.b ]
  %i.ca = phi i32 [ %i.az, %._crit_edge.thread ], [ %i.vv, %bb.b ]
  %i.cb = phi i32 [ %i.bd, %._crit_edge.thread ], [ %i.vt, %bb.b ]
  %i.cc = phi i32 [ %i.br, %._crit_edge.thread ], [ %i.ws, %bb.b ]
  %i.cd = phi i32 [ %i.bk, %._crit_edge.thread ], [ %i.wv, %bb.b ]
  %i.ce = phi i32 [ %i.bn, %._crit_edge.thread ], [ %i.wu, %bb.b ]
  %.sroa.17.0 = phi i32 [ %i.bw, %._crit_edge.thread ], [ %i.wp, %bb.b ]
  %.sroa.12.0 = phi i32 [ %i.bi, %._crit_edge.thread ], [ %i.vq, %bb.b ]
  %.sroa.7.0 = phi i32 [ %i.au, %._crit_edge.thread ], [ %i.ut, %bb.b ]
  %.sroa.0114.0 = phi i32 [ %i.ag, %._crit_edge.thread ], [ %i.tu, %bb.b ]
  %.0193 = phi ptr [ %i.b, %._crit_edge.thread ], [ %i.yy, %bb.b ] ; 18 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !9
  %i.ci = xor i32 %i.ch, %.sroa.0114.0
  %i.cj = xor i32 %i.ci, %i.by
  %i.ck = zext i32 %i.cd to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !9
  %i.cn = xor i32 %i.cj, %i.cm
  %i.co = zext i32 %i.cc to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !9
  %i.cr = xor i32 %i.cn, %i.cq
  %i.cs = xor i32 %i.cr, %i.bx                    ; 5 uses
  %i.ct = and i32 %i.cs, 255
  %i.cu = lshr i32 %i.cs, 8
  %i.cv = and i32 %i.cu, 255
  %i.cw = lshr i32 %i.cs, 16
  %i.cx = and i32 %i.cw, 255
  %i.cy = lshr i32 %i.cs, 24
  %i.cz = zext nneg i32 %i.cy to i64              ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !9
  %i.dc = xor i32 %i.db, %.sroa.12.0
  %i.dd = zext nneg i32 %i.cv to i64              ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !9
  %i.dg = xor i32 %i.dc, %i.df
  %i.dh = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !9  ; 2 uses
  %i.dk = zext nneg i32 %i.ct to i64              ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !9
  %i.dn = zext i32 %i.cb to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !9
  %i.dq = xor i32 %i.dg, %i.dm
  %i.dr = xor i32 %i.dq, %i.dp
  %i.ds = xor i32 %i.dr, %i.dj                    ; 5 uses
  %i.dt = and i32 %i.ds, 255
  %i.du = lshr i32 %i.ds, 8
  %i.dv = and i32 %i.du, 255
  %i.dw = lshr i32 %i.ds, 16
  %i.dx = and i32 %i.dw, 255
  %i.dy = lshr i32 %i.ds, 24
  %i.dz = zext nneg i32 %i.dt to i64              ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !9
  %i.ec = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !9  ; 2 uses
  %i.ef = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !9  ; 2 uses
  %i.ei = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !9  ; 2 uses
  %i.el = zext i32 %i.ca to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !9
  %i.eo = xor i32 %.sroa.17.0, %i.eb
  %i.ep = xor i32 %i.eo, %i.en
  %i.eq = xor i32 %i.ep, %i.ee
  %i.er = xor i32 %i.eq, %i.eh
  %i.es = xor i32 %i.er, %i.ek                    ; 5 uses
  %i.et = and i32 %i.es, 255
  %i.eu = lshr i32 %i.es, 8
  %i.ev = and i32 %i.eu, 255
  %i.ew = lshr i32 %i.es, 16
  %i.ex = and i32 %i.ew, 255
  %i.ey = lshr i32 %i.es, 24
  %i.ez = zext nneg i32 %i.ev to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !9  ; 2 uses
  %i.fc = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !9  ; 2 uses
  %i.ff = zext nneg i32 %i.et to i64              ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !9
  %i.fi = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !9
  %i.fl = zext i32 %i.bz to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !9
  %i.fo = xor i32 %.sroa.7.0, %i.fh
  %i.fp = xor i32 %i.fo, %i.fk
  %i.fq = xor i32 %i.fp, %i.fn
  %i.fr = xor i32 %i.fq, %i.fb
  %i.fs = xor i32 %i.fr, %i.fe                    ; 5 uses
  %i.ft = and i32 %i.fs, 255
  %i.fu = lshr i32 %i.fs, 8
  %i.fv = and i32 %i.fu, 255
  %i.fw = lshr i32 %i.fs, 16
  %i.fx = and i32 %i.fw, 255
  %i.fy = lshr i32 %i.fs, 24
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.fi
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !9
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.dz
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !9
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.ec
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !9  ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.dd
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !9
  %i.gh = xor i32 %i.ga, %i.gc
  %i.gi = xor i32 %i.gh, %i.gg
  %i.gj = xor i32 %i.gi, %i.fe
  %i.gk = xor i32 %i.gj, %i.ge
  store i32 %i.gk, ptr %.0193, align 4, !tbaa !9
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.ff
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !9
  %i.gn = xor i32 %i.ee, %i.gm
  %i.go = xor i32 %i.gn, %i.eh
  %i.gp = xor i32 %i.go, %i.ek
  %i.gq = xor i32 %i.gp, %i.fb
  %i.gr = getelementptr inbounds nuw i8, ptr %.0193, i64 4
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !9
  %i.gs = zext nneg i32 %i.fy to i64              ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !9
  %i.gv = zext nneg i32 %i.fx to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !9
  %i.gy = xor i32 %i.gx, %i.gu
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.dk
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !9
  %i.hb = xor i32 %i.gy, %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.dd
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !9  ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.fc
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !9
  %i.hg = xor i32 %i.hb, %i.hf
  %i.hh = xor i32 %i.hg, %i.hd
  %i.hi = getelementptr inbounds nuw i8, ptr %.0193, i64 8
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !9
  %i.hj = zext nneg i32 %i.fv to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !9
  %i.hm = zext nneg i32 %i.ft to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !9
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.cz
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !9
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.gs
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !9
  %i.ht = xor i32 %i.hl, %i.ho
  %i.hu = xor i32 %i.ht, %i.hq
  %i.hv = xor i32 %i.hu, %i.hs
  %i.hw = xor i32 %i.hv, %i.dj
  %i.hx = getelementptr inbounds nuw i8, ptr %.0193, i64 12
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !9
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.ef
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !9
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.dz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !9
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.ei
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !9
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.cz
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !9
  %i.ig = xor i32 %i.hz, %i.ib
  %i.ih = xor i32 %i.ig, %i.id
  %i.ii = xor i32 %i.ih, %i.if
  %i.ij = xor i32 %i.ii, %i.es
  %i.ik = xor i32 %i.ij, %i.ge                    ; 5 uses
  %i.il = and i32 %i.ik, 255
  %i.im = lshr i32 %i.ik, 8
  %i.in = and i32 %i.im, 255
  %i.io = lshr i32 %i.ik, 16
  %i.ip = and i32 %i.io, 255
  %i.iq = lshr i32 %i.ik, 24
  %i.ir = zext nneg i32 %i.iq to i64              ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !9
  %i.iu = zext nneg i32 %i.in to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !9  ; 2 uses
  %i.ix = zext nneg i32 %i.ip to i64              ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !9
  %i.ja = zext nneg i32 %i.il to i64              ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !9
  %i.jd = xor i32 %i.it, %i.iz
  %i.je = xor i32 %i.jd, %i.jc
  %i.jf = xor i32 %i.je, %i.cs
  %i.jg = xor i32 %i.jf, %i.hd
  %i.jh = xor i32 %i.jg, %i.iw                    ; 5 uses
  %i.ji = and i32 %i.jh, 255
  %i.jj = lshr i32 %i.jh, 8
  %i.jk = and i32 %i.jj, 255
  %i.jl = lshr i32 %i.jh, 16
  %i.jm = and i32 %i.jl, 255
  %i.jn = lshr i32 %i.jh, 24
  %i.jo = zext nneg i32 %i.ji to i64              ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !9
  %i.jr = zext nneg i32 %i.jk to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !9
  %i.ju = xor i32 %i.jt, %i.jq                    ; 2 uses
  %i.jv = zext nneg i32 %i.jm to i64              ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !9
  %i.jy = zext nneg i32 %i.jn to i64              ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !9
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.dh
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !9
  %i.kd = xor i32 %i.jx, %i.ka
  %i.ke = xor i32 %i.kd, %i.kc
  %i.kf = xor i32 %i.ke, %i.ds
  %i.kg = xor i32 %i.kf, %i.ju                    ; 5 uses
  %i.kh = and i32 %i.kg, 255
  %i.ki = lshr i32 %i.kg, 8
  %i.kj = and i32 %i.ki, 255
  %i.kk = lshr i32 %i.kg, 16
  %i.kl = and i32 %i.kk, 255
  %i.km = lshr i32 %i.kg, 24
  %i.kn = zext nneg i32 %i.kj to i64              ; 3 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !9
  %i.kq = zext nneg i32 %i.kl to i64              ; 3 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !9
  %i.kt = zext nneg i32 %i.kh to i64              ; 3 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !9
  %i.kw = zext nneg i32 %i.km to i64              ; 3 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !9
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.dk
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !9
  %i.lb = xor i32 %i.kp, %i.ks
  %i.lc = xor i32 %i.lb, %i.kv
  %i.ld = xor i32 %i.lc, %i.ky
  %i.le = xor i32 %i.ld, %i.la
  %i.lf = xor i32 %i.le, %i.fs                    ; 5 uses
  %i.lg = and i32 %i.lf, 255
  %i.lh = lshr i32 %i.lf, 8
  %i.li = and i32 %i.lh, 255
  %i.lj = lshr i32 %i.lf, 16
  %i.lk = and i32 %i.lj, 255
  %i.ll = lshr i32 %i.lf, 24
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.ja
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !9
  %i.lo = zext nneg i32 %i.ll to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !9  ; 2 uses
  %i.lr = zext nneg i32 %i.lk to i64              ; 3 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !9
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.kw
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !9
  %i.lw = xor i32 %i.ln, %i.lt
  %i.lx = xor i32 %i.lw, %i.lv
  %i.ly = xor i32 %i.lx, %i.iw
  %i.lz = xor i32 %i.ly, %i.lq
  %i.ma = getelementptr inbounds nuw i8, ptr %.0193, i64 16
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !9
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.ix
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !9
  %i.md = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.ir
  %i.me = load i32, ptr %i.md, align 4, !tbaa !9
  %i.mf = xor i32 %i.me, %i.mc
  %i.mg = zext nneg i32 %i.li to i64              ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !9
  %i.mj = xor i32 %i.mf, %i.mi
  %i.mk = zext nneg i32 %i.lg to i64              ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !9
  %i.mn = xor i32 %i.mj, %i.mm
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.lr
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !9
  %i.mq = xor i32 %i.mn, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %.0193, i64 20
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !9
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.kw
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !9  ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.kq
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !9
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.ja
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !9
  %i.my = xor i32 %i.mv, %i.mx
  %i.mz = xor i32 %i.my, %i.ju
  %i.na = xor i32 %i.mz, %i.mt
  %i.nb = getelementptr inbounds nuw i8, ptr %.0193, i64 24
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !9
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.jv
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !9
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.jy
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !9
  %i.ng = xor i32 %i.nf, %i.nd
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.kn
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !9
  %i.nj = xor i32 %i.ng, %i.ni
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.kt
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !9
  %i.nm = xor i32 %i.nj, %i.nl
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.jo
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !9
  %i.np = xor i32 %i.nm, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %.0193, i64 28
  store i32 %i.np, ptr %i.nq, align 4, !tbaa !9
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.lr
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !9
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.mk
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !9
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.mg
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !9
  %i.nx = xor i32 %i.ns, %i.nu
  %i.ny = xor i32 %i.nx, %i.nw
  %i.nz = xor i32 %i.ny, %i.ik
  %i.oa = xor i32 %i.nz, %i.lq
  %i.ob = xor i32 %i.oa, %i.mt                    ; 5 uses
  %i.oc = and i32 %i.ob, 255
  %i.od = lshr i32 %i.ob, 8
  %i.oe = and i32 %i.od, 255
  %i.of = lshr i32 %i.ob, 16
  %i.og = and i32 %i.of, 255
  %i.oh = lshr i32 %i.ob, 24
  %i.oi = zext nneg i32 %i.oh to i64              ; 3 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !9
  %i.ol = zext nneg i32 %i.oe to i64              ; 3 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 4, !tbaa !9  ; 2 uses
  %i.oo = zext nneg i32 %i.og to i64              ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !9
  %i.or = zext nneg i32 %i.oc to i64              ; 3 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !9
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.kn
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !9
  %i.ow = xor i32 %i.ok, %i.oq
  %i.ox = xor i32 %i.ow, %i.ot
  %i.oy = xor i32 %i.ox, %i.ov
  %i.oz = xor i32 %i.oy, %i.kg
  %i.pa = xor i32 %i.oz, %i.on                    ; 5 uses
  %i.pb = and i32 %i.pa, 255
  %i.pc = lshr i32 %i.pa, 8
  %i.pd = and i32 %i.pc, 255
  %i.pe = lshr i32 %i.pa, 16
  %i.pf = and i32 %i.pe, 255
  %i.pg = lshr i32 %i.pa, 24
  %i.ph = zext nneg i32 %i.pb to i64              ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !9
  %i.pk = zext nneg i32 %i.pd to i64              ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !9
  %i.pn = xor i32 %i.pm, %i.pj                    ; 2 uses
  %i.po = zext nneg i32 %i.pf to i64              ; 2 uses
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.po
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !9
  %i.pr = zext nneg i32 %i.pg to i64              ; 3 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !9
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.kq
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !9
  %i.pw = xor i32 %i.pq, %i.pt
  %i.px = xor i32 %i.pw, %i.pv
  %i.py = xor i32 %i.px, %i.lf
  %i.pz = xor i32 %i.py, %i.pn                    ; 5 uses
  %i.qa = and i32 %i.pz, 255
  %i.qb = lshr i32 %i.pz, 8
  %i.qc = and i32 %i.qb, 255
  %i.qd = lshr i32 %i.pz, 16
  %i.qe = and i32 %i.qd, 255
  %i.qf = lshr i32 %i.pz, 24
  %i.qg = zext nneg i32 %i.qc to i64              ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !9
  %i.qj = zext nneg i32 %i.qe to i64              ; 3 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !9
  %i.qm = zext nneg i32 %i.qa to i64              ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !9
  %i.qp = zext nneg i32 %i.qf to i64              ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.qp
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !9
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.kt
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !9
  %i.qu = xor i32 %i.qi, %i.ql
  %i.qv = xor i32 %i.qu, %i.qo
  %i.qw = xor i32 %i.qv, %i.qr
  %i.qx = xor i32 %i.qw, %i.qt
  %i.qy = xor i32 %i.qx, %i.jh                    ; 5 uses
  %i.qz = and i32 %i.qy, 255
  %i.ra = lshr i32 %i.qy, 8
  %i.rb = and i32 %i.ra, 255
  %i.rc = lshr i32 %i.qy, 16
  %i.rd = and i32 %i.rc, 255
  %i.re = lshr i32 %i.qy, 24
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.or
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !9
  %i.rh = zext nneg i32 %i.re to i64              ; 2 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !9
  %i.rk = zext nneg i32 %i.rd to i64
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !9
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.qj
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !9
  %i.rp = xor i32 %i.rg, %i.rj
  %i.rq = xor i32 %i.rp, %i.rm
  %i.rr = xor i32 %i.rq, %i.ro
  %i.rs = xor i32 %i.rr, %i.on
  %i.rt = getelementptr inbounds nuw i8, ptr %.0193, i64 32
  store i32 %i.rs, ptr %i.rt, align 4, !tbaa !9
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.oo
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !9  ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.oi
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !9
  %i.ry = zext nneg i32 %i.rb to i64
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.ry
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !9
  %i.sb = zext nneg i32 %i.qz to i64
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !9
  %i.se = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.rh
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !9
  %i.sg = xor i32 %i.rx, %i.sa
  %i.sh = xor i32 %i.sg, %i.sd
  %i.si = xor i32 %i.sh, %i.sf
  %i.sj = xor i32 %i.si, %i.rv
  %i.sk = getelementptr inbounds nuw i8, ptr %.0193, i64 36
  store i32 %i.sj, ptr %i.sk, align 4, !tbaa !9
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.qp
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !9
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.qj
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !9
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.ol
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !9
  %i.sr = xor i32 %i.sm, %i.so
  %i.ss = xor i32 %i.sr, %i.sq
  %i.st = xor i32 %i.ss, %i.pn
  %i.su = getelementptr inbounds nuw i8, ptr %.0193, i64 40
  store i32 %i.st, ptr %i.su, align 4, !tbaa !9
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.po
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !9  ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.pr
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !9
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.qg
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !9
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.qm
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !9
  %i.td = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.pk
  %i.te = load i32, ptr %i.td, align 4, !tbaa !9  ; 2 uses
  %i.tf = xor i32 %i.sy, %i.ta
  %i.tg = xor i32 %i.tf, %i.tc
  %i.th = xor i32 %i.tg, %i.sw
  %i.ti = xor i32 %i.th, %i.te
  %i.tj = getelementptr inbounds nuw i8, ptr %.0193, i64 44
  store i32 %i.ti, ptr %i.tj, align 4, !tbaa !9
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.ph
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !9
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.pr
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !9
  %i.to = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.oi
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !9
  %i.tq = xor i32 %i.tl, %i.tn
  %i.tr = xor i32 %i.tq, %i.tp
  %i.ts = xor i32 %i.tr, %i.sw
  %i.tt = xor i32 %i.ts, %i.te
  %i.tu = xor i32 %i.tt, %i.pz                    ; 5 uses
  %i.tv = and i32 %i.tu, 255
  %i.tw = lshr i32 %i.tu, 8
  %i.tx = and i32 %i.tw, 255
  %i.ty = lshr i32 %i.tu, 16
  %i.tz = and i32 %i.ty, 255
  %i.ua = lshr i32 %i.tu, 24
  %i.ub = zext nneg i32 %i.ua to i64              ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.ub
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !9
  %i.ue = zext nneg i32 %i.tx to i64              ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !9
  %i.uh = zext nneg i32 %i.tz to i64
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.uh
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !9  ; 2 uses
  %i.uk = zext nneg i32 %i.tv to i64              ; 3 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.uk
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !9
  %i.un = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.ol
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !9
  %i.up = xor i32 %i.ud, %i.ug
  %i.uq = xor i32 %i.up, %i.um
  %i.ur = xor i32 %i.uq, %i.uo
  %i.us = xor i32 %i.ur, %i.ob
  %i.ut = xor i32 %i.us, %i.uj                    ; 5 uses
  %i.uu = and i32 %i.ut, 255
  %i.uv = lshr i32 %i.ut, 8
  %i.uw = and i32 %i.uv, 255
  %i.ux = lshr i32 %i.ut, 16
  %i.uy = and i32 %i.ux, 255
  %i.uz = lshr i32 %i.ut, 24
  %i.va = zext nneg i32 %i.uu to i64              ; 3 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.va
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !9
  %i.vd = zext nneg i32 %i.uw to i64              ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.vd
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !9
  %i.vg = zext nneg i32 %i.uy to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.vg
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !9  ; 2 uses
  %i.vj = zext nneg i32 %i.uz to i64
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.vj
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !9  ; 2 uses
  %i.vm = xor i32 %i.vc, %i.vf
  %i.vn = xor i32 %i.vm, %i.vi
  %i.vo = xor i32 %i.vn, %i.vl
  %i.vp = xor i32 %i.vo, %i.pa
  %i.vq = xor i32 %i.vp, %i.rv                    ; 5 uses
  %i.vr = and i32 %i.vq, 255                      ; 2 uses
  %i.vs = lshr i32 %i.vq, 8
  %i.vt = and i32 %i.vs, 255                      ; 2 uses
  %i.vu = lshr i32 %i.vq, 16
  %i.vv = and i32 %i.vu, 255                      ; 2 uses
  %i.vw = lshr i32 %i.vq, 24
  %i.vx = zext nneg i32 %i.vt to i64
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.vx
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !9  ; 2 uses
  %i.wa = zext nneg i32 %i.vv to i64
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.wa
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !9  ; 2 uses
  %i.wd = zext nneg i32 %i.vr to i64              ; 2 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.wd
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !9
  %i.wg = zext nneg i32 %i.vw to i64              ; 3 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.wg
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !9
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.or
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !9
  %i.wl = xor i32 %i.wf, %i.wi
  %i.wm = xor i32 %i.wl, %i.wk
  %i.wn = xor i32 %i.wm, %i.qy
  %i.wo = xor i32 %i.wn, %i.vz
  %i.wp = xor i32 %i.wo, %i.wc                    ; 5 uses
  %i.wq = and i32 %i.wp, 255
  %i.wr = lshr i32 %i.wp, 8
  %i.ws = and i32 %i.wr, 255                      ; 2 uses
  %i.wt = lshr i32 %i.wp, 16
  %i.wu = and i32 %i.wt, 255                      ; 2 uses
  %i.wv = lshr i32 %i.wp, 24                      ; 2 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.wg
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !9
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.va
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !9
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.vd
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !9
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.uk
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !9
  %i.xe = xor i32 %i.wx, %i.wz
  %i.xf = xor i32 %i.xe, %i.xb
  %i.xg = xor i32 %i.xf, %i.xd
  %i.xh = xor i32 %i.xg, %i.wc
  %i.xi = getelementptr inbounds nuw i8, ptr %.0193, i64 48
  store i32 %i.xh, ptr %i.xi, align 4, !tbaa !9
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.wd
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !9
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.va
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !9
  %i.xn = xor i32 %i.xk, %i.xm
  %i.xo = xor i32 %i.xn, %i.vi
  %i.xp = xor i32 %i.xo, %i.vl
  %i.xq = xor i32 %i.xp, %i.vz
  %i.xr = getelementptr inbounds nuw i8, ptr %.0193, i64 52
  store i32 %i.xq, ptr %i.xr, align 4, !tbaa !9
  %i.xs = zext nneg i32 %i.wv to i64
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.xs
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !9
  %i.xv = zext nneg i32 %i.wu to i64              ; 2 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.xv
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !9
  %i.xy = xor i32 %i.xx, %i.xu
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.uk
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !9
  %i.yb = xor i32 %i.xy, %i.ya
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.ue
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !9
  %i.ye = xor i32 %i.yb, %i.yd
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table6, i64 %i.wg
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !9  ; 2 uses
  %i.yh = xor i32 %i.ye, %i.yg
  %i.yi = getelementptr inbounds nuw i8, ptr %.0193, i64 56
  store i32 %i.yh, ptr %i.yi, align 4, !tbaa !9
  %i.yj = zext nneg i32 %i.ws to i64
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table4, i64 %i.yj
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !9
  %i.ym = zext nneg i32 %i.wq to i64
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table5, i64 %i.ym
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !9  ; 2 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.ub
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !9
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr @CAST_S_table7, i64 %i.xv
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !9
  %i.yt = xor i32 %i.yl, %i.yq
  %i.yu = xor i32 %i.yt, %i.ys
  %i.yv = xor i32 %i.yu, %i.yo
  %i.yw = xor i32 %i.yv, %i.uj
  %i.yx = getelementptr inbounds nuw i8, ptr %.0193, i64 60
  store i32 %i.yw, ptr %i.yx, align 4, !tbaa !9
  %.not = icmp eq ptr %.0193, %i.b
  %i.yy = getelementptr inbounds nuw i8, ptr %.0193, i64 64
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.yz = load <18 x i32>, ptr %i.b, align 16, !tbaa !9
  %i.za = shufflevector <18 x i32> %i.yz, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.zb = and <4 x i32> %i.za, <i32 -1, i32 -1, i32 31, i32 31>
  %i.zc = xor <4 x i32> %i.zb, <i32 0, i32 0, i32 16, i32 16>
  %i.zd = shufflevector <4 x i32> %i.zc, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.zd, ptr %0, align 4, !tbaa !9
  %i.ze = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.zg = load <18 x i32>, ptr %i.ze, align 8, !tbaa !9
  %i.zh = shufflevector <18 x i32> %i.zg, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.zi = and <4 x i32> %i.zh, <i32 -1, i32 -1, i32 31, i32 31>
  %i.zj = xor <4 x i32> %i.zi, <i32 0, i32 0, i32 16, i32 16>
  %i.zk = shufflevector <4 x i32> %i.zj, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.zk, ptr %i.zf, align 4, !tbaa !9
  %i.zl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.zn = load <18 x i32>, ptr %i.zl, align 16, !tbaa !9
  %i.zo = shufflevector <18 x i32> %i.zn, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.zp = and <4 x i32> %i.zo, <i32 -1, i32 -1, i32 31, i32 31>
  %i.zq = xor <4 x i32> %i.zp, <i32 0, i32 0, i32 16, i32 16>
  %i.zr = shufflevector <4 x i32> %i.zq, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.zr, ptr %i.zm, align 4, !tbaa !9
  %i.zs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.zu = load <18 x i32>, ptr %i.zs, align 8, !tbaa !9
  %i.zv = shufflevector <18 x i32> %i.zu, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.zw = and <4 x i32> %i.zv, <i32 -1, i32 -1, i32 31, i32 31>
  %i.zx = xor <4 x i32> %i.zw, <i32 0, i32 0, i32 16, i32 16>
  %i.zy = shufflevector <4 x i32> %i.zx, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.zy, ptr %i.zt, align 4, !tbaa !9
  %i.zz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aab = load <18 x i32>, ptr %i.zz, align 16, !tbaa !9
  %i.aac = shufflevector <18 x i32> %i.aab, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.aad = and <4 x i32> %i.aac, <i32 -1, i32 -1, i32 31, i32 31>
  %i.aae = xor <4 x i32> %i.aad, <i32 0, i32 0, i32 16, i32 16>
  %i.aaf = shufflevector <4 x i32> %i.aae, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.aaf, ptr %i.aaa, align 4, !tbaa !9
  %i.aag = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aai = load <18 x i32>, ptr %i.aag, align 8, !tbaa !9
  %i.aaj = shufflevector <18 x i32> %i.aai, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.aak = and <4 x i32> %i.aaj, <i32 -1, i32 -1, i32 31, i32 31>
  %i.aal = xor <4 x i32> %i.aak, <i32 0, i32 0, i32 16, i32 16>
  %i.aam = shufflevector <4 x i32> %i.aal, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.aam, ptr %i.aah, align 4, !tbaa !9
  %i.aan = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aap = load <18 x i32>, ptr %i.aan, align 16, !tbaa !9
  %i.aaq = shufflevector <18 x i32> %i.aap, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.aar = and <4 x i32> %i.aaq, <i32 -1, i32 -1, i32 31, i32 31>
  %i.aas = xor <4 x i32> %i.aar, <i32 0, i32 0, i32 16, i32 16>
  %i.aat = shufflevector <4 x i32> %i.aas, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.aat, ptr %i.aao, align 4, !tbaa !9
  %i.aau = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aaw = load <18 x i32>, ptr %i.aau, align 8, !tbaa !9
  %i.aax = shufflevector <18 x i32> %i.aaw, <18 x i32> poison, <4 x i32> <i32 0, i32 1, i32 16, i32 17>
  %i.aay = and <4 x i32> %i.aax, <i32 -1, i32 -1, i32 31, i32 31>
  %i.aaz = xor <4 x i32> %i.aay, <i32 0, i32 0, i32 16, i32 16>
  %i.aba = shufflevector <4 x i32> %i.aaz, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.aba, ptr %i.aav, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_cast5_ecb() local_unnamed_addr #5 {
bb.a:
  ret ptr @cast5_ecb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_cast5_cbc() local_unnamed_addr #5 {
bb.a:
  ret ptr @cast5_cbc
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @cast_init_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23
  %i.e = zext i32 %i.d to i64
  tail call void @CAST_set_key(ptr noundef %i.b, i64 noundef %i.e, ptr noundef %1)
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @cast_ecb_cipher(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #6 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = icmp ugt i64 %3, 7
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %CAST_ecb_encrypt.exit
  %.012 = phi i64 [ %3, %.lr.ph ], [ %i.ax, %CAST_ecb_encrypt.exit ]
  %.0811 = phi ptr [ %2, %.lr.ph ], [ %i.av, %CAST_ecb_encrypt.exit ] ; 9 uses
  %.0910 = phi ptr [ %1, %.lr.ph ], [ %i.aw, %CAST_ecb_encrypt.exit ] ; 3 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.h = getelementptr inbounds nuw i8, ptr %.0811, i64 1
  %i.i = load i8, ptr %.0811, align 1, !tbaa !8
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw i32 %i.j, 24
  %i.l = getelementptr inbounds nuw i8, ptr %.0811, i64 2
  %i.m = load i8, ptr %i.h, align 1, !tbaa !8
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 16
  %i.p = or disjoint i32 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %.0811, i64 3
  %i.r = load i8, ptr %i.l, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = or disjoint i32 %i.p, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.0811, i64 4
  %i.w = load i8, ptr %i.q, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.u, %i.x
  store i32 %i.y, ptr %i.a, align 4, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %.0811, i64 5
  %i.aa = load i8, ptr %i.v, align 1, !tbaa !8
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw i32 %i.ab, 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811, i64 6
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !8
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 16
  %i.ah = or disjoint i32 %i.ag, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811, i64 7
  %i.aj = load i8, ptr %i.ad, align 1, !tbaa !8
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 8
  %i.am = or disjoint i32 %i.ah, %i.al
  %i.an = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ao = zext i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !9
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @CAST_encrypt(ptr noundef nonnull %i.a, ptr noundef readonly %i.c)
  br label %CAST_ecb_encrypt.exit

bb.d:                                             ; preds = %bb.b
  call void @CAST_decrypt(ptr noundef nonnull %i.a, ptr noundef readonly %i.c)
  br label %CAST_ecb_encrypt.exit

CAST_ecb_encrypt.exit:                            ; preds = %bb.c, %bb.d
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910, i64 4
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  store i32 %i.as, ptr %.0910, align 1, !tbaa !8
  %i.at = load i32, ptr %i.f, align 4, !tbaa !9
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at)
  store i32 %i.au, ptr %i.ar, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.av = getelementptr inbounds nuw i8, ptr %.0811, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910, i64 8
  %i.ax = add i64 %.012, -8                       ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, 7
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %CAST_ecb_encrypt.exit, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
end_hunk_0
