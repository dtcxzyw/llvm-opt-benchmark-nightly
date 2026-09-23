Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
begin_hunk_0_@_ZL16fiat_p256_squarePmPKm:bb.a
  %i.fo = add nuw nsw i128 %i.fl, %i.fn
  %i.fp = add nuw nsw i128 %i.fo, %i.fm           ; 2 uses
  %i.fq = lshr i128 %i.fp, 64
  %i.fr = and i128 %i.ek, 18446744073709551615
  %i.fs = and i128 %i.fb, 18446744073709551615
  %i.ft = add nuw nsw i128 %i.fq, %i.fs
  %i.fu = add nuw nsw i128 %i.ft, %i.fr           ; 2 uses
  %i.fv = lshr i128 %i.fu, 64
  %i.fw = and i128 %i.eo, 18446744073709551615
  %i.fx = and i128 %i.ff, 18446744073709551615
  %i.fy = add nuw nsw i128 %i.fv, %i.fx
  %i.fz = add nuw nsw i128 %i.fy, %i.fw           ; 2 uses
  %i.ga = lshr i128 %i.fz, 64
  %i.gb = zext nneg i64 %i.er to i128
  %i.gc = zext i64 %i.fi to i128
  %i.gd = add nuw nsw i128 %i.gb, %i.gc
  %i.ge = add nuw nsw i128 %i.gd, %i.ga           ; 2 uses
  %i.gf = lshr i128 %i.ge, 64
  %i.gg = trunc nuw nsw i128 %i.gf to i64
  %i.gh = and i128 %i.fk, 18446744073709551615    ; 4 uses
  %i.gi = mul nuw i128 %i.gh, 18446744069414584321 ; 2 uses
  %i.gj = lshr i128 %i.gi, 64
  %i.gk = mul nuw nsw i128 %i.gh, 4294967295      ; 2 uses
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = trunc nuw nsw i128 %i.gl to i64
  %i.gn = mul nuw i128 %i.gh, 18446744073709551615 ; 2 uses
  %i.go = lshr i128 %i.gn, 64
  %i.gp = and i128 %i.gk, 18446744073709551615
  %i.gq = add nuw nsw i128 %i.go, %i.gp           ; 2 uses
  %i.gr = lshr i128 %i.gq, 64
  %i.gs = trunc nuw nsw i128 %i.gr to i64
  %i.gt = add nuw nsw i64 %i.gs, %i.gm
  %i.gu = and i128 %i.gn, 18446744073709551615
  %i.gv = add nuw nsw i128 %i.gu, %i.gh
  %i.gw = lshr i128 %i.gv, 64
  %i.gx = and i128 %i.fp, 18446744073709551615
  %i.gy = add nuw nsw i128 %i.gx, %i.gw
  %i.gz = and i128 %i.gq, 18446744073709551615
  %i.ha = add nuw nsw i128 %i.gy, %i.gz           ; 2 uses
  %i.hb = lshr i128 %i.ha, 64
  %i.hc = and i128 %i.fu, 18446744073709551615
  %i.hd = add nuw nsw i128 %i.hc, %i.hb
  %i.he = zext nneg i64 %i.gt to i128
  %i.hf = add nuw nsw i128 %i.hd, %i.he           ; 2 uses
  %i.hg = lshr i128 %i.hf, 64
  %i.hh = and i128 %i.fz, 18446744073709551615
  %i.hi = and i128 %i.gi, 18446744073709551615
  %i.hj = add nuw nsw i128 %i.hg, %i.hi
  %i.hk = add nuw nsw i128 %i.hj, %i.hh           ; 2 uses
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = and i128 %i.ge, 18446744073709551615
  %i.hn = add nuw nsw i128 %i.hl, %i.gj
  %i.ho = add nuw nsw i128 %i.hn, %i.hm           ; 2 uses
  %i.hp = lshr i128 %i.ho, 64
  %i.hq = trunc nuw nsw i128 %i.hp to i64
  %i.hr = add nuw nsw i64 %i.hq, %i.gg
  %i.hs = mul nuw i128 %i.i, %i.i                 ; 2 uses
  %i.ht = lshr i128 %i.hs, 64
  %i.hu = trunc nuw i128 %i.ht to i64
  %i.hv = add nuw nsw i128 %i.k, %i.ce            ; 2 uses
  %i.hw = lshr i128 %i.hv, 64
  %i.hx = add nuw nsw i128 %i.fd, %i.br
  %i.hy = add nuw nsw i128 %i.hx, %i.hw           ; 2 uses
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = and i128 %i.hs, 18446744073709551615
  %i.ib = add nuw nsw i128 %i.ia, %i.et
  %i.ic = add nuw nsw i128 %i.ib, %i.hz           ; 2 uses
  %i.id = lshr i128 %i.ic, 64
  %i.ie = trunc nuw nsw i128 %i.id to i64
  %i.if = add nuw i64 %i.ie, %i.hu
  %i.ig = and i128 %i.ha, 18446744073709551615
  %i.ih = add nuw nsw i128 %i.ig, %i.ab           ; 2 uses
  %i.ii = lshr i128 %i.ih, 64
  %i.ij = and i128 %i.hf, 18446744073709551615
  %i.ik = and i128 %i.hv, 18446744073709551615
  %i.il = add nuw nsw i128 %i.ii, %i.ik
  %i.im = add nuw nsw i128 %i.il, %i.ij           ; 2 uses
  %i.in = lshr i128 %i.im, 64
  %i.io = and i128 %i.hk, 18446744073709551615
  %i.ip = and i128 %i.hy, 18446744073709551615
  %i.iq = add nuw nsw i128 %i.in, %i.ip
  %i.ir = add nuw nsw i128 %i.iq, %i.io           ; 2 uses
  %i.is = lshr i128 %i.ir, 64
  %i.it = and i128 %i.ho, 18446744073709551615
  %i.iu = and i128 %i.ic, 18446744073709551615
  %i.iv = add nuw nsw i128 %i.is, %i.iu
  %i.iw = add nuw nsw i128 %i.iv, %i.it           ; 2 uses
  %i.ix = lshr i128 %i.iw, 64
  %i.iy = zext nneg i64 %i.hr to i128
  %i.iz = zext i64 %i.if to i128
  %i.ja = add nuw nsw i128 %i.iy, %i.iz
  %i.jb = add nuw nsw i128 %i.ja, %i.ix           ; 2 uses
  %i.jc = lshr i128 %i.jb, 64
  %i.jd = trunc nuw nsw i128 %i.jc to i64
  %i.je = and i128 %i.ih, 18446744073709551615    ; 4 uses
  %i.jf = mul nuw i128 %i.je, 18446744069414584321 ; 2 uses
  %i.jg = lshr i128 %i.jf, 64
  %i.jh = mul nuw nsw i128 %i.je, 4294967295      ; 2 uses
  %i.ji = lshr i128 %i.jh, 64
  %i.jj = trunc nuw nsw i128 %i.ji to i64
  %i.jk = mul nuw i128 %i.je, 18446744073709551615 ; 2 uses
  %i.jl = lshr i128 %i.jk, 64
  %i.jm = and i128 %i.jh, 18446744073709551615
  %i.jn = add nuw nsw i128 %i.jl, %i.jm           ; 2 uses
  %i.jo = lshr i128 %i.jn, 64
  %i.jp = trunc nuw nsw i128 %i.jo to i64
  %i.jq = add nuw nsw i64 %i.jp, %i.jj
  %i.jr = and i128 %i.jk, 18446744073709551615
  %i.js = add nuw nsw i128 %i.jr, %i.je
  %i.jt = lshr i128 %i.js, 64
  %i.ju = and i128 %i.im, 18446744073709551615
  %i.jv = add nuw nsw i128 %i.ju, %i.jt
  %i.jw = and i128 %i.jn, 18446744073709551615
  %i.jx = add nuw nsw i128 %i.jv, %i.jw           ; 3 uses
  %i.jy = trunc i128 %i.jx to i64
  %i.jz = lshr i128 %i.jx, 64
  %i.ka = and i128 %i.ir, 18446744073709551615
  %i.kb = add nuw nsw i128 %i.ka, %i.jz
  %i.kc = zext nneg i64 %i.jq to i128
  %i.kd = add nuw nsw i128 %i.kb, %i.kc           ; 3 uses
  %i.ke = trunc i128 %i.kd to i64
  %i.kf = lshr i128 %i.kd, 64
  %i.kg = and i128 %i.iw, 18446744073709551615
  %i.kh = and i128 %i.jf, 18446744073709551615
  %i.ki = add nuw nsw i128 %i.kf, %i.kh
  %i.kj = add nuw nsw i128 %i.ki, %i.kg           ; 3 uses
  %i.kk = trunc i128 %i.kj to i64
  %i.kl = lshr i128 %i.kj, 64
  %i.km = and i128 %i.jb, 18446744073709551615
  %i.kn = add nuw nsw i128 %i.kl, %i.jg
  %i.ko = add nuw nsw i128 %i.kn, %i.km           ; 3 uses
  %i.kp = trunc i128 %i.ko to i64
  %i.kq = lshr i128 %i.ko, 64
  %i.kr = trunc nuw nsw i128 %i.kq to i64
  %i.ks = add nuw nsw i64 %i.kr, %i.jd
  %i.kt = and i128 %i.jx, 18446744073709551615
  %i.ku = add nsw i128 %i.kt, -18446744073709551615 ; 2 uses
  %i.kv = lshr i128 %i.ku, 64
  %i.kw = trunc i128 %i.ku to i64
  %i.kx = and i128 %i.kd, 18446744073709551615
  %i.ky = sub nsw i128 0, %i.kv
  %i.kz = and i128 %i.ky, 255
  %reass.sub = sub nsw i128 %i.kx, %i.kz
  %i.la = add nsw i128 %reass.sub, -4294967295    ; 2 uses
  %i.lb = lshr i128 %i.la, 64
  %i.lc = trunc i128 %i.la to i64
  %i.ld = and i128 %i.kj, 18446744073709551615
  %i.le = sub nsw i128 0, %i.lb
  %i.lf = and i128 %i.le, 255
  %i.lg = sub nsw i128 %i.ld, %i.lf               ; 2 uses
  %i.lh = lshr i128 %i.lg, 64
  %i.li = trunc i128 %i.lg to i64
  %i.lj = and i128 %i.ko, 18446744073709551615
  %i.lk = sub nsw i128 0, %i.lh
  %i.ll = and i128 %i.lk, 255
  %.neg237 = add nsw i128 %i.lj, -18446744069414584321
  %i.lm = sub nsw i128 %.neg237, %i.ll            ; 2 uses
  %i.ln = lshr i128 %i.lm, 64
  %i.lo = trunc i128 %i.lm to i64
  %i.lp = zext nneg i64 %i.ks to i128
  %i.lq = sub nsw i128 0, %i.ln
  %i.lr = and i128 %i.lq, 255
  %i.ls = sub nsw i128 %i.lp, %i.lr
  %i.lt = lshr i128 %i.ls, 64
  %i.lu = trunc i128 %i.lt to i8
  %i.lv = icmp ne i8 %i.lu, 0
  %i.lw = sext i1 %i.lv to i64                    ; 2 uses
  %i.lx = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.lw) #38, !srcloc !389 ; 4 uses
  %i.ly = and i64 %i.lx, %i.jy
  %i.lz = xor i64 %i.lw, -1
  %i.ma = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.lz) #38, !srcloc !389 ; 4 uses
  %i.mb = and i64 %i.ma, %i.kw
  %i.mc = or i64 %i.mb, %i.ly
  %i.md = and i64 %i.lx, %i.ke
  %i.me = and i64 %i.ma, %i.lc
  %i.mf = or i64 %i.me, %i.md
  %i.mg = and i64 %i.lx, %i.kk
  %i.mh = and i64 %i.ma, %i.li
  %i.mi = or i64 %i.mh, %i.mg
  %i.mj = and i64 %i.lx, %i.kp
  %i.mk = and i64 %i.ma, %i.lo
  %i.ml = or i64 %i.mk, %i.mj
  store i64 %i.mc, ptr %0, align 8, !tbaa !96
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.mf, ptr %i.mm, align 8, !tbaa !96
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.mi, ptr %i.mn, align 8, !tbaa !96
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ml, ptr %i.mo, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL19fiat_p256_point_addPmS_S_PKmS1_S1_iS1_S1_S1_(ptr nofree noundef nonnull captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull captures(none) initializes((0, 32)) %1, ptr nofree noundef nonnull captures(none) initializes((0, 32)) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, i32 noundef range(i32 0, 2) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9) unnamed_addr #18 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %i.b = alloca [4 x i64], align 16               ; 9 uses
  %i.c = alloca [4 x i64], align 16               ; 5 uses
  %i.d = alloca [4 x i64], align 16               ; 9 uses
  %i.e = alloca [4 x i64], align 16               ; 12 uses
  %i.f = alloca [4 x i64], align 16               ; 13 uses
  %i.g = alloca [4 x i64], align 16               ; 15 uses
  %i.h = alloca [4 x i64], align 16               ; 9 uses
  %i.i = alloca [4 x i64], align 16               ; 7 uses
  %i.j = alloca [4 x i64], align 16               ; 8 uses
  %i.k = alloca [4 x i64], align 16               ; 4 uses
  %i.l = alloca [4 x i64], align 16               ; 7 uses
  %i.m = alloca [4 x i64], align 16               ; 8 uses
  %i.n = alloca [4 x i64], align 16               ; 10 uses
  %i.o = alloca [4 x i64], align 16               ; 8 uses
  %i.p = alloca [4 x i64], align 16               ; 7 uses
  %i.q = alloca [4 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.r = load i64, ptr %5, align 8, !tbaa !96     ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !96   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !96   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !96   ; 3 uses
  %i.y = or i64 %i.t, %i.r
  %i.z = or i64 %i.y, %i.v
  %i.aa = or i64 %i.z, %i.x
  %i.ab = load i64, ptr %9, align 8, !tbaa !96    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !96 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !96 ; 2 uses
  %i.ai = or i64 %i.ad, %i.ab
  %i.aj = or i64 %i.ai, %i.af
  %i.ak = or i64 %i.aj, %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call fastcc void @_ZL16fiat_p256_squarePmPKm(ptr noundef %i.d, ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  call fastcc void @_ZL16fiat_p256_squarePmPKm(ptr noundef %i.h, ptr noundef nonnull %9)
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.e, ptr noundef nonnull %3, ptr noundef %i.h)
  %add.narrowed.i = add i64 %i.ab, %i.r           ; 3 uses
  %add.narrowed.overflow.i = icmp ult i64 %add.narrowed.i, %i.r
  %i.al = zext i1 %add.narrowed.overflow.i to i128
  %i.am = zext i64 %i.t to i128
  %i.an = zext i64 %i.ad to i128
  %i.ao = add nuw nsw i128 %i.an, %i.am
  %i.ap = add nuw nsw i128 %i.ao, %i.al           ; 3 uses
  %i.aq = trunc i128 %i.ap to i64
  %i.ar = lshr i128 %i.ap, 64
  %i.as = zext i64 %i.v to i128
  %i.at = zext i64 %i.af to i128
  %i.au = add nuw nsw i128 %i.at, %i.as
  %i.av = add nuw nsw i128 %i.au, %i.ar           ; 3 uses
  %i.aw = trunc i128 %i.av to i64
  %i.ax = lshr i128 %i.av, 64
  %i.ay = zext i64 %i.x to i128
  %i.az = zext i64 %i.ah to i128
  %i.ba = add nuw nsw i128 %i.az, %i.ay
  %i.bb = add nuw nsw i128 %i.ba, %i.ax           ; 3 uses
  %i.bc = trunc i128 %i.bb to i64
  %i.bd = lshr i128 %i.bb, 64
  %i.be = zext i64 %add.narrowed.i to i128
  %i.bf = add nsw i128 %i.be, -18446744073709551615 ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = trunc i128 %i.bf to i64
  %i.bi = and i128 %i.ap, 18446744073709551615
  %i.bj = sub nsw i128 0, %i.bg
  %i.bk = and i128 %i.bj, 255
  %reass.sub.i = sub nsw i128 %i.bi, %i.bk
  %i.bl = add nsw i128 %reass.sub.i, -4294967295  ; 2 uses
  %i.bm = lshr i128 %i.bl, 64
  %i.bn = trunc i128 %i.bl to i64
  %i.bo = and i128 %i.av, 18446744073709551615
  %i.bp = sub nsw i128 0, %i.bm
  %i.bq = and i128 %i.bp, 255
  %i.br = sub nsw i128 %i.bo, %i.bq               ; 2 uses
  %i.bs = lshr i128 %i.br, 64
  %i.bt = trunc i128 %i.br to i64
  %i.bu = and i128 %i.bb, 18446744073709551615
  %i.bv = sub nsw i128 0, %i.bs
  %i.bw = and i128 %i.bv, 255
  %reass.sub42.i = sub nsw i128 %i.bu, %i.bw
  %i.bx = add nsw i128 %reass.sub42.i, -18446744069414584321 ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = trunc i128 %i.bx to i64
  %i.ca = sub nsw i128 0, %i.by
  %i.cb = and i128 %i.ca, 255
  %i.cc = sub nsw i128 %i.bd, %i.cb
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = trunc i128 %i.cd to i8
  %i.cf = icmp ne i8 %i.ce, 0
  %i.cg = sext i1 %i.cf to i64                    ; 2 uses
  %i.ch = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.cg) #38, !srcloc !389 ; 4 uses
  %i.ci = and i64 %i.ch, %add.narrowed.i
  %i.cj = xor i64 %i.cg, -1
  %i.ck = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.cj) #38, !srcloc !389 ; 4 uses
  %i.cl = and i64 %i.ck, %i.bh
  %i.cm = or i64 %i.cl, %i.ci
  %i.cn = and i64 %i.ch, %i.aq
  %i.co = and i64 %i.ck, %i.bn
  %i.cp = or i64 %i.co, %i.cn
  %i.cq = and i64 %i.ch, %i.aw
  %i.cr = and i64 %i.ck, %i.bt
  %i.cs = or i64 %i.cr, %i.cq
  %i.ct = and i64 %i.ch, %i.bc
  %i.cu = and i64 %i.ck, %i.bz
  %i.cv = or i64 %i.cu, %i.ct
  store i64 %i.cm, ptr %i.g, align 16, !tbaa !96
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 %i.cp, ptr %i.cw, align 8, !tbaa !96
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 %i.cs, ptr %i.cx, align 16, !tbaa !96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  store i64 %i.cv, ptr %i.cy, align 8, !tbaa !96
  call fastcc void @_ZL16fiat_p256_squarePmPKm(ptr noundef %i.g, ptr noundef nonnull %i.g)
  %i.cz = load i64, ptr %i.g, align 16, !tbaa !96
  %i.da = load i64, ptr %i.d, align 16, !tbaa !96
  %i.db = zext i64 %i.cz to i128
  %i.dc = zext i64 %i.da to i128
  %i.dd = sub nsw i128 %i.db, %i.dc               ; 2 uses
  %i.de = lshr i128 %i.dd, 64
  %i.df = load i64, ptr %i.cw, align 8, !tbaa !96
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !96
  %i.di = zext i64 %i.df to i128
  %i.dj = sub nsw i128 0, %i.de
  %i.dk = and i128 %i.dj, 255
  %i.dl = zext i64 %i.dh to i128
  %i.dm = add nuw nsw i128 %i.dk, %i.dl
  %i.dn = sub nsw i128 %i.di, %i.dm               ; 2 uses
  %i.do = lshr i128 %i.dn, 64
  %i.dp = load i64, ptr %i.cx, align 16, !tbaa !96
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dr = load i64, ptr %i.dq, align 16, !tbaa !96
  %i.ds = zext i64 %i.dp to i128
  %i.dt = sub nsw i128 0, %i.do
  %i.du = and i128 %i.dt, 255
  %i.dv = zext i64 %i.dr to i128
  %i.dw = add nuw nsw i128 %i.du, %i.dv
  %i.dx = sub nsw i128 %i.ds, %i.dw               ; 2 uses
  %i.dy = lshr i128 %i.dx, 64
  %i.dz = load i64, ptr %i.cy, align 8, !tbaa !96
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !96
  %i.ec = zext i64 %i.dz to i128
  %i.ed = sub nsw i128 0, %i.dy
  %i.ee = and i128 %i.ed, 255
  %i.ef = zext i64 %i.eb to i128
  %i.eg = add nuw nsw i128 %i.ee, %i.ef
  %i.eh = sub nsw i128 %i.ec, %i.eg               ; 2 uses
  %i.ei = and i128 %i.eh, 4703919738795935662080
  %i.ej = icmp ne i128 %i.ei, 0
  %i.ek = sext i1 %i.ej to i64                    ; 2 uses
  %i.el = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ek) #38, !srcloc !389 ; 3 uses
  %i.em = xor i64 %i.ek, -1
  %i.en = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.em) #38, !srcloc !389 ; 0 uses
  %i.eo = and i128 %i.dd, 18446744073709551615
  %i.ep = zext i64 %i.el to i128
  %i.eq = add nuw nsw i128 %i.eo, %i.ep           ; 2 uses
  %i.er = lshr i128 %i.eq, 64
  %i.es = and i64 %i.el, 4294967295
  %i.et = and i128 %i.dn, 18446744073709551615
  %i.eu = zext nneg i64 %i.es to i128
  %i.ev = add nuw nsw i128 %i.et, %i.eu
  %i.ew = add nuw nsw i128 %i.ev, %i.er           ; 2 uses
  %i.ex = lshr i128 %i.ew, 64
  %i.ey = and i128 %i.dx, 18446744073709551615
  %i.ez = add nuw nsw i128 %i.ex, %i.ey           ; 2 uses
  %i.fa = lshr i128 %i.ez, 64
  %i.fb = and i64 %i.el, -4294967295
  %i.fc = add nsw i128 %i.fa, %i.eh
  %i.fd = trunc i128 %i.fc to i64
  %i.fe = add i64 %i.fb, %i.fd
  %i.ff = load i64, ptr %i.h, align 16, !tbaa !96
  %i.fg = and i128 %i.eq, 18446744073709551615
  %i.fh = zext i64 %i.ff to i128
  %i.fi = sub nsw i128 %i.fg, %i.fh               ; 2 uses
  %i.fj = lshr i128 %i.fi, 64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !96
  %i.fm = and i128 %i.ew, 18446744073709551615
  %i.fn = sub nsw i128 0, %i.fj
  %i.fo = and i128 %i.fn, 255
  %i.fp = zext i64 %i.fl to i128
  %i.fq = add nuw nsw i128 %i.fo, %i.fp
  %i.fr = sub nsw i128 %i.fm, %i.fq               ; 2 uses
  %i.fs = lshr i128 %i.fr, 64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.fu = load i64, ptr %i.ft, align 16, !tbaa !96
  %i.fv = and i128 %i.ez, 18446744073709551615
  %i.fw = sub nsw i128 0, %i.fs
  %i.fx = and i128 %i.fw, 255
  %i.fy = zext i64 %i.fu to i128
  %i.fz = add nuw nsw i128 %i.fx, %i.fy
  %i.ga = sub nsw i128 %i.fv, %i.fz               ; 2 uses
  %i.gb = lshr i128 %i.ga, 64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !96
  %i.ge = zext i64 %i.fe to i128
  %i.gf = sub nsw i128 0, %i.gb
  %i.gg = and i128 %i.gf, 255
  %i.gh = zext i64 %i.gd to i128
  %i.gi = add nuw nsw i128 %i.gg, %i.gh
  %i.gj = sub nsw i128 %i.ge, %i.gi               ; 2 uses
  %i.gk = and i128 %i.gj, 4703919738795935662080
  %i.gl = icmp ne i128 %i.gk, 0
  %i.gm = sext i1 %i.gl to i64                    ; 2 uses
  %i.gn = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.gm) #38, !srcloc !389 ; 3 uses
  %i.go = xor i64 %i.gm, -1
  %i.gp = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.go) #38, !srcloc !389 ; 0 uses
  %i.gq = and i128 %i.fi, 18446744073709551615
  %i.gr = zext i64 %i.gn to i128
  %i.gs = add nuw nsw i128 %i.gq, %i.gr           ; 2 uses
  %i.gt = trunc i128 %i.gs to i64
  %i.gu = lshr i128 %i.gs, 64
  %i.gv = and i64 %i.gn, 4294967295
  %i.gw = and i128 %i.fr, 18446744073709551615
  %i.gx = zext nneg i64 %i.gv to i128
  %i.gy = add nuw nsw i128 %i.gw, %i.gx
  %i.gz = add nuw nsw i128 %i.gy, %i.gu           ; 2 uses
  %i.ha = trunc i128 %i.gz to i64
  %i.hb = lshr i128 %i.gz, 64
  %i.hc = and i128 %i.ga, 18446744073709551615
  %i.hd = add nuw nsw i128 %i.hb, %i.hc           ; 2 uses
  %i.he = trunc i128 %i.hd to i64
  %i.hf = lshr i128 %i.hd, 64
  %i.hg = and i64 %i.gn, -4294967295
  %i.hh = add nsw i128 %i.hf, %i.gj
  %i.hi = trunc i128 %i.hh to i64
  %i.hj = add i64 %i.hg, %i.hi
  store i64 %i.gt, ptr %i.g, align 16, !tbaa !96
  store i64 %i.ha, ptr %i.cw, align 8, !tbaa !96
  store i64 %i.he, ptr %i.cx, align 16, !tbaa !96
  store i64 %i.hj, ptr %i.cy, align 8, !tbaa !96
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.f, ptr noundef nonnull %9, ptr noundef %i.h)
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.f, ptr noundef nonnull %i.f, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  %.pre = load i64, ptr %i.e, align 16, !tbaa !96
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre144 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !96
  %.phi.trans.insert145 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre146 = load i64, ptr %.phi.trans.insert145, align 16, !tbaa !96
  %.phi.trans.insert147 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.pre148 = load i64, ptr %.phi.trans.insert147, align 8, !tbaa !96
  %.pre149 = load i64, ptr %i.f, align 16, !tbaa !96
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre151 = load i64, ptr %.phi.trans.insert150, align 8, !tbaa !96
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.hk = load i64, ptr %3, align 8, !tbaa !96    ; 2 uses
  store i64 %i.hk, ptr %i.e, align 16, !tbaa !96
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !96 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !96
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !96 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.hp, ptr %i.hq, align 16, !tbaa !96
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !96 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !96
  %add.narrowed.i43 = shl i64 %i.r, 1             ; 2 uses
  %.lobit = lshr i64 %i.r, 63
  %i.hu = zext nneg i64 %.lobit to i128
  %i.hv = zext i64 %i.t to i128                   ; 2 uses
  %reass.add = shl nuw nsw i128 %i.hv, 1
  %i.hw = or disjoint i128 %reass.add, %i.hu      ; 2 uses
  %i.hx = trunc i128 %i.hw to i64
  %i.hy = lshr i128 %i.hv, 63
  %i.hz = zext i64 %i.v to i128                   ; 2 uses
  %i.ia = shl nuw nsw i128 %i.hz, 1
  %i.ib = or disjoint i128 %i.ia, %i.hy           ; 2 uses
  %i.ic = trunc i128 %i.ib to i64
  %i.id = lshr i128 %i.hz, 63
  %i.ie = zext i64 %i.x to i128                   ; 2 uses
  %i.if = shl nuw nsw i128 %i.ie, 1
  %i.ig = or disjoint i128 %i.if, %i.id           ; 2 uses
  %i.ih = trunc i128 %i.ig to i64
  %i.ii = lshr i128 %i.ie, 63
  %i.ij = or disjoint i64 %add.narrowed.i43, 1
  %i.ik = and i128 %i.hw, 18446744073709551615
  %i.il = add nsw i128 %i.ik, -4294967296         ; 2 uses
  %i.im = lshr i128 %i.il, 64
  %i.in = trunc i128 %i.il to i64
  %i.io = and i128 %i.ib, 18446744073709551615
  %i.ip = sub nsw i128 0, %i.im
  %i.iq = and i128 %i.ip, 255
  %i.ir = sub nsw i128 %i.io, %i.iq               ; 2 uses
  %i.is = lshr i128 %i.ir, 64
  %i.it = trunc i128 %i.ir to i64
  %i.iu = and i128 %i.ig, 18446744073709551615
  %i.iv = sub nsw i128 0, %i.is
  %i.iw = and i128 %i.iv, 255
  %reass.sub42.i46 = sub nsw i128 %i.iu, %i.iw
  %i.ix = add nsw i128 %reass.sub42.i46, -18446744069414584321 ; 2 uses
  %i.iy = lshr i128 %i.ix, 64
  %i.iz = trunc i128 %i.ix to i64
  %i.ja = sub nsw i128 0, %i.iy
  %i.jb = and i128 %i.ja, 255
  %i.jc = sub nsw i128 %i.ii, %i.jb
  %i.jd = lshr i128 %i.jc, 64
  %i.je = trunc i128 %i.jd to i8
  %i.jf = icmp ne i8 %i.je, 0
  %i.jg = sext i1 %i.jf to i64                    ; 2 uses
  %i.jh = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.jg) #38, !srcloc !389 ; 4 uses
  %i.ji = and i64 %i.jh, %add.narrowed.i43
  %i.jj = xor i64 %i.jg, -1
  %i.jk = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.jj) #38, !srcloc !389 ; 4 uses
  %i.jl = and i64 %i.jk, %i.ij
  %i.jm = or i64 %i.jl, %i.ji
  %i.jn = and i64 %i.jh, %i.hx
  %i.jo = and i64 %i.jk, %i.in
  %i.jp = or i64 %i.jo, %i.jn
  %i.jq = and i64 %i.jh, %i.ic
  %i.jr = and i64 %i.jk, %i.it
  %i.js = or i64 %i.jr, %i.jq
  %i.jt = and i64 %i.jh, %i.ih
  %i.ju = and i64 %i.jk, %i.iz
  %i.jv = or i64 %i.ju, %i.jt
  store i64 %i.jm, ptr %i.g, align 16, !tbaa !96
  %i.jw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.jp, ptr %i.jw, align 8, !tbaa !96
  %i.jx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.js, ptr %i.jx, align 16, !tbaa !96
  %i.jy = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.jv, ptr %i.jy, align 8, !tbaa !96
  %10 = load i64, ptr %4, align 8, !tbaa !96      ; 2 uses
  store i64 %10, ptr %i.f, align 16, !tbaa !96
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %13 = load <2 x i64>, ptr %11, align 8, !tbaa !96
  %14 = load i64, ptr %11, align 8, !tbaa !96
  store <2 x i64> %13, ptr %12, align 8, !tbaa !96
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %16 = load i64, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %16, ptr %17, align 8, !tbaa !96
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %18 = phi i64 [ %14, %bb.c ], [ %.pre151, %bb.b ]
  %19 = phi i64 [ %10, %bb.c ], [ %.pre149, %bb.b ]
  %i.jz = phi i64 [ %i.hs, %bb.c ], [ %.pre148, %bb.b ]
  %i.ka = phi i64 [ %i.hp, %bb.c ], [ %.pre146, %bb.b ]
  %i.kb = phi i64 [ %i.hm, %bb.c ], [ %.pre144, %bb.b ]
  %i.kc = phi i64 [ %i.hk, %bb.c ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.i, ptr noundef %7, ptr noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  %i.kd = load i64, ptr %i.i, align 16, !tbaa !96
  %i.ke = zext i64 %i.kd to i128
  %i.kf = zext i64 %i.kc to i128
  %i.kg = sub nsw i128 %i.ke, %i.kf               ; 2 uses
  %i.kh = lshr i128 %i.kg, 64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !96
  %i.kk = zext i64 %i.kj to i128
  %i.kl = sub nsw i128 0, %i.kh
  %i.km = and i128 %i.kl, 255
  %i.kn = zext i64 %i.kb to i128
  %i.ko = add nuw nsw i128 %i.km, %i.kn
  %i.kp = sub nsw i128 %i.kk, %i.ko               ; 2 uses
  %i.kq = lshr i128 %i.kp, 64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ks = load i64, ptr %i.kr, align 16, !tbaa !96
  %i.kt = zext i64 %i.ks to i128
  %i.ku = sub nsw i128 0, %i.kq
  %i.kv = and i128 %i.ku, 255
  %i.kw = zext i64 %i.ka to i128
  %i.kx = add nuw nsw i128 %i.kv, %i.kw
  %i.ky = sub nsw i128 %i.kt, %i.kx               ; 2 uses
  %i.kz = lshr i128 %i.ky, 64
  %i.la = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !96
  %i.lc = zext i64 %i.lb to i128
  %i.ld = sub nsw i128 0, %i.kz
  %i.le = and i128 %i.ld, 255
  %i.lf = zext i64 %i.jz to i128
  %i.lg = add nuw nsw i128 %i.le, %i.lf
  %i.lh = sub nsw i128 %i.lc, %i.lg               ; 2 uses
  %i.li = and i128 %i.lh, 4703919738795935662080
  %i.lj = icmp ne i128 %i.li, 0
  %i.lk = sext i1 %i.lj to i64                    ; 2 uses
  %i.ll = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.lk) #38, !srcloc !389 ; 3 uses
  %i.lm = xor i64 %i.lk, -1
  %i.ln = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.lm) #38, !srcloc !389 ; 0 uses
  %i.lo = and i128 %i.kg, 18446744073709551615
  %i.lp = zext i64 %i.ll to i128
  %i.lq = add nuw nsw i128 %i.lo, %i.lp           ; 2 uses
  %i.lr = trunc i128 %i.lq to i64                 ; 4 uses
  %i.ls = lshr i128 %i.lq, 64
  %i.lt = and i64 %i.ll, 4294967295
  %i.lu = and i128 %i.kp, 18446744073709551615
  %i.lv = zext nneg i64 %i.lt to i128
  %i.lw = add nuw nsw i128 %i.lu, %i.lv
  %i.lx = add nuw nsw i128 %i.lw, %i.ls           ; 3 uses
  %i.ly = trunc i128 %i.lx to i64                 ; 2 uses
  %i.lz = lshr i128 %i.lx, 64
  %i.ma = and i128 %i.ky, 18446744073709551615
  %i.mb = add nuw nsw i128 %i.lz, %i.ma           ; 3 uses
  %i.mc = trunc i128 %i.mb to i64                 ; 2 uses
  %i.md = lshr i128 %i.mb, 64
  %i.me = and i64 %i.ll, -4294967295
  %i.mf = add nsw i128 %i.md, %i.lh
  %i.mg = trunc i128 %i.mf to i64
  %i.mh = add i64 %i.me, %i.mg                    ; 3 uses
  store i64 %i.lr, ptr %i.j, align 16, !tbaa !96
  %i.mi = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ly, ptr %i.mi, align 8, !tbaa !96
  %i.mj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.mc, ptr %i.mj, align 16, !tbaa !96
  %i.mk = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.mh, ptr %i.mk, align 8, !tbaa !96
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.c, ptr noundef nonnull %i.j, ptr noundef %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #36
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.k, ptr noundef nonnull %5, ptr noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #36
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.l, ptr noundef %8, ptr noundef %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #36
  %i.ml = load i64, ptr %i.l, align 16, !tbaa !96
  %i.mm = zext i64 %i.ml to i128
  %i.mn = zext i64 %19 to i128
  %i.mo = sub nsw i128 %i.mm, %i.mn               ; 2 uses
  %i.mp = lshr i128 %i.mo, 64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !96
  %i.ms = zext i64 %i.mr to i128
  %i.mt = sub nsw i128 0, %i.mp
  %i.mu = and i128 %i.mt, 255
  %i.mv = zext i64 %18 to i128
  %i.mw = add nuw nsw i128 %i.mu, %i.mv
  %i.mx = sub nsw i128 %i.ms, %i.mw               ; 2 uses
  %i.my = lshr i128 %i.mx, 64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.na = load i64, ptr %i.mz, align 16, !tbaa !96
  %i.nb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.nc = load i64, ptr %i.nb, align 16, !tbaa !96
  %i.nd = zext i64 %i.na to i128
  %i.ne = sub nsw i128 0, %i.my
  %i.nf = and i128 %i.ne, 255
  %i.ng = zext i64 %i.nc to i128
  %i.nh = add nuw nsw i128 %i.nf, %i.ng
  %i.ni = sub nsw i128 %i.nd, %i.nh               ; 2 uses
  %i.nj = lshr i128 %i.ni, 64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !96
  %i.nm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !96
  %i.no = zext i64 %i.nl to i128
  %i.np = sub nsw i128 0, %i.nj
  %i.nq = and i128 %i.np, 255
  %i.nr = zext i64 %i.nn to i128
  %i.ns = add nuw nsw i128 %i.nq, %i.nr
  %i.nt = sub nsw i128 %i.no, %i.ns               ; 2 uses
  %i.nu = and i128 %i.nt, 4703919738795935662080
  %i.nv = icmp ne i128 %i.nu, 0
  %i.nw = sext i1 %i.nv to i64                    ; 2 uses
  %i.nx = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.nw) #38, !srcloc !389 ; 3 uses
  %i.ny = xor i64 %i.nw, -1
  %i.nz = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ny) #38, !srcloc !389 ; 0 uses
  %i.oa = and i128 %i.mo, 18446744073709551615
  %i.ob = zext i64 %i.nx to i128
  %i.oc = add nuw nsw i128 %i.oa, %i.ob           ; 2 uses
  %i.od = trunc i128 %i.oc to i64                 ; 2 uses
  %i.oe = lshr i128 %i.oc, 64
  %i.of = and i64 %i.nx, 4294967295
  %i.og = and i128 %i.mx, 18446744073709551615
  %i.oh = zext nneg i64 %i.of to i128
  %i.oi = add nuw nsw i128 %i.og, %i.oh
  %i.oj = add nuw nsw i128 %i.oi, %i.oe           ; 2 uses
  %i.ok = lshr i128 %i.oj, 64
  %i.ol = and i128 %i.ni, 18446744073709551615
  %i.om = add nuw nsw i128 %i.ok, %i.ol           ; 2 uses
  %i.on = lshr i128 %i.om, 64
  %i.oo = and i64 %i.nx, -4294967295
  %i.op = add nsw i128 %i.on, %i.nt
  %i.oq = trunc i128 %i.op to i64
  %i.or = add i64 %i.oo, %i.oq
  %i.os = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ou = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %add.narrowed.i47 = shl i64 %i.od, 1            ; 2 uses
  %.lobit57 = lshr i64 %i.od, 63
  %i.ov = zext nneg i64 %.lobit57 to i128
  %i.ow = shl nuw nsw i128 %i.oj, 1
  %reass.add58 = and i128 %i.ow, 36893488147419103230 ; 2 uses
  %i.ox = or disjoint i128 %reass.add58, %i.ov    ; 2 uses
  %i.oy = trunc i128 %i.ox to i64
  %i.oz = lshr i128 %reass.add58, 64
  %i.pa = shl nuw nsw i128 %i.om, 1
  %i.pb = and i128 %i.pa, 36893488147419103230    ; 2 uses
  %i.pc = or disjoint i128 %i.pb, %i.oz           ; 2 uses
  %i.pd = trunc i128 %i.pc to i64
  %i.pe = lshr i128 %i.pb, 64
  %i.pf = zext i64 %i.or to i128                  ; 2 uses
  %i.pg = shl nuw nsw i128 %i.pf, 1
  %i.ph = or disjoint i128 %i.pg, %i.pe           ; 2 uses
  %i.pi = trunc i128 %i.ph to i64
  %i.pj = lshr i128 %i.pf, 63
  %i.pk = or disjoint i64 %add.narrowed.i47, 1
  %i.pl = and i128 %i.ox, 18446744073709551615
  %i.pm = add nsw i128 %i.pl, -4294967296         ; 2 uses
  %i.pn = lshr i128 %i.pm, 64
  %i.po = trunc i128 %i.pm to i64
  %i.pp = and i128 %i.pc, 18446744073709551615
  %i.pq = sub nsw i128 0, %i.pn
  %i.pr = and i128 %i.pq, 255
  %i.ps = sub nsw i128 %i.pp, %i.pr               ; 2 uses
  %i.pt = lshr i128 %i.ps, 64
  %i.pu = trunc i128 %i.ps to i64
  %i.pv = and i128 %i.ph, 18446744073709551615
  %i.pw = sub nsw i128 0, %i.pt
  %i.px = and i128 %i.pw, 255
  %reass.sub42.i50 = sub nsw i128 %i.pv, %i.px
  %i.py = add nsw i128 %reass.sub42.i50, -18446744069414584321 ; 2 uses
  %i.pz = lshr i128 %i.py, 64
  %i.qa = trunc i128 %i.py to i64
  %i.qb = sub nsw i128 0, %i.pz
  %i.qc = and i128 %i.qb, 255
  %i.qd = sub nsw i128 %i.pj, %i.qc
  %i.qe = lshr i128 %i.qd, 64
  %i.qf = trunc i128 %i.qe to i8
  %i.qg = icmp ne i8 %i.qf, 0
  %i.qh = sext i1 %i.qg to i64                    ; 2 uses
  %i.qi = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.qh) #38, !srcloc !389 ; 4 uses
  %i.qj = and i64 %i.qi, %add.narrowed.i47
  %i.qk = xor i64 %i.qh, -1
  %i.ql = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.qk) #38, !srcloc !389 ; 4 uses
  %i.qm = and i64 %i.ql, %i.pk
  %i.qn = or i64 %i.qm, %i.qj                     ; 2 uses
  %i.qo = and i64 %i.qi, %i.oy
  %i.qp = and i64 %i.ql, %i.po
  %i.qq = or i64 %i.qp, %i.qo                     ; 2 uses
  %i.qr = and i64 %i.qi, %i.pd
  %i.qs = and i64 %i.ql, %i.pu
  %i.qt = or i64 %i.qs, %i.qr                     ; 2 uses
  %i.qu = and i64 %i.qi, %i.pi
  %i.qv = and i64 %i.ql, %i.qa
  %i.qw = or i64 %i.qv, %i.qu                     ; 2 uses
  store i64 %i.qn, ptr %i.m, align 16, !tbaa !96
  store i64 %i.qq, ptr %i.os, align 8, !tbaa !96
  store i64 %i.qt, ptr %i.ot, align 16, !tbaa !96
  store i64 %i.qw, ptr %i.ou, align 8, !tbaa !96
  %i.qx = or i64 %i.ly, %i.lr
  %i.qy = or i64 %i.qx, %i.mc
  %i.qz = or i64 %i.qy, %i.mh
  %i.ra = or i64 %i.qz, %i.qn
  %i.rb = or i64 %i.ra, %i.qq
  %i.rc = or i64 %i.rb, %i.qt
  %i.rd = or i64 %i.rc, %i.qw
  %i.re = icmp eq i64 %i.rd, 0
  %i.rf = icmp ne i64 %i.aa, 0                    ; 2 uses
  %i.rg = icmp ne i64 %i.ak, 0                    ; 2 uses
  %i.rh = and i1 %i.rg, %i.re
  %i.ri = and i1 %i.rh, %i.rf
  %i.rj = sext i1 %i.ri to i64
  %i.rk = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.rj) #38, !srcloc !108
  %.not42 = icmp eq i64 %i.rk, 0
  br i1 %.not42, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZL22fiat_p256_point_doublePmS_S_PKmS1_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #36
  %add.narrowed.i53 = shl i64 %i.lr, 1            ; 2 uses
  %.lobit59 = lshr i64 %i.lr, 63
  %i.rl = zext nneg i64 %.lobit59 to i128
  %i.rm = shl nuw nsw i128 %i.lx, 1
  %reass.add60 = and i128 %i.rm, 36893488147419103230 ; 2 uses
  %i.rn = or disjoint i128 %reass.add60, %i.rl    ; 2 uses
  %i.ro = trunc i128 %i.rn to i64
  %i.rp = lshr i128 %reass.add60, 64
  %i.rq = shl nuw nsw i128 %i.mb, 1
  %i.rr = and i128 %i.rq, 36893488147419103230    ; 2 uses
  %i.rs = or disjoint i128 %i.rr, %i.rp           ; 2 uses
  %i.rt = trunc i128 %i.rs to i64
  %i.ru = lshr i128 %i.rr, 64
  %i.rv = zext i64 %i.mh to i128                  ; 2 uses
  %i.rw = shl nuw nsw i128 %i.rv, 1
  %i.rx = or disjoint i128 %i.rw, %i.ru           ; 2 uses
  %i.ry = trunc i128 %i.rx to i64
  %i.rz = lshr i128 %i.rv, 63
  %i.sa = or disjoint i64 %add.narrowed.i53, 1
  %i.sb = and i128 %i.rn, 18446744073709551615
  %i.sc = add nsw i128 %i.sb, -4294967296         ; 2 uses
  %i.sd = lshr i128 %i.sc, 64
  %i.se = trunc i128 %i.sc to i64
  %i.sf = and i128 %i.rs, 18446744073709551615
  %i.sg = sub nsw i128 0, %i.sd
  %i.sh = and i128 %i.sg, 255
  %i.si = sub nsw i128 %i.sf, %i.sh               ; 2 uses
  %i.sj = lshr i128 %i.si, 64
  %i.sk = trunc i128 %i.si to i64
  %i.sl = and i128 %i.rx, 18446744073709551615
  %i.sm = sub nsw i128 0, %i.sj
  %i.sn = and i128 %i.sm, 255
  %reass.sub42.i56 = sub nsw i128 %i.sl, %i.sn
  %i.so = add nsw i128 %reass.sub42.i56, -18446744069414584321 ; 2 uses
  %i.sp = lshr i128 %i.so, 64
  %i.sq = trunc i128 %i.so to i64
  %i.sr = sub nsw i128 0, %i.sp
  %i.ss = and i128 %i.sr, 255
  %i.st = sub nsw i128 %i.rz, %i.ss
  %i.su = lshr i128 %i.st, 64
  %i.sv = trunc i128 %i.su to i8
  %i.sw = icmp ne i8 %i.sv, 0
  %i.sx = sext i1 %i.sw to i64                    ; 2 uses
  %i.sy = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.sx) #38, !srcloc !389 ; 4 uses
  %i.sz = and i64 %i.sy, %add.narrowed.i53
  %i.ta = xor i64 %i.sx, -1
  %i.tb = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ta) #38, !srcloc !389 ; 4 uses
  %i.tc = and i64 %i.tb, %i.sa
  %i.td = or i64 %i.tc, %i.sz
  %i.te = and i64 %i.sy, %i.ro
  %i.tf = and i64 %i.tb, %i.se
  %i.tg = or i64 %i.tf, %i.te
  %i.th = and i64 %i.sy, %i.rt
  %i.ti = and i64 %i.tb, %i.sk
  %i.tj = or i64 %i.ti, %i.th
  %i.tk = and i64 %i.sy, %i.ry
  %i.tl = and i64 %i.tb, %i.sq
  %i.tm = or i64 %i.tl, %i.tk
  store i64 %i.td, ptr %i.n, align 16, !tbaa !96
  %i.tn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.tg, ptr %i.tn, align 8, !tbaa !96
  %i.to = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.tj, ptr %i.to, align 16, !tbaa !96
  %i.tp = getelementptr inbounds nuw i8, ptr %i.n, i64 24
end_hunk_0
