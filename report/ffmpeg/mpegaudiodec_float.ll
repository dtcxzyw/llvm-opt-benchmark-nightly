Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegaudiodec_float?download=true
inline.NumInlined: 125
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 44
begin_hunk_0_@compute_imdct:bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %i.bm, i64 336 ; 3 uses
  %i.en = load float, ptr %i.em, align 16, !tbaa !90
  %i.eo = getelementptr inbounds nuw i8, ptr %.0111137, i64 160 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !90
  %i.eq = tail call nsz float @llvm.fmuladd.f32(float %i.en, float %i.cm, float %i.ep)
  store float %i.eq, ptr %i.el, align 4, !tbaa !90
  %i.er = getelementptr inbounds nuw i8, ptr %i.bm, i64 360 ; 3 uses
  %i.es = load float, ptr %i.er, align 8, !tbaa !90
  %i.et = fmul nsz float %i.es, %i.cl
  %i.eu = getelementptr inbounds nuw i8, ptr %.0111137, i64 256 ; 3 uses
  store float %i.et, ptr %i.eu, align 4, !tbaa !90
  %i.ev = getelementptr inbounds nuw i8, ptr %i.as, i64 1408
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bm, i64 340 ; 3 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !90
  %i.ey = getelementptr inbounds nuw i8, ptr %.0111137, i64 176 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !90
  %i.fa = tail call nsz float @llvm.fmuladd.f32(float %i.ex, float %i.cx, float %i.ez)
  store float %i.fa, ptr %i.ev, align 4, !tbaa !90
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bm, i64 364 ; 3 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !90
  %i.fd = fmul nsz float %i.fc, %i.cy
  %i.fe = getelementptr inbounds nuw i8, ptr %.0111137, i64 272 ; 3 uses
  store float %i.fd, ptr %i.fe, align 4, !tbaa !90
  %i.ff = getelementptr inbounds nuw i8, ptr %i.as, i64 1536
  %i.fg = getelementptr inbounds nuw i8, ptr %.2115136, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !90 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.2115136, i64 16
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !90 ; 2 uses
  %i.fk = fadd nsz float %i.fh, %i.fj             ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.2115136, i64 28
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !90 ; 2 uses
  %i.fn = fadd nsz float %i.fj, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.2115136, i64 40
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !90 ; 2 uses
  %i.fq = fadd nsz float %i.fm, %i.fp             ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.2115136, i64 52
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !90 ; 2 uses
  %i.ft = fadd nsz float %i.fp, %i.fs             ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.2115136, i64 64
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !90
  %i.fw = fadd nsz float %i.fs, %i.fv
  %i.fx = fadd nsz float %i.fq, %i.fw             ; 2 uses
  %i.fy = fadd nsz float %i.fk, %i.fq
  %i.fz = fmul nsz float %i.fn, f0x3F5DB3D7       ; 2 uses
  %i.ga = fmul nsz float %i.fy, f0x3FDDB3D7       ; 2 uses
  %i.gb = fsub nsz float %i.fh, %i.ft             ; 2 uses
  %i.gc = fsub nsz float %i.fk, %i.fx
  %i.gd = fmul nsz float %i.gc, f0x3F3504F3       ; 2 uses
  %i.ge = fadd nsz float %i.gb, %i.gd             ; 2 uses
  %i.gf = fsub nsz float %i.gb, %i.gd             ; 2 uses
  %i.gg = tail call nsz float @llvm.fmuladd.f32(float %i.ft, float 5.000000e-01, float %i.fh) ; 2 uses
  %i.gh = fadd nsz float %i.fz, %i.gg             ; 2 uses
  %i.gi = tail call nsz float @llvm.fmuladd.f32(float %i.fk, float 2.000000e+00, float %i.fx) ; 2 uses
  %i.gj = fadd nsz float %i.ga, %i.gi
  %i.gk = fmul nsz float %i.gj, f0x3E8483EE       ; 2 uses
  %i.gl = fadd nsz float %i.gh, %i.gk             ; 2 uses
  %i.gm = fsub nsz float %i.gh, %i.gk             ; 2 uses
  %i.gn = fsub nsz float %i.gg, %i.fz             ; 2 uses
  %i.go = fsub nsz float %i.gi, %i.ga
  %i.gp = fmul nsz float %i.go, f0x3F7746EA       ; 2 uses
  %i.gq = fsub nsz float %i.gn, %i.gp             ; 2 uses
  %i.gr = fadd nsz float %i.gn, %i.gp             ; 2 uses
  %i.gs = load float, ptr %i.bn, align 16, !tbaa !90
  %i.gt = load float, ptr %i.dg, align 4, !tbaa !90
  %i.gu = tail call nsz float @llvm.fmuladd.f32(float %i.gs, float %i.gq, float %i.gt)
  store float %i.gu, ptr %i.ff, align 4, !tbaa !90
  %i.gv = load float, ptr %i.dd, align 8, !tbaa !90
  %i.gw = fmul nsz float %i.gv, %i.gr
  store float %i.gw, ptr %.0111137, align 4, !tbaa !90
  %i.gx = getelementptr inbounds nuw i8, ptr %i.as, i64 1664
  %i.gy = load float, ptr %i.di, align 4, !tbaa !90
  %i.gz = load float, ptr %i.dq, align 4, !tbaa !90
  %i.ha = tail call nsz float @llvm.fmuladd.f32(float %i.gy, float %i.gf, float %i.gz)
  store float %i.ha, ptr %i.gx, align 4, !tbaa !90
  %i.hb = load float, ptr %i.dn, align 4, !tbaa !90
  %i.hc = fmul nsz float %i.hb, %i.ge
  store float %i.hc, ptr %i.av, align 4, !tbaa !90
  %i.hd = getelementptr inbounds nuw i8, ptr %i.as, i64 1792
  %i.he = load float, ptr %i.ds, align 8, !tbaa !90
  %i.hf = load float, ptr %i.ea, align 4, !tbaa !90
  %i.hg = tail call nsz float @llvm.fmuladd.f32(float %i.he, float %i.gm, float %i.hf)
  store float %i.hg, ptr %i.hd, align 4, !tbaa !90
  %i.hh = load float, ptr %i.dx, align 16, !tbaa !90
  %i.hi = fmul nsz float %i.hh, %i.gl
  store float %i.hi, ptr %i.ay, align 4, !tbaa !90
  %i.hj = getelementptr inbounds nuw i8, ptr %i.as, i64 1920
  %i.hk = load float, ptr %i.ec, align 4, !tbaa !90
  %i.hl = load float, ptr %i.ek, align 4, !tbaa !90
  %i.hm = tail call nsz float @llvm.fmuladd.f32(float %i.hk, float %i.gm, float %i.hl)
  store float %i.hm, ptr %i.hj, align 4, !tbaa !90
  %i.hn = load float, ptr %i.eh, align 4, !tbaa !90
  %i.ho = fmul nsz float %i.hn, %i.gl
  store float %i.ho, ptr %i.bb, align 4, !tbaa !90
  %i.hp = getelementptr inbounds nuw i8, ptr %i.as, i64 2048
  %i.hq = load float, ptr %i.em, align 16, !tbaa !90
  %i.hr = load float, ptr %i.eu, align 4, !tbaa !90
  %i.hs = tail call nsz float @llvm.fmuladd.f32(float %i.hq, float %i.gf, float %i.hr)
  store float %i.hs, ptr %i.hp, align 4, !tbaa !90
  %i.ht = load float, ptr %i.er, align 8, !tbaa !90
  %i.hu = fmul nsz float %i.ht, %i.ge
  store float %i.hu, ptr %i.be, align 4, !tbaa !90
  %i.hv = getelementptr inbounds nuw i8, ptr %i.as, i64 2176
  %i.hw = load float, ptr %i.ew, align 4, !tbaa !90
  %i.hx = load float, ptr %i.fe, align 4, !tbaa !90
  %i.hy = tail call nsz float @llvm.fmuladd.f32(float %i.hw, float %i.gq, float %i.hx)
  store float %i.hy, ptr %i.hv, align 4, !tbaa !90
  %i.hz = load float, ptr %i.fb, align 4, !tbaa !90
  %i.ia = fmul nsz float %i.hz, %i.gr             ; 2 uses
  store float %i.ia, ptr %i.bh, align 4, !tbaa !90
  %i.ib = getelementptr inbounds nuw i8, ptr %.2115136, i64 8
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !90 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.2115136, i64 20
  %i.ie = load float, ptr %i.id, align 4, !tbaa !90 ; 2 uses
  %i.if = fadd nsz float %i.ic, %i.ie             ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.2115136, i64 32
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !90 ; 2 uses
  %i.ii = fadd nsz float %i.ie, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %.2115136, i64 44
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !90 ; 2 uses
  %i.il = fadd nsz float %i.ih, %i.ik             ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.2115136, i64 56
  %i.in = load float, ptr %i.im, align 4, !tbaa !90 ; 2 uses
  %i.io = fadd nsz float %i.ik, %i.in             ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.2115136, i64 68
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !90
  %i.ir = fadd nsz float %i.in, %i.iq
  %i.is = fadd nsz float %i.il, %i.ir             ; 2 uses
  %i.it = fadd nsz float %i.if, %i.il
  %i.iu = fmul nsz float %i.ii, f0x3F5DB3D7       ; 2 uses
  %i.iv = fmul nsz float %i.it, f0x3FDDB3D7       ; 2 uses
  %i.iw = fsub nsz float %i.ic, %i.io             ; 2 uses
  %i.ix = fsub nsz float %i.if, %i.is
  %i.iy = fmul nsz float %i.ix, f0x3F3504F3       ; 2 uses
  %i.iz = fadd nsz float %i.iw, %i.iy             ; 2 uses
  %i.ja = fsub nsz float %i.iw, %i.iy             ; 2 uses
  %i.jb = tail call nsz float @llvm.fmuladd.f32(float %i.io, float 5.000000e-01, float %i.ic) ; 2 uses
  %i.jc = fadd nsz float %i.iu, %i.jb             ; 2 uses
  %i.jd = tail call nsz float @llvm.fmuladd.f32(float %i.if, float 2.000000e+00, float %i.is) ; 2 uses
  %i.je = fadd nsz float %i.iv, %i.jd
  %i.jf = fmul nsz float %i.je, f0x3E8483EE       ; 2 uses
  %i.jg = fadd nsz float %i.jc, %i.jf             ; 2 uses
  %i.jh = fsub nsz float %i.jc, %i.jf             ; 2 uses
  %i.ji = fsub nsz float %i.jb, %i.iu             ; 2 uses
  %i.jj = fsub nsz float %i.jd, %i.iv
  %i.jk = fmul nsz float %i.jj, f0x3F7746EA       ; 2 uses
  %i.jl = fsub nsz float %i.ji, %i.jk             ; 2 uses
  %i.jm = fadd nsz float %i.ji, %i.jk             ; 2 uses
  %i.jn = load float, ptr %i.bn, align 16, !tbaa !90
  %i.jo = load float, ptr %.0111137, align 4, !tbaa !90
  %i.jp = tail call nsz float @llvm.fmuladd.f32(float %i.jn, float %i.jl, float %i.jo)
  store float %i.jp, ptr %.0111137, align 4, !tbaa !90
  %i.jq = load float, ptr %i.dd, align 8, !tbaa !90
  %i.jr = fmul nsz float %i.jq, %i.jm
  store float %i.jr, ptr %i.da, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.dg, align 4, !tbaa !90
  %i.js = load float, ptr %i.di, align 4, !tbaa !90
  %i.jt = load float, ptr %i.av, align 4, !tbaa !90
  %i.ju = tail call nsz float @llvm.fmuladd.f32(float %i.js, float %i.ja, float %i.jt)
  store float %i.ju, ptr %i.av, align 4, !tbaa !90
  %i.jv = load float, ptr %i.dn, align 4, !tbaa !90
  %i.jw = fmul nsz float %i.jv, %i.iz
  store float %i.jw, ptr %i.dk, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.dq, align 4, !tbaa !90
  %i.jx = load float, ptr %i.ds, align 8, !tbaa !90
  %i.jy = load float, ptr %i.ay, align 4, !tbaa !90
  %i.jz = tail call nsz float @llvm.fmuladd.f32(float %i.jx, float %i.jh, float %i.jy)
  store float %i.jz, ptr %i.ay, align 4, !tbaa !90
  %i.ka = load float, ptr %i.dx, align 16, !tbaa !90
  %i.kb = fmul nsz float %i.ka, %i.jg
  store float %i.kb, ptr %i.du, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.ea, align 4, !tbaa !90
  %i.kc = load float, ptr %i.ec, align 4, !tbaa !90
  %i.kd = load float, ptr %i.bb, align 4, !tbaa !90
  %i.ke = tail call nsz float @llvm.fmuladd.f32(float %i.kc, float %i.jh, float %i.kd)
  store float %i.ke, ptr %i.bb, align 4, !tbaa !90
  %i.kf = load float, ptr %i.eh, align 4, !tbaa !90
  %i.kg = fmul nsz float %i.kf, %i.jg
  store float %i.kg, ptr %i.ee, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.ek, align 4, !tbaa !90
  %i.kh = load float, ptr %i.em, align 16, !tbaa !90
  %i.ki = load float, ptr %i.be, align 4, !tbaa !90
  %i.kj = tail call nsz float @llvm.fmuladd.f32(float %i.kh, float %i.ja, float %i.ki)
  store float %i.kj, ptr %i.be, align 4, !tbaa !90
  %i.kk = load float, ptr %i.er, align 8, !tbaa !90
  %i.kl = fmul nsz float %i.kk, %i.iz
  store float %i.kl, ptr %i.eo, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.eu, align 4, !tbaa !90
  %i.km = load float, ptr %i.ew, align 4, !tbaa !90
  %i.kn = tail call nsz float @llvm.fmuladd.f32(float %i.km, float %i.jl, float %i.ia)
  store float %i.kn, ptr %i.bh, align 4, !tbaa !90
  %i.ko = load float, ptr %i.fb, align 4, !tbaa !90
  %i.kp = fmul nsz float %i.ko, %i.jm
  store float %i.kp, ptr %i.ey, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.fe, align 4, !tbaa !90
  %i.kq = getelementptr inbounds nuw i8, ptr %.2115136, i64 72
  %i.kr = and i64 %indvars.iv, 3
  %.not125 = icmp eq i64 %i.kr, 3
  %i.ks = select i1 %.not125, i64 69, i64 1
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0111137, i64 %i.ks ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %4 = icmp slt i64 %indvars.iv.next, %wide.trip.count
  br i1 %4, label %bb.e, label %.preheader, !llvm.loop !288

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %.lr.ph143
  %indvars.iv156 = phi i64 [ %i.ar, %.lr.ph143.preheader ], [ %indvars.iv.next157, %.lr.ph143 ] ; 4 uses
  %.1112141 = phi ptr [ %.0111.lcssa, %.lr.ph143.preheader ], [ %i.mx, %.lr.ph143 ] ; 20 uses
  %i.ku = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv156 ; 18 uses
  %i.kv = load float, ptr %.1112141, align 4, !tbaa !90
  store float %i.kv, ptr %i.ku, align 4, !tbaa !90
  store float 0.000000e+00, ptr %.1112141, align 4, !tbaa !90
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 128
  %i.kx = getelementptr inbounds nuw i8, ptr %.1112141, i64 16 ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !90
  store float %i.ky, ptr %i.kw, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.kx, align 4, !tbaa !90
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 256
  %i.la = getelementptr inbounds nuw i8, ptr %.1112141, i64 32 ; 2 uses
  %i.lb = load float, ptr %i.la, align 4, !tbaa !90
  store float %i.lb, ptr %i.kz, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.la, align 4, !tbaa !90
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ku, i64 384
  %i.ld = getelementptr inbounds nuw i8, ptr %.1112141, i64 48 ; 2 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !90
  store float %i.le, ptr %i.lc, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.ld, align 4, !tbaa !90
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ku, i64 512
  %i.lg = getelementptr inbounds nuw i8, ptr %.1112141, i64 64 ; 2 uses
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !90
  store float %i.lh, ptr %i.lf, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.lg, align 4, !tbaa !90
  %i.li = getelementptr inbounds nuw i8, ptr %i.ku, i64 640
  %i.lj = getelementptr inbounds nuw i8, ptr %.1112141, i64 80 ; 2 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !90
  store float %i.lk, ptr %i.li, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.lj, align 4, !tbaa !90
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ku, i64 768
  %i.lm = getelementptr inbounds nuw i8, ptr %.1112141, i64 96 ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !90
  store float %i.ln, ptr %i.ll, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.lm, align 4, !tbaa !90
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ku, i64 896
  %i.lp = getelementptr inbounds nuw i8, ptr %.1112141, i64 112 ; 2 uses
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !90
  store float %i.lq, ptr %i.lo, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.lp, align 4, !tbaa !90
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ku, i64 1024
  %i.ls = getelementptr inbounds nuw i8, ptr %.1112141, i64 128 ; 2 uses
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !90
  store float %i.lt, ptr %i.lr, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.ls, align 4, !tbaa !90
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ku, i64 1152
  %i.lv = getelementptr inbounds nuw i8, ptr %.1112141, i64 144 ; 2 uses
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !90
  store float %i.lw, ptr %i.lu, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.lv, align 4, !tbaa !90
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ku, i64 1280
  %i.ly = getelementptr inbounds nuw i8, ptr %.1112141, i64 160 ; 2 uses
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !90
  store float %i.lz, ptr %i.lx, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.ly, align 4, !tbaa !90
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ku, i64 1408
  %i.mb = getelementptr inbounds nuw i8, ptr %.1112141, i64 176 ; 2 uses
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !90
  store float %i.mc, ptr %i.ma, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.mb, align 4, !tbaa !90
  %i.md = getelementptr inbounds nuw i8, ptr %i.ku, i64 1536
  %i.me = getelementptr inbounds nuw i8, ptr %.1112141, i64 192 ; 2 uses
  %i.mf = load float, ptr %i.me, align 4, !tbaa !90
  store float %i.mf, ptr %i.md, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.me, align 4, !tbaa !90
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ku, i64 1664
  %i.mh = getelementptr inbounds nuw i8, ptr %.1112141, i64 208 ; 2 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !90
  store float %i.mi, ptr %i.mg, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.mh, align 4, !tbaa !90
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ku, i64 1792
  %i.mk = getelementptr inbounds nuw i8, ptr %.1112141, i64 224 ; 2 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !90
  store float %i.ml, ptr %i.mj, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.mk, align 4, !tbaa !90
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ku, i64 1920
  %i.mn = getelementptr inbounds nuw i8, ptr %.1112141, i64 240 ; 2 uses
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !90
  store float %i.mo, ptr %i.mm, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.mn, align 4, !tbaa !90
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ku, i64 2048
  %i.mq = getelementptr inbounds nuw i8, ptr %.1112141, i64 256 ; 2 uses
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !90
  store float %i.mr, ptr %i.mp, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.mq, align 4, !tbaa !90
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ku, i64 2176
  %i.mt = getelementptr inbounds nuw i8, ptr %.1112141, i64 272 ; 2 uses
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !90
  store float %i.mu, ptr %i.ms, align 4, !tbaa !90
  store float 0.000000e+00, ptr %i.mt, align 4, !tbaa !90
  %i.mv = and i64 %indvars.iv156, 3
  %.not124 = icmp eq i64 %i.mv, 3
  %i.mw = select i1 %.not124, i64 69, i64 1
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %.1112141, i64 %i.mw
  %indvars.iv.next157 = add nsw i64 %indvars.iv156, 1
  %5 = icmp slt i64 %indvars.iv156, 31
  br i1 %5, label %.lr.ph143, label %._crit_edge, !llvm.loop !289

._crit_edge:                                      ; preds = %.lr.ph143, %.preheader
  ret void
}

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare i32 @avpriv_mpeg4audio_get_config2(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @av_channel_layout_from_mask(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @av_freep(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !6, i64 32}
!30 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!31 = !{!30, !16, i64 24}
!32 = !{!7, !7, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!36, !6, i64 0}
!36 = !{!"MPADecodeContext", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !7, i64 40, !6, i64 1088, !6, i64 1092, !6, i64 1096, !37, i64 1104, !37, i64 1128, !7, i64 1152, !7, i64 9344, !7, i64 9360, !7, i64 18576, !7, i64 23184, !6, i64 32912, !6, i64 32916, !6, i64 32920, !38, i64 32928, !39, i64 32936, !12, i64 32984, !40, i64 32992, !6, i64 33000}
!37 = !{!"GetBitContext", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!38 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!39 = !{!"MPADSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!40 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!41 = !{!36, !6, i64 24}
!42 = !{!6, !6, i64 0}
!43 = !{!12, !12, i64 0}
!44 = !{!10, !15, i64 56}
!45 = !{!36, !6, i64 20}
!46 = !{!36, !40, i64 32992}
!47 = !{!10, !6, i64 376}
!48 = !{!49, !6, i64 112}
!49 = !{!"AVFrame", !7, i64 0, !7, i64 64, !50, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !51, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !52, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!50 = !{!"p2 omnipotent char", !28, i64 0}
!51 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!52 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!53 = !{!10, !6, i64 24}
!54 = !{!36, !6, i64 12}
!55 = !{!10, !6, i64 344}
!56 = !{!36, !6, i64 1088}
!57 = !{!36, !6, i64 32916}
!58 = !{!10, !6, i64 80}
!59 = !{!10, !16, i64 72}
!60 = !{!61, !6, i64 12}
!61 = !{!"MPEG4AudioConfig", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48}
!62 = !{!63, !6, i64 0}
!63 = !{!"MP3On4DecodeContext", !6, i64 0, !6, i64 4, !16, i64 8, !7, i64 16}
!64 = !{!63, !16, i64 8}
!65 = !{!66, !66, i64 0}
!66 = !{!"short", !7, i64 0}
!67 = !{!61, !6, i64 8}
!68 = !{!63, !6, i64 4}
!69 = !{!70, !70, i64 0}
!70 = !{!"p1 _ZTS16MPADecodeContext", !12, i64 0}
!71 = !{!36, !6, i64 32912}
!72 = !{!36, !38, i64 32928}
!73 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43}
!74 = !{!36, !12, i64 32984}
!75 = distinct !{!75, !34}
!76 = !{!49, !50, i64 96}
!77 = !{!10, !6, i64 356}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 float", !12, i64 0}
!80 = distinct !{!80, !34}
!81 = distinct !{!81, !34}
!82 = !{!10, !6, i64 64}
!83 = !{!84, !12, i64 64}
!84 = !{!"AVFloatDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88}
!85 = !{!10, !6, i64 392}
!86 = !{!10, !6, i64 348}
!87 = !{!10, !6, i64 528}
!88 = !{!36, !6, i64 32920}
!89 = distinct !{!89, !34}
!90 = !{!18, !18, i64 0}
!91 = distinct !{!91, !34}
!92 = distinct !{!92, !34}
!93 = !{!94, !94, i64 0}
!94 = !{!"double", !7, i64 0}
!95 = distinct !{!95, !34}
!96 = distinct !{!96, !34, !97, !98}
!97 = !{!"llvm.loop.isvectorized", i32 1}
!98 = !{!"llvm.loop.unroll.runtime.disable"}
!99 = distinct !{!99, !34}
!100 = !{!37, !16, i64 0}
!101 = !{!37, !6, i64 12}
!102 = !{!37, !6, i64 16}
!103 = !{!37, !6, i64 8}
!104 = !{!36, !6, i64 4}
!105 = !{!36, !6, i64 33000}
!106 = !{!36, !6, i64 8}
!107 = !{!36, !6, i64 36}
!108 = !{!36, !6, i64 28}
!109 = !{!36, !6, i64 32}
!110 = distinct !{!110, !34}
!111 = distinct !{!111, !34}
!112 = distinct !{!112, !34}
!113 = distinct !{!113, !34}
!114 = distinct !{!114, !34}
!115 = distinct !{!115, !34}
!116 = distinct !{!116, !34}
!117 = distinct !{!117, !34}
!118 = distinct !{!118, !34}
!119 = distinct !{!119, !34}
!120 = !{!16, !16, i64 0}
!121 = distinct !{!121, !34}
!122 = distinct !{!122, !34}
!123 = distinct !{!123, !124}
!124 = !{!"llvm.loop.unroll.disable"}
!125 = distinct !{!125, !34}
!126 = distinct !{!126, !34}
!127 = distinct !{!127, !34}
!128 = distinct !{!128, !34}
!129 = distinct !{!129, !34}
!130 = !{!19, !19, i64 0}
!131 = distinct !{!131, !34}
!132 = distinct !{!132, !34}
!133 = distinct !{!133, !124}
!134 = distinct !{!134, !34}
!135 = distinct !{!135, !34}
!136 = distinct !{!136, !34}
!137 = distinct !{!137, !34}
end_hunk_0
