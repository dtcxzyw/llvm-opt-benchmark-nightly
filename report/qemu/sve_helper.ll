Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sve_helper?download=true
inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1194
loop-unroll.NumRuntimeUnrolled: 417
loop-unroll.NumUnrolled: 1633
begin_hunk_0_@helper_sve_uzp_b:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !84
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.b, label %iter.check, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !817
  br label %iter.check

iter.check:                                       ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %i.n, %bb.b ], [ %2, %bb.a ]  ; 27 uses
  %i.o = add nsw i64 %i.i, 2
  %smax = call i64 @llvm.smax.i64(i64 %i.g, i64 %i.o)
  %i.p = xor i64 %i.i, -1
  %i.q = add i64 %smax, %i.p                      ; 5 uses
  %i.r = lshr i64 %i.q, 1
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
  %i.br = load i8, ptr %i.am, align 1, !alias.scope !818
  %i.bs = load i8, ptr %i.ao, align 1, !alias.scope !818
  %i.bt = load i8, ptr %i.aq, align 1, !alias.scope !818
  %i.bu = load i8, ptr %i.as, align 1, !alias.scope !818
  %i.bv = load i8, ptr %i.au, align 1, !alias.scope !818
  %i.bw = load i8, ptr %i.aw, align 1, !alias.scope !818
  %i.bx = load i8, ptr %i.ay, align 1, !alias.scope !818
  %i.by = load i8, ptr %i.ba, align 1, !alias.scope !818
  %i.bz = load i8, ptr %i.bc, align 1, !alias.scope !818
  %i.ca = load i8, ptr %i.be, align 1, !alias.scope !818
  %i.cb = load i8, ptr %i.bg, align 1, !alias.scope !818
  %i.cc = load i8, ptr %i.bi, align 1, !alias.scope !818
  %i.cd = load i8, ptr %i.bk, align 1, !alias.scope !818
  %i.ce = load i8, ptr %i.bm, align 1, !alias.scope !818
  %i.cf = load i8, ptr %i.bo, align 1, !alias.scope !818
  %i.cg = load i8, ptr %i.bq, align 1, !alias.scope !818
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
  store <16 x i8> %i.cw, ptr %i.cx, align 1, !alias.scope !819, !noalias !818
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !808

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.ah, 9
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph, label %vec.epilog.ph, !prof !820

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
  %i.dv = load i8, ptr %i.dg, align 1, !alias.scope !818
  %i.dw = load i8, ptr %i.di, align 1, !alias.scope !818
  %i.dx = load i8, ptr %i.dk, align 1, !alias.scope !818
  %i.dy = load i8, ptr %i.dm, align 1, !alias.scope !818
  %i.dz = load i8, ptr %i.do, align 1, !alias.scope !818
  %i.ea = load i8, ptr %i.dq, align 1, !alias.scope !818
  %i.eb = load i8, ptr %i.ds, align 1, !alias.scope !818
  %i.ec = load i8, ptr %i.du, align 1, !alias.scope !818
  %i.ed = insertelement <8 x i8> poison, i8 %i.dv, i64 0
  %i.ee = insertelement <8 x i8> %i.ed, i8 %i.dw, i64 1
  %i.ef = insertelement <8 x i8> %i.ee, i8 %i.dx, i64 2
  %i.eg = insertelement <8 x i8> %i.ef, i8 %i.dy, i64 3
  %i.eh = insertelement <8 x i8> %i.eg, i8 %i.dz, i64 4
  %i.ei = insertelement <8 x i8> %i.eh, i8 %i.ea, i64 5
  %i.ej = insertelement <8 x i8> %i.ei, i8 %i.eb, i64 6
  %i.ek = insertelement <8 x i8> %i.ej, i8 %i.ec, i64 7
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 %index48
  store <8 x i8> %i.ek, ptr %i.el, align 1, !alias.scope !819, !noalias !818
  %index.next49 = add nuw i64 %index48, 8         ; 2 uses
  %i.em = icmp eq i64 %index.next49, %n.vec47
  br i1 %i.em, label %vec.epilog.scalar.ph, label %vec.epilog.vector.body, !llvm.loop !809

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %bc.resume.val = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck ], [ %n.vec47, %vec.epilog.vector.body ] ; 3 uses
  %bc.resume.val50 = phi i64 [ %i.i, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.i, %vector.memcheck ], [ %i.dd, %vec.epilog.vector.body ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %vec.epilog.scalar.ph, %bb.c
  %.027 = phi i64 [ %bc.resume.val, %vec.epilog.scalar.ph ], [ %i.eq, %bb.c ] ; 3 uses
  %.0 = phi i64 [ %bc.resume.val50, %vec.epilog.scalar.ph ], [ %i.er, %bb.c ] ; 3 uses
  %i.en = getelementptr inbounds i8, ptr %1, i64 %.0
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = add i64 %.027, 1                        ; 8 uses
  %i.er = add nsw i64 %.0, 2                      ; 3 uses
  %i.es = icmp slt i64 %i.er, %i.g
  br i1 %i.es, label %bb.c, label %iter.check71, !llvm.loop !810

iter.check71:                                     ; preds = %bb.c
  %i.et = sub i64 %i.er, %i.g                     ; 7 uses
  %i.eu = and i64 %i.q, -2                        ; 2 uses
  %i.ev = add i64 %i.eu, %i.i
  %i.ew = add i64 %i.ev, -4
  %i.ex = zext nneg i32 %.v.v.i to i64            ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex
  %umax = call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.g)
  %i.ez = add i64 %umax, %i.ex
  %i.fa = add i64 %i.ez, 5
  %i.fb = add i64 %i.eu, %i.i
  %i.fc = sub i64 %i.fa, %i.fb                    ; 3 uses
  %i.fd = lshr i64 %i.fc, 1
  %i.fe = add nuw i64 %i.fd, 1                    ; 4 uses
  %min.iters.check58 = icmp ult i64 %i.fc, 16
  br i1 %min.iters.check58, label %vec.epilog.scalar.ph73.preheader, label %vector.memcheck59

vector.memcheck59:                                ; preds = %iter.check71
  %i.ff = getelementptr i8, ptr %0, i64 %i.eq
  %i.fg = and i64 %i.q, -2                        ; 2 uses
  %i.fh = zext nneg i32 %.v.v.i to i64            ; 3 uses
  %i.fi = add i64 %i.fg, %i.i
  %i.fj = add i64 %i.fi, -4
  %i.fk = sub i64 %i.fj, %i.fh
  %i.fl = call i64 @llvm.umax.i64(i64 %i.fk, i64 %i.g)
  %i.fm = add i64 %i.fl, %i.fh
  %i.fn = add i64 %i.fm, 5
  %i.fo = add i64 %i.fg, %i.i
  %i.fp = sub i64 %i.fn, %i.fo                    ; 2 uses
  %i.fq = lshr i64 %i.fp, 1
  %i.fr = sub i64 %.027, %bc.resume.val
  %i.fs = getelementptr i8, ptr %0, i64 %bc.resume.val
  %i.ft = getelementptr i8, ptr %i.fs, i64 %i.fq
  %i.fu = getelementptr i8, ptr %i.ft, i64 2
  %i.fv = getelementptr i8, ptr %i.fu, i64 %i.fr
  %i.fw = getelementptr i8, ptr %.029, i64 %i.et
  %i.fx = and i64 %i.fp, -2
  %i.fy = add i64 %bc.resume.val50, %i.fx
  %i.fz = add i64 %i.fy, -5
  %i.ga = sub i64 %i.fz, %i.fh
  %i.gb = sub i64 %.0, %bc.resume.val50
  %i.gc = getelementptr i8, ptr %.029, i64 %i.ga
  %i.gd = getelementptr i8, ptr %i.gc, i64 %i.gb
  %bound060 = icmp ult ptr %i.ff, %i.gd
  %bound161 = icmp ult ptr %i.fw, %i.fv
  %found.conflict62 = and i1 %bound060, %bound161
  br i1 %found.conflict62, label %vec.epilog.scalar.ph73.preheader, label %vector.main.loop.iter.check63

vector.main.loop.iter.check63:                    ; preds = %vector.memcheck59
  %min.iters.check64 = icmp ult i64 %i.fc, 32
  br i1 %min.iters.check64, label %vec.epilog.ph75, label %vector.ph65

vector.ph65:                                      ; preds = %vector.main.loop.iter.check63
  %i.ge = and i64 %i.fe, 15                       ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  %i.gg = select i1 %i.gf, i64 16, i64 %i.ge      ; 2 uses
  %n.vec66 = sub i64 %i.fe, %i.gg                 ; 4 uses
  %i.gh = add i64 %i.eq, %n.vec66
  %i.gi = shl i64 %n.vec66, 1
  %i.gj = add i64 %i.et, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 %i.eq
  br label %vector.body67

vector.body67:                                    ; preds = %vector.ph65, %vector.body67
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next69, %vector.body67 ] ; 3 uses
  %i.gl = shl nuw i64 %index68, 1
  %i.gm = add nuw i64 %i.et, %i.gl                ; 16 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.029, i64 %i.gm
  %i.go = getelementptr i8, ptr %.029, i64 %i.gm
  %i.gp = getelementptr i8, ptr %i.go, i64 2
  %i.gq = getelementptr i8, ptr %.029, i64 %i.gm
  %i.gr = getelementptr i8, ptr %i.gq, i64 4
  %i.gs = getelementptr i8, ptr %.029, i64 %i.gm
  %i.gt = getelementptr i8, ptr %i.gs, i64 6
  %i.gu = getelementptr i8, ptr %.029, i64 %i.gm
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  %i.gw = getelementptr i8, ptr %.029, i64 %i.gm
  %i.gx = getelementptr i8, ptr %i.gw, i64 10
  %i.gy = getelementptr i8, ptr %.029, i64 %i.gm
  %i.gz = getelementptr i8, ptr %i.gy, i64 12
  %i.ha = getelementptr i8, ptr %.029, i64 %i.gm
  %i.hb = getelementptr i8, ptr %i.ha, i64 14
  %i.hc = getelementptr i8, ptr %.029, i64 %i.gm
  %i.hd = getelementptr i8, ptr %i.hc, i64 16
  %i.he = getelementptr i8, ptr %.029, i64 %i.gm
  %i.hf = getelementptr i8, ptr %i.he, i64 18
  %i.hg = getelementptr i8, ptr %.029, i64 %i.gm
  %i.hh = getelementptr i8, ptr %i.hg, i64 20
  %i.hi = getelementptr i8, ptr %.029, i64 %i.gm
  %i.hj = getelementptr i8, ptr %i.hi, i64 22
  %i.hk = getelementptr i8, ptr %.029, i64 %i.gm
  %i.hl = getelementptr i8, ptr %i.hk, i64 24
  %i.hm = getelementptr i8, ptr %.029, i64 %i.gm
  %i.hn = getelementptr i8, ptr %i.hm, i64 26
  %i.ho = getelementptr i8, ptr %.029, i64 %i.gm
  %i.hp = getelementptr i8, ptr %i.ho, i64 28
  %i.hq = getelementptr i8, ptr %.029, i64 %i.gm
  %i.hr = getelementptr i8, ptr %i.hq, i64 30
  %i.hs = load i8, ptr %i.gn, align 1, !alias.scope !821
  %i.ht = load i8, ptr %i.gp, align 1, !alias.scope !821
  %i.hu = load i8, ptr %i.gr, align 1, !alias.scope !821
  %i.hv = load i8, ptr %i.gt, align 1, !alias.scope !821
  %i.hw = load i8, ptr %i.gv, align 1, !alias.scope !821
  %i.hx = load i8, ptr %i.gx, align 1, !alias.scope !821
  %i.hy = load i8, ptr %i.gz, align 1, !alias.scope !821
  %i.hz = load i8, ptr %i.hb, align 1, !alias.scope !821
  %i.ia = load i8, ptr %i.hd, align 1, !alias.scope !821
  %i.ib = load i8, ptr %i.hf, align 1, !alias.scope !821
  %i.ic = load i8, ptr %i.hh, align 1, !alias.scope !821
  %i.id = load i8, ptr %i.hj, align 1, !alias.scope !821
  %i.ie = load i8, ptr %i.hl, align 1, !alias.scope !821
  %i.if = load i8, ptr %i.hn, align 1, !alias.scope !821
  %i.ig = load i8, ptr %i.hp, align 1, !alias.scope !821
  %i.ih = load i8, ptr %i.hr, align 1, !alias.scope !821
  %i.ii = insertelement <16 x i8> poison, i8 %i.hs, i64 0
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 1
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 2
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 3
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 4
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 5
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 6
  %i.ip = insertelement <16 x i8> %i.io, i8 %i.hz, i64 7
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 8
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 9
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 10
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 11
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 12
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 13
  %i.iw = insertelement <16 x i8> %i.iv, i8 %i.ig, i64 14
  %i.ix = insertelement <16 x i8> %i.iw, i8 %i.ih, i64 15
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gk, i64 %index68
  store <16 x i8> %i.ix, ptr %i.iy, align 1, !alias.scope !822, !noalias !821
  %index.next69 = add nuw i64 %index68, 16        ; 2 uses
  %i.iz = icmp eq i64 %index.next69, %n.vec66
  br i1 %i.iz, label %vec.epilog.iter.check72, label %vector.body67, !llvm.loop !814

vec.epilog.iter.check72:                          ; preds = %vector.body67
  %min.epilog.iters.check74 = icmp samesign ult i64 %i.gg, 9
  br i1 %min.epilog.iters.check74, label %vec.epilog.scalar.ph73.preheader, label %vec.epilog.ph75, !prof !820

vec.epilog.ph75:                                  ; preds = %vector.main.loop.iter.check63, %vec.epilog.iter.check72
  %vec.epilog.resume.val76 = phi i64 [ %n.vec66, %vec.epilog.iter.check72 ], [ 0, %vector.main.loop.iter.check63 ]
  %i.ja = and i64 %i.fe, 7                        ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
  %i.jc = select i1 %i.jb, i64 8, i64 %i.ja
  %n.vec77 = sub i64 %i.fe, %i.jc                 ; 3 uses
  %i.jd = add i64 %i.eq, %n.vec77
  %i.je = shl i64 %n.vec77, 1
  %i.jf = add i64 %i.et, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 %i.eq
  br label %vec.epilog.vector.body78

vec.epilog.vector.body78:                         ; preds = %vec.epilog.vector.body78, %vec.epilog.ph75
  %index79 = phi i64 [ %vec.epilog.resume.val76, %vec.epilog.ph75 ], [ %index.next80, %vec.epilog.vector.body78 ] ; 3 uses
  %i.jh = shl nuw i64 %index79, 1
  %i.ji = add nuw i64 %i.et, %i.jh                ; 8 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.029, i64 %i.ji
  %i.jk = getelementptr i8, ptr %.029, i64 %i.ji
  %i.jl = getelementptr i8, ptr %i.jk, i64 2
  %i.jm = getelementptr i8, ptr %.029, i64 %i.ji
  %i.jn = getelementptr i8, ptr %i.jm, i64 4
  %i.jo = getelementptr i8, ptr %.029, i64 %i.ji
  %i.jp = getelementptr i8, ptr %i.jo, i64 6
  %i.jq = getelementptr i8, ptr %.029, i64 %i.ji
  %i.jr = getelementptr i8, ptr %i.jq, i64 8
  %i.js = getelementptr i8, ptr %.029, i64 %i.ji
  %i.jt = getelementptr i8, ptr %i.js, i64 10
  %i.ju = getelementptr i8, ptr %.029, i64 %i.ji
  %i.jv = getelementptr i8, ptr %i.ju, i64 12
  %i.jw = getelementptr i8, ptr %.029, i64 %i.ji
  %i.jx = getelementptr i8, ptr %i.jw, i64 14
  %i.jy = load i8, ptr %i.jj, align 1, !alias.scope !821
  %i.jz = load i8, ptr %i.jl, align 1, !alias.scope !821
  %i.ka = load i8, ptr %i.jn, align 1, !alias.scope !821
  %i.kb = load i8, ptr %i.jp, align 1, !alias.scope !821
  %i.kc = load i8, ptr %i.jr, align 1, !alias.scope !821
  %i.kd = load i8, ptr %i.jt, align 1, !alias.scope !821
  %i.ke = load i8, ptr %i.jv, align 1, !alias.scope !821
  %i.kf = load i8, ptr %i.jx, align 1, !alias.scope !821
  %i.kg = insertelement <8 x i8> poison, i8 %i.jy, i64 0
  %i.kh = insertelement <8 x i8> %i.kg, i8 %i.jz, i64 1
  %i.ki = insertelement <8 x i8> %i.kh, i8 %i.ka, i64 2
  %i.kj = insertelement <8 x i8> %i.ki, i8 %i.kb, i64 3
  %i.kk = insertelement <8 x i8> %i.kj, i8 %i.kc, i64 4
  %i.kl = insertelement <8 x i8> %i.kk, i8 %i.kd, i64 5
  %i.km = insertelement <8 x i8> %i.kl, i8 %i.ke, i64 6
  %i.kn = insertelement <8 x i8> %i.km, i8 %i.kf, i64 7
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jg, i64 %index79
  store <8 x i8> %i.kn, ptr %i.ko, align 1, !alias.scope !822, !noalias !821
  %index.next80 = add nuw i64 %index79, 8         ; 2 uses
  %i.kp = icmp eq i64 %index.next80, %n.vec77
  br i1 %i.kp, label %vec.epilog.scalar.ph73.preheader, label %vec.epilog.vector.body78, !llvm.loop !815

vec.epilog.scalar.ph73.preheader:                 ; preds = %vec.epilog.vector.body78, %iter.check71, %vector.memcheck59, %vec.epilog.iter.check72
  %.128.ph = phi i64 [ %i.eq, %iter.check71 ], [ %i.eq, %vector.memcheck59 ], [ %i.gh, %vec.epilog.iter.check72 ], [ %i.jd, %vec.epilog.vector.body78 ]
  %.1.ph = phi i64 [ %i.et, %iter.check71 ], [ %i.et, %vector.memcheck59 ], [ %i.gj, %vec.epilog.iter.check72 ], [ %i.jf, %vec.epilog.vector.body78 ]
  br label %vec.epilog.scalar.ph73

vec.epilog.scalar.ph73:                           ; preds = %vec.epilog.scalar.ph73.preheader, %vec.epilog.scalar.ph73
  %.128 = phi i64 [ %i.kt, %vec.epilog.scalar.ph73 ], [ %.128.ph, %vec.epilog.scalar.ph73.preheader ] ; 2 uses
  %.1 = phi i64 [ %i.ku, %vec.epilog.scalar.ph73 ], [ %.1.ph, %vec.epilog.scalar.ph73.preheader ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i8 %i.kr, ptr %i.ks, align 1
  %i.kt = add nuw nsw i64 %.128, 1                ; 2 uses
  %i.ku = add nuw nsw i64 %.1, 2                  ; 2 uses
  %i.kv = icmp samesign ult i64 %i.ku, %i.g
  br i1 %i.kv, label %vec.epilog.scalar.ph73, label %bb.d, !llvm.loop !816

bb.d:                                             ; preds = %vec.epilog.scalar.ph73
  %i.kw = icmp eq i64 %i.kt, %i.g
  call void @llvm.assume(i1 %i.kw)
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
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
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
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !836
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
  %wide.vec = load <8 x i16>, ptr %i.am, align 2, !alias.scope !837
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec46 = load <8 x i16>, ptr %i.ao, align 2, !alias.scope !837
  %strided.vec47 = shufflevector <8 x i16> %wide.vec46, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store <4 x i16> %strided.vec, ptr %i.ap, align 2, !alias.scope !838, !noalias !837
  store <4 x i16> %strided.vec47, ptr %i.aq, align 2, !alias.scope !838, !noalias !837
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %scalar.ph, label %vector.body, !llvm.loop !829

scalar.ph:                                        ; preds = %vector.body, %vector.memcheck, %bb.c
  %bc.resume.val = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %i.ag, %vector.body ] ; 3 uses
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
  br i1 %i.ax, label %bb.d, label %bb.e, !llvm.loop !830

bb.e:                                             ; preds = %bb.d
  %i.ay = sub i64 %i.aw, %i.g                     ; 5 uses
  %i.az = and i64 %i.r, -4                        ; 2 uses
  %i.ba = zext nneg i32 %.v.v.i to i64            ; 5 uses
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
  br i1 %min.iters.check57, label %scalar.ph56.preheader, label %vector.memcheck58

vector.memcheck58:                                ; preds = %bb.e
  %i.bk = getelementptr i8, ptr %0, i64 %i.av
  %i.bl = and i64 %i.r, -4                        ; 2 uses
  %i.bm = add i64 %i.bl, %i.i
  %i.bn = sub i64 %i.bm, %i.ba
  %i.bo = call i64 @llvm.umax.i64(i64 %i.bn, i64 %i.g)
  %i.bp = add i64 %i.bo, %i.ba
  %i.bq = add i64 %i.bp, 3
  %i.br = add i64 %i.bl, %i.i
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 1
  %i.bu = and i64 %i.bt, 9223372036854775806
  %i.bv = sub i64 %.027, %bc.resume.val
  %i.bw = getelementptr i8, ptr %0, i64 %bc.resume.val
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bu
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bv
  %i.ca = getelementptr i8, ptr %.029, i64 %i.ay
  %i.cb = and i64 %i.bs, -4
  %i.cc = add i64 %bc.resume.val48, %i.cb
  %i.cd = add i64 %i.cc, -2
  %i.ce = sub i64 %i.cd, %i.ba
  %i.cf = sub i64 %.0, %bc.resume.val48
  %i.cg = getelementptr i8, ptr %.029, i64 %i.ce
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.cf
  %bound059 = icmp ult ptr %i.bk, %i.ch
  %bound160 = icmp ult ptr %i.ca, %i.bz
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %scalar.ph56.preheader, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %i.ci = and i64 %i.bj, 7                        ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  %i.ck = select i1 %i.cj, i64 8, i64 %i.ci
  %n.vec63 = sub nsw i64 %i.bj, %i.ck             ; 3 uses
  %i.cl = shl i64 %n.vec63, 1
  %i.cm = add i64 %i.av, %i.cl
  %i.cn = shl i64 %n.vec63, 2
  %i.co = add i64 %i.ay, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 3 uses
  %i.cq = shl nuw i64 %index65, 1
  %i.cr = shl nuw i64 %index65, 2
  %i.cs = add nuw i64 %i.ay, %i.cr                ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.029, i64 %i.cs
  %i.cu = getelementptr i8, ptr %.029, i64 %i.cs
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  %wide.vec66 = load <8 x i16>, ptr %i.ct, align 2, !alias.scope !839
  %strided.vec67 = shufflevector <8 x i16> %wide.vec66, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec68 = load <8 x i16>, ptr %i.cv, align 2, !alias.scope !839
  %strided.vec69 = shufflevector <8 x i16> %wide.vec68, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store <4 x i16> %strided.vec67, ptr %i.cw, align 2, !alias.scope !840, !noalias !839
  store <4 x i16> %strided.vec69, ptr %i.cx, align 2, !alias.scope !840, !noalias !839
  %index.next70 = add nuw i64 %index65, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next70, %n.vec63
  br i1 %i.cy, label %scalar.ph56.preheader, label %vector.body64, !llvm.loop !834

scalar.ph56.preheader:                            ; preds = %vector.body64, %vector.memcheck58, %bb.e
  %.128.ph = phi i64 [ %i.av, %vector.memcheck58 ], [ %i.av, %bb.e ], [ %i.cm, %vector.body64 ]
  %.1.ph = phi i64 [ %i.ay, %vector.memcheck58 ], [ %i.ay, %bb.e ], [ %i.co, %vector.body64 ]
  br label %scalar.ph56

scalar.ph56:                                      ; preds = %scalar.ph56.preheader, %scalar.ph56
  %.128 = phi i64 [ %i.dc, %scalar.ph56 ], [ %.128.ph, %scalar.ph56.preheader ] ; 2 uses
  %.1 = phi i64 [ %i.dd, %scalar.ph56 ], [ %.1.ph, %scalar.ph56.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i16 %i.da, ptr %i.db, align 2
  %i.dc = add nuw nsw i64 %.128, 2                ; 2 uses
  %i.dd = add nuw nsw i64 %.1, 4                  ; 2 uses
  %i.de = icmp samesign ult i64 %i.dd, %i.g
  br i1 %i.de, label %scalar.ph56, label %bb.f, !llvm.loop !835

bb.f:                                             ; preds = %scalar.ph56
  %i.df = icmp eq i64 %i.dc, %i.g
  call void @llvm.assume(i1 %i.df)
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
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
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
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !854
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
  %wide.vec = load <8 x i32>, ptr %i.am, align 4, !alias.scope !855
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec46 = load <8 x i32>, ptr %i.ao, align 4, !alias.scope !855
  %strided.vec47 = shufflevector <8 x i32> %wide.vec46, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x i32> %strided.vec, ptr %i.ap, align 4, !alias.scope !856, !noalias !855
  store <4 x i32> %strided.vec47, ptr %i.aq, align 4, !alias.scope !856, !noalias !855
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %scalar.ph, label %vector.body, !llvm.loop !847

scalar.ph:                                        ; preds = %vector.body, %vector.memcheck, %bb.c
  %bc.resume.val = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %i.ag, %vector.body ] ; 3 uses
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
  br i1 %i.ax, label %bb.d, label %bb.e, !llvm.loop !848

bb.e:                                             ; preds = %bb.d
  %i.ay = sub i64 %i.aw, %i.g                     ; 5 uses
  %i.az = and i64 %i.r, -8                        ; 2 uses
  %i.ba = zext nneg i32 %.v.v.i to i64            ; 5 uses
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
  br i1 %min.iters.check57, label %scalar.ph56.preheader, label %vector.memcheck58

vector.memcheck58:                                ; preds = %bb.e
  %i.bl = getelementptr i8, ptr %0, i64 %i.av
  %i.bm = and i64 %i.r, -8                        ; 2 uses
  %i.bn = add i64 %i.bm, %i.i
  %i.bo = add i64 %i.bn, 8
  %i.bp = sub i64 %i.bo, %i.ba
  %i.bq = call i64 @llvm.umax.i64(i64 %i.bp, i64 %i.g)
  %i.br = add i64 %i.bq, %i.ba
  %i.bs = xor i64 %i.i, -1
  %i.bt = add i64 %i.br, %i.bs
  %i.bu = sub i64 %i.bt, %i.bm                    ; 2 uses
  %i.bv = lshr i64 %i.bu, 1
  %i.bw = and i64 %i.bv, 9223372036854775804
  %i.bx = sub i64 %.027, %bc.resume.val
  %i.by = getelementptr i8, ptr %0, i64 %bc.resume.val
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bw
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bx
  %i.cc = getelementptr i8, ptr %.029, i64 %i.ay
  %i.cd = and i64 %i.bu, -8
  %i.ce = add i64 %bc.resume.val48, %i.cd
  %i.cf = add i64 %i.ce, 4
  %i.cg = sub i64 %i.cf, %i.ba
  %i.ch = sub i64 %.0, %bc.resume.val48
  %i.ci = getelementptr i8, ptr %.029, i64 %i.cg
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.ch
  %bound059 = icmp ult ptr %i.bl, %i.cj
  %bound160 = icmp ult ptr %i.cc, %i.cb
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %scalar.ph56.preheader, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %i.ck = and i64 %i.bk, 7                        ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  %i.cm = select i1 %i.cl, i64 8, i64 %i.ck
  %n.vec63 = sub nsw i64 %i.bk, %i.cm             ; 3 uses
  %i.cn = shl i64 %n.vec63, 2
  %i.co = add i64 %i.av, %i.cn
  %i.cp = shl i64 %n.vec63, 3
  %i.cq = add i64 %i.ay, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 3 uses
  %i.cs = shl nuw i64 %index65, 2
  %i.ct = shl nuw i64 %index65, 3
  %i.cu = add nuw i64 %i.ay, %i.ct                ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.029, i64 %i.cu
  %i.cw = getelementptr i8, ptr %.029, i64 %i.cu
  %i.cx = getelementptr i8, ptr %i.cw, i64 32
  %wide.vec66 = load <8 x i32>, ptr %i.cv, align 4, !alias.scope !857
  %strided.vec67 = shufflevector <8 x i32> %wide.vec66, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec68 = load <8 x i32>, ptr %i.cx, align 4, !alias.scope !857
  %strided.vec69 = shufflevector <8 x i32> %wide.vec68, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <4 x i32> %strided.vec67, ptr %i.cy, align 4, !alias.scope !858, !noalias !857
  store <4 x i32> %strided.vec69, ptr %i.cz, align 4, !alias.scope !858, !noalias !857
  %index.next70 = add nuw i64 %index65, 8         ; 2 uses
  %i.da = icmp eq i64 %index.next70, %n.vec63
  br i1 %i.da, label %scalar.ph56.preheader, label %vector.body64, !llvm.loop !852

scalar.ph56.preheader:                            ; preds = %vector.body64, %vector.memcheck58, %bb.e
  %.128.ph = phi i64 [ %i.av, %vector.memcheck58 ], [ %i.av, %bb.e ], [ %i.co, %vector.body64 ]
  %.1.ph = phi i64 [ %i.ay, %vector.memcheck58 ], [ %i.ay, %bb.e ], [ %i.cq, %vector.body64 ]
  br label %scalar.ph56

scalar.ph56:                                      ; preds = %scalar.ph56.preheader, %scalar.ph56
  %.128 = phi i64 [ %i.de, %scalar.ph56 ], [ %.128.ph, %scalar.ph56.preheader ] ; 2 uses
  %.1 = phi i64 [ %i.df, %scalar.ph56 ], [ %.1.ph, %scalar.ph56.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i32 %i.dc, ptr %i.dd, align 4
  %i.de = add nuw nsw i64 %.128, 4                ; 2 uses
  %i.df = add nuw nsw i64 %.1, 8                  ; 2 uses
  %i.dg = icmp samesign ult i64 %i.df, %i.g
  br i1 %i.dg, label %scalar.ph56, label %bb.f, !llvm.loop !853

bb.f:                                             ; preds = %scalar.ph56
  %i.dh = icmp eq i64 %i.de, %i.g
  call void @llvm.assume(i1 %i.dh)
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
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !868
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
  %wide.vec = load <4 x i64>, ptr %i.am, align 8, !alias.scope !869
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec46 = load <4 x i64>, ptr %i.ao, align 8, !alias.scope !869
  %strided.vec47 = shufflevector <4 x i64> %wide.vec46, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x i64> %strided.vec, ptr %i.ap, align 8, !alias.scope !870, !noalias !869
  store <2 x i64> %strided.vec47, ptr %i.aq, align 8, !alias.scope !870, !noalias !869
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %scalar.ph.preheader, label %vector.body, !llvm.loop !865

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
end_hunk_0
