inline.NumInlined: 81
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 168
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 307
begin_hunk_0_@apply_prof_12:.preheader.i
  %i.hn = sext i16 %narrow29.i.1.2 to i32
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !45
  %i.hq = sext i16 %i.hp to i32
  %i.hr = mul nsw i32 %i.hq, %i.hn
  %i.hs = add nsw i32 %i.hr, %i.hm
  %i.ht = load i16, ptr %i.ag, align 2, !tbaa !45
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.hs, i32 -8192)
  %.0.i.1.2 = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 8191)
  %i.hv = trunc nsw i32 %.0.i.1.2 to i16
  %i.hw = add i16 %i.ht, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 514
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !45
  %i.hy = sext i16 %narrow.i.2.2 to i32
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !45
  %i.ib = sext i16 %i.ia to i32
  %i.ic = mul nsw i32 %i.ib, %i.hy
  %i.id = sext i16 %narrow29.i.2.2 to i32
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !45
  %i.ig = sext i16 %i.if to i32
  %i.ih = mul nsw i32 %i.ig, %i.id
  %i.ii = add nsw i32 %i.ih, %i.ic
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !45
  %i.il = tail call i32 @llvm.smax.i32(i32 %i.ii, i32 -8192)
  %.0.i.2.2 = tail call i32 @llvm.smin.i32(i32 %i.il, i32 8191)
  %i.im = trunc nsw i32 %.0.i.2.2 to i16
  %i.in = add i16 %i.ik, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i16 %i.in, ptr %i.io, align 2, !tbaa !45
  %i.ip = sext i16 %narrow.i.3.2 to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !45
  %i.is = sext i16 %i.ir to i32
  %i.it = mul nsw i32 %i.is, %i.ip
  %i.iu = sext i16 %narrow29.i.3.2 to i32
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !45
  %i.ix = sext i16 %i.iw to i32
  %i.iy = mul nsw i32 %i.ix, %i.iu
  %i.iz = add nsw i32 %i.iy, %i.it
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 518
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !45
  %i.jc = tail call i32 @llvm.smax.i32(i32 %i.iz, i32 -8192)
  %.0.i.3.2 = tail call i32 @llvm.smin.i32(i32 %i.jc, i32 8191)
  %i.jd = trunc nsw i32 %.0.i.3.2 to i16
  %i.je = add i16 %i.jb, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 518
  store i16 %i.je, ptr %i.jf, align 2, !tbaa !45
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.jh = extractelement <8 x i16> %i.bk, i64 0
  %i.ji = sext i16 %i.jh to i32
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !45
  %i.jl = sext i16 %i.jk to i32
  %i.jm = mul nsw i32 %i.jl, %i.ji
  %i.jn = extractelement <8 x i16> %i.bk, i64 1
  %i.jo = sext i16 %i.jn to i32
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !45
  %i.jr = sext i16 %i.jq to i32
  %i.js = mul nsw i32 %i.jr, %i.jo
  %i.jt = add nsw i32 %i.js, %i.jm
  %i.ju = load i16, ptr %i.ak, align 2, !tbaa !45
  %i.jv = tail call i32 @llvm.smax.i32(i32 %i.jt, i32 -8192)
  %.0.i.337 = tail call i32 @llvm.smin.i32(i32 %i.jv, i32 8191)
  %i.jw = trunc nsw i32 %.0.i.337 to i16
  %i.jx = add i16 %i.ju, %i.jw
  store i16 %i.jx, ptr %i.jg, align 2, !tbaa !45
  %i.jy = extractelement <8 x i16> %i.bk, i64 2
  %i.jz = sext i16 %i.jy to i32
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !45
  %i.kc = sext i16 %i.kb to i32
  %i.kd = mul nsw i32 %i.kc, %i.jz
  %i.ke = extractelement <8 x i16> %i.bk, i64 3
  %i.kf = sext i16 %i.ke to i32
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !45
  %i.ki = sext i16 %i.kh to i32
  %i.kj = mul nsw i32 %i.ki, %i.kf
  %i.kk = add nsw i32 %i.kj, %i.kd
  %i.kl = load i16, ptr %i.ap, align 2, !tbaa !45
  %i.km = tail call i32 @llvm.smax.i32(i32 %i.kk, i32 -8192)
  %.0.i.1.3 = tail call i32 @llvm.smin.i32(i32 %i.km, i32 8191)
  %i.kn = trunc nsw i32 %.0.i.1.3 to i16
  %i.ko = add i16 %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 770
  store i16 %i.ko, ptr %i.kp, align 2, !tbaa !45
  %i.kq = extractelement <8 x i16> %i.bk, i64 4
  %i.kr = sext i16 %i.kq to i32
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !45
  %i.ku = sext i16 %i.kt to i32
  %i.kv = mul nsw i32 %i.ku, %i.kr
  %i.kw = extractelement <8 x i16> %i.bk, i64 5
  %i.kx = sext i16 %i.kw to i32
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !45
  %i.la = sext i16 %i.kz to i32
  %i.lb = mul nsw i32 %i.la, %i.kx
  %i.lc = add nsw i32 %i.lb, %i.kv
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 772
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !45
  %i.lf = tail call i32 @llvm.smax.i32(i32 %i.lc, i32 -8192)
  %.0.i.2.3 = tail call i32 @llvm.smin.i32(i32 %i.lf, i32 8191)
  %i.lg = trunc nsw i32 %.0.i.2.3 to i16
  %i.lh = add i16 %i.le, %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i16 %i.lh, ptr %i.li, align 2, !tbaa !45
  %i.lj = extractelement <8 x i16> %i.bk, i64 6
  %i.lk = sext i16 %i.lj to i32
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !45
  %i.ln = sext i16 %i.lm to i32
  %i.lo = mul nsw i32 %i.ln, %i.lk
  %i.lp = extractelement <8 x i16> %i.bk, i64 7
  %i.lq = sext i16 %i.lp to i32
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !45
  %i.lt = sext i16 %i.ls to i32
  %i.lu = mul nsw i32 %i.lt, %i.lq
  %i.lv = add nsw i32 %i.lu, %i.lo
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 774
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !45
  %i.ly = tail call i32 @llvm.smax.i32(i32 %i.lv, i32 -8192)
  %.0.i.3.3 = tail call i32 @llvm.smin.i32(i32 %i.ly, i32 8191)
  %i.lz = trunc nsw i32 %.0.i.3.3 to i16
  %i.ma = add i16 %i.lx, %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 774
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !45
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_prof_uni_12(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #2 {
.preheader.i:
  %i.a = alloca [16 x i16], align 16              ; 8 uses
  %i.b = alloca [16 x i16], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds i8, ptr %2, i64 -2
  %i.d = getelementptr inbounds i8, ptr %2, i64 -256
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 262
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 254
  %i.h = load <4 x i16>, ptr %i.c, align 2, !tbaa !45 ; 2 uses
  %i.i = load <4 x i16>, ptr %i.g, align 2, !tbaa !45 ; 2 uses
  %i.j = shufflevector <4 x i16> %i.h, <4 x i16> %i.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.k = ashr <8 x i16> %i.j, splat (i16 6)       ; 3 uses
  %i.l = load <2 x i16>, ptr %i.e, align 2, !tbaa !45
  %i.m = load <2 x i16>, ptr %i.f, align 2, !tbaa !45
  %i.n = shufflevector <4 x i16> %i.h, <4 x i16> %i.i, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison>
  %i.o = shufflevector <2 x i16> %i.l, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.p = shufflevector <8 x i16> %i.n, <8 x i16> %i.o, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.q = shufflevector <2 x i16> %i.m, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.r = shufflevector <8 x i16> %i.p, <8 x i16> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.s = ashr <8 x i16> %i.r, splat (i16 6)       ; 3 uses
  %i.t = sub nsw <8 x i16> %i.s, %i.k
  store <8 x i16> %i.t, ptr %i.a, align 16, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 518
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 510
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 774
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 766
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.ad = load <4 x i16>, ptr %i.x, align 2, !tbaa !45 ; 2 uses
  %i.ae = load <4 x i16>, ptr %i.aa, align 2, !tbaa !45 ; 2 uses
  %i.af = shufflevector <4 x i16> %i.ad, <4 x i16> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ag = ashr <8 x i16> %i.af, splat (i16 6)     ; 3 uses
  %i.ah = load <2 x i16>, ptr %i.u, align 2, !tbaa !45
  %i.ai = load <2 x i16>, ptr %i.z, align 2, !tbaa !45
  %i.aj = shufflevector <4 x i16> %i.ad, <4 x i16> %i.ae, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison>
  %i.ak = shufflevector <2 x i16> %i.ah, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.am = shufflevector <2 x i16> %i.ai, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <8 x i16> %i.al, <8 x i16> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ao = ashr <8 x i16> %i.an, splat (i16 6)     ; 3 uses
  %i.ap = load <4 x i16>, ptr %i.d, align 2, !tbaa !45
  %i.aq = ashr <4 x i16> %i.ap, splat (i16 6)
  %i.ar = shufflevector <8 x i16> %i.s, <8 x i16> %i.ao, <8 x i32> <i32 poison, i32 4, i32 5, i32 6, i32 poison, i32 8, i32 9, i32 10>
  %i.as = shufflevector <8 x i16> %i.ar, <8 x i16> %i.k, <8 x i32> <i32 13, i32 1, i32 2, i32 3, i32 poison, i32 5, i32 6, i32 7>
  %i.at = shufflevector <8 x i16> %i.as, <8 x i16> %i.ag, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 6, i32 7>
  %i.au = shufflevector <8 x i16> %i.k, <8 x i16> %i.s, <4 x i32> <i32 1, i32 8, i32 9, i32 10>
  %i.av = shufflevector <4 x i16> %i.aq, <4 x i16> %i.au, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = sub nsw <8 x i16> %i.at, %i.av
  store <8 x i16> %i.aw, ptr %i.b, align 16, !tbaa !45
  %i.ax = sub nsw <8 x i16> %i.ao, %i.ag
  store <8 x i16> %i.ax, ptr %i.v, align 16, !tbaa !45
  %i.ay = load <4 x i16>, ptr %i.y, align 2, !tbaa !45
  %i.az = load <4 x i16>, ptr %i.ab, align 2, !tbaa !45
  %i.ba = ashr <4 x i16> %i.az, splat (i16 6)
  %i.bb = load <4 x i16>, ptr %i.ac, align 2, !tbaa !45
  %i.bc = shufflevector <4 x i16> %i.ay, <4 x i16> %i.bb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bd = ashr <8 x i16> %i.bc, splat (i16 6)
  %5 = shufflevector <8 x i16> %i.ag, <8 x i16> %i.ao, <4 x i32> <i32 5, i32 12, i32 13, i32 14>
  %6 = shufflevector <4 x i16> %5, <4 x i16> %i.ba, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.be = sub nsw <8 x i16> %6, %i.bd
  store <8 x i16> %i.be, ptr %i.w, align 16, !tbaa !45
  %i.bf = lshr i64 %1, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.030 = phi ptr [ %2, %.preheader.i ], [ %i.fi, %.preheader ] ; 5 uses
  %.02329 = phi ptr [ %0, %.preheader.i ], [ %i.fj, %.preheader ] ; 5 uses
  %i.bg = shl nuw nsw i64 %indvars.iv, 2          ; 7 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !45
  %i.bj = sext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bg
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !45
  %i.bm = sext i16 %i.bl to i32
  %i.bn = mul nsw i32 %i.bm, %i.bj
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bg
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !45
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bg
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !45
  %i.bt = sext i16 %i.bs to i32
  %i.bu = mul nsw i32 %i.bt, %i.bq
  %i.bv = add nsw i32 %i.bu, %i.bn
  %i.bw = load i16, ptr %.030, align 2, !tbaa !45
  %i.bx = sext i16 %i.bw to i32
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 -8192)
  %.0.i26 = tail call i32 @llvm.smin.i32(i32 %i.by, i32 8191)
  %i.bz = add nsw i32 %i.bx, 2
  %i.ca = add nsw i32 %i.bz, %.0.i26
  %i.cb = ashr i32 %i.ca, 2
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 0)
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 4095)
  %i.ce = trunc nuw nsw i32 %i.cd to i16
  store i16 %i.ce, ptr %.02329, align 2, !tbaa !45
  %i.cf = or disjoint i64 %i.bg, 1                ; 4 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !45
  %i.ci = sext i16 %i.ch to i32
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cf
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !45
  %i.cl = sext i16 %i.ck to i32
  %i.cm = mul nsw i32 %i.cl, %i.ci
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cf
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !45
  %i.cp = sext i16 %i.co to i32
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cf
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !45
  %i.cs = sext i16 %i.cr to i32
  %i.ct = mul nsw i32 %i.cs, %i.cp
  %i.cu = add nsw i32 %i.ct, %i.cm
  %i.cv = getelementptr inbounds nuw i8, ptr %.030, i64 2
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !45
  %i.cx = sext i16 %i.cw to i32
  %i.cy = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 -8192)
  %.0.i26.1 = tail call i32 @llvm.smin.i32(i32 %i.cy, i32 8191)
  %i.cz = add nsw i32 %i.cx, 2
  %i.da = add nsw i32 %i.cz, %.0.i26.1
  %i.db = ashr i32 %i.da, 2
  %i.dc = tail call i32 @llvm.smax.i32(i32 %i.db, i32 0)
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 4095)
  %i.de = trunc nuw nsw i32 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %.02329, i64 2
  store i16 %i.de, ptr %i.df, align 2, !tbaa !45
  %i.dg = or disjoint i64 %i.bg, 2                ; 4 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 4, !tbaa !45
  %i.dj = sext i16 %i.di to i32
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dg
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !45
  %i.dm = sext i16 %i.dl to i32
  %i.dn = mul nsw i32 %i.dm, %i.dj
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.dg
  %i.dp = load i16, ptr %i.do, align 4, !tbaa !45
  %i.dq = sext i16 %i.dp to i32
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dg
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !45
  %i.dt = sext i16 %i.ds to i32
  %i.du = mul nsw i32 %i.dt, %i.dq
  %i.dv = add nsw i32 %i.du, %i.dn
  %i.dw = getelementptr inbounds nuw i8, ptr %.030, i64 4
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !45
  %i.dy = sext i16 %i.dx to i32
  %i.dz = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 -8192)
  %.0.i26.2 = tail call i32 @llvm.smin.i32(i32 %i.dz, i32 8191)
  %i.ea = add nsw i32 %i.dy, 2
  %i.eb = add nsw i32 %i.ea, %.0.i26.2
  %i.ec = ashr i32 %i.eb, 2
  %i.ed = tail call i32 @llvm.smax.i32(i32 %i.ec, i32 0)
  %i.ee = tail call i32 @llvm.umin.i32(i32 %i.ed, i32 4095)
  %i.ef = trunc nuw nsw i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %.02329, i64 4
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !45
  %i.eh = or disjoint i64 %i.bg, 3                ; 4 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !45
  %i.ek = sext i16 %i.ej to i32
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.eh
  %i.em = load i16, ptr %i.el, align 2, !tbaa !45
  %i.en = sext i16 %i.em to i32
  %i.eo = mul nsw i32 %i.en, %i.ek
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.eh
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !45
  %i.er = sext i16 %i.eq to i32
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.eh
  %i.et = load i16, ptr %i.es, align 2, !tbaa !45
  %i.eu = sext i16 %i.et to i32
  %i.ev = mul nsw i32 %i.eu, %i.er
  %i.ew = add nsw i32 %i.ev, %i.eo
  %i.ex = getelementptr inbounds nuw i8, ptr %.030, i64 6
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !45
  %i.ez = sext i16 %i.ey to i32
  %i.fa = tail call i32 @llvm.smax.i32(i32 %i.ew, i32 -8192)
  %.0.i26.3 = tail call i32 @llvm.smin.i32(i32 %i.fa, i32 8191)
  %i.fb = add nsw i32 %i.ez, 2
  %i.fc = add nsw i32 %i.fb, %.0.i26.3
  %i.fd = ashr i32 %i.fc, 2
  %i.fe = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 0)
  %i.ff = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 4095)
  %i.fg = trunc nuw nsw i32 %i.ff to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %.02329, i64 6
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !45
  %i.fi = getelementptr inbounds nuw i8, ptr %.030, i64 256
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %.02329, i64 %i.bf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.a, label %.preheader, !llvm.loop !476

bb.a:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_prof_uni_w_12(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 {
.preheader.i:
  %i.a = alloca [16 x i16], align 16              ; 8 uses
  %i.b = alloca [16 x i16], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds i8, ptr %2, i64 -2
  %i.d = getelementptr inbounds i8, ptr %2, i64 -256
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 262
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 254
  %i.h = load <4 x i16>, ptr %i.c, align 2, !tbaa !45 ; 2 uses
  %i.i = load <4 x i16>, ptr %i.g, align 2, !tbaa !45 ; 2 uses
  %i.j = shufflevector <4 x i16> %i.h, <4 x i16> %i.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.k = ashr <8 x i16> %i.j, splat (i16 6)       ; 3 uses
  %i.l = load <2 x i16>, ptr %i.e, align 2, !tbaa !45
  %i.m = load <2 x i16>, ptr %i.f, align 2, !tbaa !45
  %i.n = shufflevector <4 x i16> %i.h, <4 x i16> %i.i, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison>
  %i.o = shufflevector <2 x i16> %i.l, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.p = shufflevector <8 x i16> %i.n, <8 x i16> %i.o, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.q = shufflevector <2 x i16> %i.m, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.r = shufflevector <8 x i16> %i.p, <8 x i16> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.s = ashr <8 x i16> %i.r, splat (i16 6)       ; 3 uses
  %i.t = sub nsw <8 x i16> %i.s, %i.k
  store <8 x i16> %i.t, ptr %i.a, align 16, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 518
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 510
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 774
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 766
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.ad = load <4 x i16>, ptr %i.x, align 2, !tbaa !45 ; 2 uses
  %i.ae = load <4 x i16>, ptr %i.aa, align 2, !tbaa !45 ; 2 uses
  %i.af = shufflevector <4 x i16> %i.ad, <4 x i16> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ag = ashr <8 x i16> %i.af, splat (i16 6)     ; 3 uses
  %i.ah = load <2 x i16>, ptr %i.u, align 2, !tbaa !45
  %i.ai = load <2 x i16>, ptr %i.z, align 2, !tbaa !45
  %i.aj = shufflevector <4 x i16> %i.ad, <4 x i16> %i.ae, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison>
  %i.ak = shufflevector <2 x i16> %i.ah, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.am = shufflevector <2 x i16> %i.ai, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <8 x i16> %i.al, <8 x i16> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ao = ashr <8 x i16> %i.an, splat (i16 6)     ; 3 uses
  %i.ap = load <4 x i16>, ptr %i.d, align 2, !tbaa !45
  %i.aq = ashr <4 x i16> %i.ap, splat (i16 6)
  %i.ar = shufflevector <8 x i16> %i.s, <8 x i16> %i.ao, <8 x i32> <i32 poison, i32 4, i32 5, i32 6, i32 poison, i32 8, i32 9, i32 10>
  %i.as = shufflevector <8 x i16> %i.ar, <8 x i16> %i.k, <8 x i32> <i32 13, i32 1, i32 2, i32 3, i32 poison, i32 5, i32 6, i32 7>
  %i.at = shufflevector <8 x i16> %i.as, <8 x i16> %i.ag, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 6, i32 7>
  %i.au = shufflevector <8 x i16> %i.k, <8 x i16> %i.s, <4 x i32> <i32 1, i32 8, i32 9, i32 10>
  %i.av = shufflevector <4 x i16> %i.aq, <4 x i16> %i.au, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = sub nsw <8 x i16> %i.at, %i.av
  store <8 x i16> %i.aw, ptr %i.b, align 16, !tbaa !45
  %i.ax = sub nsw <8 x i16> %i.ao, %i.ag
  store <8 x i16> %i.ax, ptr %i.v, align 16, !tbaa !45
  %i.ay = load <4 x i16>, ptr %i.y, align 2, !tbaa !45
  %i.az = load <4 x i16>, ptr %i.ab, align 2, !tbaa !45
  %i.ba = ashr <4 x i16> %i.az, splat (i16 6)
  %i.bb = load <4 x i16>, ptr %i.ac, align 2, !tbaa !45
  %i.bc = shufflevector <4 x i16> %i.ay, <4 x i16> %i.bb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bd = ashr <8 x i16> %i.bc, splat (i16 6)
  %8 = shufflevector <8 x i16> %i.ag, <8 x i16> %i.ao, <4 x i32> <i32 5, i32 12, i32 13, i32 14>
  %9 = shufflevector <4 x i16> %8, <4 x i16> %i.ba, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.be = sub nsw <8 x i16> %9, %i.bd
  store <8 x i16> %i.be, ptr %i.w, align 16, !tbaa !45
  %i.bf = lshr i64 %1, 1
  %i.bg = add nsw i32 %5, 2                       ; 4 uses
  %i.bh = add nsw i32 %5, 1
  %i.bi = shl nuw i32 1, %i.bh                    ; 4 uses
  %i.bj = shl nsw i32 %7, 4                       ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.037 = phi ptr [ %2, %.preheader.i ], [ %i.fu, %.preheader ] ; 5 uses
  %.03036 = phi ptr [ %0, %.preheader.i ], [ %i.fv, %.preheader ] ; 5 uses
  %i.bk = shl nuw nsw i64 %indvars.iv, 2          ; 7 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 8, !tbaa !45
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bk
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !45
  %i.bq = sext i16 %i.bp to i32
  %i.br = mul nsw i32 %i.bq, %i.bn
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bk
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !45
  %i.bu = sext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bk
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !45
  %i.bx = sext i16 %i.bw to i32
  %i.by = mul nsw i32 %i.bx, %i.bu
  %i.bz = add nsw i32 %i.by, %i.br
  %i.ca = load i16, ptr %.037, align 2, !tbaa !45
  %i.cb = sext i16 %i.ca to i32
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 -8192)
  %.0.i33 = tail call i32 @llvm.smin.i32(i32 %i.cc, i32 8191)
  %i.cd = add nsw i32 %.0.i33, %i.cb
  %i.ce = mul nsw i32 %i.cd, %6
  %i.cf = add nsw i32 %i.ce, %i.bi
  %i.cg = ashr i32 %i.cf, %i.bg
  %i.ch = add nsw i32 %i.cg, %i.bj
  %i.ci = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 0)
  %i.cj = tail call i32 @llvm.umin.i32(i32 %i.ci, i32 4095)
  %i.ck = trunc nuw nsw i32 %i.cj to i16
  store i16 %i.ck, ptr %.03036, align 2, !tbaa !45
  %i.cl = or disjoint i64 %i.bk, 1                ; 4 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !45
  %i.co = sext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cl
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !45
  %i.cr = sext i16 %i.cq to i32
  %i.cs = mul nsw i32 %i.cr, %i.co
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cl
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !45
  %i.cv = sext i16 %i.cu to i32
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cl
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !45
  %i.cy = sext i16 %i.cx to i32
  %i.cz = mul nsw i32 %i.cy, %i.cv
  %i.da = add nsw i32 %i.cz, %i.cs
  %i.db = getelementptr inbounds nuw i8, ptr %.037, i64 2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !45
  %i.dd = sext i16 %i.dc to i32
  %i.de = tail call i32 @llvm.smax.i32(i32 %i.da, i32 -8192)
  %.0.i33.1 = tail call i32 @llvm.smin.i32(i32 %i.de, i32 8191)
  %i.df = add nsw i32 %.0.i33.1, %i.dd
  %i.dg = mul nsw i32 %i.df, %6
  %i.dh = add nsw i32 %i.dg, %i.bi
  %i.di = ashr i32 %i.dh, %i.bg
  %i.dj = add nsw i32 %i.di, %i.bj
  %i.dk = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 0)
  %i.dl = tail call i32 @llvm.umin.i32(i32 %i.dk, i32 4095)
  %i.dm = trunc nuw nsw i32 %i.dl to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %.03036, i64 2
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !45
  %i.do = or disjoint i64 %i.bk, 2                ; 4 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 4, !tbaa !45
  %i.dr = sext i16 %i.dq to i32
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.do
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !45
  %i.du = sext i16 %i.dt to i32
  %i.dv = mul nsw i32 %i.du, %i.dr
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.do
  %i.dx = load i16, ptr %i.dw, align 4, !tbaa !45
  %i.dy = sext i16 %i.dx to i32
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.do
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !45
  %i.eb = sext i16 %i.ea to i32
  %i.ec = mul nsw i32 %i.eb, %i.dy
  %i.ed = add nsw i32 %i.ec, %i.dv
  %i.ee = getelementptr inbounds nuw i8, ptr %.037, i64 4
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !45
  %i.eg = sext i16 %i.ef to i32
  %i.eh = tail call i32 @llvm.smax.i32(i32 %i.ed, i32 -8192)
  %.0.i33.2 = tail call i32 @llvm.smin.i32(i32 %i.eh, i32 8191)
  %i.ei = add nsw i32 %.0.i33.2, %i.eg
  %i.ej = mul nsw i32 %i.ei, %6
  %i.ek = add nsw i32 %i.ej, %i.bi
  %i.el = ashr i32 %i.ek, %i.bg
  %i.em = add nsw i32 %i.el, %i.bj
  %i.en = tail call i32 @llvm.smax.i32(i32 %i.em, i32 0)
  %i.eo = tail call i32 @llvm.umin.i32(i32 %i.en, i32 4095)
  %i.ep = trunc nuw nsw i32 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %.03036, i64 4
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !45
  %i.er = or disjoint i64 %i.bk, 3                ; 4 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !45
  %i.eu = sext i16 %i.et to i32
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.er
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !45
  %i.ex = sext i16 %i.ew to i32
  %i.ey = mul nsw i32 %i.ex, %i.eu
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.er
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !45
  %i.fb = sext i16 %i.fa to i32
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.er
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !45
  %i.fe = sext i16 %i.fd to i32
  %i.ff = mul nsw i32 %i.fe, %i.fb
  %i.fg = add nsw i32 %i.ff, %i.ey
  %i.fh = getelementptr inbounds nuw i8, ptr %.037, i64 6
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !45
  %i.fj = sext i16 %i.fi to i32
  %i.fk = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 -8192)
  %.0.i33.3 = tail call i32 @llvm.smin.i32(i32 %i.fk, i32 8191)
  %i.fl = add nsw i32 %.0.i33.3, %i.fj
  %i.fm = mul nsw i32 %i.fl, %6
  %i.fn = add nsw i32 %i.fm, %i.bi
  %i.fo = ashr i32 %i.fn, %i.bg
  %i.fp = add nsw i32 %i.fo, %i.bj
  %i.fq = tail call i32 @llvm.smax.i32(i32 %i.fp, i32 0)
  %i.fr = tail call i32 @llvm.umin.i32(i32 %i.fq, i32 4095)
  %i.fs = trunc nuw nsw i32 %i.fr to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %.03036, i64 6
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !45
  %i.fu = getelementptr inbounds nuw i8, ptr %.037, i64 256
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.03036, i64 %i.bf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.a, label %.preheader, !llvm.loop !477

bb.a:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_bdof_12(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = alloca [2 x [256 x i16]], align 16       ; 6 uses
  %i.b = alloca [2 x [256 x i16]], align 16       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = lshr i64 %1, 1                           ; 2 uses
  %i.d = icmp sgt i32 %5, 0                       ; 2 uses
  %i.e = icmp sgt i32 %4, 0                       ; 2 uses
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %.preheader.preheader.i, label %prof_grad_filter_12.exit69

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.f = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.02535.i = phi i32 [ %i.y, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.02634.i = phi ptr [ %i.x, %._crit_edge.i ], [ %2, %.preheader.preheader.i ] ; 4 uses
  %.02733.i = phi ptr [ %i.v, %._crit_edge.i ], [ %i.a, %.preheader.preheader.i ] ; 3 uses
  %.02832.i = phi ptr [ %i.w, %._crit_edge.i ], [ %i.b, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.g = getelementptr i8, ptr %.02634.i, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.02634.i, i64 %i.h ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %wide.load = load <8 x i16>, ptr %i.i, align 2, !tbaa !45
  %i.j = ashr <8 x i16> %wide.load, splat (i16 6)
  %i.k = getelementptr inbounds i8, ptr %next.gep, i64 -2
  %wide.load108 = load <8 x i16>, ptr %i.k, align 2, !tbaa !45
  %i.l = ashr <8 x i16> %wide.load108, splat (i16 6)
  %i.m = sub nsw <8 x i16> %i.j, %i.l
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.02733.i, i64 %index
  store <8 x i16> %i.m, ptr %i.n, align 2, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %next.gep, i64 256
  %wide.load109 = load <8 x i16>, ptr %i.o, align 2, !tbaa !45
  %i.p = ashr <8 x i16> %wide.load109, splat (i16 6)
  %i.q = getelementptr inbounds i8, ptr %next.gep, i64 -256
  %wide.load110 = load <8 x i16>, ptr %i.q, align 2, !tbaa !45
  %i.r = ashr <8 x i16> %wide.load110, splat (i16 6)
  %i.s = sub nsw <8 x i16> %i.p, %i.r
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02832.i, i64 %index
  store <8 x i16> %i.s, ptr %i.t, align 2, !tbaa !45
end_hunk_0
begin_hunk_1_@apply_prof_10:.preheader.i
  %i.hn = sext i16 %narrow29.i.1.2 to i32
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !45
  %i.hq = sext i16 %i.hp to i32
  %i.hr = mul nsw i32 %i.hq, %i.hn
  %i.hs = add nsw i32 %i.hr, %i.hm
  %i.ht = load i16, ptr %i.ag, align 2, !tbaa !45
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.hs, i32 -8192)
  %.0.i.1.2 = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 8191)
  %i.hv = trunc nsw i32 %.0.i.1.2 to i16
  %i.hw = add i16 %i.ht, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 514
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !45
  %i.hy = sext i16 %narrow.i.2.2 to i32
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !45
  %i.ib = sext i16 %i.ia to i32
  %i.ic = mul nsw i32 %i.ib, %i.hy
  %i.id = sext i16 %narrow29.i.2.2 to i32
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !45
  %i.ig = sext i16 %i.if to i32
  %i.ih = mul nsw i32 %i.ig, %i.id
  %i.ii = add nsw i32 %i.ih, %i.ic
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !45
  %i.il = tail call i32 @llvm.smax.i32(i32 %i.ii, i32 -8192)
  %.0.i.2.2 = tail call i32 @llvm.smin.i32(i32 %i.il, i32 8191)
  %i.im = trunc nsw i32 %.0.i.2.2 to i16
  %i.in = add i16 %i.ik, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i16 %i.in, ptr %i.io, align 2, !tbaa !45
  %i.ip = sext i16 %narrow.i.3.2 to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !45
  %i.is = sext i16 %i.ir to i32
  %i.it = mul nsw i32 %i.is, %i.ip
  %i.iu = sext i16 %narrow29.i.3.2 to i32
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !45
  %i.ix = sext i16 %i.iw to i32
  %i.iy = mul nsw i32 %i.ix, %i.iu
  %i.iz = add nsw i32 %i.iy, %i.it
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 518
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !45
  %i.jc = tail call i32 @llvm.smax.i32(i32 %i.iz, i32 -8192)
  %.0.i.3.2 = tail call i32 @llvm.smin.i32(i32 %i.jc, i32 8191)
  %i.jd = trunc nsw i32 %.0.i.3.2 to i16
  %i.je = add i16 %i.jb, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 518
  store i16 %i.je, ptr %i.jf, align 2, !tbaa !45
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.jh = extractelement <8 x i16> %i.bk, i64 0
  %i.ji = sext i16 %i.jh to i32
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !45
  %i.jl = sext i16 %i.jk to i32
  %i.jm = mul nsw i32 %i.jl, %i.ji
  %i.jn = extractelement <8 x i16> %i.bk, i64 1
  %i.jo = sext i16 %i.jn to i32
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !45
  %i.jr = sext i16 %i.jq to i32
  %i.js = mul nsw i32 %i.jr, %i.jo
  %i.jt = add nsw i32 %i.js, %i.jm
  %i.ju = load i16, ptr %i.ak, align 2, !tbaa !45
  %i.jv = tail call i32 @llvm.smax.i32(i32 %i.jt, i32 -8192)
  %.0.i.337 = tail call i32 @llvm.smin.i32(i32 %i.jv, i32 8191)
  %i.jw = trunc nsw i32 %.0.i.337 to i16
  %i.jx = add i16 %i.ju, %i.jw
  store i16 %i.jx, ptr %i.jg, align 2, !tbaa !45
  %i.jy = extractelement <8 x i16> %i.bk, i64 2
  %i.jz = sext i16 %i.jy to i32
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !45
  %i.kc = sext i16 %i.kb to i32
  %i.kd = mul nsw i32 %i.kc, %i.jz
  %i.ke = extractelement <8 x i16> %i.bk, i64 3
  %i.kf = sext i16 %i.ke to i32
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !45
  %i.ki = sext i16 %i.kh to i32
  %i.kj = mul nsw i32 %i.ki, %i.kf
  %i.kk = add nsw i32 %i.kj, %i.kd
  %i.kl = load i16, ptr %i.ap, align 2, !tbaa !45
  %i.km = tail call i32 @llvm.smax.i32(i32 %i.kk, i32 -8192)
  %.0.i.1.3 = tail call i32 @llvm.smin.i32(i32 %i.km, i32 8191)
  %i.kn = trunc nsw i32 %.0.i.1.3 to i16
  %i.ko = add i16 %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 770
  store i16 %i.ko, ptr %i.kp, align 2, !tbaa !45
  %i.kq = extractelement <8 x i16> %i.bk, i64 4
  %i.kr = sext i16 %i.kq to i32
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !45
  %i.ku = sext i16 %i.kt to i32
  %i.kv = mul nsw i32 %i.ku, %i.kr
  %i.kw = extractelement <8 x i16> %i.bk, i64 5
  %i.kx = sext i16 %i.kw to i32
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !45
  %i.la = sext i16 %i.kz to i32
  %i.lb = mul nsw i32 %i.la, %i.kx
  %i.lc = add nsw i32 %i.lb, %i.kv
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 772
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !45
  %i.lf = tail call i32 @llvm.smax.i32(i32 %i.lc, i32 -8192)
  %.0.i.2.3 = tail call i32 @llvm.smin.i32(i32 %i.lf, i32 8191)
  %i.lg = trunc nsw i32 %.0.i.2.3 to i16
  %i.lh = add i16 %i.le, %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i16 %i.lh, ptr %i.li, align 2, !tbaa !45
  %i.lj = extractelement <8 x i16> %i.bk, i64 6
  %i.lk = sext i16 %i.lj to i32
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !45
  %i.ln = sext i16 %i.lm to i32
  %i.lo = mul nsw i32 %i.ln, %i.lk
  %i.lp = extractelement <8 x i16> %i.bk, i64 7
  %i.lq = sext i16 %i.lp to i32
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !45
  %i.lt = sext i16 %i.ls to i32
  %i.lu = mul nsw i32 %i.lt, %i.lq
  %i.lv = add nsw i32 %i.lu, %i.lo
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 774
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !45
  %i.ly = tail call i32 @llvm.smax.i32(i32 %i.lv, i32 -8192)
  %.0.i.3.3 = tail call i32 @llvm.smin.i32(i32 %i.ly, i32 8191)
  %i.lz = trunc nsw i32 %.0.i.3.3 to i16
  %i.ma = add i16 %i.lx, %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 774
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !45
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_prof_uni_10(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #2 {
.preheader.i:
  %i.a = alloca [16 x i16], align 16              ; 8 uses
  %i.b = alloca [16 x i16], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds i8, ptr %2, i64 -2
  %i.d = getelementptr inbounds i8, ptr %2, i64 -256
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 262
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 254
  %i.h = load <4 x i16>, ptr %i.c, align 2, !tbaa !45 ; 2 uses
  %i.i = load <4 x i16>, ptr %i.g, align 2, !tbaa !45 ; 2 uses
  %i.j = shufflevector <4 x i16> %i.h, <4 x i16> %i.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.k = ashr <8 x i16> %i.j, splat (i16 6)       ; 3 uses
  %i.l = load <2 x i16>, ptr %i.e, align 2, !tbaa !45
  %i.m = load <2 x i16>, ptr %i.f, align 2, !tbaa !45
  %i.n = shufflevector <4 x i16> %i.h, <4 x i16> %i.i, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison>
  %i.o = shufflevector <2 x i16> %i.l, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.p = shufflevector <8 x i16> %i.n, <8 x i16> %i.o, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.q = shufflevector <2 x i16> %i.m, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.r = shufflevector <8 x i16> %i.p, <8 x i16> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.s = ashr <8 x i16> %i.r, splat (i16 6)       ; 3 uses
  %i.t = sub nsw <8 x i16> %i.s, %i.k
  store <8 x i16> %i.t, ptr %i.a, align 16, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 518
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 510
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 774
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 766
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.ad = load <4 x i16>, ptr %i.x, align 2, !tbaa !45 ; 2 uses
  %i.ae = load <4 x i16>, ptr %i.aa, align 2, !tbaa !45 ; 2 uses
  %i.af = shufflevector <4 x i16> %i.ad, <4 x i16> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ag = ashr <8 x i16> %i.af, splat (i16 6)     ; 3 uses
  %i.ah = load <2 x i16>, ptr %i.u, align 2, !tbaa !45
  %i.ai = load <2 x i16>, ptr %i.z, align 2, !tbaa !45
  %i.aj = shufflevector <4 x i16> %i.ad, <4 x i16> %i.ae, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison>
  %i.ak = shufflevector <2 x i16> %i.ah, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.am = shufflevector <2 x i16> %i.ai, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <8 x i16> %i.al, <8 x i16> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ao = ashr <8 x i16> %i.an, splat (i16 6)     ; 3 uses
  %i.ap = load <4 x i16>, ptr %i.d, align 2, !tbaa !45
  %i.aq = ashr <4 x i16> %i.ap, splat (i16 6)
  %i.ar = shufflevector <8 x i16> %i.s, <8 x i16> %i.ao, <8 x i32> <i32 poison, i32 4, i32 5, i32 6, i32 poison, i32 8, i32 9, i32 10>
  %i.as = shufflevector <8 x i16> %i.ar, <8 x i16> %i.k, <8 x i32> <i32 13, i32 1, i32 2, i32 3, i32 poison, i32 5, i32 6, i32 7>
  %i.at = shufflevector <8 x i16> %i.as, <8 x i16> %i.ag, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 6, i32 7>
  %i.au = shufflevector <8 x i16> %i.k, <8 x i16> %i.s, <4 x i32> <i32 1, i32 8, i32 9, i32 10>
  %i.av = shufflevector <4 x i16> %i.aq, <4 x i16> %i.au, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = sub nsw <8 x i16> %i.at, %i.av
  store <8 x i16> %i.aw, ptr %i.b, align 16, !tbaa !45
  %i.ax = sub nsw <8 x i16> %i.ao, %i.ag
  store <8 x i16> %i.ax, ptr %i.v, align 16, !tbaa !45
  %i.ay = load <4 x i16>, ptr %i.y, align 2, !tbaa !45
  %i.az = load <4 x i16>, ptr %i.ab, align 2, !tbaa !45
  %i.ba = ashr <4 x i16> %i.az, splat (i16 6)
  %i.bb = load <4 x i16>, ptr %i.ac, align 2, !tbaa !45
  %i.bc = shufflevector <4 x i16> %i.ay, <4 x i16> %i.bb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bd = ashr <8 x i16> %i.bc, splat (i16 6)
  %5 = shufflevector <8 x i16> %i.ag, <8 x i16> %i.ao, <4 x i32> <i32 5, i32 12, i32 13, i32 14>
  %6 = shufflevector <4 x i16> %5, <4 x i16> %i.ba, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.be = sub nsw <8 x i16> %6, %i.bd
  store <8 x i16> %i.be, ptr %i.w, align 16, !tbaa !45
  %i.bf = lshr i64 %1, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.030 = phi ptr [ %2, %.preheader.i ], [ %i.fi, %.preheader ] ; 5 uses
  %.02329 = phi ptr [ %0, %.preheader.i ], [ %i.fj, %.preheader ] ; 5 uses
  %i.bg = shl nuw nsw i64 %indvars.iv, 2          ; 7 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !45
  %i.bj = sext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bg
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !45
  %i.bm = sext i16 %i.bl to i32
  %i.bn = mul nsw i32 %i.bm, %i.bj
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bg
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !45
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bg
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !45
  %i.bt = sext i16 %i.bs to i32
  %i.bu = mul nsw i32 %i.bt, %i.bq
  %i.bv = add nsw i32 %i.bu, %i.bn
  %i.bw = load i16, ptr %.030, align 2, !tbaa !45
  %i.bx = sext i16 %i.bw to i32
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 -8192)
  %.0.i26 = tail call i32 @llvm.smin.i32(i32 %i.by, i32 8191)
  %i.bz = add nsw i32 %i.bx, 8
  %i.ca = add nsw i32 %i.bz, %.0.i26
  %i.cb = ashr i32 %i.ca, 4
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 0)
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 1023)
  %i.ce = trunc nuw nsw i32 %i.cd to i16
  store i16 %i.ce, ptr %.02329, align 2, !tbaa !45
  %i.cf = or disjoint i64 %i.bg, 1                ; 4 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !45
  %i.ci = sext i16 %i.ch to i32
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cf
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !45
  %i.cl = sext i16 %i.ck to i32
  %i.cm = mul nsw i32 %i.cl, %i.ci
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cf
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !45
  %i.cp = sext i16 %i.co to i32
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cf
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !45
  %i.cs = sext i16 %i.cr to i32
  %i.ct = mul nsw i32 %i.cs, %i.cp
  %i.cu = add nsw i32 %i.ct, %i.cm
  %i.cv = getelementptr inbounds nuw i8, ptr %.030, i64 2
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !45
  %i.cx = sext i16 %i.cw to i32
  %i.cy = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 -8192)
  %.0.i26.1 = tail call i32 @llvm.smin.i32(i32 %i.cy, i32 8191)
  %i.cz = add nsw i32 %i.cx, 8
  %i.da = add nsw i32 %i.cz, %.0.i26.1
  %i.db = ashr i32 %i.da, 4
  %i.dc = tail call i32 @llvm.smax.i32(i32 %i.db, i32 0)
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 1023)
  %i.de = trunc nuw nsw i32 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %.02329, i64 2
  store i16 %i.de, ptr %i.df, align 2, !tbaa !45
  %i.dg = or disjoint i64 %i.bg, 2                ; 4 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 4, !tbaa !45
  %i.dj = sext i16 %i.di to i32
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dg
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !45
  %i.dm = sext i16 %i.dl to i32
  %i.dn = mul nsw i32 %i.dm, %i.dj
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.dg
  %i.dp = load i16, ptr %i.do, align 4, !tbaa !45
  %i.dq = sext i16 %i.dp to i32
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dg
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !45
  %i.dt = sext i16 %i.ds to i32
  %i.du = mul nsw i32 %i.dt, %i.dq
  %i.dv = add nsw i32 %i.du, %i.dn
  %i.dw = getelementptr inbounds nuw i8, ptr %.030, i64 4
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !45
  %i.dy = sext i16 %i.dx to i32
  %i.dz = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 -8192)
  %.0.i26.2 = tail call i32 @llvm.smin.i32(i32 %i.dz, i32 8191)
  %i.ea = add nsw i32 %i.dy, 8
  %i.eb = add nsw i32 %i.ea, %.0.i26.2
  %i.ec = ashr i32 %i.eb, 4
  %i.ed = tail call i32 @llvm.smax.i32(i32 %i.ec, i32 0)
  %i.ee = tail call i32 @llvm.umin.i32(i32 %i.ed, i32 1023)
  %i.ef = trunc nuw nsw i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %.02329, i64 4
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !45
  %i.eh = or disjoint i64 %i.bg, 3                ; 4 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !45
  %i.ek = sext i16 %i.ej to i32
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.eh
  %i.em = load i16, ptr %i.el, align 2, !tbaa !45
  %i.en = sext i16 %i.em to i32
  %i.eo = mul nsw i32 %i.en, %i.ek
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.eh
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !45
  %i.er = sext i16 %i.eq to i32
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.eh
  %i.et = load i16, ptr %i.es, align 2, !tbaa !45
  %i.eu = sext i16 %i.et to i32
  %i.ev = mul nsw i32 %i.eu, %i.er
  %i.ew = add nsw i32 %i.ev, %i.eo
  %i.ex = getelementptr inbounds nuw i8, ptr %.030, i64 6
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !45
  %i.ez = sext i16 %i.ey to i32
  %i.fa = tail call i32 @llvm.smax.i32(i32 %i.ew, i32 -8192)
  %.0.i26.3 = tail call i32 @llvm.smin.i32(i32 %i.fa, i32 8191)
  %i.fb = add nsw i32 %i.ez, 8
  %i.fc = add nsw i32 %i.fb, %.0.i26.3
  %i.fd = ashr i32 %i.fc, 4
  %i.fe = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 0)
  %i.ff = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 1023)
  %i.fg = trunc nuw nsw i32 %i.ff to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %.02329, i64 6
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !45
  %i.fi = getelementptr inbounds nuw i8, ptr %.030, i64 256
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %.02329, i64 %i.bf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.a, label %.preheader, !llvm.loop !1276

bb.a:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_prof_uni_w_10(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 {
.preheader.i:
  %i.a = alloca [16 x i16], align 16              ; 8 uses
  %i.b = alloca [16 x i16], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds i8, ptr %2, i64 -2
  %i.d = getelementptr inbounds i8, ptr %2, i64 -256
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 262
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 254
  %i.h = load <4 x i16>, ptr %i.c, align 2, !tbaa !45 ; 2 uses
  %i.i = load <4 x i16>, ptr %i.g, align 2, !tbaa !45 ; 2 uses
  %i.j = shufflevector <4 x i16> %i.h, <4 x i16> %i.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.k = ashr <8 x i16> %i.j, splat (i16 6)       ; 3 uses
  %i.l = load <2 x i16>, ptr %i.e, align 2, !tbaa !45
  %i.m = load <2 x i16>, ptr %i.f, align 2, !tbaa !45
  %i.n = shufflevector <4 x i16> %i.h, <4 x i16> %i.i, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison>
  %i.o = shufflevector <2 x i16> %i.l, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.p = shufflevector <8 x i16> %i.n, <8 x i16> %i.o, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.q = shufflevector <2 x i16> %i.m, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.r = shufflevector <8 x i16> %i.p, <8 x i16> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.s = ashr <8 x i16> %i.r, splat (i16 6)       ; 3 uses
  %i.t = sub nsw <8 x i16> %i.s, %i.k
  store <8 x i16> %i.t, ptr %i.a, align 16, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 518
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 510
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 774
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 766
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.ad = load <4 x i16>, ptr %i.x, align 2, !tbaa !45 ; 2 uses
  %i.ae = load <4 x i16>, ptr %i.aa, align 2, !tbaa !45 ; 2 uses
  %i.af = shufflevector <4 x i16> %i.ad, <4 x i16> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ag = ashr <8 x i16> %i.af, splat (i16 6)     ; 3 uses
  %i.ah = load <2 x i16>, ptr %i.u, align 2, !tbaa !45
  %i.ai = load <2 x i16>, ptr %i.z, align 2, !tbaa !45
  %i.aj = shufflevector <4 x i16> %i.ad, <4 x i16> %i.ae, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison>
  %i.ak = shufflevector <2 x i16> %i.ah, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.am = shufflevector <2 x i16> %i.ai, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <8 x i16> %i.al, <8 x i16> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ao = ashr <8 x i16> %i.an, splat (i16 6)     ; 3 uses
  %i.ap = load <4 x i16>, ptr %i.d, align 2, !tbaa !45
  %i.aq = ashr <4 x i16> %i.ap, splat (i16 6)
  %i.ar = shufflevector <8 x i16> %i.s, <8 x i16> %i.ao, <8 x i32> <i32 poison, i32 4, i32 5, i32 6, i32 poison, i32 8, i32 9, i32 10>
  %i.as = shufflevector <8 x i16> %i.ar, <8 x i16> %i.k, <8 x i32> <i32 13, i32 1, i32 2, i32 3, i32 poison, i32 5, i32 6, i32 7>
  %i.at = shufflevector <8 x i16> %i.as, <8 x i16> %i.ag, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 6, i32 7>
  %i.au = shufflevector <8 x i16> %i.k, <8 x i16> %i.s, <4 x i32> <i32 1, i32 8, i32 9, i32 10>
  %i.av = shufflevector <4 x i16> %i.aq, <4 x i16> %i.au, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = sub nsw <8 x i16> %i.at, %i.av
  store <8 x i16> %i.aw, ptr %i.b, align 16, !tbaa !45
  %i.ax = sub nsw <8 x i16> %i.ao, %i.ag
  store <8 x i16> %i.ax, ptr %i.v, align 16, !tbaa !45
  %i.ay = load <4 x i16>, ptr %i.y, align 2, !tbaa !45
  %i.az = load <4 x i16>, ptr %i.ab, align 2, !tbaa !45
  %i.ba = ashr <4 x i16> %i.az, splat (i16 6)
  %i.bb = load <4 x i16>, ptr %i.ac, align 2, !tbaa !45
  %i.bc = shufflevector <4 x i16> %i.ay, <4 x i16> %i.bb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bd = ashr <8 x i16> %i.bc, splat (i16 6)
  %8 = shufflevector <8 x i16> %i.ag, <8 x i16> %i.ao, <4 x i32> <i32 5, i32 12, i32 13, i32 14>
  %9 = shufflevector <4 x i16> %8, <4 x i16> %i.ba, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.be = sub nsw <8 x i16> %9, %i.bd
  store <8 x i16> %i.be, ptr %i.w, align 16, !tbaa !45
  %i.bf = lshr i64 %1, 1
  %i.bg = add nsw i32 %5, 4                       ; 4 uses
  %i.bh = add nsw i32 %5, 3
  %i.bi = shl nuw i32 1, %i.bh                    ; 4 uses
  %i.bj = shl nsw i32 %7, 2                       ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.037 = phi ptr [ %2, %.preheader.i ], [ %i.fu, %.preheader ] ; 5 uses
  %.03036 = phi ptr [ %0, %.preheader.i ], [ %i.fv, %.preheader ] ; 5 uses
  %i.bk = shl nuw nsw i64 %indvars.iv, 2          ; 7 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 8, !tbaa !45
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bk
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !45
  %i.bq = sext i16 %i.bp to i32
  %i.br = mul nsw i32 %i.bq, %i.bn
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bk
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !45
  %i.bu = sext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bk
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !45
  %i.bx = sext i16 %i.bw to i32
  %i.by = mul nsw i32 %i.bx, %i.bu
  %i.bz = add nsw i32 %i.by, %i.br
  %i.ca = load i16, ptr %.037, align 2, !tbaa !45
  %i.cb = sext i16 %i.ca to i32
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 -8192)
  %.0.i33 = tail call i32 @llvm.smin.i32(i32 %i.cc, i32 8191)
  %i.cd = add nsw i32 %.0.i33, %i.cb
  %i.ce = mul nsw i32 %i.cd, %6
  %i.cf = add nsw i32 %i.ce, %i.bi
  %i.cg = ashr i32 %i.cf, %i.bg
  %i.ch = add nsw i32 %i.cg, %i.bj
  %i.ci = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 0)
  %i.cj = tail call i32 @llvm.umin.i32(i32 %i.ci, i32 1023)
  %i.ck = trunc nuw nsw i32 %i.cj to i16
  store i16 %i.ck, ptr %.03036, align 2, !tbaa !45
  %i.cl = or disjoint i64 %i.bk, 1                ; 4 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !45
  %i.co = sext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cl
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !45
  %i.cr = sext i16 %i.cq to i32
  %i.cs = mul nsw i32 %i.cr, %i.co
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cl
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !45
  %i.cv = sext i16 %i.cu to i32
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cl
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !45
  %i.cy = sext i16 %i.cx to i32
  %i.cz = mul nsw i32 %i.cy, %i.cv
  %i.da = add nsw i32 %i.cz, %i.cs
  %i.db = getelementptr inbounds nuw i8, ptr %.037, i64 2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !45
  %i.dd = sext i16 %i.dc to i32
  %i.de = tail call i32 @llvm.smax.i32(i32 %i.da, i32 -8192)
  %.0.i33.1 = tail call i32 @llvm.smin.i32(i32 %i.de, i32 8191)
  %i.df = add nsw i32 %.0.i33.1, %i.dd
  %i.dg = mul nsw i32 %i.df, %6
  %i.dh = add nsw i32 %i.dg, %i.bi
  %i.di = ashr i32 %i.dh, %i.bg
  %i.dj = add nsw i32 %i.di, %i.bj
  %i.dk = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 0)
  %i.dl = tail call i32 @llvm.umin.i32(i32 %i.dk, i32 1023)
  %i.dm = trunc nuw nsw i32 %i.dl to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %.03036, i64 2
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !45
  %i.do = or disjoint i64 %i.bk, 2                ; 4 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 4, !tbaa !45
  %i.dr = sext i16 %i.dq to i32
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.do
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !45
  %i.du = sext i16 %i.dt to i32
  %i.dv = mul nsw i32 %i.du, %i.dr
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.do
  %i.dx = load i16, ptr %i.dw, align 4, !tbaa !45
  %i.dy = sext i16 %i.dx to i32
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.do
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !45
  %i.eb = sext i16 %i.ea to i32
  %i.ec = mul nsw i32 %i.eb, %i.dy
  %i.ed = add nsw i32 %i.ec, %i.dv
  %i.ee = getelementptr inbounds nuw i8, ptr %.037, i64 4
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !45
  %i.eg = sext i16 %i.ef to i32
  %i.eh = tail call i32 @llvm.smax.i32(i32 %i.ed, i32 -8192)
  %.0.i33.2 = tail call i32 @llvm.smin.i32(i32 %i.eh, i32 8191)
  %i.ei = add nsw i32 %.0.i33.2, %i.eg
  %i.ej = mul nsw i32 %i.ei, %6
  %i.ek = add nsw i32 %i.ej, %i.bi
  %i.el = ashr i32 %i.ek, %i.bg
  %i.em = add nsw i32 %i.el, %i.bj
  %i.en = tail call i32 @llvm.smax.i32(i32 %i.em, i32 0)
  %i.eo = tail call i32 @llvm.umin.i32(i32 %i.en, i32 1023)
  %i.ep = trunc nuw nsw i32 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %.03036, i64 4
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !45
  %i.er = or disjoint i64 %i.bk, 3                ; 4 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !45
  %i.eu = sext i16 %i.et to i32
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.er
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !45
  %i.ex = sext i16 %i.ew to i32
  %i.ey = mul nsw i32 %i.ex, %i.eu
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.er
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !45
  %i.fb = sext i16 %i.fa to i32
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.er
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !45
  %i.fe = sext i16 %i.fd to i32
  %i.ff = mul nsw i32 %i.fe, %i.fb
  %i.fg = add nsw i32 %i.ff, %i.ey
  %i.fh = getelementptr inbounds nuw i8, ptr %.037, i64 6
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !45
  %i.fj = sext i16 %i.fi to i32
  %i.fk = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 -8192)
  %.0.i33.3 = tail call i32 @llvm.smin.i32(i32 %i.fk, i32 8191)
  %i.fl = add nsw i32 %.0.i33.3, %i.fj
  %i.fm = mul nsw i32 %i.fl, %6
  %i.fn = add nsw i32 %i.fm, %i.bi
  %i.fo = ashr i32 %i.fn, %i.bg
  %i.fp = add nsw i32 %i.fo, %i.bj
  %i.fq = tail call i32 @llvm.smax.i32(i32 %i.fp, i32 0)
  %i.fr = tail call i32 @llvm.umin.i32(i32 %i.fq, i32 1023)
  %i.fs = trunc nuw nsw i32 %i.fr to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %.03036, i64 6
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !45
  %i.fu = getelementptr inbounds nuw i8, ptr %.037, i64 256
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.03036, i64 %i.bf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.a, label %.preheader, !llvm.loop !1277

bb.a:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_bdof_10(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = alloca [2 x [256 x i16]], align 16       ; 6 uses
  %i.b = alloca [2 x [256 x i16]], align 16       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = lshr i64 %1, 1                           ; 2 uses
  %i.d = icmp sgt i32 %5, 0                       ; 2 uses
  %i.e = icmp sgt i32 %4, 0                       ; 2 uses
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %.preheader.preheader.i, label %prof_grad_filter_10.exit69

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.f = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.02535.i = phi i32 [ %i.y, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.02634.i = phi ptr [ %i.x, %._crit_edge.i ], [ %2, %.preheader.preheader.i ] ; 4 uses
  %.02733.i = phi ptr [ %i.v, %._crit_edge.i ], [ %i.a, %.preheader.preheader.i ] ; 3 uses
  %.02832.i = phi ptr [ %i.w, %._crit_edge.i ], [ %i.b, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.g = getelementptr i8, ptr %.02634.i, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.02634.i, i64 %i.h ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %wide.load = load <8 x i16>, ptr %i.i, align 2, !tbaa !45
  %i.j = ashr <8 x i16> %wide.load, splat (i16 6)
  %i.k = getelementptr inbounds i8, ptr %next.gep, i64 -2
  %wide.load108 = load <8 x i16>, ptr %i.k, align 2, !tbaa !45
  %i.l = ashr <8 x i16> %wide.load108, splat (i16 6)
  %i.m = sub nsw <8 x i16> %i.j, %i.l
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.02733.i, i64 %index
  store <8 x i16> %i.m, ptr %i.n, align 2, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %next.gep, i64 256
  %wide.load109 = load <8 x i16>, ptr %i.o, align 2, !tbaa !45
  %i.p = ashr <8 x i16> %wide.load109, splat (i16 6)
  %i.q = getelementptr inbounds i8, ptr %next.gep, i64 -256
  %wide.load110 = load <8 x i16>, ptr %i.q, align 2, !tbaa !45
  %i.r = ashr <8 x i16> %wide.load110, splat (i16 6)
  %i.s = sub nsw <8 x i16> %i.p, %i.r
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02832.i, i64 %index
  store <8 x i16> %i.s, ptr %i.t, align 2, !tbaa !45
end_hunk_1
begin_hunk_2_@apply_prof_8:.preheader.i
  %i.hn = sext i16 %narrow29.i.1.2 to i32
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !45
  %i.hq = sext i16 %i.hp to i32
  %i.hr = mul nsw i32 %i.hq, %i.hn
  %i.hs = add nsw i32 %i.hr, %i.hm
  %i.ht = load i16, ptr %i.ag, align 2, !tbaa !45
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.hs, i32 -8192)
  %.0.i.1.2 = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 8191)
  %i.hv = trunc nsw i32 %.0.i.1.2 to i16
  %i.hw = add i16 %i.ht, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 514
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !45
  %i.hy = sext i16 %narrow.i.2.2 to i32
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !45
  %i.ib = sext i16 %i.ia to i32
  %i.ic = mul nsw i32 %i.ib, %i.hy
  %i.id = sext i16 %narrow29.i.2.2 to i32
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !45
  %i.ig = sext i16 %i.if to i32
  %i.ih = mul nsw i32 %i.ig, %i.id
  %i.ii = add nsw i32 %i.ih, %i.ic
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !45
  %i.il = tail call i32 @llvm.smax.i32(i32 %i.ii, i32 -8192)
  %.0.i.2.2 = tail call i32 @llvm.smin.i32(i32 %i.il, i32 8191)
  %i.im = trunc nsw i32 %.0.i.2.2 to i16
  %i.in = add i16 %i.ik, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i16 %i.in, ptr %i.io, align 2, !tbaa !45
  %i.ip = sext i16 %narrow.i.3.2 to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !45
  %i.is = sext i16 %i.ir to i32
  %i.it = mul nsw i32 %i.is, %i.ip
  %i.iu = sext i16 %narrow29.i.3.2 to i32
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !45
  %i.ix = sext i16 %i.iw to i32
  %i.iy = mul nsw i32 %i.ix, %i.iu
  %i.iz = add nsw i32 %i.iy, %i.it
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 518
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !45
  %i.jc = tail call i32 @llvm.smax.i32(i32 %i.iz, i32 -8192)
  %.0.i.3.2 = tail call i32 @llvm.smin.i32(i32 %i.jc, i32 8191)
  %i.jd = trunc nsw i32 %.0.i.3.2 to i16
  %i.je = add i16 %i.jb, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 518
  store i16 %i.je, ptr %i.jf, align 2, !tbaa !45
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.jh = extractelement <8 x i16> %i.bk, i64 0
  %i.ji = sext i16 %i.jh to i32
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !45
  %i.jl = sext i16 %i.jk to i32
  %i.jm = mul nsw i32 %i.jl, %i.ji
  %i.jn = extractelement <8 x i16> %i.bk, i64 1
  %i.jo = sext i16 %i.jn to i32
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !45
  %i.jr = sext i16 %i.jq to i32
  %i.js = mul nsw i32 %i.jr, %i.jo
  %i.jt = add nsw i32 %i.js, %i.jm
  %i.ju = load i16, ptr %i.ak, align 2, !tbaa !45
  %i.jv = tail call i32 @llvm.smax.i32(i32 %i.jt, i32 -8192)
  %.0.i.337 = tail call i32 @llvm.smin.i32(i32 %i.jv, i32 8191)
  %i.jw = trunc nsw i32 %.0.i.337 to i16
  %i.jx = add i16 %i.ju, %i.jw
  store i16 %i.jx, ptr %i.jg, align 2, !tbaa !45
  %i.jy = extractelement <8 x i16> %i.bk, i64 2
  %i.jz = sext i16 %i.jy to i32
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !45
  %i.kc = sext i16 %i.kb to i32
  %i.kd = mul nsw i32 %i.kc, %i.jz
  %i.ke = extractelement <8 x i16> %i.bk, i64 3
  %i.kf = sext i16 %i.ke to i32
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !45
  %i.ki = sext i16 %i.kh to i32
  %i.kj = mul nsw i32 %i.ki, %i.kf
  %i.kk = add nsw i32 %i.kj, %i.kd
  %i.kl = load i16, ptr %i.ap, align 2, !tbaa !45
  %i.km = tail call i32 @llvm.smax.i32(i32 %i.kk, i32 -8192)
  %.0.i.1.3 = tail call i32 @llvm.smin.i32(i32 %i.km, i32 8191)
  %i.kn = trunc nsw i32 %.0.i.1.3 to i16
  %i.ko = add i16 %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 770
  store i16 %i.ko, ptr %i.kp, align 2, !tbaa !45
  %i.kq = extractelement <8 x i16> %i.bk, i64 4
  %i.kr = sext i16 %i.kq to i32
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !45
  %i.ku = sext i16 %i.kt to i32
  %i.kv = mul nsw i32 %i.ku, %i.kr
  %i.kw = extractelement <8 x i16> %i.bk, i64 5
  %i.kx = sext i16 %i.kw to i32
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !45
  %i.la = sext i16 %i.kz to i32
  %i.lb = mul nsw i32 %i.la, %i.kx
  %i.lc = add nsw i32 %i.lb, %i.kv
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 772
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !45
  %i.lf = tail call i32 @llvm.smax.i32(i32 %i.lc, i32 -8192)
  %.0.i.2.3 = tail call i32 @llvm.smin.i32(i32 %i.lf, i32 8191)
  %i.lg = trunc nsw i32 %.0.i.2.3 to i16
  %i.lh = add i16 %i.le, %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i16 %i.lh, ptr %i.li, align 2, !tbaa !45
  %i.lj = extractelement <8 x i16> %i.bk, i64 6
  %i.lk = sext i16 %i.lj to i32
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !45
  %i.ln = sext i16 %i.lm to i32
  %i.lo = mul nsw i32 %i.ln, %i.lk
  %i.lp = extractelement <8 x i16> %i.bk, i64 7
  %i.lq = sext i16 %i.lp to i32
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !45
  %i.lt = sext i16 %i.ls to i32
  %i.lu = mul nsw i32 %i.lt, %i.lq
  %i.lv = add nsw i32 %i.lu, %i.lo
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 774
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !45
  %i.ly = tail call i32 @llvm.smax.i32(i32 %i.lv, i32 -8192)
  %.0.i.3.3 = tail call i32 @llvm.smin.i32(i32 %i.ly, i32 8191)
  %i.lz = trunc nsw i32 %.0.i.3.3 to i16
  %i.ma = add i16 %i.lx, %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 774
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !45
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_prof_uni_8(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #2 {
.preheader.i:
  %i.a = alloca [16 x i16], align 16              ; 8 uses
  %i.b = alloca [16 x i16], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds i8, ptr %2, i64 -2
  %i.d = getelementptr inbounds i8, ptr %2, i64 -256
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 262
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 254
  %i.h = load <4 x i16>, ptr %i.c, align 2, !tbaa !45 ; 2 uses
  %i.i = load <4 x i16>, ptr %i.g, align 2, !tbaa !45 ; 2 uses
  %i.j = shufflevector <4 x i16> %i.h, <4 x i16> %i.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.k = ashr <8 x i16> %i.j, splat (i16 6)       ; 3 uses
  %i.l = load <2 x i16>, ptr %i.e, align 2, !tbaa !45
  %i.m = load <2 x i16>, ptr %i.f, align 2, !tbaa !45
  %i.n = shufflevector <4 x i16> %i.h, <4 x i16> %i.i, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison>
  %i.o = shufflevector <2 x i16> %i.l, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.p = shufflevector <8 x i16> %i.n, <8 x i16> %i.o, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.q = shufflevector <2 x i16> %i.m, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.r = shufflevector <8 x i16> %i.p, <8 x i16> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.s = ashr <8 x i16> %i.r, splat (i16 6)       ; 3 uses
  %i.t = sub nsw <8 x i16> %i.s, %i.k
  store <8 x i16> %i.t, ptr %i.a, align 16, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 518
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 510
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 774
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 766
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.ad = load <4 x i16>, ptr %i.x, align 2, !tbaa !45 ; 2 uses
  %i.ae = load <4 x i16>, ptr %i.aa, align 2, !tbaa !45 ; 2 uses
  %i.af = shufflevector <4 x i16> %i.ad, <4 x i16> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ag = ashr <8 x i16> %i.af, splat (i16 6)     ; 3 uses
  %i.ah = load <2 x i16>, ptr %i.u, align 2, !tbaa !45
  %i.ai = load <2 x i16>, ptr %i.z, align 2, !tbaa !45
  %i.aj = shufflevector <4 x i16> %i.ad, <4 x i16> %i.ae, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison>
  %i.ak = shufflevector <2 x i16> %i.ah, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.am = shufflevector <2 x i16> %i.ai, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <8 x i16> %i.al, <8 x i16> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ao = ashr <8 x i16> %i.an, splat (i16 6)     ; 3 uses
  %i.ap = load <4 x i16>, ptr %i.d, align 2, !tbaa !45
  %i.aq = ashr <4 x i16> %i.ap, splat (i16 6)
  %i.ar = shufflevector <8 x i16> %i.s, <8 x i16> %i.ao, <8 x i32> <i32 poison, i32 4, i32 5, i32 6, i32 poison, i32 8, i32 9, i32 10>
  %i.as = shufflevector <8 x i16> %i.ar, <8 x i16> %i.k, <8 x i32> <i32 13, i32 1, i32 2, i32 3, i32 poison, i32 5, i32 6, i32 7>
  %i.at = shufflevector <8 x i16> %i.as, <8 x i16> %i.ag, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 6, i32 7>
  %i.au = shufflevector <8 x i16> %i.k, <8 x i16> %i.s, <4 x i32> <i32 1, i32 8, i32 9, i32 10>
  %i.av = shufflevector <4 x i16> %i.aq, <4 x i16> %i.au, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = sub nsw <8 x i16> %i.at, %i.av
  store <8 x i16> %i.aw, ptr %i.b, align 16, !tbaa !45
  %i.ax = sub nsw <8 x i16> %i.ao, %i.ag
  store <8 x i16> %i.ax, ptr %i.v, align 16, !tbaa !45
  %i.ay = load <4 x i16>, ptr %i.y, align 2, !tbaa !45
  %i.az = load <4 x i16>, ptr %i.ab, align 2, !tbaa !45
  %i.ba = ashr <4 x i16> %i.az, splat (i16 6)
  %i.bb = load <4 x i16>, ptr %i.ac, align 2, !tbaa !45
  %i.bc = shufflevector <4 x i16> %i.ay, <4 x i16> %i.bb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bd = ashr <8 x i16> %i.bc, splat (i16 6)
  %5 = shufflevector <8 x i16> %i.ag, <8 x i16> %i.ao, <4 x i32> <i32 5, i32 12, i32 13, i32 14>
  %6 = shufflevector <4 x i16> %5, <4 x i16> %i.ba, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.be = sub nsw <8 x i16> %6, %i.bd
  store <8 x i16> %i.be, ptr %i.w, align 16, !tbaa !45
  br label %.preheader

.preheader:                                       ; preds = %.preheader.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.030 = phi ptr [ %2, %.preheader.i ], [ %i.fd, %.preheader ] ; 5 uses
  %.02329 = phi ptr [ %0, %.preheader.i ], [ %i.fe, %.preheader ] ; 5 uses
  %i.bf = shl nuw nsw i64 %indvars.iv, 2          ; 7 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !45
  %i.bi = sext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bf
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !45
  %i.bl = sext i16 %i.bk to i32
  %i.bm = mul nsw i32 %i.bl, %i.bi
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bf
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !45
  %i.bp = sext i16 %i.bo to i32
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bf
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !45
  %i.bs = sext i16 %i.br to i32
  %i.bt = mul nsw i32 %i.bs, %i.bp
  %i.bu = add nsw i32 %i.bt, %i.bm
  %i.bv = load i16, ptr %.030, align 2, !tbaa !45
  %i.bw = sext i16 %i.bv to i32
  %i.bx = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 -8192)
  %.0.i = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 8191)
  %i.by = add nsw i32 %i.bw, 32
  %i.bz = add nsw i32 %i.by, %.0.i
  %i.ca = ashr i32 %i.bz, 6                       ; 3 uses
  %.not.i = icmp ult i32 %i.ca, 256
  %isnotneg.i = icmp sgt i32 %i.ca, -1
  %i.cb = sext i1 %isnotneg.i to i8
  %i.cc = trunc nuw i32 %i.ca to i8
  %.0.i26 = select i1 %.not.i, i8 %i.cc, i8 %i.cb
  store i8 %.0.i26, ptr %.02329, align 1, !tbaa !62
  %i.cd = or disjoint i64 %i.bf, 1                ; 4 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !45
  %i.cg = sext i16 %i.cf to i32
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cd
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !45
  %i.cj = sext i16 %i.ci to i32
  %i.ck = mul nsw i32 %i.cj, %i.cg
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cd
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !45
  %i.cn = sext i16 %i.cm to i32
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cd
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !45
  %i.cq = sext i16 %i.cp to i32
  %i.cr = mul nsw i32 %i.cq, %i.cn
  %i.cs = add nsw i32 %i.cr, %i.ck
  %i.ct = getelementptr inbounds nuw i8, ptr %.030, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !45
  %i.cv = sext i16 %i.cu to i32
  %i.cw = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 -8192)
  %.0.i.1 = tail call i32 @llvm.smin.i32(i32 %i.cw, i32 8191)
  %i.cx = add nsw i32 %i.cv, 32
  %i.cy = add nsw i32 %i.cx, %.0.i.1
  %i.cz = ashr i32 %i.cy, 6                       ; 3 uses
  %.not.i.1 = icmp ult i32 %i.cz, 256
  %isnotneg.i.1 = icmp sgt i32 %i.cz, -1
  %i.da = sext i1 %isnotneg.i.1 to i8
  %i.db = trunc nuw i32 %i.cz to i8
  %.0.i26.1 = select i1 %.not.i.1, i8 %i.db, i8 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.02329, i64 1
  store i8 %.0.i26.1, ptr %i.dc, align 1, !tbaa !62
  %i.dd = or disjoint i64 %i.bf, 2                ; 4 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 4, !tbaa !45
  %i.dg = sext i16 %i.df to i32
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dd
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !45
  %i.dj = sext i16 %i.di to i32
  %i.dk = mul nsw i32 %i.dj, %i.dg
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.dd
  %i.dm = load i16, ptr %i.dl, align 4, !tbaa !45
  %i.dn = sext i16 %i.dm to i32
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dd
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !45
  %i.dq = sext i16 %i.dp to i32
  %i.dr = mul nsw i32 %i.dq, %i.dn
  %i.ds = add nsw i32 %i.dr, %i.dk
  %i.dt = getelementptr inbounds nuw i8, ptr %.030, i64 4
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !45
  %i.dv = sext i16 %i.du to i32
  %i.dw = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 -8192)
  %.0.i.2 = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 8191)
  %i.dx = add nsw i32 %i.dv, 32
  %i.dy = add nsw i32 %i.dx, %.0.i.2
  %i.dz = ashr i32 %i.dy, 6                       ; 3 uses
  %.not.i.2 = icmp ult i32 %i.dz, 256
  %isnotneg.i.2 = icmp sgt i32 %i.dz, -1
  %i.ea = sext i1 %isnotneg.i.2 to i8
  %i.eb = trunc nuw i32 %i.dz to i8
  %.0.i26.2 = select i1 %.not.i.2, i8 %i.eb, i8 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %.02329, i64 2
  store i8 %.0.i26.2, ptr %i.ec, align 1, !tbaa !62
  %i.ed = or disjoint i64 %i.bf, 3                ; 4 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !45
  %i.eg = sext i16 %i.ef to i32
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ed
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !45
  %i.ej = sext i16 %i.ei to i32
  %i.ek = mul nsw i32 %i.ej, %i.eg
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ed
  %i.em = load i16, ptr %i.el, align 2, !tbaa !45
  %i.en = sext i16 %i.em to i32
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ed
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !45
  %i.eq = sext i16 %i.ep to i32
  %i.er = mul nsw i32 %i.eq, %i.en
  %i.es = add nsw i32 %i.er, %i.ek
  %i.et = getelementptr inbounds nuw i8, ptr %.030, i64 6
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !45
  %i.ev = sext i16 %i.eu to i32
  %i.ew = tail call i32 @llvm.smax.i32(i32 %i.es, i32 -8192)
  %.0.i.3 = tail call i32 @llvm.smin.i32(i32 %i.ew, i32 8191)
  %i.ex = add nsw i32 %i.ev, 32
  %i.ey = add nsw i32 %i.ex, %.0.i.3
  %i.ez = ashr i32 %i.ey, 6                       ; 3 uses
  %.not.i.3 = icmp ult i32 %i.ez, 256
  %isnotneg.i.3 = icmp sgt i32 %i.ez, -1
  %i.fa = sext i1 %isnotneg.i.3 to i8
  %i.fb = trunc nuw i32 %i.ez to i8
  %.0.i26.3 = select i1 %.not.i.3, i8 %i.fb, i8 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %.02329, i64 3
  store i8 %.0.i26.3, ptr %i.fc, align 1, !tbaa !62
  %i.fd = getelementptr inbounds nuw i8, ptr %.030, i64 256
  %i.fe = getelementptr inbounds i8, ptr %.02329, i64 %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.a, label %.preheader, !llvm.loop !1991

bb.a:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_prof_uni_w_8(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 {
.preheader.i:
  %i.a = alloca [16 x i16], align 16              ; 8 uses
  %i.b = alloca [16 x i16], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds i8, ptr %2, i64 -2
  %i.d = getelementptr inbounds i8, ptr %2, i64 -256
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 262
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 254
  %i.h = load <4 x i16>, ptr %i.c, align 2, !tbaa !45 ; 2 uses
  %i.i = load <4 x i16>, ptr %i.g, align 2, !tbaa !45 ; 2 uses
  %i.j = shufflevector <4 x i16> %i.h, <4 x i16> %i.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.k = ashr <8 x i16> %i.j, splat (i16 6)       ; 3 uses
  %i.l = load <2 x i16>, ptr %i.e, align 2, !tbaa !45
  %i.m = load <2 x i16>, ptr %i.f, align 2, !tbaa !45
  %i.n = shufflevector <4 x i16> %i.h, <4 x i16> %i.i, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison>
  %i.o = shufflevector <2 x i16> %i.l, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.p = shufflevector <8 x i16> %i.n, <8 x i16> %i.o, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.q = shufflevector <2 x i16> %i.m, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.r = shufflevector <8 x i16> %i.p, <8 x i16> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.s = ashr <8 x i16> %i.r, splat (i16 6)       ; 3 uses
  %i.t = sub nsw <8 x i16> %i.s, %i.k
  store <8 x i16> %i.t, ptr %i.a, align 16, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 518
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 510
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 774
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 766
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.ad = load <4 x i16>, ptr %i.x, align 2, !tbaa !45 ; 2 uses
  %i.ae = load <4 x i16>, ptr %i.aa, align 2, !tbaa !45 ; 2 uses
  %i.af = shufflevector <4 x i16> %i.ad, <4 x i16> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ag = ashr <8 x i16> %i.af, splat (i16 6)     ; 3 uses
  %i.ah = load <2 x i16>, ptr %i.u, align 2, !tbaa !45
  %i.ai = load <2 x i16>, ptr %i.z, align 2, !tbaa !45
  %i.aj = shufflevector <4 x i16> %i.ad, <4 x i16> %i.ae, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison>
  %i.ak = shufflevector <2 x i16> %i.ah, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.am = shufflevector <2 x i16> %i.ai, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <8 x i16> %i.al, <8 x i16> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ao = ashr <8 x i16> %i.an, splat (i16 6)     ; 3 uses
  %i.ap = load <4 x i16>, ptr %i.d, align 2, !tbaa !45
  %i.aq = ashr <4 x i16> %i.ap, splat (i16 6)
  %i.ar = shufflevector <8 x i16> %i.s, <8 x i16> %i.ao, <8 x i32> <i32 poison, i32 4, i32 5, i32 6, i32 poison, i32 8, i32 9, i32 10>
  %i.as = shufflevector <8 x i16> %i.ar, <8 x i16> %i.k, <8 x i32> <i32 13, i32 1, i32 2, i32 3, i32 poison, i32 5, i32 6, i32 7>
  %i.at = shufflevector <8 x i16> %i.as, <8 x i16> %i.ag, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 6, i32 7>
  %i.au = shufflevector <8 x i16> %i.k, <8 x i16> %i.s, <4 x i32> <i32 1, i32 8, i32 9, i32 10>
  %i.av = shufflevector <4 x i16> %i.aq, <4 x i16> %i.au, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = sub nsw <8 x i16> %i.at, %i.av
  store <8 x i16> %i.aw, ptr %i.b, align 16, !tbaa !45
  %i.ax = sub nsw <8 x i16> %i.ao, %i.ag
  store <8 x i16> %i.ax, ptr %i.v, align 16, !tbaa !45
  %i.ay = load <4 x i16>, ptr %i.y, align 2, !tbaa !45
  %i.az = load <4 x i16>, ptr %i.ab, align 2, !tbaa !45
  %i.ba = ashr <4 x i16> %i.az, splat (i16 6)
  %i.bb = load <4 x i16>, ptr %i.ac, align 2, !tbaa !45
  %i.bc = shufflevector <4 x i16> %i.ay, <4 x i16> %i.bb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bd = ashr <8 x i16> %i.bc, splat (i16 6)
  %8 = shufflevector <8 x i16> %i.ag, <8 x i16> %i.ao, <4 x i32> <i32 5, i32 12, i32 13, i32 14>
  %9 = shufflevector <4 x i16> %8, <4 x i16> %i.ba, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.be = sub nsw <8 x i16> %9, %i.bd
  store <8 x i16> %i.be, ptr %i.w, align 16, !tbaa !45
  %i.bf = add nsw i32 %5, 6                       ; 4 uses
  %i.bg = add nsw i32 %5, 5
  %i.bh = shl nuw i32 1, %i.bg                    ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.037 = phi ptr [ %2, %.preheader.i ], [ %i.fo, %.preheader ] ; 5 uses
  %.03036 = phi ptr [ %0, %.preheader.i ], [ %i.fp, %.preheader ] ; 5 uses
  %i.bi = shl nuw nsw i64 %indvars.iv, 2          ; 7 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !45
  %i.bl = sext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bi
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !45
  %i.bo = sext i16 %i.bn to i32
  %i.bp = mul nsw i32 %i.bo, %i.bl
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bi
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !45
  %i.bs = sext i16 %i.br to i32
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bi
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !45
  %i.bv = sext i16 %i.bu to i32
  %i.bw = mul nsw i32 %i.bv, %i.bs
  %i.bx = add nsw i32 %i.bw, %i.bp
  %i.by = load i16, ptr %.037, align 2, !tbaa !45
  %i.bz = sext i16 %i.by to i32
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 -8192)
  %.0.i = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 8191)
  %i.cb = add nsw i32 %.0.i, %i.bz
  %i.cc = mul nsw i32 %i.cb, %6
  %i.cd = add nsw i32 %i.cc, %i.bh
  %i.ce = ashr i32 %i.cd, %i.bf
  %i.cf = add nsw i32 %i.ce, %7                   ; 3 uses
  %.not.i = icmp ult i32 %i.cf, 256
  %isnotneg.i = icmp sgt i32 %i.cf, -1
  %i.cg = sext i1 %isnotneg.i to i8
  %i.ch = trunc nuw i32 %i.cf to i8
  %.0.i33 = select i1 %.not.i, i8 %i.ch, i8 %i.cg
  store i8 %.0.i33, ptr %.03036, align 1, !tbaa !62
  %i.ci = or disjoint i64 %i.bi, 1                ; 4 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !45
  %i.cl = sext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ci
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !45
  %i.co = sext i16 %i.cn to i32
  %i.cp = mul nsw i32 %i.co, %i.cl
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ci
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !45
  %i.cs = sext i16 %i.cr to i32
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ci
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !45
  %i.cv = sext i16 %i.cu to i32
  %i.cw = mul nsw i32 %i.cv, %i.cs
  %i.cx = add nsw i32 %i.cw, %i.cp
  %i.cy = getelementptr inbounds nuw i8, ptr %.037, i64 2
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !45
  %i.da = sext i16 %i.cz to i32
  %i.db = tail call i32 @llvm.smax.i32(i32 %i.cx, i32 -8192)
  %.0.i.1 = tail call i32 @llvm.smin.i32(i32 %i.db, i32 8191)
  %i.dc = add nsw i32 %.0.i.1, %i.da
  %i.dd = mul nsw i32 %i.dc, %6
  %i.de = add nsw i32 %i.dd, %i.bh
  %i.df = ashr i32 %i.de, %i.bf
  %i.dg = add nsw i32 %i.df, %7                   ; 3 uses
  %.not.i.1 = icmp ult i32 %i.dg, 256
  %isnotneg.i.1 = icmp sgt i32 %i.dg, -1
  %i.dh = sext i1 %isnotneg.i.1 to i8
  %i.di = trunc nuw i32 %i.dg to i8
  %.0.i33.1 = select i1 %.not.i.1, i8 %i.di, i8 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %.03036, i64 1
  store i8 %.0.i33.1, ptr %i.dj, align 1, !tbaa !62
  %i.dk = or disjoint i64 %i.bi, 2                ; 4 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 4, !tbaa !45
  %i.dn = sext i16 %i.dm to i32
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dk
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !45
  %i.dq = sext i16 %i.dp to i32
  %i.dr = mul nsw i32 %i.dq, %i.dn
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.dk
  %i.dt = load i16, ptr %i.ds, align 4, !tbaa !45
  %i.du = sext i16 %i.dt to i32
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dk
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !45
  %i.dx = sext i16 %i.dw to i32
  %i.dy = mul nsw i32 %i.dx, %i.du
  %i.dz = add nsw i32 %i.dy, %i.dr
  %i.ea = getelementptr inbounds nuw i8, ptr %.037, i64 4
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !45
  %i.ec = sext i16 %i.eb to i32
  %i.ed = tail call i32 @llvm.smax.i32(i32 %i.dz, i32 -8192)
  %.0.i.2 = tail call i32 @llvm.smin.i32(i32 %i.ed, i32 8191)
  %i.ee = add nsw i32 %.0.i.2, %i.ec
  %i.ef = mul nsw i32 %i.ee, %6
  %i.eg = add nsw i32 %i.ef, %i.bh
  %i.eh = ashr i32 %i.eg, %i.bf
  %i.ei = add nsw i32 %i.eh, %7                   ; 3 uses
  %.not.i.2 = icmp ult i32 %i.ei, 256
  %isnotneg.i.2 = icmp sgt i32 %i.ei, -1
  %i.ej = sext i1 %isnotneg.i.2 to i8
  %i.ek = trunc nuw i32 %i.ei to i8
  %.0.i33.2 = select i1 %.not.i.2, i8 %i.ek, i8 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %.03036, i64 2
  store i8 %.0.i33.2, ptr %i.el, align 1, !tbaa !62
  %i.em = or disjoint i64 %i.bi, 3                ; 4 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !45
  %i.ep = sext i16 %i.eo to i32
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.em
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !45
  %i.es = sext i16 %i.er to i32
  %i.et = mul nsw i32 %i.es, %i.ep
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.em
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !45
  %i.ew = sext i16 %i.ev to i32
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.em
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !45
  %i.ez = sext i16 %i.ey to i32
  %i.fa = mul nsw i32 %i.ez, %i.ew
  %i.fb = add nsw i32 %i.fa, %i.et
  %i.fc = getelementptr inbounds nuw i8, ptr %.037, i64 6
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !45
  %i.fe = sext i16 %i.fd to i32
  %i.ff = tail call i32 @llvm.smax.i32(i32 %i.fb, i32 -8192)
  %.0.i.3 = tail call i32 @llvm.smin.i32(i32 %i.ff, i32 8191)
  %i.fg = add nsw i32 %.0.i.3, %i.fe
  %i.fh = mul nsw i32 %i.fg, %6
  %i.fi = add nsw i32 %i.fh, %i.bh
  %i.fj = ashr i32 %i.fi, %i.bf
  %i.fk = add nsw i32 %i.fj, %7                   ; 3 uses
  %.not.i.3 = icmp ult i32 %i.fk, 256
  %isnotneg.i.3 = icmp sgt i32 %i.fk, -1
  %i.fl = sext i1 %isnotneg.i.3 to i8
  %i.fm = trunc nuw i32 %i.fk to i8
  %.0.i33.3 = select i1 %.not.i.3, i8 %i.fm, i8 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %.03036, i64 3
  store i8 %.0.i33.3, ptr %i.fn, align 1, !tbaa !62
  %i.fo = getelementptr inbounds nuw i8, ptr %.037, i64 256
  %i.fp = getelementptr inbounds i8, ptr %.03036, i64 %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.a, label %.preheader, !llvm.loop !1992

bb.a:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_bdof_8(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = alloca [2 x [256 x i16]], align 16       ; 6 uses
  %i.b = alloca [2 x [256 x i16]], align 16       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = icmp sgt i32 %5, 0                       ; 2 uses
  %i.d = icmp sgt i32 %4, 0                       ; 2 uses
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %.preheader.preheader.i, label %prof_grad_filter_8.exit69

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.e = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.02535.i = phi i32 [ %i.x, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.02634.i = phi ptr [ %i.w, %._crit_edge.i ], [ %2, %.preheader.preheader.i ] ; 4 uses
  %.02733.i = phi ptr [ %i.u, %._crit_edge.i ], [ %i.a, %.preheader.preheader.i ] ; 3 uses
  %.02832.i = phi ptr [ %i.v, %._crit_edge.i ], [ %i.b, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.f = getelementptr i8, ptr %.02634.i, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.g = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.02634.i, i64 %i.g ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !45
  %i.i = ashr <8 x i16> %wide.load, splat (i16 6)
  %i.j = getelementptr inbounds i8, ptr %next.gep, i64 -2
  %wide.load110 = load <8 x i16>, ptr %i.j, align 2, !tbaa !45
  %i.k = ashr <8 x i16> %wide.load110, splat (i16 6)
  %i.l = sub nsw <8 x i16> %i.i, %i.k
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %.02733.i, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 2, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %next.gep, i64 256
  %wide.load111 = load <8 x i16>, ptr %i.n, align 2, !tbaa !45
  %i.o = ashr <8 x i16> %wide.load111, splat (i16 6)
  %i.p = getelementptr inbounds i8, ptr %next.gep, i64 -256
end_hunk_2
