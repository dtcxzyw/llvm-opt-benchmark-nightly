inline.NumInlined: 7
inline.NumDeleted: 5
begin_hunk_0_@Gsm_RPE_Encoding:bb.a
  %i.dn = shl nsw i64 %i.dm, 1                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !8
  %i.dq = ashr i16 %i.dp, 2
  %i.dr = sext i16 %i.dq to i64                   ; 2 uses
  %i.ds = mul nsw i64 %i.dr, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.du = load i16, ptr %i.dt, align 8, !tbaa !8
  %i.dv = ashr i16 %i.du, 2
  %i.dw = sext i16 %i.dv to i64                   ; 2 uses
  %i.dx = mul nsw i64 %i.dw, %i.dw
  %i.dy = add nuw nsw i64 %i.dx, %i.ds
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !8
  %i.eb = ashr i16 %i.ea, 2
  %i.ec = sext i16 %i.eb to i64                   ; 2 uses
  %i.ed = mul nsw i64 %i.ec, %i.ec
  %i.ee = add nuw nsw i64 %i.dy, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.eg = load i16, ptr %i.ef, align 4, !tbaa !8
  %i.eh = ashr i16 %i.eg, 2
  %i.ei = sext i16 %i.eh to i64                   ; 2 uses
  %i.ej = mul nsw i64 %i.ei, %i.ei
  %i.ek = add nuw nsw i64 %i.ee, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.em = load i16, ptr %i.el, align 2, !tbaa !8
  %i.en = ashr i16 %i.em, 2
  %i.eo = sext i16 %i.en to i64                   ; 2 uses
  %i.ep = mul nsw i64 %i.eo, %i.eo
  %i.eq = add nuw nsw i64 %i.ek, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.es = load i16, ptr %i.er, align 16, !tbaa !8
  %i.et = ashr i16 %i.es, 2
  %i.eu = sext i16 %i.et to i64                   ; 2 uses
  %i.ev = mul nsw i64 %i.eu, %i.eu
  %i.ew = add nuw nsw i64 %i.eq, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !8
  %i.ez = ashr i16 %i.ey, 2
  %i.fa = sext i16 %i.ez to i64                   ; 2 uses
  %i.fb = mul nsw i64 %i.fa, %i.fa
  %i.fc = add nuw nsw i64 %i.ew, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.fe = load i16, ptr %i.fd, align 4, !tbaa !8
  %i.ff = ashr i16 %i.fe, 2
  %i.fg = sext i16 %i.ff to i64                   ; 2 uses
  %i.fh = mul nsw i64 %i.fg, %i.fg
  %i.fi = add nsw i64 %i.fc, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !8
  %i.fl = ashr i16 %i.fk, 2
  %i.fm = sext i16 %i.fl to i64                   ; 2 uses
  %i.fn = mul nsw i64 %i.fm, %i.fm
  %i.fo = add nsw i64 %i.fi, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fq = load i16, ptr %i.fp, align 8, !tbaa !8
  %i.fr = ashr i16 %i.fq, 2
  %i.fs = sext i16 %i.fr to i64                   ; 2 uses
  %i.ft = mul nsw i64 %i.fs, %i.fs
  %i.fu = add nsw i64 %i.fo, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !8
  %i.fx = ashr i16 %i.fw, 2
  %i.fy = sext i16 %i.fx to i64                   ; 2 uses
  %i.fz = mul nsw i64 %i.fy, %i.fy
  %i.ga = add nsw i64 %i.fu, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.gc = load i16, ptr %i.gb, align 4, !tbaa !8
  %i.gd = ashr i16 %i.gc, 2
  %i.ge = sext i16 %i.gd to i64                   ; 2 uses
  %i.gf = mul nsw i64 %i.ge, %i.ge
  %i.gg = add nsw i64 %i.ga, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 74
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !8
  %i.gj = ashr i16 %i.gi, 2
  %i.gk = sext i16 %i.gj to i64                   ; 2 uses
  %i.gl = mul nsw i64 %i.gk, %i.gk
  %i.gm = add nsw i64 %i.gg, %i.gl
  %i.gn = shl nsw i64 %i.gm, 1                    ; 2 uses
  %i.go = icmp sgt i64 %i.gn, %i.dn
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.gn, i64 %i.dn) ; 2 uses
  %spec.select190.i = zext i1 %i.go to i16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gq = load i16, ptr %i.gp, align 4, !tbaa !8
  %i.gr = ashr i16 %i.gq, 2
  %i.gs = sext i16 %i.gr to i64                   ; 2 uses
  %i.gt = mul nsw i64 %i.gs, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !8
  %i.gw = ashr i16 %i.gv, 2
  %i.gx = sext i16 %i.gw to i64                   ; 2 uses
  %i.gy = mul nsw i64 %i.gx, %i.gx
  %i.gz = add nuw nsw i64 %i.gy, %i.gt
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hb = load i16, ptr %i.ha, align 16, !tbaa !8
  %i.hc = ashr i16 %i.hb, 2
  %i.hd = sext i16 %i.hc to i64                   ; 2 uses
  %i.he = mul nsw i64 %i.hd, %i.hd
  %i.hf = add nuw nsw i64 %i.gz, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !8
  %i.hi = ashr i16 %i.hh, 2
  %i.hj = sext i16 %i.hi to i64                   ; 2 uses
  %i.hk = mul nsw i64 %i.hj, %i.hj
  %i.hl = add nuw nsw i64 %i.hf, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.hn = load i16, ptr %i.hm, align 4, !tbaa !8
  %i.ho = ashr i16 %i.hn, 2
  %i.hp = sext i16 %i.ho to i64                   ; 2 uses
  %i.hq = mul nsw i64 %i.hp, %i.hp
  %i.hr = add nuw nsw i64 %i.hl, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !8
  %i.hu = ashr i16 %i.ht, 2
  %i.hv = sext i16 %i.hu to i64                   ; 2 uses
  %i.hw = mul nsw i64 %i.hv, %i.hv
  %i.hx = add nuw nsw i64 %i.hr, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.hz = load i16, ptr %i.hy, align 8, !tbaa !8
  %i.ia = ashr i16 %i.hz, 2
  %i.ib = sext i16 %i.ia to i64                   ; 2 uses
  %i.ic = mul nsw i64 %i.ib, %i.ib
  %i.id = add nuw nsw i64 %i.hx, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !8
  %i.ig = ashr i16 %i.if, 2
  %i.ih = sext i16 %i.ig to i64                   ; 2 uses
  %i.ii = mul nsw i64 %i.ih, %i.ih
  %i.ij = add nsw i64 %i.id, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.il = load i16, ptr %i.ik, align 4, !tbaa !8
  %i.im = ashr i16 %i.il, 2
  %i.in = sext i16 %i.im to i64                   ; 2 uses
  %i.io = mul nsw i64 %i.in, %i.in
  %i.ip = add nsw i64 %i.ij, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !8
  %i.is = ashr i16 %i.ir, 2
  %i.it = sext i16 %i.is to i64                   ; 2 uses
  %i.iu = mul nsw i64 %i.it, %i.it
  %i.iv = add nsw i64 %i.ip, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ix = load i16, ptr %i.iw, align 16, !tbaa !8
  %i.iy = ashr i16 %i.ix, 2
  %i.iz = sext i16 %i.iy to i64                   ; 2 uses
  %i.ja = mul nsw i64 %i.iz, %i.iz
  %i.jb = add nsw i64 %i.iv, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 70
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !8
  %i.je = ashr i16 %i.jd, 2
  %i.jf = sext i16 %i.je to i64                   ; 2 uses
  %i.jg = mul nsw i64 %i.jf, %i.jf
  %i.jh = add nsw i64 %i.jb, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.jj = load i16, ptr %i.ji, align 4, !tbaa !8
  %i.jk = ashr i16 %i.jj, 2
  %i.jl = sext i16 %i.jk to i64                   ; 2 uses
  %i.jm = mul nsw i64 %i.jl, %i.jl
  %i.jn = add nsw i64 %i.jh, %i.jm
  %i.jo = shl nsw i64 %i.jn, 1                    ; 2 uses
  %i.jp = icmp sgt i64 %i.jo, %spec.select.i
  %.1186.i = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %spec.select.i)
  %.1.i = select i1 %i.jp, i16 2, i16 %spec.select190.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 78
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !8
  %i.js = ashr i16 %i.jr, 2
  %i.jt = sext i16 %i.js to i64                   ; 2 uses
  %i.ju = mul nsw i64 %i.jt, %i.jt
  %i.jv = add nsw i64 %i.ju, %i.dh
  %i.jw = shl nsw i64 %i.jv, 1
  %i.jx = icmp sgt i64 %i.jw, %.1186.i
  %.2.i = select i1 %i.jx, i16 3, i16 %.1.i       ; 2 uses
  %i.jy = zext nneg i16 %.2.i to i64
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.jy ; 13 uses
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !8  ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 6
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !8  ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !8  ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 18
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !8  ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !8  ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jz, i64 30
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !8  ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jz, i64 36
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !8  ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jz, i64 42
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !8  ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !8  ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jz, i64 54
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !8  ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jz, i64 60
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !8  ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jz, i64 66
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !8  ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jz, i64 72
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !8  ; 4 uses
  store i16 %.2.i, ptr %3, align 2, !tbaa !8
  %5 = insertelement <12 x i16> poison, i16 %i.ka, i64 0
  %6 = insertelement <12 x i16> %5, i16 %i.kc, i64 1
  %7 = insertelement <12 x i16> %6, i16 %i.ke, i64 2
  %8 = insertelement <12 x i16> %7, i16 %i.kg, i64 3
  %9 = insertelement <12 x i16> %8, i16 %i.ki, i64 4
  %10 = insertelement <12 x i16> %9, i16 %i.kk, i64 5
  %11 = insertelement <12 x i16> %10, i16 %i.km, i64 6
  %12 = insertelement <12 x i16> %11, i16 %i.ko, i64 7
  %13 = insertelement <12 x i16> %12, i16 %i.kq, i64 8
  %14 = insertelement <12 x i16> %13, i16 %i.ks, i64 9
  %15 = insertelement <12 x i16> %14, i16 %i.ku, i64 10
  %16 = insertelement <12 x i16> %15, i16 %i.kw, i64 11 ; 3 uses
  %17 = icmp slt <12 x i16> %16, zeroinitializer
  %18 = tail call <12 x i16> @llvm.ssub.sat.v12i16(<12 x i16> zeroinitializer, <12 x i16> %16)
  %19 = select <12 x i1> %17, <12 x i16> %18, <12 x i16> %16
  %i.kz = tail call i16 @llvm.vector.reduce.smax.v12i16(<12 x i16> %19)
  %i.la = icmp slt i16 %i.ky, 0
  %i.lb = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.ky)
  %i.lc = select i1 %i.la, i16 %i.lb, i16 %i.ky
  %.138.11.i = tail call i16 @llvm.smax.i16(i16 %i.kz, i16 %i.lc) ; 2 uses
  %.138.12.i = tail call i16 @llvm.smax.i16(i16 %.138.11.i, i16 0)
  %20 = insertelement <6 x i16> poison, i16 %.138.11.i, i64 0
  %21 = shufflevector <6 x i16> %20, <6 x i16> poison, <6 x i32> zeroinitializer
  %22 = icmp sgt <6 x i16> %21, <i16 511, i16 1023, i16 2047, i16 4095, i16 8191, i16 16383>
  %23 = bitcast <6 x i1> %22 to i6
  %24 = tail call range(i6 0, 7) i6 @llvm.ctpop.i6(i6 %23)
  %i.ld = zext nneg i6 %24 to i16                 ; 2 uses
  %i.le = add nuw nsw i16 %i.ld, 5
  %25 = lshr i16 %.138.12.i, %i.le
  %i.lf = shl nuw nsw i16 %i.ld, 3
  %i.lg = tail call signext i16 @gsm_add(i16 noundef signext %25, i16 noundef signext %i.lf) #5 ; 4 uses
  %i.lh = icmp sgt i16 %i.lg, 15
  %i.li = lshr i16 %i.lg, 3
  %i.lj = add nsw i16 %i.li, -1
  %.012.i.i = select i1 %i.lh, i16 %i.lj, i16 0   ; 3 uses
  %i.lk = shl i16 %.012.i.i, 3
  %i.ll = sub i16 %i.lg, %i.lk                    ; 4 uses
  %i.lm = icmp eq i16 %i.ll, 0
  br i1 %i.lm, label %APCM_quantization.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %Weighting_filter.exit
  %i.ln = icmp slt i16 %i.ll, 8
  br i1 %i.ln, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.018.i.i = phi i16 [ %i.lp, %.lr.ph.i.i ], [ %i.ll, %.preheader.i.i ]
  %.11317.i.i = phi i16 [ %i.lq, %.lr.ph.i.i ], [ %.012.i.i, %.preheader.i.i ]
  %i.lo = shl i16 %.018.i.i, 1
  %i.lp = or disjoint i16 %i.lo, 1                ; 3 uses
  %i.lq = add i16 %.11317.i.i, -1                 ; 2 uses
  %i.lr = icmp slt i16 %i.lp, 8
  br i1 %i.lr, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !12

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.113.lcssa.i.i = phi i16 [ %.012.i.i, %.preheader.i.i ], [ %i.lq, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i16 [ %i.ll, %.preheader.i.i ], [ %i.lp, %.lr.ph.i.i ]
  %i.ls = add nsw i16 %.0.lcssa.i.i, -8
  br label %APCM_quantization.exit

APCM_quantization.exit:                           ; preds = %Weighting_filter.exit, %._crit_edge.i.i
  %.2.i.i = phi i16 [ %.113.lcssa.i.i, %._crit_edge.i.i ], [ -4, %Weighting_filter.exit ] ; 2 uses
  %.1.i.i = phi i16 [ %i.ls, %._crit_edge.i.i ], [ 7, %Weighting_filter.exit ] ; 2 uses
  %i.lt = sub i16 6, %.2.i.i
  %i.lu = zext nneg i16 %.1.i.i to i64
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr @gsm_NRFAC, i64 %i.lu
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !8
  %i.lx = zext nneg i16 %i.lt to i32              ; 13 uses
  %i.ly = sext i16 %i.lw to i64                   ; 13 uses
  %i.lz = zext i16 %i.ka to i32
  %i.ma = zext i16 %i.kc to i32
  %i.mb = zext i16 %i.ke to i32
  %i.mc = zext i16 %i.kg to i32
  %i.md = zext i16 %i.ki to i32
  %i.me = zext i16 %i.kk to i32
  %i.mf = zext i16 %i.km to i32
  %i.mg = zext i16 %i.ko to i32
  %i.mh = shl i32 %i.mg, %i.lx
  %i.mi = shl i32 %i.mf, %i.lx
  %i.mj = shl i32 %i.me, %i.lx
  %i.mk = shl i32 %i.md, %i.lx
  %i.ml = shl i32 %i.mc, %i.lx
  %i.mm = shl i32 %i.mb, %i.lx
  %i.mn = shl i32 %i.ma, %i.lx
  %i.mo = shl i32 %i.lz, %i.lx
  %i.mp = zext i32 %i.mh to i64
  %i.mq = zext i32 %i.mi to i64
  %i.mr = zext i32 %i.mj to i64
  %i.ms = zext i32 %i.mk to i64
  %i.mt = zext i32 %i.ml to i64
  %i.mu = zext i32 %i.mm to i64
  %i.mv = zext i32 %i.mn to i64
  %i.mw = zext i32 %i.mo to i64
  %sext.7.i = shl i64 %i.mp, 48
  %sext.6.i = shl i64 %i.mq, 48
  %sext.5.i = shl i64 %i.mr, 48
  %sext.4.i = shl i64 %i.ms, 48
  %sext.3.i = shl i64 %i.mt, 48
  %sext.2.i = shl i64 %i.mu, 48
  %sext.1.i = shl i64 %i.mv, 48
  %sext.i = shl i64 %i.mw, 48
  %i.mx = ashr exact i64 %sext.7.i, 48
  %i.my = ashr exact i64 %sext.6.i, 48
  %i.mz = ashr exact i64 %sext.5.i, 48
  %i.na = ashr exact i64 %sext.4.i, 48
  %i.nb = ashr exact i64 %sext.3.i, 48
  %i.nc = ashr exact i64 %sext.2.i, 48
  %i.nd = ashr exact i64 %sext.1.i, 48
  %i.ne = ashr exact i64 %sext.i, 48
  %i.nf = mul nsw i64 %i.mx, %i.ly
  %i.ng = mul nsw i64 %i.my, %i.ly
  %i.nh = mul nsw i64 %i.mz, %i.ly
  %i.ni = mul nsw i64 %i.na, %i.ly
  %i.nj = mul nsw i64 %i.nb, %i.ly
  %i.nk = mul nsw i64 %i.nc, %i.ly
  %i.nl = mul nsw i64 %i.nd, %i.ly
  %i.nm = mul nsw i64 %i.ne, %i.ly
  %i.nn = lshr i64 %i.nf, 15
  %i.no = lshr i64 %i.ng, 15
  %i.np = lshr i64 %i.nh, 15
  %i.nq = lshr i64 %i.ni, 15
  %i.nr = lshr i64 %i.nj, 15
  %i.ns = lshr i64 %i.nk, 15
  %i.nt = lshr i64 %i.nl, 15
  %i.nu = lshr i64 %i.nm, 15
  %i.nv = trunc i64 %i.nn to i16
  %i.nw = trunc i64 %i.no to i16
  %i.nx = trunc i64 %i.np to i16
  %i.ny = trunc i64 %i.nq to i16
  %i.nz = trunc i64 %i.nr to i16
  %i.oa = trunc i64 %i.ns to i16
  %i.ob = trunc i64 %i.nt to i16
  %i.oc = trunc i64 %i.nu to i16
  %i.od = insertelement <8 x i16> poison, i16 %i.oc, i64 0
  %i.oe = insertelement <8 x i16> %i.od, i16 %i.ob, i64 1
  %i.of = insertelement <8 x i16> %i.oe, i16 %i.oa, i64 2
  %i.og = insertelement <8 x i16> %i.of, i16 %i.nz, i64 3
  %i.oh = insertelement <8 x i16> %i.og, i16 %i.ny, i64 4
  %i.oi = insertelement <8 x i16> %i.oh, i16 %i.nx, i64 5
  %i.oj = insertelement <8 x i16> %i.oi, i16 %i.nw, i64 6
  %i.ok = insertelement <8 x i16> %i.oj, i16 %i.nv, i64 7
  %i.ol = ashr <8 x i16> %i.ok, splat (i16 12)
  %i.om = add nsw <8 x i16> %i.ol, splat (i16 4)
  store <8 x i16> %i.om, ptr %4, align 2, !tbaa !8
  %i.on = zext i16 %i.kq to i32
  %i.oo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.op = zext i16 %i.ks to i32
  %i.oq = zext i16 %i.ku to i32
  %i.or = zext i16 %i.kw to i32
  %i.os = shl i32 %i.or, %i.lx
  %i.ot = shl i32 %i.oq, %i.lx
  %i.ou = shl i32 %i.op, %i.lx
  %i.ov = shl i32 %i.on, %i.lx
  %i.ow = zext i32 %i.os to i64
  %i.ox = zext i32 %i.ot to i64
  %i.oy = zext i32 %i.ou to i64
  %i.oz = zext i32 %i.ov to i64
  %sext.11.i = shl i64 %i.ow, 48
  %sext.10.i = shl i64 %i.ox, 48
  %sext.9.i = shl i64 %i.oy, 48
  %sext.8.i = shl i64 %i.oz, 48
  %i.pa = ashr exact i64 %sext.11.i, 48
  %i.pb = ashr exact i64 %sext.10.i, 48
  %i.pc = ashr exact i64 %sext.9.i, 48
  %i.pd = ashr exact i64 %sext.8.i, 48
  %i.pe = mul nsw i64 %i.pa, %i.ly
  %i.pf = mul nsw i64 %i.pb, %i.ly
  %i.pg = mul nsw i64 %i.pc, %i.ly
  %i.ph = mul nsw i64 %i.pd, %i.ly
  %i.pi = lshr i64 %i.pe, 15
  %i.pj = lshr i64 %i.pf, 15
  %i.pk = lshr i64 %i.pg, 15
  %i.pl = lshr i64 %i.ph, 15
  %i.pm = trunc i64 %i.pi to i16
  %i.pn = trunc i64 %i.pj to i16
  %i.po = trunc i64 %i.pk to i16
  %i.pp = trunc i64 %i.pl to i16
  %i.pq = insertelement <4 x i16> poison, i16 %i.pp, i64 0
  %i.pr = insertelement <4 x i16> %i.pq, i16 %i.po, i64 1
  %i.ps = insertelement <4 x i16> %i.pr, i16 %i.pn, i64 2
  %i.pt = insertelement <4 x i16> %i.ps, i16 %i.pm, i64 3
  %i.pu = ashr <4 x i16> %i.pt, splat (i16 12)
  %i.pv = add nsw <4 x i16> %i.pu, splat (i16 4)
  store <4 x i16> %i.pv, ptr %i.oo, align 2, !tbaa !8
  %i.pw = zext i16 %i.ky to i32
  %i.px = shl i32 %i.pw, %i.lx
  %i.py = zext i32 %i.px to i64
  %sext.12.i = shl i64 %i.py, 48
  %i.pz = ashr exact i64 %sext.12.i, 48
  %i.qa = mul nsw i64 %i.pz, %i.ly
  %i.qb = lshr i64 %i.qa, 15
  %i.qc = trunc i64 %i.qb to i16
  %i.qd = ashr i16 %i.qc, 12
  %narrow.12.i = add nsw i16 %i.qd, 4
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 %narrow.12.i, ptr %i.qe, align 2, !tbaa !8
  store i16 %i.lg, ptr %2, align 2, !tbaa !8
  call fastcc void @APCM_inverse_quantization(ptr noundef nonnull %4, i16 noundef signext %.1.i.i, i16 noundef signext %.2.i.i, ptr noundef %i.b)
  %i.qf = load i16, ptr %3, align 2, !tbaa !8     ; 3 uses
  switch i16 %i.qf, label %bb.g [
    i16 3, label %bb.c
    i16 2, label %bb.d
    i16 1, label %bb.e
    i16 0, label %bb.f
  ]

bb.c:                                             ; preds = %APCM_quantization.exit
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 0, ptr %1, align 2, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %APCM_quantization.exit, %bb.c, %bb.f
  %.011.i = phi ptr [ %i.qk, %bb.f ], [ %i.b, %bb.c ], [ %i.b, %APCM_quantization.exit ]
  %.19.i = phi ptr [ %i.qm, %bb.f ], [ %i.qg, %bb.c ], [ %1, %APCM_quantization.exit ] ; 2 uses
  %.0.i = phi i32 [ %.2.i7, %bb.f ], [ 13, %bb.c ], [ 13, %APCM_quantization.exit ]
  %i.qh = getelementptr inbounds nuw i8, ptr %.19.i, i64 2
  store i16 0, ptr %.19.i, align 2, !tbaa !8
  %i.qi = add nsw i32 %.0.i, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %APCM_quantization.exit
  %.112.i = phi ptr [ %.011.i, %bb.d ], [ %i.b, %APCM_quantization.exit ]
  %.210.i = phi ptr [ %i.qh, %bb.d ], [ %1, %APCM_quantization.exit ] ; 2 uses
  %.1.i8 = phi i32 [ %i.qi, %bb.d ], [ 12, %APCM_quantization.exit ]
  %i.qj = getelementptr inbounds nuw i8, ptr %.210.i, i64 2
  store i16 0, ptr %.210.i, align 2, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %APCM_quantization.exit
  %.213.i = phi ptr [ %.112.i, %bb.e ], [ %i.b, %APCM_quantization.exit ] ; 2 uses
  %.3.i = phi ptr [ %i.qj, %bb.e ], [ %1, %APCM_quantization.exit ] ; 2 uses
  %.2.i7 = phi i32 [ %.1.i8, %bb.e ], [ 12, %APCM_quantization.exit ] ; 2 uses
end_hunk_0
begin_hunk_1_@APCM_inverse_quantization:bb.a
  %i.cv = mul nsw i64 %i.i, %i.cu
  %i.cw = add nsw i64 %i.cv, 140737488355328
  %i.cx = lshr i64 %i.cw, 48
  %i.cy = trunc nuw i64 %i.cx to i16
  %i.cz = tail call i16 @llvm.sadd.sat.i16(i16 %i.cy, i16 %i.g)
  %i.da = tail call signext i16 @gsm_asr(i16 noundef signext %i.cz, i32 noundef %i.j) #5
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i16 %i.da, ptr %i.cp, align 2, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.dd = load i16, ptr %i.cq, align 2, !tbaa !8
  %i.de = shl i16 %i.dd, 13
  %i.df = add i16 %i.de, -28672
  %i.dg = sext i16 %i.df to i64
  %i.dh = mul nsw i64 %i.i, %i.dg
  %i.di = add nsw i64 %i.dh, 140737488355328
  %i.dj = lshr i64 %i.di, 48
  %i.dk = trunc nuw i64 %i.dj to i16
  %i.dl = tail call i16 @llvm.sadd.sat.i16(i16 %i.dk, i16 %i.g)
  %i.dm = tail call signext i16 @gsm_asr(i16 noundef signext %i.dl, i32 noundef %i.j) #5
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i16 %i.dm, ptr %i.db, align 2, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dp = load i16, ptr %i.dc, align 2, !tbaa !8
  %i.dq = shl i16 %i.dp, 13
  %i.dr = add i16 %i.dq, -28672
  %i.ds = sext i16 %i.dr to i64
  %i.dt = mul nsw i64 %i.i, %i.ds
  %i.du = add nsw i64 %i.dt, 140737488355328
  %i.dv = lshr i64 %i.du, 48
  %i.dw = trunc nuw i64 %i.dv to i16
  %i.dx = tail call i16 @llvm.sadd.sat.i16(i16 %i.dw, i16 %i.g)
  %i.dy = tail call signext i16 @gsm_asr(i16 noundef signext %i.dx, i32 noundef %i.j) #5
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i16 %i.dy, ptr %i.dn, align 2, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.eb = load i16, ptr %i.do, align 2, !tbaa !8
  %i.ec = shl i16 %i.eb, 13
  %i.ed = add i16 %i.ec, -28672
  %i.ee = sext i16 %i.ed to i64
  %i.ef = mul nsw i64 %i.i, %i.ee
  %i.eg = add nsw i64 %i.ef, 140737488355328
  %i.eh = lshr i64 %i.eg, 48
  %i.ei = trunc nuw i64 %i.eh to i16
  %i.ej = tail call i16 @llvm.sadd.sat.i16(i16 %i.ei, i16 %i.g)
  %i.ek = tail call signext i16 @gsm_asr(i16 noundef signext %i.ej, i32 noundef %i.j) #5
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i16 %i.ek, ptr %i.dz, align 2, !tbaa !8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load i16, ptr %i.ea, align 2, !tbaa !8
  %i.eo = shl i16 %i.en, 13
  %i.ep = add i16 %i.eo, -28672
  %i.eq = sext i16 %i.ep to i64
  %i.er = mul nsw i64 %i.i, %i.eq
  %i.es = add nsw i64 %i.er, 140737488355328
  %i.et = lshr i64 %i.es, 48
  %i.eu = trunc nuw i64 %i.et to i16
  %i.ev = tail call i16 @llvm.sadd.sat.i16(i16 %i.eu, i16 %i.g)
  %i.ew = tail call signext i16 @gsm_asr(i16 noundef signext %i.ev, i32 noundef %i.j) #5
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 %i.ew, ptr %i.el, align 2, !tbaa !8
  %i.ey = load i16, ptr %i.em, align 2, !tbaa !8
  %i.ez = shl i16 %i.ey, 13
  %i.fa = add i16 %i.ez, -28672
  %i.fb = sext i16 %i.fa to i64
  %i.fc = mul nsw i64 %i.i, %i.fb
  %i.fd = add nsw i64 %i.fc, 140737488355328
  %i.fe = lshr i64 %i.fd, 48
  %i.ff = trunc nuw i64 %i.fe to i16
  %i.fg = tail call i16 @llvm.sadd.sat.i16(i16 %i.ff, i16 %i.g)
  %i.fh = tail call signext i16 @gsm_asr(i16 noundef signext %i.fg, i32 noundef %i.j) #5
  store i16 %i.fh, ptr %i.ex, align 2, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_RPE_Decoding(ptr noundef readnone captures(none) %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef readonly captures(none) %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [13 x i16], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp sgt i16 %1, 15
  %i.c = lshr i16 %1, 3
  %i.d = add nsw i16 %i.c, -1
  %.012.i = select i1 %i.b, i16 %i.d, i16 0       ; 3 uses
  %i.e = shl i16 %.012.i, 3
  %i.f = sub i16 %1, %i.e                         ; 4 uses
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %APCM_quantization_xmaxc_to_exp_mant.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.h = icmp slt i16 %i.f, 8
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.018.i = phi i16 [ %i.j, %.lr.ph.i ], [ %i.f, %.preheader.i ]
  %.11317.i = phi i16 [ %i.k, %.lr.ph.i ], [ %.012.i, %.preheader.i ]
  %i.i = shl i16 %.018.i, 1
  %i.j = or disjoint i16 %i.i, 1                  ; 3 uses
  %i.k = add i16 %.11317.i, -1                    ; 2 uses
  %i.l = icmp slt i16 %i.j, 8
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.113.lcssa.i = phi i16 [ %.012.i, %.preheader.i ], [ %i.k, %.lr.ph.i ]
  %.0.lcssa.i = phi i16 [ %i.f, %.preheader.i ], [ %i.j, %.lr.ph.i ]
  %i.m = add nsw i16 %.0.lcssa.i, -8
  br label %APCM_quantization_xmaxc_to_exp_mant.exit

APCM_quantization_xmaxc_to_exp_mant.exit:         ; preds = %bb.a, %._crit_edge.i
  %.2.i = phi i16 [ %.113.lcssa.i, %._crit_edge.i ], [ -4, %bb.a ]
  %.1.i = phi i16 [ %i.m, %._crit_edge.i ], [ 7, %bb.a ]
  call fastcc void @APCM_inverse_quantization(ptr noundef %3, i16 noundef signext %.1.i, i16 noundef signext %.2.i, ptr noundef %i.a)
  switch i16 %2, label %bb.f [
    i16 3, label %bb.b
    i16 2, label %bb.c
    i16 1, label %bb.d
    i16 0, label %bb.e
  ]

bb.b:                                             ; preds = %APCM_quantization_xmaxc_to_exp_mant.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %4, align 2, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %APCM_quantization_xmaxc_to_exp_mant.exit, %bb.b, %bb.e
  %.011.i = phi ptr [ %i.r, %bb.e ], [ %i.a, %bb.b ], [ %i.a, %APCM_quantization_xmaxc_to_exp_mant.exit ]
  %.19.i = phi ptr [ %i.t, %bb.e ], [ %i.n, %bb.b ], [ %4, %APCM_quantization_xmaxc_to_exp_mant.exit ] ; 2 uses
  %.0.i = phi i32 [ %.2.i3, %bb.e ], [ 13, %bb.b ], [ 13, %APCM_quantization_xmaxc_to_exp_mant.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i, i64 2
  store i16 0, ptr %.19.i, align 2, !tbaa !8
  %i.p = add nsw i32 %.0.i, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %APCM_quantization_xmaxc_to_exp_mant.exit
  %.112.i = phi ptr [ %.011.i, %bb.c ], [ %i.a, %APCM_quantization_xmaxc_to_exp_mant.exit ]
  %.210.i = phi ptr [ %i.o, %bb.c ], [ %4, %APCM_quantization_xmaxc_to_exp_mant.exit ] ; 2 uses
  %.1.i4 = phi i32 [ %i.p, %bb.c ], [ 12, %APCM_quantization_xmaxc_to_exp_mant.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %.210.i, i64 2
  store i16 0, ptr %.210.i, align 2, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %APCM_quantization_xmaxc_to_exp_mant.exit
  %.213.i = phi ptr [ %.112.i, %bb.d ], [ %i.a, %APCM_quantization_xmaxc_to_exp_mant.exit ] ; 2 uses
  %.3.i = phi ptr [ %i.q, %bb.d ], [ %4, %APCM_quantization_xmaxc_to_exp_mant.exit ] ; 2 uses
  %.2.i3 = phi i32 [ %.1.i4, %bb.d ], [ 12, %APCM_quantization_xmaxc_to_exp_mant.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.213.i, i64 2
  %i.s = load i16, ptr %.213.i, align 2, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 2 uses
  store i16 %i.s, ptr %.3.i, align 2, !tbaa !8
  %.not.i = icmp eq i32 %.2.i3, 0
  br i1 %.not.i, label %bb.f, label %bb.c, !llvm.loop !13

bb.f:                                             ; preds = %bb.e, %APCM_quantization_xmaxc_to_exp_mant.exit
  %.4.i = phi ptr [ %4, %APCM_quantization_xmaxc_to_exp_mant.exit ], [ %i.t, %bb.e ]
  %i.u = add i16 %2, 1
  %i.v = icmp slt i16 %i.u, 4
  br i1 %i.v, label %.lr.ph.preheader.i, label %RPE_grid_positioning.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.w = sub i16 2, %2
  %i.x = zext i16 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = add nuw nsw i64 %i.y, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %.4.i, i8 0, i64 %i.z, i1 false), !tbaa !8
  br label %RPE_grid_positioning.exit

RPE_grid_positioning.exit:                        ; preds = %bb.f, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare signext i16 @gsm_add(i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare signext i16 @gsm_sub(i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare signext i16 @gsm_asl(i16 noundef signext, i32 noundef) local_unnamed_addr #2

declare signext i16 @gsm_asr(i16 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ssub.sat.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i6 @llvm.ctpop.i6(i6) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <12 x i16> @llvm.ssub.sat.v12i16(<12 x i16>, <12 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v12i16(<12 x i16>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
end_hunk_1
