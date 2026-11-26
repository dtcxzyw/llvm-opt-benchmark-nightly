Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pred?download=true
loop-unroll.NumCompletelyUnrolled: 290
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 348
begin_hunk_0_@pred_planar_2_9:bb.a
  %i.ek = mul nuw nsw i32 %i.ej, 7
  %i.el = load i16, ptr %i.h, align 2, !tbaa !82
  %i.em = zext i16 %i.el to i32
  %i.en = mul nuw nsw i32 %i.ac, %i.em
  %i.eo = load i16, ptr %i.b, align 2, !tbaa !82
  %i.ep = zext i16 %i.eo to i32
  %i.eq = mul nuw nsw i32 %i.ag, %i.ep
  %i.er = add nuw nsw i32 %i.eh, 16
  %i.es = add nuw nsw i32 %i.er, %i.ek
  %i.et = add nuw nsw i32 %i.es, %i.en
  %i.eu = add nuw nsw i32 %i.et, %i.eq
  %i.ev = lshr i32 %i.eu, 5
  %i.ew = trunc i32 %i.ev to i16
  %i.ex = getelementptr i8, ptr %i.t, i64 12
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !82
  %i.ey = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ez = zext i16 %i.ey to i32
  %i.fa = load i16, ptr %i.a, align 2, !tbaa !82
  %i.fb = zext i16 %i.fa to i32
  %i.fc = load i16, ptr %i.i, align 2, !tbaa !82
  %i.fd = zext i16 %i.fc to i32
  %i.fe = mul nuw nsw i32 %i.ac, %i.fd
  %i.ff = load i16, ptr %i.b, align 2, !tbaa !82
  %i.fg = zext i16 %i.ff to i32
  %i.fh = mul nuw nsw i32 %i.ag, %i.fg
  %i.fi = add nuw nsw i32 %i.ez, %i.fb
  %i.fj = shl nuw nsw i32 %i.fi, 3
  %i.fk = add nuw nsw i32 %i.fj, 16
  %i.fl = add nuw nsw i32 %i.fk, %i.fe
  %i.fm = add nuw nsw i32 %i.fl, %i.fh
  %i.fn = lshr i32 %i.fm, 5
  %i.fo = trunc i32 %i.fn to i16
  %i.fp = getelementptr i8, ptr %i.t, i64 14
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !82
  %i.fq = load i16, ptr %i.r, align 2, !tbaa !82
  %i.fr = zext i16 %i.fq to i32
  %i.fs = mul nuw nsw i32 %i.fr, 7
  %i.ft = load i16, ptr %i.a, align 2, !tbaa !82
  %i.fu = zext i16 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fu, 9
  %i.fw = load i16, ptr %i.j, align 2, !tbaa !82
  %i.fx = zext i16 %i.fw to i32
  %i.fy = mul nuw nsw i32 %i.ac, %i.fx
  %i.fz = load i16, ptr %i.b, align 2, !tbaa !82
  %i.ga = zext i16 %i.fz to i32
  %i.gb = mul nuw nsw i32 %i.ag, %i.ga
  %i.gc = add nuw nsw i32 %i.fs, 16
  %i.gd = add nuw nsw i32 %i.gc, %i.fv
  %i.ge = add nuw nsw i32 %i.gd, %i.fy
  %i.gf = add nuw nsw i32 %i.ge, %i.gb
  %i.gg = lshr i32 %i.gf, 5
  %i.gh = trunc i32 %i.gg to i16
  %i.gi = getelementptr i8, ptr %i.t, i64 16
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !82
  %i.gj = load i16, ptr %i.r, align 2, !tbaa !82
  %i.gk = zext i16 %i.gj to i32
  %i.gl = mul nuw nsw i32 %i.gk, 6
  %i.gm = load i16, ptr %i.a, align 2, !tbaa !82
  %i.gn = zext i16 %i.gm to i32
  %i.go = mul nuw nsw i32 %i.gn, 10
  %i.gp = load i16, ptr %i.k, align 2, !tbaa !82
  %i.gq = zext i16 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.ac, %i.gq
  %i.gs = load i16, ptr %i.b, align 2, !tbaa !82
  %i.gt = zext i16 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.ag, %i.gt
  %i.gv = add nuw nsw i32 %i.gl, 16
  %i.gw = add nuw nsw i32 %i.gv, %i.go
  %i.gx = add nuw nsw i32 %i.gw, %i.gr
  %i.gy = add nuw nsw i32 %i.gx, %i.gu
  %i.gz = lshr i32 %i.gy, 5
  %i.ha = trunc i32 %i.gz to i16
  %i.hb = getelementptr i8, ptr %i.t, i64 18
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !82
  %i.hc = load i16, ptr %i.r, align 2, !tbaa !82
  %i.hd = zext i16 %i.hc to i32
  %i.he = mul nuw nsw i32 %i.hd, 5
  %i.hf = load i16, ptr %i.a, align 2, !tbaa !82
  %i.hg = zext i16 %i.hf to i32
  %i.hh = mul nuw nsw i32 %i.hg, 11
  %i.hi = load i16, ptr %i.l, align 2, !tbaa !82
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul nuw nsw i32 %i.ac, %i.hj
  %i.hl = load i16, ptr %i.b, align 2, !tbaa !82
  %i.hm = zext i16 %i.hl to i32
  %i.hn = mul nuw nsw i32 %i.ag, %i.hm
  %i.ho = add nuw nsw i32 %i.he, 16
  %i.hp = add nuw nsw i32 %i.ho, %i.hh
  %i.hq = add nuw nsw i32 %i.hp, %i.hk
  %i.hr = add nuw nsw i32 %i.hq, %i.hn
  %i.hs = lshr i32 %i.hr, 5
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = getelementptr i8, ptr %i.t, i64 20
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !82
  %i.hv = load i16, ptr %i.r, align 2, !tbaa !82
  %i.hw = zext i16 %i.hv to i32
  %i.hx = shl nuw nsw i32 %i.hw, 2
  %i.hy = load i16, ptr %i.a, align 2, !tbaa !82
  %i.hz = zext i16 %i.hy to i32
  %i.ia = mul nuw nsw i32 %i.hz, 12
  %i.ib = load i16, ptr %i.m, align 2, !tbaa !82
  %i.ic = zext i16 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ac, %i.ic
  %i.ie = load i16, ptr %i.b, align 2, !tbaa !82
  %i.if = zext i16 %i.ie to i32
  %i.ig = mul nuw nsw i32 %i.ag, %i.if
  %i.ih = add nuw nsw i32 %i.hx, 16
  %i.ii = add nuw nsw i32 %i.ih, %i.ia
  %i.ij = add nuw nsw i32 %i.ii, %i.id
  %i.ik = add nuw nsw i32 %i.ij, %i.ig
  %i.il = lshr i32 %i.ik, 5
  %i.im = trunc i32 %i.il to i16
  %i.in = getelementptr i8, ptr %i.t, i64 22
  store i16 %i.im, ptr %i.in, align 2, !tbaa !82
  %i.io = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ip = zext i16 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.ip, 3
  %i.ir = load i16, ptr %i.a, align 2, !tbaa !82
  %i.is = zext i16 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.is, 13
  %i.iu = load i16, ptr %i.n, align 2, !tbaa !82
  %i.iv = zext i16 %i.iu to i32
  %i.iw = mul nuw nsw i32 %i.ac, %i.iv
  %i.ix = load i16, ptr %i.b, align 2, !tbaa !82
  %i.iy = zext i16 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.ag, %i.iy
  %i.ja = add nuw nsw i32 %i.iq, 16
  %i.jb = add nuw nsw i32 %i.ja, %i.it
  %i.jc = add nuw nsw i32 %i.jb, %i.iw
  %i.jd = add nuw nsw i32 %i.jc, %i.iz
  %i.je = lshr i32 %i.jd, 5
  %i.jf = trunc i32 %i.je to i16
  %i.jg = getelementptr i8, ptr %i.t, i64 24
  store i16 %i.jf, ptr %i.jg, align 2, !tbaa !82
  %i.jh = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ji = zext i16 %i.jh to i32
  %i.jj = shl nuw nsw i32 %i.ji, 1
  %i.jk = load i16, ptr %i.a, align 2, !tbaa !82
  %i.jl = zext i16 %i.jk to i32
  %i.jm = mul nuw nsw i32 %i.jl, 14
  %i.jn = load i16, ptr %i.o, align 2, !tbaa !82
  %i.jo = zext i16 %i.jn to i32
  %i.jp = mul nuw nsw i32 %i.ac, %i.jo
  %i.jq = load i16, ptr %i.b, align 2, !tbaa !82
  %i.jr = zext i16 %i.jq to i32
  %i.js = mul nuw nsw i32 %i.ag, %i.jr
  %i.jt = add nuw nsw i32 %i.jj, 16
  %i.ju = add nuw nsw i32 %i.jt, %i.jm
  %i.jv = add nuw nsw i32 %i.ju, %i.jp
  %i.jw = add nuw nsw i32 %i.jv, %i.js
  %i.jx = lshr i32 %i.jw, 5
  %i.jy = trunc i32 %i.jx to i16
  %i.jz = getelementptr i8, ptr %i.t, i64 26
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !82
  %i.ka = load i16, ptr %i.r, align 2, !tbaa !82
  %i.kb = zext i16 %i.ka to i32
  %i.kc = load i16, ptr %i.a, align 2, !tbaa !82
  %i.kd = zext i16 %i.kc to i32
  %i.ke = mul nuw nsw i32 %i.kd, 15
  %i.kf = load i16, ptr %i.p, align 2, !tbaa !82
  %i.kg = zext i16 %i.kf to i32
  %i.kh = mul nuw nsw i32 %i.ac, %i.kg
  %i.ki = load i16, ptr %i.b, align 2, !tbaa !82
  %i.kj = zext i16 %i.ki to i32
  %i.kk = mul nuw nsw i32 %i.ag, %i.kj
  %i.kl = add nuw nsw i32 %i.kb, 16
  %i.km = add nuw nsw i32 %i.kl, %i.ke
  %i.kn = add nuw nsw i32 %i.km, %i.kh
  %i.ko = add nuw nsw i32 %i.kn, %i.kk
  %i.kp = lshr i32 %i.ko, 5
  %i.kq = trunc i32 %i.kp to i16
  %i.kr = getelementptr i8, ptr %i.t, i64 28
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !82
  %i.ks = load i16, ptr %i.a, align 2, !tbaa !82
  %i.kt = zext i16 %i.ks to i32
  %i.ku = shl nuw nsw i32 %i.kt, 4
  %i.kv = load i16, ptr %i.q, align 2, !tbaa !82
  %i.kw = zext i16 %i.kv to i32
  %i.kx = mul nuw nsw i32 %i.ac, %i.kw
  %i.ky = load i16, ptr %i.b, align 2, !tbaa !82
  %i.kz = zext i16 %i.ky to i32
  %i.la = mul nuw nsw i32 %i.ag, %i.kz
  %i.lb = add nuw nsw i32 %i.ku, 16
  %i.lc = add nuw nsw i32 %i.lb, %i.kx
  %i.ld = add nuw nsw i32 %i.lc, %i.la
  %i.le = lshr i32 %i.ld, 5
  %i.lf = trunc i32 %i.le to i16
  %i.lg = getelementptr i8, ptr %i.t, i64 30
  store i16 %i.lf, ptr %i.lg, align 2, !tbaa !82
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %pred_planar_9.exit, label %.preheader, !llvm.loop !28

pred_planar_9.exit:                               ; preds = %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_3_9(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.c = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.d = insertelement <2 x ptr> %i.c, ptr %1, i64 1
  %i.e = getelementptr i8, <2 x ptr> %i.d, i64 66
  %i.f = mul i64 %3, 62
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep20 = getelementptr i8, ptr %i.g, i64 64 ; 2 uses
  %i.h = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.i = shufflevector <2 x ptr> %i.h, <2 x ptr> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x ptr> poison, ptr %i.b, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %1, i64 1
  %i.j = insertelement <2 x ptr> poison, ptr %scevgep20, i64 0
  %i.k = shufflevector <2 x ptr> %i.j, <2 x ptr> poison, <2 x i32> zeroinitializer
  %bound0 = icmp ult ptr %0, %i.b
  %bound1 = icmp ult ptr %2, %scevgep20
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %3, 4611686018427387904
  %stride.check = icmp ne i64 %.mask, 0
  %i.l = or i1 %found.conflict, %stride.check
  %i.m = icmp ult <2 x ptr> %i.i, %i.e
  %i.n = icmp ult <2 x ptr> %5, %i.k
  %i.o = and <2 x i1> %i.m, %i.n                  ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 0
  %conflict.rdx = or i1 %i.l, %i.p
  %i.q = extractelement <2 x i1> %i.o, i64 1
  %conflict.rdx27 = or i1 %conflict.rdx, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %middle.block
  %indvars.iv6 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next7, %middle.block ] ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv6 ; 2 uses
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 3 uses
  %i.v = mul nsw i64 %3, %indvars.iv6
  %i.w = getelementptr [2 x i8], ptr %0, i64 %i.v ; 5 uses
  %i.x = trunc i64 %indvars.iv6 to i32
  %i.y = sub i32 31, %i.x                         ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next7 to i32 ; 2 uses
  br i1 %conflict.rdx27, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader
  %broadcast.splatinsert34 = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat35 = shufflevector <8 x i32> %broadcast.splatinsert34, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aa = load i16, ptr %i.b, align 2, !tbaa !82, !alias.scope !278
  %broadcast.splatinsert32 = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat33 = shufflevector <8 x i16> %broadcast.splatinsert32, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ab = zext <8 x i16> %broadcast.splat33 to <8 x i32>
  %i.ac = mul nuw nsw <8 x i32> %broadcast.splat, %i.ab ; 4 uses
  %i.ad = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !279
  %broadcast.splatinsert30 = insertelement <8 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat31 = shufflevector <8 x i16> %broadcast.splatinsert30, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ae = zext <8 x i16> %broadcast.splat31 to <8 x i32> ; 4 uses
  %i.af = load i16, ptr %i.u, align 2, !tbaa !82, !alias.scope !280
  %broadcast.splatinsert28 = insertelement <8 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat29 = shufflevector <8 x i16> %broadcast.splatinsert28, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ag = zext <8 x i16> %broadcast.splat29 to <8 x i32> ; 4 uses
  %i.ah = mul nuw nsw <8 x i32> %i.ag, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.ai = mul nuw nsw <8 x i32> %i.ae, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %wide.load = load <8 x i16>, ptr %1, align 2, !tbaa !82, !alias.scope !279
  %i.aj = zext <8 x i16> %wide.load to <8 x i32>
  %i.ak = mul nuw nsw <8 x i32> %broadcast.splat35, %i.aj
  %i.al = add nuw nsw <8 x i32> %i.ah, splat (i32 32)
  %i.am = add nuw nsw <8 x i32> %i.al, %i.ai
  %i.an = add nuw nsw <8 x i32> %i.am, %i.ak
  %i.ao = add nuw nsw <8 x i32> %i.an, %i.ac
  %i.ap = lshr <8 x i32> %i.ao, splat (i32 6)
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  store <8 x i16> %i.aq, ptr %i.w, align 2, !tbaa !82, !alias.scope !281, !noalias !282
  %i.ar = mul nuw nsw <8 x i32> %i.ag, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.as = mul nuw nsw <8 x i32> %i.ae, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %wide.load.1 = load <8 x i16>, ptr %i.r, align 2, !tbaa !82, !alias.scope !279
  %i.at = zext <8 x i16> %wide.load.1 to <8 x i32>
  %i.au = mul nuw nsw <8 x i32> %broadcast.splat35, %i.at
  %i.av = add nuw nsw <8 x i32> %i.ar, splat (i32 32)
  %i.aw = add nuw nsw <8 x i32> %i.av, %i.as
  %i.ax = add nuw nsw <8 x i32> %i.aw, %i.au
  %i.ay = add nuw nsw <8 x i32> %i.ax, %i.ac
  %i.az = lshr <8 x i32> %i.ay, splat (i32 6)
  %i.ba = trunc <8 x i32> %i.az to <8 x i16>
  %i.bb = getelementptr i8, ptr %i.w, i64 16
  store <8 x i16> %i.ba, ptr %i.bb, align 2, !tbaa !82, !alias.scope !281, !noalias !282
  %i.bc = mul nuw nsw <8 x i32> %i.ag, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bd = mul nuw nsw <8 x i32> %i.ae, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %wide.load.2 = load <8 x i16>, ptr %i.s, align 2, !tbaa !82, !alias.scope !279
  %i.be = zext <8 x i16> %wide.load.2 to <8 x i32>
  %i.bf = mul nuw nsw <8 x i32> %broadcast.splat35, %i.be
  %i.bg = add nuw nsw <8 x i32> %i.bc, splat (i32 32)
  %i.bh = add nuw nsw <8 x i32> %i.bg, %i.bd
  %i.bi = add nuw nsw <8 x i32> %i.bh, %i.bf
  %i.bj = add nuw nsw <8 x i32> %i.bi, %i.ac
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 6)
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr i8, ptr %i.w, i64 32
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !82, !alias.scope !281, !noalias !282
  %i.bn = mul nuw nsw <8 x i32> %i.ag, <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bo = mul nuw nsw <8 x i32> %i.ae, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %wide.load.3 = load <8 x i16>, ptr %i.t, align 2, !tbaa !82, !alias.scope !279
  %i.bp = zext <8 x i16> %wide.load.3 to <8 x i32>
  %i.bq = mul nuw nsw <8 x i32> %broadcast.splat35, %i.bp
  %i.br = add nuw nsw <8 x i32> %i.bn, splat (i32 32)
  %i.bs = add nuw nsw <8 x i32> %i.br, %i.bo
  %i.bt = add nuw nsw <8 x i32> %i.bs, %i.bq
  %i.bu = add nuw nsw <8 x i32> %i.bt, %i.ac
  %i.bv = lshr <8 x i32> %i.bu, splat (i32 6)
  %i.bw = trunc <8 x i32> %i.bv to <8 x i16>
  %i.bx = getelementptr i8, ptr %i.w, i64 48
  store <8 x i16> %i.bw, ptr %i.bx, align 2, !tbaa !82, !alias.scope !281, !noalias !282
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader ] ; 4 uses
  %i.by = load i16, ptr %i.u, align 2, !tbaa !82
  %i.bz = zext i16 %i.by to i32
  %i.ca = trunc i64 %indvars.iv to i32
  %i.cb = sub i32 31, %i.ca
  %i.cc = mul nuw nsw i32 %i.cb, %i.bz
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cd = load i16, ptr %i.a, align 2, !tbaa !82
  %i.ce = zext i16 %i.cd to i32
  %i.cf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cg = mul nuw nsw i32 %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !82
  %i.cj = zext i16 %i.ci to i32
  %i.ck = mul nuw nsw i32 %i.y, %i.cj
  %i.cl = load i16, ptr %i.b, align 2, !tbaa !82
  %i.cm = zext i16 %i.cl to i32
  %i.cn = mul nuw nsw i32 %i.z, %i.cm
  %i.co = add nuw nsw i32 %i.cc, 32
  %i.cp = add nuw nsw i32 %i.co, %i.cg
  %i.cq = add nuw nsw i32 %i.cp, %i.ck
  %i.cr = add nuw nsw i32 %i.cq, %i.cn
  %i.cs = lshr i32 %i.cr, 6
  %i.ct = trunc i32 %i.cs to i16
  %i.cu = getelementptr [2 x i8], ptr %i.w, i64 %indvars.iv
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !82
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !277

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 32
  br i1 %exitcond9.not, label %pred_planar_9.exit, label %.preheader, !llvm.loop !28

pred_planar_9.exit:                               ; preds = %middle.block
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_dc_9(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = shl nuw i32 1, %4                        ; 12 uses
  %.not = icmp eq i32 %4, 31
  br i1 %.not, label %._crit_edge64.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp slt i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.e = and i32 %i.d, 2147483640
  %n.vec = zext nneg i32 %i.e to i64
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.d, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.f, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load = load <4 x i16>, ptr %i.g, align 2, !tbaa !82
  %wide.load93 = load <4 x i16>, ptr %i.h, align 2, !tbaa !82
  %i.i = zext <4 x i16> %wide.load to <4 x i32>
  %i.j = zext <4 x i16> %wide.load93 to <4 x i32>
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load94 = load <4 x i16>, ptr %i.k, align 2, !tbaa !82
  %wide.load95 = load <4 x i16>, ptr %i.l, align 2, !tbaa !82
  %i.m = zext <4 x i16> %wide.load94 to <4 x i32>
  %i.n = zext <4 x i16> %wide.load95 to <4 x i32>
  %i.o = add <4 x i32> %vec.phi, %i.i
  %i.p = add <4 x i32> %vec.phi92, %i.j
  %i.q = add <4 x i32> %i.o, %i.m                 ; 2 uses
  %i.r = add <4 x i32> %i.p, %i.n                 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.preheader57.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.u = load i16, ptr %2, align 2, !tbaa !82
  %i.v = zext i16 %i.u to i32
  %i.w = load i16, ptr %1, align 2, !tbaa !82
  %i.x = zext i16 %i.w to i32
  %i.y = add nuw i32 %i.d, %i.v
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %exitcond.not = icmp slt i32 %i.d, 2
  br i1 %exitcond.not, label %.preheader57.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !82
  %i.ac = zext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !82
  %i.af = zext i16 %i.ae to i32
  %i.ag = add i32 %i.z, %i.ac
  %i.ah = add i32 %i.ag, %i.af                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %4, 1
  br i1 %exitcond.not.1, label %.preheader57.preheader, label %.lr.ph.3
end_hunk_0
begin_hunk_1_@pred_planar_2_10:bb.a
  %i.ek = mul nuw nsw i32 %i.ej, 7
  %i.el = load i16, ptr %i.h, align 2, !tbaa !82
  %i.em = zext i16 %i.el to i32
  %i.en = mul nuw nsw i32 %i.ac, %i.em
  %i.eo = load i16, ptr %i.b, align 2, !tbaa !82
  %i.ep = zext i16 %i.eo to i32
  %i.eq = mul nuw nsw i32 %i.ag, %i.ep
  %i.er = add nuw nsw i32 %i.eh, 16
  %i.es = add nuw nsw i32 %i.er, %i.ek
  %i.et = add nuw nsw i32 %i.es, %i.en
  %i.eu = add nuw nsw i32 %i.et, %i.eq
  %i.ev = lshr i32 %i.eu, 5
  %i.ew = trunc i32 %i.ev to i16
  %i.ex = getelementptr i8, ptr %i.t, i64 12
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !82
  %i.ey = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ez = zext i16 %i.ey to i32
  %i.fa = load i16, ptr %i.a, align 2, !tbaa !82
  %i.fb = zext i16 %i.fa to i32
  %i.fc = load i16, ptr %i.i, align 2, !tbaa !82
  %i.fd = zext i16 %i.fc to i32
  %i.fe = mul nuw nsw i32 %i.ac, %i.fd
  %i.ff = load i16, ptr %i.b, align 2, !tbaa !82
  %i.fg = zext i16 %i.ff to i32
  %i.fh = mul nuw nsw i32 %i.ag, %i.fg
  %i.fi = add nuw nsw i32 %i.ez, %i.fb
  %i.fj = shl nuw nsw i32 %i.fi, 3
  %i.fk = add nuw nsw i32 %i.fj, 16
  %i.fl = add nuw nsw i32 %i.fk, %i.fe
  %i.fm = add nuw nsw i32 %i.fl, %i.fh
  %i.fn = lshr i32 %i.fm, 5
  %i.fo = trunc i32 %i.fn to i16
  %i.fp = getelementptr i8, ptr %i.t, i64 14
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !82
  %i.fq = load i16, ptr %i.r, align 2, !tbaa !82
  %i.fr = zext i16 %i.fq to i32
  %i.fs = mul nuw nsw i32 %i.fr, 7
  %i.ft = load i16, ptr %i.a, align 2, !tbaa !82
  %i.fu = zext i16 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fu, 9
  %i.fw = load i16, ptr %i.j, align 2, !tbaa !82
  %i.fx = zext i16 %i.fw to i32
  %i.fy = mul nuw nsw i32 %i.ac, %i.fx
  %i.fz = load i16, ptr %i.b, align 2, !tbaa !82
  %i.ga = zext i16 %i.fz to i32
  %i.gb = mul nuw nsw i32 %i.ag, %i.ga
  %i.gc = add nuw nsw i32 %i.fs, 16
  %i.gd = add nuw nsw i32 %i.gc, %i.fv
  %i.ge = add nuw nsw i32 %i.gd, %i.fy
  %i.gf = add nuw nsw i32 %i.ge, %i.gb
  %i.gg = lshr i32 %i.gf, 5
  %i.gh = trunc i32 %i.gg to i16
  %i.gi = getelementptr i8, ptr %i.t, i64 16
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !82
  %i.gj = load i16, ptr %i.r, align 2, !tbaa !82
  %i.gk = zext i16 %i.gj to i32
  %i.gl = mul nuw nsw i32 %i.gk, 6
  %i.gm = load i16, ptr %i.a, align 2, !tbaa !82
  %i.gn = zext i16 %i.gm to i32
  %i.go = mul nuw nsw i32 %i.gn, 10
  %i.gp = load i16, ptr %i.k, align 2, !tbaa !82
  %i.gq = zext i16 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.ac, %i.gq
  %i.gs = load i16, ptr %i.b, align 2, !tbaa !82
  %i.gt = zext i16 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.ag, %i.gt
  %i.gv = add nuw nsw i32 %i.gl, 16
  %i.gw = add nuw nsw i32 %i.gv, %i.go
  %i.gx = add nuw nsw i32 %i.gw, %i.gr
  %i.gy = add nuw nsw i32 %i.gx, %i.gu
  %i.gz = lshr i32 %i.gy, 5
  %i.ha = trunc i32 %i.gz to i16
  %i.hb = getelementptr i8, ptr %i.t, i64 18
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !82
  %i.hc = load i16, ptr %i.r, align 2, !tbaa !82
  %i.hd = zext i16 %i.hc to i32
  %i.he = mul nuw nsw i32 %i.hd, 5
  %i.hf = load i16, ptr %i.a, align 2, !tbaa !82
  %i.hg = zext i16 %i.hf to i32
  %i.hh = mul nuw nsw i32 %i.hg, 11
  %i.hi = load i16, ptr %i.l, align 2, !tbaa !82
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul nuw nsw i32 %i.ac, %i.hj
  %i.hl = load i16, ptr %i.b, align 2, !tbaa !82
  %i.hm = zext i16 %i.hl to i32
  %i.hn = mul nuw nsw i32 %i.ag, %i.hm
  %i.ho = add nuw nsw i32 %i.he, 16
  %i.hp = add nuw nsw i32 %i.ho, %i.hh
  %i.hq = add nuw nsw i32 %i.hp, %i.hk
  %i.hr = add nuw nsw i32 %i.hq, %i.hn
  %i.hs = lshr i32 %i.hr, 5
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = getelementptr i8, ptr %i.t, i64 20
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !82
  %i.hv = load i16, ptr %i.r, align 2, !tbaa !82
  %i.hw = zext i16 %i.hv to i32
  %i.hx = shl nuw nsw i32 %i.hw, 2
  %i.hy = load i16, ptr %i.a, align 2, !tbaa !82
  %i.hz = zext i16 %i.hy to i32
  %i.ia = mul nuw nsw i32 %i.hz, 12
  %i.ib = load i16, ptr %i.m, align 2, !tbaa !82
  %i.ic = zext i16 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ac, %i.ic
  %i.ie = load i16, ptr %i.b, align 2, !tbaa !82
  %i.if = zext i16 %i.ie to i32
  %i.ig = mul nuw nsw i32 %i.ag, %i.if
  %i.ih = add nuw nsw i32 %i.hx, 16
  %i.ii = add nuw nsw i32 %i.ih, %i.ia
  %i.ij = add nuw nsw i32 %i.ii, %i.id
  %i.ik = add nuw nsw i32 %i.ij, %i.ig
  %i.il = lshr i32 %i.ik, 5
  %i.im = trunc i32 %i.il to i16
  %i.in = getelementptr i8, ptr %i.t, i64 22
  store i16 %i.im, ptr %i.in, align 2, !tbaa !82
  %i.io = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ip = zext i16 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.ip, 3
  %i.ir = load i16, ptr %i.a, align 2, !tbaa !82
  %i.is = zext i16 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.is, 13
  %i.iu = load i16, ptr %i.n, align 2, !tbaa !82
  %i.iv = zext i16 %i.iu to i32
  %i.iw = mul nuw nsw i32 %i.ac, %i.iv
  %i.ix = load i16, ptr %i.b, align 2, !tbaa !82
  %i.iy = zext i16 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.ag, %i.iy
  %i.ja = add nuw nsw i32 %i.iq, 16
  %i.jb = add nuw nsw i32 %i.ja, %i.it
  %i.jc = add nuw nsw i32 %i.jb, %i.iw
  %i.jd = add nuw nsw i32 %i.jc, %i.iz
  %i.je = lshr i32 %i.jd, 5
  %i.jf = trunc i32 %i.je to i16
  %i.jg = getelementptr i8, ptr %i.t, i64 24
  store i16 %i.jf, ptr %i.jg, align 2, !tbaa !82
  %i.jh = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ji = zext i16 %i.jh to i32
  %i.jj = shl nuw nsw i32 %i.ji, 1
  %i.jk = load i16, ptr %i.a, align 2, !tbaa !82
  %i.jl = zext i16 %i.jk to i32
  %i.jm = mul nuw nsw i32 %i.jl, 14
  %i.jn = load i16, ptr %i.o, align 2, !tbaa !82
  %i.jo = zext i16 %i.jn to i32
  %i.jp = mul nuw nsw i32 %i.ac, %i.jo
  %i.jq = load i16, ptr %i.b, align 2, !tbaa !82
  %i.jr = zext i16 %i.jq to i32
  %i.js = mul nuw nsw i32 %i.ag, %i.jr
  %i.jt = add nuw nsw i32 %i.jj, 16
  %i.ju = add nuw nsw i32 %i.jt, %i.jm
  %i.jv = add nuw nsw i32 %i.ju, %i.jp
  %i.jw = add nuw nsw i32 %i.jv, %i.js
  %i.jx = lshr i32 %i.jw, 5
  %i.jy = trunc i32 %i.jx to i16
  %i.jz = getelementptr i8, ptr %i.t, i64 26
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !82
  %i.ka = load i16, ptr %i.r, align 2, !tbaa !82
  %i.kb = zext i16 %i.ka to i32
  %i.kc = load i16, ptr %i.a, align 2, !tbaa !82
  %i.kd = zext i16 %i.kc to i32
  %i.ke = mul nuw nsw i32 %i.kd, 15
  %i.kf = load i16, ptr %i.p, align 2, !tbaa !82
  %i.kg = zext i16 %i.kf to i32
  %i.kh = mul nuw nsw i32 %i.ac, %i.kg
  %i.ki = load i16, ptr %i.b, align 2, !tbaa !82
  %i.kj = zext i16 %i.ki to i32
  %i.kk = mul nuw nsw i32 %i.ag, %i.kj
  %i.kl = add nuw nsw i32 %i.kb, 16
  %i.km = add nuw nsw i32 %i.kl, %i.ke
  %i.kn = add nuw nsw i32 %i.km, %i.kh
  %i.ko = add nuw nsw i32 %i.kn, %i.kk
  %i.kp = lshr i32 %i.ko, 5
  %i.kq = trunc i32 %i.kp to i16
  %i.kr = getelementptr i8, ptr %i.t, i64 28
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !82
  %i.ks = load i16, ptr %i.a, align 2, !tbaa !82
  %i.kt = zext i16 %i.ks to i32
  %i.ku = shl nuw nsw i32 %i.kt, 4
  %i.kv = load i16, ptr %i.q, align 2, !tbaa !82
  %i.kw = zext i16 %i.kv to i32
  %i.kx = mul nuw nsw i32 %i.ac, %i.kw
  %i.ky = load i16, ptr %i.b, align 2, !tbaa !82
  %i.kz = zext i16 %i.ky to i32
  %i.la = mul nuw nsw i32 %i.ag, %i.kz
  %i.lb = add nuw nsw i32 %i.ku, 16
  %i.lc = add nuw nsw i32 %i.lb, %i.kx
  %i.ld = add nuw nsw i32 %i.lc, %i.la
  %i.le = lshr i32 %i.ld, 5
  %i.lf = trunc i32 %i.le to i16
  %i.lg = getelementptr i8, ptr %i.t, i64 30
  store i16 %i.lf, ptr %i.lg, align 2, !tbaa !82
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %pred_planar_10.exit, label %.preheader, !llvm.loop !41

pred_planar_10.exit:                              ; preds = %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_3_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.c = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.d = insertelement <2 x ptr> %i.c, ptr %1, i64 1
  %i.e = getelementptr i8, <2 x ptr> %i.d, i64 66
  %i.f = mul i64 %3, 62
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep20 = getelementptr i8, ptr %i.g, i64 64 ; 2 uses
  %i.h = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.i = shufflevector <2 x ptr> %i.h, <2 x ptr> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x ptr> poison, ptr %i.b, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %1, i64 1
  %i.j = insertelement <2 x ptr> poison, ptr %scevgep20, i64 0
  %i.k = shufflevector <2 x ptr> %i.j, <2 x ptr> poison, <2 x i32> zeroinitializer
  %bound0 = icmp ult ptr %0, %i.b
  %bound1 = icmp ult ptr %2, %scevgep20
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %3, 4611686018427387904
  %stride.check = icmp ne i64 %.mask, 0
  %i.l = or i1 %found.conflict, %stride.check
  %i.m = icmp ult <2 x ptr> %i.i, %i.e
  %i.n = icmp ult <2 x ptr> %5, %i.k
  %i.o = and <2 x i1> %i.m, %i.n                  ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 0
  %conflict.rdx = or i1 %i.l, %i.p
  %i.q = extractelement <2 x i1> %i.o, i64 1
  %conflict.rdx27 = or i1 %conflict.rdx, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %middle.block
  %indvars.iv6 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next7, %middle.block ] ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv6 ; 2 uses
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 3 uses
  %i.v = mul nsw i64 %3, %indvars.iv6
  %i.w = getelementptr [2 x i8], ptr %0, i64 %i.v ; 5 uses
  %i.x = trunc i64 %indvars.iv6 to i32
  %i.y = sub i32 31, %i.x                         ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next7 to i32 ; 2 uses
  br i1 %conflict.rdx27, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader
  %broadcast.splatinsert34 = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat35 = shufflevector <8 x i32> %broadcast.splatinsert34, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aa = load i16, ptr %i.b, align 2, !tbaa !82, !alias.scope !371
  %broadcast.splatinsert32 = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat33 = shufflevector <8 x i16> %broadcast.splatinsert32, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ab = zext <8 x i16> %broadcast.splat33 to <8 x i32>
  %i.ac = mul nuw nsw <8 x i32> %broadcast.splat, %i.ab ; 4 uses
  %i.ad = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !372
  %broadcast.splatinsert30 = insertelement <8 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat31 = shufflevector <8 x i16> %broadcast.splatinsert30, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ae = zext <8 x i16> %broadcast.splat31 to <8 x i32> ; 4 uses
  %i.af = load i16, ptr %i.u, align 2, !tbaa !82, !alias.scope !373
  %broadcast.splatinsert28 = insertelement <8 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat29 = shufflevector <8 x i16> %broadcast.splatinsert28, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ag = zext <8 x i16> %broadcast.splat29 to <8 x i32> ; 4 uses
  %i.ah = mul nuw nsw <8 x i32> %i.ag, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.ai = mul nuw nsw <8 x i32> %i.ae, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %wide.load = load <8 x i16>, ptr %1, align 2, !tbaa !82, !alias.scope !372
  %i.aj = zext <8 x i16> %wide.load to <8 x i32>
  %i.ak = mul nuw nsw <8 x i32> %broadcast.splat35, %i.aj
  %i.al = add nuw nsw <8 x i32> %i.ah, splat (i32 32)
  %i.am = add nuw nsw <8 x i32> %i.al, %i.ai
  %i.an = add nuw nsw <8 x i32> %i.am, %i.ak
  %i.ao = add nuw nsw <8 x i32> %i.an, %i.ac
  %i.ap = lshr <8 x i32> %i.ao, splat (i32 6)
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  store <8 x i16> %i.aq, ptr %i.w, align 2, !tbaa !82, !alias.scope !374, !noalias !375
  %i.ar = mul nuw nsw <8 x i32> %i.ag, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.as = mul nuw nsw <8 x i32> %i.ae, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %wide.load.1 = load <8 x i16>, ptr %i.r, align 2, !tbaa !82, !alias.scope !372
  %i.at = zext <8 x i16> %wide.load.1 to <8 x i32>
  %i.au = mul nuw nsw <8 x i32> %broadcast.splat35, %i.at
  %i.av = add nuw nsw <8 x i32> %i.ar, splat (i32 32)
  %i.aw = add nuw nsw <8 x i32> %i.av, %i.as
  %i.ax = add nuw nsw <8 x i32> %i.aw, %i.au
  %i.ay = add nuw nsw <8 x i32> %i.ax, %i.ac
  %i.az = lshr <8 x i32> %i.ay, splat (i32 6)
  %i.ba = trunc <8 x i32> %i.az to <8 x i16>
  %i.bb = getelementptr i8, ptr %i.w, i64 16
  store <8 x i16> %i.ba, ptr %i.bb, align 2, !tbaa !82, !alias.scope !374, !noalias !375
  %i.bc = mul nuw nsw <8 x i32> %i.ag, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bd = mul nuw nsw <8 x i32> %i.ae, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %wide.load.2 = load <8 x i16>, ptr %i.s, align 2, !tbaa !82, !alias.scope !372
  %i.be = zext <8 x i16> %wide.load.2 to <8 x i32>
  %i.bf = mul nuw nsw <8 x i32> %broadcast.splat35, %i.be
  %i.bg = add nuw nsw <8 x i32> %i.bc, splat (i32 32)
  %i.bh = add nuw nsw <8 x i32> %i.bg, %i.bd
  %i.bi = add nuw nsw <8 x i32> %i.bh, %i.bf
  %i.bj = add nuw nsw <8 x i32> %i.bi, %i.ac
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 6)
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr i8, ptr %i.w, i64 32
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !82, !alias.scope !374, !noalias !375
  %i.bn = mul nuw nsw <8 x i32> %i.ag, <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bo = mul nuw nsw <8 x i32> %i.ae, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %wide.load.3 = load <8 x i16>, ptr %i.t, align 2, !tbaa !82, !alias.scope !372
  %i.bp = zext <8 x i16> %wide.load.3 to <8 x i32>
  %i.bq = mul nuw nsw <8 x i32> %broadcast.splat35, %i.bp
  %i.br = add nuw nsw <8 x i32> %i.bn, splat (i32 32)
  %i.bs = add nuw nsw <8 x i32> %i.br, %i.bo
  %i.bt = add nuw nsw <8 x i32> %i.bs, %i.bq
  %i.bu = add nuw nsw <8 x i32> %i.bt, %i.ac
  %i.bv = lshr <8 x i32> %i.bu, splat (i32 6)
  %i.bw = trunc <8 x i32> %i.bv to <8 x i16>
  %i.bx = getelementptr i8, ptr %i.w, i64 48
  store <8 x i16> %i.bw, ptr %i.bx, align 2, !tbaa !82, !alias.scope !374, !noalias !375
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader ] ; 4 uses
  %i.by = load i16, ptr %i.u, align 2, !tbaa !82
  %i.bz = zext i16 %i.by to i32
  %i.ca = trunc i64 %indvars.iv to i32
  %i.cb = sub i32 31, %i.ca
  %i.cc = mul nuw nsw i32 %i.cb, %i.bz
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cd = load i16, ptr %i.a, align 2, !tbaa !82
  %i.ce = zext i16 %i.cd to i32
  %i.cf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cg = mul nuw nsw i32 %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !82
  %i.cj = zext i16 %i.ci to i32
  %i.ck = mul nuw nsw i32 %i.y, %i.cj
  %i.cl = load i16, ptr %i.b, align 2, !tbaa !82
  %i.cm = zext i16 %i.cl to i32
  %i.cn = mul nuw nsw i32 %i.z, %i.cm
  %i.co = add nuw nsw i32 %i.cc, 32
  %i.cp = add nuw nsw i32 %i.co, %i.cg
  %i.cq = add nuw nsw i32 %i.cp, %i.ck
  %i.cr = add nuw nsw i32 %i.cq, %i.cn
  %i.cs = lshr i32 %i.cr, 6
  %i.ct = trunc i32 %i.cs to i16
  %i.cu = getelementptr [2 x i8], ptr %i.w, i64 %indvars.iv
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !82
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !370

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 32
  br i1 %exitcond9.not, label %pred_planar_10.exit, label %.preheader, !llvm.loop !41

pred_planar_10.exit:                              ; preds = %middle.block
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_dc_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = shl nuw i32 1, %4                        ; 12 uses
  %.not = icmp eq i32 %4, 31
  br i1 %.not, label %._crit_edge64.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp slt i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.e = and i32 %i.d, 2147483640
  %n.vec = zext nneg i32 %i.e to i64
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.d, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.f, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load = load <4 x i16>, ptr %i.g, align 2, !tbaa !82
  %wide.load93 = load <4 x i16>, ptr %i.h, align 2, !tbaa !82
  %i.i = zext <4 x i16> %wide.load to <4 x i32>
  %i.j = zext <4 x i16> %wide.load93 to <4 x i32>
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load94 = load <4 x i16>, ptr %i.k, align 2, !tbaa !82
  %wide.load95 = load <4 x i16>, ptr %i.l, align 2, !tbaa !82
  %i.m = zext <4 x i16> %wide.load94 to <4 x i32>
  %i.n = zext <4 x i16> %wide.load95 to <4 x i32>
  %i.o = add <4 x i32> %vec.phi, %i.i
  %i.p = add <4 x i32> %vec.phi92, %i.j
  %i.q = add <4 x i32> %i.o, %i.m                 ; 2 uses
  %i.r = add <4 x i32> %i.p, %i.n                 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.preheader57.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.u = load i16, ptr %2, align 2, !tbaa !82
  %i.v = zext i16 %i.u to i32
  %i.w = load i16, ptr %1, align 2, !tbaa !82
  %i.x = zext i16 %i.w to i32
  %i.y = add nuw i32 %i.d, %i.v
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %exitcond.not = icmp slt i32 %i.d, 2
  br i1 %exitcond.not, label %.preheader57.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !82
  %i.ac = zext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !82
  %i.af = zext i16 %i.ae to i32
  %i.ag = add i32 %i.z, %i.ac
  %i.ah = add i32 %i.ag, %i.af                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %4, 1
  br i1 %exitcond.not.1, label %.preheader57.preheader, label %.lr.ph.3
end_hunk_1
begin_hunk_2_@pred_planar_2_12:bb.a
  %i.ek = mul nuw nsw i32 %i.ej, 7
  %i.el = load i16, ptr %i.h, align 2, !tbaa !82
  %i.em = zext i16 %i.el to i32
  %i.en = mul nuw nsw i32 %i.ac, %i.em
  %i.eo = load i16, ptr %i.b, align 2, !tbaa !82
  %i.ep = zext i16 %i.eo to i32
  %i.eq = mul nuw nsw i32 %i.ag, %i.ep
  %i.er = add nuw nsw i32 %i.eh, 16
  %i.es = add nuw nsw i32 %i.er, %i.ek
  %i.et = add nuw nsw i32 %i.es, %i.en
  %i.eu = add nuw nsw i32 %i.et, %i.eq
  %i.ev = lshr i32 %i.eu, 5
  %i.ew = trunc i32 %i.ev to i16
  %i.ex = getelementptr i8, ptr %i.t, i64 12
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !82
  %i.ey = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ez = zext i16 %i.ey to i32
  %i.fa = load i16, ptr %i.a, align 2, !tbaa !82
  %i.fb = zext i16 %i.fa to i32
  %i.fc = load i16, ptr %i.i, align 2, !tbaa !82
  %i.fd = zext i16 %i.fc to i32
  %i.fe = mul nuw nsw i32 %i.ac, %i.fd
  %i.ff = load i16, ptr %i.b, align 2, !tbaa !82
  %i.fg = zext i16 %i.ff to i32
  %i.fh = mul nuw nsw i32 %i.ag, %i.fg
  %i.fi = add nuw nsw i32 %i.ez, %i.fb
  %i.fj = shl nuw nsw i32 %i.fi, 3
  %i.fk = add nuw nsw i32 %i.fj, 16
  %i.fl = add nuw nsw i32 %i.fk, %i.fe
  %i.fm = add nuw nsw i32 %i.fl, %i.fh
  %i.fn = lshr i32 %i.fm, 5
  %i.fo = trunc i32 %i.fn to i16
  %i.fp = getelementptr i8, ptr %i.t, i64 14
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !82
  %i.fq = load i16, ptr %i.r, align 2, !tbaa !82
  %i.fr = zext i16 %i.fq to i32
  %i.fs = mul nuw nsw i32 %i.fr, 7
  %i.ft = load i16, ptr %i.a, align 2, !tbaa !82
  %i.fu = zext i16 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fu, 9
  %i.fw = load i16, ptr %i.j, align 2, !tbaa !82
  %i.fx = zext i16 %i.fw to i32
  %i.fy = mul nuw nsw i32 %i.ac, %i.fx
  %i.fz = load i16, ptr %i.b, align 2, !tbaa !82
  %i.ga = zext i16 %i.fz to i32
  %i.gb = mul nuw nsw i32 %i.ag, %i.ga
  %i.gc = add nuw nsw i32 %i.fs, 16
  %i.gd = add nuw nsw i32 %i.gc, %i.fv
  %i.ge = add nuw nsw i32 %i.gd, %i.fy
  %i.gf = add nuw nsw i32 %i.ge, %i.gb
  %i.gg = lshr i32 %i.gf, 5
  %i.gh = trunc i32 %i.gg to i16
  %i.gi = getelementptr i8, ptr %i.t, i64 16
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !82
  %i.gj = load i16, ptr %i.r, align 2, !tbaa !82
  %i.gk = zext i16 %i.gj to i32
  %i.gl = mul nuw nsw i32 %i.gk, 6
  %i.gm = load i16, ptr %i.a, align 2, !tbaa !82
  %i.gn = zext i16 %i.gm to i32
  %i.go = mul nuw nsw i32 %i.gn, 10
  %i.gp = load i16, ptr %i.k, align 2, !tbaa !82
  %i.gq = zext i16 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.ac, %i.gq
  %i.gs = load i16, ptr %i.b, align 2, !tbaa !82
  %i.gt = zext i16 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.ag, %i.gt
  %i.gv = add nuw nsw i32 %i.gl, 16
  %i.gw = add nuw nsw i32 %i.gv, %i.go
  %i.gx = add nuw nsw i32 %i.gw, %i.gr
  %i.gy = add nuw nsw i32 %i.gx, %i.gu
  %i.gz = lshr i32 %i.gy, 5
  %i.ha = trunc i32 %i.gz to i16
  %i.hb = getelementptr i8, ptr %i.t, i64 18
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !82
  %i.hc = load i16, ptr %i.r, align 2, !tbaa !82
  %i.hd = zext i16 %i.hc to i32
  %i.he = mul nuw nsw i32 %i.hd, 5
  %i.hf = load i16, ptr %i.a, align 2, !tbaa !82
  %i.hg = zext i16 %i.hf to i32
  %i.hh = mul nuw nsw i32 %i.hg, 11
  %i.hi = load i16, ptr %i.l, align 2, !tbaa !82
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul nuw nsw i32 %i.ac, %i.hj
  %i.hl = load i16, ptr %i.b, align 2, !tbaa !82
  %i.hm = zext i16 %i.hl to i32
  %i.hn = mul nuw nsw i32 %i.ag, %i.hm
  %i.ho = add nuw nsw i32 %i.he, 16
  %i.hp = add nuw nsw i32 %i.ho, %i.hh
  %i.hq = add nuw nsw i32 %i.hp, %i.hk
  %i.hr = add nuw nsw i32 %i.hq, %i.hn
  %i.hs = lshr i32 %i.hr, 5
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = getelementptr i8, ptr %i.t, i64 20
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !82
  %i.hv = load i16, ptr %i.r, align 2, !tbaa !82
  %i.hw = zext i16 %i.hv to i32
  %i.hx = shl nuw nsw i32 %i.hw, 2
  %i.hy = load i16, ptr %i.a, align 2, !tbaa !82
  %i.hz = zext i16 %i.hy to i32
  %i.ia = mul nuw nsw i32 %i.hz, 12
  %i.ib = load i16, ptr %i.m, align 2, !tbaa !82
  %i.ic = zext i16 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ac, %i.ic
  %i.ie = load i16, ptr %i.b, align 2, !tbaa !82
  %i.if = zext i16 %i.ie to i32
  %i.ig = mul nuw nsw i32 %i.ag, %i.if
  %i.ih = add nuw nsw i32 %i.hx, 16
  %i.ii = add nuw nsw i32 %i.ih, %i.ia
  %i.ij = add nuw nsw i32 %i.ii, %i.id
  %i.ik = add nuw nsw i32 %i.ij, %i.ig
  %i.il = lshr i32 %i.ik, 5
  %i.im = trunc i32 %i.il to i16
  %i.in = getelementptr i8, ptr %i.t, i64 22
  store i16 %i.im, ptr %i.in, align 2, !tbaa !82
  %i.io = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ip = zext i16 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.ip, 3
  %i.ir = load i16, ptr %i.a, align 2, !tbaa !82
  %i.is = zext i16 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.is, 13
  %i.iu = load i16, ptr %i.n, align 2, !tbaa !82
  %i.iv = zext i16 %i.iu to i32
  %i.iw = mul nuw nsw i32 %i.ac, %i.iv
  %i.ix = load i16, ptr %i.b, align 2, !tbaa !82
  %i.iy = zext i16 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.ag, %i.iy
  %i.ja = add nuw nsw i32 %i.iq, 16
  %i.jb = add nuw nsw i32 %i.ja, %i.it
  %i.jc = add nuw nsw i32 %i.jb, %i.iw
  %i.jd = add nuw nsw i32 %i.jc, %i.iz
  %i.je = lshr i32 %i.jd, 5
  %i.jf = trunc i32 %i.je to i16
  %i.jg = getelementptr i8, ptr %i.t, i64 24
  store i16 %i.jf, ptr %i.jg, align 2, !tbaa !82
  %i.jh = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ji = zext i16 %i.jh to i32
  %i.jj = shl nuw nsw i32 %i.ji, 1
  %i.jk = load i16, ptr %i.a, align 2, !tbaa !82
  %i.jl = zext i16 %i.jk to i32
  %i.jm = mul nuw nsw i32 %i.jl, 14
  %i.jn = load i16, ptr %i.o, align 2, !tbaa !82
  %i.jo = zext i16 %i.jn to i32
  %i.jp = mul nuw nsw i32 %i.ac, %i.jo
  %i.jq = load i16, ptr %i.b, align 2, !tbaa !82
  %i.jr = zext i16 %i.jq to i32
  %i.js = mul nuw nsw i32 %i.ag, %i.jr
  %i.jt = add nuw nsw i32 %i.jj, 16
  %i.ju = add nuw nsw i32 %i.jt, %i.jm
  %i.jv = add nuw nsw i32 %i.ju, %i.jp
  %i.jw = add nuw nsw i32 %i.jv, %i.js
  %i.jx = lshr i32 %i.jw, 5
  %i.jy = trunc i32 %i.jx to i16
  %i.jz = getelementptr i8, ptr %i.t, i64 26
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !82
  %i.ka = load i16, ptr %i.r, align 2, !tbaa !82
  %i.kb = zext i16 %i.ka to i32
  %i.kc = load i16, ptr %i.a, align 2, !tbaa !82
  %i.kd = zext i16 %i.kc to i32
  %i.ke = mul nuw nsw i32 %i.kd, 15
  %i.kf = load i16, ptr %i.p, align 2, !tbaa !82
  %i.kg = zext i16 %i.kf to i32
  %i.kh = mul nuw nsw i32 %i.ac, %i.kg
  %i.ki = load i16, ptr %i.b, align 2, !tbaa !82
  %i.kj = zext i16 %i.ki to i32
  %i.kk = mul nuw nsw i32 %i.ag, %i.kj
  %i.kl = add nuw nsw i32 %i.kb, 16
  %i.km = add nuw nsw i32 %i.kl, %i.ke
  %i.kn = add nuw nsw i32 %i.km, %i.kh
  %i.ko = add nuw nsw i32 %i.kn, %i.kk
  %i.kp = lshr i32 %i.ko, 5
  %i.kq = trunc i32 %i.kp to i16
  %i.kr = getelementptr i8, ptr %i.t, i64 28
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !82
  %i.ks = load i16, ptr %i.a, align 2, !tbaa !82
  %i.kt = zext i16 %i.ks to i32
  %i.ku = shl nuw nsw i32 %i.kt, 4
  %i.kv = load i16, ptr %i.q, align 2, !tbaa !82
  %i.kw = zext i16 %i.kv to i32
  %i.kx = mul nuw nsw i32 %i.ac, %i.kw
  %i.ky = load i16, ptr %i.b, align 2, !tbaa !82
  %i.kz = zext i16 %i.ky to i32
  %i.la = mul nuw nsw i32 %i.ag, %i.kz
  %i.lb = add nuw nsw i32 %i.ku, 16
  %i.lc = add nuw nsw i32 %i.lb, %i.kx
  %i.ld = add nuw nsw i32 %i.lc, %i.la
  %i.le = lshr i32 %i.ld, 5
  %i.lf = trunc i32 %i.le to i16
  %i.lg = getelementptr i8, ptr %i.t, i64 30
  store i16 %i.lf, ptr %i.lg, align 2, !tbaa !82
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %pred_planar_12.exit, label %.preheader, !llvm.loop !54

pred_planar_12.exit:                              ; preds = %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_3_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.c = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.d = insertelement <2 x ptr> %i.c, ptr %1, i64 1
  %i.e = getelementptr i8, <2 x ptr> %i.d, i64 66
  %i.f = mul i64 %3, 62
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep20 = getelementptr i8, ptr %i.g, i64 64 ; 2 uses
  %i.h = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.i = shufflevector <2 x ptr> %i.h, <2 x ptr> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x ptr> poison, ptr %i.b, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %1, i64 1
  %i.j = insertelement <2 x ptr> poison, ptr %scevgep20, i64 0
  %i.k = shufflevector <2 x ptr> %i.j, <2 x ptr> poison, <2 x i32> zeroinitializer
  %bound0 = icmp ult ptr %0, %i.b
  %bound1 = icmp ult ptr %2, %scevgep20
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %3, 4611686018427387904
  %stride.check = icmp ne i64 %.mask, 0
  %i.l = or i1 %found.conflict, %stride.check
  %i.m = icmp ult <2 x ptr> %i.i, %i.e
  %i.n = icmp ult <2 x ptr> %5, %i.k
  %i.o = and <2 x i1> %i.m, %i.n                  ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 0
  %conflict.rdx = or i1 %i.l, %i.p
  %i.q = extractelement <2 x i1> %i.o, i64 1
  %conflict.rdx27 = or i1 %conflict.rdx, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %middle.block
  %indvars.iv6 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next7, %middle.block ] ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv6 ; 2 uses
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 3 uses
  %i.v = mul nsw i64 %3, %indvars.iv6
  %i.w = getelementptr [2 x i8], ptr %0, i64 %i.v ; 5 uses
  %i.x = trunc i64 %indvars.iv6 to i32
  %i.y = sub i32 31, %i.x                         ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next7 to i32 ; 2 uses
  br i1 %conflict.rdx27, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader
  %broadcast.splatinsert34 = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat35 = shufflevector <8 x i32> %broadcast.splatinsert34, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aa = load i16, ptr %i.b, align 2, !tbaa !82, !alias.scope !464
  %broadcast.splatinsert32 = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat33 = shufflevector <8 x i16> %broadcast.splatinsert32, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ab = zext <8 x i16> %broadcast.splat33 to <8 x i32>
  %i.ac = mul nuw nsw <8 x i32> %broadcast.splat, %i.ab ; 4 uses
  %i.ad = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !465
  %broadcast.splatinsert30 = insertelement <8 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat31 = shufflevector <8 x i16> %broadcast.splatinsert30, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ae = zext <8 x i16> %broadcast.splat31 to <8 x i32> ; 4 uses
  %i.af = load i16, ptr %i.u, align 2, !tbaa !82, !alias.scope !466
  %broadcast.splatinsert28 = insertelement <8 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat29 = shufflevector <8 x i16> %broadcast.splatinsert28, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ag = zext <8 x i16> %broadcast.splat29 to <8 x i32> ; 4 uses
  %i.ah = mul nuw nsw <8 x i32> %i.ag, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.ai = mul nuw nsw <8 x i32> %i.ae, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %wide.load = load <8 x i16>, ptr %1, align 2, !tbaa !82, !alias.scope !465
  %i.aj = zext <8 x i16> %wide.load to <8 x i32>
  %i.ak = mul nuw nsw <8 x i32> %broadcast.splat35, %i.aj
  %i.al = add nuw nsw <8 x i32> %i.ah, splat (i32 32)
  %i.am = add nuw nsw <8 x i32> %i.al, %i.ai
  %i.an = add nuw nsw <8 x i32> %i.am, %i.ak
  %i.ao = add nuw nsw <8 x i32> %i.an, %i.ac
  %i.ap = lshr <8 x i32> %i.ao, splat (i32 6)
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  store <8 x i16> %i.aq, ptr %i.w, align 2, !tbaa !82, !alias.scope !467, !noalias !468
  %i.ar = mul nuw nsw <8 x i32> %i.ag, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.as = mul nuw nsw <8 x i32> %i.ae, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %wide.load.1 = load <8 x i16>, ptr %i.r, align 2, !tbaa !82, !alias.scope !465
  %i.at = zext <8 x i16> %wide.load.1 to <8 x i32>
  %i.au = mul nuw nsw <8 x i32> %broadcast.splat35, %i.at
  %i.av = add nuw nsw <8 x i32> %i.ar, splat (i32 32)
  %i.aw = add nuw nsw <8 x i32> %i.av, %i.as
  %i.ax = add nuw nsw <8 x i32> %i.aw, %i.au
  %i.ay = add nuw nsw <8 x i32> %i.ax, %i.ac
  %i.az = lshr <8 x i32> %i.ay, splat (i32 6)
  %i.ba = trunc <8 x i32> %i.az to <8 x i16>
  %i.bb = getelementptr i8, ptr %i.w, i64 16
  store <8 x i16> %i.ba, ptr %i.bb, align 2, !tbaa !82, !alias.scope !467, !noalias !468
  %i.bc = mul nuw nsw <8 x i32> %i.ag, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bd = mul nuw nsw <8 x i32> %i.ae, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %wide.load.2 = load <8 x i16>, ptr %i.s, align 2, !tbaa !82, !alias.scope !465
  %i.be = zext <8 x i16> %wide.load.2 to <8 x i32>
  %i.bf = mul nuw nsw <8 x i32> %broadcast.splat35, %i.be
  %i.bg = add nuw nsw <8 x i32> %i.bc, splat (i32 32)
  %i.bh = add nuw nsw <8 x i32> %i.bg, %i.bd
  %i.bi = add nuw nsw <8 x i32> %i.bh, %i.bf
  %i.bj = add nuw nsw <8 x i32> %i.bi, %i.ac
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 6)
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr i8, ptr %i.w, i64 32
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !82, !alias.scope !467, !noalias !468
  %i.bn = mul nuw nsw <8 x i32> %i.ag, <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bo = mul nuw nsw <8 x i32> %i.ae, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %wide.load.3 = load <8 x i16>, ptr %i.t, align 2, !tbaa !82, !alias.scope !465
  %i.bp = zext <8 x i16> %wide.load.3 to <8 x i32>
  %i.bq = mul nuw nsw <8 x i32> %broadcast.splat35, %i.bp
  %i.br = add nuw nsw <8 x i32> %i.bn, splat (i32 32)
  %i.bs = add nuw nsw <8 x i32> %i.br, %i.bo
  %i.bt = add nuw nsw <8 x i32> %i.bs, %i.bq
  %i.bu = add nuw nsw <8 x i32> %i.bt, %i.ac
  %i.bv = lshr <8 x i32> %i.bu, splat (i32 6)
  %i.bw = trunc <8 x i32> %i.bv to <8 x i16>
  %i.bx = getelementptr i8, ptr %i.w, i64 48
  store <8 x i16> %i.bw, ptr %i.bx, align 2, !tbaa !82, !alias.scope !467, !noalias !468
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader ] ; 4 uses
  %i.by = load i16, ptr %i.u, align 2, !tbaa !82
  %i.bz = zext i16 %i.by to i32
  %i.ca = trunc i64 %indvars.iv to i32
  %i.cb = sub i32 31, %i.ca
  %i.cc = mul nuw nsw i32 %i.cb, %i.bz
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cd = load i16, ptr %i.a, align 2, !tbaa !82
  %i.ce = zext i16 %i.cd to i32
  %i.cf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cg = mul nuw nsw i32 %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !82
  %i.cj = zext i16 %i.ci to i32
  %i.ck = mul nuw nsw i32 %i.y, %i.cj
  %i.cl = load i16, ptr %i.b, align 2, !tbaa !82
  %i.cm = zext i16 %i.cl to i32
  %i.cn = mul nuw nsw i32 %i.z, %i.cm
  %i.co = add nuw nsw i32 %i.cc, 32
  %i.cp = add nuw nsw i32 %i.co, %i.cg
  %i.cq = add nuw nsw i32 %i.cp, %i.ck
  %i.cr = add nuw nsw i32 %i.cq, %i.cn
  %i.cs = lshr i32 %i.cr, 6
  %i.ct = trunc i32 %i.cs to i16
  %i.cu = getelementptr [2 x i8], ptr %i.w, i64 %indvars.iv
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !82
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !463

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 32
  br i1 %exitcond9.not, label %pred_planar_12.exit, label %.preheader, !llvm.loop !54

pred_planar_12.exit:                              ; preds = %middle.block
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_dc_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = shl nuw i32 1, %4                        ; 12 uses
  %.not = icmp eq i32 %4, 31
  br i1 %.not, label %._crit_edge64.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp slt i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.e = and i32 %i.d, 2147483640
  %n.vec = zext nneg i32 %i.e to i64
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.d, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.f, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load = load <4 x i16>, ptr %i.g, align 2, !tbaa !82
  %wide.load93 = load <4 x i16>, ptr %i.h, align 2, !tbaa !82
  %i.i = zext <4 x i16> %wide.load to <4 x i32>
  %i.j = zext <4 x i16> %wide.load93 to <4 x i32>
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load94 = load <4 x i16>, ptr %i.k, align 2, !tbaa !82
  %wide.load95 = load <4 x i16>, ptr %i.l, align 2, !tbaa !82
  %i.m = zext <4 x i16> %wide.load94 to <4 x i32>
  %i.n = zext <4 x i16> %wide.load95 to <4 x i32>
  %i.o = add <4 x i32> %vec.phi, %i.i
  %i.p = add <4 x i32> %vec.phi92, %i.j
  %i.q = add <4 x i32> %i.o, %i.m                 ; 2 uses
  %i.r = add <4 x i32> %i.p, %i.n                 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !469

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.preheader57.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.u = load i16, ptr %2, align 2, !tbaa !82
  %i.v = zext i16 %i.u to i32
  %i.w = load i16, ptr %1, align 2, !tbaa !82
  %i.x = zext i16 %i.w to i32
  %i.y = add nuw i32 %i.d, %i.v
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %exitcond.not = icmp slt i32 %i.d, 2
  br i1 %exitcond.not, label %.preheader57.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !82
  %i.ac = zext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !82
  %i.af = zext i16 %i.ae to i32
  %i.ag = add i32 %i.z, %i.ac
  %i.ah = add i32 %i.ag, %i.af                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %4, 1
  br i1 %exitcond.not.1, label %.preheader57.preheader, label %.lr.ph.3
end_hunk_2
begin_hunk_3_@pred_planar_2_8:bb.a
  %i.ek = mul nuw nsw i32 %i.ej, 7
  %i.el = load i8, ptr %i.h, align 1, !tbaa !78
  %i.em = zext i8 %i.el to i32
  %i.en = mul nuw nsw i32 %i.ac, %i.em
  %i.eo = load i8, ptr %i.b, align 1, !tbaa !78
  %i.ep = zext i8 %i.eo to i32
  %i.eq = mul nuw nsw i32 %i.ag, %i.ep
  %i.er = add nuw nsw i32 %i.eh, 16
  %i.es = add nuw nsw i32 %i.er, %i.ek
  %i.et = add nuw nsw i32 %i.es, %i.en
  %i.eu = add nuw nsw i32 %i.et, %i.eq
  %i.ev = lshr i32 %i.eu, 5
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = getelementptr i8, ptr %i.t, i64 6
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !78
  %i.ey = load i8, ptr %i.r, align 1, !tbaa !78
  %i.ez = zext i8 %i.ey to i32
  %i.fa = load i8, ptr %i.a, align 1, !tbaa !78
  %i.fb = zext i8 %i.fa to i32
  %i.fc = load i8, ptr %i.i, align 1, !tbaa !78
  %i.fd = zext i8 %i.fc to i32
  %i.fe = mul nuw nsw i32 %i.ac, %i.fd
  %i.ff = load i8, ptr %i.b, align 1, !tbaa !78
  %i.fg = zext i8 %i.ff to i32
  %i.fh = mul nuw nsw i32 %i.ag, %i.fg
  %i.fi = add nuw nsw i32 %i.ez, %i.fb
  %i.fj = shl nuw nsw i32 %i.fi, 3
  %i.fk = add nuw nsw i32 %i.fj, 16
  %i.fl = add nuw nsw i32 %i.fk, %i.fe
  %i.fm = add nuw nsw i32 %i.fl, %i.fh
  %i.fn = lshr i32 %i.fm, 5
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = getelementptr i8, ptr %i.t, i64 7
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !78
  %i.fq = load i8, ptr %i.r, align 1, !tbaa !78
  %i.fr = zext i8 %i.fq to i32
  %i.fs = mul nuw nsw i32 %i.fr, 7
  %i.ft = load i8, ptr %i.a, align 1, !tbaa !78
  %i.fu = zext i8 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fu, 9
  %i.fw = load i8, ptr %i.j, align 1, !tbaa !78
  %i.fx = zext i8 %i.fw to i32
  %i.fy = mul nuw nsw i32 %i.ac, %i.fx
  %i.fz = load i8, ptr %i.b, align 1, !tbaa !78
  %i.ga = zext i8 %i.fz to i32
  %i.gb = mul nuw nsw i32 %i.ag, %i.ga
  %i.gc = add nuw nsw i32 %i.fs, 16
  %i.gd = add nuw nsw i32 %i.gc, %i.fv
  %i.ge = add nuw nsw i32 %i.gd, %i.fy
  %i.gf = add nuw nsw i32 %i.ge, %i.gb
  %i.gg = lshr i32 %i.gf, 5
  %i.gh = trunc i32 %i.gg to i8
  %i.gi = getelementptr i8, ptr %i.t, i64 8
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !78
  %i.gj = load i8, ptr %i.r, align 1, !tbaa !78
  %i.gk = zext i8 %i.gj to i32
  %i.gl = mul nuw nsw i32 %i.gk, 6
  %i.gm = load i8, ptr %i.a, align 1, !tbaa !78
  %i.gn = zext i8 %i.gm to i32
  %i.go = mul nuw nsw i32 %i.gn, 10
  %i.gp = load i8, ptr %i.k, align 1, !tbaa !78
  %i.gq = zext i8 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.ac, %i.gq
  %i.gs = load i8, ptr %i.b, align 1, !tbaa !78
  %i.gt = zext i8 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.ag, %i.gt
  %i.gv = add nuw nsw i32 %i.gl, 16
  %i.gw = add nuw nsw i32 %i.gv, %i.go
  %i.gx = add nuw nsw i32 %i.gw, %i.gr
  %i.gy = add nuw nsw i32 %i.gx, %i.gu
  %i.gz = lshr i32 %i.gy, 5
  %i.ha = trunc i32 %i.gz to i8
  %i.hb = getelementptr i8, ptr %i.t, i64 9
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !78
  %i.hc = load i8, ptr %i.r, align 1, !tbaa !78
  %i.hd = zext i8 %i.hc to i32
  %i.he = mul nuw nsw i32 %i.hd, 5
  %i.hf = load i8, ptr %i.a, align 1, !tbaa !78
  %i.hg = zext i8 %i.hf to i32
  %i.hh = mul nuw nsw i32 %i.hg, 11
  %i.hi = load i8, ptr %i.l, align 1, !tbaa !78
  %i.hj = zext i8 %i.hi to i32
  %i.hk = mul nuw nsw i32 %i.ac, %i.hj
  %i.hl = load i8, ptr %i.b, align 1, !tbaa !78
  %i.hm = zext i8 %i.hl to i32
  %i.hn = mul nuw nsw i32 %i.ag, %i.hm
  %i.ho = add nuw nsw i32 %i.he, 16
  %i.hp = add nuw nsw i32 %i.ho, %i.hh
  %i.hq = add nuw nsw i32 %i.hp, %i.hk
  %i.hr = add nuw nsw i32 %i.hq, %i.hn
  %i.hs = lshr i32 %i.hr, 5
  %i.ht = trunc i32 %i.hs to i8
  %i.hu = getelementptr i8, ptr %i.t, i64 10
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !78
  %i.hv = load i8, ptr %i.r, align 1, !tbaa !78
  %i.hw = zext i8 %i.hv to i32
  %i.hx = shl nuw nsw i32 %i.hw, 2
  %i.hy = load i8, ptr %i.a, align 1, !tbaa !78
  %i.hz = zext i8 %i.hy to i32
  %i.ia = mul nuw nsw i32 %i.hz, 12
  %i.ib = load i8, ptr %i.m, align 1, !tbaa !78
  %i.ic = zext i8 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ac, %i.ic
  %i.ie = load i8, ptr %i.b, align 1, !tbaa !78
  %i.if = zext i8 %i.ie to i32
  %i.ig = mul nuw nsw i32 %i.ag, %i.if
  %i.ih = add nuw nsw i32 %i.hx, 16
  %i.ii = add nuw nsw i32 %i.ih, %i.ia
  %i.ij = add nuw nsw i32 %i.ii, %i.id
  %i.ik = add nuw nsw i32 %i.ij, %i.ig
  %i.il = lshr i32 %i.ik, 5
  %i.im = trunc i32 %i.il to i8
  %i.in = getelementptr i8, ptr %i.t, i64 11
  store i8 %i.im, ptr %i.in, align 1, !tbaa !78
  %i.io = load i8, ptr %i.r, align 1, !tbaa !78
  %i.ip = zext i8 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.ip, 3
  %i.ir = load i8, ptr %i.a, align 1, !tbaa !78
  %i.is = zext i8 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.is, 13
  %i.iu = load i8, ptr %i.n, align 1, !tbaa !78
  %i.iv = zext i8 %i.iu to i32
  %i.iw = mul nuw nsw i32 %i.ac, %i.iv
  %i.ix = load i8, ptr %i.b, align 1, !tbaa !78
  %i.iy = zext i8 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.ag, %i.iy
  %i.ja = add nuw nsw i32 %i.iq, 16
  %i.jb = add nuw nsw i32 %i.ja, %i.it
  %i.jc = add nuw nsw i32 %i.jb, %i.iw
  %i.jd = add nuw nsw i32 %i.jc, %i.iz
  %i.je = lshr i32 %i.jd, 5
  %i.jf = trunc i32 %i.je to i8
  %i.jg = getelementptr i8, ptr %i.t, i64 12
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !78
  %i.jh = load i8, ptr %i.r, align 1, !tbaa !78
  %i.ji = zext i8 %i.jh to i32
  %i.jj = shl nuw nsw i32 %i.ji, 1
  %i.jk = load i8, ptr %i.a, align 1, !tbaa !78
  %i.jl = zext i8 %i.jk to i32
  %i.jm = mul nuw nsw i32 %i.jl, 14
  %i.jn = load i8, ptr %i.o, align 1, !tbaa !78
  %i.jo = zext i8 %i.jn to i32
  %i.jp = mul nuw nsw i32 %i.ac, %i.jo
  %i.jq = load i8, ptr %i.b, align 1, !tbaa !78
  %i.jr = zext i8 %i.jq to i32
  %i.js = mul nuw nsw i32 %i.ag, %i.jr
  %i.jt = add nuw nsw i32 %i.jj, 16
  %i.ju = add nuw nsw i32 %i.jt, %i.jm
  %i.jv = add nuw nsw i32 %i.ju, %i.jp
  %i.jw = add nuw nsw i32 %i.jv, %i.js
  %i.jx = lshr i32 %i.jw, 5
  %i.jy = trunc i32 %i.jx to i8
  %i.jz = getelementptr i8, ptr %i.t, i64 13
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !78
  %i.ka = load i8, ptr %i.r, align 1, !tbaa !78
  %i.kb = zext i8 %i.ka to i32
  %i.kc = load i8, ptr %i.a, align 1, !tbaa !78
  %i.kd = zext i8 %i.kc to i32
  %i.ke = mul nuw nsw i32 %i.kd, 15
  %i.kf = load i8, ptr %i.p, align 1, !tbaa !78
  %i.kg = zext i8 %i.kf to i32
  %i.kh = mul nuw nsw i32 %i.ac, %i.kg
  %i.ki = load i8, ptr %i.b, align 1, !tbaa !78
  %i.kj = zext i8 %i.ki to i32
  %i.kk = mul nuw nsw i32 %i.ag, %i.kj
  %i.kl = add nuw nsw i32 %i.kb, 16
  %i.km = add nuw nsw i32 %i.kl, %i.ke
  %i.kn = add nuw nsw i32 %i.km, %i.kh
  %i.ko = add nuw nsw i32 %i.kn, %i.kk
  %i.kp = lshr i32 %i.ko, 5
  %i.kq = trunc i32 %i.kp to i8
  %i.kr = getelementptr i8, ptr %i.t, i64 14
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !78
  %i.ks = load i8, ptr %i.a, align 1, !tbaa !78
  %i.kt = zext i8 %i.ks to i32
  %i.ku = shl nuw nsw i32 %i.kt, 4
  %i.kv = load i8, ptr %i.q, align 1, !tbaa !78
  %i.kw = zext i8 %i.kv to i32
  %i.kx = mul nuw nsw i32 %i.ac, %i.kw
  %i.ky = load i8, ptr %i.b, align 1, !tbaa !78
  %i.kz = zext i8 %i.ky to i32
  %i.la = mul nuw nsw i32 %i.ag, %i.kz
  %i.lb = add nuw nsw i32 %i.ku, 16
  %i.lc = add nuw nsw i32 %i.lb, %i.kx
  %i.ld = add nuw nsw i32 %i.lc, %i.la
  %i.le = lshr i32 %i.ld, 5
  %i.lf = trunc i32 %i.le to i8
  %i.lg = getelementptr i8, ptr %i.t, i64 15
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !78
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %pred_planar_8.exit, label %.preheader, !llvm.loop !67

pred_planar_8.exit:                               ; preds = %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_3_8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.c = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.d = insertelement <2 x ptr> %i.c, ptr %1, i64 1
  %i.e = getelementptr i8, <2 x ptr> %i.d, i64 33
  %i.f = mul i64 %3, 31
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep20 = getelementptr i8, ptr %i.g, i64 32 ; 2 uses
  %i.h = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.i = shufflevector <2 x ptr> %i.h, <2 x ptr> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x ptr> poison, ptr %i.b, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %1, i64 1
  %i.j = insertelement <2 x ptr> poison, ptr %scevgep20, i64 0
  %i.k = shufflevector <2 x ptr> %i.j, <2 x ptr> poison, <2 x i32> zeroinitializer
  %bound0 = icmp ult ptr %0, %i.b
  %bound1 = icmp ult ptr %2, %scevgep20
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %3, 0
  %i.l = or i1 %found.conflict, %stride.check
  %i.m = icmp ult <2 x ptr> %i.i, %i.e
  %i.n = icmp ult <2 x ptr> %5, %i.k
  %i.o = and <2 x i1> %i.m, %i.n                  ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 0
  %conflict.rdx = or i1 %i.l, %i.p
  %i.q = extractelement <2 x i1> %i.o, i64 1
  %conflict.rdx27 = or i1 %conflict.rdx, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %middle.block
  %indvars.iv6 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next7, %middle.block ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv6 ; 2 uses
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 3 uses
  %i.t = mul nsw i64 %3, %indvars.iv6
  %i.u = getelementptr i8, ptr %0, i64 %i.t       ; 3 uses
  %i.v = trunc i64 %indvars.iv6 to i16
  %i.w = sub i16 31, %i.v                         ; 2 uses
  %i.x = trunc i64 %indvars.iv.next7 to i16       ; 2 uses
  br i1 %conflict.rdx27, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader
  %broadcast.splatinsert34 = insertelement <16 x i16> poison, i16 %i.w, i64 0
  %broadcast.splat35 = shufflevector <16 x i16> %broadcast.splatinsert34, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.y = load i8, ptr %i.b, align 1, !tbaa !78, !alias.scope !553
  %broadcast.splatinsert32 = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %broadcast.splat33 = shufflevector <16 x i8> %broadcast.splatinsert32, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.z = zext <16 x i8> %broadcast.splat33 to <16 x i16>
  %i.aa = mul <16 x i16> %broadcast.splat, %i.z   ; 2 uses
  %i.ab = load i8, ptr %i.a, align 1, !tbaa !78, !alias.scope !554
  %broadcast.splatinsert30 = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %broadcast.splat31 = shufflevector <16 x i8> %broadcast.splatinsert30, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ac = zext <16 x i8> %broadcast.splat31 to <16 x i16> ; 2 uses
  %i.ad = load i8, ptr %i.s, align 1, !tbaa !78, !alias.scope !555
  %broadcast.splatinsert28 = insertelement <16 x i8> poison, i8 %i.ad, i64 0
  %broadcast.splat29 = shufflevector <16 x i8> %broadcast.splatinsert28, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ae = zext <16 x i8> %broadcast.splat29 to <16 x i16> ; 2 uses
  %i.af = mul nuw nsw <16 x i16> %i.ae, <i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 16>
  %i.ag = mul nuw nsw <16 x i16> %i.ac, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>
  %wide.load = load <16 x i8>, ptr %1, align 1, !tbaa !78, !alias.scope !554
  %i.ah = zext <16 x i8> %wide.load to <16 x i16>
  %i.ai = mul <16 x i16> %broadcast.splat35, %i.ah
  %i.aj = add nuw nsw <16 x i16> %i.af, splat (i16 32)
  %i.ak = add nuw nsw <16 x i16> %i.aj, %i.ag
  %i.al = add <16 x i16> %i.ak, %i.ai
  %i.am = add <16 x i16> %i.al, %i.aa
  %i.an = lshr <16 x i16> %i.am, splat (i16 6)
  %i.ao = trunc <16 x i16> %i.an to <16 x i8>
  store <16 x i8> %i.ao, ptr %i.u, align 1, !tbaa !78, !alias.scope !556, !noalias !557
  %i.ap = mul nuw nsw <16 x i16> %i.ae, <i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9, i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0>
  %i.aq = mul nuw nsw <16 x i16> %i.ac, <i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32>
  %wide.load.1 = load <16 x i8>, ptr %i.r, align 1, !tbaa !78, !alias.scope !554
  %i.ar = zext <16 x i8> %wide.load.1 to <16 x i16>
  %i.as = mul <16 x i16> %broadcast.splat35, %i.ar
  %i.at = add nuw nsw <16 x i16> %i.ap, splat (i16 32)
  %i.au = add nuw nsw <16 x i16> %i.at, %i.aq
  %i.av = add <16 x i16> %i.au, %i.as
  %i.aw = add <16 x i16> %i.av, %i.aa
  %i.ax = lshr <16 x i16> %i.aw, splat (i16 6)
  %i.ay = trunc <16 x i16> %i.ax to <16 x i8>
  %i.az = getelementptr i8, ptr %i.u, i64 16
  store <16 x i8> %i.ay, ptr %i.az, align 1, !tbaa !78, !alias.scope !556, !noalias !557
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader ] ; 4 uses
  %i.ba = load i8, ptr %i.s, align 1, !tbaa !78
  %i.bb = zext i8 %i.ba to i16
  %i.bc = trunc i64 %indvars.iv to i16
  %i.bd = sub i16 31, %i.bc
  %i.be = mul i16 %i.bd, %i.bb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bf = load i8, ptr %i.a, align 1, !tbaa !78
  %i.bg = zext i8 %i.bf to i16
  %i.bh = trunc i64 %indvars.iv.next to i16
  %i.bi = mul i16 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !78
  %i.bl = zext i8 %i.bk to i16
  %i.bm = mul i16 %i.w, %i.bl
  %i.bn = load i8, ptr %i.b, align 1, !tbaa !78
  %i.bo = zext i8 %i.bn to i16
  %i.bp = mul i16 %i.x, %i.bo
  %i.bq = add i16 %i.be, 32
  %i.br = add i16 %i.bq, %i.bi
  %i.bs = add i16 %i.br, %i.bm
  %i.bt = add i16 %i.bs, %i.bp
  %i.bu = lshr i16 %i.bt, 6
  %i.bv = trunc i16 %i.bu to i8
  %i.bw = getelementptr i8, ptr %i.u, i64 %indvars.iv
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !78
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !552

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 32
  br i1 %exitcond9.not, label %pred_planar_8.exit, label %.preheader, !llvm.loop !67

pred_planar_8.exit:                               ; preds = %middle.block
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_dc_8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = shl nuw i32 1, %4                        ; 12 uses
  %.not = icmp eq i32 %4, 31
  br i1 %.not, label %._crit_edge64.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp slt i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.e = and i32 %i.d, 2147483640
  %n.vec = zext nneg i32 %i.e to i64
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.d, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.f, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %wide.load = load <4 x i8>, ptr %i.g, align 1, !tbaa !78
  %wide.load93 = load <4 x i8>, ptr %i.h, align 1, !tbaa !78
  %i.i = zext <4 x i8> %wide.load to <4 x i32>
  %i.j = zext <4 x i8> %wide.load93 to <4 x i32>
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load94 = load <4 x i8>, ptr %i.k, align 1, !tbaa !78
  %wide.load95 = load <4 x i8>, ptr %i.l, align 1, !tbaa !78
  %i.m = zext <4 x i8> %wide.load94 to <4 x i32>
  %i.n = zext <4 x i8> %wide.load95 to <4 x i32>
  %i.o = add <4 x i32> %vec.phi, %i.i
  %i.p = add <4 x i32> %vec.phi92, %i.j
  %i.q = add <4 x i32> %i.o, %i.m                 ; 2 uses
  %i.r = add <4 x i32> %i.p, %i.n                 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !558

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.preheader57.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.u = load i8, ptr %2, align 1, !tbaa !78
  %i.v = zext i8 %i.u to i32
  %i.w = load i8, ptr %1, align 1, !tbaa !78
  %i.x = zext i8 %i.w to i32
  %i.y = add nuw i32 %i.d, %i.v
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %exitcond.not = icmp slt i32 %i.d, 2
  br i1 %exitcond.not, label %.preheader57.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.ac = zext i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !78
  %i.af = zext i8 %i.ae to i32
  %i.ag = add i32 %i.z, %i.ac
  %i.ah = add i32 %i.ag, %i.af                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %4, 1
  br i1 %exitcond.not.1, label %.preheader57.preheader, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.1
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !78
  %i.ak = zext i8 %i.aj to i32
  %i.al = add i32 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !78
  %i.ao = zext i8 %i.an to i32
  %i.ap = add i32 %i.al, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !78
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !78
  %i.av = zext i8 %i.au to i32
  %i.aw = add i32 %i.ap, %i.as
  %i.ax = add i32 %i.aw, %i.av                    ; 2 uses
  %exitcond.not.3 = icmp eq i32 %4, 2
  br i1 %exitcond.not.3, label %.preheader57.preheader, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.3
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !78
  %i.ba = zext i8 %i.az to i32
  %i.bb = add i32 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !78
end_hunk_3
begin_hunk_4_@llvm.smax.i64
!82 = !{!81, !81, i64 0}
!83 = !{!"any pointer", !73, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!"HEVCPredContext", !73, i64 0, !73, i64 32, !83, i64 64, !73, i64 72, !73, i64 104, !83, i64 128}
!86 = !{!"ScalingList", !73, i64 0, !73, i64 1536}
!87 = !{!"p1 int", !83, i64 0}
!88 = !{!"p1 omnipotent char", !83, i64 0}
!89 = !{!"p1 _ZTS7HEVCSPS", !83, i64 0}
!90 = !{!"HEVCPPS", !74, i64 0, !74, i64 4, !73, i64 8, !73, i64 9, !74, i64 12, !74, i64 16, !74, i64 20, !73, i64 24, !73, i64 25, !73, i64 26, !74, i64 28, !74, i64 32, !74, i64 36, !73, i64 40, !73, i64 41, !73, i64 42, !73, i64 43, !73, i64 44, !73, i64 45, !73, i64 46, !73, i64 47, !81, i64 48, !81, i64 50, !73, i64 52, !73, i64 53, !73, i64 54, !73, i64 55, !73, i64 56, !73, i64 57, !74, i64 60, !74, i64 64, !73, i64 68, !86, i64 69, !73, i64 1617, !74, i64 1620, !74, i64 1624, !73, i64 1628, !73, i64 1629, !73, i64 1630, !73, i64 1631, !73, i64 1632, !73, i64 1633, !73, i64 1634, !73, i64 1635, !73, i64 1636, !73, i64 1637, !73, i64 1638, !73, i64 1639, !73, i64 1645, !73, i64 1651, !73, i64 1652, !73, i64 1653, !73, i64 1654, !73, i64 1655, !73, i64 1656, !73, i64 1657, !73, i64 1721, !73, i64 1786, !73, i64 1914, !73, i64 2042, !73, i64 2170, !73, i64 2298, !73, i64 2362, !73, i64 2490, !73, i64 2618, !73, i64 2746, !73, i64 2874, !73, i64 2938, !73, i64 3002, !73, i64 3066, !73, i64 3130, !73, i64 3194, !73, i64 3195, !73, i64 3196, !73, i64 3258, !73, i64 3259, !73, i64 3260, !73, i64 3261, !73, i64 3262, !73, i64 3263, !73, i64 3264, !73, i64 3265, !73, i64 3266, !73, i64 3267, !73, i64 3268, !73, i64 3269, !73, i64 3270, !73, i64 3271, !73, i64 3272, !73, i64 3273, !73, i64 3274, !73, i64 3275, !73, i64 3276, !73, i64 3277, !73, i64 3278, !73, i64 3279, !73, i64 3280, !87, i64 4048, !87, i64 4056, !87, i64 4064, !87, i64 4072, !87, i64 4080, !87, i64 4088, !87, i64 4096, !87, i64 4104, !87, i64 4112, !87, i64 4120, !87, i64 4128, !88, i64 4136, !74, i64 4144, !89, i64 4152}
!91 = !{!90, !89, i64 4152}
!92 = !{!"p1 _ZTS11HEVCContext", !83, i64 0}
!93 = !{!"CABACContext", !74, i64 0, !74, i64 4, !88, i64 8, !88, i64 16, !88, i64 24}
!94 = !{!"p1 _ZTS14HEVCCABACState", !83, i64 0}
!95 = !{!"TransformUnit", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !74, i64 16, !73, i64 20, !73, i64 21, !73, i64 22, !73, i64 23, !73, i64 24}
!96 = !{!"CodingUnit", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !73, i64 16, !73, i64 17, !73, i64 18}
!97 = !{!"Mv", !81, i64 0, !81, i64 2}
!98 = !{!"PredictionUnit", !74, i64 0, !74, i64 4, !73, i64 8, !97, i64 12, !73, i64 16, !73, i64 17, !73, i64 21}
!99 = !{!"NeighbourAvailable", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20}
!100 = !{!"HEVCLocalContext", !73, i64 0, !73, i64 199, !73, i64 203, !83, i64 208, !92, i64 216, !93, i64 224, !94, i64 256, !73, i64 264, !73, i64 265, !74, i64 268, !95, i64 272, !73, i64 300, !73, i64 301, !73, i64 302, !73, i64 303, !74, i64 304, !74, i64 308, !73, i64 320, !73, i64 11680, !73, i64 23040, !74, i64 31232, !96, i64 31236, !98, i64 31256, !99, i64 31284, !74, i64 31308, !73, i64 31312}
!101 = !{!100, !92, i64 216}
!102 = !{!"HEVCWindow", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12}
!103 = !{!"HEVCHdrFlagParams", !73, i64 0, !73, i64 1, !73, i64 2}
!104 = !{!"HEVCHdrParams", !103, i64 0, !73, i64 3, !73, i64 4, !73, i64 5, !73, i64 6, !73, i64 7, !73, i64 8, !73, i64 9, !73, i64 10, !73, i64 11, !73, i64 12, !73, i64 13, !73, i64 14, !73, i64 15, !73, i64 16, !73, i64 24, !73, i64 40, !73, i64 3652}
!105 = !{!"AVRational", !74, i64 0, !74, i64 4}
!106 = !{!"H2645VUI", !105, i64 0, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !74, i64 24, !74, i64 28, !74, i64 32, !74, i64 36, !74, i64 40, !74, i64 44, !74, i64 48, !74, i64 52, !74, i64 56, !74, i64 60, !74, i64 64}
!107 = !{!"VUI", !106, i64 0, !74, i64 68, !74, i64 72, !74, i64 76, !74, i64 80, !102, i64 84, !74, i64 100, !74, i64 104, !74, i64 108, !74, i64 112, !74, i64 116, !74, i64 120, !74, i64 124, !74, i64 128, !74, i64 132, !74, i64 136, !74, i64 140, !74, i64 144, !74, i64 148, !74, i64 152, !74, i64 156}
!108 = !{!"PTLCommon", !73, i64 0, !73, i64 1, !73, i64 2, !73, i64 3, !73, i64 35, !73, i64 36, !73, i64 37, !73, i64 38, !73, i64 39, !73, i64 40, !73, i64 41, !73, i64 42, !73, i64 43, !73, i64 44, !73, i64 45, !73, i64 46, !73, i64 47, !73, i64 48, !73, i64 49, !73, i64 50}
!109 = !{!"PTL", !108, i64 0, !73, i64 51, !73, i64 408, !73, i64 415}
!110 = !{!"", !73, i64 0, !73, i64 1, !74, i64 4, !74, i64 8}
!111 = !{!"p1 _ZTS7HEVCVPS", !83, i64 0}
!112 = !{!"HEVCSPS", !74, i64 0, !74, i64 4, !102, i64 8, !102, i64 24, !104, i64 40, !74, i64 7304, !74, i64 7308, !74, i64 7312, !74, i64 7316, !74, i64 7320, !74, i64 7324, !73, i64 7328, !74, i64 7412, !107, i64 7416, !109, i64 7576, !86, i64 7998, !74, i64 9548, !73, i64 9552, !73, i64 18512, !74, i64 18576, !73, i64 18580, !110, i64 18584, !74, i64 18596, !74, i64 18600, !74, i64 18604, !74, i64 18608, !74, i64 18612, !74, i64 18616, !74, i64 18620, !74, i64 18624, !74, i64 18628, !73, i64 18632, !73, i64 18633, !73, i64 18634, !73, i64 18635, !73, i64 18636, !73, i64 18637, !73, i64 18638, !73, i64 18639, !73, i64 18640, !73, i64 18641, !73, i64 18642, !73, i64 18643, !73, i64 18644, !73, i64 18645, !73, i64 18646, !73, i64 18647, !73, i64 18648, !73, i64 18649, !73, i64 18650, !73, i64 18651, !73, i64 18652, !73, i64 18653, !73, i64 18654, !73, i64 18655, !73, i64 18656, !73, i64 18657, !73, i64 18658, !73, i64 18659, !73, i64 18660, !73, i64 18661, !74, i64 18664, !74, i64 18668, !74, i64 18672, !73, i64 18676, !74, i64 20212, !74, i64 20216, !74, i64 20220, !74, i64 20224, !74, i64 20228, !74, i64 20232, !74, i64 20236, !74, i64 20240, !74, i64 20244, !74, i64 20248, !74, i64 20252, !74, i64 20256, !74, i64 20260, !73, i64 20264, !73, i64 20276, !74, i64 20288, !88, i64 20296, !74, i64 20304, !111, i64 20312}
!113 = !{!112, !74, i64 18604}
!114 = !{!112, !74, i64 20260}
!115 = !{!90, !87, i64 4120}
!116 = !{!"p1 _ZTS7AVClass", !83, i64 0}
!117 = !{!"p1 _ZTS14AVCodecContext", !83, i64 0}
!118 = !{!"p1 _ZTS16HEVCLocalContext", !83, i64 0}
!119 = !{!"p1 _ZTS15AVContainerFifo", !83, i64 0}
!120 = !{!"HEVCParamSets", !73, i64 0, !73, i64 128, !73, i64 256}
!121 = !{!"p1 _ZTS11AVBufferRef", !83, i64 0}
!122 = !{!"AVFilmGrainAFGS1Params", !74, i64 0, !73, i64 8}
!123 = !{!"FFITUTT35Meta", !121, i64 0, !121, i64 8, !121, i64 16, !121, i64 24, !121, i64 32, !121, i64 40, !121, i64 48, !122, i64 56}
!124 = !{!"any p2 pointer", !83, i64 0}
!125 = !{!"p2 _ZTS11AVBufferRef", !124, i64 0}
!126 = !{!"H2645SEIUnregistered", !125, i64 0, !74, i64 8, !74, i64 12}
!127 = !{!"H2645SEIFramePacking", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !74, i64 24, !74, i64 28}
!128 = !{!"H2645SEIDisplayOrientation", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12}
!129 = !{!"H2645SEIAlternativeTransfer", !74, i64 0, !74, i64 4}
!130 = !{!"H2645SEIAmbientViewingEnvironment", !74, i64 0, !74, i64 4, !81, i64 8, !81, i64 10}
!131 = !{!"H2645SEIMasteringDisplay", !74, i64 0, !73, i64 4, !73, i64 16, !74, i64 20, !74, i64 24}
!132 = !{!"H2645SEIContentLight", !74, i64 0, !81, i64 4, !81, i64 6}
!133 = !{!"p1 _ZTS32H2645SEIFilmGrainCharacteristics", !83, i64 0}
!134 = !{!"H2645SEI", !123, i64 0, !126, i64 128, !127, i64 144, !128, i64 176, !129, i64 192, !130, i64 200, !131, i64 212, !132, i64 240, !133, i64 248}
!135 = !{!"HEVCSEIPictureHash", !73, i64 0, !73, i64 48}
!136 = !{!"HEVCSEIPictureTiming", !74, i64 0}
!137 = !{!"HEVCSEITimeCode", !74, i64 0, !73, i64 4, !73, i64 5, !73, i64 8, !73, i64 11, !73, i64 14, !73, i64 17, !73, i64 20, !73, i64 24, !73, i64 30, !73, i64 33, !73, i64 36, !73, i64 39, !73, i64 42, !73, i64 45, !73, i64 48, !73, i64 52}
!138 = !{!"HEVCSEITDRDI", !73, i64 0, !73, i64 1, !73, i64 2, !73, i64 3, !73, i64 4, !73, i64 68, !73, i64 132, !73, i64 168, !73, i64 424, !73, i64 456, !73, i64 712, !73, i64 744, !73, i64 808, !74, i64 812}
!139 = !{!"HEVCSEIRecoveryPoint", !81, i64 0, !73, i64 2, !73, i64 3, !73, i64 4}
!140 = !{!"HEVCSEI", !134, i64 0, !135, i64 256, !136, i64 308, !74, i64 312, !137, i64 316, !138, i64 384, !139, i64 1200}
!141 = !{!"p1 _ZTS5AVMD5", !83, i64 0}
!142 = !{!"p1 _ZTS7HEVCPPS", !83, i64 0}
!143 = !{!"ShortTermRPS", !73, i64 0, !74, i64 128, !73, i64 132, !73, i64 133, !73, i64 134, !73, i64 135, !81, i64 136, !74, i64 138, !74, i64 138, !74, i64 138}
!144 = !{!"p1 _ZTS12ShortTermRPS", !83, i64 0}
!145 = !{!"LongTermRPS", !73, i64 0, !73, i64 128, !73, i64 160, !73, i64 192}
!146 = !{!"SliceHeader", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !73, i64 24, !73, i64 25, !73, i64 26, !73, i64 27, !73, i64 28, !74, i64 32, !74, i64 36, !143, i64 40, !144, i64 184, !74, i64 192, !145, i64 196, !73, i64 392, !73, i64 648, !73, i64 650, !73, i64 651, !73, i64 652, !73, i64 660, !73, i64 663, !73, i64 664, !73, i64 665, !73, i64 666, !73, i64 667, !74, i64 668, !74, i64 672, !74, i64 676, !74, i64 680, !74, i64 684, !74, i64 688, !74, i64 692, !73, i64 696, !74, i64 700, !74, i64 704, !73, i64 708, !73, i64 709, !87, i64 712, !87, i64 720, !87, i64 728, !74, i64 736, !73, i64 740, !73, i64 741, !81, i64 742, !73, i64 744, !73, i64 776, !73, i64 840, !73, i64 904, !73, i64 936, !73, i64 968, !73, i64 1032, !73, i64 1064, !74, i64 1128, !74, i64 1132}
!147 = !{!"p1 _ZTS9HEVCFrame", !83, i64 0}
!148 = !{!"HEVCDSPContext", !83, i64 0, !73, i64 8, !83, i64 40, !83, i64 48, !83, i64 56, !73, i64 64, !73, i64 96, !73, i64 128, !73, i64 168, !73, i64 208, !73, i64 224, !73, i64 544, !73, i64 864, !73, i64 1184, !73, i64 1504, !73, i64 1824, !73, i64 2144, !73, i64 2464, !73, i64 2784, !73, i64 3104, !83, i64 3424, !83, i64 3432, !83, i64 3440, !83, i64 3448, !83, i64 3456, !83, i64 3464, !83, i64 3472, !83, i64 3480}
!149 = !{!"VideoDSPContext", !83, i64 0, !83, i64 8}
!150 = !{!"BswapDSPContext", !83, i64 0, !83, i64 8}
!151 = !{!"HEVCCABACState", !73, i64 0, !73, i64 199}
!152 = !{!"p1 _ZTS14ThreadProgress", !83, i64 0}
!153 = !{!"p1 _ZTS8H2645NAL", !83, i64 0}
!154 = !{!"H2645RBSP", !88, i64 0, !121, i64 8, !74, i64 16, !74, i64 20}
!155 = !{!"H2645Packet", !153, i64 0, !154, i64 8, !74, i64 32, !74, i64 36, !74, i64 40}
!156 = !{!"long", !73, i64 0}
!157 = !{!"AVDOVIDecoderConfigurationRecord", !73, i64 0, !73, i64 1, !73, i64 2, !73, i64 3, !73, i64 4, !73, i64 5, !73, i64 6, !73, i64 7, !73, i64 8}
!158 = !{!"AVDOVIRpuDataHeader", !73, i64 0, !81, i64 2, !73, i64 4, !73, i64 5, !73, i64 6, !73, i64 7, !73, i64 8, !73, i64 9, !73, i64 10, !73, i64 11, !73, i64 12, !73, i64 13, !73, i64 14, !73, i64 15, !73, i64 16, !73, i64 17, !73, i64 18}
!159 = !{!"p1 _ZTS17AVDOVIDataMapping", !83, i64 0}
!160 = !{!"p1 _ZTS19AVDOVIColorMetadata", !83, i64 0}
!161 = !{!"p1 _ZTS7DOVIExt", !83, i64 0}
!162 = !{!"DOVIContext", !83, i64 0, !74, i64 8, !157, i64 12, !158, i64 22, !159, i64 48, !160, i64 56, !161, i64 64, !160, i64 72, !73, i64 80, !88, i64 208, !74, i64 216}
!163 = !{!"HEVCContext", !116, i64 0, !117, i64 8, !118, i64 16, !74, i64 24, !73, i64 32, !74, i64 7056, !74, i64 7060, !74, i64 7064, !73, i64 7068, !119, i64 7072, !120, i64 7080, !140, i64 7848, !141, i64 9056, !73, i64 9064, !111, i64 10912, !142, i64 10920, !146, i64 10928, !74, i64 12064, !74, i64 12068, !147, i64 12072, !147, i64 12080, !74, i64 12088, !74, i64 12092, !74, i64 12096, !74, i64 12100, !74, i64 12104, !74, i64 12108, !74, i64 12112, !85, i64 12120, !148, i64 12256, !149, i64 15744, !150, i64 15760, !88, i64 15776, !74, i64 15784, !151, i64 15788, !152, i64 15992, !74, i64 16000, !73, i64 16004, !88, i64 16008, !155, i64 16016, !74, i64 16064, !74, i64 16068, !74, i64 16072, !74, i64 16076, !87, i64 16080, !74, i64 16088, !87, i64 16096, !74, i64 16104, !87, i64 16112, !74, i64 16120, !74, i64 16124, !74, i64 16128, !74, i64 16132, !156, i64 16136, !121, i64 16144, !162, i64 16152}
!164 = !{!163, !147, i64 12072}
!165 = !{!88, !88, i64 0}
!166 = !{!112, !74, i64 20252}
!167 = !{!100, !74, i64 31284}
!168 = !{!100, !74, i64 31288}
!169 = !{!100, !74, i64 31296}
!170 = !{!100, !74, i64 31292}
!171 = !{!100, !74, i64 31300}
!172 = !{!112, !74, i64 20220}
!173 = !{!112, !74, i64 20216}
!174 = !{!90, !73, i64 24}
!175 = !{!112, !74, i64 18616}
!176 = !{!112, !74, i64 20256}
!177 = !{!"p1 _ZTS7AVFrame", !83, i64 0}
!178 = !{!"p1 _ZTS7MvField", !83, i64 0}
!179 = !{!"p1 _ZTS10RefPicList", !83, i64 0}
!180 = !{!"p2 _ZTS13RefPicListTab", !124, i64 0}
!181 = !{!"p1 _ZTS13RefPicListTab", !83, i64 0}
!182 = !{!"HEVCFrame", !73, i64 0, !177, i64 16, !74, i64 24, !178, i64 32, !179, i64 40, !180, i64 48, !74, i64 56, !74, i64 60, !142, i64 64, !181, i64 72, !74, i64 80, !83, i64 88, !74, i64 96, !73, i64 100}
!183 = !{!182, !178, i64 32}
!184 = !{!"MvField", !73, i64 0, !73, i64 8, !73, i64 10}
!185 = !{!184, !73, i64 10}
!186 = !{!"llvm.loop.unroll.runtime.disable"}
!187 = !{!163, !83, i64 12184}
!188 = !{!112, !73, i64 18651}
!189 = !{!112, !74, i64 4}
!190 = !{!"llvm.loop.unroll.disable"}
!191 = !{!112, !73, i64 18644}
!192 = !{!163, !83, i64 12248}
!193 = !{!"branch_weights", i32 8, i32 24}
!194 = distinct !{!194, i1 false, !"LVerDomain"}
!195 = distinct !{!195, !194}
!196 = distinct !{!196, !194}
!197 = distinct !{!197, !79, !80}
!198 = !{!195}
!199 = !{!196}
!200 = distinct !{!200, i1 false, !"LVerDomain"}
!201 = distinct !{!201, !200}
!202 = distinct !{!202, !200}
!203 = distinct !{!203, !79, !80}
!204 = !{!201}
!205 = !{!202}
!206 = distinct !{!206, i1 false, !"LVerDomain"}
!207 = distinct !{!207, !206}
!208 = distinct !{!208, !206}
!209 = distinct !{!209, !79, !80}
!210 = !{!207}
!211 = !{!208}
!212 = distinct !{!212, i1 false, !"LVerDomain"}
!213 = distinct !{!213, !212}
!214 = distinct !{!214, !212}
!215 = distinct !{!215, !79, !80}
!216 = !{!213}
!217 = !{!214}
!218 = !{!85, !83, i64 64}
!219 = !{!85, !83, i64 128}
!220 = distinct !{!220, !79, !80, !186}
!221 = distinct !{!221, !79, !80}
!222 = distinct !{!222, !79, !80, !186}
!223 = distinct !{!223, !79, !80}
!224 = distinct !{!224, !79, !80, !186}
!225 = distinct !{!225, !79, !186, !80}
!226 = distinct !{!226, !79, !80, !186}
!227 = distinct !{!227, !79, !186, !80}
!228 = distinct !{!228, !79, !80, !186}
!229 = distinct !{!229, !79, !186, !80}
!230 = distinct !{!230, !79, !80, !186}
!231 = distinct !{!231, !79, !80}
!232 = distinct !{!232, !79, !80, !186}
!233 = distinct !{!233, !79, !80}
!234 = distinct !{!234, !79, !80, !186}
!235 = distinct !{!235, !79, !186, !80}
!236 = distinct !{!236, !79, !80, !186}
!237 = distinct !{!237, !79, !186, !80}
!238 = distinct !{!238, !79, !80, !186}
!239 = distinct !{!239, !79, !186, !80}
!240 = distinct !{!240, !79, !80, !186}
!241 = distinct !{!241, !79, !80}
!242 = distinct !{!242, !79, !80, !186}
!243 = distinct !{!243, !79, !80}
!244 = distinct !{!244, !79, !80, !186}
!245 = distinct !{!245, !79, !186, !80}
!246 = distinct !{!246, i1 false, !"LVerDomain"}
!247 = distinct !{!247, !246}
!248 = distinct !{!248, !246}
!249 = distinct !{!249, !79, !80, !186}
!250 = distinct !{!250, !190}
!251 = distinct !{!251, !79, !80}
!252 = distinct !{!252, !79, !80, !186}
!253 = distinct !{!253, !79, !186, !80}
!254 = !{!247}
!255 = !{!248}
!256 = distinct !{!256, !79, !80, !186}
!257 = distinct !{!257, !79, !80}
!258 = distinct !{!258, !79, !80, !186}
!259 = distinct !{!259, !79, !80}
!260 = distinct !{!260, !79, !80, !186}
!261 = distinct !{!261, !79, !186, !80}
!262 = distinct !{!262, i1 false, !"LVerDomain"}
!263 = distinct !{!263, !262}
!264 = distinct !{!264, !262}
!265 = distinct !{!265, !79, !80, !186}
!266 = distinct !{!266, !190}
!267 = distinct !{!267, !79, !80}
!268 = distinct !{!268, !79, !80, !186}
!269 = distinct !{!269, !79, !186, !80}
!270 = !{!263}
!271 = !{!264}
!272 = distinct !{!272, i1 false, !"LVerDomain"}
!273 = distinct !{!273, !272}
!274 = distinct !{!274, !272}
!275 = distinct !{!275, !272}
!276 = distinct !{!276, !272}
!277 = distinct !{!277, !79, !80}
!278 = !{!273}
!279 = !{!274}
!280 = !{!275}
!281 = !{!276}
!282 = !{!275, !273, !274}
!283 = distinct !{!283, !79, !80, !186}
!284 = distinct !{!284, !79, !80, !186}
!285 = distinct !{!285, !79, !186, !80}
!286 = distinct !{!286, !79}
!287 = distinct !{!287, !79, !80, !186}
!288 = distinct !{!288, !190}
!289 = distinct !{!289, !79, !80, !186}
!290 = distinct !{!290, !79, !80}
!291 = distinct !{!291, !79, !80}
!292 = distinct !{!292, i1 false, !"LVerDomain"}
!293 = distinct !{!293, !292}
!294 = distinct !{!294, !292}
!295 = distinct !{!295, !79, !80, !186}
!296 = distinct !{!296, !79, !80}
!297 = distinct !{!297, i1 false, !"LVerDomain"}
!298 = distinct !{!298, !297}
!299 = distinct !{!299, !297}
!300 = distinct !{!300, !79, !80, !186}
!301 = distinct !{!301, !79, !80}
!302 = !{!293}
!303 = !{!294}
!304 = !{!298}
!305 = !{!299}
!306 = distinct !{!306, i1 false, !"LVerDomain"}
!307 = distinct !{!307, !306}
!308 = distinct !{!308, !306}
!309 = distinct !{!309, !79, !80, !186}
!310 = distinct !{!310, !79, !80}
!311 = !{!307}
!312 = !{!308}
!313 = distinct !{!313, !79, !80, !186}
!314 = distinct !{!314, !79, !80}
!315 = distinct !{!315, !79, !80, !186}
!316 = distinct !{!316, !79, !80}
!317 = distinct !{!317, !79, !80, !186}
!318 = distinct !{!318, !79, !186, !80}
!319 = distinct !{!319, !79, !80, !186}
!320 = distinct !{!320, !79, !186, !80}
!321 = distinct !{!321, !79, !80, !186}
!322 = distinct !{!322, !79, !186, !80}
!323 = distinct !{!323, !79, !80, !186}
!324 = distinct !{!324, !79, !80}
!325 = distinct !{!325, !79, !80, !186}
!326 = distinct !{!326, !79, !80}
!327 = distinct !{!327, !79, !80, !186}
!328 = distinct !{!328, !79, !186, !80}
!329 = distinct !{!329, !79, !80, !186}
!330 = distinct !{!330, !79, !186, !80}
!331 = distinct !{!331, !79, !80, !186}
!332 = distinct !{!332, !79, !186, !80}
!333 = distinct !{!333, !79, !80, !186}
!334 = distinct !{!334, !79, !80}
!335 = distinct !{!335, !79, !80, !186}
!336 = distinct !{!336, !79, !80}
!337 = distinct !{!337, !79, !80, !186}
!338 = distinct !{!338, !79, !186, !80}
!339 = distinct !{!339, i1 false, !"LVerDomain"}
!340 = distinct !{!340, !339}
!341 = distinct !{!341, !339}
!342 = distinct !{!342, !79, !80, !186}
!343 = distinct !{!343, !190}
!344 = distinct !{!344, !79, !80}
!345 = distinct !{!345, !79, !80, !186}
!346 = distinct !{!346, !79, !186, !80}
!347 = !{!340}
!348 = !{!341}
!349 = distinct !{!349, !79, !80, !186}
!350 = distinct !{!350, !79, !80}
!351 = distinct !{!351, !79, !80, !186}
!352 = distinct !{!352, !79, !80}
!353 = distinct !{!353, !79, !80, !186}
!354 = distinct !{!354, !79, !186, !80}
!355 = distinct !{!355, i1 false, !"LVerDomain"}
!356 = distinct !{!356, !355}
!357 = distinct !{!357, !355}
!358 = distinct !{!358, !79, !80, !186}
!359 = distinct !{!359, !190}
!360 = distinct !{!360, !79, !80}
!361 = distinct !{!361, !79, !80, !186}
!362 = distinct !{!362, !79, !186, !80}
!363 = !{!356}
!364 = !{!357}
!365 = distinct !{!365, i1 false, !"LVerDomain"}
!366 = distinct !{!366, !365}
!367 = distinct !{!367, !365}
!368 = distinct !{!368, !365}
!369 = distinct !{!369, !365}
!370 = distinct !{!370, !79, !80}
!371 = !{!366}
!372 = !{!367}
!373 = !{!368}
!374 = !{!369}
!375 = !{!368, !366, !367}
!376 = distinct !{!376, !79, !80, !186}
!377 = distinct !{!377, !79, !80, !186}
!378 = distinct !{!378, !79, !186, !80}
!379 = distinct !{!379, !79}
!380 = distinct !{!380, !79, !80, !186}
!381 = distinct !{!381, !190}
!382 = distinct !{!382, !79, !80, !186}
!383 = distinct !{!383, !79, !80}
!384 = distinct !{!384, !79, !80}
!385 = distinct !{!385, i1 false, !"LVerDomain"}
!386 = distinct !{!386, !385}
!387 = distinct !{!387, !385}
!388 = distinct !{!388, !79, !80, !186}
!389 = distinct !{!389, !79, !80}
!390 = distinct !{!390, i1 false, !"LVerDomain"}
!391 = distinct !{!391, !390}
!392 = distinct !{!392, !390}
!393 = distinct !{!393, !79, !80, !186}
!394 = distinct !{!394, !79, !80}
!395 = !{!386}
!396 = !{!387}
!397 = !{!391}
!398 = !{!392}
!399 = distinct !{!399, i1 false, !"LVerDomain"}
!400 = distinct !{!400, !399}
!401 = distinct !{!401, !399}
!402 = distinct !{!402, !79, !80, !186}
!403 = distinct !{!403, !79, !80}
!404 = !{!400}
!405 = !{!401}
!406 = distinct !{!406, !79, !80, !186}
!407 = distinct !{!407, !79, !80}
!408 = distinct !{!408, !79, !80, !186}
!409 = distinct !{!409, !79, !80}
!410 = distinct !{!410, !79, !80, !186}
!411 = distinct !{!411, !79, !186, !80}
!412 = distinct !{!412, !79, !80, !186}
!413 = distinct !{!413, !79, !186, !80}
!414 = distinct !{!414, !79, !80, !186}
!415 = distinct !{!415, !79, !186, !80}
!416 = distinct !{!416, !79, !80, !186}
!417 = distinct !{!417, !79, !80}
!418 = distinct !{!418, !79, !80, !186}
!419 = distinct !{!419, !79, !80}
!420 = distinct !{!420, !79, !80, !186}
!421 = distinct !{!421, !79, !186, !80}
!422 = distinct !{!422, !79, !80, !186}
!423 = distinct !{!423, !79, !186, !80}
!424 = distinct !{!424, !79, !80, !186}
!425 = distinct !{!425, !79, !186, !80}
!426 = distinct !{!426, !79, !80, !186}
!427 = distinct !{!427, !79, !80}
!428 = distinct !{!428, !79, !80, !186}
!429 = distinct !{!429, !79, !80}
!430 = distinct !{!430, !79, !80, !186}
!431 = distinct !{!431, !79, !186, !80}
!432 = distinct !{!432, i1 false, !"LVerDomain"}
!433 = distinct !{!433, !432}
!434 = distinct !{!434, !432}
!435 = distinct !{!435, !79, !80, !186}
!436 = distinct !{!436, !190}
!437 = distinct !{!437, !79, !80}
!438 = distinct !{!438, !79, !80, !186}
!439 = distinct !{!439, !79, !186, !80}
!440 = !{!433}
!441 = !{!434}
!442 = distinct !{!442, !79, !80, !186}
!443 = distinct !{!443, !79, !80}
!444 = distinct !{!444, !79, !80, !186}
!445 = distinct !{!445, !79, !80}
!446 = distinct !{!446, !79, !80, !186}
!447 = distinct !{!447, !79, !186, !80}
!448 = distinct !{!448, i1 false, !"LVerDomain"}
!449 = distinct !{!449, !448}
!450 = distinct !{!450, !448}
!451 = distinct !{!451, !79, !80, !186}
!452 = distinct !{!452, !190}
!453 = distinct !{!453, !79, !80}
!454 = distinct !{!454, !79, !80, !186}
!455 = distinct !{!455, !79, !186, !80}
!456 = !{!449}
!457 = !{!450}
!458 = distinct !{!458, i1 false, !"LVerDomain"}
!459 = distinct !{!459, !458}
!460 = distinct !{!460, !458}
!461 = distinct !{!461, !458}
!462 = distinct !{!462, !458}
!463 = distinct !{!463, !79, !80}
!464 = !{!459}
!465 = !{!460}
!466 = !{!461}
!467 = !{!462}
!468 = !{!461, !459, !460}
!469 = distinct !{!469, !79, !80, !186}
!470 = distinct !{!470, !79, !80, !186}
!471 = distinct !{!471, !79, !186, !80}
!472 = distinct !{!472, !79}
!473 = distinct !{!473, !79, !80, !186}
!474 = distinct !{!474, !190}
!475 = distinct !{!475, !79, !80, !186}
!476 = distinct !{!476, !79, !80}
!477 = distinct !{!477, !79, !80}
!478 = distinct !{!478, i1 false, !"LVerDomain"}
!479 = distinct !{!479, !478}
!480 = distinct !{!480, !478}
!481 = distinct !{!481, !79, !80, !186}
!482 = distinct !{!482, !79, !80}
!483 = distinct !{!483, i1 false, !"LVerDomain"}
!484 = distinct !{!484, !483}
!485 = distinct !{!485, !483}
!486 = distinct !{!486, !79, !80, !186}
!487 = distinct !{!487, !79, !80}
!488 = !{!479}
!489 = !{!480}
!490 = !{!484}
!491 = !{!485}
!492 = distinct !{!492, i1 false, !"LVerDomain"}
!493 = distinct !{!493, !492}
!494 = distinct !{!494, !492}
!495 = distinct !{!495, !79, !80, !186}
!496 = distinct !{!496, !79, !80}
!497 = !{!493}
!498 = !{!494}
!499 = distinct !{!499, !79, !80, !186}
!500 = distinct !{!500, !79, !80}
!501 = distinct !{!501, !79, !80, !186}
!502 = distinct !{!502, !79, !80}
!503 = distinct !{!503, !79, !80, !186}
!504 = distinct !{!504, !79, !186, !80}
!505 = distinct !{!505, !79, !80, !186}
!506 = distinct !{!506, !79, !80, !186}
!507 = distinct !{!507, !190}
!508 = distinct !{!508, !79, !80}
!509 = distinct !{!509, !79, !80, !186}
!510 = distinct !{!510, !79, !186, !80}
!511 = distinct !{!511, !79, !80, !186}
!512 = distinct !{!512, !79, !80}
!513 = distinct !{!513, !79, !80, !186}
!514 = distinct !{!514, !79, !80}
!515 = distinct !{!515, !79, !80, !186}
!516 = distinct !{!516, !79, !186, !80}
!517 = distinct !{!517, !79, !80, !186}
!518 = distinct !{!518, !79, !80, !186}
!519 = distinct !{!519, !190}
!520 = distinct !{!520, !79, !80}
!521 = distinct !{!521, !79, !80, !186}
!522 = distinct !{!522, !79, !186, !80}
!523 = distinct !{!523, !79, !80, !186}
!524 = distinct !{!524, !79, !80}
!525 = distinct !{!525, !79, !80, !186}
!526 = distinct !{!526, !79, !80}
!527 = distinct !{!527, !79, !80, !186}
!528 = distinct !{!528, !79, !186, !80}
!529 = distinct !{!529, !79, !80, !186}
!530 = distinct !{!530, !79, !80, !186}
!531 = distinct !{!531, !190}
!532 = distinct !{!532, !79, !80}
!533 = distinct !{!533, !79, !80, !186}
!534 = distinct !{!534, !79, !186, !80}
!535 = distinct !{!535, !79, !80, !186}
!536 = distinct !{!536, !79, !80}
!537 = distinct !{!537, !79, !80, !186}
!538 = distinct !{!538, !79, !80}
!539 = distinct !{!539, !79, !80, !186}
!540 = distinct !{!540, !79, !186, !80}
!541 = distinct !{!541, !79, !80, !186}
!542 = distinct !{!542, !79, !80, !186}
!543 = distinct !{!543, !190}
!544 = distinct !{!544, !79, !80}
!545 = distinct !{!545, !79, !80, !186}
!546 = distinct !{!546, !79, !186, !80}
!547 = distinct !{!547, i1 false, !"LVerDomain"}
!548 = distinct !{!548, !547}
!549 = distinct !{!549, !547}
!550 = distinct !{!550, !547}
!551 = distinct !{!551, !547}
!552 = distinct !{!552, !79, !80}
!553 = !{!548}
!554 = !{!549}
!555 = !{!550}
!556 = !{!551}
!557 = !{!550, !548, !549}
!558 = distinct !{!558, !79, !80, !186}
!559 = distinct !{!559, !79, !80, !186}
!560 = distinct !{!560, !79, !186, !80}
!561 = distinct !{!561, !79}
!562 = distinct !{!562, !79, !80, !186}
!563 = distinct !{!563, !190}
!564 = distinct !{!564, !79, !80, !186}
!565 = distinct !{!565, !79, !80}
!566 = distinct !{!566, !79, !80}
!567 = distinct !{!567, i1 false, !"LVerDomain"}
!568 = distinct !{!568, !567}
!569 = distinct !{!569, !567}
!570 = distinct !{!570, !79, !80, !186}
!571 = distinct !{!571, !79, !80, !186}
!572 = distinct !{!572, !79, !80}
!573 = distinct !{!573, i1 false, !"LVerDomain"}
!574 = distinct !{!574, !573}
!575 = distinct !{!575, !573}
!576 = distinct !{!576, !79, !80, !186}
!577 = distinct !{!577, !79, !80, !186}
!578 = distinct !{!578, !79, !80}
!579 = !{!568}
!580 = !{!569}
!581 = !{!"branch_weights", i32 8, i32 8}
!582 = !{!574}
!583 = !{!575}
!584 = distinct !{!584, i1 false, !"LVerDomain"}
!585 = distinct !{!585, !584}
!586 = distinct !{!586, !584}
!587 = distinct !{!587, !79, !80}
!588 = !{!585}
!589 = !{!586}
end_hunk_4
