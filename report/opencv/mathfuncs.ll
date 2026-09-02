Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/mathfuncs?download=true
inline.NumInlined: 427
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN2cv10solveCubicERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  %i.fd = load i32, ptr %i.ab, align 4
  %i.fe = icmp eq i32 %i.fd, 1
  %or.cond.i260 = select i1 %i.fc, i1 true, i1 %i.fe
  br i1 %or.cond.i260, label %bb.ax, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = load i32, ptr %.sroa.gep, align 8, !tbaa !58
  %i.fg = icmp eq i32 %i.ff, 1
  br i1 %i.fg, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !46 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !40
  %i.fl = zext nneg i32 %i.ey to i64
  %i.fm = mul nuw nsw i64 %i.fk, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fm
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.fo = sdiv i32 %i.ey, %i.az                   ; 2 uses
  %i.fp = mul nsw i32 %i.fo, %i.az                ; 0 uses
  %.recomposed410 = srem i32 %i.ey, %i.az
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !46 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !40
  %i.fu = sext i32 %i.fo to i64
  %i.fv = mul i64 %i.ft, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fv
  %i.fx = sext i32 %.recomposed410 to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.fx
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.ph397 = phi ptr [ %i.fi, %bb.ar ], [ %i.fr, %bb.as ] ; 4 uses
  %.0.i261.ph.ph = phi ptr [ %i.fn, %bb.ar ], [ %i.fy, %bb.as ]
  %i.fz = load double, ptr %.0.i261.ph.ph, align 8, !tbaa !43 ; 2 uses
  %i.ga = add nsw i32 %.1149, 2                   ; 3 uses
  %i.gb = load i32, ptr %.sroa.gep, align 8, !tbaa !58
  %i.gc = icmp eq i32 %i.gb, 1
  br i1 %i.gc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !40
  %i.gf = zext nneg i32 %i.ga to i64
  %i.gg = mul i64 %i.ge, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.ph397, i64 %i.gg
  br label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.gi = sdiv i32 %i.ga, %i.az                   ; 2 uses
  %i.gj = mul nsw i32 %i.gi, %i.az                ; 0 uses
  %.recomposed411 = srem i32 %i.ga, %i.az
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !40
  %i.gm = sext i32 %i.gi to i64
  %i.gn = mul i64 %i.gl, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %.ph397, i64 %i.gn
  %i.gp = sext i32 %.recomposed411 to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.gp
  br label %bb.ay

bb.aw:                                            ; preds = %._crit_edge
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !46 ; 2 uses
  %i.gt = zext nneg i32 %i.ey to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gt
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !43
  %i.gw = sext i32 %.1149 to i64
  %i.gx = getelementptr [8 x i8], ptr %i.gs, i64 %i.gw ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 16
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !43
  %i.ha = getelementptr i8, ptr %i.gx, i64 24
  br label %_ZN2cv3Mat2atIdEERT_i.exit268

bb.ax:                                            ; preds = %bb.ap
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !46 ; 3 uses
  %i.hd = zext nneg i32 %i.ey to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !43
  %i.hg = sext i32 %.1149 to i64
  %i.hh = getelementptr [8 x i8], ptr %i.hc, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 16
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !43
  %i.hk = sext i32 %.1149 to i64
  %i.hl = getelementptr [8 x i8], ptr %i.hc, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 24
  br label %_ZN2cv3Mat2atIdEERT_i.exit268

bb.ay:                                            ; preds = %bb.au, %bb.av
  %.0.i264.ph.ph = phi ptr [ %i.gh, %bb.au ], [ %i.gq, %bb.av ]
  %i.hn = load double, ptr %.0.i264.ph.ph, align 8, !tbaa !43 ; 2 uses
  %i.ho = add nsw i32 %.1149, 3                   ; 3 uses
  %i.hp = load i32, ptr %.sroa.gep, align 8, !tbaa !58
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hr = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !40
  %i.ht = zext nneg i32 %i.ho to i64
  %i.hu = mul i64 %i.hs, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %.ph397, i64 %i.hu
  br label %_ZN2cv3Mat2atIdEERT_i.exit268

bb.ba:                                            ; preds = %bb.ay
  %i.hw = sdiv i32 %i.ho, %i.az                   ; 2 uses
  %i.hx = mul nsw i32 %i.hw, %i.az                ; 0 uses
  %.recomposed412 = srem i32 %i.ho, %i.az
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !40
  %i.ia = sext i32 %i.hw to i64
  %i.ib = mul i64 %i.hz, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %.ph397, i64 %i.ib
  %i.id = sext i32 %.recomposed412 to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.id
  br label %_ZN2cv3Mat2atIdEERT_i.exit268

_ZN2cv3Mat2atIdEERT_i.exit268:                    ; preds = %bb.aw, %bb.ax, %bb.az, %bb.ba
  %i.if = phi double [ %i.gz, %bb.aw ], [ %i.hj, %bb.ax ], [ %i.hn, %bb.az ], [ %i.hn, %bb.ba ]
  %i.ig = phi double [ %i.gv, %bb.aw ], [ %i.hf, %bb.ax ], [ %i.fz, %bb.az ], [ %i.fz, %bb.ba ]
  %.0.i267 = phi ptr [ %i.ha, %bb.aw ], [ %i.hm, %bb.ax ], [ %i.hv, %bb.az ], [ %i.ie, %bb.ba ]
  %i.ih = load double, ptr %.0.i267, align 8, !tbaa !43
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv3Mat2atIdEERT_i.exit268, %_ZN2cv3Mat2atIfEERT_i.exit257
  %.2168 = phi double [ %.0166, %_ZN2cv3Mat2atIfEERT_i.exit257 ], [ %.1167, %_ZN2cv3Mat2atIdEERT_i.exit268 ] ; 2 uses
  %.0165 = phi double [ %i.er, %_ZN2cv3Mat2atIfEERT_i.exit257 ], [ %i.ig, %_ZN2cv3Mat2atIdEERT_i.exit268 ] ; 4 uses
  %.0164 = phi double [ %i.es, %_ZN2cv3Mat2atIfEERT_i.exit257 ], [ %i.if, %_ZN2cv3Mat2atIdEERT_i.exit268 ] ; 7 uses
  %.0163 = phi double [ %i.eu, %_ZN2cv3Mat2atIfEERT_i.exit257 ], [ %i.ih, %_ZN2cv3Mat2atIdEERT_i.exit268 ] ; 5 uses
  %i.ii = call noundef double @llvm.fabs.f64(double %.2168) ; 3 uses
  %i.ij = call noundef double @llvm.fabs.f64(double %.0165) ; 3 uses
  %i.ik = call noundef double @llvm.fabs.f64(double %.0164) ; 3 uses
  %i.il = call noundef double @llvm.fabs.f64(double %.0163) ; 3 uses
  %i.im = fcmp olt double %i.ii, %i.ij
  %i.in = select i1 %i.im, double %i.ij, double %i.ii ; 2 uses
  %i.io = fcmp olt double %i.in, %i.ik
  %i.ip = select i1 %i.io, double %i.ik, double %i.in ; 2 uses
  %i.iq = fcmp olt double %i.ip, %i.il
  %.sroa.speculated = select i1 %i.iq, double %i.il, double %i.ip ; 3 uses
  %i.ir = fcmp olt double %.sroa.speculated, f0x3CB0000000000000
  br i1 %i.ir, label %bb.cm, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i
  %i.is = fmul double %.sroa.speculated, f0x3CB0000000000000 ; 4 uses
  %i.it = fcmp olt double %i.ii, %i.is
  br i1 %i.it, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.iu = fcmp olt double %i.ij, %i.is
  br i1 %i.iu, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.iv = fcmp olt double %i.ik, %i.is
  br i1 %i.iv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.iw = fcmp olt double %i.il, %i.is
  %i.ix = sext i1 %i.iw to i32
  br label %bb.bn

bb.bf:                                            ; preds = %bb.bd
  %i.iy = fneg double %.0163
  %i.iz = fdiv double %i.iy, %.0164
  %i.ja = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.iz, i64 0
  br label %bb.bn

bb.bg:                                            ; preds = %bb.bc
  %i.jb = fmul double %.0165, 4.000000e+00
  %i.jc = fneg double %.0163
  %i.jd = fmul double %i.jb, %i.jc
  %i.je = call double @llvm.fmuladd.f64(double %.0164, double %.0164, double %i.jd) ; 2 uses
  %i.jf = fcmp ult double %i.je, 0.000000e+00
  br i1 %i.jf, label %bb.bn, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jg = call double @sqrt(double noundef %i.je) #25 ; 3 uses
  %i.jh = fsub double %i.jg, %.0164
  %i.ji = fmul double %i.jh, 5.000000e-01         ; 2 uses
  %i.jj = fadd double %.0164, %i.jg
  %i.jk = fmul double %i.jj, -5.000000e-01        ; 2 uses
  %i.jl = call noundef double @llvm.fabs.f64(double %i.ji)
  %i.jm = call noundef double @llvm.fabs.f64(double %i.jk)
  %i.jn = fcmp ogt double %i.jl, %i.jm
  %. = select i1 %i.jn, double %i.ji, double %i.jk ; 2 uses
  %i.jo = insertelement <2 x double> poison, double %., i64 0
  %i.jp = insertelement <2 x double> %i.jo, double %.0163, i64 1
  %i.jq = insertelement <2 x double> poison, double %.0165, i64 0
  %i.jr = insertelement <2 x double> %i.jq, double %., i64 1
  %i.js = fdiv <2 x double> %i.jp, %i.jr
  %i.jt = fcmp ogt double %i.jg, 0.000000e+00
  %i.ju = select i1 %i.jt, i32 2, i32 1
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bb
  %i.jv = fdiv double 1.000000e+00, %.sroa.speculated ; 3 uses
  %11 = fmul double %.2168, %i.jv
  %i.jw = fmul double %.0163, %i.jv
  %i.jx = fdiv double 1.000000e+00, %11           ; 2 uses
  %i.jy = insertelement <2 x double> poison, double %.0165, i64 0
  %i.jz = insertelement <2 x double> %i.jy, double %.0164, i64 1
  %i.ka = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x double> %i.jz, %i.kb
  %i.kd = insertelement <2 x double> poison, double %i.jx, i64 0
  %i.ke = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x double> %i.kc, %i.ke          ; 11 uses
  %i.kg = extractelement <2 x double> %i.kf, i64 0 ; 4 uses
  %i.kh = fmul double %i.kg, 2.000000e+00
  %i.ki = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kj = fmul <2 x double> %i.ki, <double -3.000000e+00, double -9.000000e+00>
  %i.kk = insertelement <2 x double> %i.kf, double %i.kh, i64 1
  %i.kl = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.km = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kk, <2 x double> %i.kl, <2 x double> %i.kj) ; 2 uses
  %i.kn = extractelement <2 x double> %i.km, i64 0
  %i.ko = fmul double %i.kn, f0x3FBC71C71C71C71C  ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.kf, %i.kf
  %12 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %13 = extractelement <2 x double> %i.kf, i64 1  ; 2 uses
  %14 = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.kp = insertelement <2 x double> %14, double %i.jw, i64 0
  %i.kq = insertelement <2 x double> <double poison, double 4.000000e+00>, double %i.jx, i64 0
  %i.kr = fmul <2 x double> %i.kp, %i.kq          ; 3 uses
  %i.ks = extractelement <2 x double> %i.kr, i64 0 ; 2 uses
  %i.kt = fneg <2 x double> %i.kr
  %i.ku = shufflevector <2 x double> <double 2.700000e+01, double poison>, <2 x double> %i.kt, <2 x i32> <i32 0, i32 2>
  %i.kv = fmul <2 x double> %i.kr, %i.ku          ; 2 uses
  %i.kw = shufflevector <2 x double> %i.km, <2 x double> %i.kf, <2 x i32> <i32 1, i32 3>
  %i.kx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.kw, <2 x double> %i.kv) ; 2 uses
  %i.ky = extractelement <2 x double> %i.kx, i64 0
  %i.kz = fmul double %i.ky, f0x3F92F684BDA12F68  ; 4 uses
  %i.la = fmul double %13, 2.000000e+00           ; 2 uses
  %i.lb = fmul double %i.kg, 9.000000e+00
  %i.lc = fneg double %13
  %i.ld = fmul double %i.la, %i.lc
  %i.le = call double @llvm.fmuladd.f64(double %i.lb, double %i.ks, double %i.ld)
  %i.lf = fmul double %i.la, %i.le
  %i.lg = extractelement <2 x double> %i.kx, i64 1
  %i.lh = call double @llvm.fmuladd.f64(double %12, double %i.lg, double %i.lf)
  %i.li = extractelement <2 x double> %i.kv, i64 0
  %i.lj = fneg double %i.li
  %i.lk = call double @llvm.fmuladd.f64(double %i.lj, double %i.ks, double %i.lh)
  %i.ll = fmul double %i.lk, f0x3F82F684BDA12F68  ; 3 uses
  %i.lm = fcmp ogt double %i.ll, 0.000000e+00
  br i1 %i.lm, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ln = fmul double %i.ko, %i.ko
  %i.lo = fmul double %i.ko, %i.ln
  %i.lp = call double @sqrt(double noundef %i.lo) #25
  %i.lq = fdiv double %i.kz, %i.lp
  %i.lr = call double @acos(double noundef %i.lq) #25
  %i.ls = call double @sqrt(double noundef %i.ko) #25
  %i.lt = fmul double %i.lr, f0x3FD5555555555555  ; 3 uses
  %i.lu = call double @cos(double noundef %i.lt) #25
  %i.lv = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.lw = shufflevector <2 x double> %i.lv, <2 x double> %i.kf, <2 x i32> <i32 0, i32 2>
  %i.lx = fmul <2 x double> %i.lw, <double -2.000000e+00, double f0xBFD5555555555555> ; 4 uses
  %i.ly = fadd double %i.lt, f0x4000C152382D7365
  %i.lz = call double @cos(double noundef %i.ly) #25
  %i.ma = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mb = insertelement <2 x double> poison, double %i.lu, i64 0
  %i.mc = insertelement <2 x double> %i.mb, double %i.lz, i64 1
  %i.md = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.me = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.mc, <2 x double> %i.md)
  %i.mf = fadd double %i.lt, f0x4010C152382D7365
  %i.mg = call double @cos(double noundef %i.mf) #25
  %i.mh = extractelement <2 x double> %i.lx, i64 0
  %i.mi = extractelement <2 x double> %i.lx, i64 1
  %i.mj = call double @llvm.fmuladd.f64(double %i.mh, double %i.mg, double %i.mi)
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  %i.mk = fcmp oeq double %i.ll, 0.000000e+00
  br i1 %i.mk, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ml = call double @cbrt(double noundef %i.kz) #30 ; 2 uses
  %i.mm = fdiv double %i.kg, 3.000000e+00         ; 2 uses
  %i.mn = fneg double %i.mm
  %i.mo = fsub double %i.ml, %i.mm                ; 2 uses
  %i.mp = call double @llvm.fmuladd.f64(double %i.ml, double -2.000000e+00, double %i.mn) ; 2 uses
  %i.mq = fcmp oeq double %i.mp, %i.mo            ; 2 uses
  %i.mr = select i1 %i.mq, i32 1, i32 2
  %i.ms = select i1 %i.mq, double 0.000000e+00, double %i.mo
  %i.mt = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.mu = insertelement <2 x double> %i.mt, double %i.ms, i64 1
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.mv = fneg double %i.ll
  %i.mw = call double @sqrt(double noundef %i.mv) #25
  %i.mx = call double @llvm.fabs.f64(double %i.kz)
  %i.my = fadd double %i.mx, %i.mw
  %i.mz = call double @cbrt(double noundef %i.my) #30 ; 2 uses
  %i.na = fcmp ogt double %i.kz, 0.000000e+00
  %i.nb = fneg double %i.mz
  %.0 = select i1 %i.na, double %i.nb, double %i.mz ; 2 uses
  %i.nc = fdiv double %i.ko, %.0
  %i.nd = fadd double %.0, %i.nc
  %i.ne = fneg double %i.kg
  %i.nf = call double @llvm.fmuladd.f64(double %i.ne, double f0x3FD5555555555555, double %i.nd)
  %i.ng = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.nf, i64 0
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bj, %bb.bm, %bb.bl, %bb.bg, %bb.bh, %bb.bf, %bb.be
  %.1154 = phi double [ 0.000000e+00, %bb.be ], [ 0.000000e+00, %bb.bf ], [ 0.000000e+00, %bb.bg ], [ 0.000000e+00, %bb.bh ], [ %i.mj, %bb.bj ], [ 0.000000e+00, %bb.bl ], [ 0.000000e+00, %bb.bm ] ; 2 uses
  %.2152 = phi i32 [ %i.ix, %bb.be ], [ 1, %bb.bf ], [ 0, %bb.bg ], [ %i.ju, %bb.bh ], [ 3, %bb.bj ], [ %i.mr, %bb.bl ], [ 1, %bb.bm ] ; 2 uses
  %i.nh = phi <2 x double> [ zeroinitializer, %bb.be ], [ %i.ja, %bb.bf ], [ zeroinitializer, %bb.bg ], [ %i.js, %bb.bh ], [ %i.me, %bb.bj ], [ %i.mu, %bb.bl ], [ %i.ng, %bb.bm ] ; 7 uses
  %i.ni = load i32, ptr %10, align 8, !tbaa !28   ; 3 uses
  %i.nj = and i32 %i.ni, 4095
  %i.nk = icmp eq i32 %i.nj, 5
  br i1 %i.nk, label %bb.bo, label %bb.ca

bb.bo:                                            ; preds = %bb.bn
  %i.nl = extractelement <2 x double> %i.nh, i64 0
  %i.nm = fptrunc double %i.nl to float           ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !59
  %i.np = icmp slt i32 %i.no, 2
  br i1 %i.np, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nq = and i32 %i.ni, 16384
  %i.nr = icmp ne i32 %i.nq, 0                    ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !46 ; 7 uses
  store float %i.nm, ptr %i.nu, align 4, !tbaa !48
  %i.nv = extractelement <2 x double> %i.nh, i64 1
  %i.nw = fptrunc double %i.nv to float
  %i.nx = load i32, ptr %i.ns, align 4
  %i.ny = icmp eq i32 %i.nx, 1
  %or.cond.i272 = select i1 %i.nr, i1 true, i1 %i.ny
  br i1 %or.cond.i272, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  br label %bb.bv

bb.br:                                            ; preds = %bb.bp
  %i.oa = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !58
  %i.oc = icmp eq i32 %i.ob, 1
  br i1 %i.oc, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.od = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !40
  %i.of = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.oe
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.og = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !52
  %.fr374 = freeze i32 %i.oh                      ; 3 uses
  %i.oi = add i32 %.fr374, 1
  %i.oj = icmp ult i32 %i.oi, 3
  %i.ok = select i1 %i.oj, i32 %.fr374, i32 0     ; 2 uses
  %i.ol = mul nsw i32 %i.ok, %.fr374
  %i.om = sub nsw i32 1, %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !40
  %i.op = sext i32 %i.ok to i64
  %i.oq = mul i64 %i.oo, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.oq
  %i.os = sext i32 %i.om to i64
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.or, i64 %i.os
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bo
  %i.ou = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !46 ; 3 uses
  store float %i.nm, ptr %i.ov, align 4, !tbaa !48
  %i.ow = extractelement <2 x double> %i.nh, i64 1
  %i.ox = fptrunc double %i.ow to float
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  store float %i.ox, ptr %i.oy, align 4, !tbaa !48
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  br label %_ZN2cv3Mat2atIfEERT_i.exit277

bb.bv:                                            ; preds = %bb.bq, %bb.bs, %bb.bt
  %.0.i273.ph = phi ptr [ %i.ot, %bb.bt ], [ %i.of, %bb.bs ], [ %i.nz, %bb.bq ]
  store float %i.nw, ptr %.0.i273.ph, align 4, !tbaa !48
  %i.pa = load i32, ptr %i.ns, align 4
  %i.pb = icmp eq i32 %i.pa, 1
  %or.cond.i275 = select i1 %i.nr, i1 true, i1 %i.pb
  br i1 %or.cond.i275, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  br label %_ZN2cv3Mat2atIfEERT_i.exit277

bb.bx:                                            ; preds = %bb.bv
  %i.pd = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !58
  %i.pf = icmp eq i32 %i.pe, 1
  br i1 %i.pf, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.pg = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !40
  %i.pi = shl i64 %i.ph, 1
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.pi
  br label %_ZN2cv3Mat2atIfEERT_i.exit277

bb.bz:                                            ; preds = %bb.bx
  %i.pk = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !52 ; 3 uses
  %i.pm = sdiv i32 2, %i.pl                       ; 2 uses
  %i.pn = mul nsw i32 %i.pm, %i.pl                ; 0 uses
  %.recomposed413 = srem i32 2, %i.pl
  %i.po = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !40
  %i.pq = sext i32 %i.pm to i64
  %i.pr = mul i64 %i.pp, %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.pr
  %i.pt = sext i32 %.recomposed413 to i64
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.ps, i64 %i.pt
  br label %_ZN2cv3Mat2atIfEERT_i.exit277

_ZN2cv3Mat2atIfEERT_i.exit277:                    ; preds = %bb.bu, %bb.bw, %bb.by, %bb.bz
  %.0.i276 = phi ptr [ %i.oz, %bb.bu ], [ %i.pc, %bb.bw ], [ %i.pj, %bb.by ], [ %i.pu, %bb.bz ]
  %i.pv = fptrunc double %.1154 to float
  store float %i.pv, ptr %.0.i276, align 4, !tbaa !48
  br label %bb.cm

bb.ca:                                            ; preds = %bb.bn
  %i.pw = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !59
  %i.py = icmp slt i32 %i.px, 2
  br i1 %i.py, label %bb.cg, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.pz = and i32 %i.ni, 16384
  %i.qa = icmp ne i32 %i.pz, 0                    ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !46 ; 7 uses
end_hunk_0
