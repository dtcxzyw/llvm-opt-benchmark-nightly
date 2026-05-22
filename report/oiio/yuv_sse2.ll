inline.NumInlined: 103
inline.NumDeleted: 31
begin_hunk_0_@YuvToRgbRow_SSE2:bb.a
  %i.dn = sub <8 x i16> %.neg125, %i.dm
  %i.do = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.cz, <8 x i16> splat (i16 -32486))
  %i.dp = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.do, <8 x i16> %i.dg)
  %i.dq = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.dp, <8 x i16> splat (i16 17685))
  %i.dr = ashr <8 x i16> %i.dj, splat (i16 6)
  %i.ds = ashr <8 x i16> %i.dn, splat (i16 6)
  %i.dt = lshr <8 x i16> %i.dq, splat (i16 6)
  %i.du = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ac, <8 x i16> %i.bh) ; 2 uses
  %i.dv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cm, <8 x i16> %i.dr) ; 2 uses
  %i.dw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ad, <8 x i16> %i.bi) ; 2 uses
  %i.dx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cn, <8 x i16> %i.ds) ; 2 uses
  %i.dy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ae, <8 x i16> %i.bj) ; 2 uses
  %i.dz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.co, <8 x i16> %i.dt) ; 2 uses
  %i.ea = bitcast <16 x i8> %i.du to <8 x i16>
  %i.eb = bitcast <16 x i8> %i.dv to <8 x i16>
  %i.ec = bitcast <16 x i8> %i.du to <8 x i16>
  %i.ed = and <8 x i16> %i.ec, splat (i16 255)
  %i.ee = bitcast <16 x i8> %i.dv to <8 x i16>
  %i.ef = and <8 x i16> %i.ee, splat (i16 255)
  %i.eg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ed, <8 x i16> %i.ef) ; 2 uses
  %i.eh = bitcast <16 x i8> %i.dw to <8 x i16>
  %i.ei = bitcast <16 x i8> %i.dx to <8 x i16>
  %i.ej = bitcast <16 x i8> %i.dw to <8 x i16>
  %i.ek = and <8 x i16> %i.ej, splat (i16 255)
  %i.el = bitcast <16 x i8> %i.dx to <8 x i16>
  %i.em = and <8 x i16> %i.el, splat (i16 255)
  %i.en = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ek, <8 x i16> %i.em) ; 2 uses
  %i.eo = bitcast <16 x i8> %i.dy to <8 x i16>
  %i.ep = bitcast <16 x i8> %i.dz to <8 x i16>
  %i.eq = bitcast <16 x i8> %i.dy to <8 x i16>
  %i.er = and <8 x i16> %i.eq, splat (i16 255)
  %i.es = bitcast <16 x i8> %i.dz to <8 x i16>
  %i.et = and <8 x i16> %i.es, splat (i16 255)
  %i.eu = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.er, <8 x i16> %i.et) ; 2 uses
  %i.ev = lshr <8 x i16> %i.ea, splat (i16 8)
  %i.ew = lshr <8 x i16> %i.eb, splat (i16 8)
  %i.ex = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ev, <8 x i16> %i.ew) ; 2 uses
  %i.ey = lshr <8 x i16> %i.eh, splat (i16 8)
  %i.ez = lshr <8 x i16> %i.ei, splat (i16 8)
  %i.fa = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ey, <8 x i16> %i.ez) ; 2 uses
  %i.fb = lshr <8 x i16> %i.eo, splat (i16 8)
  %i.fc = lshr <8 x i16> %i.ep, splat (i16 8)
  %i.fd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fb, <8 x i16> %i.fc) ; 2 uses
  %i.fe = bitcast <16 x i8> %i.eg to <8 x i16>
  %i.ff = bitcast <16 x i8> %i.eg to <8 x i16>
  %i.fg = and <8 x i16> %i.ff, splat (i16 255)
  %i.fh = bitcast <16 x i8> %i.en to <8 x i16>
  %i.fi = bitcast <16 x i8> %i.en to <8 x i16>
  %i.fj = and <8 x i16> %i.fi, splat (i16 255)
  %i.fk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fg, <8 x i16> %i.fj) ; 2 uses
  %i.fl = bitcast <16 x i8> %i.eu to <8 x i16>
  %i.fm = bitcast <16 x i8> %i.eu to <8 x i16>
  %i.fn = and <8 x i16> %i.fm, splat (i16 255)
  %i.fo = bitcast <16 x i8> %i.ex to <8 x i16>
  %i.fp = bitcast <16 x i8> %i.ex to <8 x i16>
  %i.fq = and <8 x i16> %i.fp, splat (i16 255)
  %i.fr = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fn, <8 x i16> %i.fq) ; 2 uses
  %i.fs = bitcast <16 x i8> %i.fa to <8 x i16>
  %i.ft = bitcast <16 x i8> %i.fa to <8 x i16>
  %i.fu = and <8 x i16> %i.ft, splat (i16 255)
  %i.fv = bitcast <16 x i8> %i.fd to <8 x i16>
  %i.fw = bitcast <16 x i8> %i.fd to <8 x i16>
  %i.fx = and <8 x i16> %i.fw, splat (i16 255)
  %i.fy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fu, <8 x i16> %i.fx) ; 2 uses
  %i.fz = lshr <8 x i16> %i.fe, splat (i16 8)
  %i.ga = lshr <8 x i16> %i.fh, splat (i16 8)
  %i.gb = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fz, <8 x i16> %i.ga) ; 2 uses
  %i.gc = lshr <8 x i16> %i.fl, splat (i16 8)
  %i.gd = lshr <8 x i16> %i.fo, splat (i16 8)
  %i.ge = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gc, <8 x i16> %i.gd) ; 2 uses
  %i.gf = lshr <8 x i16> %i.fs, splat (i16 8)
  %i.gg = lshr <8 x i16> %i.fv, splat (i16 8)
  %i.gh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gf, <8 x i16> %i.gg) ; 2 uses
  %i.gi = bitcast <16 x i8> %i.fk to <8 x i16>
  %i.gj = bitcast <16 x i8> %i.fr to <8 x i16>
  %i.gk = bitcast <16 x i8> %i.fk to <8 x i16>
  %i.gl = and <8 x i16> %i.gk, splat (i16 255)
  %i.gm = bitcast <16 x i8> %i.fr to <8 x i16>
  %i.gn = and <8 x i16> %i.gm, splat (i16 255)
  %i.go = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gl, <8 x i16> %i.gn) ; 2 uses
  %i.gp = bitcast <16 x i8> %i.fy to <8 x i16>
  %i.gq = bitcast <16 x i8> %i.gb to <8 x i16>
  %i.gr = bitcast <16 x i8> %i.fy to <8 x i16>
  %i.gs = and <8 x i16> %i.gr, splat (i16 255)
  %i.gt = bitcast <16 x i8> %i.gb to <8 x i16>
  %i.gu = and <8 x i16> %i.gt, splat (i16 255)
  %i.gv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gs, <8 x i16> %i.gu) ; 2 uses
  %i.gw = bitcast <16 x i8> %i.ge to <8 x i16>
  %i.gx = bitcast <16 x i8> %i.ge to <8 x i16>
  %i.gy = and <8 x i16> %i.gx, splat (i16 255)
  %i.gz = bitcast <16 x i8> %i.gh to <8 x i16>
  %i.ha = bitcast <16 x i8> %i.gh to <8 x i16>
  %i.hb = and <8 x i16> %i.ha, splat (i16 255)
  %i.hc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gy, <8 x i16> %i.hb) ; 2 uses
  %i.hd = lshr <8 x i16> %i.gi, splat (i16 8)
  %i.he = lshr <8 x i16> %i.gj, splat (i16 8)
  %i.hf = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hd, <8 x i16> %i.he) ; 2 uses
  %i.hg = lshr <8 x i16> %i.gp, splat (i16 8)
  %i.hh = lshr <8 x i16> %i.gq, splat (i16 8)
  %i.hi = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hg, <8 x i16> %i.hh) ; 2 uses
  %i.hj = lshr <8 x i16> %i.gw, splat (i16 8)
  %i.hk = lshr <8 x i16> %i.gz, splat (i16 8)
  %i.hl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hj, <8 x i16> %i.hk) ; 2 uses
  %i.hm = bitcast <16 x i8> %i.go to <8 x i16>
  %i.hn = bitcast <16 x i8> %i.go to <8 x i16>
  %i.ho = and <8 x i16> %i.hn, splat (i16 255)
  %i.hp = bitcast <16 x i8> %i.gv to <8 x i16>
  %i.hq = bitcast <16 x i8> %i.gv to <8 x i16>
  %i.hr = and <8 x i16> %i.hq, splat (i16 255)
  %i.hs = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ho, <8 x i16> %i.hr) ; 2 uses
  %i.ht = bitcast <16 x i8> %i.hc to <8 x i16>
  %i.hu = bitcast <16 x i8> %i.hc to <8 x i16>
  %i.hv = and <8 x i16> %i.hu, splat (i16 255)
  %i.hw = bitcast <16 x i8> %i.hf to <8 x i16>
  %i.hx = bitcast <16 x i8> %i.hf to <8 x i16>
  %i.hy = and <8 x i16> %i.hx, splat (i16 255)
  %i.hz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hv, <8 x i16> %i.hy) ; 2 uses
  %i.ia = bitcast <16 x i8> %i.hi to <8 x i16>
  %i.ib = bitcast <16 x i8> %i.hi to <8 x i16>
  %i.ic = and <8 x i16> %i.ib, splat (i16 255)
  %i.id = bitcast <16 x i8> %i.hl to <8 x i16>
  %i.ie = bitcast <16 x i8> %i.hl to <8 x i16>
  %i.if = and <8 x i16> %i.ie, splat (i16 255)
  %i.ig = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ic, <8 x i16> %i.if) ; 2 uses
  %i.ih = lshr <8 x i16> %i.hm, splat (i16 8)
  %i.ii = lshr <8 x i16> %i.hp, splat (i16 8)
  %i.ij = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ih, <8 x i16> %i.ii) ; 2 uses
  %i.ik = lshr <8 x i16> %i.ht, splat (i16 8)
  %i.il = lshr <8 x i16> %i.hw, splat (i16 8)
  %i.im = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ik, <8 x i16> %i.il) ; 2 uses
  %i.in = lshr <8 x i16> %i.ia, splat (i16 8)
  %i.io = lshr <8 x i16> %i.id, splat (i16 8)
  %i.ip = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.in, <8 x i16> %i.io) ; 2 uses
  %i.iq = bitcast <16 x i8> %i.hs to <8 x i16>
  %i.ir = bitcast <16 x i8> %i.hs to <8 x i16>
  %i.is = and <8 x i16> %i.ir, splat (i16 255)
  %i.it = bitcast <16 x i8> %i.hz to <8 x i16>
  %i.iu = bitcast <16 x i8> %i.hz to <8 x i16>
  %i.iv = and <8 x i16> %i.iu, splat (i16 255)
  %i.iw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.is, <8 x i16> %i.iv)
  %i.ix = bitcast <16 x i8> %i.ig to <8 x i16>
  %i.iy = bitcast <16 x i8> %i.ig to <8 x i16>
  %i.iz = and <8 x i16> %i.iy, splat (i16 255)
  %i.ja = bitcast <16 x i8> %i.ij to <8 x i16>
  %i.jb = bitcast <16 x i8> %i.ij to <8 x i16>
  %i.jc = and <8 x i16> %i.jb, splat (i16 255)
  %i.jd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.iz, <8 x i16> %i.jc)
  %i.je = bitcast <16 x i8> %i.im to <8 x i16>
  %i.jf = bitcast <16 x i8> %i.im to <8 x i16>
  %i.jg = and <8 x i16> %i.jf, splat (i16 255)
  %i.jh = bitcast <16 x i8> %i.ip to <8 x i16>
  %i.ji = bitcast <16 x i8> %i.ip to <8 x i16>
  %i.jj = and <8 x i16> %i.ji, splat (i16 255)
  %i.jk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.jg, <8 x i16> %i.jj)
  %i.jl = lshr <8 x i16> %i.iq, splat (i16 8)
  %i.jm = lshr <8 x i16> %i.it, splat (i16 8)
  %i.jn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.jl, <8 x i16> %i.jm)
  %i.jo = lshr <8 x i16> %i.ix, splat (i16 8)
  %i.jp = lshr <8 x i16> %i.ja, splat (i16 8)
  %i.jq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.jo, <8 x i16> %i.jp)
  %i.jr = lshr <8 x i16> %i.je, splat (i16 8)
  %i.js = lshr <8 x i16> %i.jh, splat (i16 8)
  %i.jt = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.jr, <8 x i16> %i.js)
  store <16 x i8> %i.iw, ptr %.034132, align 1, !tbaa !7, !alias.scope !37
  %i.ju = getelementptr inbounds nuw i8, ptr %.034132, i64 16
  store <16 x i8> %i.jd, ptr %i.ju, align 1, !tbaa !7, !alias.scope !37
  %i.jv = getelementptr inbounds nuw i8, ptr %.034132, i64 32
  store <16 x i8> %i.jk, ptr %i.jv, align 1, !tbaa !7, !alias.scope !37
  %i.jw = getelementptr inbounds nuw i8, ptr %.034132, i64 48
  store <16 x i8> %i.jn, ptr %i.jw, align 1, !tbaa !7, !alias.scope !37
  %i.jx = getelementptr inbounds nuw i8, ptr %.034132, i64 64
  store <16 x i8> %i.jq, ptr %i.jx, align 1, !tbaa !7, !alias.scope !37
  %i.jy = getelementptr inbounds nuw i8, ptr %.034132, i64 80
  store <16 x i8> %i.jt, ptr %i.jy, align 1, !tbaa !7, !alias.scope !37
  %i.jz = getelementptr inbounds nuw i8, ptr %.032133, i64 32 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.038130, i64 16 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.036131, i64 16 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.034132, i64 96 ; 2 uses
  %i.kd = add nuw nsw i32 %i.c, 32                ; 2 uses
  %.not = icmp sgt i32 %i.kd, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !40

.lr.ph143:                                        ; preds = %.preheader, %.lr.ph143
  %.1142 = phi i32 [ %i.ly, %.lr.ph143 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.133141 = phi ptr [ %i.lt, %.lr.ph143 ], [ %.032.lcssa, %.preheader ] ; 2 uses
  %.135140 = phi ptr [ %i.ls, %.lr.ph143 ], [ %.034.lcssa, %.preheader ] ; 4 uses
  %.137139 = phi ptr [ %i.lx, %.lr.ph143 ], [ %.036.lcssa, %.preheader ] ; 2 uses
  %.139138 = phi ptr [ %i.lw, %.lr.ph143 ], [ %.038.lcssa, %.preheader ] ; 2 uses
  %i.ke = load i8, ptr %.133141, align 1, !tbaa !7
  %i.kf = zext i8 %i.ke to i32
  %i.kg = load i8, ptr %.139138, align 1, !tbaa !7
  %i.kh = zext i8 %i.kg to i32                    ; 2 uses
  %i.ki = load i8, ptr %.137139, align 1, !tbaa !7
  %i.kj = zext i8 %i.ki to i32                    ; 2 uses
  %i.kk = mul nuw nsw i32 %i.kf, 19077
  %i.kl = lshr i32 %i.kk, 8                       ; 3 uses
  %i.km = mul nuw nsw i32 %i.kj, 26149
  %i.kn = lshr i32 %i.km, 8
  %i.ko = add nuw nsw i32 %i.kn, %i.kl            ; 2 uses
  %i.kp = add nsw i32 %i.ko, -14234               ; 2 uses
  %5 = icmp ult i32 %i.kp, 16384
  %i.kq = lshr i32 %i.kp, 6
  %i.kr = icmp samesign ult i32 %i.ko, 14234
  %i.ks = select i1 %i.kr, i32 0, i32 255
  %i.kt = select i1 %5, i32 %i.kq, i32 %i.ks
  %i.ku = trunc i32 %i.kt to i8
  store i8 %i.ku, ptr %.135140, align 1, !tbaa !7
  %i.kv = mul nuw nsw i32 %i.kh, 6419
  %i.kw = lshr i32 %i.kv, 8
  %i.kx = mul nuw nsw i32 %i.kj, 13320
  %i.ky = lshr i32 %i.kx, 8
  %i.kz = add nuw nsw i32 %i.kw, %i.ky
  %i.la = sub nsw i32 %i.kl, %i.kz                ; 2 uses
  %i.lb = add nsw i32 %i.la, 8708                 ; 2 uses
  %6 = icmp ult i32 %i.lb, 16384
  %i.lc = lshr i32 %i.lb, 6
  %i.ld = icmp slt i32 %i.la, -8708
  %i.le = select i1 %i.ld, i32 0, i32 255
  %i.lf = select i1 %6, i32 %i.lc, i32 %i.le
  %i.lg = trunc i32 %i.lf to i8
  %i.lh = getelementptr inbounds nuw i8, ptr %.135140, i64 1
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !7
  %i.li = mul nuw nsw i32 %i.kh, 33050
  %i.lj = lshr i32 %i.li, 8
  %i.lk = add nuw nsw i32 %i.lj, %i.kl            ; 2 uses
  %i.ll = add nsw i32 %i.lk, -17685               ; 2 uses
  %7 = icmp ult i32 %i.ll, 16384
  %i.lm = lshr i32 %i.ll, 6
  %i.ln = icmp samesign ult i32 %i.lk, 17685
  %i.lo = select i1 %i.ln, i32 0, i32 255
  %i.lp = select i1 %7, i32 %i.lm, i32 %i.lo
  %i.lq = trunc i32 %i.lp to i8
  %i.lr = getelementptr inbounds nuw i8, ptr %.135140, i64 2
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !7
  %i.ls = getelementptr inbounds nuw i8, ptr %.135140, i64 3
  %i.lt = getelementptr inbounds nuw i8, ptr %.133141, i64 1
  %i.lu = and i32 %.1142, 1
  %i.lv = zext nneg i32 %i.lu to i64              ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.139138, i64 %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %.137139, i64 %i.lv
  %i.ly = add nuw nsw i32 %.1142, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ly, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph143, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph143, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToRgbaRow_SSE2(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef writeonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %.not49 = icmp slt i32 %4, 8
  br i1 %.not49, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.a = and i32 %4, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.029.lcssa = phi ptr [ %1, %bb.a ], [ %i.ap, %.preheader.loopexit ]
  %.027.lcssa = phi ptr [ %2, %bb.a ], [ %i.aq, %.preheader.loopexit ]
  %.025.lcssa = phi ptr [ %3, %bb.a ], [ %i.ar, %.preheader.loopexit ]
  %.023.lcssa = phi ptr [ %0, %bb.a ], [ %i.ao, %.preheader.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.a, %.preheader.loopexit ] ; 2 uses
  %i.b = icmp slt i32 %.0.lcssa, %4
  br i1 %i.b, label %.lr.ph63, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i32 [ %i.as, %.lr.ph ], [ 8, %bb.a ]
  %.02353 = phi ptr [ %i.ao, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.02552 = phi ptr [ %i.ar, %.lr.ph ], [ %3, %bb.a ] ; 3 uses
  %.02751 = phi ptr [ %i.aq, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02950 = phi ptr [ %i.ap, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.023.val = load i64, ptr %.02353, align 1, !tbaa !7
  %.029.val = load i32, ptr %.02950, align 1
  %.027.val = load i32, ptr %.02751, align 1
  %i.d = insertelement <2 x i64> poison, i64 %.023.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %i.f = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.g = insertelement <4 x i32> poison, i32 %.029.val, i64 0
  %i.h = bitcast <4 x i32> %i.g to <16 x i8>
  %i.i = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.h, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.j = bitcast <16 x i8> %i.i to <8 x i16>
  %i.k = shufflevector <8 x i16> %i.j, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.l = insertelement <4 x i32> poison, i32 %.027.val, i64 0
  %i.m = bitcast <4 x i32> %i.l to <16 x i8>
  %i.n = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.m, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.o = bitcast <16 x i8> %i.n to <8 x i16>
  %i.p = shufflevector <8 x i16> %i.o, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.q = bitcast <16 x i8> %i.f to <8 x i16>
  %i.r = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.q, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.s = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.p, <8 x i16> splat (i16 26149))
  %i.t = add nsw <8 x i16> %i.r, splat (i16 -14234)
  %i.u = add <8 x i16> %i.t, %i.s
  %i.v = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.k, <8 x i16> splat (i16 6419))
  %i.w = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.p, <8 x i16> splat (i16 13320))
  %.neg45 = add nuw <8 x i16> %i.r, splat (i16 8708)
  %i.x = add nuw nsw <8 x i16> %i.v, %i.w
  %i.y = sub <8 x i16> %.neg45, %i.x
  %i.z = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.k, <8 x i16> splat (i16 -32486))
  %i.aa = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.z, <8 x i16> %i.r)
  %i.ab = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.aa, <8 x i16> splat (i16 17685))
  %i.ac = ashr <8 x i16> %i.u, splat (i16 6)
  %i.ad = ashr <8 x i16> %i.y, splat (i16 6)
  %i.ae = lshr <8 x i16> %i.ab, splat (i16 6)
  %i.af = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ac, <8 x i16> %i.ae) ; 2 uses
  %i.ag = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ad, <8 x i16> splat (i16 255)) ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.af, <16 x i8> %i.ag, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ai = shufflevector <16 x i8> %i.af, <16 x i8> %i.ag, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aj = bitcast <16 x i8> %i.ah to <8 x i16>    ; 2 uses
  %i.ak = bitcast <16 x i8> %i.ai to <8 x i16>    ; 2 uses
  %i.al = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.am = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.al, ptr %.02552, align 1, !tbaa !7, !alias.scope !42
  %i.an = getelementptr inbounds nuw i8, ptr %.02552, i64 16
  store <8 x i16> %i.am, ptr %i.an, align 1, !tbaa !7, !alias.scope !42
  %i.ao = getelementptr inbounds nuw i8, ptr %.02353, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02950, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02751, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02552, i64 32 ; 2 uses
  %i.as = add nuw nsw i32 %i.c, 8                 ; 2 uses
  %.not = icmp sgt i32 %i.as, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !45

.lr.ph63:                                         ; preds = %.preheader, %.lr.ph63
  %.162 = phi i32 [ %i.co, %.lr.ph63 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.12461 = phi ptr [ %i.cj, %.lr.ph63 ], [ %.023.lcssa, %.preheader ] ; 2 uses
  %.12660 = phi ptr [ %i.ci, %.lr.ph63 ], [ %.025.lcssa, %.preheader ] ; 5 uses
  %.12859 = phi ptr [ %i.cn, %.lr.ph63 ], [ %.027.lcssa, %.preheader ] ; 2 uses
  %.13058 = phi ptr [ %i.cm, %.lr.ph63 ], [ %.029.lcssa, %.preheader ] ; 2 uses
  %i.at = load i8, ptr %.12461, align 1, !tbaa !7
  %i.au = load i8, ptr %.13058, align 1, !tbaa !7
  %i.av = load i8, ptr %.12859, align 1, !tbaa !7
  %i.aw = zext i8 %i.at to i32
  %i.ax = zext i8 %i.au to i32                    ; 2 uses
  %i.ay = zext i8 %i.av to i32                    ; 2 uses
  %i.az = mul nuw nsw i32 %i.aw, 19077
  %i.ba = lshr i32 %i.az, 8                       ; 3 uses
  %i.bb = mul nuw nsw i32 %i.ay, 26149
  %i.bc = lshr i32 %i.bb, 8
  %i.bd = add nuw nsw i32 %i.bc, %i.ba            ; 2 uses
  %i.be = add nsw i32 %i.bd, -14234               ; 2 uses
  %5 = icmp ult i32 %i.be, 16384
  %i.bf = lshr i32 %i.be, 6
  %i.bg = icmp samesign ult i32 %i.bd, 14234
  %i.bh = select i1 %i.bg, i32 0, i32 255
  %i.bi = select i1 %5, i32 %i.bf, i32 %i.bh
  %i.bj = trunc i32 %i.bi to i8
  store i8 %i.bj, ptr %.12660, align 1, !tbaa !7
  %i.bk = mul nuw nsw i32 %i.ax, 6419
  %i.bl = lshr i32 %i.bk, 8
  %i.bm = mul nuw nsw i32 %i.ay, 13320
  %i.bn = lshr i32 %i.bm, 8
  %i.bo = add nuw nsw i32 %i.bl, %i.bn
  %i.bp = sub nsw i32 %i.ba, %i.bo                ; 2 uses
  %i.bq = add nsw i32 %i.bp, 8708                 ; 2 uses
  %6 = icmp ult i32 %i.bq, 16384
  %i.br = lshr i32 %i.bq, 6
  %i.bs = icmp slt i32 %i.bp, -8708
  %i.bt = select i1 %i.bs, i32 0, i32 255
  %i.bu = select i1 %6, i32 %i.br, i32 %i.bt
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %.12660, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !7
  %i.bx = mul nuw nsw i32 %i.ax, 33050
  %i.by = lshr i32 %i.bx, 8
  %i.bz = add nuw nsw i32 %i.by, %i.ba            ; 2 uses
  %i.ca = add nsw i32 %i.bz, -17685               ; 2 uses
  %7 = icmp ult i32 %i.ca, 16384
  %i.cb = lshr i32 %i.ca, 6
  %i.cc = icmp samesign ult i32 %i.bz, 17685
  %i.cd = select i1 %i.cc, i32 0, i32 255
  %i.ce = select i1 %7, i32 %i.cb, i32 %i.cd
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.12660, i64 2
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.12660, i64 3
  store i8 -1, ptr %i.ch, align 1, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.12660, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.12461, i64 1
  %i.ck = and i32 %.162, 1
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.13058, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.12859, i64 %i.cl
  %i.co = add nuw nsw i32 %.162, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph63, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph63, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToBgrRow_SSE2(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef writeonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %.not129 = icmp slt i32 %4, 32
  br i1 %.not129, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.a = and i32 %4, 2147483616
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.038.lcssa = phi ptr [ %1, %bb.a ], [ %i.ka, %.preheader.loopexit ]
  %.036.lcssa = phi ptr [ %2, %bb.a ], [ %i.kb, %.preheader.loopexit ]
  %.034.lcssa = phi ptr [ %3, %bb.a ], [ %i.kc, %.preheader.loopexit ]
  %.032.lcssa = phi ptr [ %0, %bb.a ], [ %i.jz, %.preheader.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.a, %.preheader.loopexit ] ; 2 uses
  %i.b = icmp slt i32 %.0.lcssa, %4
  br i1 %i.b, label %.lr.ph143, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i32 [ %i.kd, %.lr.ph ], [ 32, %bb.a ]
  %.032133 = phi ptr [ %i.jz, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.034132 = phi ptr [ %i.kc, %.lr.ph ], [ %3, %bb.a ] ; 7 uses
  %.036131 = phi ptr [ %i.kb, %.lr.ph ], [ %2, %bb.a ] ; 5 uses
  %.038130 = phi ptr [ %i.ka, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.032.val = load i64, ptr %.032133, align 1, !tbaa !7
  %.038.val = load i32, ptr %.038130, align 1
  %.036.val = load i32, ptr %.036131, align 1
  %i.d = insertelement <2 x i64> poison, i64 %.032.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %i.f = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.g = insertelement <4 x i32> poison, i32 %.038.val, i64 0
  %i.h = bitcast <4 x i32> %i.g to <16 x i8>
  %i.i = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.h, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.j = bitcast <16 x i8> %i.i to <8 x i16>
  %i.k = shufflevector <8 x i16> %i.j, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.l = insertelement <4 x i32> poison, i32 %.036.val, i64 0
  %i.m = bitcast <4 x i32> %i.l to <16 x i8>
  %i.n = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.m, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.o = bitcast <16 x i8> %i.n to <8 x i16>
  %i.p = shufflevector <8 x i16> %i.o, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.q = bitcast <16 x i8> %i.f to <8 x i16>
  %i.r = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.q, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.s = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.p, <8 x i16> splat (i16 26149))
  %i.t = add nsw <8 x i16> %i.r, splat (i16 -14234)
  %i.u = add <8 x i16> %i.t, %i.s
  %i.v = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.k, <8 x i16> splat (i16 6419))
  %i.w = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.p, <8 x i16> splat (i16 13320))
  %.neg116 = add nuw <8 x i16> %i.r, splat (i16 8708)
  %i.x = add nuw nsw <8 x i16> %i.v, %i.w
  %i.y = sub <8 x i16> %.neg116, %i.x
  %i.z = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.k, <8 x i16> splat (i16 -32486))
  %i.aa = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.z, <8 x i16> %i.r)
  %i.ab = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.aa, <8 x i16> splat (i16 17685))
  %i.ac = ashr <8 x i16> %i.u, splat (i16 6)
  %i.ad = ashr <8 x i16> %i.y, splat (i16 6)
  %i.ae = lshr <8 x i16> %i.ab, splat (i16 6)
  %i.af = getelementptr inbounds nuw i8, ptr %.032133, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.038130, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.036131, i64 4
  %.val46 = load i64, ptr %i.af, align 1, !tbaa !7
  %.val47 = load i32, ptr %i.ag, align 1
  %.val48 = load i32, ptr %i.ah, align 1
  %i.ai = insertelement <2 x i64> poison, i64 %.val46, i64 0
  %i.aj = bitcast <2 x i64> %i.ai to <16 x i8>
  %i.ak = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.aj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.al = insertelement <4 x i32> poison, i32 %.val47, i64 0
  %i.am = bitcast <4 x i32> %i.al to <16 x i8>
  %i.an = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.am, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ao = bitcast <16 x i8> %i.an to <8 x i16>
  %i.ap = shufflevector <8 x i16> %i.ao, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.aq = insertelement <4 x i32> poison, i32 %.val48, i64 0
  %i.ar = bitcast <4 x i32> %i.aq to <16 x i8>
  %i.as = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ar, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.at = bitcast <16 x i8> %i.as to <8 x i16>
  %i.au = shufflevector <8 x i16> %i.at, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.av = bitcast <16 x i8> %i.ak to <8 x i16>
  %i.aw = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.av, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.ax = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.au, <8 x i16> splat (i16 26149))
  %i.ay = add nsw <8 x i16> %i.aw, splat (i16 -14234)
  %i.az = add <8 x i16> %i.ay, %i.ax
  %i.ba = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.ap, <8 x i16> splat (i16 6419))
  %i.bb = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.au, <8 x i16> splat (i16 13320))
  %.neg119 = add nuw <8 x i16> %i.aw, splat (i16 8708)
  %i.bc = add nuw nsw <8 x i16> %i.ba, %i.bb
  %i.bd = sub <8 x i16> %.neg119, %i.bc
  %i.be = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.ap, <8 x i16> splat (i16 -32486))
  %i.bf = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.be, <8 x i16> %i.aw)
  %i.bg = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.bf, <8 x i16> splat (i16 17685))
  %i.bh = ashr <8 x i16> %i.az, splat (i16 6)
  %i.bi = ashr <8 x i16> %i.bd, splat (i16 6)
  %i.bj = lshr <8 x i16> %i.bg, splat (i16 6)
  %i.bk = getelementptr inbounds nuw i8, ptr %.032133, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %.038130, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.036131, i64 8
  %.val43 = load i64, ptr %i.bk, align 1, !tbaa !7
  %.val44 = load i32, ptr %i.bl, align 1
  %.val45 = load i32, ptr %i.bm, align 1
  %i.bn = insertelement <2 x i64> poison, i64 %.val43, i64 0
  %i.bo = bitcast <2 x i64> %i.bn to <16 x i8>
  %i.bp = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bq = insertelement <4 x i32> poison, i32 %.val44, i64 0
  %i.br = bitcast <4 x i32> %i.bq to <16 x i8>
  %i.bs = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.br, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bt = bitcast <16 x i8> %i.bs to <8 x i16>
  %i.bu = shufflevector <8 x i16> %i.bt, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.bv = insertelement <4 x i32> poison, i32 %.val45, i64 0
  %i.bw = bitcast <4 x i32> %i.bv to <16 x i8>
  %i.bx = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.by = bitcast <16 x i8> %i.bx to <8 x i16>
  %i.bz = shufflevector <8 x i16> %i.by, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ca = bitcast <16 x i8> %i.bp to <8 x i16>
  %i.cb = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.ca, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.cc = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.bz, <8 x i16> splat (i16 26149))
  %i.cd = add nsw <8 x i16> %i.cb, splat (i16 -14234)
  %i.ce = add <8 x i16> %i.cd, %i.cc
  %i.cf = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.bu, <8 x i16> splat (i16 6419))
  %i.cg = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.bz, <8 x i16> splat (i16 13320))
  %.neg122 = add nuw <8 x i16> %i.cb, splat (i16 8708)
  %i.ch = add nuw nsw <8 x i16> %i.cf, %i.cg
  %i.ci = sub <8 x i16> %.neg122, %i.ch
  %i.cj = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.bu, <8 x i16> splat (i16 -32486))
  %i.ck = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.cj, <8 x i16> %i.cb)
  %i.cl = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.ck, <8 x i16> splat (i16 17685))
  %i.cm = ashr <8 x i16> %i.ce, splat (i16 6)
  %i.cn = ashr <8 x i16> %i.ci, splat (i16 6)
  %i.co = lshr <8 x i16> %i.cl, splat (i16 6)
  %i.cp = getelementptr inbounds nuw i8, ptr %.032133, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %.038130, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %.036131, i64 12
  %.val = load i64, ptr %i.cp, align 1, !tbaa !7
  %.val41 = load i32, ptr %i.cq, align 1
  %.val42 = load i32, ptr %i.cr, align 1
  %i.cs = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.ct = bitcast <2 x i64> %i.cs to <16 x i8>
  %i.cu = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ct, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cv = insertelement <4 x i32> poison, i32 %.val41, i64 0
  %i.cw = bitcast <4 x i32> %i.cv to <16 x i8>
  %i.cx = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.cw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cy = bitcast <16 x i8> %i.cx to <8 x i16>
  %i.cz = shufflevector <8 x i16> %i.cy, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.da = insertelement <4 x i32> poison, i32 %.val42, i64 0
  %i.db = bitcast <4 x i32> %i.da to <16 x i8>
  %i.dc = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.db, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dd = bitcast <16 x i8> %i.dc to <8 x i16>
  %i.de = shufflevector <8 x i16> %i.dd, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.df = bitcast <16 x i8> %i.cu to <8 x i16>
  %i.dg = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.df, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.dh = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.de, <8 x i16> splat (i16 26149))
  %i.di = add nsw <8 x i16> %i.dg, splat (i16 -14234)
  %i.dj = add <8 x i16> %i.di, %i.dh
  %i.dk = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.cz, <8 x i16> splat (i16 6419))
  %i.dl = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.de, <8 x i16> splat (i16 13320))
  %.neg125 = add nuw <8 x i16> %i.dg, splat (i16 8708)
  %i.dm = add nuw nsw <8 x i16> %i.dk, %i.dl
  %i.dn = sub <8 x i16> %.neg125, %i.dm
  %i.do = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.cz, <8 x i16> splat (i16 -32486))
  %i.dp = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.do, <8 x i16> %i.dg)
  %i.dq = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.dp, <8 x i16> splat (i16 17685))
  %i.dr = ashr <8 x i16> %i.dj, splat (i16 6)
  %i.ds = ashr <8 x i16> %i.dn, splat (i16 6)
  %i.dt = lshr <8 x i16> %i.dq, splat (i16 6)
  %i.du = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ae, <8 x i16> %i.bj) ; 2 uses
  %i.dv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.co, <8 x i16> %i.dt) ; 2 uses
  %i.dw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ad, <8 x i16> %i.bi) ; 2 uses
  %i.dx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cn, <8 x i16> %i.ds) ; 2 uses
  %i.dy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ac, <8 x i16> %i.bh) ; 2 uses
  %i.dz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cm, <8 x i16> %i.dr) ; 2 uses
  %i.ea = bitcast <16 x i8> %i.du to <8 x i16>
  %i.eb = bitcast <16 x i8> %i.dv to <8 x i16>
  %i.ec = bitcast <16 x i8> %i.du to <8 x i16>
  %i.ed = and <8 x i16> %i.ec, splat (i16 255)
  %i.ee = bitcast <16 x i8> %i.dv to <8 x i16>
  %i.ef = and <8 x i16> %i.ee, splat (i16 255)
  %i.eg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ed, <8 x i16> %i.ef) ; 2 uses
  %i.eh = bitcast <16 x i8> %i.dw to <8 x i16>
  %i.ei = bitcast <16 x i8> %i.dx to <8 x i16>
  %i.ej = bitcast <16 x i8> %i.dw to <8 x i16>
  %i.ek = and <8 x i16> %i.ej, splat (i16 255)
  %i.el = bitcast <16 x i8> %i.dx to <8 x i16>
  %i.em = and <8 x i16> %i.el, splat (i16 255)
  %i.en = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ek, <8 x i16> %i.em) ; 2 uses
  %i.eo = bitcast <16 x i8> %i.dy to <8 x i16>
  %i.ep = bitcast <16 x i8> %i.dz to <8 x i16>
  %i.eq = bitcast <16 x i8> %i.dy to <8 x i16>
  %i.er = and <8 x i16> %i.eq, splat (i16 255)
  %i.es = bitcast <16 x i8> %i.dz to <8 x i16>
  %i.et = and <8 x i16> %i.es, splat (i16 255)
  %i.eu = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.er, <8 x i16> %i.et) ; 2 uses
  %i.ev = lshr <8 x i16> %i.ea, splat (i16 8)
  %i.ew = lshr <8 x i16> %i.eb, splat (i16 8)
  %i.ex = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ev, <8 x i16> %i.ew) ; 2 uses
  %i.ey = lshr <8 x i16> %i.eh, splat (i16 8)
  %i.ez = lshr <8 x i16> %i.ei, splat (i16 8)
  %i.fa = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ey, <8 x i16> %i.ez) ; 2 uses
  %i.fb = lshr <8 x i16> %i.eo, splat (i16 8)
  %i.fc = lshr <8 x i16> %i.ep, splat (i16 8)
  %i.fd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fb, <8 x i16> %i.fc) ; 2 uses
  %i.fe = bitcast <16 x i8> %i.eg to <8 x i16>
  %i.ff = bitcast <16 x i8> %i.eg to <8 x i16>
  %i.fg = and <8 x i16> %i.ff, splat (i16 255)
  %i.fh = bitcast <16 x i8> %i.en to <8 x i16>
  %i.fi = bitcast <16 x i8> %i.en to <8 x i16>
  %i.fj = and <8 x i16> %i.fi, splat (i16 255)
  %i.fk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fg, <8 x i16> %i.fj) ; 2 uses
  %i.fl = bitcast <16 x i8> %i.eu to <8 x i16>
  %i.fm = bitcast <16 x i8> %i.eu to <8 x i16>
  %i.fn = and <8 x i16> %i.fm, splat (i16 255)
  %i.fo = bitcast <16 x i8> %i.ex to <8 x i16>
  %i.fp = bitcast <16 x i8> %i.ex to <8 x i16>
  %i.fq = and <8 x i16> %i.fp, splat (i16 255)
  %i.fr = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fn, <8 x i16> %i.fq) ; 2 uses
  %i.fs = bitcast <16 x i8> %i.fa to <8 x i16>
  %i.ft = bitcast <16 x i8> %i.fa to <8 x i16>
  %i.fu = and <8 x i16> %i.ft, splat (i16 255)
  %i.fv = bitcast <16 x i8> %i.fd to <8 x i16>
  %i.fw = bitcast <16 x i8> %i.fd to <8 x i16>
  %i.fx = and <8 x i16> %i.fw, splat (i16 255)
  %i.fy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fu, <8 x i16> %i.fx) ; 2 uses
  %i.fz = lshr <8 x i16> %i.fe, splat (i16 8)
  %i.ga = lshr <8 x i16> %i.fh, splat (i16 8)
  %i.gb = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fz, <8 x i16> %i.ga) ; 2 uses
  %i.gc = lshr <8 x i16> %i.fl, splat (i16 8)
  %i.gd = lshr <8 x i16> %i.fo, splat (i16 8)
  %i.ge = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gc, <8 x i16> %i.gd) ; 2 uses
  %i.gf = lshr <8 x i16> %i.fs, splat (i16 8)
  %i.gg = lshr <8 x i16> %i.fv, splat (i16 8)
  %i.gh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gf, <8 x i16> %i.gg) ; 2 uses
  %i.gi = bitcast <16 x i8> %i.fk to <8 x i16>
  %i.gj = bitcast <16 x i8> %i.fr to <8 x i16>
  %i.gk = bitcast <16 x i8> %i.fk to <8 x i16>
  %i.gl = and <8 x i16> %i.gk, splat (i16 255)
  %i.gm = bitcast <16 x i8> %i.fr to <8 x i16>
  %i.gn = and <8 x i16> %i.gm, splat (i16 255)
  %i.go = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gl, <8 x i16> %i.gn) ; 2 uses
  %i.gp = bitcast <16 x i8> %i.fy to <8 x i16>
  %i.gq = bitcast <16 x i8> %i.gb to <8 x i16>
  %i.gr = bitcast <16 x i8> %i.fy to <8 x i16>
  %i.gs = and <8 x i16> %i.gr, splat (i16 255)
  %i.gt = bitcast <16 x i8> %i.gb to <8 x i16>
  %i.gu = and <8 x i16> %i.gt, splat (i16 255)
  %i.gv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gs, <8 x i16> %i.gu) ; 2 uses
  %i.gw = bitcast <16 x i8> %i.ge to <8 x i16>
  %i.gx = bitcast <16 x i8> %i.ge to <8 x i16>
  %i.gy = and <8 x i16> %i.gx, splat (i16 255)
  %i.gz = bitcast <16 x i8> %i.gh to <8 x i16>
  %i.ha = bitcast <16 x i8> %i.gh to <8 x i16>
  %i.hb = and <8 x i16> %i.ha, splat (i16 255)
  %i.hc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gy, <8 x i16> %i.hb) ; 2 uses
  %i.hd = lshr <8 x i16> %i.gi, splat (i16 8)
  %i.he = lshr <8 x i16> %i.gj, splat (i16 8)
  %i.hf = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hd, <8 x i16> %i.he) ; 2 uses
  %i.hg = lshr <8 x i16> %i.gp, splat (i16 8)
  %i.hh = lshr <8 x i16> %i.gq, splat (i16 8)
  %i.hi = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hg, <8 x i16> %i.hh) ; 2 uses
  %i.hj = lshr <8 x i16> %i.gw, splat (i16 8)
  %i.hk = lshr <8 x i16> %i.gz, splat (i16 8)
  %i.hl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hj, <8 x i16> %i.hk) ; 2 uses
  %i.hm = bitcast <16 x i8> %i.go to <8 x i16>
  %i.hn = bitcast <16 x i8> %i.go to <8 x i16>
  %i.ho = and <8 x i16> %i.hn, splat (i16 255)
  %i.hp = bitcast <16 x i8> %i.gv to <8 x i16>
  %i.hq = bitcast <16 x i8> %i.gv to <8 x i16>
  %i.hr = and <8 x i16> %i.hq, splat (i16 255)
  %i.hs = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ho, <8 x i16> %i.hr) ; 2 uses
  %i.ht = bitcast <16 x i8> %i.hc to <8 x i16>
  %i.hu = bitcast <16 x i8> %i.hc to <8 x i16>
  %i.hv = and <8 x i16> %i.hu, splat (i16 255)
  %i.hw = bitcast <16 x i8> %i.hf to <8 x i16>
  %i.hx = bitcast <16 x i8> %i.hf to <8 x i16>
  %i.hy = and <8 x i16> %i.hx, splat (i16 255)
  %i.hz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hv, <8 x i16> %i.hy) ; 2 uses
  %i.ia = bitcast <16 x i8> %i.hi to <8 x i16>
  %i.ib = bitcast <16 x i8> %i.hi to <8 x i16>
  %i.ic = and <8 x i16> %i.ib, splat (i16 255)
  %i.id = bitcast <16 x i8> %i.hl to <8 x i16>
  %i.ie = bitcast <16 x i8> %i.hl to <8 x i16>
  %i.if = and <8 x i16> %i.ie, splat (i16 255)
  %i.ig = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ic, <8 x i16> %i.if) ; 2 uses
  %i.ih = lshr <8 x i16> %i.hm, splat (i16 8)
  %i.ii = lshr <8 x i16> %i.hp, splat (i16 8)
  %i.ij = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ih, <8 x i16> %i.ii) ; 2 uses
  %i.ik = lshr <8 x i16> %i.ht, splat (i16 8)
  %i.il = lshr <8 x i16> %i.hw, splat (i16 8)
  %i.im = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ik, <8 x i16> %i.il) ; 2 uses
  %i.in = lshr <8 x i16> %i.ia, splat (i16 8)
  %i.io = lshr <8 x i16> %i.id, splat (i16 8)
  %i.ip = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.in, <8 x i16> %i.io) ; 2 uses
  %i.iq = bitcast <16 x i8> %i.hs to <8 x i16>
  %i.ir = bitcast <16 x i8> %i.hs to <8 x i16>
  %i.is = and <8 x i16> %i.ir, splat (i16 255)
  %i.it = bitcast <16 x i8> %i.hz to <8 x i16>
  %i.iu = bitcast <16 x i8> %i.hz to <8 x i16>
  %i.iv = and <8 x i16> %i.iu, splat (i16 255)
  %i.iw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.is, <8 x i16> %i.iv)
  %i.ix = bitcast <16 x i8> %i.ig to <8 x i16>
  %i.iy = bitcast <16 x i8> %i.ig to <8 x i16>
  %i.iz = and <8 x i16> %i.iy, splat (i16 255)
  %i.ja = bitcast <16 x i8> %i.ij to <8 x i16>
  %i.jb = bitcast <16 x i8> %i.ij to <8 x i16>
  %i.jc = and <8 x i16> %i.jb, splat (i16 255)
  %i.jd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.iz, <8 x i16> %i.jc)
  %i.je = bitcast <16 x i8> %i.im to <8 x i16>
  %i.jf = bitcast <16 x i8> %i.im to <8 x i16>
  %i.jg = and <8 x i16> %i.jf, splat (i16 255)
  %i.jh = bitcast <16 x i8> %i.ip to <8 x i16>
  %i.ji = bitcast <16 x i8> %i.ip to <8 x i16>
  %i.jj = and <8 x i16> %i.ji, splat (i16 255)
  %i.jk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.jg, <8 x i16> %i.jj)
  %i.jl = lshr <8 x i16> %i.iq, splat (i16 8)
  %i.jm = lshr <8 x i16> %i.it, splat (i16 8)
  %i.jn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.jl, <8 x i16> %i.jm)
  %i.jo = lshr <8 x i16> %i.ix, splat (i16 8)
  %i.jp = lshr <8 x i16> %i.ja, splat (i16 8)
  %i.jq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.jo, <8 x i16> %i.jp)
  %i.jr = lshr <8 x i16> %i.je, splat (i16 8)
  %i.js = lshr <8 x i16> %i.jh, splat (i16 8)
  %i.jt = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.jr, <8 x i16> %i.js)
  store <16 x i8> %i.iw, ptr %.034132, align 1, !tbaa !7, !alias.scope !47
  %i.ju = getelementptr inbounds nuw i8, ptr %.034132, i64 16
  store <16 x i8> %i.jd, ptr %i.ju, align 1, !tbaa !7, !alias.scope !47
  %i.jv = getelementptr inbounds nuw i8, ptr %.034132, i64 32
  store <16 x i8> %i.jk, ptr %i.jv, align 1, !tbaa !7, !alias.scope !47
  %i.jw = getelementptr inbounds nuw i8, ptr %.034132, i64 48
  store <16 x i8> %i.jn, ptr %i.jw, align 1, !tbaa !7, !alias.scope !47
  %i.jx = getelementptr inbounds nuw i8, ptr %.034132, i64 64
  store <16 x i8> %i.jq, ptr %i.jx, align 1, !tbaa !7, !alias.scope !47
  %i.jy = getelementptr inbounds nuw i8, ptr %.034132, i64 80
  store <16 x i8> %i.jt, ptr %i.jy, align 1, !tbaa !7, !alias.scope !47
  %i.jz = getelementptr inbounds nuw i8, ptr %.032133, i64 32 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.038130, i64 16 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.036131, i64 16 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.034132, i64 96 ; 2 uses
  %i.kd = add nuw nsw i32 %i.c, 32                ; 2 uses
  %.not = icmp sgt i32 %i.kd, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !50

.lr.ph143:                                        ; preds = %.preheader, %.lr.ph143
  %.1142 = phi i32 [ %i.ly, %.lr.ph143 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.133141 = phi ptr [ %i.lt, %.lr.ph143 ], [ %.032.lcssa, %.preheader ] ; 2 uses
  %.135140 = phi ptr [ %i.ls, %.lr.ph143 ], [ %.034.lcssa, %.preheader ] ; 4 uses
  %.137139 = phi ptr [ %i.lx, %.lr.ph143 ], [ %.036.lcssa, %.preheader ] ; 2 uses
  %.139138 = phi ptr [ %i.lw, %.lr.ph143 ], [ %.038.lcssa, %.preheader ] ; 2 uses
  %i.ke = load i8, ptr %.133141, align 1, !tbaa !7
  %i.kf = zext i8 %i.ke to i32
  %i.kg = load i8, ptr %.139138, align 1, !tbaa !7
  %i.kh = zext i8 %i.kg to i32                    ; 2 uses
  %i.ki = load i8, ptr %.137139, align 1, !tbaa !7
  %i.kj = zext i8 %i.ki to i32                    ; 2 uses
  %i.kk = mul nuw nsw i32 %i.kf, 19077
  %i.kl = lshr i32 %i.kk, 8                       ; 3 uses
  %i.km = mul nuw nsw i32 %i.kh, 33050
  %i.kn = lshr i32 %i.km, 8
  %i.ko = add nuw nsw i32 %i.kn, %i.kl            ; 2 uses
  %i.kp = add nsw i32 %i.ko, -17685               ; 2 uses
  %5 = icmp ult i32 %i.kp, 16384
  %i.kq = lshr i32 %i.kp, 6
  %i.kr = icmp samesign ult i32 %i.ko, 17685
  %i.ks = select i1 %i.kr, i32 0, i32 255
  %i.kt = select i1 %5, i32 %i.kq, i32 %i.ks
  %i.ku = trunc i32 %i.kt to i8
  store i8 %i.ku, ptr %.135140, align 1, !tbaa !7
  %i.kv = mul nuw nsw i32 %i.kh, 6419
  %i.kw = lshr i32 %i.kv, 8
  %i.kx = mul nuw nsw i32 %i.kj, 13320
  %i.ky = lshr i32 %i.kx, 8
  %i.kz = add nuw nsw i32 %i.kw, %i.ky
  %i.la = sub nsw i32 %i.kl, %i.kz                ; 2 uses
  %i.lb = add nsw i32 %i.la, 8708                 ; 2 uses
  %6 = icmp ult i32 %i.lb, 16384
  %i.lc = lshr i32 %i.lb, 6
  %i.ld = icmp slt i32 %i.la, -8708
  %i.le = select i1 %i.ld, i32 0, i32 255
  %i.lf = select i1 %6, i32 %i.lc, i32 %i.le
  %i.lg = trunc i32 %i.lf to i8
  %i.lh = getelementptr inbounds nuw i8, ptr %.135140, i64 1
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !7
  %i.li = mul nuw nsw i32 %i.kj, 26149
  %i.lj = lshr i32 %i.li, 8
  %i.lk = add nuw nsw i32 %i.lj, %i.kl            ; 2 uses
  %i.ll = add nsw i32 %i.lk, -14234               ; 2 uses
  %7 = icmp ult i32 %i.ll, 16384
  %i.lm = lshr i32 %i.ll, 6
  %i.ln = icmp samesign ult i32 %i.lk, 14234
  %i.lo = select i1 %i.ln, i32 0, i32 255
  %i.lp = select i1 %7, i32 %i.lm, i32 %i.lo
  %i.lq = trunc i32 %i.lp to i8
  %i.lr = getelementptr inbounds nuw i8, ptr %.135140, i64 2
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !7
  %i.ls = getelementptr inbounds nuw i8, ptr %.135140, i64 3
  %i.lt = getelementptr inbounds nuw i8, ptr %.133141, i64 1
  %i.lu = and i32 %.1142, 1
  %i.lv = zext nneg i32 %i.lu to i64              ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.139138, i64 %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %.137139, i64 %i.lv
  %i.ly = add nuw nsw i32 %.1142, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ly, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph143, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph143, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToBgraRow_SSE2(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef writeonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %.not49 = icmp slt i32 %4, 8
  br i1 %.not49, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.a = and i32 %4, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.029.lcssa = phi ptr [ %1, %bb.a ], [ %i.ap, %.preheader.loopexit ]
  %.027.lcssa = phi ptr [ %2, %bb.a ], [ %i.aq, %.preheader.loopexit ]
  %.025.lcssa = phi ptr [ %3, %bb.a ], [ %i.ar, %.preheader.loopexit ]
  %.023.lcssa = phi ptr [ %0, %bb.a ], [ %i.ao, %.preheader.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.a, %.preheader.loopexit ] ; 2 uses
  %i.b = icmp slt i32 %.0.lcssa, %4
  br i1 %i.b, label %.lr.ph63, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i32 [ %i.as, %.lr.ph ], [ 8, %bb.a ]
  %.02353 = phi ptr [ %i.ao, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.02552 = phi ptr [ %i.ar, %.lr.ph ], [ %3, %bb.a ] ; 3 uses
  %.02751 = phi ptr [ %i.aq, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02950 = phi ptr [ %i.ap, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.023.val = load i64, ptr %.02353, align 1, !tbaa !7
  %.029.val = load i32, ptr %.02950, align 1
  %.027.val = load i32, ptr %.02751, align 1
  %i.d = insertelement <2 x i64> poison, i64 %.023.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %i.f = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.g = insertelement <4 x i32> poison, i32 %.029.val, i64 0
  %i.h = bitcast <4 x i32> %i.g to <16 x i8>
  %i.i = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.h, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.j = bitcast <16 x i8> %i.i to <8 x i16>
  %i.k = shufflevector <8 x i16> %i.j, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.l = insertelement <4 x i32> poison, i32 %.027.val, i64 0
  %i.m = bitcast <4 x i32> %i.l to <16 x i8>
  %i.n = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.m, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.o = bitcast <16 x i8> %i.n to <8 x i16>
  %i.p = shufflevector <8 x i16> %i.o, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.q = bitcast <16 x i8> %i.f to <8 x i16>
  %i.r = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.q, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.s = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.p, <8 x i16> splat (i16 26149))
  %i.t = add nsw <8 x i16> %i.r, splat (i16 -14234)
  %i.u = add <8 x i16> %i.t, %i.s
  %i.v = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.k, <8 x i16> splat (i16 6419))
  %i.w = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.p, <8 x i16> splat (i16 13320))
  %.neg45 = add nuw <8 x i16> %i.r, splat (i16 8708)
  %i.x = add nuw nsw <8 x i16> %i.v, %i.w
  %i.y = sub <8 x i16> %.neg45, %i.x
  %i.z = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.k, <8 x i16> splat (i16 -32486))
  %i.aa = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.z, <8 x i16> %i.r)
  %i.ab = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.aa, <8 x i16> splat (i16 17685))
  %i.ac = ashr <8 x i16> %i.u, splat (i16 6)
  %i.ad = ashr <8 x i16> %i.y, splat (i16 6)
  %i.ae = lshr <8 x i16> %i.ab, splat (i16 6)
  %i.af = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ae, <8 x i16> %i.ac) ; 2 uses
  %i.ag = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ad, <8 x i16> splat (i16 255)) ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.af, <16 x i8> %i.ag, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ai = shufflevector <16 x i8> %i.af, <16 x i8> %i.ag, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aj = bitcast <16 x i8> %i.ah to <8 x i16>    ; 2 uses
  %i.ak = bitcast <16 x i8> %i.ai to <8 x i16>    ; 2 uses
  %i.al = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.am = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.al, ptr %.02552, align 1, !tbaa !7, !alias.scope !52
  %i.an = getelementptr inbounds nuw i8, ptr %.02552, i64 16
  store <8 x i16> %i.am, ptr %i.an, align 1, !tbaa !7, !alias.scope !52
  %i.ao = getelementptr inbounds nuw i8, ptr %.02353, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02950, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02751, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02552, i64 32 ; 2 uses
  %i.as = add nuw nsw i32 %i.c, 8                 ; 2 uses
  %.not = icmp sgt i32 %i.as, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !55

.lr.ph63:                                         ; preds = %.preheader, %.lr.ph63
  %.162 = phi i32 [ %i.co, %.lr.ph63 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.12461 = phi ptr [ %i.cj, %.lr.ph63 ], [ %.023.lcssa, %.preheader ] ; 2 uses
  %.12660 = phi ptr [ %i.ci, %.lr.ph63 ], [ %.025.lcssa, %.preheader ] ; 5 uses
  %.12859 = phi ptr [ %i.cn, %.lr.ph63 ], [ %.027.lcssa, %.preheader ] ; 2 uses
  %.13058 = phi ptr [ %i.cm, %.lr.ph63 ], [ %.029.lcssa, %.preheader ] ; 2 uses
  %i.at = load i8, ptr %.12461, align 1, !tbaa !7
  %i.au = load i8, ptr %.13058, align 1, !tbaa !7
  %i.av = load i8, ptr %.12859, align 1, !tbaa !7
  %i.aw = zext i8 %i.at to i32
  %i.ax = zext i8 %i.au to i32                    ; 2 uses
  %i.ay = zext i8 %i.av to i32                    ; 2 uses
  %i.az = mul nuw nsw i32 %i.aw, 19077
  %i.ba = lshr i32 %i.az, 8                       ; 3 uses
  %i.bb = mul nuw nsw i32 %i.ax, 33050
  %i.bc = lshr i32 %i.bb, 8
  %i.bd = add nuw nsw i32 %i.bc, %i.ba            ; 2 uses
  %i.be = add nsw i32 %i.bd, -17685               ; 2 uses
  %5 = icmp ult i32 %i.be, 16384
  %i.bf = lshr i32 %i.be, 6
  %i.bg = icmp samesign ult i32 %i.bd, 17685
  %i.bh = select i1 %i.bg, i32 0, i32 255
  %i.bi = select i1 %5, i32 %i.bf, i32 %i.bh
  %i.bj = trunc i32 %i.bi to i8
  store i8 %i.bj, ptr %.12660, align 1, !tbaa !7
  %i.bk = mul nuw nsw i32 %i.ax, 6419
  %i.bl = lshr i32 %i.bk, 8
  %i.bm = mul nuw nsw i32 %i.ay, 13320
  %i.bn = lshr i32 %i.bm, 8
  %i.bo = add nuw nsw i32 %i.bl, %i.bn
  %i.bp = sub nsw i32 %i.ba, %i.bo                ; 2 uses
  %i.bq = add nsw i32 %i.bp, 8708                 ; 2 uses
  %6 = icmp ult i32 %i.bq, 16384
  %i.br = lshr i32 %i.bq, 6
  %i.bs = icmp slt i32 %i.bp, -8708
  %i.bt = select i1 %i.bs, i32 0, i32 255
  %i.bu = select i1 %6, i32 %i.br, i32 %i.bt
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %.12660, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !7
  %i.bx = mul nuw nsw i32 %i.ay, 26149
  %i.by = lshr i32 %i.bx, 8
  %i.bz = add nuw nsw i32 %i.by, %i.ba            ; 2 uses
  %i.ca = add nsw i32 %i.bz, -14234               ; 2 uses
  %7 = icmp ult i32 %i.ca, 16384
  %i.cb = lshr i32 %i.ca, 6
  %i.cc = icmp samesign ult i32 %i.bz, 14234
  %i.cd = select i1 %i.cc, i32 0, i32 255
  %i.ce = select i1 %7, i32 %i.cb, i32 %i.cd
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.12660, i64 2
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.12660, i64 3
  store i8 -1, ptr %i.ch, align 1, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.12660, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.12461, i64 1
  %i.ck = and i32 %.162, 1
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.13058, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.12859, i64 %i.cl
  %i.co = add nuw nsw i32 %.162, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph63, !llvm.loop !56

._crit_edge:                                      ; preds = %.lr.ph63, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToArgbRow_SSE2(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef writeonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %.not49 = icmp slt i32 %4, 8
  br i1 %.not49, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.a = and i32 %4, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.029.lcssa = phi ptr [ %1, %bb.a ], [ %i.ap, %.preheader.loopexit ]
  %.027.lcssa = phi ptr [ %2, %bb.a ], [ %i.aq, %.preheader.loopexit ]
  %.025.lcssa = phi ptr [ %3, %bb.a ], [ %i.ar, %.preheader.loopexit ]
  %.023.lcssa = phi ptr [ %0, %bb.a ], [ %i.ao, %.preheader.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.a, %.preheader.loopexit ] ; 2 uses
  %i.b = icmp slt i32 %.0.lcssa, %4
  br i1 %i.b, label %.lr.ph63, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i32 [ %i.as, %.lr.ph ], [ 8, %bb.a ]
  %.02353 = phi ptr [ %i.ao, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.02552 = phi ptr [ %i.ar, %.lr.ph ], [ %3, %bb.a ] ; 3 uses
  %.02751 = phi ptr [ %i.aq, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02950 = phi ptr [ %i.ap, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.023.val = load i64, ptr %.02353, align 1, !tbaa !7
  %.029.val = load i32, ptr %.02950, align 1
  %.027.val = load i32, ptr %.02751, align 1
  %i.d = insertelement <2 x i64> poison, i64 %.023.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %i.f = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.g = insertelement <4 x i32> poison, i32 %.029.val, i64 0
  %i.h = bitcast <4 x i32> %i.g to <16 x i8>
  %i.i = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.h, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.j = bitcast <16 x i8> %i.i to <8 x i16>
  %i.k = shufflevector <8 x i16> %i.j, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.l = insertelement <4 x i32> poison, i32 %.027.val, i64 0
  %i.m = bitcast <4 x i32> %i.l to <16 x i8>
  %i.n = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.m, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.o = bitcast <16 x i8> %i.n to <8 x i16>
  %i.p = shufflevector <8 x i16> %i.o, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.q = bitcast <16 x i8> %i.f to <8 x i16>
  %i.r = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.q, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.s = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.p, <8 x i16> splat (i16 26149))
  %i.t = add nsw <8 x i16> %i.r, splat (i16 -14234)
  %i.u = add <8 x i16> %i.t, %i.s
  %i.v = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.k, <8 x i16> splat (i16 6419))
  %i.w = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.p, <8 x i16> splat (i16 13320))
  %.neg45 = add nuw <8 x i16> %i.r, splat (i16 8708)
  %i.x = add nuw nsw <8 x i16> %i.v, %i.w
  %i.y = sub <8 x i16> %.neg45, %i.x
  %i.z = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %i.k, <8 x i16> splat (i16 -32486))
  %i.aa = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.z, <8 x i16> %i.r)
  %i.ab = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.aa, <8 x i16> splat (i16 17685))
  %i.ac = ashr <8 x i16> %i.u, splat (i16 6)
  %i.ad = ashr <8 x i16> %i.y, splat (i16 6)
  %i.ae = lshr <8 x i16> %i.ab, splat (i16 6)
  %i.af = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> splat (i16 255), <8 x i16> %i.ad) ; 2 uses
  %i.ag = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ac, <8 x i16> %i.ae) ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.af, <16 x i8> %i.ag, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ai = shufflevector <16 x i8> %i.af, <16 x i8> %i.ag, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aj = bitcast <16 x i8> %i.ah to <8 x i16>    ; 2 uses
  %i.ak = bitcast <16 x i8> %i.ai to <8 x i16>    ; 2 uses
  %i.al = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.am = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.al, ptr %.02552, align 1, !tbaa !7, !alias.scope !57
  %i.an = getelementptr inbounds nuw i8, ptr %.02552, i64 16
  store <8 x i16> %i.am, ptr %i.an, align 1, !tbaa !7, !alias.scope !57
  %i.ao = getelementptr inbounds nuw i8, ptr %.02353, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02950, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02751, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02552, i64 32 ; 2 uses
  %i.as = add nuw nsw i32 %i.c, 8                 ; 2 uses
  %.not = icmp sgt i32 %i.as, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !60

.lr.ph63:                                         ; preds = %.preheader, %.lr.ph63
  %.162 = phi i32 [ %i.co, %.lr.ph63 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.12461 = phi ptr [ %i.cj, %.lr.ph63 ], [ %.023.lcssa, %.preheader ] ; 2 uses
  %.12660 = phi ptr [ %i.ci, %.lr.ph63 ], [ %.025.lcssa, %.preheader ] ; 5 uses
  %.12859 = phi ptr [ %i.cn, %.lr.ph63 ], [ %.027.lcssa, %.preheader ] ; 2 uses
  %.13058 = phi ptr [ %i.cm, %.lr.ph63 ], [ %.029.lcssa, %.preheader ] ; 2 uses
  %i.at = load i8, ptr %.12461, align 1, !tbaa !7
  %i.au = load i8, ptr %.13058, align 1, !tbaa !7
  %i.av = load i8, ptr %.12859, align 1, !tbaa !7
  store i8 -1, ptr %.12660, align 1, !tbaa !7
  %i.aw = zext i8 %i.at to i32
  %i.ax = zext i8 %i.au to i32                    ; 2 uses
  %i.ay = zext i8 %i.av to i32                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.12660, i64 1
  %i.ba = mul nuw nsw i32 %i.aw, 19077
  %i.bb = lshr i32 %i.ba, 8                       ; 3 uses
  %i.bc = mul nuw nsw i32 %i.ay, 26149
  %i.bd = lshr i32 %i.bc, 8
  %i.be = add nuw nsw i32 %i.bd, %i.bb            ; 2 uses
  %i.bf = add nsw i32 %i.be, -14234               ; 2 uses
  %5 = icmp ult i32 %i.bf, 16384
  %i.bg = lshr i32 %i.bf, 6
  %i.bh = icmp samesign ult i32 %i.be, 14234
  %i.bi = select i1 %i.bh, i32 0, i32 255
  %i.bj = select i1 %5, i32 %i.bg, i32 %i.bi
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %i.az, align 1, !tbaa !7
  %i.bl = mul nuw nsw i32 %i.ax, 6419
  %i.bm = lshr i32 %i.bl, 8
  %i.bn = mul nuw nsw i32 %i.ay, 13320
  %i.bo = lshr i32 %i.bn, 8
  %i.bp = add nuw nsw i32 %i.bm, %i.bo
  %i.bq = sub nsw i32 %i.bb, %i.bp                ; 2 uses
  %i.br = add nsw i32 %i.bq, 8708                 ; 2 uses
  %6 = icmp ult i32 %i.br, 16384
  %i.bs = lshr i32 %i.br, 6
  %i.bt = icmp slt i32 %i.bq, -8708
  %i.bu = select i1 %i.bt, i32 0, i32 255
  %i.bv = select i1 %6, i32 %i.bs, i32 %i.bu
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.12660, i64 2
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !7
  %i.by = mul nuw nsw i32 %i.ax, 33050
  %i.bz = lshr i32 %i.by, 8
  %i.ca = add nuw nsw i32 %i.bz, %i.bb            ; 2 uses
  %i.cb = add nsw i32 %i.ca, -17685               ; 2 uses
  %7 = icmp ult i32 %i.cb, 16384
  %i.cc = lshr i32 %i.cb, 6
  %i.cd = icmp samesign ult i32 %i.ca, 17685
  %i.ce = select i1 %i.cd, i32 0, i32 255
  %i.cf = select i1 %7, i32 %i.cc, i32 %i.ce
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.12660, i64 3
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.12660, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.12461, i64 1
  %i.ck = and i32 %.162, 1
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.13058, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.12859, i64 %i.cl
  %i.co = add nuw nsw i32 %.162, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph63, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph63, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitConvertARGBToYUVSSE2() local_unnamed_addr #3 {
bb.a:
  store ptr @ConvertARGBToY_SSE2, ptr @WebPConvertARGBToY, align 8, !tbaa !35
  store ptr @ConvertARGBToUV_SSE2, ptr @WebPConvertARGBToUV, align 8, !tbaa !35
  store ptr @ConvertRGB24ToY_SSE2, ptr @WebPConvertRGB24ToY, align 8, !tbaa !35
  store ptr @ConvertBGR24ToY_SSE2, ptr @WebPConvertBGR24ToY, align 8, !tbaa !35
  store ptr @ConvertRGBA32ToUV_SSE2, ptr @WebPConvertRGBA32ToUV, align 8, !tbaa !35
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ConvertARGBToY_SSE2(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 15
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i32 %2, 2147483632
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.d = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.preheader.loopexit ] ; 2 uses
  %i.e = icmp slt i32 %.0.lcssa, %2
  br i1 %i.e, label %.lr.ph35.preheader, label %._crit_edge

.lr.ph35.preheader:                               ; preds = %.preheader
  %i.f = zext i32 %.0.lcssa to i64                ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %i.g = sub nsw i64 %wide.trip.count, %i.f       ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph35.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph35.preheader
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  %i.h = add nsw i64 %n.vec, %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = add i64 %index, %i.f                     ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !3 ; 3 uses
  %i.k = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.l = and <4 x i32> %i.k, splat (i32 255)
  %i.m = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.n = and <4 x i32> %i.m, splat (i32 255)
  %i.o = and <4 x i32> %wide.load, splat (i32 255)
  %i.p = mul nuw nsw <4 x i32> %i.l, splat (i32 16839)
  %i.q = mul nuw nsw <4 x i32> %i.n, splat (i32 33059)
  %i.r = mul nuw nsw <4 x i32> %i.o, splat (i32 6420)
  %i.s = add nuw nsw <4 x i32> %i.r, splat (i32 1081344)
  %i.t = add nuw nsw <4 x i32> %i.s, %i.p
  %i.u = add nuw nsw <4 x i32> %i.t, %i.q
  %i.v = lshr <4 x i32> %i.u, splat (i32 16)
  %i.w = trunc nuw <4 x i32> %i.v to <4 x i8>
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  store <4 x i8> %i.w, ptr %i.x, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph35.preheader40

.lr.ph35.preheader40:                             ; preds = %.lr.ph35.preheader, %middle.block
  %indvars.iv37.ph = phi i64 [ %i.f, %.lr.ph35.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph35

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %i.aa = load <16 x i8>, ptr %i.z, align 1, !tbaa !7, !alias.scope !65 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !7, !alias.scope !65 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !7, !alias.scope !65 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ag = load <16 x i8>, ptr %i.af, align 1, !tbaa !7, !alias.scope !65 ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ac, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ai = bitcast <16 x i8> %i.ah to <2 x i64>    ; 2 uses
  %i.aj = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ac, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = bitcast <16 x i8> %i.aj to <2 x i64>
  %i.al = shufflevector <16 x i8> %i.ae, <16 x i8> %i.ag, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.am = bitcast <16 x i8> %i.al to <2 x i64>    ; 2 uses
  %i.an = shufflevector <16 x i8> %i.ae, <16 x i8> %i.ag, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ao = bitcast <16 x i8> %i.an to <2 x i64>
  %i.ap = shufflevector <2 x i64> %i.ak, <2 x i64> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.aq = shufflevector <2 x i64> %i.ai, <2 x i64> %i.am, <2 x i32> <i32 1, i32 3>
  %i.ar = shufflevector <2 x i64> %i.ai, <2 x i64> %i.am, <2 x i32> <i32 0, i32 2>
  %i.as = bitcast <2 x i64> %i.ap to <16 x i8>    ; 2 uses
  %i.at = shufflevector <16 x i8> %i.as, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.au = shufflevector <16 x i8> %i.as, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.av = bitcast <2 x i64> %i.aq to <16 x i8>    ; 2 uses
  %i.aw = shufflevector <16 x i8> %i.av, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ax = shufflevector <16 x i8> %i.av, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ay = bitcast <2 x i64> %i.ar to <16 x i8>    ; 2 uses
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ba = shufflevector <16 x i8> %i.ay, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bb = bitcast <16 x i8> %i.at to <8 x i16>    ; 2 uses
  %i.bc = bitcast <16 x i8> %i.aw to <8 x i16>    ; 4 uses
  %i.bd = shufflevector <8 x i16> %i.bb, <8 x i16> %i.bc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.be = shufflevector <8 x i16> %i.bb, <8 x i16> %i.bc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bf = bitcast <16 x i8> %i.az to <8 x i16>    ; 2 uses
  %i.bg = shufflevector <8 x i16> %i.bc, <8 x i16> %i.bf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bh = shufflevector <8 x i16> %i.bc, <8 x i16> %i.bf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bi = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bd, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.bj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.be, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.bk = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bg, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.bl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bh, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.bm = add <4 x i32> %i.bi, splat (i32 1081344)
  %i.bn = add <4 x i32> %i.bm, %i.bk
  %i.bo = add <4 x i32> %i.bj, splat (i32 1081344)
  %i.bp = add <4 x i32> %i.bo, %i.bl
  %i.bq = ashr <4 x i32> %i.bn, splat (i32 16)
  %i.br = ashr <4 x i32> %i.bp, splat (i32 16)
  %i.bs = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bq, <4 x i32> %i.br)
  %i.bt = bitcast <16 x i8> %i.au to <8 x i16>    ; 2 uses
  %i.bu = bitcast <16 x i8> %i.ax to <8 x i16>    ; 4 uses
  %i.bv = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bw = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bx = bitcast <16 x i8> %i.ba to <8 x i16>    ; 2 uses
  %i.by = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bz = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ca = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bv, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bw, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.by, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.cd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bz, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.ce = add <4 x i32> %i.ca, splat (i32 1081344)
  %i.cf = add <4 x i32> %i.ce, %i.cc
  %i.cg = add <4 x i32> %i.cb, splat (i32 1081344)
  %i.ch = add <4 x i32> %i.cg, %i.cd
  %i.ci = ashr <4 x i32> %i.cf, splat (i32 16)
  %i.cj = ashr <4 x i32> %i.ch, splat (i32 16)
  %i.ck = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ci, <4 x i32> %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.cm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bs, <8 x i16> %i.ck)
  store <16 x i8> %i.cm, ptr %i.cl, align 1, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.cn = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.cn, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !68

.lr.ph35:                                         ; preds = %.lr.ph35.preheader40, %.lr.ph35
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %.lr.ph35 ], [ %indvars.iv37.ph, %.lr.ph35.preheader40 ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv37
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 3 uses
  %i.cq = lshr i32 %i.cp, 16
  %i.cr = and i32 %i.cq, 255
  %i.cs = lshr i32 %i.cp, 8
  %i.ct = and i32 %i.cs, 255
  %i.cu = and i32 %i.cp, 255
  %i.cv = mul nuw nsw i32 %i.cr, 16839
  %i.cw = mul nuw nsw i32 %i.ct, 33059
  %i.cx = mul nuw nsw i32 %i.cu, 6420
  %i.cy = add nuw nsw i32 %i.cx, 1081344
  %i.cz = add nuw nsw i32 %i.cy, %i.cv
  %i.da = add nuw nsw i32 %i.cz, %i.cw
  %i.db = lshr i32 %i.da, 16
  %i.dc = trunc nuw i32 %i.db to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv37
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !7
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph35, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph35, %middle.block, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertARGBToUV_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i32 noundef %3, i32 noundef %4) #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 31
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = and i32 %3, 2147483616
end_hunk_0
