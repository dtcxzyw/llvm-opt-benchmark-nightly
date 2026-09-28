Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/colorcvt?download=true
inline.NumInlined: 28
inline.NumDeleted: 13
begin_hunk_0_@colorcvt_oklch_to_linear_srgb:bb.a
  %i.cp = fsub <4 x double> %i.cn, %i.co          ; 2 uses
  %i.cq = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = fmul <2 x double> %i.cq, <double f0x3FFB5263C0000000, double f0x3FCD906C40000000>
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = shufflevector <4 x double> %i.cs, <4 x double> <double poison, double poison, double -0.000000e+00, double poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.cu = fadd <4 x double> %i.cp, %i.ct          ; 4 uses
  %i.cv = extractelement <4 x double> %i.cu, i64 1 ; 2 uses
  %i.cw = fcmp oge double %i.cv, f0xB690000000000000
  %i.cx = fcmp ole <4 x double> %i.cu, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.cy = fcmp oge <4 x double> %i.cu, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.cz = shufflevector <4 x i1> %i.cx, <4 x i1> %i.cy, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.da = extractelement <4 x double> %i.cp, i64 2 ; 2 uses
  %i.db = fcmp oge double %i.da, f0xB690000000000000
  %i.dc = bitcast <4 x i1> %i.cz to i4
  %i.dd = icmp eq i4 %i.dc, -1
  %op.rdx21 = and i1 %i.dd, %i.cw
  %op.rdx22 = and i1 %op.rdx21, %i.db
  br i1 %op.rdx22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.de = extractelement <4 x double> %i.cu, i64 0
  %i.df = fptrunc double %i.de to float
  %i.dg = fptrunc double %i.da to float
  %i.dh = fptrunc double %i.cv to float
  %i.di = fpext float %i.dh to double
  %i.dj = tail call double @dmath_fmin(double noundef 1.000000e+00, double noundef %i.di) #3
  %i.dk = tail call double @dmath_fmax(double noundef 0.000000e+00, double noundef %i.dj) #3
  %i.dl = fpext float %i.dg to double
  %i.dm = tail call double @dmath_fmin(double noundef 1.000000e+00, double noundef %i.dl) #3
  %i.dn = tail call double @dmath_fmax(double noundef 0.000000e+00, double noundef %i.dm) #3
  %i.do = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dn, i64 1
  %i.dq = fpext float %i.df to double
  %i.dr = tail call double @dmath_fmin(double noundef 1.000000e+00, double noundef %i.dq) #3
  %i.ds = tail call double @dmath_fmax(double noundef 0.000000e+00, double noundef %i.dr) #3
  br label %oklch_to_linear_srgb.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.074.4.vec.insert.i = insertelement <2 x float> %.fca.0.extract7, float 0.000000e+00, i64 1 ; 2 uses
  %i.dt = tail call double @dmath_pow(double noundef 2.000000e+00, double noundef 1.300000e+01) #3
  %i.du = fdiv double f0x3FD99999A0000000, %i.dt
  %i.dv = fptrunc double %i.du to float           ; 2 uses
  %i.dw = fcmp ogt float %.sroa.03.4.vec.extract.i.i, %i.dv
  br i1 %i.dw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.dx = phi float [ %i.ge, %.lr.ph.i ], [ %.sroa.03.4.vec.extract.i.i, %bb.g ]
  %.sroa.074.0188.i = phi <2 x float> [ %.sroa.074.4.vec.insert81.i, %.lr.ph.i ], [ %.sroa.074.4.vec.insert.i, %bb.g ] ; 2 uses
  %.0187.i = phi float [ %..0.i, %.lr.ph.i ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.0125186.i = phi float [ %.0125..i, %.lr.ph.i ], [ %.sroa.03.4.vec.extract.i.i, %bb.g ]
  %.0127185.i = phi float [ %..0127.i, %.lr.ph.i ], [ 0.000000e+00, %bb.g ]
  %i.dy = fmul float %i.dx, 5.000000e-01
  %i.dz = fadd float %i.dy, %.0187.i              ; 5 uses
  %.sroa.074.4.vec.insert81.i = insertelement <2 x float> %.sroa.074.0188.i, float %i.dz, i64 1 ; 2 uses
  %i.ea = fpext float %i.dz to double
  %i.eb = tail call double @dmath_cos(double noundef %i.g) #3
  %i.ec = tail call double @dmath_sin(double noundef %i.g) #3
  %.sroa.020.0.vec.extract.i150.i = extractelement <2 x float> %.sroa.074.0188.i, i64 0
  %i.ed = fpext float %.sroa.020.0.vec.extract.i150.i to double ; 2 uses
  %i.ee = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.ec, i64 1
  %i.eg = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x double> %i.ef, %i.eh
  %i.ej = fptrunc <2 x double> %i.ei to <2 x float>
  %i.ek = fpext <2 x float> %i.ej to <2 x double> ; 3 uses
  %i.el = fmul <2 x double> %i.ek, <double f0x3FD95D9920068C8A, double f0x3FCB9F751FFA8CC8> ; 2 uses
  %i.em = extractelement <2 x double> %i.el, i64 0
  %i.en = fadd double %i.em, %i.ed
  %i.eo = extractelement <2 x double> %i.el, i64 1
  %i.ep = fadd double %i.eo, %i.en                ; 3 uses
  %i.eq = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x double> %i.eq, <double f0x3FBB06117FEEC881, double f0x3FB6E86F5FDF38B5>
  %i.es = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = fsub <2 x double> %i.et, %i.er
  %i.ev = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ew = fmul <2 x double> %i.ev, <double f0x3FB058BF3FE39E34, double f0x3FF4A9ECBFFEAA8D>
  %i.ex = fsub <2 x double> %i.eu, %i.ew          ; 3 uses
  %i.ey = fmul double %i.ep, %i.ep
  %i.ez = fmul double %i.ep, %i.ey                ; 3 uses
  %i.fa = fmul <2 x double> %i.ex, %i.ex
  %i.fb = fmul <2 x double> %i.ex, %i.fa          ; 3 uses
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.fd = fmul double %i.ez, f0x40104E9560000000
  %i.fe = fmul double %i.ez, f0x3FF44B85A0000000
  %i.ff = extractelement <2 x double> %i.fb, i64 0
  %i.fg = fmul double %i.ff, f0x4004E0C880000000
  %i.fh = fsub double %i.fg, %i.fe
  %i.fi = fmul double %i.ez, f0xBF712FEA60000000
  %i.fj = fmul <4 x double> %i.fc, <double f0x400A763180000000, double f0x3FD5D82D40000000, double f0x3FE68267C0000000, double f0x400A763180000000>
  %i.fk = insertelement <4 x double> poison, double %i.fd, i64 0
  %i.fl = insertelement <4 x double> %i.fk, double %i.fh, i64 1
  %i.fm = insertelement <4 x double> %i.fl, double %i.fi, i64 2
  %i.fn = shufflevector <4 x double> %i.fm, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fo = fsub <4 x double> %i.fn, %i.fj
  %.fr28 = freeze <4 x double> %i.fo              ; 2 uses
  %i.fp = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = fmul <2 x double> %i.fp, <double f0x3FCD906C40000000, double f0x3FFB5263C0000000>
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.fs = shufflevector <4 x double> %i.fr, <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, <4 x i32> <i32 0, i32 5, i32 2, i32 0>
  %i.ft = fadd <4 x double> %.fr28, %i.fs         ; 3 uses
  %i.fu = fcmp ole <4 x double> %i.ft, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.fv = fcmp oge <4 x double> %i.ft, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.fw = shufflevector <4 x i1> %i.fu, <4 x i1> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fx = extractelement <4 x double> %.fr28, i64 1
  %i.fy = fcmp oge double %i.fx, f0xB690000000000000
  %i.fz = extractelement <4 x double> %i.ft, i64 2
  %i.ga = fcmp oge double %i.fz, f0xB690000000000000
  %i.gb = freeze <4 x i1> %i.fw
  %i.gc = bitcast <4 x i1> %i.gb to i4
  %i.gd = icmp eq i4 %i.gc, -1
  %op.rdx19 = and i1 %i.gd, %i.fy
  %op.rdx20 = select i1 %op.rdx19, i1 %i.ga, i1 false ; 3 uses
  %..0127.i = select i1 %op.rdx20, float %i.dz, float %.0127185.i ; 2 uses
  %.0125..i = select i1 %op.rdx20, float %.0125186.i, float %i.dz ; 2 uses
  %..0.i = select i1 %op.rdx20, float %i.dz, float %.0187.i ; 2 uses
  %i.ge = fsub float %.0125..i, %..0.i            ; 2 uses
  %i.gf = fcmp ogt float %i.ge, %i.dv
  br i1 %i.gf, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !8

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.gg = fpext float %..0127.i to double
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.g
  %.0127.lcssa.i = phi double [ 0.000000e+00, %bb.g ], [ %i.gg, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.074.0.lcssa.i = phi <2 x float> [ %.sroa.074.4.vec.insert.i, %bb.g ], [ %.sroa.074.4.vec.insert81.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.03.4.vec.extract.i160.i = extractelement <2 x float> %.sroa.074.0.lcssa.i, i64 1
  %i.gh = fpext float %.sroa.03.4.vec.extract.i160.i to double
  %i.gi = tail call double @dmath_cos(double noundef %i.g) #3
  %i.gj = tail call double @dmath_sin(double noundef %i.g) #3
  %.sroa.020.0.vec.extract.i164.i = extractelement <2 x float> %.sroa.074.0.lcssa.i, i64 0
  %i.gk = fpext float %.sroa.020.0.vec.extract.i164.i to double ; 5 uses
  %i.gl = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %i.gj, i64 1
  %i.gn = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fmul <2 x double> %i.gm, %i.go
  %i.gq = fptrunc <2 x double> %i.gp to <2 x float>
  %i.gr = fpext <2 x float> %i.gq to <2 x double> ; 3 uses
  %i.gs = fmul <2 x double> %i.gr, <double f0x3FD95D9920068C8A, double f0x3FCB9F751FFA8CC8> ; 2 uses
  %i.gt = extractelement <2 x double> %i.gs, i64 0
  %i.gu = fadd double %i.gt, %i.gk
  %i.gv = extractelement <2 x double> %i.gs, i64 1
  %i.gw = fadd double %i.gv, %i.gu                ; 3 uses
  %i.gx = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x double> %i.gx, <double f0x3FBB06117FEEC881, double f0x3FB6E86F5FDF38B5>
  %i.gz = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = fsub <2 x double> %i.ha, %i.gy
  %i.hc = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hd = fmul <2 x double> %i.hc, <double f0x3FB058BF3FE39E34, double f0x3FF4A9ECBFFEAA8D>
  %i.he = fsub <2 x double> %i.hb, %i.hd          ; 3 uses
  %i.hf = fmul double %i.gw, %i.gw
  %i.hg = fmul double %i.gw, %i.hf                ; 2 uses
  %i.hh = fmul <2 x double> %i.he, %i.he
  %i.hi = fmul <2 x double> %i.he, %i.hh          ; 3 uses
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hk = fmul double %i.hg, f0x3FF44B85A0000000
  %i.hl = extractelement <2 x double> %i.hi, i64 0
  %i.hm = fmul double %i.hl, f0x4004E0C880000000
  %i.hn = fsub double %i.hm, %i.hk
  %i.ho = insertelement <4 x double> poison, double %i.hg, i64 0
  %i.hp = insertelement <4 x double> %i.ho, double %i.hn, i64 1
  %i.hq = shufflevector <4 x double> %i.hp, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hr = fmul <4 x double> %i.hq, <double f0x40104E9560000000, double 1.000000e+00, double f0xBF712FEA60000000, double f0x40104E9560000000>
  %i.hs = fmul <4 x double> %i.hj, <double f0x400A763180000000, double f0x3FD5D82D40000000, double f0x3FE68267C0000000, double f0x400A763180000000>
  %i.ht = fsub <4 x double> %i.hr, %i.hs
  %.fr31 = freeze <4 x double> %i.ht              ; 3 uses
  %i.hu = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hv = fmul <2 x double> %i.hu, <double f0x3FCD906C40000000, double f0x3FFB5263C0000000>
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.hx = shufflevector <4 x double> %i.hw, <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, <4 x i32> <i32 0, i32 5, i32 2, i32 0>
  %i.hy = fadd <4 x double> %.fr31, %i.hx         ; 4 uses
  %i.hz = extractelement <4 x double> %.fr31, i64 1
  %i.ia = shufflevector <4 x double> %i.hy, <4 x double> %.fr31, <2 x i32> <i32 0, i32 5>
  %i.ib = fcmp ole <4 x double> %i.hy, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.ic = fcmp oge <4 x double> %i.hy, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.id = shufflevector <4 x i1> %i.ib, <4 x i1> %i.ic, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ie = fcmp oge double %i.hz, f0xB690000000000000
  %i.if = extractelement <4 x double> %i.hy, i64 2 ; 2 uses
  %i.ig = fcmp oge double %i.if, f0xB690000000000000
  %i.ih = freeze <4 x i1> %i.id
  %i.ii = bitcast <4 x i1> %i.ih to i4
  %i.ij = icmp eq i4 %i.ii, -1
  %op.rdx = and i1 %i.ij, %i.ie
  %op.rdx18 = select i1 %op.rdx, i1 %i.ig, i1 false
  br i1 %op.rdx18, label %oklch_to_linear_srgb.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.ik = tail call double @dmath_cos(double noundef %i.g) #3
  %i.il = fmul double %.0127.lcssa.i, %i.ik
  %i.im = fptrunc double %i.il to float
  %i.in = tail call double @dmath_sin(double noundef %i.g) #3
  %i.io = fmul double %.0127.lcssa.i, %i.in
  %i.ip = fptrunc double %i.io to float
  %i.iq = fpext float %i.im to double             ; 3 uses
  %i.ir = fmul double %i.iq, f0x3FD95D9920068C8A
  %i.is = fadd double %i.ir, %i.gk
  %i.it = fmul double %i.iq, f0x3FBB06117FEEC881
  %i.iu = fsub double %i.gk, %i.it
  %i.iv = fmul double %i.iq, f0x3FB6E86F5FDF38B5
  %i.iw = fsub double %i.gk, %i.iv
  %2 = fpext float %i.ip to double                ; 3 uses
  %i.ix = fmul double %2, f0x3FCB9F751FFA8CC8
  %3 = fadd double %i.ix, %i.is                   ; 3 uses
  %i.iy = fmul double %2, f0x3FB058BF3FE39E34
  %4 = fsub double %i.iu, %i.iy                   ; 3 uses
  %i.iz = fmul double %2, f0x3FF4A9ECBFFEAA8D
  %i.ja = fsub double %i.iw, %i.iz                ; 3 uses
  %i.jb = fmul double %3, %3
  %i.jc = fmul double %4, %4
  %i.jd = insertelement <2 x double> poison, double %3, i64 0
  %i.je = insertelement <2 x double> %i.jd, double %i.jc, i64 1
  %i.jf = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jg = insertelement <2 x double> %i.jf, double %4, i64 1
  %i.jh = fmul <2 x double> %i.je, %i.jg          ; 4 uses
  %5 = fmul double %i.ja, %i.ja
  %6 = fmul double %i.ja, %5                      ; 2 uses
  %i.ji = fmul <2 x double> %i.jh, <double f0x3FF44B85A0000000, double f0x400A763180000000>
  %i.jj = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jk = fmul <2 x double> %i.jh, <double f0x40104E9560000000, double f0x4004E0C880000000>
  %i.jl = fsub <2 x double> %i.jk, %i.jj          ; 2 uses
  %i.jm = insertelement <2 x double> poison, double %6, i64 0
  %i.jn = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jo = fmul <2 x double> %i.jn, <double f0x3FCD906C40000000, double f0x3FD5D82D40000000> ; 2 uses
  %i.jp = fadd <2 x double> %i.jl, %i.jo
  %i.jq = fsub <2 x double> %i.jl, %i.jo
  %i.jr = shufflevector <2 x double> %i.jp, <2 x double> %i.jq, <2 x i32> <i32 0, i32 3>
  %i.js = extractelement <2 x double> %i.jh, i64 0
  %i.jt = fmul double %i.js, f0xBF712FEA60000000
  %i.ju = extractelement <2 x double> %i.jh, i64 1
  %i.jv = fmul double %i.ju, f0x3FE68267C0000000
  %i.jw = fsub double %i.jt, %i.jv
  %i.jx = fmul double %6, f0x3FFB5263C0000000
  %i.jy = fadd double %i.jx, %i.jw
  br label %oklch_to_linear_srgb.exit

oklch_to_linear_srgb.exit:                        ; preds = %bb.d, %bb.f, %._crit_edge.i, %bb.h
  %.sroa.0124.1.pn.i.in = phi <2 x double> [ %i.az, %bb.d ], [ %i.dp, %bb.f ], [ %i.jr, %bb.h ], [ %i.ia, %._crit_edge.i ]
  %.sroa.5.1.pn.in.i = phi double [ %i.be, %bb.d ], [ %i.ds, %bb.f ], [ %i.jy, %bb.h ], [ %i.if, %._crit_edge.i ]
  %.sroa.0124.1.pn.i = fptrunc <2 x double> %.sroa.0124.1.pn.i.in to <2 x float>
  %.sroa.5.1.pn.i = fptrunc double %.sroa.5.1.pn.in.i to float
  tail call void @py_newvec3(ptr noundef %i.d, <2 x float> %.sroa.0124.1.pn.i, float %.sroa.5.1.pn.i) #3
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %oklch_to_linear_srgb.exit, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %oklch_to_linear_srgb.exit ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @colorcvt_linear_srgb_to_oklch(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %0) #3
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 73) #3
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call { <2 x float>, float } @py_tovec3(ptr noundef %1) #3 ; 2 uses
  %.fca.0.extract7 = extractvalue { <2 x float>, float } %i.c, 0
  %.fca.1.extract8 = extractvalue { <2 x float>, float } %i.c, 1
  %i.d = tail call ptr (...) @py_retval() #3
  %i.e = fpext float %.fca.1.extract8 to double   ; 2 uses
  %i.f = fpext <2 x float> %.fca.0.extract7 to <2 x double> ; 3 uses
  %i.g = insertelement <2 x double> poison, double %i.e, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x double> %i.h, <double f0x3FAA572112081026, double f0x3FBB7E5DF0497455>
  %i.j = fmul <2 x double> %i.f, <double f0x3FCB1FA76156A7C5, double f0x3FE129A2D9E60E32>
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.l = fmul <2 x double> %i.f, <double f0x3FDA61D629F2E197, double f0x3FE5C84A69936914>
  %i.m = fadd <2 x double> %i.k, %i.l
  %i.n = fadd <2 x double> %i.i, %i.m             ; 2 uses
  %i.o = fmul <2 x double> %i.f, <double f0x3FB69AFD7A044C17, double f0x3FD207AE728A2F45> ; 2 uses
  %shift = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.o, %shift
  %i.p = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.q = fmul double %i.e, f0x3FE428C9177A5EDB
  %i.r = fadd double %i.q, %i.p
  %i.s = extractelement <2 x double> %i.n, i64 0
  %i.t = tail call double @dmath_cbrt(double noundef %i.s) #3 ; 3 uses
  %i.u = extractelement <2 x double> %i.n, i64 1
  %i.v = tail call double @dmath_cbrt(double noundef %i.u) #3 ; 3 uses
  %i.w = tail call double @dmath_cbrt(double noundef %i.r) #3 ; 3 uses
  %i.x = fmul double %i.t, f0x3FCAF02A3FE8A4FA
  %i.y = fmul double %i.v, f0x3FE9655120032AAD
  %i.z = fadd double %i.x, %i.y
  %i.aa = fmul double %i.w, f0x3F70ADD9BD572B38
  %i.ab = fsub double %i.z, %i.aa
  %i.ac = fmul double %i.t, f0x3FFFA5E1BFFFDE12
  %i.ad = fmul double %i.v, f0x40036DC1BFFE5D3E
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = fmul double %i.w, f0x3FDCD686FFF371A5
  %i.ag = fadd double %i.ae, %i.af
  %i.ah = fptrunc double %i.ag to float           ; 3 uses
  %i.ai = fmul double %i.t, f0x3F9A869680B729E0
  %i.aj = fmul double %i.v, f0x3FE90C776001F502
  %i.ak = fadd double %i.ai, %i.aj
  %i.al = fmul double %i.w, f0x3FE9E0AC0001353D
  %i.am = fsub double %i.ak, %i.al
  %i.an = fptrunc double %i.am to float           ; 3 uses
  %i.ao = fmul float %i.ah, %i.ah
  %i.ap = fmul float %i.an, %i.an
  %i.aq = fadd float %i.ao, %i.ap
  %i.ar = fpext float %i.aq to double
  %i.as = tail call double @dmath_sqrt(double noundef %i.ar) #3
  %i.at = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.as, i64 1
  %i.av = fptrunc <2 x double> %i.au to <2 x float>
  %i.aw = fpext float %i.an to double
  %i.ax = fpext float %i.ah to double
  %i.ay = tail call double @dmath_atan2(double noundef %i.aw, double noundef %i.ax) #3
  %i.az = tail call double @dmath_fmod(double noundef %i.ay, double noundef f0x401921FB54442D18) #3
  %i.ba = fptrunc double %i.az to float
  %i.bb = fpext float %i.ba to double
  %i.bc = fmul double %i.bb, f0x404CA5DC1A63C1F8
  %i.bd = fptrunc double %i.bc to float
  tail call void @py_newvec3(ptr noundef %i.d, <2 x float> %i.av, float %i.bd) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

declare zeroext i1 @py_exception(i16 noundef signext, ptr noundef, ...) local_unnamed_addr #1

declare zeroext i1 @py_checktype(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare { <2 x float>, float } @py_tovec3(ptr noundef) local_unnamed_addr #1

declare void @py_newvec3(ptr noundef, <2 x float>, float) local_unnamed_addr #1

declare ptr @py_retval(...) local_unnamed_addr #1

declare double @dmath_pow(double noundef, double noundef) local_unnamed_addr #1

declare double @dmath_fmax(double noundef, double noundef) local_unnamed_addr #1

declare double @dmath_fmin(double noundef, double noundef) local_unnamed_addr #1

declare double @dmath_fmod(double noundef, double noundef) local_unnamed_addr #1

declare double @dmath_cos(double noundef) local_unnamed_addr #1

declare double @dmath_sin(double noundef) local_unnamed_addr #1

declare double @dmath_sqrt(double noundef) local_unnamed_addr #1

declare double @dmath_atan2(double noundef, double noundef) local_unnamed_addr #1

declare double @dmath_cbrt(double noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
