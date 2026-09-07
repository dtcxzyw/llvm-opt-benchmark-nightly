Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jidctint-12?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@jpeg12_idct_islow:bb.a
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !40
  %i.ib = sext i32 %i.ia to i64                   ; 2 uses
  %i.ic = add nsw i64 %i.ib, %i.hy
  %i.id = shl nsw i64 %i.ic, 13                   ; 2 uses
  %i.ie = sub nsw i64 %i.hy, %i.ib
  %i.if = shl nsw i64 %i.ie, 13                   ; 2 uses
  %i.ig = add nsw i64 %i.id, %i.hw
  %i.ih = sub nsw i64 %i.id, %i.hw
  %i.ii = add nsw i64 %i.if, %i.hu
  %i.ij = sub nsw i64 %i.if, %i.hu
  %i.ik = getelementptr inbounds nuw i8, ptr %.2277, i64 28
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !40
  %i.im = zext i32 %i.il to i64                   ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.2277, i64 20
  %i.io = load i32, ptr %i.in, align 4, !tbaa !40
  %i.ip = zext i32 %i.io to i64                   ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.2277, i64 12
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !40
  %i.is = zext i32 %i.ir to i64                   ; 3 uses
  %i.it = zext i32 %i.gg to i64                   ; 3 uses
  %i.iu = add nuw nsw i64 %i.im, %i.it
  %i.iv = add nuw nsw i64 %i.is, %i.ip
  %i.iw = add nuw nsw i64 %i.is, %i.im            ; 2 uses
  %i.ix = add nuw nsw i64 %i.ip, %i.it            ; 2 uses
  %i.iy = add nuw nsw i64 %i.iw, %i.ix
  %i.iz = mul nuw nsw i64 %i.iy, 9633             ; 2 uses
  %i.ja = mul nuw nsw i64 %i.im, 2446
  %i.jb = mul nuw nsw i64 %i.ip, 16819
  %i.jc = mul nuw nsw i64 %i.is, 25172
  %i.jd = mul nuw nsw i64 %i.it, 12299
  %i.je = mul nsw i64 %i.iu, -7373                ; 2 uses
  %i.jf = mul nsw i64 %i.iv, -20995               ; 2 uses
  %i.jg = mul nsw i64 %i.iw, -16069
  %i.jh = mul nsw i64 %i.ix, -3196
  %i.ji = add nsw i64 %i.iz, %i.jg                ; 2 uses
  %i.jj = add nsw i64 %i.iz, %i.jh                ; 2 uses
  %i.jk = add nsw i64 %i.je, %i.ja
  %i.jl = add nsw i64 %i.jk, %i.ji                ; 2 uses
  %i.jm = add nsw i64 %i.jf, %i.jb
  %i.jn = add nsw i64 %i.jm, %i.jj                ; 2 uses
  %i.jo = add nsw i64 %i.jf, %i.jc
  %i.jp = add nsw i64 %i.jo, %i.ji                ; 2 uses
  %i.jq = add nsw i64 %i.je, %i.jd
  %i.jr = add nsw i64 %i.jq, %i.jj                ; 2 uses
  %i.js = add nsw i64 %i.ig, 65536                ; 2 uses
  %i.jt = add nsw i64 %i.js, %i.jr
  %i.ju = lshr i64 %i.jt, 17
  %i.jv = and i64 %i.ju, 16383
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jv
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !39
  store i16 %i.jx, ptr %i.ge, align 2, !tbaa !39
  %i.jy = sub nsw i64 %i.js, %i.jr
  %i.jz = lshr i64 %i.jy, 17
  %i.ka = and i64 %i.jz, 16383
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !39
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ge, i64 14
  store i16 %i.kc, ptr %i.kd, align 2, !tbaa !39
  %i.ke = add nsw i64 %i.ii, 65536                ; 2 uses
  %i.kf = add nsw i64 %i.ke, %i.jp
  %i.kg = lshr i64 %i.kf, 17
  %i.kh = and i64 %i.kg, 16383
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.kh
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !39
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  store i16 %i.kj, ptr %i.kk, align 2, !tbaa !39
  %i.kl = sub nsw i64 %i.ke, %i.jp
  %i.km = lshr i64 %i.kl, 17
  %i.kn = and i64 %i.km, 16383
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.kn
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !39
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i16 %i.kp, ptr %i.kq, align 2, !tbaa !39
  %i.kr = add nsw i64 %i.ij, 65536                ; 2 uses
  %i.ks = add nsw i64 %i.kr, %i.jn
  %i.kt = lshr i64 %i.ks, 17
  %i.ku = and i64 %i.kt, 16383
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !39
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !39
  %i.ky = sub nsw i64 %i.kr, %i.jn
  %i.kz = lshr i64 %i.ky, 17
  %i.la = and i64 %i.kz, 16383
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !39
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ge, i64 10
  store i16 %i.lc, ptr %i.ld, align 2, !tbaa !39
  %i.le = add nsw i64 %i.ih, 65536                ; 2 uses
  %i.lf = add nsw i64 %i.le, %i.jl
  %i.lg = lshr i64 %i.lf, 17
  %i.lh = and i64 %i.lg, 16383
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !39
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ge, i64 6
  store i16 %i.lj, ptr %i.lk, align 2, !tbaa !39
  %i.ll = sub nsw i64 %i.le, %i.jl
  %i.lm = lshr i64 %i.ll, 17
  %i.ln = and i64 %i.lm, 16383
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ln
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !39
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge280, %bb.r
  %.sink289 = phi i64 [ 8, %._crit_edge280 ], [ 14, %bb.r ]
  %.sink287 = phi i16 [ %i.lp, %._crit_edge280 ], [ %i.hg, %bb.r ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.sink289
  store i16 %.sink287, ptr %i.lq, align 2, !tbaa !39
  %.3 = getelementptr inbounds nuw i8, ptr %.2277, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.t, label %bb.l, !llvm.loop !45

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_7x7(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [49 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 12
  %i.m = select i1 %i.l, i64 16, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]    ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = shl nuw nsw i64 %i.n, 13
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.r = zext i32 %4 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.d
  %.0187 = phi i32 [ 0, %bb.c ], [ %i.eb, %bb.d ]
  %.0175186 = phi ptr [ %i.a, %bb.c ], [ %i.ee, %bb.d ] ; 8 uses
  %.0177185 = phi ptr [ %i.p, %bb.c ], [ %i.ed, %bb.d ] ; 8 uses
  %.0178184 = phi ptr [ %2, %bb.c ], [ %i.ec, %bb.d ] ; 8 uses
  %i.s = load i16, ptr %.0178184, align 2, !tbaa !39
  %i.t = sext i16 %i.s to i32
  %i.u = load i32, ptr %.0177185, align 4, !tbaa !40
  %i.v = mul nsw i32 %i.u, %i.t
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.q, %i.w
  %i.y = or disjoint i64 %i.x, 2048               ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0178184, i64 32
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !39
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0177185, i64 64
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ae = mul nsw i32 %i.ad, %i.ab
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.n, %i.af                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0178184, i64 64
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !39
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0177185, i64 128
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.n, %i.an                 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0178184, i64 96
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !39
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.0177185, i64 192
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40
  %i.au = mul nsw i32 %i.at, %i.ar
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.n, %i.av                 ; 3 uses
  %i.ax = sub nsw i64 %i.ao, %i.aw
  %i.ay = mul nsw i64 %i.ax, 7223                 ; 2 uses
  %i.az = sub nsw i64 %i.ag, %i.ao
  %i.ba = mul nsw i64 %i.az, 2578                 ; 2 uses
  %.neg181 = mul nsw i64 %i.ao, -15083
  %i.bb = add nsw i64 %.neg181, %i.y
  %i.bc = add nsw i64 %i.bb, %i.ba
  %i.bd = add nsw i64 %i.bc, %i.ay                ; 2 uses
  %i.be = add nsw i64 %i.aw, %i.ag                ; 2 uses
  %i.bf = sub nsw i64 %i.ao, %i.be
  %i.bg = mul nsw i64 %i.be, 10438
  %i.bh = add nsw i64 %i.bg, %i.y                 ; 2 uses
  %.neg182 = mul nsw i64 %i.aw, -637
  %i.bi = add nsw i64 %i.ay, %.neg182
  %i.bj = add nsw i64 %i.bi, %i.bh                ; 2 uses
  %.neg183 = mul nsw i64 %i.ag, -20239
  %i.bk = add nsw i64 %i.ba, %.neg183
  %i.bl = add nsw i64 %i.bk, %i.bh                ; 2 uses
  %i.bm = mul nsw i64 %i.bf, 11585
  %i.bn = add nsw i64 %i.bm, %i.y
  %i.bo = getelementptr inbounds nuw i8, ptr %.0178184, i64 16
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !39
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %.0177185, i64 32
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !40
  %i.bt = mul nsw i32 %i.bs, %i.bq
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %i.n, %i.bu                 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0178184, i64 48
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !39
  %i.by = sext i16 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %.0177185, i64 96
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !40
  %i.cb = mul nsw i32 %i.ca, %i.by
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.n, %i.cc                 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0178184, i64 80
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !39
  %i.cg = sext i16 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %.0177185, i64 160
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !40
  %i.cj = mul nsw i32 %i.ci, %i.cg
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.n, %i.ck                 ; 3 uses
  %i.cm = add nsw i64 %i.cd, %i.bv
  %i.cn = mul nsw i64 %i.cm, 7663                 ; 2 uses
  %i.co = sub nsw i64 %i.bv, %i.cd
  %i.cp = mul nsw i64 %i.co, 1395                 ; 2 uses
  %i.cq = sub nsw i64 %i.cn, %i.cp
  %i.cr = add nsw i64 %i.cn, %i.cp
  %i.cs = add nsw i64 %i.cl, %i.cd
  %i.ct = mul nsw i64 %i.cs, -11295               ; 2 uses
  %i.cu = add nsw i64 %i.cr, %i.ct                ; 2 uses
  %i.cv = add nsw i64 %i.cl, %i.bv
  %i.cw = mul nsw i64 %i.cv, 5027                 ; 2 uses
  %i.cx = add nsw i64 %i.cw, %i.cq                ; 2 uses
  %i.cy = mul nsw i64 %i.cl, 15326
  %i.cz = add nsw i64 %i.cw, %i.cy
  %i.da = add nsw i64 %i.cz, %i.ct                ; 2 uses
  %i.db = add nsw i64 %i.cx, %i.bj
  %i.dc = lshr i64 %i.db, 12
  %i.dd = trunc i64 %i.dc to i32
  store i32 %i.dd, ptr %.0175186, align 4, !tbaa !40
  %i.de = sub nsw i64 %i.bj, %i.cx
  %i.df = lshr i64 %i.de, 12
  %i.dg = trunc i64 %i.df to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %.0175186, i64 168
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !40
  %i.di = add nsw i64 %i.cu, %i.bd
  %i.dj = lshr i64 %i.di, 12
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %.0175186, i64 28
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !40
  %i.dm = sub nsw i64 %i.bd, %i.cu
  %i.dn = lshr i64 %i.dm, 12
  %i.do = trunc i64 %i.dn to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %.0175186, i64 140
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !40
  %i.dq = add nsw i64 %i.da, %i.bl
  %i.dr = lshr i64 %i.dq, 12
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %.0175186, i64 56
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !40
  %i.du = sub nsw i64 %i.bl, %i.da
  %i.dv = lshr i64 %i.du, 12
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %.0175186, i64 112
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !40
  %i.dy = lshr i64 %i.bn, 12
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %.0175186, i64 84
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !40
  %i.eb = add nuw nsw i32 %.0187, 1               ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0178184, i64 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.0177185, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.0175186, i64 4
  %exitcond.not = icmp eq i32 %i.eb, 7
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !46

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1176188 = phi ptr [ %i.a, %.preheader ], [ %i.hy, %bb.e ] ; 8 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !43
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.r ; 7 uses
  %i.ei = load i32, ptr %.1176188, align 4, !tbaa !40
  %i.ej = sext i32 %i.ei to i64
  %i.ek = shl nsw i64 %i.ej, 13
  %i.el = add nsw i64 %i.ek, 65536                ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.1176188, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !40
  %i.eo = zext i32 %i.en to i64                   ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1176188, i64 16
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !40
  %i.er = zext i32 %i.eq to i64                   ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.1176188, i64 24
  %i.et = load i32, ptr %i.es, align 4, !tbaa !40
  %i.eu = zext i32 %i.et to i64                   ; 3 uses
  %i.ev = sub nsw i64 %i.er, %i.eu
  %i.ew = mul nsw i64 %i.ev, 7223                 ; 2 uses
  %i.ex = sub nsw i64 %i.eo, %i.er
  %i.ey = mul nsw i64 %i.ex, 2578                 ; 2 uses
  %.neg = mul nsw i64 %i.er, -15083
  %i.ez = add nsw i64 %.neg, %i.el
  %i.fa = add nsw i64 %i.ez, %i.ey
  %i.fb = add nsw i64 %i.fa, %i.ew                ; 2 uses
  %i.fc = add nuw nsw i64 %i.eu, %i.eo            ; 2 uses
  %i.fd = sub nsw i64 %i.er, %i.fc
  %i.fe = mul nuw nsw i64 %i.fc, 10438
  %i.ff = add nsw i64 %i.fe, %i.el                ; 2 uses
  %.neg179 = mul nsw i64 %i.eu, -637
  %i.fg = add nsw i64 %i.ew, %.neg179
  %i.fh = add nsw i64 %i.fg, %i.ff                ; 2 uses
  %.neg180 = mul nsw i64 %i.eo, -20239
  %i.fi = add nsw i64 %i.ey, %.neg180
  %i.fj = add nsw i64 %i.fi, %i.ff                ; 2 uses
  %i.fk = mul nsw i64 %i.fd, 11585
  %i.fl = add nsw i64 %i.fk, %i.el
  %i.fm = getelementptr inbounds nuw i8, ptr %.1176188, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !40
  %i.fo = zext i32 %i.fn to i64                   ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.1176188, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !40
  %i.fr = zext i32 %i.fq to i64                   ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.1176188, i64 20
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !40
  %i.fu = zext i32 %i.ft to i64                   ; 3 uses
  %i.fv = add nuw nsw i64 %i.fr, %i.fo
  %i.fw = mul nuw nsw i64 %i.fv, 7663             ; 2 uses
  %i.fx = sub nsw i64 %i.fo, %i.fr
  %i.fy = mul nsw i64 %i.fx, 1395                 ; 2 uses
  %i.fz = sub nsw i64 %i.fw, %i.fy
  %i.ga = add nsw i64 %i.fw, %i.fy
  %i.gb = add nuw nsw i64 %i.fu, %i.fr
  %i.gc = mul nsw i64 %i.gb, -11295               ; 2 uses
  %i.gd = add nsw i64 %i.ga, %i.gc                ; 2 uses
  %i.ge = add nuw nsw i64 %i.fu, %i.fo
  %i.gf = mul nuw nsw i64 %i.ge, 5027             ; 2 uses
  %i.gg = add nsw i64 %i.fz, %i.gf                ; 2 uses
  %i.gh = mul nuw nsw i64 %i.fu, 15326
  %i.gi = add nuw nsw i64 %i.gf, %i.gh
  %i.gj = add nsw i64 %i.gi, %i.gc                ; 2 uses
  %i.gk = add nsw i64 %i.gg, %i.fh
  %i.gl = lshr i64 %i.gk, 17
  %i.gm = and i64 %i.gl, 16383
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !39
  store i16 %i.go, ptr %i.eh, align 2, !tbaa !39
  %i.gp = sub nsw i64 %i.fh, %i.gg
  %i.gq = lshr i64 %i.gp, 17
  %i.gr = and i64 %i.gq, 16383
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !39
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !39
  %i.gv = add nsw i64 %i.gd, %i.fb
  %i.gw = lshr i64 %i.gv, 17
  %i.gx = and i64 %i.gw, 16383
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !39
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !39
  %i.hb = sub nsw i64 %i.fb, %i.gd
  %i.hc = lshr i64 %i.hb, 17
  %i.hd = and i64 %i.hc, 16383
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !39
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eh, i64 10
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !39
  %i.hh = add nsw i64 %i.gj, %i.fj
  %i.hi = lshr i64 %i.hh, 17
  %i.hj = and i64 %i.hi, 16383
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hj
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !39
  %i.hm = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store i16 %i.hl, ptr %i.hm, align 2, !tbaa !39
  %i.hn = sub nsw i64 %i.fj, %i.gj
  %i.ho = lshr i64 %i.hn, 17
  %i.hp = and i64 %i.ho, 16383
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !39
  %i.hs = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !39
  %i.ht = lshr i64 %i.fl, 17
  %i.hu = and i64 %i.ht, 16383
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hu
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !39
  %i.hx = getelementptr inbounds nuw i8, ptr %i.eh, i64 6
end_hunk_0
begin_hunk_1_@jpeg12_idct_10x10:bb.a
  %.neg227 = mul nsw i64 %i.fw, -17828
  %i.gb = add nsw i64 %i.fy, %.neg227             ; 2 uses
  %i.gc = add nsw i64 %i.ga, %i.fo                ; 2 uses
  %i.gd = sub nsw i64 %i.fo, %i.ga                ; 2 uses
  %i.ge = add nsw i64 %i.gb, %i.fp                ; 2 uses
  %i.gf = sub nsw i64 %i.fp, %i.gb                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.1223249, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !40
  %i.gi = sext i32 %i.gh to i64                   ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.1223249, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !40
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.1223249, i64 20
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !40
  %i.go = sext i32 %i.gn to i64                   ; 2 uses
  %i.gp = shl nsw i64 %i.go, 13                   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.1223249, i64 28
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !40
  %i.gs = sext i32 %i.gr to i64                   ; 2 uses
  %i.gt = add nsw i64 %i.gs, %i.gl                ; 2 uses
  %i.gu = sub nsw i64 %i.gl, %i.gs                ; 3 uses
  %i.gv = mul nsw i64 %i.gu, 2531
  %i.gw = mul nsw i64 %i.gt, 7791                 ; 2 uses
  %i.gx = add nsw i64 %i.gv, %i.gp                ; 2 uses
  %i.gy = mul nsw i64 %i.gi, 11443
  %i.gz = add nsw i64 %i.gw, %i.gy
  %i.ha = add nsw i64 %i.gz, %i.gx                ; 2 uses
  %i.hb = mul nsw i64 %i.gi, 1812
  %i.hc = sub nsw i64 %i.hb, %i.gw
  %i.hd = add nsw i64 %i.hc, %i.gx                ; 2 uses
  %i.he = mul nsw i64 %i.gt, 4815                 ; 2 uses
  %.neg228 = mul nsw i64 %i.gu, -6627
  %i.hf = add nsw i64 %.neg228, %i.gp             ; 2 uses
  %i.hg = add nsw i64 %i.gu, %i.go
  %i.hh = sub nsw i64 %i.gi, %i.hg
  %i.hi = shl nsw i64 %i.hh, 13                   ; 2 uses
  %i.hj = mul nsw i64 %i.gi, 10323
  %i.hk = add nsw i64 %i.he, %i.hf
  %i.hl = sub nsw i64 %i.hj, %i.hk                ; 2 uses
  %i.hm = mul nsw i64 %i.gi, 5260
  %i.hn = sub nsw i64 %i.hm, %i.he
  %i.ho = add nsw i64 %i.hn, %i.hf                ; 2 uses
  %i.hp = add nsw i64 %i.ha, %i.gc
  %i.hq = lshr i64 %i.hp, 17
  %i.hr = and i64 %i.hq, 16383
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !39
  store i16 %i.ht, ptr %i.ff, align 2, !tbaa !39
  %i.hu = sub nsw i64 %i.gc, %i.ha
  %i.hv = lshr i64 %i.hu, 17
  %i.hw = and i64 %i.hv, 16383
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !39
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ff, i64 18
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !39
  %i.ia = add nsw i64 %i.hl, %i.ge
  %i.ib = lshr i64 %i.ia, 17
  %i.ic = and i64 %i.ib, 16383
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ic
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !39
  %i.if = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  store i16 %i.ie, ptr %i.if, align 2, !tbaa !39
  %i.ig = sub nsw i64 %i.ge, %i.hl
  %i.ih = lshr i64 %i.ig, 17
  %i.ii = and i64 %i.ih, 16383
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !39
  %i.il = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !39
  %i.im = add nsw i64 %i.hi, %i.fq
  %i.in = lshr i64 %i.im, 17
  %i.io = and i64 %i.in, 16383
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !39
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i16 %i.iq, ptr %i.ir, align 2, !tbaa !39
  %i.is = sub nsw i64 %i.fq, %i.hi
  %i.it = lshr i64 %i.is, 17
  %i.iu = and i64 %i.it, 16383
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !39
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ff, i64 14
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !39
  %i.iy = add nsw i64 %i.ho, %i.gf
  %i.iz = lshr i64 %i.iy, 17
  %i.ja = and i64 %i.iz, 16383
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !39
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ff, i64 6
  store i16 %i.jc, ptr %i.jd, align 2, !tbaa !39
  %i.je = sub nsw i64 %i.gf, %i.ho
  %i.jf = lshr i64 %i.je, 17
  %i.jg = and i64 %i.jf, 16383
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !39
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !39
  %i.jk = add nsw i64 %i.hd, %i.gd
  %i.jl = lshr i64 %i.jk, 17
  %i.jm = and i64 %i.jl, 16383
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jm
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !39
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i16 %i.jo, ptr %i.jp, align 2, !tbaa !39
  %i.jq = sub nsw i64 %i.gd, %i.hd
  %i.jr = lshr i64 %i.jq, 17
  %i.js = and i64 %i.jr, 16383
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.js
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !39
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ff, i64 10
  store i16 %i.ju, ptr %i.jv, align 2, !tbaa !39
  %i.jw = getelementptr inbounds nuw i8, ptr %.1223249, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond252.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond252.not, label %bb.f, label %bb.e, !llvm.loop !53

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_11x11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [88 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 12
  %i.m = select i1 %i.l, i64 16, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]    ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = shl nuw nsw i64 %i.n, 13
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.r = zext i32 %4 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.d
  %.0279 = phi i32 [ 0, %bb.c ], [ %i.fu, %bb.d ]
  %.0255278 = phi ptr [ %i.a, %bb.c ], [ %i.fx, %bb.d ] ; 12 uses
  %.0257277 = phi ptr [ %i.p, %bb.c ], [ %i.fw, %bb.d ] ; 9 uses
  %.0258276 = phi ptr [ %2, %bb.c ], [ %i.fv, %bb.d ] ; 9 uses
  %i.s = load i16, ptr %.0258276, align 2, !tbaa !39
  %i.t = sext i16 %i.s to i32
  %i.u = load i32, ptr %.0257277, align 4, !tbaa !40
  %i.v = mul nsw i32 %i.u, %i.t
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.q, %i.w
  %i.y = or disjoint i64 %i.x, 2048               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0258276, i64 32
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !39
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0257277, i64 64
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ae = mul nsw i32 %i.ad, %i.ab
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.n, %i.af                 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0258276, i64 64
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !39
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0257277, i64 128
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.n, %i.an                 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0258276, i64 96
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !39
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.0257277, i64 192
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40
  %i.au = mul nsw i32 %i.at, %i.ar
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.n, %i.av                 ; 4 uses
  %i.ax = sub nsw i64 %i.ao, %i.aw
  %i.ay = mul nsw i64 %i.ax, 20862                ; 2 uses
  %i.az = sub nsw i64 %i.ao, %i.ag
  %i.ba = mul nsw i64 %i.az, 3529
  %i.bb = add nsw i64 %i.aw, %i.ag                ; 2 uses
  %i.bc = mul nsw i64 %i.bb, -9467
  %i.bd = sub nsw i64 %i.bb, %i.ao                ; 2 uses
  %i.be = mul nsw i64 %i.bd, 11116
  %i.bf = add nsw i64 %i.be, %i.y                 ; 3 uses
  %.neg267 = mul nsw i64 %i.ao, -14924
  %i.bg = add nsw i64 %i.bf, %i.ba                ; 2 uses
  %i.bh = add nsw i64 %i.bg, %.neg267
  %i.bi = add nsw i64 %i.bh, %i.ay                ; 2 uses
  %i.bj = mul nsw i64 %i.aw, 17333
  %i.bk = add nsw i64 %i.bf, %i.ay
  %i.bl = add nsw i64 %i.bk, %i.bj                ; 2 uses
  %.neg268 = mul nsw i64 %i.ag, -12399
  %i.bm = add nsw i64 %i.bg, %.neg268             ; 2 uses
  %i.bn = add nsw i64 %i.bf, %i.bc                ; 2 uses
  %.neg269 = mul nsw i64 %i.aw, -6461
  %i.bo = add nsw i64 %i.bn, %.neg269             ; 2 uses
  %i.bp = mul nsw i64 %i.ao, 15929
  %.neg270 = mul nsw i64 %i.ag, -11395
  %i.bq = add nsw i64 %i.bp, %.neg270
  %i.br = add nsw i64 %i.bq, %i.bn                ; 2 uses
  %.neg271 = mul i64 %i.bd, 17592186032831
  %i.bs = add i64 %.neg271, %i.y
  %i.bt = getelementptr inbounds nuw i8, ptr %.0258276, i64 16
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !39
  %i.bv = sext i16 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0257277, i64 32
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !40
  %i.by = mul nsw i32 %i.bx, %i.bv
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul nsw i64 %i.n, %i.bz                 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0258276, i64 48
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !39
  %i.cd = sext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %.0257277, i64 96
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !40
  %i.cg = mul nsw i32 %i.cf, %i.cd
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.n, %i.ch                 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0258276, i64 80
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !39
  %i.cl = sext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.0257277, i64 160
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !40
  %i.co = mul nsw i32 %i.cn, %i.cl
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %i.n, %i.cp                 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0258276, i64 112
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !39
  %i.ct = sext i16 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %.0257277, i64 224
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !40
  %i.cw = mul nsw i32 %i.cv, %i.ct
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul nsw i64 %i.n, %i.cx                 ; 5 uses
  %i.cz = add nsw i64 %i.ci, %i.ca                ; 2 uses
  %i.da = add nsw i64 %i.cq, %i.cz
  %i.db = add nsw i64 %i.da, %i.cy
  %i.dc = mul nsw i64 %i.db, 3264                 ; 3 uses
  %i.dd = mul nsw i64 %i.cz, 7274                 ; 2 uses
  %i.de = add nsw i64 %i.cq, %i.ca
  %i.df = mul nsw i64 %i.de, 5492                 ; 2 uses
  %i.dg = add nsw i64 %i.cy, %i.ca
  %i.dh = mul nsw i64 %i.dg, 3000
  %i.di = add nsw i64 %i.dc, %i.dh                ; 2 uses
  %.neg272 = mul nsw i64 %i.ca, -7562
  %i.dj = add nsw i64 %i.dd, %.neg272
  %i.dk = add nsw i64 %i.dj, %i.df
  %i.dl = add nsw i64 %i.dk, %i.di                ; 2 uses
  %i.dm = add nsw i64 %i.cq, %i.ci
  %.neg273 = mul nsw i64 %i.dm, -9527
  %i.dn = add nsw i64 %i.dc, %.neg273             ; 2 uses
  %i.do = mul nsw i64 %i.ci, 16984
  %.neg274 = mul nsw i64 %i.cq, -9766
  %i.dp = add nsw i64 %i.df, %.neg274
  %i.dq = add nsw i64 %i.dp, %i.dn                ; 2 uses
  %i.dr = add nsw i64 %i.cy, %i.ci
  %i.ds = mul nsw i64 %i.dr, -14731               ; 2 uses
  %i.dt = add nsw i64 %i.dd, %i.do
  %i.du = add nsw i64 %i.dt, %i.ds
  %i.dv = add nsw i64 %i.du, %i.dn                ; 2 uses
  %i.dw = mul nsw i64 %i.cy, 17223
  %i.dx = add nsw i64 %i.ds, %i.dw
  %i.dy = add nsw i64 %i.dx, %i.di                ; 2 uses
  %i.dz = mul nsw i64 %i.ci, -12019
  %i.ea = mul nsw i64 %i.cq, 8203
  %i.eb = add nsw i64 %i.ea, %i.dz
  %.neg275 = mul nsw i64 %i.cy, -13802
  %i.ec = add nsw i64 %i.eb, %.neg275
  %i.ed = add nsw i64 %i.ec, %i.dc                ; 2 uses
  %i.ee = add nsw i64 %i.dl, %i.bl
  %i.ef = lshr i64 %i.ee, 12
  %i.eg = trunc i64 %i.ef to i32
  store i32 %i.eg, ptr %.0255278, align 4, !tbaa !40
  %i.eh = sub nsw i64 %i.bl, %i.dl
  %i.ei = lshr i64 %i.eh, 12
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %.0255278, i64 320
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !40
  %i.el = add nsw i64 %i.dv, %i.bi
  %i.em = lshr i64 %i.el, 12
  %i.en = trunc i64 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %.0255278, i64 32
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !40
  %i.ep = sub nsw i64 %i.bi, %i.dv
  %i.eq = lshr i64 %i.ep, 12
  %i.er = trunc i64 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %.0255278, i64 288
  store i32 %i.er, ptr %i.es, align 4, !tbaa !40
  %i.et = add nsw i64 %i.dq, %i.bo
  %i.eu = lshr i64 %i.et, 12
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %.0255278, i64 64
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !40
  %i.ex = sub nsw i64 %i.bo, %i.dq
  %i.ey = lshr i64 %i.ex, 12
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %.0255278, i64 256
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !40
  %i.fb = add nsw i64 %i.dy, %i.bm
  %i.fc = lshr i64 %i.fb, 12
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %.0255278, i64 96
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !40
  %i.ff = sub nsw i64 %i.bm, %i.dy
  %i.fg = lshr i64 %i.ff, 12
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %.0255278, i64 224
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !40
  %i.fj = add nsw i64 %i.ed, %i.br
  %i.fk = lshr i64 %i.fj, 12
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %.0255278, i64 128
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !40
  %i.fn = sub nsw i64 %i.br, %i.ed
  %i.fo = lshr i64 %i.fn, 12
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %.0255278, i64 192
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !40
  %i.fr = lshr i64 %i.bs, 12
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %.0255278, i64 160
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !40
  %i.fu = add nuw nsw i32 %.0279, 1               ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0258276, i64 2
  %i.fw = getelementptr inbounds nuw i8, ptr %.0257277, i64 4
  %i.fx = getelementptr inbounds nuw i8, ptr %.0255278, i64 4
  %exitcond.not = icmp eq i32 %i.fu, 8
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !54

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1256280 = phi ptr [ %i.a, %.preheader ], [ %i.ln, %bb.e ] ; 9 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !43
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %i.r ; 11 uses
  %i.gb = load i32, ptr %.1256280, align 4, !tbaa !40
  %i.gc = sext i32 %i.gb to i64
  %i.gd = shl nsw i64 %i.gc, 13
  %i.ge = add nsw i64 %i.gd, 65536                ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1256280, i64 8
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !40
  %i.gh = zext i32 %i.gg to i64                   ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.1256280, i64 16
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !40
  %i.gk = zext i32 %i.gj to i64                   ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.1256280, i64 24
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !40
  %i.gn = zext i32 %i.gm to i64                   ; 4 uses
  %i.go = sub nsw i64 %i.gk, %i.gn
  %i.gp = mul nsw i64 %i.go, 20862                ; 2 uses
  %i.gq = sub nsw i64 %i.gk, %i.gh
  %i.gr = mul nsw i64 %i.gq, 3529
  %i.gs = add nuw nsw i64 %i.gn, %i.gh            ; 2 uses
  %i.gt = mul nsw i64 %i.gs, -9467
  %i.gu = sub nsw i64 %i.gs, %i.gk                ; 2 uses
  %i.gv = mul nsw i64 %i.gu, 11116
  %i.gw = add nsw i64 %i.gv, %i.ge                ; 3 uses
  %.neg = mul nsw i64 %i.gk, -14924
  %i.gx = add nsw i64 %i.gw, %i.gr                ; 2 uses
  %i.gy = add nsw i64 %i.gx, %.neg
  %i.gz = add nsw i64 %i.gy, %i.gp                ; 2 uses
  %i.ha = mul nuw nsw i64 %i.gn, 17333
  %i.hb = add nsw i64 %i.gw, %i.gp
  %i.hc = add nsw i64 %i.hb, %i.ha                ; 2 uses
  %.neg259 = mul nsw i64 %i.gh, -12399
  %i.hd = add nsw i64 %i.gx, %.neg259             ; 2 uses
  %i.he = add nsw i64 %i.gw, %i.gt                ; 2 uses
  %.neg260 = mul nsw i64 %i.gn, -6461
  %i.hf = add nsw i64 %i.he, %.neg260             ; 2 uses
  %i.hg = mul nuw nsw i64 %i.gk, 15929
  %.neg261 = mul nsw i64 %i.gh, -11395
  %i.hh = add nsw i64 %i.hg, %.neg261
  %i.hi = add nsw i64 %i.hh, %i.he                ; 2 uses
  %.neg262 = mul i64 %i.gu, 2147472063
  %i.hj = add i64 %.neg262, %i.ge
  %i.hk = getelementptr inbounds nuw i8, ptr %.1256280, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !40
  %i.hm = zext i32 %i.hl to i64                   ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.1256280, i64 12
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !40
  %i.hp = zext i32 %i.ho to i64                   ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.1256280, i64 20
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !40
  %i.hs = zext i32 %i.hr to i64                   ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.1256280, i64 28
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !40
  %i.hv = zext i32 %i.hu to i64                   ; 5 uses
  %i.hw = add nuw nsw i64 %i.hp, %i.hm            ; 2 uses
  %i.hx = add nuw nsw i64 %i.hw, %i.hs
  %i.hy = add nuw nsw i64 %i.hx, %i.hv
  %i.hz = mul nuw nsw i64 %i.hy, 3264             ; 3 uses
  %i.ia = mul nuw nsw i64 %i.hw, 7274             ; 2 uses
  %i.ib = add nuw nsw i64 %i.hs, %i.hm
  %i.ic = mul nuw nsw i64 %i.ib, 5492             ; 2 uses
  %i.id = add nuw nsw i64 %i.hv, %i.hm
  %i.ie = mul nuw nsw i64 %i.id, 3000
end_hunk_1
begin_hunk_2_@jpeg12_idct_14x14:bb.a
  %i.ja = add nsw i64 %i.id, %.neg306
  %i.jb = add nsw i64 %i.ja, %i.iz
  %i.jc = add nsw i64 %i.jb, %i.il                ; 2 uses
  %i.jd = mul nsw i64 %i.hw, 5529
  %i.je = add nsw i64 %i.iz, %i.jd
  %i.jf = add nsw i64 %i.je, %i.ip                ; 2 uses
  %i.jg = sub nsw i64 %i.in, %i.hz
  %i.jh = add nsw i64 %i.jg, %i.ic
  %i.ji = shl nsw i64 %i.jh, 13                   ; 2 uses
  %i.jj = add nsw i64 %i.ik, %i.hl
  %i.jk = lshr i64 %i.jj, 17
  %i.jl = and i64 %i.jk, 16383
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jl
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !39
  store i16 %i.jn, ptr %i.gk, align 2, !tbaa !39
  %i.jo = sub nsw i64 %i.hl, %i.ik
  %i.jp = lshr i64 %i.jo, 17
  %i.jq = and i64 %i.jp, 16383
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !39
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gk, i64 26
  store i16 %i.js, ptr %i.jt, align 2, !tbaa !39
  %i.ju = add nsw i64 %i.iv, %i.hn
  %i.jv = lshr i64 %i.ju, 17
  %i.jw = and i64 %i.jv, 16383
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jw
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !39
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !39
  %i.ka = sub nsw i64 %i.hn, %i.iv
  %i.kb = lshr i64 %i.ka, 17
  %i.kc = and i64 %i.kb, 16383
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.kc
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !39
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  store i16 %i.ke, ptr %i.kf, align 2, !tbaa !39
  %i.kg = add nsw i64 %i.ix, %i.hp
  %i.kh = lshr i64 %i.kg, 17
  %i.ki = and i64 %i.kh, 16383
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ki
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !39
  %i.kl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store i16 %i.kk, ptr %i.kl, align 2, !tbaa !39
  %i.km = sub nsw i64 %i.hp, %i.ix
  %i.kn = lshr i64 %i.km, 17
  %i.ko = and i64 %i.kn, 16383
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ko
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !39
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gk, i64 22
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !39
  %i.ks = add nsw i64 %i.ji, %i.gx
  %i.kt = lshr i64 %i.ks, 17
  %i.ku = and i64 %i.kt, 16383
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !39
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gk, i64 6
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !39
  %i.ky = sub nsw i64 %i.gx, %i.ji
  %i.kz = lshr i64 %i.ky, 17
  %i.la = and i64 %i.kz, 16383
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !39
  %i.ld = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  store i16 %i.lc, ptr %i.ld, align 2, !tbaa !39
  %i.le = add nsw i64 %i.jc, %i.hq
  %i.lf = lshr i64 %i.le, 17
  %i.lg = and i64 %i.lf, 16383
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lg
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !39
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !39
  %i.lk = sub nsw i64 %i.hq, %i.jc
  %i.ll = lshr i64 %i.lk, 17
  %i.lm = and i64 %i.ll, 16383
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !39
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gk, i64 18
  store i16 %i.lo, ptr %i.lp, align 2, !tbaa !39
  %i.lq = add nsw i64 %i.jf, %i.ho
  %i.lr = lshr i64 %i.lq, 17
  %i.ls = and i64 %i.lr, 16383
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ls
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !39
  %i.lv = getelementptr inbounds nuw i8, ptr %i.gk, i64 10
  store i16 %i.lu, ptr %i.lv, align 2, !tbaa !39
  %i.lw = sub nsw i64 %i.ho, %i.jf
  %i.lx = lshr i64 %i.lw, 17
  %i.ly = and i64 %i.lx, 16383
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ly
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !39
  %i.mb = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !39
  %i.mc = add nsw i64 %i.iq, %i.hm
  %i.md = lshr i64 %i.mc, 17
  %i.me = and i64 %i.md, 16383
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.me
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !39
  %i.mh = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !39
  %i.mi = sub nsw i64 %i.hm, %i.iq
  %i.mj = lshr i64 %i.mi, 17
  %i.mk = and i64 %i.mj, 16383
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.mk
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !39
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gk, i64 14
  store i16 %i.mm, ptr %i.mn, align 2, !tbaa !39
  %i.mo = getelementptr inbounds nuw i8, ptr %.1296322, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond325.not, label %bb.f, label %bb.e, !llvm.loop !63

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_15x15(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [120 x i32], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 12
  %i.m = select i1 %i.l, i64 16, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]    ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = shl nuw nsw i64 %i.n, 13
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.r = zext i32 %4 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.d
  %.0347 = phi i32 [ 0, %bb.c ], [ %i.gm, %bb.d ]
  %.0313346 = phi ptr [ %i.a, %bb.c ], [ %i.gp, %bb.d ] ; 16 uses
  %.0315345 = phi ptr [ %i.p, %bb.c ], [ %i.go, %bb.d ] ; 9 uses
  %.0316344 = phi ptr [ %2, %bb.c ], [ %i.gn, %bb.d ] ; 9 uses
  %i.s = load i16, ptr %.0316344, align 2, !tbaa !39
  %i.t = sext i16 %i.s to i32
  %i.u = load i32, ptr %.0315345, align 4, !tbaa !40
  %i.v = mul nsw i32 %i.u, %i.t
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.q, %i.w
  %i.y = or disjoint i64 %i.x, 2048               ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0316344, i64 32
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !39
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0315345, i64 64
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ae = mul nsw i32 %i.ad, %i.ab
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.n, %i.af                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0316344, i64 64
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !39
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0315345, i64 128
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.n, %i.an                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0316344, i64 96
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !39
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.0315345, i64 192
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40
  %i.au = mul nsw i32 %i.at, %i.ar
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.n, %i.av                 ; 3 uses
  %.neg322 = mul nsw i64 %i.aw, -3580
  %i.ax = mul nsw i64 %i.aw, 9373
  %i.ay = add nsw i64 %.neg322, %i.y              ; 3 uses
  %i.az = add nsw i64 %i.ax, %i.y                 ; 3 uses
  %.neg323 = mul nsw i64 %i.aw, -11586
  %i.ba = add nsw i64 %.neg323, %i.y              ; 2 uses
  %i.bb = sub nsw i64 %i.ag, %i.ao                ; 5 uses
  %i.bc = add nsw i64 %i.ao, %i.ag                ; 3 uses
  %i.bd = mul nsw i64 %i.bc, 10958                ; 2 uses
  %i.be = mul nsw i64 %i.bb, 374                  ; 2 uses
  %i.bf = mul nsw i64 %i.ag, 11795                ; 2 uses
  %i.bg = add nsw i64 %i.be, %i.bd
  %i.bh = add nsw i64 %i.bg, %i.az                ; 2 uses
  %i.bi = sub nsw i64 %i.bf, %i.bd
  %i.bj = add nsw i64 %i.bi, %i.be
  %i.bk = add nsw i64 %i.bj, %i.ay                ; 2 uses
  %i.bl = mul nsw i64 %i.bc, 4482                 ; 2 uses
  %.neg338 = mul nsw i64 %i.bb, -3271             ; 2 uses
  %.neg339 = sub nsw i64 %.neg338, %i.bl
  %i.bm = add nsw i64 %.neg339, %i.az             ; 2 uses
  %.neg341 = sub nsw i64 %i.bl, %i.bf
  %i.bn = add nsw i64 %.neg341, %.neg338
  %i.bo = add nsw i64 %i.bn, %i.ay                ; 2 uses
  %i.bp = mul nsw i64 %i.bc, 6476                 ; 2 uses
  %i.bq = mul nsw i64 %i.bb, 2896                 ; 2 uses
  %i.br = add nsw i64 %i.bq, %i.bp
  %i.bs = add nsw i64 %i.br, %i.ay                ; 2 uses
  %i.bt = sub nsw i64 %i.az, %i.bp
  %i.bu = add nsw i64 %i.bt, %i.bq                ; 2 uses
  %i.bv = mul nsw i64 %i.bb, 5792
  %i.bw = add nsw i64 %i.ba, %i.bv                ; 2 uses
  %.neg324 = mul i64 %i.bb, 17592186032832
  %i.bx = add i64 %i.ba, %.neg324
  %i.by = getelementptr inbounds nuw i8, ptr %.0316344, i64 16
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !39
  %i.ca = sext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %.0315345, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !40
  %i.cd = mul nsw i32 %i.cc, %i.ca
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul nsw i64 %i.n, %i.ce                 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0316344, i64 48
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !39
  %i.ci = sext i16 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %.0315345, i64 96
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !40
  %i.cl = mul nsw i32 %i.ck, %i.ci
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul nsw i64 %i.n, %i.cm                 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0316344, i64 80
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !39
  %i.cq = sext i16 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.0315345, i64 160
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !40
  %i.ct = mul nsw i32 %i.cs, %i.cq
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i64 %i.n, %i.cu                 ; 2 uses
  %i.cw = mul nsw i64 %i.cv, 10033                ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0316344, i64 112
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !39
  %i.cz = sext i16 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %.0315345, i64 224
  %i.db = load i32, ptr %i.da, align 4, !tbaa !40
  %i.dc = mul nsw i32 %i.db, %i.cz
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %i.n, %i.dd                 ; 5 uses
  %i.df = sub nsw i64 %i.cn, %i.de                ; 2 uses
  %i.dg = add nsw i64 %i.df, %i.cf
  %i.dh = mul nsw i64 %i.dg, 6810                 ; 2 uses
  %i.di = mul nsw i64 %i.cf, 4209
  %i.dj = add nsw i64 %i.dh, %i.di                ; 2 uses
  %.neg325 = mul nsw i64 %i.df, -17828
  %i.dk = add nsw i64 %i.dh, %.neg325             ; 2 uses
  %i.dl = mul nsw i64 %i.cn, -6810                ; 2 uses
  %i.dm = mul nsw i64 %i.cn, -11018               ; 2 uses
  %i.dn = sub nsw i64 %i.cf, %i.de                ; 2 uses
  %i.do = mul nsw i64 %i.dn, 11522
  %i.dp = add nsw i64 %i.do, %i.cw                ; 2 uses
  %i.dq = mul nsw i64 %i.de, 20131
  %i.dr = sub nsw i64 %i.dq, %i.dm
  %i.ds = add nsw i64 %i.dr, %i.dp                ; 2 uses
  %.neg326 = mul nsw i64 %i.cf, -9113
  %i.dt = add nsw i64 %i.dl, %.neg326
  %i.du = add nsw i64 %i.dt, %i.dp                ; 2 uses
  %i.dv = sub nsw i64 %i.dn, %i.cv
  %i.dw = mul nsw i64 %i.dv, 10033                ; 2 uses
  %i.dx = add nsw i64 %i.de, %i.cf
  %i.dy = mul nsw i64 %i.dx, 4712                 ; 2 uses
  %i.dz = mul nsw i64 %i.cf, 3897
  %i.ea = add nsw i64 %i.dl, %i.dz
  %i.eb = sub nsw i64 %i.ea, %i.cw
  %i.ec = add nsw i64 %i.eb, %i.dy                ; 2 uses
  %.neg327 = mul nsw i64 %i.de, -7121
  %i.ed = add nsw i64 %i.cw, %i.dm
  %i.ee = add nsw i64 %i.ed, %.neg327
  %i.ef = add nsw i64 %i.ee, %i.dy                ; 2 uses
  %i.eg = add nsw i64 %i.ds, %i.bh
  %i.eh = lshr i64 %i.eg, 12
  %i.ei = trunc i64 %i.eh to i32
  store i32 %i.ei, ptr %.0313346, align 4, !tbaa !40
  %i.ej = sub nsw i64 %i.bh, %i.ds
  %i.ek = lshr i64 %i.ej, 12
  %i.el = trunc i64 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %.0313346, i64 448
  store i32 %i.el, ptr %i.em, align 4, !tbaa !40
  %i.en = add nsw i64 %i.dj, %i.bs
  %i.eo = lshr i64 %i.en, 12
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %.0313346, i64 32
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !40
  %i.er = sub nsw i64 %i.bs, %i.dj
  %i.es = lshr i64 %i.er, 12
  %i.et = trunc i64 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %.0313346, i64 416
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !40
  %i.ev = add nsw i64 %i.dw, %i.bw
  %i.ew = lshr i64 %i.ev, 12
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %.0313346, i64 64
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !40
  %i.ez = sub nsw i64 %i.bw, %i.dw
  %i.fa = lshr i64 %i.ez, 12
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %.0313346, i64 384
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !40
  %i.fd = add nsw i64 %i.ec, %i.bk
  %i.fe = lshr i64 %i.fd, 12
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %.0313346, i64 96
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !40
  %i.fh = sub nsw i64 %i.bk, %i.ec
  %i.fi = lshr i64 %i.fh, 12
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %.0313346, i64 352
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !40
  %i.fl = add nsw i64 %i.dk, %i.bu
  %i.fm = lshr i64 %i.fl, 12
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %.0313346, i64 128
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !40
  %i.fp = sub nsw i64 %i.bu, %i.dk
  %i.fq = lshr i64 %i.fp, 12
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %.0313346, i64 320
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !40
  %i.ft = add nsw i64 %i.ef, %i.bm
  %i.fu = lshr i64 %i.ft, 12
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = getelementptr inbounds nuw i8, ptr %.0313346, i64 160
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !40
  %i.fx = sub nsw i64 %i.bm, %i.ef
  %i.fy = lshr i64 %i.fx, 12
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %.0313346, i64 288
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !40
  %i.gb = add nsw i64 %i.du, %i.bo
  %i.gc = lshr i64 %i.gb, 12
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = getelementptr inbounds nuw i8, ptr %.0313346, i64 192
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !40
  %i.gf = sub nsw i64 %i.bo, %i.du
  %i.gg = lshr i64 %i.gf, 12
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %.0313346, i64 256
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !40
  %i.gj = lshr i64 %i.bx, 12
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %.0313346, i64 224
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !40
  %i.gm = add nuw nsw i32 %.0347, 1               ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0316344, i64 2
  %i.go = getelementptr inbounds nuw i8, ptr %.0315345, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %.0313346, i64 4
  %exitcond.not = icmp eq i32 %i.gm, 8
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !64

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1314348 = phi ptr [ %i.a, %.preheader ], [ %i.nf, %bb.e ] ; 9 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !43
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gr, i64 %i.r ; 15 uses
  %i.gt = load i32, ptr %.1314348, align 4, !tbaa !40
  %i.gu = sext i32 %i.gt to i64
  %i.gv = shl nsw i64 %i.gu, 13
  %i.gw = add nsw i64 %i.gv, 65536                ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.1314348, i64 8
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !40
  %i.gz = zext i32 %i.gy to i64                   ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.1314348, i64 16
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !40
  %i.hc = zext i32 %i.hb to i64                   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.1314348, i64 24
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !40
  %i.hf = zext i32 %i.he to i64                   ; 3 uses
  %.neg = mul nsw i64 %i.hf, -3580
  %i.hg = mul nuw nsw i64 %i.hf, 9373
  %i.hh = add nsw i64 %.neg, %i.gw                ; 3 uses
  %i.hi = add nsw i64 %i.hg, %i.gw                ; 3 uses
  %.neg317 = mul nsw i64 %i.hf, -11586
  %i.hj = add nsw i64 %.neg317, %i.gw             ; 2 uses
  %i.hk = sub nsw i64 %i.gz, %i.hc                ; 5 uses
  %i.hl = add nuw nsw i64 %i.hc, %i.gz            ; 3 uses
  %i.hm = mul nuw nsw i64 %i.hl, 10958            ; 2 uses
  %i.hn = mul nsw i64 %i.hk, 374                  ; 2 uses
  %i.ho = mul nuw nsw i64 %i.gz, 11795            ; 2 uses
  %i.hp = add nsw i64 %i.hn, %i.hm
  %i.hq = add nsw i64 %i.hp, %i.hi                ; 2 uses
  %i.hr = sub nsw i64 %i.ho, %i.hm
  %i.hs = add nsw i64 %i.hr, %i.hn
  %i.ht = add nsw i64 %i.hs, %i.hh                ; 2 uses
  %i.hu = mul nuw nsw i64 %i.hl, 4482             ; 2 uses
  %.neg330 = mul nsw i64 %i.hk, -3271             ; 2 uses
  %.neg331 = sub nsw i64 %.neg330, %i.hu
  %i.hv = add nsw i64 %.neg331, %i.hi             ; 2 uses
  %.neg333 = sub nsw i64 %i.hu, %i.ho
  %i.hw = add nsw i64 %.neg333, %.neg330
  %i.hx = add nsw i64 %i.hw, %i.hh                ; 2 uses
  %i.hy = mul nuw nsw i64 %i.hl, 6476             ; 2 uses
  %i.hz = mul nsw i64 %i.hk, 2896                 ; 2 uses
  %i.ia = add nsw i64 %i.hz, %i.hy
  %i.ib = add nsw i64 %i.ia, %i.hh                ; 2 uses
  %i.ic = sub nsw i64 %i.hi, %i.hy
end_hunk_2
