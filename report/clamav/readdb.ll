Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/readdb?download=true
inline.NumInlined: 52
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@cli_loadidb:bb.a
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nuw nsw i32 %i.av, %i.ay            ; 4 uses
  %i.ba = icmp ne i32 %i.az, 32
  %i.bb = and i32 %i.az, 8183
  %i.bc = icmp ne i32 %i.bb, 16
  %or.cond3 = and i1 %i.ba, %i.bc
  br i1 %or.cond3, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.669, i32 noundef %i.y) #20
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.bd = lshr exact i32 %i.az, 3                 ; 2 uses
  %i.be = add nsw i32 %i.bd, -2
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.bg = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !151
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bg ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !42
  %i.bl = add i32 %i.bk, 1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw nsw i64 %i.bm, 248
  %i.bo = call ptr @mpool_realloc(ptr noundef %i.bf, ptr noundef %i.bi, i64 noundef %i.bn) #20 ; 3 uses
  %.not323 = icmp eq ptr %i.bo, null
  br i1 %.not323, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store ptr %i.bo, ptr %i.bh, align 8, !tbaa !151
  %i.bq = load i32, ptr %i.bj, align 4, !tbaa !42 ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [248 x i8], ptr %i.bo, i64 %i.br ; 61 uses
  %i.bt = add i32 %i.bq, 1
  store i32 %i.bt, ptr %i.bj, align 4, !tbaa !42
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = sub nuw nsw i32 %i.az, %i.bd            ; 36 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bx = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !9
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 4
  %i.ce = or i32 %i.cd, %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.ch = zext i8 %i.cg to i32
  %i.ci = or i32 %i.ce, %i.ch                     ; 2 uses
  store i32 %i.ci, ptr %i.bu, align 4, !tbaa !42
  %i.cj = icmp samesign ugt i32 %i.ci, 4072
  br i1 %i.cj, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !9
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !9
  %i.cr = zext i8 %i.cq to i32
  %i.cs = or i32 %i.co, %i.cr                     ; 2 uses
  store i32 %i.cs, ptr %i.ck, align 4, !tbaa !42
  %i.ct = icmp samesign ugt i32 %i.cs, %i.bv
  br i1 %i.ct, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ar, i64 7
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  %i.da = zext i8 %i.cz to i32
  %i.db = or i32 %i.cx, %i.da                     ; 2 uses
  store i32 %i.db, ptr %i.bw, align 4, !tbaa !42
  %i.dc = icmp samesign ugt i32 %i.db, %i.bv
  br i1 %i.dc, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !9
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ar, i64 10
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !9
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 4
  %i.dl = or i32 %i.dk, %i.dg
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ar, i64 11
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !9
  %i.do = zext i8 %i.dn to i32
  %i.dp = or i32 %i.dl, %i.do                     ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !42
  %i.dr = icmp samesign ugt i32 %i.dp, 4072
  br i1 %i.dr, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !9
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ar, i64 13
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !9
  %i.dy = zext i8 %i.dx to i32
  %i.dz = or i32 %i.dv, %i.dy                     ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !42
  %i.eb = icmp samesign ugt i32 %i.dz, %i.bv
  br i1 %i.eb, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !9
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ar, i64 15
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !9
  %i.ei = zext i8 %i.eh to i32
  %i.ej = or i32 %i.ef, %i.ei                     ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bs, i64 36
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !42
  %i.el = icmp samesign ugt i32 %i.ej, %i.bv
  br i1 %i.el, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.en = load i8, ptr %i.em, align 1, !tbaa !9
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ar, i64 17
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !9
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 4
  %i.eu = or i32 %i.et, %i.ep
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ar, i64 18
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !9
  %i.ex = zext i8 %i.ew to i32
  %i.ey = or i32 %i.eu, %i.ex                     ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !42
  %i.fa = icmp samesign ugt i32 %i.ey, 4072
  br i1 %i.fa, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ar, i64 19
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !9
  %i.fd = zext i8 %i.fc to i32
  %i.fe = shl nuw nsw i32 %i.fd, 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !9
  %i.fh = zext i8 %i.fg to i32
  %i.fi = or i32 %i.fe, %i.fh                     ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !42
  %i.fk = icmp samesign ugt i32 %i.fi, %i.bv
  br i1 %i.fk, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ar, i64 21
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl nuw nsw i32 %i.fn, 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ar, i64 22
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !9
  %i.fr = zext i8 %i.fq to i32
  %i.fs = or i32 %i.fo, %i.fr                     ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !42
  %i.fu = icmp samesign ugt i32 %i.fs, %i.bv
  br i1 %i.fu, label %.thread, label %.preheader376

.preheader376:                                    ; preds = %bb.af
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ar, i64 23
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bs, i64 68
  %i.fy = load i8, ptr %i.fv, align 1, !tbaa !9
  %i.fz = zext i8 %i.fy to i32
  %i.ga = shl nuw nsw i32 %i.fz, 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !9
  %i.gd = zext i8 %i.gc to i32
  %i.ge = shl nuw nsw i32 %i.gd, 4
  %i.gf = or i32 %i.ge, %i.ga
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ar, i64 25
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !9
  %i.gi = zext i8 %i.gh to i32
  %i.gj = or i32 %i.gf, %i.gi                     ; 2 uses
  store i32 %i.gj, ptr %i.fw, align 4, !tbaa !42
  %i.gk = icmp samesign ugt i32 %i.gj, 4072
  br i1 %i.gk, label %.thread342, label %bb.ag

.thread:                                          ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.x, %bb.y, %bb.z
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.670, i32 noundef %i.y) #20
  br label %.loopexit

bb.ag:                                            ; preds = %.preheader376
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ar, i64 26
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !9
  %i.go = zext i8 %i.gn to i32
  %i.gp = shl nuw nsw i32 %i.go, 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ar, i64 27
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !9
  %i.gs = zext i8 %i.gr to i32
  %i.gt = or i32 %i.gp, %i.gs                     ; 2 uses
  store i32 %i.gt, ptr %i.gl, align 4, !tbaa !42
  %i.gu = icmp samesign ugt i32 %i.gt, %i.bv
  br i1 %i.gu, label %.thread342, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !9
  %i.gx = zext i8 %i.gw to i32
  %i.gy = shl nuw nsw i32 %i.gx, 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ar, i64 29
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !9
  %i.hb = zext i8 %i.ha to i32
  %i.hc = or i32 %i.gy, %i.hb                     ; 2 uses
  store i32 %i.hc, ptr %i.fx, align 4, !tbaa !42
  %i.hd = icmp samesign ugt i32 %i.hc, %i.bv
  br i1 %i.hd, label %.thread342, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.he = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !9
  %i.hg = zext i8 %i.hf to i32
  %i.hh = shl nuw nsw i32 %i.hg, 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ar, i64 31
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !9
  %i.hk = zext i8 %i.hj to i32
  %i.hl = shl nuw nsw i32 %i.hk, 4
  %i.hm = or i32 %i.hl, %i.hh
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !9
  %i.hp = zext i8 %i.ho to i32
  %i.hq = or i32 %i.hm, %i.hp                     ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !42
  %i.hs = icmp samesign ugt i32 %i.hq, 4072
  br i1 %i.hs, label %.thread342, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ar, i64 33
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !9
  %i.hv = zext i8 %i.hu to i32
  %i.hw = shl nuw nsw i32 %i.hv, 4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ar, i64 34
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !9
  %i.hz = zext i8 %i.hy to i32
  %i.ia = or i32 %i.hw, %i.hz                     ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bs, i64 60
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !42
  %i.ic = icmp samesign ugt i32 %i.ia, %i.bv
  br i1 %i.ic, label %.thread342, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.id = getelementptr inbounds nuw i8, ptr %i.ar, i64 35
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !9
  %i.if = zext i8 %i.ie to i32
  %i.ig = shl nuw nsw i32 %i.if, 4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !9
  %i.ij = zext i8 %i.ii to i32
  %i.ik = or i32 %i.ig, %i.ij                     ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !42
  %i.im = icmp samesign ugt i32 %i.ik, %i.bv
  br i1 %i.im, label %.thread342, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.in = getelementptr inbounds nuw i8, ptr %i.ar, i64 37
  %i.io = load i8, ptr %i.in, align 1, !tbaa !9
  %i.ip = zext i8 %i.io to i32
  %i.iq = shl nuw nsw i32 %i.ip, 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ar, i64 38
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !9
  %i.it = zext i8 %i.is to i32
  %i.iu = shl nuw nsw i32 %i.it, 4
  %i.iv = or i32 %i.iu, %i.iq
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ar, i64 39
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !9
  %i.iy = zext i8 %i.ix to i32
  %i.iz = or i32 %i.iv, %i.iy                     ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bs, i64 52
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !42
  %i.jb = icmp samesign ugt i32 %i.iz, 4072
  br i1 %i.jb, label %.thread342, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !9
  %i.je = zext i8 %i.jd to i32
  %i.jf = shl nuw nsw i32 %i.je, 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ar, i64 41
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !9
  %i.ji = zext i8 %i.jh to i32
  %i.jj = or i32 %i.jf, %i.ji                     ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !42
  %i.jl = icmp samesign ugt i32 %i.jj, %i.bv
  br i1 %i.jl, label %.thread342, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ar, i64 42
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !9
  %i.jo = zext i8 %i.jn to i32
  %i.jp = shl nuw nsw i32 %i.jo, 4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ar, i64 43
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !9
  %i.js = zext i8 %i.jr to i32
  %i.jt = or i32 %i.jp, %i.js                     ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bs, i64 76
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !42
  %i.jv = icmp samesign ugt i32 %i.jt, %i.bv
  br i1 %i.jv, label %.thread342, label %.preheader375

.preheader375:                                    ; preds = %bb.an
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  %i.jx = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.jy = getelementptr inbounds nuw i8, ptr %i.bs, i64 92
  %i.jz = load i8, ptr %i.jw, align 1, !tbaa !9
  %i.ka = zext i8 %i.jz to i32
  %i.kb = shl nuw nsw i32 %i.ka, 4
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ar, i64 45
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !9
  %i.ke = zext i8 %i.kd to i32
  %i.kf = or i32 %i.kb, %i.ke
  store i32 %i.kf, ptr %i.jx, align 4, !tbaa !42
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ar, i64 46
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !9
  %i.ki = zext i8 %i.kh to i32
  %i.kj = shl nuw nsw i32 %i.ki, 4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ar, i64 47
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !9
  %i.km = zext i8 %i.kl to i32
  %i.kn = or i32 %i.kj, %i.km                     ; 2 uses
  store i32 %i.kn, ptr %i.jy, align 4, !tbaa !42
  %i.ko = icmp samesign ugt i32 %i.kn, %i.bv
  br i1 %i.ko, label %.thread345, label %bb.ao

.thread342:                                       ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %.preheader376, %bb.ag, %bb.ah
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.671, i32 noundef %i.y) #20
  br label %.loopexit

bb.ao:                                            ; preds = %.preheader375
  %i.kp = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !9
  %i.ks = zext i8 %i.kr to i32
  %i.kt = shl nuw nsw i32 %i.ks, 4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ar, i64 49
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !9
  %i.kw = zext i8 %i.kv to i32
  %i.kx = or i32 %i.kt, %i.kw                     ; 2 uses
  store i32 %i.kx, ptr %i.kp, align 4, !tbaa !42
  %i.ky = icmp samesign ugt i32 %i.kx, %i.bv
  br i1 %i.ky, label %.thread345, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ar, i64 50
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !9
  %i.lb = zext i8 %i.la to i32
  %i.lc = shl nuw nsw i32 %i.lb, 4
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ar, i64 51
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !9
  %i.lf = zext i8 %i.le to i32
  %i.lg = or i32 %i.lc, %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bs, i64 84
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !42
  %i.li = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !9
  %i.lk = zext i8 %i.lj to i32
  %i.ll = shl nuw nsw i32 %i.lk, 4
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ar, i64 53
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !9
  %i.lo = zext i8 %i.ln to i32
  %i.lp = or i32 %i.ll, %i.lo                     ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !42
  %i.lr = icmp samesign ugt i32 %i.lp, %i.bv
  br i1 %i.lr, label %.thread345, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ar, i64 54
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !9
  %i.lu = zext i8 %i.lt to i32
  %i.lv = shl nuw nsw i32 %i.lu, 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ar, i64 55
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !9
  %i.ly = zext i8 %i.lx to i32
  %i.lz = or i32 %i.lv, %i.ly                     ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bs, i64 108
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !42
  %i.mb = icmp samesign ugt i32 %i.lz, %i.bv
  br i1 %i.mb, label %.thread345, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !9
  %i.me = zext i8 %i.md to i32
  %i.mf = shl nuw nsw i32 %i.me, 4
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ar, i64 57
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !9
  %i.mi = zext i8 %i.mh to i32
  %i.mj = or i32 %i.mf, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !42
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ar, i64 58
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !9
  %i.mn = zext i8 %i.mm to i32
  %i.mo = shl nuw nsw i32 %i.mn, 4
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ar, i64 59
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !9
  %i.mr = zext i8 %i.mq to i32
  %i.ms = or i32 %i.mo, %i.mr                     ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.bs, i64 100
  store i32 %i.ms, ptr %i.mt, align 4, !tbaa !42
  %i.mu = icmp samesign ugt i32 %i.ms, %i.bv
  br i1 %i.mu, label %.thread345, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !9
  %i.mx = zext i8 %i.mw to i32
  %i.my = shl nuw nsw i32 %i.mx, 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ar, i64 61
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !9
  %i.nb = zext i8 %i.na to i32
  %i.nc = or i32 %i.my, %i.nb                     ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !42
  %i.ne = icmp samesign ugt i32 %i.nc, %i.bv
  br i1 %i.ne, label %.thread345, label %.preheader374

.preheader374:                                    ; preds = %bb.as
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ar, i64 62
  %i.ng = getelementptr inbounds nuw i8, ptr %i.bs, i64 116
  %i.nh = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.ni = load i8, ptr %i.nf, align 1, !tbaa !9
  %i.nj = zext i8 %i.ni to i32
  %i.nk = shl nuw nsw i32 %i.nj, 4
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ar, i64 63
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !9
  %i.nn = zext i8 %i.nm to i32
  %i.no = or i32 %i.nk, %i.nn
  store i32 %i.no, ptr %i.ng, align 4, !tbaa !42
  %i.np = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !9
  %i.nr = zext i8 %i.nq to i32
  %i.ns = shl nuw nsw i32 %i.nr, 4
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ar, i64 65
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !9
  %i.nv = zext i8 %i.nu to i32
  %i.nw = or i32 %i.ns, %i.nv                     ; 2 uses
  store i32 %i.nw, ptr %i.nh, align 4, !tbaa !42
  %i.nx = icmp samesign ugt i32 %i.nw, %i.bv
  br i1 %i.nx, label %.thread348, label %bb.at

.thread345:                                       ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %.preheader375, %bb.ao
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.672, i32 noundef %i.y) #20
  br label %.loopexit

bb.at:                                            ; preds = %.preheader374
  %i.ny = getelementptr inbounds nuw i8, ptr %i.bs, i64 140
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ar, i64 66
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !9
  %i.ob = zext i8 %i.oa to i32
  %i.oc = shl nuw nsw i32 %i.ob, 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.ar, i64 67
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !9
  %i.of = zext i8 %i.oe to i32
  %i.og = or i32 %i.oc, %i.of                     ; 2 uses
  store i32 %i.og, ptr %i.ny, align 4, !tbaa !42
  %i.oh = icmp samesign ugt i32 %i.og, %i.bv
  br i1 %i.oh, label %.thread348, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ar, i64 68
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !9
  %i.ok = zext i8 %i.oj to i32
  %i.ol = shl nuw nsw i32 %i.ok, 4
  %i.om = getelementptr inbounds nuw i8, ptr %i.ar, i64 69
  %i.on = load i8, ptr %i.om, align 1, !tbaa !9
  %i.oo = zext i8 %i.on to i32
  %i.op = or i32 %i.ol, %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.bs, i64 120
  store i32 %i.op, ptr %i.oq, align 4, !tbaa !42
  %i.or = getelementptr inbounds nuw i8, ptr %i.ar, i64 70
  %i.os = load i8, ptr %i.or, align 1, !tbaa !9
  %i.ot = zext i8 %i.os to i32
  %i.ou = shl nuw nsw i32 %i.ot, 4
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ar, i64 71
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !9
  %i.ox = zext i8 %i.ow to i32
  %i.oy = or i32 %i.ou, %i.ox                     ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.bs, i64 132
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !42
  %i.pa = icmp samesign ugt i32 %i.oy, %i.bv
  br i1 %i.pa, label %.thread348, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !9
  %i.pd = zext i8 %i.pc to i32
  %i.pe = shl nuw nsw i32 %i.pd, 4
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ar, i64 73
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !9
  %i.ph = zext i8 %i.pg to i32
  %i.pi = or i32 %i.pe, %i.ph                     ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  store i32 %i.pi, ptr %i.pj, align 4, !tbaa !42
  %i.pk = icmp samesign ugt i32 %i.pi, %i.bv
  br i1 %i.pk, label %.thread348, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ar, i64 74
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !9
  %i.pn = zext i8 %i.pm to i32
  %i.po = shl nuw nsw i32 %i.pn, 4
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ar, i64 75
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !9
  %i.pr = zext i8 %i.pq to i32
  %i.ps = or i32 %i.po, %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.bs, i64 124
  store i32 %i.ps, ptr %i.pt, align 4, !tbaa !42
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !9
  %i.pw = zext i8 %i.pv to i32
  %i.px = shl nuw nsw i32 %i.pw, 4
  %i.py = getelementptr inbounds nuw i8, ptr %i.ar, i64 77
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !9
  %i.qa = zext i8 %i.pz to i32
  %i.qb = or i32 %i.px, %i.qa                     ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  store i32 %i.qb, ptr %i.qc, align 4, !tbaa !42
  %i.qd = icmp samesign ugt i32 %i.qb, %i.bv
  br i1 %i.qd, label %.thread348, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ar, i64 78
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !9
  %i.qg = zext i8 %i.qf to i32
  %i.qh = shl nuw nsw i32 %i.qg, 4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ar, i64 79
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !9
  %i.qk = zext i8 %i.qj to i32
  %i.ql = or i32 %i.qh, %i.qk                     ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.bs, i64 148
  store i32 %i.ql, ptr %i.qm, align 4, !tbaa !42
  %i.qn = icmp samesign ugt i32 %i.ql, %i.bv
  br i1 %i.qn, label %.thread348, label %.preheader373

.preheader373:                                    ; preds = %bb.ax
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.qp = getelementptr inbounds nuw i8, ptr %i.bs, i64 152
  %i.qq = getelementptr inbounds nuw i8, ptr %i.bs, i64 164
  %i.qr = load i8, ptr %i.qo, align 1, !tbaa !9
  %i.qs = zext i8 %i.qr to i32
  %i.qt = shl nuw nsw i32 %i.qs, 4
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ar, i64 81
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !9
  %i.qw = zext i8 %i.qv to i32
  %i.qx = or i32 %i.qt, %i.qw
  store i32 %i.qx, ptr %i.qp, align 4, !tbaa !42
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ar, i64 82
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !9
  %i.ra = zext i8 %i.qz to i32
  %i.rb = shl nuw nsw i32 %i.ra, 4
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ar, i64 83
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !9
  %i.re = zext i8 %i.rd to i32
  %i.rf = or i32 %i.rb, %i.re                     ; 2 uses
  store i32 %i.rf, ptr %i.qq, align 4, !tbaa !42
  %i.rg = icmp samesign ugt i32 %i.rf, %i.bv
  br i1 %i.rg, label %.thread351, label %bb.ay

.thread348:                                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %.preheader374, %bb.at
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.673, i32 noundef %i.y) #20
  br label %.loopexit

bb.ay:                                            ; preds = %.preheader373
  %i.rh = getelementptr inbounds nuw i8, ptr %i.bs, i64 176
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ar, i64 84
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !9
  %i.rk = zext i8 %i.rj to i32
  %i.rl = shl nuw nsw i32 %i.rk, 4
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ar, i64 85
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !9
  %i.ro = zext i8 %i.rn to i32
  %i.rp = or i32 %i.rl, %i.ro                     ; 2 uses
  store i32 %i.rp, ptr %i.rh, align 4, !tbaa !42
  %i.rq = icmp samesign ugt i32 %i.rp, %i.bv
  br i1 %i.rq, label %.thread351, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ar, i64 86
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !9
  %i.rt = zext i8 %i.rs to i32
  %i.ru = shl nuw nsw i32 %i.rt, 4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ar, i64 87
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !9
  %i.rx = zext i8 %i.rw to i32
  %i.ry = or i32 %i.ru, %i.rx
  %i.rz = getelementptr inbounds nuw i8, ptr %i.bs, i64 156
  store i32 %i.ry, ptr %i.rz, align 4, !tbaa !42
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !9
  %i.sc = zext i8 %i.sb to i32
  %i.sd = shl nuw nsw i32 %i.sc, 4
  %i.se = getelementptr inbounds nuw i8, ptr %i.ar, i64 89
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !9
  %i.sg = zext i8 %i.sf to i32
  %i.sh = or i32 %i.sd, %i.sg                     ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.bs, i64 168
  store i32 %i.sh, ptr %i.si, align 4, !tbaa !42
  %i.sj = icmp samesign ugt i32 %i.sh, %i.bv
  br i1 %i.sj, label %.thread351, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ar, i64 90
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !9
  %i.sm = zext i8 %i.sl to i32
  %i.sn = shl nuw nsw i32 %i.sm, 4
  %i.so = getelementptr inbounds nuw i8, ptr %i.ar, i64 91
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !9
  %i.sq = zext i8 %i.sp to i32
  %i.sr = or i32 %i.sn, %i.sq                     ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.bs, i64 180
  store i32 %i.sr, ptr %i.ss, align 4, !tbaa !42
  %i.st = icmp samesign ugt i32 %i.sr, %i.bv
  br i1 %i.st, label %.thread351, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.su = getelementptr inbounds nuw i8, ptr %i.ar, i64 92
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !9
  %i.sw = zext i8 %i.sv to i32
  %i.sx = shl nuw nsw i32 %i.sw, 4
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ar, i64 93
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !9
  %i.ta = zext i8 %i.sz to i32
  %i.tb = or i32 %i.sx, %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  store i32 %i.tb, ptr %i.tc, align 4, !tbaa !42
  %i.td = getelementptr inbounds nuw i8, ptr %i.ar, i64 94
  %i.te = load i8, ptr %i.td, align 1, !tbaa !9
  %i.tf = zext i8 %i.te to i32
  %i.tg = shl nuw nsw i32 %i.tf, 4
  %i.th = getelementptr inbounds nuw i8, ptr %i.ar, i64 95
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !9
  %i.tj = zext i8 %i.ti to i32
  %i.tk = or i32 %i.tg, %i.tj                     ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.bs, i64 172
  store i32 %i.tk, ptr %i.tl, align 4, !tbaa !42
  %i.tm = icmp samesign ugt i32 %i.tk, %i.bv
  br i1 %i.tm, label %.thread351, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !9
  %i.tp = zext i8 %i.to to i32
  %i.tq = shl nuw nsw i32 %i.tp, 4
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ar, i64 97
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !9
  %i.tt = zext i8 %i.ts to i32
  %i.tu = or i32 %i.tq, %i.tt                     ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.bs, i64 184
  store i32 %i.tu, ptr %i.tv, align 4, !tbaa !42
  %i.tw = icmp samesign ugt i32 %i.tu, %i.bv
  br i1 %i.tw, label %.thread351, label %.preheader372

.preheader372:                                    ; preds = %bb.bc
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ar, i64 98
  %i.ty = getelementptr inbounds nuw i8, ptr %i.bs, i64 188
  %i.tz = getelementptr inbounds nuw i8, ptr %i.bs, i64 200
  %i.ua = load i8, ptr %i.tx, align 1, !tbaa !9
  %i.ub = zext i8 %i.ua to i32
  %i.uc = shl nuw nsw i32 %i.ub, 4
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ar, i64 99
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !9
  %i.uf = zext i8 %i.ue to i32
  %i.ug = or i32 %i.uc, %i.uf
  store i32 %i.ug, ptr %i.ty, align 4, !tbaa !42
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ar, i64 100
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !9
  %i.uj = zext i8 %i.ui to i32
  %i.uk = shl nuw nsw i32 %i.uj, 4
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ar, i64 101
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !9
  %i.un = zext i8 %i.um to i32
  %i.uo = or i32 %i.uk, %i.un                     ; 2 uses
  store i32 %i.uo, ptr %i.tz, align 4, !tbaa !42
  %i.up = icmp samesign ugt i32 %i.uo, %i.bv
  br i1 %i.up, label %.thread354, label %bb.bd

.thread351:                                       ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %.preheader373, %bb.ay
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.674, i32 noundef %i.y) #20
  br label %.loopexit

bb.bd:                                            ; preds = %.preheader372
  %i.uq = getelementptr inbounds nuw i8, ptr %i.bs, i64 212
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ar, i64 102
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !9
  %i.ut = zext i8 %i.us to i32
  %i.uu = shl nuw nsw i32 %i.ut, 4
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ar, i64 103
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !9
  %i.ux = zext i8 %i.uw to i32
  %i.uy = or i32 %i.uu, %i.ux                     ; 2 uses
  store i32 %i.uy, ptr %i.uq, align 4, !tbaa !42
  %i.uz = icmp samesign ugt i32 %i.uy, %i.bv
  br i1 %i.uz, label %.thread354, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.va = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !9
  %i.vc = zext i8 %i.vb to i32
  %i.vd = shl nuw nsw i32 %i.vc, 4
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ar, i64 105
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !9
  %i.vg = zext i8 %i.vf to i32
  %i.vh = or i32 %i.vd, %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.bs, i64 192
  store i32 %i.vh, ptr %i.vi, align 4, !tbaa !42
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ar, i64 106
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !9
  %i.vl = zext i8 %i.vk to i32
  %i.vm = shl nuw nsw i32 %i.vl, 4
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ar, i64 107
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !9
  %i.vp = zext i8 %i.vo to i32
  %i.vq = or i32 %i.vm, %i.vp                     ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.bs, i64 204
  store i32 %i.vq, ptr %i.vr, align 4, !tbaa !42
  %i.vs = icmp samesign ugt i32 %i.vq, %i.bv
  br i1 %i.vs, label %.thread354, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ar, i64 108
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !9
  %i.vv = zext i8 %i.vu to i32
  %i.vw = shl nuw nsw i32 %i.vv, 4
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ar, i64 109
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !9
  %i.vz = zext i8 %i.vy to i32
  %i.wa = or i32 %i.vw, %i.vz                     ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.bs, i64 216
  store i32 %i.wa, ptr %i.wb, align 4, !tbaa !42
  %i.wc = icmp samesign ugt i32 %i.wa, %i.bv
  br i1 %i.wc, label %.thread354, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ar, i64 110
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !9
  %i.wf = zext i8 %i.we to i32
  %i.wg = shl nuw nsw i32 %i.wf, 4
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ar, i64 111
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !9
  %i.wj = zext i8 %i.wi to i32
  %i.wk = or i32 %i.wg, %i.wj
  %i.wl = getelementptr inbounds nuw i8, ptr %i.bs, i64 196
  store i32 %i.wk, ptr %i.wl, align 4, !tbaa !42
  %i.wm = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !9
  %i.wo = zext i8 %i.wn to i32
  %i.wp = shl nuw nsw i32 %i.wo, 4
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ar, i64 113
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !9
  %i.ws = zext i8 %i.wr to i32
  %i.wt = or i32 %i.wp, %i.ws                     ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.bs, i64 208
  store i32 %i.wt, ptr %i.wu, align 4, !tbaa !42
  %i.wv = icmp samesign ugt i32 %i.wt, %i.bv
  br i1 %i.wv, label %.thread354, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ar, i64 114
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !9
  %i.wy = zext i8 %i.wx to i32
  %i.wz = shl nuw nsw i32 %i.wy, 4
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ar, i64 115
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !9
  %i.xc = zext i8 %i.xb to i32
  %i.xd = or i32 %i.wz, %i.xc                     ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.bs, i64 220
  store i32 %i.xd, ptr %i.xe, align 4, !tbaa !42
  %i.xf = icmp samesign ugt i32 %i.xd, %i.bv
  br i1 %i.xf, label %.thread354, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.xg = getelementptr inbounds nuw i8, ptr %i.ar, i64 116
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !9
  %i.xi = zext i8 %i.xh to i32
  %i.xj = shl nuw nsw i32 %i.xi, 4
  %i.xk = getelementptr inbounds nuw i8, ptr %i.ar, i64 117
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !9
  %i.xm = zext i8 %i.xl to i32
  %i.xn = or i32 %i.xj, %i.xm                     ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.bs, i64 224
  store i32 %i.xn, ptr %i.xo, align 8, !tbaa !294
  %i.xp = getelementptr inbounds nuw i8, ptr %i.ar, i64 118
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !9
  %i.xr = zext i8 %i.xq to i32
  %i.xs = shl nuw nsw i32 %i.xr, 4
  %i.xt = getelementptr inbounds nuw i8, ptr %i.ar, i64 119
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !9
  %i.xv = zext i8 %i.xu to i32
  %i.xw = or i32 %i.xs, %i.xv                     ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.bs, i64 228
  store i32 %i.xw, ptr %i.xx, align 4, !tbaa !295
  %i.xy = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !9
  %i.ya = zext i8 %i.xz to i32
  %i.yb = shl nuw nsw i32 %i.ya, 4
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ar, i64 121
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !9
  %i.ye = zext i8 %i.yd to i32
  %i.yf = or i32 %i.yb, %i.ye                     ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.bs, i64 232
  store i32 %i.yf, ptr %i.yg, align 8, !tbaa !296
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ar, i64 122
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !9
  %i.yj = zext i8 %i.yi to i32
  %i.yk = shl nuw nsw i32 %i.yj, 4
  %i.yl = getelementptr inbounds nuw i8, ptr %i.ar, i64 123
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !9
  %i.yn = zext i8 %i.ym to i32
  %i.yo = or i32 %i.yk, %i.yn                     ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.bs, i64 236
  store i32 %i.yo, ptr %i.yp, align 4, !tbaa !297
  %i.yq = add nuw nsw i32 %i.xw, %i.xn
  %i.yr = add nuw nsw i32 %i.yq, %i.yf
  %i.ys = icmp samesign ugt i32 %i.yr, 103
  %i.yt = icmp samesign ugt i32 %i.yo, 100
  %or.cond = select i1 %i.ys, i1 true, i1 %i.yt
  br i1 %or.cond, label %bb.bj, label %bb.bk

.thread354:                                       ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %.preheader372, %bb.bd
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.675, i32 noundef %i.y) #20
  br label %.loopexit

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.676, i32 noundef %i.y) #20
  br label %.loopexit

bb.bk:                                            ; preds = %bb.bi
  %i.yu = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.yv = load ptr, ptr %i.a, align 16, !tbaa !49
  %i.yw = call ptr @cli_mpool_strdup(ptr noundef %i.yu, ptr noundef %i.yv) #20 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.bs, i64 240
  store ptr %i.yw, ptr %i.yx, align 8, !tbaa !153
  %.not330 = icmp eq ptr %i.yw, null
  br i1 %.not330, label %.loopexit, label %.preheader371

.preheader371:                                    ; preds = %bb.bk
  %i.yy = load i32, ptr %i.u, align 8, !tbaa !42  ; 6 uses
  %.not519 = icmp eq i32 %i.yy, 0
  br i1 %.not519, label %._crit_edge489, label %.lr.ph488

.lr.ph488:                                        ; preds = %.preheader371
  %i.yz = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.za = load ptr, ptr %.0281, align 8, !tbaa !154
  %wide.trip.count = zext i32 %i.yy to i64
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph488, %bb.bm
  %indvars.iv = phi i64 [ 0, %.lr.ph488 ], [ %indvars.iv.next, %bb.bm ] ; 3 uses
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %indvars.iv
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !49
  %i.zd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yz, ptr noundef nonnull dereferenceable(1) %i.zc) #19
  %.not331 = icmp eq i32 %i.zd, 0
  br i1 %.not331, label %._crit_edge489.loopexit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge489.thread, label %bb.bl

._crit_edge489.loopexit:                          ; preds = %bb.bl
  %i.ze = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge489

._crit_edge489:                                   ; preds = %._crit_edge489.loopexit, %.preheader371
  %.6.lcssa = phi i32 [ 0, %.preheader371 ], [ %i.ze, %._crit_edge489.loopexit ] ; 3 uses
  %i.zf = icmp eq i32 %.6.lcssa, %i.yy
  br i1 %i.zf, label %._crit_edge489.thread, label %bb.bp

._crit_edge489.thread:                            ; preds = %bb.bm, %._crit_edge489
  %.6.lcssa630 = phi i32 [ %.6.lcssa, %._crit_edge489 ], [ %i.yy, %bb.bm ]
  %i.zg = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.zh = load ptr, ptr %.0281, align 8, !tbaa !154
  %i.zi = add i32 %i.yy, 1
  %i.zj = zext i32 %i.zi to i64
  %i.zk = shl nuw nsw i64 %i.zj, 3
  %i.zl = call ptr @mpool_realloc(ptr noundef %i.zg, ptr noundef %i.zh, i64 noundef %i.zk) #20 ; 2 uses
  store ptr %i.zl, ptr %.0281, align 8, !tbaa !154
  %.not332 = icmp eq ptr %i.zl, null
  br i1 %.not332, label %.loopexit, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge489.thread
  %i.zm = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.zn = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.zo = call ptr @cli_mpool_strdup(ptr noundef %i.zm, ptr noundef %i.zn) #20 ; 2 uses
  %i.zp = load ptr, ptr %.0281, align 8, !tbaa !154
  %i.zq = zext i32 %i.yy to i64
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.zq
  store ptr %i.zo, ptr %i.zr, align 8, !tbaa !49
  %.not333 = icmp eq ptr %i.zo, null
  br i1 %.not333, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.zs = load i32, ptr %i.u, align 8, !tbaa !42
  %i.zt = add i32 %i.zs, 1
  store i32 %i.zt, ptr %i.u, align 8, !tbaa !42
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge489
  %.6.lcssa629 = phi i32 [ %.6.lcssa630, %bb.bo ], [ %.6.lcssa, %._crit_edge489 ]
  store i32 %.6.lcssa629, ptr %i.bs, align 8, !tbaa !42
  %i.zu = load i32, ptr %i.w, align 4, !tbaa !42  ; 6 uses
  %.not520 = icmp eq i32 %i.zu, 0
  br i1 %.not520, label %._crit_edge498, label %.lr.ph497

.lr.ph497:                                        ; preds = %bb.bp
  %i.zv = load ptr, ptr %i.v, align 16, !tbaa !49
  %i.zw = load ptr, ptr %i.x, align 8, !tbaa !154
  %wide.trip.count594 = zext i32 %i.zu to i64
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph497, %bb.br
  %indvars.iv591 = phi i64 [ 0, %.lr.ph497 ], [ %indvars.iv.next592, %bb.br ] ; 3 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.zw, i64 %indvars.iv591
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !49
  %i.zz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.zv, ptr noundef nonnull dereferenceable(1) %i.zy) #19
  %.not334 = icmp eq i32 %i.zz, 0
  br i1 %.not334, label %._crit_edge498.loopexit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %indvars.iv.next592 = add nuw nsw i64 %indvars.iv591, 1 ; 2 uses
  %exitcond595.not = icmp eq i64 %indvars.iv.next592, %wide.trip.count594
  br i1 %exitcond595.not, label %._crit_edge498.thread, label %bb.bq

._crit_edge498.loopexit:                          ; preds = %bb.bq
  %i.aaa = trunc nuw i64 %indvars.iv591 to i32
  br label %._crit_edge498

._crit_edge498:                                   ; preds = %._crit_edge498.loopexit, %bb.bp
  %.7.lcssa = phi i32 [ 0, %bb.bp ], [ %i.aaa, %._crit_edge498.loopexit ] ; 3 uses
  %i.aab = icmp eq i32 %.7.lcssa, %i.zu
  br i1 %i.aab, label %._crit_edge498.thread, label %bb.bu

._crit_edge498.thread:                            ; preds = %bb.br, %._crit_edge498
  %.7.lcssa633 = phi i32 [ %.7.lcssa, %._crit_edge498 ], [ %i.zu, %bb.br ]
  %i.aac = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.aad = load ptr, ptr %i.x, align 8, !tbaa !154
  %i.aae = add i32 %i.zu, 1
  %i.aaf = zext i32 %i.aae to i64
  %i.aag = shl nuw nsw i64 %i.aaf, 3
  %i.aah = call ptr @mpool_realloc(ptr noundef %i.aac, ptr noundef %i.aad, i64 noundef %i.aag) #20 ; 2 uses
  store ptr %i.aah, ptr %i.x, align 8, !tbaa !154
  %.not335 = icmp eq ptr %i.aah, null
  br i1 %.not335, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge498.thread
  %i.aai = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.aaj = load ptr, ptr %i.v, align 16, !tbaa !49
  %i.aak = call ptr @cli_mpool_strdup(ptr noundef %i.aai, ptr noundef %i.aaj) #20 ; 2 uses
  %i.aal = load ptr, ptr %i.x, align 8, !tbaa !154
  %i.aam = zext i32 %i.zu to i64
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.aal, i64 %i.aam
  store ptr %i.aak, ptr %i.aan, align 8, !tbaa !49
  %.not336 = icmp eq ptr %i.aak, null
  br i1 %.not336, label %.loopexit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.aao = load i32, ptr %i.w, align 4, !tbaa !42
  %i.aap = add i32 %i.aao, 1
  store i32 %i.aap, ptr %i.w, align 4, !tbaa !42
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %._crit_edge498
  %.7.lcssa632 = phi i32 [ %.7.lcssa633, %bb.bt ], [ %.7.lcssa, %._crit_edge498 ]
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %.7.lcssa632, ptr %i.aaq, align 4, !tbaa !42
  %i.aar = load i32, ptr %i.u, align 8, !tbaa !42
  %i.aas = icmp ugt i32 %i.aar, 256
  br i1 %i.aas, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.aat = load i32, ptr %i.w, align 4, !tbaa !42
  %i.aau = icmp ugt i32 %i.aat, 256
  br i1 %i.aau, label %bb.bw, label %.outer

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.677) #20
  br label %.loopexit

.outer:                                           ; preds = %bb.bv
  %i.aav = add i32 %.0285.ph506, 1                ; 2 uses
  %i.aaw = call ptr @cli_dbgets(ptr noundef nonnull %i.b, i32 noundef 8192, ptr noundef %0, ptr noundef %4)
  %.not312467.not = icmp eq ptr %i.aaw, null
  br i1 %.not312467.not, label %.outer._crit_edge, label %.lr.ph

.outer._crit_edge:                                ; preds = %.outer, %.backedge
  %.0285.ph.lcssa466 = phi i32 [ %.0285.ph506, %.backedge ], [ %i.aav, %.outer ] ; 2 uses
  %.not313 = icmp eq i32 %i.y, 0
  br i1 %.not313, label %.outer._crit_edge.thread, label %bb.bx

.outer._crit_edge.thread:                         ; preds = %bb.f, %.outer._crit_edge
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.678) #20
  br label %.loopexit

bb.bx:                                            ; preds = %.outer._crit_edge
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.679, i32 noundef %.0285.ph.lcssa466) #20
  %.not314 = icmp eq ptr %2, null
  br i1 %.not314, label %.loopexit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.aax = load i32, ptr %2, align 4, !tbaa !42
  %i.aay = add i32 %i.aax, %.0285.ph.lcssa466
  store i32 %i.aay, ptr %2, align 4, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge498.thread, %bb.bs, %._crit_edge489.thread, %bb.bn, %bb.bk, %bb.w, %.outer._crit_edge.thread, %bb.by, %bb.bx, %bb.bw, %bb.bj, %.thread354, %.thread351, %.thread348, %.thread345, %.thread342, %.thread, %bb.v, %bb.t, %bb.m, %bb.k
  %.not312386 = phi i1 [ true, %bb.k ], [ true, %bb.m ], [ true, %bb.t ], [ true, %bb.v ], [ true, %.thread ], [ true, %.thread342 ], [ true, %.thread345 ], [ true, %.thread348 ], [ true, %.thread351 ], [ true, %.thread354 ], [ true, %bb.bj ], [ true, %bb.bw ], [ false, %bb.by ], [ false, %bb.bx ], [ false, %.outer._crit_edge.thread ], [ true, %bb.w ], [ true, %bb.bk ], [ true, %bb.bn ], [ true, %._crit_edge489.thread ], [ true, %bb.bs ], [ true, %._crit_edge498.thread ] ; 2 uses
  %.0287 = phi i32 [ 4, %bb.k ], [ 4, %bb.m ], [ 4, %bb.t ], [ 4, %bb.v ], [ 4, %.thread ], [ 4, %.thread342 ], [ 4, %.thread345 ], [ 4, %.thread348 ], [ 4, %.thread351 ], [ 4, %.thread354 ], [ 4, %bb.bj ], [ 4, %bb.bw ], [ 0, %bb.by ], [ 0, %bb.bx ], [ 0, %.outer._crit_edge.thread ], [ 20, %bb.w ], [ 20, %bb.bk ], [ 20, %bb.bn ], [ 20, %._crit_edge489.thread ], [ 20, %bb.bs ], [ 20, %._crit_edge498.thread ] ; 4 uses
  %.not337 = icmp eq ptr %.0279, null
  br i1 %.not337, label %.thread357, label %.split

.split:                                           ; preds = %.loopexit
  call void @free(ptr noundef nonnull %.0279) #20
  br i1 %.not312386, label %.preheader370, label %bb.cd

.thread357:                                       ; preds = %.loopexit
  br i1 %.not312386, label %.preheader370, label %bb.cd

.preheader370:                                    ; preds = %.split, %.thread357.thread637, %.thread357
  %.0287362639 = phi i32 [ 20, %.thread357.thread637 ], [ %.0287, %.thread357 ], [ %.0287, %.split ]
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0281, i64 24 ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.0281, i64 48 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 11 uses
end_hunk_0
