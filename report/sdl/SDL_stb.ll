Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 91
begin_hunk_0_@tdefl_compress_block:bb.a
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 288
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit.i.i, label %bb.c, !llvm.loop !294

.loopexit.loopexit.i.i:                           ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = shl i32 %i.al, 1                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = shl i32 %i.aq, 1                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.au = load i32, ptr %i.at, align 4
  %i.av = add nsw i32 %i.au, %i.ar
  %i.aw = shl i32 %i.av, 1                        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.aw, ptr %i.ax, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.az = load i32, ptr %i.ay, align 16
  %i.ba = add nsw i32 %i.az, %i.aw
  %i.bb = shl i32 %i.ba, 1                        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add nsw i32 %i.be, %i.bb
  %i.bg = shl i32 %i.bf, 1                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.bg, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = shl i32 %i.bk, 1                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add nsw i32 %i.bo, %i.bl
  %i.bq = shl i32 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.bq, ptr %i.br, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bt = load i32, ptr %i.bs, align 16
  %i.bu = add nsw i32 %i.bt, %i.bq
  %i.bv = shl i32 %i.bu, 1                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 %i.bv, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add nsw i32 %i.by, %i.bv
  %i.ca = shl i32 %i.bz, 1                        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = add nsw i32 %i.cd, %i.ca
  %i.cf = shl i32 %i.ce, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %i.cf, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = shl i32 %i.cj, 1                        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %i.ck, ptr %i.cl, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cn = load i32, ptr %i.cm, align 16
  %i.co = add nsw i32 %i.cn, %i.ck
  %i.cp = shl i32 %i.co, 1                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 %i.cp, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = shl i32 %i.ct, 1                        ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = add nsw i32 %i.cx, %i.cu
  %i.cz = shl i32 %i.cy, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i32 %i.cz, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 34954
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.loopexit.loopexit.i.i
  %indvars.iv147.i.i = phi i64 [ 0, %.loopexit.loopexit.i.i ], [ %indvars.iv.next148.i.i, %bb.h ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv147.i.i
  %i.dd = load i8, ptr %i.dc, align 1             ; 4 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = zext i8 %i.dd to i32                    ; 2 uses
  %i.dg = zext i8 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4            ; 3 uses
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4
  %xtraiter = and i32 %i.df, 3                    ; 3 uses
  %i.dk = icmp ult i8 %i.dd, 4
  br i1 %i.dk, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i32 %i.df, 252
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %.0115.i.i = phi i32 [ %i.di, %.new ], [ %i.dy, %bb.f ] ; 5 uses
  %.067114.i.i = phi i32 [ 0, %.new ], [ %i.dx, %bb.f ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.f ]
  %i.dl = shl i32 %.067114.i.i, 3
  %i.dm = shl i32 %.0115.i.i, 2
  %i.dn = and i32 %i.dm, 4
  %i.do = or disjoint i32 %i.dl, %i.dn
  %i.dp = and i32 %.0115.i.i, 2
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = lshr i32 %.0115.i.i, 2
  %i.ds = and i32 %i.dr, 1
  %i.dt = or disjoint i32 %i.dq, %i.ds
  %i.du = lshr i32 %.0115.i.i, 3
  %i.dv = shl i32 %i.dt, 1
  %i.dw = and i32 %i.du, 1
  %i.dx = or disjoint i32 %i.dv, %i.dw            ; 3 uses
  %i.dy = lshr i32 %.0115.i.i, 4                  ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.f, !llvm.loop !295

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.e
  %.0115.i.i.epil.init = phi i32 [ %i.di, %bb.e ], [ %i.dy, %.unr-lcssa ]
  %.067114.i.i.epil.init = phi i32 [ 0, %bb.e ], [ %i.dx, %.unr-lcssa ]
  %lcmp.mod320 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod320)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.0115.i.i.epil = phi i32 [ %.0115.i.i.epil.init, %.epil.preheader ], [ %i.ec, %bb.g ] ; 2 uses
  %.067114.i.i.epil = phi i32 [ %.067114.i.i.epil.init, %.epil.preheader ], [ %i.eb, %bb.g ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.dz = shl i32 %.067114.i.i.epil, 1
  %i.ea = and i32 %.0115.i.i.epil, 1
  %i.eb = or disjoint i32 %i.dz, %i.ea            ; 2 uses
  %i.ec = lshr i32 %.0115.i.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !296

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  %.lcssa318 = phi i32 [ %i.dx, %.unr-lcssa ], [ %i.eb, %bb.g ]
  %i.ed = trunc i32 %.lcssa318 to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %indvars.iv147.i.i
  store i16 %i.ed, ptr %i.ee, align 2
  br label %bb.h

bb.h:                                             ; preds = %.epilog-lcssa, %bb.d
  %indvars.iv.next148.i.i = add nuw nsw i64 %indvars.iv147.i.i, 1 ; 2 uses
  %exitcond151.not.i.i = icmp eq i64 %indvars.iv.next148.i.i, 288
  br i1 %exitcond151.not.i.i, label %tdefl_optimize_huffman_table.exit.i, label %bb.d, !llvm.loop !297

tdefl_optimize_huffman_table.exit.i:              ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.c, i8 0, i64 132, i1 false)
  %i.ef = load i8, ptr %i.h, align 1
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 36971
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 36972
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 36973
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 36974
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 36975
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fl, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 36976
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = add nsw i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 36977
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 36978
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = add nsw i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 36979
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 36980
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 36981
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 36982
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 36983
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 36984
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = add nsw i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hn, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 36985
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ht, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 36986
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hz, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 36987
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = zext i8 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ie ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = add nsw i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 36988
  %i.ij = load i8, ptr %i.ii, align 1
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ik ; 2 uses
  %i.im = load i32, ptr %i.il, align 4
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 36989
  %i.ip = load i8, ptr %i.io, align 1
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iq ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.ir, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 36990
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = zext i8 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iw ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = add nsw i32 %i.iy, 1
  store i32 %i.iz, ptr %i.ix, align 4
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 36991
  %i.jb = load i8, ptr %i.ja, align 1
  %i.jc = zext i8 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jc ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = add nsw i32 %i.je, 1
  store i32 %i.jf, ptr %i.jd, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 36992
  %i.jh = load i8, ptr %i.jg, align 1
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = add nsw i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 36993
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = zext i8 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jo ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = add nsw i32 %i.jq, 1
  store i32 %i.jr, ptr %i.jp, align 4
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 36994
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = zext i8 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4
  %i.jx = add nsw i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 4
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 36995
  %i.jz = load i8, ptr %i.jy, align 1
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ka ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4
  %i.kd = add nsw i32 %i.kc, 1
  store i32 %i.kd, ptr %i.kb, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 36996
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 36997
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = zext i8 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.km ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = add nsw i32 %i.ko, 1
  store i32 %i.kp, ptr %i.kn, align 4
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 36998
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ks ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4
  %i.kv = add nsw i32 %i.ku, 1
  store i32 %i.kv, ptr %i.kt, align 4
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 36999
  %i.kx = load i8, ptr %i.kw, align 1
  %i.ky = zext i8 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 37000
  %i.ld = load i8, ptr %i.lc, align 1
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 37001
  %i.lj = load i8, ptr %i.li, align 1
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lk ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4
  %i.ln = add nsw i32 %i.lm, 1
  store i32 %i.ln, ptr %i.ll, align 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.lo, align 4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = shl i32 %i.lq, 1                        ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.lr, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.lu = load i32, ptr %i.lt, align 8
  %i.lv = add nsw i32 %i.lu, %i.lr
  %i.lw = shl i32 %i.lv, 1                        ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.lw, ptr %i.lx, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.lz = load i32, ptr %i.ly, align 4
  %i.ma = add nsw i32 %i.lz, %i.lw
  %i.mb = shl i32 %i.ma, 1                        ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.mb, ptr %i.mc, align 16
  %i.md = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.me = load i32, ptr %i.md, align 16
  %i.mf = add nsw i32 %i.me, %i.mb
  %i.mg = shl i32 %i.mf, 1                        ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.mg, ptr %i.mh, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.mj = load i32, ptr %i.mi, align 4
  %i.mk = add nsw i32 %i.mj, %i.mg
  %i.ml = shl i32 %i.mk, 1                        ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ml, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.mo = load i32, ptr %i.mn, align 8
  %i.mp = add nsw i32 %i.mo, %i.ml
  %i.mq = shl i32 %i.mp, 1                        ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.mq, ptr %i.mr, align 4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.mt = load i32, ptr %i.ms, align 4
  %i.mu = add nsw i32 %i.mt, %i.mq
  %i.mv = shl i32 %i.mu, 1                        ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.mv, ptr %i.mw, align 16
  %i.mx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.my = load i32, ptr %i.mx, align 16
  %i.mz = add nsw i32 %i.my, %i.mv
  %i.na = shl i32 %i.mz, 1                        ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.na, ptr %i.nb, align 4
  %i.nc = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.nd = load i32, ptr %i.nc, align 4
  %i.ne = add nsw i32 %i.nd, %i.na
  %i.nf = shl i32 %i.ne, 1                        ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.nf, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ni = load i32, ptr %i.nh, align 8
  %i.nj = add nsw i32 %i.ni, %i.nf
  %i.nk = shl i32 %i.nj, 1                        ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.nk, ptr %i.nl, align 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.nn = load i32, ptr %i.nm, align 4
  %i.no = add nsw i32 %i.nn, %i.nk
  %i.np = shl i32 %i.no, 1                        ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.np, ptr %i.nq, align 16
  %i.nr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ns = load i32, ptr %i.nr, align 16
  %i.nt = add nsw i32 %i.ns, %i.np
  %i.nu = shl i32 %i.nt, 1                        ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.nu, ptr %i.nv, align 4
  %i.nw = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.nx = load i32, ptr %i.nw, align 4
  %i.ny = add nsw i32 %i.nx, %i.nu
  %i.nz = shl i32 %i.ny, 1                        ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.nz, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.oc = load i32, ptr %i.ob, align 8
  %i.od = add nsw i32 %i.oc, %i.nz
  %i.oe = shl i32 %i.od, 1
  %i.of = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.oe, ptr %i.of, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 35530
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %tdefl_optimize_huffman_table.exit.i
  %indvars.iv147.i41.i = phi i64 [ 0, %tdefl_optimize_huffman_table.exit.i ], [ %indvars.iv.next148.i45.i, %bb.m ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv147.i41.i
  %i.oi = load i8, ptr %i.oh, align 1             ; 4 uses
  %i.oj = icmp eq i8 %i.oi, 0
  br i1 %i.oj, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ok = zext i8 %i.oi to i32                    ; 2 uses
  %i.ol = zext i8 %i.oi to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ol ; 2 uses
  %i.on = load i32, ptr %i.om, align 4            ; 3 uses
  %i.oo = add i32 %i.on, 1
  store i32 %i.oo, ptr %i.om, align 4
  %xtraiter324 = and i32 %i.ok, 3                 ; 3 uses
  %i.op = icmp ult i8 %i.oi, 4
  br i1 %i.op, label %.epil.preheader323, label %.new321

.new321:                                          ; preds = %bb.j
  %unroll_iter330 = and i32 %i.ok, 252
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.new321
  %.0115.i42.i = phi i32 [ %i.on, %.new321 ], [ %i.pd, %bb.k ] ; 5 uses
  %.067114.i43.i = phi i32 [ 0, %.new321 ], [ %i.pc, %bb.k ]
  %niter331 = phi i32 [ 0, %.new321 ], [ %niter331.next.3, %bb.k ]
  %i.oq = shl i32 %.067114.i43.i, 3
  %i.or = shl i32 %.0115.i42.i, 2
  %i.os = and i32 %i.or, 4
  %i.ot = or disjoint i32 %i.oq, %i.os
  %i.ou = and i32 %.0115.i42.i, 2
  %i.ov = or disjoint i32 %i.ot, %i.ou
  %i.ow = lshr i32 %.0115.i42.i, 2
  %i.ox = and i32 %i.ow, 1
  %i.oy = or disjoint i32 %i.ov, %i.ox
  %i.oz = lshr i32 %.0115.i42.i, 3
  %i.pa = shl i32 %i.oy, 1
  %i.pb = and i32 %i.oz, 1
  %i.pc = or disjoint i32 %i.pa, %i.pb            ; 3 uses
  %i.pd = lshr i32 %.0115.i42.i, 4                ; 2 uses
  %niter331.next.3 = add i32 %niter331, 4         ; 2 uses
  %niter331.ncmp.3.not = icmp eq i32 %niter331.next.3, %unroll_iter330
  br i1 %niter331.ncmp.3.not, label %.unr-lcssa322, label %bb.k, !llvm.loop !295

.unr-lcssa322:                                    ; preds = %bb.k
  %lcmp.mod326.not = icmp eq i32 %xtraiter324, 0
  br i1 %lcmp.mod326.not, label %.epilog-lcssa327, label %.epil.preheader323

.epil.preheader323:                               ; preds = %.unr-lcssa322, %bb.j
  %.0115.i42.i.epil.init = phi i32 [ %i.on, %bb.j ], [ %i.pd, %.unr-lcssa322 ]
  %.067114.i43.i.epil.init = phi i32 [ 0, %bb.j ], [ %i.pc, %.unr-lcssa322 ]
  %lcmp.mod329 = icmp ne i32 %xtraiter324, 0
  tail call void @llvm.assume(i1 %lcmp.mod329)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader323
  %.0115.i42.i.epil = phi i32 [ %.0115.i42.i.epil.init, %.epil.preheader323 ], [ %i.ph, %bb.l ] ; 2 uses
  %.067114.i43.i.epil = phi i32 [ %.067114.i43.i.epil.init, %.epil.preheader323 ], [ %i.pg, %bb.l ]
  %epil.iter325 = phi i32 [ 0, %.epil.preheader323 ], [ %epil.iter325.next, %bb.l ]
  %i.pe = shl i32 %.067114.i43.i.epil, 1
  %i.pf = and i32 %.0115.i42.i.epil, 1
  %i.pg = or disjoint i32 %i.pe, %i.pf            ; 2 uses
  %i.ph = lshr i32 %.0115.i42.i.epil, 1
  %epil.iter325.next = add i32 %epil.iter325, 1   ; 2 uses
  %epil.iter325.cmp.not = icmp eq i32 %epil.iter325.next, %xtraiter324
  br i1 %epil.iter325.cmp.not, label %.epilog-lcssa327, label %bb.l, !llvm.loop !298

.epilog-lcssa327:                                 ; preds = %bb.l, %.unr-lcssa322
  %.lcssa317 = phi i32 [ %i.pc, %.unr-lcssa322 ], [ %i.pg, %bb.l ]
  %i.pi = trunc i32 %.lcssa317 to i16
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv147.i41.i
  store i16 %i.pi, ptr %i.pj, align 2
  br label %bb.m

bb.m:                                             ; preds = %.epilog-lcssa327, %bb.i
  %indvars.iv.next148.i45.i = add nuw nsw i64 %indvars.iv147.i41.i, 1 ; 2 uses
  %exitcond151.not.i46.i = icmp eq i64 %indvars.iv.next148.i45.i, 32
  br i1 %exitcond151.not.i46.i, label %tdefl_optimize_huffman_table.exit47.i, label %bb.i, !llvm.loop !297

tdefl_optimize_huffman_table.exit47.i:            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.pl = load i32, ptr %i.pk, align 4            ; 2 uses
  %i.pm = shl nuw i32 1, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.po = load i32, ptr %i.pn, align 8
  %i.pp = or i32 %i.po, %i.pm                     ; 3 uses
  store i32 %i.pp, ptr %i.pn, align 8
  %i.pq = add i32 %i.pl, 2                        ; 4 uses
  store i32 %i.pq, ptr %i.pk, align 4
  %i.pr = icmp ugt i32 %i.pq, 7
  br i1 %i.pr, label %.lr.ph64.i, label %tdefl_start_static_block.exit

.lr.ph64.i:                                       ; preds = %tdefl_optimize_huffman_table.exit47.i
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph64.i
end_hunk_0
