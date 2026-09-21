Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rpe?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Gsm_RPE_Encoding:bb.a
  %i.en = ashr i16 %i.em, 2
  %i.eo = sext i16 %i.en to i64                   ; 2 uses
  %i.ep = mul nsw i64 %i.eo, %i.eo
  %i.eq = add nuw nsw i64 %i.ek, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.es = load i16, ptr %i.er, align 16, !tbaa !11
  %i.et = ashr i16 %i.es, 2
  %i.eu = sext i16 %i.et to i64                   ; 2 uses
  %i.ev = mul nsw i64 %i.eu, %i.eu
  %i.ew = add nuw nsw i64 %i.eq, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !11
  %i.ez = ashr i16 %i.ey, 2
  %i.fa = sext i16 %i.ez to i64                   ; 2 uses
  %i.fb = mul nsw i64 %i.fa, %i.fa
  %i.fc = add nuw nsw i64 %i.ew, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.fe = load i16, ptr %i.fd, align 4, !tbaa !11
  %i.ff = ashr i16 %i.fe, 2
  %i.fg = sext i16 %i.ff to i64                   ; 2 uses
  %i.fh = mul nsw i64 %i.fg, %i.fg
  %i.fi = add nsw i64 %i.fc, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !11
  %i.fl = ashr i16 %i.fk, 2
  %i.fm = sext i16 %i.fl to i64                   ; 2 uses
  %i.fn = mul nsw i64 %i.fm, %i.fm
  %i.fo = add nsw i64 %i.fi, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fq = load i16, ptr %i.fp, align 8, !tbaa !11
  %i.fr = ashr i16 %i.fq, 2
  %i.fs = sext i16 %i.fr to i64                   ; 2 uses
  %i.ft = mul nsw i64 %i.fs, %i.fs
  %i.fu = add nsw i64 %i.fo, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !11
  %i.fx = ashr i16 %i.fw, 2
  %i.fy = sext i16 %i.fx to i64                   ; 2 uses
  %i.fz = mul nsw i64 %i.fy, %i.fy
  %i.ga = add nsw i64 %i.fu, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.gc = load i16, ptr %i.gb, align 4, !tbaa !11
  %i.gd = ashr i16 %i.gc, 2
  %i.ge = sext i16 %i.gd to i64                   ; 2 uses
  %i.gf = mul nsw i64 %i.ge, %i.ge
  %i.gg = add nsw i64 %i.ga, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 74
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !11
  %i.gj = ashr i16 %i.gi, 2
  %i.gk = sext i16 %i.gj to i64                   ; 2 uses
  %i.gl = mul nsw i64 %i.gk, %i.gk
  %i.gm = add nsw i64 %i.gg, %i.gl
  %i.gn = shl nsw i64 %i.gm, 1                    ; 2 uses
  %i.go = icmp sgt i64 %i.gn, %i.dn
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.gn, i64 %i.dn) ; 2 uses
  %spec.select190.i = zext i1 %i.go to i16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gq = load i16, ptr %i.gp, align 4, !tbaa !11
  %i.gr = ashr i16 %i.gq, 2
  %i.gs = sext i16 %i.gr to i64                   ; 2 uses
  %i.gt = mul nsw i64 %i.gs, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !11
  %i.gw = ashr i16 %i.gv, 2
  %i.gx = sext i16 %i.gw to i64                   ; 2 uses
  %i.gy = mul nsw i64 %i.gx, %i.gx
  %i.gz = add nuw nsw i64 %i.gy, %i.gt
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hb = load i16, ptr %i.ha, align 16, !tbaa !11
  %i.hc = ashr i16 %i.hb, 2
  %i.hd = sext i16 %i.hc to i64                   ; 2 uses
  %i.he = mul nsw i64 %i.hd, %i.hd
  %i.hf = add nuw nsw i64 %i.gz, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !11
  %i.hi = ashr i16 %i.hh, 2
  %i.hj = sext i16 %i.hi to i64                   ; 2 uses
  %i.hk = mul nsw i64 %i.hj, %i.hj
  %i.hl = add nuw nsw i64 %i.hf, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.hn = load i16, ptr %i.hm, align 4, !tbaa !11
  %i.ho = ashr i16 %i.hn, 2
  %i.hp = sext i16 %i.ho to i64                   ; 2 uses
  %i.hq = mul nsw i64 %i.hp, %i.hp
  %i.hr = add nuw nsw i64 %i.hl, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !11
  %i.hu = ashr i16 %i.ht, 2
  %i.hv = sext i16 %i.hu to i64                   ; 2 uses
  %i.hw = mul nsw i64 %i.hv, %i.hv
  %i.hx = add nuw nsw i64 %i.hr, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.hz = load i16, ptr %i.hy, align 8, !tbaa !11
  %i.ia = ashr i16 %i.hz, 2
  %i.ib = sext i16 %i.ia to i64                   ; 2 uses
  %i.ic = mul nsw i64 %i.ib, %i.ib
  %i.id = add nuw nsw i64 %i.hx, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !11
  %i.ig = ashr i16 %i.if, 2
  %i.ih = sext i16 %i.ig to i64                   ; 2 uses
  %i.ii = mul nsw i64 %i.ih, %i.ih
  %i.ij = add nsw i64 %i.id, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.il = load i16, ptr %i.ik, align 4, !tbaa !11
  %i.im = ashr i16 %i.il, 2
  %i.in = sext i16 %i.im to i64                   ; 2 uses
  %i.io = mul nsw i64 %i.in, %i.in
  %i.ip = add nsw i64 %i.ij, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !11
  %i.is = ashr i16 %i.ir, 2
  %i.it = sext i16 %i.is to i64                   ; 2 uses
  %i.iu = mul nsw i64 %i.it, %i.it
  %i.iv = add nsw i64 %i.ip, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ix = load i16, ptr %i.iw, align 16, !tbaa !11
  %i.iy = ashr i16 %i.ix, 2
  %i.iz = sext i16 %i.iy to i64                   ; 2 uses
  %i.ja = mul nsw i64 %i.iz, %i.iz
  %i.jb = add nsw i64 %i.iv, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 70
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !11
  %i.je = ashr i16 %i.jd, 2
  %i.jf = sext i16 %i.je to i64                   ; 2 uses
  %i.jg = mul nsw i64 %i.jf, %i.jf
  %i.jh = add nsw i64 %i.jb, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.jj = load i16, ptr %i.ji, align 4, !tbaa !11
  %i.jk = ashr i16 %i.jj, 2
  %i.jl = sext i16 %i.jk to i64                   ; 2 uses
  %i.jm = mul nsw i64 %i.jl, %i.jl
  %i.jn = add nsw i64 %i.jh, %i.jm
  %i.jo = shl nsw i64 %i.jn, 1                    ; 2 uses
  %i.jp = icmp sgt i64 %i.jo, %spec.select.i
  %.1185.i = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %spec.select.i)
  %.1.i = select i1 %i.jp, i16 2, i16 %spec.select190.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 78
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !11
  %i.js = ashr i16 %i.jr, 2
  %i.jt = sext i16 %i.js to i64                   ; 2 uses
  %i.ju = mul nsw i64 %i.jt, %i.jt
  %i.jv = add nsw i64 %i.ju, %i.dh
  %i.jw = shl nsw i64 %i.jv, 1
  %i.jx = icmp sgt i64 %i.jw, %.1185.i
  %.2.i = select i1 %i.jx, i16 3, i16 %.1.i       ; 2 uses
  %i.jy = zext nneg i16 %.2.i to i64
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.jy ; 13 uses
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !11 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 6
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !11 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !11 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 18
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !11 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !11 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jz, i64 30
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !11 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jz, i64 36
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !11 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jz, i64 42
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !11 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !11 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jz, i64 54
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !11 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jz, i64 60
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !11 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jz, i64 66
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !11 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jz, i64 72
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !11 ; 4 uses
  store i16 %.2.i, ptr %3, align 2, !tbaa !11
  %i.kz = insertelement <8 x i16> poison, i16 %i.ka, i64 0
  %i.la = insertelement <8 x i16> %i.kz, i16 %i.kc, i64 1
  %i.lb = insertelement <8 x i16> %i.la, i16 %i.ke, i64 2
  %i.lc = insertelement <8 x i16> %i.lb, i16 %i.kg, i64 3
  %i.ld = insertelement <8 x i16> %i.lc, i16 %i.ki, i64 4
  %i.le = insertelement <8 x i16> %i.ld, i16 %i.kk, i64 5
  %i.lf = insertelement <8 x i16> %i.le, i16 %i.km, i64 6
  %i.lg = insertelement <8 x i16> %i.lf, i16 %i.ko, i64 7 ; 3 uses
  %i.lh = icmp slt <8 x i16> %i.lg, zeroinitializer
  %i.li = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %i.lg)
  %i.lj = select <8 x i1> %i.lh, <8 x i16> %i.li, <8 x i16> %i.lg ; 2 uses
  %i.lk = insertelement <4 x i16> poison, i16 %i.kq, i64 0
  %i.ll = insertelement <4 x i16> %i.lk, i16 %i.ks, i64 1
  %i.lm = insertelement <4 x i16> %i.ll, i16 %i.ku, i64 2
  %i.ln = insertelement <4 x i16> %i.lm, i16 %i.kw, i64 3 ; 3 uses
  %i.lo = icmp slt <4 x i16> %i.ln, zeroinitializer
  %i.lp = tail call <4 x i16> @llvm.ssub.sat.v4i16(<4 x i16> zeroinitializer, <4 x i16> %i.ln)
  %i.lq = select <4 x i1> %i.lo, <4 x i16> %i.lp, <4 x i16> %i.ln
  %i.lr = icmp slt i16 %i.ky, 0
  %i.ls = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.ky)
  %i.lt = select i1 %i.lr, i16 %i.ls, i16 %i.ky
  %i.lu = shufflevector <8 x i16> %i.lj, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lv = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.lu, <4 x i16> %i.lq)
  %i.lw = shufflevector <4 x i16> %i.lv, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lx = shufflevector <8 x i16> %i.lw, <8 x i16> %i.lj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ly = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %i.lx)
  %i.lz = tail call i16 @llvm.smax.i16(i16 %i.ly, i16 %i.lt) ; 4 uses
  %.1.12.i = tail call i16 @llvm.smax.i16(i16 %i.lz, i16 0)
  %5 = insertelement <4 x i16> poison, i16 %i.lz, i64 0
  %6 = shufflevector <4 x i16> %5, <4 x i16> poison, <4 x i32> zeroinitializer
  %7 = icmp sgt <4 x i16> %6, <i16 511, i16 1023, i16 2047, i16 4095>
  %i.ma = icmp sgt i16 %i.lz, 8191
  %i.mb = zext i1 %i.ma to i16
  %i.mc = icmp sgt i16 %i.lz, 16383
  %i.md = zext i1 %i.mc to i16
  %8 = bitcast <4 x i1> %7 to i4
  %9 = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %8)
  %i.me = zext nneg i4 %9 to i16
  %spec.select.4.i = add nuw nsw i16 %i.me, %i.mb
  %spec.select.5.i = add nuw nsw i16 %spec.select.4.i, %i.md ; 2 uses
  %i.mf = zext nneg i16 %.1.12.i to i32
  %i.mg = add nuw nsw i16 %spec.select.5.i, 5
  %i.mh = zext nneg i16 %i.mg to i32
  %i.mi = lshr i32 %i.mf, %i.mh
  %i.mj = trunc nuw nsw i32 %i.mi to i16
  %i.mk = shl nuw nsw i16 %spec.select.5.i, 3
  %i.ml = tail call signext i16 @gsm_add(i16 noundef signext %i.mj, i16 noundef signext %i.mk) #5 ; 4 uses
  %i.mm = icmp sgt i16 %i.ml, 15
  %i.mn = lshr i16 %i.ml, 3
  %i.mo = add nsw i16 %i.mn, -1
  %.012.i.i = select i1 %i.mm, i16 %i.mo, i16 0   ; 3 uses
  %i.mp = shl i16 %.012.i.i, 3
  %i.mq = sub i16 %i.ml, %i.mp                    ; 4 uses
  %i.mr = icmp eq i16 %i.mq, 0
  br i1 %i.mr, label %APCM_quantization.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %Weighting_filter.exit
  %i.ms = icmp slt i16 %i.mq, 8
  br i1 %i.ms, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.018.i.i = phi i16 [ %i.mu, %.lr.ph.i.i ], [ %i.mq, %.preheader.i.i ]
  %.11317.i.i = phi i16 [ %i.mv, %.lr.ph.i.i ], [ %.012.i.i, %.preheader.i.i ]
  %i.mt = shl i16 %.018.i.i, 1
  %i.mu = or disjoint i16 %i.mt, 1                ; 3 uses
  %i.mv = add i16 %.11317.i.i, -1                 ; 2 uses
  %i.mw = icmp slt i16 %i.mu, 8
  br i1 %i.mw, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.113.lcssa.i.i = phi i16 [ %.012.i.i, %.preheader.i.i ], [ %i.mv, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i16 [ %i.mq, %.preheader.i.i ], [ %i.mu, %.lr.ph.i.i ]
  %i.mx = add nsw i16 %.0.lcssa.i.i, -8
  br label %APCM_quantization.exit

APCM_quantization.exit:                           ; preds = %Weighting_filter.exit, %._crit_edge.i.i
  %.2.i.i = phi i16 [ %.113.lcssa.i.i, %._crit_edge.i.i ], [ -4, %Weighting_filter.exit ] ; 2 uses
  %.1.i.i = phi i16 [ %i.mx, %._crit_edge.i.i ], [ 7, %Weighting_filter.exit ] ; 2 uses
  %i.my = sub i16 6, %.2.i.i
  %i.mz = zext nneg i16 %.1.i.i to i64
  %i.na = getelementptr inbounds nuw [2 x i8], ptr @gsm_NRFAC, i64 %i.mz
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !11
  %i.nc = zext nneg i16 %i.my to i32              ; 13 uses
  %i.nd = sext i16 %i.nb to i64                   ; 13 uses
  %i.ne = zext i16 %i.ka to i32
  %i.nf = zext i16 %i.kc to i32
  %i.ng = zext i16 %i.ke to i32
  %i.nh = zext i16 %i.kg to i32
  %i.ni = zext i16 %i.ki to i32
  %i.nj = zext i16 %i.kk to i32
  %i.nk = zext i16 %i.km to i32
  %i.nl = zext i16 %i.ko to i32
  %i.nm = shl i32 %i.nl, %i.nc
  %i.nn = shl i32 %i.nk, %i.nc
  %i.no = shl i32 %i.nj, %i.nc
  %i.np = shl i32 %i.ni, %i.nc
  %i.nq = shl i32 %i.nh, %i.nc
  %i.nr = shl i32 %i.ng, %i.nc
  %i.ns = shl i32 %i.nf, %i.nc
  %i.nt = shl i32 %i.ne, %i.nc
  %i.nu = zext i32 %i.nm to i64
  %i.nv = zext i32 %i.nn to i64
  %i.nw = zext i32 %i.no to i64
  %i.nx = zext i32 %i.np to i64
  %i.ny = zext i32 %i.nq to i64
  %i.nz = zext i32 %i.nr to i64
  %i.oa = zext i32 %i.ns to i64
  %i.ob = zext i32 %i.nt to i64
  %sext.7.i = shl i64 %i.nu, 48
  %sext.6.i = shl i64 %i.nv, 48
  %sext.5.i = shl i64 %i.nw, 48
  %sext.4.i = shl i64 %i.nx, 48
  %sext.3.i = shl i64 %i.ny, 48
  %sext.2.i = shl i64 %i.nz, 48
  %sext.1.i = shl i64 %i.oa, 48
  %sext.i = shl i64 %i.ob, 48
  %i.oc = ashr exact i64 %sext.7.i, 48
  %i.od = ashr exact i64 %sext.6.i, 48
  %i.oe = ashr exact i64 %sext.5.i, 48
  %i.of = ashr exact i64 %sext.4.i, 48
  %i.og = ashr exact i64 %sext.3.i, 48
  %i.oh = ashr exact i64 %sext.2.i, 48
  %i.oi = ashr exact i64 %sext.1.i, 48
  %i.oj = ashr exact i64 %sext.i, 48
  %i.ok = mul nsw i64 %i.oc, %i.nd
  %i.ol = mul nsw i64 %i.od, %i.nd
  %i.om = mul nsw i64 %i.oe, %i.nd
  %i.on = mul nsw i64 %i.of, %i.nd
  %i.oo = mul nsw i64 %i.og, %i.nd
  %i.op = mul nsw i64 %i.oh, %i.nd
  %i.oq = mul nsw i64 %i.oi, %i.nd
  %i.or = mul nsw i64 %i.oj, %i.nd
  %i.os = lshr i64 %i.ok, 15
  %i.ot = lshr i64 %i.ol, 15
  %i.ou = lshr i64 %i.om, 15
  %i.ov = lshr i64 %i.on, 15
  %i.ow = lshr i64 %i.oo, 15
  %i.ox = lshr i64 %i.op, 15
  %i.oy = lshr i64 %i.oq, 15
  %i.oz = lshr i64 %i.or, 15
  %i.pa = trunc i64 %i.os to i16
  %i.pb = trunc i64 %i.ot to i16
  %i.pc = trunc i64 %i.ou to i16
  %i.pd = trunc i64 %i.ov to i16
  %i.pe = trunc i64 %i.ow to i16
  %i.pf = trunc i64 %i.ox to i16
  %i.pg = trunc i64 %i.oy to i16
  %i.ph = trunc i64 %i.oz to i16
  %i.pi = insertelement <8 x i16> poison, i16 %i.ph, i64 0
  %i.pj = insertelement <8 x i16> %i.pi, i16 %i.pg, i64 1
  %i.pk = insertelement <8 x i16> %i.pj, i16 %i.pf, i64 2
  %i.pl = insertelement <8 x i16> %i.pk, i16 %i.pe, i64 3
  %i.pm = insertelement <8 x i16> %i.pl, i16 %i.pd, i64 4
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pc, i64 5
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pb, i64 6
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.pa, i64 7
  %i.pq = ashr <8 x i16> %i.pp, splat (i16 12)
  %i.pr = add nsw <8 x i16> %i.pq, splat (i16 4)
  store <8 x i16> %i.pr, ptr %4, align 2, !tbaa !11
  %i.ps = zext i16 %i.kq to i32
  %i.pt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.pu = zext i16 %i.ks to i32
  %i.pv = zext i16 %i.ku to i32
  %i.pw = zext i16 %i.kw to i32
  %i.px = shl i32 %i.pw, %i.nc
  %i.py = shl i32 %i.pv, %i.nc
  %i.pz = shl i32 %i.pu, %i.nc
  %i.qa = shl i32 %i.ps, %i.nc
  %i.qb = zext i32 %i.px to i64
  %i.qc = zext i32 %i.py to i64
  %i.qd = zext i32 %i.pz to i64
  %i.qe = zext i32 %i.qa to i64
  %sext.11.i = shl i64 %i.qb, 48
  %sext.10.i = shl i64 %i.qc, 48
  %sext.9.i = shl i64 %i.qd, 48
  %sext.8.i = shl i64 %i.qe, 48
  %i.qf = ashr exact i64 %sext.11.i, 48
  %i.qg = ashr exact i64 %sext.10.i, 48
  %i.qh = ashr exact i64 %sext.9.i, 48
  %i.qi = ashr exact i64 %sext.8.i, 48
  %i.qj = mul nsw i64 %i.qf, %i.nd
  %i.qk = mul nsw i64 %i.qg, %i.nd
  %i.ql = mul nsw i64 %i.qh, %i.nd
  %i.qm = mul nsw i64 %i.qi, %i.nd
  %i.qn = lshr i64 %i.qj, 15
  %i.qo = lshr i64 %i.qk, 15
  %i.qp = lshr i64 %i.ql, 15
  %i.qq = lshr i64 %i.qm, 15
  %i.qr = trunc i64 %i.qn to i16
  %i.qs = trunc i64 %i.qo to i16
  %i.qt = trunc i64 %i.qp to i16
  %i.qu = trunc i64 %i.qq to i16
  %i.qv = insertelement <4 x i16> poison, i16 %i.qu, i64 0
  %i.qw = insertelement <4 x i16> %i.qv, i16 %i.qt, i64 1
  %i.qx = insertelement <4 x i16> %i.qw, i16 %i.qs, i64 2
  %i.qy = insertelement <4 x i16> %i.qx, i16 %i.qr, i64 3
  %i.qz = ashr <4 x i16> %i.qy, splat (i16 12)
  %i.ra = add nsw <4 x i16> %i.qz, splat (i16 4)
  store <4 x i16> %i.ra, ptr %i.pt, align 2, !tbaa !11
  %i.rb = zext i16 %i.ky to i32
  %i.rc = shl i32 %i.rb, %i.nc
  %i.rd = zext i32 %i.rc to i64
  %sext.12.i = shl i64 %i.rd, 48
  %i.re = ashr exact i64 %sext.12.i, 48
  %i.rf = mul nsw i64 %i.re, %i.nd
  %i.rg = lshr i64 %i.rf, 15
  %i.rh = trunc i64 %i.rg to i16
  %i.ri = ashr i16 %i.rh, 12
  %narrow.12.i = add nsw i16 %i.ri, 4
  %i.rj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 %narrow.12.i, ptr %i.rj, align 2, !tbaa !11
  store i16 %i.ml, ptr %2, align 2, !tbaa !11
  call fastcc void @APCM_inverse_quantization(ptr noundef nonnull %4, i16 noundef signext %.1.i.i, i16 noundef signext %.2.i.i, ptr noundef %i.b)
  %i.rk = load i16, ptr %3, align 2, !tbaa !11    ; 3 uses
  switch i16 %i.rk, label %bb.g [
    i16 3, label %bb.c
    i16 2, label %bb.d
    i16 1, label %bb.e
    i16 0, label %bb.f
  ]

bb.c:                                             ; preds = %APCM_quantization.exit
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 0, ptr %1, align 2, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %APCM_quantization.exit, %bb.c, %bb.f
  %.011.i = phi ptr [ %i.rp, %bb.f ], [ %i.b, %bb.c ], [ %i.b, %APCM_quantization.exit ]
  %.19.i = phi ptr [ %i.rr, %bb.f ], [ %i.rl, %bb.c ], [ %1, %APCM_quantization.exit ] ; 2 uses
  %.0.i = phi i32 [ %.2.i8, %bb.f ], [ 13, %bb.c ], [ 13, %APCM_quantization.exit ]
  %i.rm = getelementptr inbounds nuw i8, ptr %.19.i, i64 2
  store i16 0, ptr %.19.i, align 2, !tbaa !11
  %i.rn = add nsw i32 %.0.i, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %APCM_quantization.exit
  %.112.i = phi ptr [ %.011.i, %bb.d ], [ %i.b, %APCM_quantization.exit ]
  %.210.i = phi ptr [ %i.rm, %bb.d ], [ %1, %APCM_quantization.exit ] ; 2 uses
  %.1.i9 = phi i32 [ %i.rn, %bb.d ], [ 12, %APCM_quantization.exit ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.210.i, i64 2
end_hunk_0
begin_hunk_1_@APCM_inverse_quantization:bb.a
  %i.df = add i16 %i.de, -28672
  %i.dg = sext i16 %i.df to i64
  %i.dh = mul nsw i64 %i.i, %i.dg
  %i.di = add nsw i64 %i.dh, 140737488355328
  %i.dj = lshr i64 %i.di, 48
  %i.dk = trunc nuw i64 %i.dj to i16
  %i.dl = tail call i16 @llvm.sadd.sat.i16(i16 %i.dk, i16 %i.g)
  %i.dm = tail call signext i16 @gsm_asr(i16 noundef signext %i.dl, i32 noundef %i.j) #5
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i16 %i.dm, ptr %i.db, align 2, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dp = load i16, ptr %i.dc, align 2, !tbaa !11
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
  store i16 %i.dy, ptr %i.dn, align 2, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.eb = load i16, ptr %i.do, align 2, !tbaa !11
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
  store i16 %i.ek, ptr %i.dz, align 2, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load i16, ptr %i.ea, align 2, !tbaa !11
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
  store i16 %i.ew, ptr %i.el, align 2, !tbaa !11
  %i.ey = load i16, ptr %i.em, align 2, !tbaa !11
  %i.ez = shl i16 %i.ey, 13
  %i.fa = add i16 %i.ez, -28672
  %i.fb = sext i16 %i.fa to i64
  %i.fc = mul nsw i64 %i.i, %i.fb
  %i.fd = add nsw i64 %i.fc, 140737488355328
  %i.fe = lshr i64 %i.fd, 48
  %i.ff = trunc nuw i64 %i.fe to i16
  %i.fg = tail call i16 @llvm.sadd.sat.i16(i16 %i.ff, i16 %i.g)
  %i.fh = tail call signext i16 @gsm_asr(i16 noundef signext %i.fg, i32 noundef %i.j) #5
  store i16 %i.fh, ptr %i.ex, align 2, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_RPE_Decoding(ptr nofree noundef readnone captures(none) %0, i16 noundef signext %1, i16 noundef signext %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
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
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

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
  store i16 0, ptr %4, align 2, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %APCM_quantization_xmaxc_to_exp_mant.exit, %bb.b, %bb.e
  %.011.i = phi ptr [ %i.r, %bb.e ], [ %i.a, %bb.b ], [ %i.a, %APCM_quantization_xmaxc_to_exp_mant.exit ]
  %.19.i = phi ptr [ %i.t, %bb.e ], [ %i.n, %bb.b ], [ %4, %APCM_quantization_xmaxc_to_exp_mant.exit ] ; 2 uses
  %.0.i = phi i32 [ %.2.i3, %bb.e ], [ 13, %bb.b ], [ 13, %APCM_quantization_xmaxc_to_exp_mant.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i, i64 2
  store i16 0, ptr %.19.i, align 2, !tbaa !11
  %i.p = add nsw i32 %.0.i, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %APCM_quantization_xmaxc_to_exp_mant.exit
  %.112.i = phi ptr [ %.011.i, %bb.c ], [ %i.a, %APCM_quantization_xmaxc_to_exp_mant.exit ]
  %.210.i = phi ptr [ %i.o, %bb.c ], [ %4, %APCM_quantization_xmaxc_to_exp_mant.exit ] ; 2 uses
  %.1.i4 = phi i32 [ %i.p, %bb.c ], [ 12, %APCM_quantization_xmaxc_to_exp_mant.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %.210.i, i64 2
  store i16 0, ptr %.210.i, align 2, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %APCM_quantization_xmaxc_to_exp_mant.exit
  %.213.i = phi ptr [ %.112.i, %bb.d ], [ %i.a, %APCM_quantization_xmaxc_to_exp_mant.exit ] ; 2 uses
  %.3.i = phi ptr [ %i.q, %bb.d ], [ %4, %APCM_quantization_xmaxc_to_exp_mant.exit ] ; 2 uses
  %.2.i3 = phi i32 [ %.1.i4, %bb.d ], [ 12, %APCM_quantization_xmaxc_to_exp_mant.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.213.i, i64 2
  %i.s = load i16, ptr %.213.i, align 2, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 2 uses
  store i16 %i.s, ptr %.3.i, align 2, !tbaa !11
  %.not.i = icmp eq i32 %.2.i3, 0
  br i1 %.not.i, label %bb.f, label %bb.c, !llvm.loop !1

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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %.4.i, i8 0, i64 %i.z, i1 false), !tbaa !11
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
declare <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.ssub.sat.v4i16(<4 x i16>, <4 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v8i16(<8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
end_hunk_1
