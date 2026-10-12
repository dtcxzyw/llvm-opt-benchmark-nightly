Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sve_helper?download=true
inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1193
loop-unroll.NumRuntimeUnrolled: 419
loop-unroll.NumUnrolled: 1634
begin_hunk_0_@helper_sve_uzp_b:bb.a
  %i.s = add nuw i64 %i.r, 1                      ; 4 uses
  %min.iters.check = icmp ult i64 %i.q, 16
  br i1 %min.iters.check, label %vec.epilog.scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add nsw i64 %i.i, 2
  %i.u = call i64 @llvm.smax.i64(i64 %i.g, i64 %i.t)
  %i.v = xor i64 %i.i, -1
  %i.w = add i64 %i.u, %i.v                       ; 2 uses
  %i.x = lshr i64 %i.w, 1
  %i.y = getelementptr i8, ptr %0, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 1
  %i.aa = getelementptr i8, ptr %1, i64 %i.i
  %i.ab = and i64 %i.w, -2
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 1
  %bound0 = icmp ult ptr %0, %i.ae
  %bound1 = icmp ult ptr %i.aa, %i.z
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check46 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.s, 15                        ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, i64 16, i64 %i.af      ; 2 uses
  %n.vec = sub i64 %i.s, %i.ah                    ; 4 uses
  %i.ai = shl i64 %n.vec, 1
  %i.aj = add i64 %i.ai, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = shl i64 %index, 1
  %i.al = add i64 %i.ak, %i.i                     ; 16 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %1, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 2
  %i.ap = getelementptr i8, ptr %1, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %i.ar = getelementptr i8, ptr %1, i64 %i.al
  %i.as = getelementptr i8, ptr %i.ar, i64 6
  %i.at = getelementptr i8, ptr %1, i64 %i.al
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = getelementptr i8, ptr %1, i64 %i.al
  %i.aw = getelementptr i8, ptr %i.av, i64 10
  %i.ax = getelementptr i8, ptr %1, i64 %i.al
  %i.ay = getelementptr i8, ptr %i.ax, i64 12
  %i.az = getelementptr i8, ptr %1, i64 %i.al
  %i.ba = getelementptr i8, ptr %i.az, i64 14
  %i.bb = getelementptr i8, ptr %1, i64 %i.al
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = getelementptr i8, ptr %1, i64 %i.al
  %i.be = getelementptr i8, ptr %i.bd, i64 18
  %i.bf = getelementptr i8, ptr %1, i64 %i.al
  %i.bg = getelementptr i8, ptr %i.bf, i64 20
  %i.bh = getelementptr i8, ptr %1, i64 %i.al
  %i.bi = getelementptr i8, ptr %i.bh, i64 22
  %i.bj = getelementptr i8, ptr %1, i64 %i.al
  %i.bk = getelementptr i8, ptr %i.bj, i64 24
  %i.bl = getelementptr i8, ptr %1, i64 %i.al
  %i.bm = getelementptr i8, ptr %i.bl, i64 26
  %i.bn = getelementptr i8, ptr %1, i64 %i.al
  %i.bo = getelementptr i8, ptr %i.bn, i64 28
  %i.bp = getelementptr i8, ptr %1, i64 %i.al
  %i.bq = getelementptr i8, ptr %i.bp, i64 30
  %i.br = load i8, ptr %i.am, align 1, !alias.scope !825
  %i.bs = load i8, ptr %i.ao, align 1, !alias.scope !825
  %i.bt = load i8, ptr %i.aq, align 1, !alias.scope !825
  %i.bu = load i8, ptr %i.as, align 1, !alias.scope !825
  %i.bv = load i8, ptr %i.au, align 1, !alias.scope !825
  %i.bw = load i8, ptr %i.aw, align 1, !alias.scope !825
  %i.bx = load i8, ptr %i.ay, align 1, !alias.scope !825
  %i.by = load i8, ptr %i.ba, align 1, !alias.scope !825
  %i.bz = load i8, ptr %i.bc, align 1, !alias.scope !825
  %i.ca = load i8, ptr %i.be, align 1, !alias.scope !825
  %i.cb = load i8, ptr %i.bg, align 1, !alias.scope !825
  %i.cc = load i8, ptr %i.bi, align 1, !alias.scope !825
  %i.cd = load i8, ptr %i.bk, align 1, !alias.scope !825
  %i.ce = load i8, ptr %i.bm, align 1, !alias.scope !825
  %i.cf = load i8, ptr %i.bo, align 1, !alias.scope !825
  %i.cg = load i8, ptr %i.bq, align 1, !alias.scope !825
  %i.ch = insertelement <16 x i8> poison, i8 %i.br, i64 0
  %i.ci = insertelement <16 x i8> %i.ch, i8 %i.bs, i64 1
  %i.cj = insertelement <16 x i8> %i.ci, i8 %i.bt, i64 2
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 3
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 4
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 5
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 6
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 7
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.bz, i64 8
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.ca, i64 9
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 10
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 11
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 12
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 13
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 14
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 15
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.cw, ptr %i.cx, align 1, !alias.scope !826, !noalias !825
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !815

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.ah, 9
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph, label %vec.epilog.ph, !prof !827

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cz = and i64 %i.s, 7                         ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = select i1 %i.da, i64 8, i64 %i.cz
  %n.vec47 = sub i64 %i.s, %i.db                  ; 3 uses
  %i.dc = shl i64 %n.vec47, 1
  %i.dd = add i64 %i.dc, %i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %i.de = shl i64 %index48, 1
  %i.df = add i64 %i.de, %i.i                     ; 8 uses
  %i.dg = getelementptr inbounds i8, ptr %1, i64 %i.df
  %i.dh = getelementptr i8, ptr %1, i64 %i.df
  %i.di = getelementptr i8, ptr %i.dh, i64 2
  %i.dj = getelementptr i8, ptr %1, i64 %i.df
  %i.dk = getelementptr i8, ptr %i.dj, i64 4
  %i.dl = getelementptr i8, ptr %1, i64 %i.df
  %i.dm = getelementptr i8, ptr %i.dl, i64 6
  %i.dn = getelementptr i8, ptr %1, i64 %i.df
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  %i.dp = getelementptr i8, ptr %1, i64 %i.df
  %i.dq = getelementptr i8, ptr %i.dp, i64 10
  %i.dr = getelementptr i8, ptr %1, i64 %i.df
  %i.ds = getelementptr i8, ptr %i.dr, i64 12
  %i.dt = getelementptr i8, ptr %1, i64 %i.df
  %i.du = getelementptr i8, ptr %i.dt, i64 14
  %i.dv = load i8, ptr %i.dg, align 1, !alias.scope !825
  %i.dw = load i8, ptr %i.di, align 1, !alias.scope !825
  %i.dx = load i8, ptr %i.dk, align 1, !alias.scope !825
  %i.dy = load i8, ptr %i.dm, align 1, !alias.scope !825
  %i.dz = load i8, ptr %i.do, align 1, !alias.scope !825
  %i.ea = load i8, ptr %i.dq, align 1, !alias.scope !825
  %i.eb = load i8, ptr %i.ds, align 1, !alias.scope !825
  %i.ec = load i8, ptr %i.du, align 1, !alias.scope !825
  %i.ed = insertelement <8 x i8> poison, i8 %i.dv, i64 0
  %i.ee = insertelement <8 x i8> %i.ed, i8 %i.dw, i64 1
  %i.ef = insertelement <8 x i8> %i.ee, i8 %i.dx, i64 2
  %i.eg = insertelement <8 x i8> %i.ef, i8 %i.dy, i64 3
  %i.eh = insertelement <8 x i8> %i.eg, i8 %i.dz, i64 4
  %i.ei = insertelement <8 x i8> %i.eh, i8 %i.ea, i64 5
  %i.ej = insertelement <8 x i8> %i.ei, i8 %i.eb, i64 6
  %i.ek = insertelement <8 x i8> %i.ej, i8 %i.ec, i64 7
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 %index48
  store <8 x i8> %i.ek, ptr %i.el, align 1, !alias.scope !826, !noalias !825
  %index.next49 = add nuw i64 %index48, 8         ; 2 uses
  %i.em = icmp eq i64 %index.next49, %n.vec47
  br i1 %i.em, label %vec.epilog.scalar.ph, label %vec.epilog.vector.body, !llvm.loop !816

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %bc.resume.val50 = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck ], [ %n.vec47, %vec.epilog.vector.body ]
  %bc.resume.val51 = phi i64 [ %i.i, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.i, %vector.memcheck ], [ %i.dd, %vec.epilog.vector.body ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %vec.epilog.scalar.ph, %bb.c
  %.027 = phi i64 [ %bc.resume.val50, %vec.epilog.scalar.ph ], [ %i.eq, %bb.c ] ; 3 uses
  %.0 = phi i64 [ %bc.resume.val51, %vec.epilog.scalar.ph ], [ %i.er, %bb.c ] ; 3 uses
  %i.en = getelementptr inbounds i8, ptr %1, i64 %.0
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = add i64 %.027, 1                        ; 8 uses
  %i.er = add nsw i64 %.0, 2                      ; 3 uses
  %i.es = icmp slt i64 %i.er, %i.g
  br i1 %i.es, label %bb.c, label %iter.check71, !llvm.loop !817

iter.check71:                                     ; preds = %bb.c
  %i.et = sub i64 %i.er, %i.g                     ; 7 uses
  %i.eu = and i64 %i.q, -2                        ; 2 uses
  %i.ev = add i64 %i.eu, %i.i
  %i.ew = add i64 %i.ev, -4
  %i.ex = zext nneg i32 %.v.v.i to i64            ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex
  %umax59 = call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.g)
  %i.ez = add i64 %umax59, %i.ex
  %i.fa = add i64 %i.ez, 5
  %i.fb = add i64 %i.eu, %i.i
  %i.fc = sub i64 %i.fa, %i.fb                    ; 3 uses
  %i.fd = lshr i64 %i.fc, 1
  %i.fe = add nuw i64 %i.fd, 1                    ; 4 uses
  %min.iters.check60 = icmp ult i64 %i.fc, 16
  br i1 %min.iters.check60, label %vec.epilog.scalar.ph72.preheader, label %vector.memcheck52

vector.memcheck52:                                ; preds = %iter.check71
  %scevgep = getelementptr i8, ptr %0, i64 %i.eq
  %i.ff = and i64 %i.q, -2                        ; 2 uses
  %5 = add i64 %i.ff, %i.i
  %i.fg = add i64 %5, -4
  %6 = zext nneg i32 %.v.v.i to i64               ; 3 uses
  %i.fh = sub i64 %i.fg, %6
  %umax = call i64 @llvm.umax.i64(i64 %i.fh, i64 %i.g)
  %i.fi = add i64 %umax, %6
  %i.fj = add i64 %i.fi, 5
  %i.fk = add i64 %i.ff, %i.i
  %i.fl = sub i64 %i.fj, %i.fk                    ; 2 uses
  %i.fm = lshr i64 %i.fl, 1
  %i.fn = getelementptr i8, ptr %0, i64 %.027
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.fm
  %scevgep53 = getelementptr i8, ptr %i.fo, i64 2
  %scevgep54 = getelementptr i8, ptr %.029, i64 %i.et
  %i.fp = and i64 %i.fl, -2
  %i.fq = add i64 %bc.resume.val51, %i.fp
  %i.fr = add i64 %i.fq, -5
  %i.fs = sub i64 %i.fr, %6
  %i.ft = sub i64 %.0, %bc.resume.val51
  %i.fu = getelementptr i8, ptr %.029, i64 %i.fs
  %scevgep55 = getelementptr i8, ptr %i.fu, i64 %i.ft
  %bound056 = icmp ult ptr %scevgep, %scevgep55
  %bound157 = icmp ult ptr %scevgep54, %scevgep53
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %vec.epilog.scalar.ph72.preheader, label %vector.main.loop.iter.check61

vector.main.loop.iter.check61:                    ; preds = %vector.memcheck52
  %min.iters.check62 = icmp ult i64 %i.fc, 32
  br i1 %min.iters.check62, label %vec.epilog.ph75, label %vector.ph63

vector.ph63:                                      ; preds = %vector.main.loop.iter.check61
  %i.fv = and i64 %i.fe, 15                       ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 0
  %i.fx = select i1 %i.fw, i64 16, i64 %i.fv      ; 2 uses
  %n.vec64 = sub i64 %i.fe, %i.fx                 ; 4 uses
  %i.fy = add i64 %i.eq, %n.vec64
  %i.fz = shl i64 %n.vec64, 1
  %i.ga = add i64 %i.et, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 %i.eq
  br label %vector.body65

vector.body65:                                    ; preds = %vector.ph63, %vector.body65
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next67, %vector.body65 ] ; 3 uses
  %i.gc = shl nuw i64 %index66, 1
  %i.gd = add nuw i64 %i.et, %i.gc                ; 16 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.029, i64 %i.gd
  %i.gf = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gg = getelementptr i8, ptr %i.gf, i64 2
  %i.gh = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gi = getelementptr i8, ptr %i.gh, i64 4
  %i.gj = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gk = getelementptr i8, ptr %i.gj, i64 6
  %i.gl = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %i.gn = getelementptr i8, ptr %.029, i64 %i.gd
  %i.go = getelementptr i8, ptr %i.gn, i64 10
  %i.gp = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gq = getelementptr i8, ptr %i.gp, i64 12
  %i.gr = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gs = getelementptr i8, ptr %i.gr, i64 14
  %i.gt = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  %i.gv = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gw = getelementptr i8, ptr %i.gv, i64 18
  %i.gx = getelementptr i8, ptr %.029, i64 %i.gd
  %i.gy = getelementptr i8, ptr %i.gx, i64 20
  %i.gz = getelementptr i8, ptr %.029, i64 %i.gd
  %i.ha = getelementptr i8, ptr %i.gz, i64 22
  %i.hb = getelementptr i8, ptr %.029, i64 %i.gd
  %i.hc = getelementptr i8, ptr %i.hb, i64 24
  %i.hd = getelementptr i8, ptr %.029, i64 %i.gd
  %i.he = getelementptr i8, ptr %i.hd, i64 26
  %i.hf = getelementptr i8, ptr %.029, i64 %i.gd
  %i.hg = getelementptr i8, ptr %i.hf, i64 28
  %i.hh = getelementptr i8, ptr %.029, i64 %i.gd
  %i.hi = getelementptr i8, ptr %i.hh, i64 30
  %i.hj = load i8, ptr %i.ge, align 1, !alias.scope !828
  %i.hk = load i8, ptr %i.gg, align 1, !alias.scope !828
  %i.hl = load i8, ptr %i.gi, align 1, !alias.scope !828
  %i.hm = load i8, ptr %i.gk, align 1, !alias.scope !828
  %i.hn = load i8, ptr %i.gm, align 1, !alias.scope !828
  %i.ho = load i8, ptr %i.go, align 1, !alias.scope !828
  %i.hp = load i8, ptr %i.gq, align 1, !alias.scope !828
  %i.hq = load i8, ptr %i.gs, align 1, !alias.scope !828
  %i.hr = load i8, ptr %i.gu, align 1, !alias.scope !828
  %i.hs = load i8, ptr %i.gw, align 1, !alias.scope !828
  %i.ht = load i8, ptr %i.gy, align 1, !alias.scope !828
  %i.hu = load i8, ptr %i.ha, align 1, !alias.scope !828
  %i.hv = load i8, ptr %i.hc, align 1, !alias.scope !828
  %i.hw = load i8, ptr %i.he, align 1, !alias.scope !828
  %i.hx = load i8, ptr %i.hg, align 1, !alias.scope !828
  %i.hy = load i8, ptr %i.hi, align 1, !alias.scope !828
  %i.hz = insertelement <16 x i8> poison, i8 %i.hj, i64 0
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 1
  %i.ib = insertelement <16 x i8> %i.ia, i8 %i.hl, i64 2
  %i.ic = insertelement <16 x i8> %i.ib, i8 %i.hm, i64 3
  %i.id = insertelement <16 x i8> %i.ic, i8 %i.hn, i64 4
  %i.ie = insertelement <16 x i8> %i.id, i8 %i.ho, i64 5
  %i.if = insertelement <16 x i8> %i.ie, i8 %i.hp, i64 6
  %i.ig = insertelement <16 x i8> %i.if, i8 %i.hq, i64 7
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 8
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 9
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 10
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 11
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 12
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 13
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 14
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 15
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gb, i64 %index66
  store <16 x i8> %i.io, ptr %i.ip, align 1, !alias.scope !829, !noalias !828
  %index.next67 = add nuw i64 %index66, 16        ; 2 uses
  %i.iq = icmp eq i64 %index.next67, %n.vec64
  br i1 %i.iq, label %vec.epilog.iter.check73, label %vector.body65, !llvm.loop !821

vec.epilog.iter.check73:                          ; preds = %vector.body65
  %min.epilog.iters.check74 = icmp samesign ult i64 %i.fx, 9
  br i1 %min.epilog.iters.check74, label %vec.epilog.scalar.ph72.preheader, label %vec.epilog.ph75, !prof !827

vec.epilog.ph75:                                  ; preds = %vector.main.loop.iter.check61, %vec.epilog.iter.check73
  %vec.epilog.resume.val69 = phi i64 [ %n.vec64, %vec.epilog.iter.check73 ], [ 0, %vector.main.loop.iter.check61 ]
  %i.ir = and i64 %i.fe, 7                        ; 2 uses
  %i.is = icmp eq i64 %i.ir, 0
  %i.it = select i1 %i.is, i64 8, i64 %i.ir
  %n.vec76 = sub i64 %i.fe, %i.it                 ; 3 uses
  %i.iu = add i64 %i.eq, %n.vec76
  %i.iv = shl i64 %n.vec76, 1
  %i.iw = add i64 %i.et, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 %i.eq
  br label %vec.epilog.vector.body77

vec.epilog.vector.body77:                         ; preds = %vec.epilog.vector.body77, %vec.epilog.ph75
  %index78 = phi i64 [ %vec.epilog.resume.val69, %vec.epilog.ph75 ], [ %index.next79, %vec.epilog.vector.body77 ] ; 3 uses
  %i.iy = shl nuw i64 %index78, 1
  %i.iz = add nuw i64 %i.et, %i.iy                ; 8 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.029, i64 %i.iz
  %i.jb = getelementptr i8, ptr %.029, i64 %i.iz
  %i.jc = getelementptr i8, ptr %i.jb, i64 2
  %i.jd = getelementptr i8, ptr %.029, i64 %i.iz
  %i.je = getelementptr i8, ptr %i.jd, i64 4
  %i.jf = getelementptr i8, ptr %.029, i64 %i.iz
  %i.jg = getelementptr i8, ptr %i.jf, i64 6
  %i.jh = getelementptr i8, ptr %.029, i64 %i.iz
  %i.ji = getelementptr i8, ptr %i.jh, i64 8
  %i.jj = getelementptr i8, ptr %.029, i64 %i.iz
  %i.jk = getelementptr i8, ptr %i.jj, i64 10
  %i.jl = getelementptr i8, ptr %.029, i64 %i.iz
  %i.jm = getelementptr i8, ptr %i.jl, i64 12
  %i.jn = getelementptr i8, ptr %.029, i64 %i.iz
  %i.jo = getelementptr i8, ptr %i.jn, i64 14
  %i.jp = load i8, ptr %i.ja, align 1, !alias.scope !828
  %i.jq = load i8, ptr %i.jc, align 1, !alias.scope !828
  %i.jr = load i8, ptr %i.je, align 1, !alias.scope !828
  %i.js = load i8, ptr %i.jg, align 1, !alias.scope !828
  %i.jt = load i8, ptr %i.ji, align 1, !alias.scope !828
  %i.ju = load i8, ptr %i.jk, align 1, !alias.scope !828
  %i.jv = load i8, ptr %i.jm, align 1, !alias.scope !828
  %i.jw = load i8, ptr %i.jo, align 1, !alias.scope !828
  %i.jx = insertelement <8 x i8> poison, i8 %i.jp, i64 0
  %i.jy = insertelement <8 x i8> %i.jx, i8 %i.jq, i64 1
  %i.jz = insertelement <8 x i8> %i.jy, i8 %i.jr, i64 2
  %i.ka = insertelement <8 x i8> %i.jz, i8 %i.js, i64 3
  %i.kb = insertelement <8 x i8> %i.ka, i8 %i.jt, i64 4
  %i.kc = insertelement <8 x i8> %i.kb, i8 %i.ju, i64 5
  %i.kd = insertelement <8 x i8> %i.kc, i8 %i.jv, i64 6
  %i.ke = insertelement <8 x i8> %i.kd, i8 %i.jw, i64 7
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ix, i64 %index78
  store <8 x i8> %i.ke, ptr %i.kf, align 1, !alias.scope !829, !noalias !828
  %index.next79 = add nuw i64 %index78, 8         ; 2 uses
  %i.kg = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.kg, label %vec.epilog.scalar.ph72.preheader, label %vec.epilog.vector.body77, !llvm.loop !822

vec.epilog.scalar.ph72.preheader:                 ; preds = %vec.epilog.vector.body77, %iter.check71, %vector.memcheck52, %vec.epilog.iter.check73
  %.128.ph = phi i64 [ %i.eq, %iter.check71 ], [ %i.eq, %vector.memcheck52 ], [ %i.fy, %vec.epilog.iter.check73 ], [ %i.iu, %vec.epilog.vector.body77 ]
  %.1.ph = phi i64 [ %i.et, %iter.check71 ], [ %i.et, %vector.memcheck52 ], [ %i.ga, %vec.epilog.iter.check73 ], [ %i.iw, %vec.epilog.vector.body77 ]
  br label %vec.epilog.scalar.ph72

vec.epilog.scalar.ph72:                           ; preds = %vec.epilog.scalar.ph72.preheader, %vec.epilog.scalar.ph72
  %.128 = phi i64 [ %i.kk, %vec.epilog.scalar.ph72 ], [ %.128.ph, %vec.epilog.scalar.ph72.preheader ] ; 2 uses
  %.1 = phi i64 [ %i.kl, %vec.epilog.scalar.ph72 ], [ %.1.ph, %vec.epilog.scalar.ph72.preheader ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.ki = load i8, ptr %i.kh, align 1
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i8 %i.ki, ptr %i.kj, align 1
  %i.kk = add nuw nsw i64 %.128, 1                ; 2 uses
  %i.kl = add nuw nsw i64 %.1, 2                  ; 2 uses
  %i.km = icmp samesign ult i64 %i.kl, %i.g
  br i1 %i.km, label %vec.epilog.scalar.ph72, label %bb.d, !llvm.loop !823

bb.d:                                             ; preds = %vec.epilog.scalar.ph72
  %i.kn = icmp eq i64 %i.kk, %i.g
  call void @llvm.assume(i1 %i.kn)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @helper_sve_uzp_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #7 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 9 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64                     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !84
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.b, label %bb.c, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !843
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %i.n, %bb.b ], [ %2, %bb.a ]  ; 5 uses
  %i.o = add nsw i64 %i.i, 4
  %i.p = call i64 @llvm.smax.i64(i64 %i.g, i64 %i.o)
  %i.q = xor i64 %i.i, -1
  %i.r = add i64 %i.p, %i.q                       ; 6 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 112
  br i1 %min.iters.check, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.u = lshr i64 %i.r, 1
  %i.v = and i64 %i.u, 9223372036854775806
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 2
  %i.y = getelementptr i8, ptr %1, i64 %i.i
  %i.z = and i64 %i.r, -4
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 2
  %bound0 = icmp ult ptr %0, %i.ac
  %bound1 = icmp ult ptr %i.y, %i.x
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ad = and i64 %i.t, 7                         ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 8, i64 %i.ad
  %n.vec = sub nsw i64 %i.t, %i.af                ; 3 uses
  %i.ag = shl i64 %n.vec, 1
  %i.ah = shl i64 %n.vec, 2
  %i.ai = add i64 %i.ah, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = shl nuw i64 %index, 1
  %i.ak = shl i64 %index, 2
  %i.al = add i64 %i.ak, %i.i                     ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %1, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %wide.vec = load <8 x i16>, ptr %i.am, align 2, !alias.scope !844
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec46 = load <8 x i16>, ptr %i.ao, align 2, !alias.scope !844
  %strided.vec47 = shufflevector <8 x i16> %wide.vec46, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store <4 x i16> %strided.vec, ptr %i.ap, align 2, !alias.scope !845, !noalias !844
  store <4 x i16> %strided.vec47, ptr %i.aq, align 2, !alias.scope !845, !noalias !844
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %scalar.ph, label %vector.body, !llvm.loop !836

scalar.ph:                                        ; preds = %vector.body, %vector.memcheck, %bb.c
  %bc.resume.val = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %i.ag, %vector.body ]
  %bc.resume.val48 = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %bb.c ], [ %i.ai, %vector.body ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %scalar.ph, %bb.d
  %.027 = phi i64 [ %bc.resume.val, %scalar.ph ], [ %i.av, %bb.d ] ; 3 uses
  %.0 = phi i64 [ %bc.resume.val48, %scalar.ph ], [ %i.aw, %bb.d ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %1, i64 %.0
  %i.at = load i16, ptr %i.as, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i16 %i.at, ptr %i.au, align 2
  %i.av = add i64 %.027, 2                        ; 6 uses
  %i.aw = add nsw i64 %.0, 4                      ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %i.g
  br i1 %i.ax, label %bb.d, label %bb.e, !llvm.loop !837

bb.e:                                             ; preds = %bb.d
  %i.ay = sub i64 %i.aw, %i.g                     ; 5 uses
  %i.az = and i64 %i.r, -4                        ; 2 uses
  %i.ba = zext nneg i32 %.v.v.i to i64            ; 2 uses
  %i.bb = add i64 %i.az, %i.i
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.g)
  %i.be = add i64 %i.bd, %i.ba
  %i.bf = add i64 %i.be, 3
  %i.bg = add i64 %i.az, %i.i
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check57 = icmp ult i64 %i.bh, 208
  br i1 %min.iters.check57, label %scalar.ph56.preheader, label %vector.memcheck49

vector.memcheck49:                                ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %0, i64 %i.av
  %i.bk = and i64 %i.r, -4                        ; 2 uses
  %i.bl = add i64 %i.bk, %i.i
  %5 = zext nneg i32 %.v.v.i to i64               ; 3 uses
  %i.bm = sub i64 %i.bl, %5
  %umax = call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.g)
  %i.bn = add i64 %umax, %5
  %i.bo = add i64 %i.bn, 3
  %i.bp = add i64 %i.bk, %i.i
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = lshr i64 %i.bq, 1
  %i.bs = and i64 %i.br, 9223372036854775806
  %i.bt = getelementptr i8, ptr %0, i64 %.027
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bs
  %scevgep50 = getelementptr i8, ptr %i.bu, i64 4
  %scevgep51 = getelementptr i8, ptr %.029, i64 %i.ay
  %i.bv = and i64 %i.bq, -4
  %i.bw = add i64 %bc.resume.val48, %i.bv
  %i.bx = add i64 %i.bw, -2
  %i.by = sub i64 %i.bx, %5
  %i.bz = sub i64 %.0, %bc.resume.val48
  %i.ca = getelementptr i8, ptr %.029, i64 %i.by
  %scevgep52 = getelementptr i8, ptr %i.ca, i64 %i.bz
  %bound053 = icmp ult ptr %scevgep, %scevgep52
  %bound154 = icmp ult ptr %scevgep51, %scevgep50
  %found.conflict55 = and i1 %bound053, %bound154
  br i1 %found.conflict55, label %scalar.ph56.preheader, label %vector.ph58

vector.ph58:                                      ; preds = %vector.memcheck49
  %i.cb = and i64 %i.bj, 7                        ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 8, i64 %i.cb
  %n.vec59 = sub nsw i64 %i.bj, %i.cd             ; 3 uses
  %i.ce = shl i64 %n.vec59, 1
  %i.cf = add i64 %i.av, %i.ce
  %i.cg = shl i64 %n.vec59, 2
  %i.ch = add i64 %i.ay, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph58
  %index61 = phi i64 [ 0, %vector.ph58 ], [ %index.next66, %vector.body60 ] ; 3 uses
  %i.cj = shl nuw i64 %index61, 1
  %i.ck = shl nuw i64 %index61, 2
  %i.cl = add nuw i64 %i.ay, %i.ck                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.029, i64 %i.cl
  %i.cn = getelementptr i8, ptr %.029, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  %wide.vec62 = load <8 x i16>, ptr %i.cm, align 2, !alias.scope !846
  %strided.vec63 = shufflevector <8 x i16> %wide.vec62, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec64 = load <8 x i16>, ptr %i.co, align 2, !alias.scope !846
  %strided.vec65 = shufflevector <8 x i16> %wide.vec64, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store <4 x i16> %strided.vec63, ptr %i.cp, align 2, !alias.scope !847, !noalias !846
  store <4 x i16> %strided.vec65, ptr %i.cq, align 2, !alias.scope !847, !noalias !846
  %index.next66 = add nuw i64 %index61, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next66, %n.vec59
  br i1 %i.cr, label %scalar.ph56.preheader, label %vector.body60, !llvm.loop !841

scalar.ph56.preheader:                            ; preds = %vector.body60, %vector.memcheck49, %bb.e
  %.128.ph = phi i64 [ %i.av, %vector.memcheck49 ], [ %i.av, %bb.e ], [ %i.cf, %vector.body60 ]
  %.1.ph = phi i64 [ %i.ay, %vector.memcheck49 ], [ %i.ay, %bb.e ], [ %i.ch, %vector.body60 ]
  br label %scalar.ph56

scalar.ph56:                                      ; preds = %scalar.ph56.preheader, %scalar.ph56
  %.128 = phi i64 [ %i.cv, %scalar.ph56 ], [ %.128.ph, %scalar.ph56.preheader ] ; 2 uses
  %.1 = phi i64 [ %i.cw, %scalar.ph56 ], [ %.1.ph, %scalar.ph56.preheader ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = add nuw nsw i64 %.128, 2                ; 2 uses
  %i.cw = add nuw nsw i64 %.1, 4                  ; 2 uses
  %i.cx = icmp samesign ult i64 %i.cw, %i.g
  br i1 %i.cx, label %scalar.ph56, label %bb.f, !llvm.loop !842

bb.f:                                             ; preds = %scalar.ph56
  %i.cy = icmp eq i64 %i.cv, %i.g
  call void @llvm.assume(i1 %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @helper_sve_uzp_s(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #7 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 9 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64                     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !84
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.b, label %bb.c, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !861
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %i.n, %bb.b ], [ %2, %bb.a ]  ; 5 uses
  %i.o = add nsw i64 %i.i, 8
  %i.p = call i64 @llvm.smax.i64(i64 %i.o, i64 %i.g)
  %i.q = xor i64 %i.i, -1
  %i.r = add i64 %i.p, %i.q                       ; 6 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 224
  br i1 %min.iters.check, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.u = lshr i64 %i.r, 1
  %i.v = and i64 %i.u, 9223372036854775804
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = getelementptr i8, ptr %1, i64 %i.i
  %i.z = and i64 %i.r, -8
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %bound0 = icmp ult ptr %0, %i.ac
  %bound1 = icmp ult ptr %i.y, %i.x
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ad = and i64 %i.t, 7                         ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 8, i64 %i.ad
  %n.vec = sub nsw i64 %i.t, %i.af                ; 3 uses
  %i.ag = shl i64 %n.vec, 2
  %i.ah = shl i64 %n.vec, 3
  %i.ai = add i64 %i.ah, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = shl nuw i64 %index, 2
  %i.ak = shl i64 %index, 3
  %i.al = add i64 %i.ak, %i.i                     ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %1, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  %wide.vec = load <8 x i32>, ptr %i.am, align 4, !alias.scope !862
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec46 = load <8 x i32>, ptr %i.ao, align 4, !alias.scope !862
  %strided.vec47 = shufflevector <8 x i32> %wide.vec46, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x i32> %strided.vec, ptr %i.ap, align 4, !alias.scope !863, !noalias !862
  store <4 x i32> %strided.vec47, ptr %i.aq, align 4, !alias.scope !863, !noalias !862
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %scalar.ph, label %vector.body, !llvm.loop !854

scalar.ph:                                        ; preds = %vector.body, %vector.memcheck, %bb.c
  %bc.resume.val = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %i.ag, %vector.body ]
  %bc.resume.val48 = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %bb.c ], [ %i.ai, %vector.body ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %scalar.ph, %bb.d
  %.027 = phi i64 [ %bc.resume.val, %scalar.ph ], [ %i.av, %bb.d ] ; 3 uses
  %.0 = phi i64 [ %bc.resume.val48, %scalar.ph ], [ %i.aw, %bb.d ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %1, i64 %.0
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i32 %i.at, ptr %i.au, align 4
  %i.av = add i64 %.027, 4                        ; 6 uses
  %i.aw = add nsw i64 %.0, 8                      ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %i.g
  br i1 %i.ax, label %bb.d, label %bb.e, !llvm.loop !855

bb.e:                                             ; preds = %bb.d
  %i.ay = sub i64 %i.aw, %i.g                     ; 5 uses
  %i.az = and i64 %i.r, -8                        ; 2 uses
  %i.ba = zext nneg i32 %.v.v.i to i64            ; 2 uses
  %i.bb = add i64 %i.az, %i.i
  %i.bc = add i64 %i.bb, 8
  %i.bd = sub i64 %i.bc, %i.ba
  %i.be = call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.g)
  %i.bf = add i64 %i.be, %i.ba
  %i.bg = xor i64 %i.i, -1
  %i.bh = add i64 %i.bf, %i.bg
  %i.bi = sub i64 %i.bh, %i.az                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check57 = icmp ult i64 %i.bi, 416
  br i1 %min.iters.check57, label %scalar.ph56.preheader, label %vector.memcheck49

vector.memcheck49:                                ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %0, i64 %i.av
  %i.bl = and i64 %i.r, -8                        ; 2 uses
  %i.bm = add i64 %i.bl, %i.i
  %i.bn = add i64 %i.bm, 8
  %5 = zext nneg i32 %.v.v.i to i64               ; 3 uses
  %i.bo = sub i64 %i.bn, %5
  %umax = call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.g)
  %i.bp = add i64 %umax, %5
  %i.bq = xor i64 %i.i, -1
  %i.br = add i64 %i.bp, %i.bq
  %i.bs = sub i64 %i.br, %i.bl                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 1
  %i.bu = and i64 %i.bt, 9223372036854775804
  %i.bv = getelementptr i8, ptr %0, i64 %.027
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bu
  %scevgep50 = getelementptr i8, ptr %i.bw, i64 8
  %scevgep51 = getelementptr i8, ptr %.029, i64 %i.ay
  %i.bx = and i64 %i.bs, -8
  %i.by = add i64 %bc.resume.val48, %i.bx
  %i.bz = add i64 %i.by, 4
  %i.ca = sub i64 %i.bz, %5
  %i.cb = sub i64 %.0, %bc.resume.val48
  %i.cc = getelementptr i8, ptr %.029, i64 %i.ca
  %scevgep52 = getelementptr i8, ptr %i.cc, i64 %i.cb
  %bound053 = icmp ult ptr %scevgep, %scevgep52
  %bound154 = icmp ult ptr %scevgep51, %scevgep50
  %found.conflict55 = and i1 %bound053, %bound154
  br i1 %found.conflict55, label %scalar.ph56.preheader, label %vector.ph58

vector.ph58:                                      ; preds = %vector.memcheck49
  %i.cd = and i64 %i.bk, 7                        ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 8, i64 %i.cd
  %n.vec59 = sub nsw i64 %i.bk, %i.cf             ; 3 uses
  %i.cg = shl i64 %n.vec59, 2
  %i.ch = add i64 %i.av, %i.cg
  %i.ci = shl i64 %n.vec59, 3
  %i.cj = add i64 %i.ay, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph58
  %index61 = phi i64 [ 0, %vector.ph58 ], [ %index.next66, %vector.body60 ] ; 3 uses
  %i.cl = shl nuw i64 %index61, 2
  %i.cm = shl nuw i64 %index61, 3
  %i.cn = add nuw i64 %i.ay, %i.cm                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.029, i64 %i.cn
  %i.cp = getelementptr i8, ptr %.029, i64 %i.cn
  %i.cq = getelementptr i8, ptr %i.cp, i64 32
  %wide.vec62 = load <8 x i32>, ptr %i.co, align 4, !alias.scope !864
  %strided.vec63 = shufflevector <8 x i32> %wide.vec62, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec64 = load <8 x i32>, ptr %i.cq, align 4, !alias.scope !864
  %strided.vec65 = shufflevector <8 x i32> %wide.vec64, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %strided.vec63, ptr %i.cr, align 4, !alias.scope !865, !noalias !864
  store <4 x i32> %strided.vec65, ptr %i.cs, align 4, !alias.scope !865, !noalias !864
  %index.next66 = add nuw i64 %index61, 8         ; 2 uses
  %i.ct = icmp eq i64 %index.next66, %n.vec59
  br i1 %i.ct, label %scalar.ph56.preheader, label %vector.body60, !llvm.loop !859

scalar.ph56.preheader:                            ; preds = %vector.body60, %vector.memcheck49, %bb.e
  %.128.ph = phi i64 [ %i.av, %vector.memcheck49 ], [ %i.av, %bb.e ], [ %i.ch, %vector.body60 ]
  %.1.ph = phi i64 [ %i.ay, %vector.memcheck49 ], [ %i.ay, %bb.e ], [ %i.cj, %vector.body60 ]
  br label %scalar.ph56

scalar.ph56:                                      ; preds = %scalar.ph56.preheader, %scalar.ph56
  %.128 = phi i64 [ %i.cx, %scalar.ph56 ], [ %.128.ph, %scalar.ph56.preheader ] ; 2 uses
  %.1 = phi i64 [ %i.cy, %scalar.ph56 ], [ %.1.ph, %scalar.ph56.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i32 %i.cv, ptr %i.cw, align 4
  %i.cx = add nuw nsw i64 %.128, 4                ; 2 uses
  %i.cy = add nuw nsw i64 %.1, 8                  ; 2 uses
  %i.cz = icmp samesign ult i64 %i.cy, %i.g
  br i1 %i.cz, label %scalar.ph56, label %bb.f, !llvm.loop !860

bb.f:                                             ; preds = %scalar.ph56
  %i.da = icmp eq i64 %i.cx, %i.g
  call void @llvm.assume(i1 %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @helper_sve_uzp_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #7 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64                     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !84
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.b, label %bb.c, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !875
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %i.n, %bb.b ], [ %2, %bb.a ]
  %i.o = add nsw i64 %i.i, 16
  %i.p = call i64 @llvm.smax.i64(i64 %i.o, i64 %i.g)
  %i.q = xor i64 %i.i, -1
  %i.r = add i64 %i.p, %i.q                       ; 4 uses
  %i.s = lshr i64 %i.r, 4
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 416
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.u = lshr i64 %i.r, 1
  %i.v = and i64 %i.u, 9223372036854775800
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = getelementptr i8, ptr %1, i64 %i.i
  %i.z = and i64 %i.r, -16
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %bound0 = icmp ult ptr %0, %i.ac
  %bound1 = icmp ult ptr %i.y, %i.x
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ad = and i64 %i.t, 3                         ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 4, i64 %i.ad
  %n.vec = sub nsw i64 %i.t, %i.af                ; 3 uses
  %i.ag = shl i64 %n.vec, 3
  %i.ah = shl i64 %n.vec, 4
  %i.ai = add i64 %i.ah, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = shl nuw i64 %index, 3
  %i.ak = shl i64 %index, 4
  %i.al = add i64 %i.ak, %i.i                     ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %1, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  %wide.vec = load <4 x i64>, ptr %i.am, align 8, !alias.scope !876
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec46 = load <4 x i64>, ptr %i.ao, align 8, !alias.scope !876
  %strided.vec47 = shufflevector <4 x i64> %wide.vec46, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x i64> %strided.vec, ptr %i.ap, align 8, !alias.scope !877, !noalias !876
  store <2 x i64> %strided.vec47, ptr %i.aq, align 8, !alias.scope !877, !noalias !876
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %scalar.ph.preheader, label %vector.body, !llvm.loop !872

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.c
  %.027.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %i.ag, %vector.body ]
  %.0.ph = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %bb.c ], [ %i.ai, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.027 = phi i64 [ %i.av, %scalar.ph ], [ %.027.ph, %scalar.ph.preheader ] ; 2 uses
  %.0 = phi i64 [ %i.aw, %scalar.ph ], [ %.0.ph, %scalar.ph.preheader ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %1, i64 %.0
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i64 %i.at, ptr %i.au, align 8
  %i.av = add nuw nsw i64 %.027, 8                ; 2 uses
  %i.aw = add nsw i64 %.0, 16                     ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %i.g
  br i1 %i.ax, label %scalar.ph, label %bb.d, !llvm.loop !873

bb.d:                                             ; preds = %scalar.ph
  %i.ay = sub nuw nsw i64 %i.aw, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.128 = phi i64 [ %i.av, %bb.d ], [ %i.bc, %bb.e ] ; 2 uses
  %.1 = phi i64 [ %i.ay, %bb.d ], [ %i.bd, %bb.e ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = add nuw nsw i64 %.128, 8                ; 2 uses
  %i.bd = add nuw nsw i64 %.1, 16                 ; 2 uses
  %i.be = icmp samesign ult i64 %i.bd, %i.g
  br i1 %i.be, label %bb.e, label %bb.f, !llvm.loop !874

bb.f:                                             ; preds = %bb.e
  %i.bf = icmp eq i64 %i.bc, %i.g
  call void @llvm.assume(i1 %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @helper_sve2_uzp_q(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #7 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
end_hunk_0
