Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/mathfuncs?download=true
inline.NumInlined: 427
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN2cv10solveCubicERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a

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
  %i.jw = fmul double %.2168, %i.jv
  %i.jx = fdiv double 1.000000e+00, %i.jw
  %i.jy = insertelement <2 x double> poison, double %.0165, i64 0
  %i.jz = insertelement <2 x double> %i.jy, double %.0164, i64 1
  %i.ka = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x double> %i.jz, %i.kb
  %i.kd = insertelement <2 x double> poison, double %i.jx, i64 0 ; 2 uses
  %i.ke = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x double> %i.kc, %i.ke          ; 10 uses
  %i.kg = fmul double %.0163, %i.jv
  %i.kh = extractelement <2 x double> %i.kf, i64 0 ; 5 uses
  %i.ki = fmul double %i.kh, 2.000000e+00
  %i.kj = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.kk = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kl = fmul <2 x double> %i.kk, <double -3.000000e+00, double -9.000000e+00>
  %i.km = insertelement <2 x double> %i.kf, double %i.ki, i64 1
  %i.kn = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ko = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> %i.kn, <2 x double> %i.kl) ; 2 uses
  %i.kp = extractelement <2 x double> %i.ko, i64 0
  %i.kq = fmul double %i.kp, f0x3FBC71C71C71C71C  ; 5 uses
  %i.kr = insertelement <2 x double> %i.kj, double %i.kg, i64 0
  %i.ks = insertelement <2 x double> %i.kd, double 4.000000e+00, i64 1
  %i.kt = fmul <2 x double> %i.kr, %i.ks          ; 3 uses
  %i.ku = extractelement <2 x double> %i.kt, i64 0 ; 2 uses
  %i.kv = fneg <2 x double> %i.kt
  %i.kw = shufflevector <2 x double> <double 2.700000e+01, double poison>, <2 x double> %i.kv, <2 x i32> <i32 0, i32 2>
  %i.kx = fmul <2 x double> %i.kt, %i.kw          ; 2 uses
  %i.ky = shufflevector <2 x double> %i.ko, <2 x double> %i.kf, <2 x i32> <i32 1, i32 3>
  %i.kz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.ky, <2 x double> %i.kx) ; 2 uses
  %i.la = extractelement <2 x double> %i.kz, i64 0
  %i.lb = fmul double %i.la, f0x3F92F684BDA12F68  ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.kf, %i.kf
  %i.lc = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ld = extractelement <2 x double> %i.kf, i64 1 ; 2 uses
  %i.le = fmul double %i.ld, 2.000000e+00         ; 2 uses
  %i.lf = fmul double %i.kh, 9.000000e+00
  %i.lg = fneg double %i.ld
  %i.lh = fmul double %i.le, %i.lg
  %i.li = call double @llvm.fmuladd.f64(double %i.lf, double %i.ku, double %i.lh)
  %i.lj = fmul double %i.le, %i.li
  %i.lk = extractelement <2 x double> %i.kz, i64 1
  %i.ll = call double @llvm.fmuladd.f64(double %i.lc, double %i.lk, double %i.lj)
  %i.lm = extractelement <2 x double> %i.kx, i64 0
  %i.ln = fneg double %i.lm
  %i.lo = call double @llvm.fmuladd.f64(double %i.ln, double %i.ku, double %i.ll)
  %i.lp = fmul double %i.lo, f0x3F82F684BDA12F68  ; 3 uses
  %i.lq = fcmp ogt double %i.lp, 0.000000e+00
  br i1 %i.lq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lr = fmul double %i.kq, %i.kq
  %i.ls = fmul double %i.kq, %i.lr
  %i.lt = call double @sqrt(double noundef %i.ls) #25
  %i.lu = fdiv double %i.lb, %i.lt
  %i.lv = call double @acos(double noundef %i.lu) #25
  %i.lw = call double @sqrt(double noundef %i.kq) #25
  %i.lx = fmul double %i.lv, f0x3FD5555555555555  ; 3 uses
  %i.ly = call double @cos(double noundef %i.lx) #25
  %11 = fmul double %i.kh, f0xBFD5555555555555    ; 2 uses
  %12 = fmul double %i.lw, -2.000000e+00          ; 2 uses
  %13 = fadd double %i.lx, f0x4000C152382D7365
  %14 = call double @cos(double noundef %13) #25
  %15 = insertelement <2 x double> poison, double %12, i64 0
  %i.lz = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.ma = insertelement <2 x double> %16, double %14, i64 1
  %i.mb = insertelement <2 x double> poison, double %11, i64 0
  %17 = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.ma, <2 x double> %17)
  %i.md = fadd double %i.lx, f0x4010C152382D7365
  %i.me = call double @cos(double noundef %i.md) #25
  %i.mf = call double @llvm.fmuladd.f64(double %12, double %i.me, double %11)
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  %i.mg = fcmp oeq double %i.lp, 0.000000e+00
  br i1 %i.mg, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.mh = call double @cbrt(double noundef %i.lb) #30 ; 2 uses
  %i.mi = fdiv double %i.kh, 3.000000e+00         ; 2 uses
  %i.mj = fneg double %i.mi
  %i.mk = fsub double %i.mh, %i.mi                ; 2 uses
  %i.ml = call double @llvm.fmuladd.f64(double %i.mh, double -2.000000e+00, double %i.mj) ; 2 uses
  %i.mm = fcmp oeq double %i.ml, %i.mk            ; 2 uses
  %i.mn = select i1 %i.mm, i32 1, i32 2
  %i.mo = select i1 %i.mm, double 0.000000e+00, double %i.mk
  %i.mp = insertelement <2 x double> poison, double %i.ml, i64 0
  %i.mq = insertelement <2 x double> %i.mp, double %i.mo, i64 1
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.mr = fneg double %i.lp
  %i.ms = call double @sqrt(double noundef %i.mr) #25
  %i.mt = call double @llvm.fabs.f64(double %i.lb)
  %i.mu = fadd double %i.mt, %i.ms
  %i.mv = call double @cbrt(double noundef %i.mu) #30 ; 2 uses
  %i.mw = fcmp ogt double %i.lb, 0.000000e+00
  %i.mx = fneg double %i.mv
  %.0 = select i1 %i.mw, double %i.mx, double %i.mv ; 2 uses
  %i.my = fdiv double %i.kq, %.0
  %i.mz = fadd double %.0, %i.my
  %i.na = fneg double %i.kh
  %i.nb = call double @llvm.fmuladd.f64(double %i.na, double f0x3FD5555555555555, double %i.mz)
  %i.nc = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.nb, i64 0
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bj, %bb.bm, %bb.bl, %bb.bg, %bb.bh, %bb.bf, %bb.be
  %.1154 = phi double [ 0.000000e+00, %bb.be ], [ 0.000000e+00, %bb.bf ], [ 0.000000e+00, %bb.bg ], [ 0.000000e+00, %bb.bh ], [ %i.mf, %bb.bj ], [ 0.000000e+00, %bb.bl ], [ 0.000000e+00, %bb.bm ] ; 2 uses
  %.2152 = phi i32 [ %i.ix, %bb.be ], [ 1, %bb.bf ], [ 0, %bb.bg ], [ %i.ju, %bb.bh ], [ 3, %bb.bj ], [ %i.mn, %bb.bl ], [ 1, %bb.bm ] ; 2 uses
  %i.nd = phi <2 x double> [ zeroinitializer, %bb.be ], [ %i.ja, %bb.bf ], [ zeroinitializer, %bb.bg ], [ %i.js, %bb.bh ], [ %i.mc, %bb.bj ], [ %i.mq, %bb.bl ], [ %i.nc, %bb.bm ] ; 7 uses
  %i.ne = load i32, ptr %10, align 8, !tbaa !28   ; 3 uses
  %i.nf = and i32 %i.ne, 4095
  %i.ng = icmp eq i32 %i.nf, 5
  br i1 %i.ng, label %bb.bo, label %bb.ca

bb.bo:                                            ; preds = %bb.bn
  %i.nh = extractelement <2 x double> %i.nd, i64 0
  %i.ni = fptrunc double %i.nh to float           ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !59
  %i.nl = icmp slt i32 %i.nk, 2
  br i1 %i.nl, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nm = and i32 %i.ne, 16384
  %i.nn = icmp ne i32 %i.nm, 0                    ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !46 ; 7 uses
  store float %i.ni, ptr %i.nq, align 4, !tbaa !48
  %i.nr = extractelement <2 x double> %i.nd, i64 1
  %i.ns = fptrunc double %i.nr to float
  %i.nt = load i32, ptr %i.no, align 4
  %i.nu = icmp eq i32 %i.nt, 1
  %or.cond.i272 = select i1 %i.nn, i1 true, i1 %i.nu
  br i1 %or.cond.i272, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  br label %bb.bv

bb.br:                                            ; preds = %bb.bp
  %i.nw = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !58
  %i.ny = icmp eq i32 %i.nx, 1
  br i1 %i.ny, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.nz = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !40
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.oa
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.oc = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !52
  %.fr374 = freeze i32 %i.od                      ; 3 uses
  %i.oe = add i32 %.fr374, 1
  %i.of = icmp ult i32 %i.oe, 3
  %i.og = select i1 %i.of, i32 %.fr374, i32 0     ; 2 uses
  %i.oh = mul nsw i32 %i.og, %.fr374
  %i.oi = sub nsw i32 1, %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !40
  %i.ol = sext i32 %i.og to i64
  %i.om = mul i64 %i.ok, %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.om
  %i.oo = sext i32 %i.oi to i64
  %i.op = getelementptr inbounds [4 x i8], ptr %i.on, i64 %i.oo
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bo
  %i.oq = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !46 ; 3 uses
  store float %i.ni, ptr %i.or, align 4, !tbaa !48
  %i.os = extractelement <2 x double> %i.nd, i64 1
  %i.ot = fptrunc double %i.os to float
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  store float %i.ot, ptr %i.ou, align 4, !tbaa !48
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  br label %_ZN2cv3Mat2atIfEERT_i.exit277

bb.bv:                                            ; preds = %bb.bq, %bb.bs, %bb.bt
  %.0.i273.ph = phi ptr [ %i.op, %bb.bt ], [ %i.ob, %bb.bs ], [ %i.nv, %bb.bq ]
  store float %i.ns, ptr %.0.i273.ph, align 4, !tbaa !48
  %i.ow = load i32, ptr %i.no, align 4
  %i.ox = icmp eq i32 %i.ow, 1
  %or.cond.i275 = select i1 %i.nn, i1 true, i1 %i.ox
  br i1 %or.cond.i275, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  br label %_ZN2cv3Mat2atIfEERT_i.exit277

bb.bx:                                            ; preds = %bb.bv
  %i.oz = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !58
  %i.pb = icmp eq i32 %i.pa, 1
  br i1 %i.pb, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.pc = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !40
  %i.pe = shl i64 %i.pd, 1
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.pe
  br label %_ZN2cv3Mat2atIfEERT_i.exit277

bb.bz:                                            ; preds = %bb.bx
  %i.pg = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !52 ; 3 uses
  %i.pi = sdiv i32 2, %i.ph                       ; 2 uses
  %i.pj = mul nsw i32 %i.pi, %i.ph                ; 0 uses
  %.recomposed413 = srem i32 2, %i.ph
  %i.pk = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !40
  %i.pm = sext i32 %i.pi to i64
  %i.pn = mul i64 %i.pl, %i.pm
  %i.po = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.pn
  %i.pp = sext i32 %.recomposed413 to i64
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.po, i64 %i.pp
  br label %_ZN2cv3Mat2atIfEERT_i.exit277

_ZN2cv3Mat2atIfEERT_i.exit277:                    ; preds = %bb.bu, %bb.bw, %bb.by, %bb.bz
  %.0.i276 = phi ptr [ %i.ov, %bb.bu ], [ %i.oy, %bb.bw ], [ %i.pf, %bb.by ], [ %i.pq, %bb.bz ]
  %i.pr = fptrunc double %.1154 to float
  store float %i.pr, ptr %.0.i276, align 4, !tbaa !48
  br label %bb.cm

bb.ca:                                            ; preds = %bb.bn
  %i.ps = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !59
  %i.pu = icmp slt i32 %i.pt, 2
  br i1 %i.pu, label %bb.cg, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.pv = and i32 %i.ne, 16384
  %i.pw = icmp ne i32 %i.pv, 0                    ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !46 ; 7 uses
  %i.qa = extractelement <2 x double> %i.nd, i64 0
  store double %i.qa, ptr %i.pz, align 8, !tbaa !43
  %i.qb = load i32, ptr %i.px, align 4
  %i.qc = icmp eq i32 %i.qb, 1
  %or.cond.i281 = select i1 %i.pw, i1 true, i1 %i.qc
  br i1 %or.cond.i281, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  br label %bb.ch

bb.cd:                                            ; preds = %bb.cb
  %i.qe = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !58
  %i.qg = icmp eq i32 %i.qf, 1
  br i1 %i.qg, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.qh = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !40
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qi
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  %i.qk = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !52
  %.fr = freeze i32 %i.ql                         ; 3 uses
  %i.qm = add i32 %.fr, 1
  %i.qn = icmp ult i32 %i.qm, 3
  %i.qo = select i1 %i.qn, i32 %.fr, i32 0        ; 2 uses
  %i.qp = mul nsw i32 %i.qo, %.fr
end_hunk_0
