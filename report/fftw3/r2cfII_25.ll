Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cfII_25?download=true
begin_hunk_0_@r2cfII_25:bb.a
  %i.hi = fsub <2 x double> %i.hg, %i.hh          ; 3 uses
  %i.hj = shufflevector <2 x double> %foldExtExtBinop537, <2 x double> %i.hi, <2 x i32> <i32 0, i32 2>
  %i.hk = extractelement <2 x double> %i.hi, i64 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.0502507, i64 72
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !11
  %i.hn = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.hm
  %foldExtExtBinop539 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop515
  %i.ho = extractelement <2 x double> %foldExtExtBinop539, i64 0
  %i.hp = fmul double %i.ho, f0x3FE1E3779B97F4A8  ; 2 uses
  %foldExtExtBinop541 = fsub <2 x double> %foldExtExtBinop515, %foldExtExtBinop
  %i.hq = getelementptr inbounds nuw i8, ptr %.0503506, i64 72
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !11
  %i.hs = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.hr
  %i.ht = shufflevector <2 x double> %i.gr, <2 x double> %i.gn, <2 x i32> <i32 1, i32 2>
  %i.hu = shufflevector <2 x double> %i.gr, <2 x double> %i.gn, <2 x i32> <i32 0, i32 3>
  %i.hv = fadd <2 x double> %i.ht, %i.hu          ; 3 uses
  %i.hw = extractelement <2 x double> %i.hv, i64 0
  %i.hx = fmul double %i.hw, f0x3FEE6F0E134454FF
  %i.hy = shufflevector <2 x double> %foldExtExtBinop541, <2 x double> %i.hv, <2 x i32> <i32 0, i32 3>
  %i.hz = insertelement <2 x double> %i.aa, double %i.hx, i64 1
  %i.ia = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> <double 2.500000e-01, double f0x3FE2CF2304755A5E>, <2 x double> %i.hz) ; 3 uses
  %shift543 = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop544 = fadd <2 x double> %shift543, %i.ia
  %i.ib = extractelement <2 x double> %foldExtExtBinop544, i64 0
  %i.ic = fsub double %i.ib, %i.hp
  %i.id = insertelement <2 x double> %i.ia, double %i.hp, i64 1
  %i.ie = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> <double f0x3FE2CF2304755A5E, double f0xBFEE6F0E134454FF>, <2 x double> %i.id) ; 2 uses
  %shift546 = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop547 = fadd <2 x double> %i.ie, %shift546
  %i.if = extractelement <2 x double> %foldExtExtBinop547, i64 0
  %i.ig = getelementptr inbounds nuw i8, ptr %.0503506, i64 32
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !11
  %i.ii = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.ih
  %i.ij = fneg double %i.ha
  %foldExtExtBinop549 = fsub <2 x double> %foldExtExtBinop524, %foldExtExtBinop521
  %i.ik = extractelement <2 x double> %foldExtExtBinop549, i64 0
  %i.il = fmul double %i.ik, f0x3FE1E3779B97F4A8  ; 2 uses
  %foldExtExtBinop551 = fadd <2 x double> %foldExtExtBinop521, %foldExtExtBinop524 ; 2 uses
  %foldExtExtBinop553 = fadd <2 x double> %i.aa, %foldExtExtBinop551
  %i.im = extractelement <2 x double> %foldExtExtBinop553, i64 0
  %i.in = fneg double %i.im
  %i.io = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.ip = insertelement <2 x double> %i.io, double %i.il, i64 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.0503506, i64 40
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !11
  %i.is = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.ir
  %i.it = shufflevector <2 x double> %i.gz, <2 x double> %i.gx, <2 x i32> <i32 1, i32 2>
  %i.iu = shufflevector <2 x double> %i.gz, <2 x double> %i.gx, <2 x i32> <i32 0, i32 3>
  %i.iv = fsub <2 x double> %i.it, %i.iu          ; 3 uses
  %i.iw = shufflevector <2 x double> %foldExtExtBinop551, <2 x double> %i.iv, <2 x i32> <i32 0, i32 3>
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> <double 2.500000e-01, double f0x3FE2CF2304755A5E>, <2 x double> %i.ip) ; 3 uses
  %i.iy = extractelement <2 x double> %i.iv, i64 0
  %i.iz = fmul double %i.iy, f0x3FE2CF2304755A5E
  %i.ja = insertelement <2 x double> %i.ix, double %i.iz, i64 1
  %i.jb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.ja) ; 2 uses
  %shift555 = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop556 = fsub <2 x double> %i.jb, %shift555
  %i.jc = extractelement <2 x double> %foldExtExtBinop556, i64 0
  %shift558 = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop559 = fadd <2 x double> %shift558, %i.ix
  %i.jd = extractelement <2 x double> %foldExtExtBinop559, i64 0
  %i.je = fadd double %i.il, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %.0503506, i64 80
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !11
  %i.jh = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.jg
  %foldExtExtBinop561 = fadd <2 x double> %foldExtExtBinop527, %foldExtExtBinop530 ; 2 uses
  %i.ji = extractelement <2 x double> %foldExtExtBinop561, i64 0
  %i.jj = getelementptr inbounds nuw i8, ptr %.0502507, i64 40
  %i.jk = shufflevector <2 x double> %i.gt, <2 x double> %i.gv, <2 x i32> <i32 1, i32 3>
  %i.jl = shufflevector <2 x double> %i.gt, <2 x double> %i.gv, <2 x i32> <i32 0, i32 2>
  %i.jm = fsub <2 x double> %i.jk, %i.jl          ; 3 uses
  %i.jn = shufflevector <2 x double> %foldExtExtBinop561, <2 x double> %i.jm, <2 x i32> <i32 0, i32 3>
  %i.jo = getelementptr inbounds nuw i8, ptr %.0502507, i64 80
  %foldExtExtBinop563 = fsub <2 x double> %foldExtExtBinop527, %foldExtExtBinop530
  %i.jp = extractelement <2 x double> %foldExtExtBinop563, i64 0
  %i.jq = fmul double %i.jp, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.jr = fneg double %i.jq
  %i.js = shufflevector <2 x double> %i.jm, <2 x double> %i.dl, <2 x i32> <i32 0, i32 3>
  %i.jt = shufflevector <2 x double> %i.fq, <2 x double> %i.gc, <2 x i32> <i32 1, i32 2>
  %i.ju = shufflevector <2 x double> %i.fm, <2 x double> %i.ek, <2 x i32> <i32 1, i32 3>
  %i.jv = fsub <2 x double> %i.jt, %i.ju          ; 5 uses
  %i.jw = extractelement <2 x double> %i.jv, i64 1
  %i.jx = fmul double %i.jw, f0xBFEB04BBFF642E86
  %i.jy = shufflevector <2 x double> %i.fh, <2 x double> %i.dl, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.jz = fmul <2 x double> %i.jy, <double f0x3FEB3FF7C925819C, double f0x3FFB04BBFF642E86>
  %i.ka = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> <double f0x3FECF457DCDC158C, double f0x3FE1257E3C182B51>, <2 x double> %i.jz) ; 2 uses
  %i.kb = extractelement <2 x double> %i.ka, i64 0 ; 2 uses
  %i.kc = extractelement <2 x double> %i.ka, i64 1 ; 2 uses
  %i.kd = shufflevector <2 x double> %i.eq, <2 x double> %i.fh, <2 x i32> <i32 1, i32 2>
  %i.ke = shufflevector <2 x double> %i.ek, <2 x double> %i.fm, <2 x i32> <i32 0, i32 2>
  %i.kf = fsub <2 x double> %i.kd, %i.ke          ; 7 uses
  %i.kg = shufflevector <2 x double> %i.kf, <2 x double> %i.bu, <2 x i32> <i32 0, i32 3>
  %i.kh = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ki = fmul <2 x double> %i.kh, <double f0xBFDB3FF7C925819C, double f0xBFC00AEB5DA15BE0>
  %i.kj = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> <double f0x3FFCF457DCDC158C, double f0x3FFFBF675480D903>, <2 x double> %i.ki) ; 3 uses
  %i.kl = extractelement <2 x double> %i.kk, i64 0 ; 2 uses
  %i.km = extractelement <2 x double> %i.kf, i64 0
  %i.kn = shufflevector <2 x double> %i.bu, <2 x double> %i.kf, <2 x i32> <i32 1, i32 2>
  %i.ko = fmul <2 x double> %i.kn, <double f0x3FF753B603D2B816, double f0xBFE8A80B635B6BEA>
  %i.kp = shufflevector <2 x double> %i.dl, <2 x double> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.kq = fmul <2 x double> %i.kp, <double f0x3FC0130A1BE09379, double f0xBFF5E7CF55112014>
  %i.kr = shufflevector <2 x double> %i.jv, <2 x double> %i.kf, <2 x i32> <i32 1, i32 3>
  %i.ks = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kr, <2 x double> <double f0x3FEFEFD5BFE443FE, double f0x3FE753B603D2B816>, <2 x double> %i.kq) ; 4 uses
  %i.kt = fmul <2 x double> %i.jy, <double f0x3FD00AEB5DA15BE0, double f0xBFFFEFD5BFE443FE>
  %i.ku = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> <double f0x3FEFBF675480D903, double f0x3FB0130A1BE09379>, <2 x double> %i.kt) ; 3 uses
  %shift565 = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop566 = fsub <2 x double> %shift565, %i.ku
  %i.kv = extractelement <2 x double> %foldExtExtBinop566, i64 0 ; 2 uses
  %i.kw = extractelement <2 x double> %i.ku, i64 1
  %i.kx = getelementptr inbounds nuw i8, ptr %.0502507, i64 8
  %i.ky = extractelement <2 x double> %i.aa, i64 1 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.0503506, i64 8
  %i.la = fsub double %i.g, %i.k                  ; 2 uses
  %i.lb = fsub double %i.o, %i.s                  ; 2 uses
  %i.lc = fadd double %i.la, %i.lb                ; 2 uses
  %i.ld = insertelement <2 x double> poison, double %i.lc, i64 0
  %i.le = insertelement <2 x double> %i.ld, double %i.ao, i64 1
  %i.lf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> <double -2.500000e-01, double f0x3FDE6F0E134454FF>, <2 x double> %i.at) ; 5 uses
  %i.lg = fadd double %i.c, %i.lc                 ; 2 uses
  %i.lh = extractelement <2 x double> %i.lf, i64 0 ; 2 uses
  %i.li = insertelement <2 x double> %i.ew, double %i.lg, i64 1
  %i.lj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> <double f0x3FE2CF2304755A5E, double -2.500000e-01>, <2 x double> %i.li) ; 2 uses
  %i.lk = extractelement <2 x double> %i.lj, i64 0
  store double %i.lk, ptr %i.ds, align 8, !tbaa !13
  %i.ll = fadd double %i.lg, %i.gg
  store double %i.ll, ptr %i.dv, align 8, !tbaa !13
  %i.lm = extractelement <2 x double> %i.lj, i64 1 ; 2 uses
  %i.ln = fadd double %i.gj, %i.lm
  store double %i.ln, ptr %i.dy, align 8, !tbaa !13
  %i.lo = fsub double %i.lm, %i.gj
  store double %i.lo, ptr %i.eb, align 8, !tbaa !13
  %i.lp = fsub double %i.lb, %i.la
  %i.lq = fmul double %i.lp, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.lr = fadd double %i.lq, %i.lh                ; 2 uses
  %i.ls = insertelement <2 x double> poison, double %i.lr, i64 0 ; 2 uses
  %i.lt = insertelement <2 x double> %i.ls, double %i.hc, i64 1
  %i.lu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> <double 2.500000e-01, double f0x3FE2CF2304755A5E>, <2 x double> %i.lt) ; 3 uses
  %i.lv = extractelement <2 x double> %i.lu, i64 0
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.hk, double f0x3FEE6F0E134454FF, double %i.lv)
  %i.lx = extractelement <2 x double> %i.lu, i64 1
  %i.ly = fadd double %i.lw, %i.lx
  %i.lz = insertelement <2 x double> %i.lu, double %i.hc, i64 1
  %i.ma = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> <double f0x3FEE6F0E134454FF, double f0x3FE2CF2304755A5E>, <2 x double> %i.lz) ; 2 uses
  %shift568 = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop569 = fsub <2 x double> %i.ma, %shift568
  %i.mb = extractelement <2 x double> %foldExtExtBinop569, i64 0
  %i.mc = fadd double %i.lr, %i.ji
  store double %i.mc, ptr %.0499510, align 8, !tbaa !13
  store double %i.in, ptr %.0500509, align 8, !tbaa !13
  store double %i.ly, ptr %i.hf, align 8, !tbaa !13
  store double %i.mb, ptr %i.hn, align 8, !tbaa !13
  store double %i.ic, ptr %i.hs, align 8, !tbaa !13
  store double %i.if, ptr %i.ii, align 8, !tbaa !13
  store double %i.jc, ptr %i.is, align 8, !tbaa !13
  store double %i.je, ptr %i.jh, align 8, !tbaa !13
  %i.md = load i64, ptr %i.jj, align 8, !tbaa !11
  %i.me = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.md
  %i.mf = load i64, ptr %i.jo, align 8, !tbaa !11
  %i.mg = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.mf
  %i.mh = fsub double %i.lh, %i.lq                ; 3 uses
  %i.mi = insertelement <2 x double> %i.ls, double %i.jr, i64 1
  %i.mj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.mi) ; 2 uses
  %i.mk = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ml = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> splat (double f0x3FE2CF2304755A5E), <2 x double> %i.mk) ; 2 uses
  %shift571 = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop572 = fadd <2 x double> %i.ml, %shift571
  %i.mm = extractelement <2 x double> %foldExtExtBinop572, i64 0
  store double %i.mm, ptr %i.me, align 8, !tbaa !13
  %i.mn = extractelement <2 x double> %i.ml, i64 1
  %i.mo = fadd double %i.jq, %i.mn
  %i.mp = insertelement <2 x double> poison, double %i.mo, i64 0
  %i.mq = extractelement <2 x double> %i.lf, i64 1
  %i.mr = insertelement <2 x double> %i.mp, double %i.jx, i64 1
  %i.ms = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.js, <2 x double> <double f0xBFEE6F0E134454FF, double f0x3FF1257E3C182B51>, <2 x double> %i.mr) ; 2 uses
  %i.mt = extractelement <2 x double> %i.ms, i64 0
  store double %i.mt, ptr %i.mg, align 8, !tbaa !13
  %i.mu = extractelement <2 x double> %i.ms, i64 1 ; 2 uses
  %i.mv = shufflevector <2 x double> %i.lf, <2 x double> %i.kf, <2 x i32> <i32 1, i32 3>
  %i.mw = fmul <2 x double> %i.mv, <double f0xBFC0130A1BE09379, double f0xBFDED50D5CBFA951>
  %i.mx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> <double f0x3FEFEFD5BFE443FE, double f0x3FFC0AB44E81C059>, <2 x double> %i.mw) ; 2 uses
  %i.my = extractelement <2 x double> %i.mx, i64 0 ; 2 uses
  %i.mz = extractelement <2 x double> %i.mx, i64 1 ; 2 uses
  %i.na = fadd double %i.my, %i.mu                ; 2 uses
  %i.nb = fsub double %i.my, %i.mu                ; 2 uses
  %i.nc = fsub double %i.mz, %i.kb                ; 2 uses
  %i.nd = shufflevector <2 x double> %i.lf, <2 x double> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.ne = fmul <2 x double> %i.nd, <double f0x3FFFEFD5BFE443FE, double f0x3FEED50D5CBFA951>
  %i.nf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> <double f0x3FB0130A1BE09379, double f0x3FEC0AB44E81C059>, <2 x double> %i.ne) ; 2 uses
  %i.ng = extractelement <2 x double> %i.nf, i64 0 ; 2 uses
  %i.nh = fadd double %i.ng, %i.kc                ; 2 uses
  %i.ni = extractelement <2 x double> %i.nf, i64 1 ; 2 uses
  %i.nj = fadd double %i.ni, %i.kl                ; 2 uses
  %i.nk = fsub double %i.ni, %i.kl
  %i.nl = shufflevector <2 x double> %i.kf, <2 x double> %i.lf, <2 x i32> <i32 1, i32 3>
  %i.nm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> <double f0x3FE5E7CF55112014, double f0x3FF465C6FEB501BC>, <2 x double> %i.ko) ; 3 uses
  %shift574 = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop575 = fsub <2 x double> %shift574, %i.nm ; 2 uses
  %shift577 = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop578 = fsub <2 x double> %shift577, %i.ks ; 2 uses
  %foldExtExtBinop580 = fadd <2 x double> %foldExtExtBinop575, %foldExtExtBinop578
  %i.nn = extractelement <2 x double> %foldExtExtBinop580, i64 0 ; 2 uses
  %i.no = fmul double %i.mq, f0x3FF8A80B635B6BEA
  %i.np = load i64, ptr %i.kx, align 8, !tbaa !11
  %i.nq = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.np
  %i.nr = fsub double %i.nn, %i.ky
  %i.ns = load i64, ptr %i.kz, align 8, !tbaa !11
  %i.nt = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.ns
  %i.nu = fsub double %i.nj, %i.nh
  %i.nv = fmul double %i.nu, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.nw = fadd double %i.nj, %i.nh
  %i.nx = insertelement <2 x double> poison, double %i.nw, i64 0
  %i.ny = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.nz = insertelement <2 x double> %i.ny, double %i.nv, i64 1
  %i.oa = getelementptr inbounds nuw i8, ptr %.0502507, i64 64
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !11
  %i.oc = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %.0502507, i64 24
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !11
  %i.of = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.oe
  %i.og = fadd double %i.nc, %i.nb
  %i.oh = fmul double %i.og, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.oi = fadd double %i.mz, %i.kb                ; 2 uses
  %i.oj = insertelement <2 x double> %i.nx, double %i.oi, i64 1
  %i.ok = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oj, <2 x double> <double -2.500000e-01, double f0x3FE2CF2304755A5E>, <2 x double> %i.nz) ; 3 uses
  %i.ol = extractelement <2 x double> %i.ok, i64 0
  %i.om = tail call double @llvm.fmuladd.f64(double %i.na, double f0x3FEE6F0E134454FF, double %i.ol)
  %i.on = extractelement <2 x double> %i.ok, i64 1
  %i.oo = fsub double %i.om, %i.on
  %i.op = fmul double %i.na, f0x3FE2CF2304755A5E
  %i.oq = fsub double %i.nb, %i.nc
  %i.or = insertelement <2 x double> poison, double %i.oi, i64 0
  %i.os = insertelement <2 x double> %i.or, double %i.oq, i64 1
  %i.ot = insertelement <2 x double> %i.aa, double %i.op, i64 0
  %i.ou = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> <double f0x3FEE6F0E134454FF, double 2.500000e-01>, <2 x double> %i.ot) ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.0503506, i64 24
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !11
  %i.ox = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.ow
  %i.oy = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.oz = shufflevector <2 x double> %i.oy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pa = fneg double %i.oh
  %i.pb = getelementptr inbounds nuw i8, ptr %.0503506, i64 64
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !11
  %i.pd = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.pc
  %i.pe = fsub double %i.ng, %i.kc                ; 2 uses
  %i.pf = tail call double @llvm.fmuladd.f64(double %i.pe, double f0x3FE2CF2304755A5E, double %i.oh)
  %i.pg = insertelement <2 x double> %i.ok, double %i.pf, i64 1
  %i.ph = fadd <2 x double> %i.ou, %i.pg          ; 2 uses
  %i.pi = extractelement <2 x double> %i.ph, i64 0
  %i.pj = fadd double %i.nv, %i.pi
  %i.pk = shufflevector <2 x double> %i.ou, <2 x double> %i.ph, <2 x i32> <i32 3, i32 1>
  %i.pl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oz, <2 x double> <double f0xBFEE6F0E134454FF, double f0x3FE2CF2304755A5E>, <2 x double> %i.pk) ; 2 uses
  %i.pm = extractelement <2 x double> %i.pl, i64 0
  %i.pn = insertelement <2 x double> poison, double %i.pe, i64 0
  %i.po = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.pp = insertelement <2 x double> %i.po, double %i.mh, i64 1
  %i.pq = shufflevector <2 x double> %i.kk, <2 x double> %i.ks, <2 x i32> <i32 1, i32 2>
  %i.pr = fadd <2 x double> %i.nm, %i.pq          ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.0502507, i64 48
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !11
  %i.pu = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %.0502507, i64 88
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !11
  %i.px = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.pw
  %10 = fmul double %i.nn, 2.500000e-01
  %foldExtExtBinop582 = fsub <2 x double> %foldExtExtBinop575, %foldExtExtBinop578
  %i.py = extractelement <2 x double> %foldExtExtBinop582, i64 0
  %i.pz = fmul double %i.py, f0x3FE1E3779B97F4A8  ; 2 uses
  %11 = fadd double %i.ky, %10                    ; 2 uses
  %12 = fneg double %11
  %i.qa = tail call double @llvm.fmuladd.f64(double %i.km, double f0x3FE465C6FEB501BC, double %i.no) ; 2 uses
  %i.qb = fsub double %i.kw, %i.qa                ; 2 uses
  %i.qc = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qd = insertelement <2 x double> %i.qc, double %i.qa, i64 1
  %i.qe = fadd <2 x double> %i.qd, %i.ku          ; 3 uses
  %i.qf = fadd double %i.kv, %i.qb                ; 2 uses
  %i.qg = fadd double %i.mh, %i.qf
  store double %i.qg, ptr %i.nq, align 8, !tbaa !13
  store double %i.nr, ptr %i.nt, align 8, !tbaa !13
  store double %i.oo, ptr %i.oc, align 8, !tbaa !13
  store double %i.pj, ptr %i.of, align 8, !tbaa !13
  store double %i.pm, ptr %i.ox, align 8, !tbaa !13
  %i.qh = insertelement <2 x double> %i.pn, double %i.qf, i64 1
  %i.qi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qh, <2 x double> <double f0x3FEE6F0E134454FF, double -2.500000e-01>, <2 x double> %i.pp) ; 2 uses
  %i.qj = fsub double %i.kv, %i.qb
  %i.qk = fmul double %i.qj, f0x3FE1E3779B97F4A8
  %i.ql = insertelement <2 x double> %i.qi, double %i.qk, i64 0 ; 2 uses
  %i.qm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pr, <2 x double> <double f0x3FE2CF2304755A5E, double f0x3FEE6F0E134454FF>, <2 x double> %i.ql) ; 2 uses
  %shift584 = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop585 = fsub <2 x double> %shift584, %i.qm
  %i.qn = extractelement <2 x double> %foldExtExtBinop585, i64 0
  %i.qo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pr, <2 x double> <double f0x3FEE6F0E134454FF, double f0x3FE2CF2304755A5E>, <2 x double> %i.ql) ; 2 uses
  %i.qp = shufflevector <2 x double> %i.pl, <2 x double> %i.qo, <2 x i32> <i32 1, i32 2>
  %i.qq = shufflevector <2 x double> %i.qi, <2 x double> %i.qo, <2 x i32> <i32 0, i32 3>
  %i.qr = fadd <2 x double> %i.qp, %i.qq          ; 2 uses
  %i.qs = extractelement <2 x double> %i.qr, i64 0
  store double %i.qs, ptr %i.pd, align 8, !tbaa !13
  store double %i.qn, ptr %i.pu, align 8, !tbaa !13
  %i.qt = extractelement <2 x double> %i.qr, i64 1
  store double %i.qt, ptr %i.px, align 8, !tbaa !13
  %i.qu = insertelement <2 x double> poison, double %i.pz, i64 0
  %13 = insertelement <2 x double> %i.qu, double %12, i64 1
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qe, <2 x double> <double f0x3FE2CF2304755A5E, double f0x3FEE6F0E134454FF>, <2 x double> %13) ; 2 uses
  %shift587 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop588 = fsub <2 x double> %shift587, %14
  %i.qv = extractelement <2 x double> %foldExtExtBinop588, i64 0
  %15 = getelementptr inbounds nuw i8, ptr %.0503506, i64 48
  %16 = load i64, ptr %15, align 8, !tbaa !11
  %17 = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %16
  store double %i.qv, ptr %17, align 8, !tbaa !13
  %i.qw = extractelement <2 x double> %i.qe, i64 1
  %18 = fmul double %i.qw, f0x3FE2CF2304755A5E
  %i.qx = extractelement <2 x double> %i.qe, i64 0
  %i.qy = tail call double @llvm.fmuladd.f64(double %i.qx, double f0x3FEE6F0E134454FF, double %18)
  %i.qz = fadd double %i.qy, %i.pz
  %i.ra = fsub double %i.qz, %11
  %i.rb = getelementptr inbounds nuw i8, ptr %.0503506, i64 88
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !11
  %i.rd = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.rc
  store double %i.ra, ptr %i.rd, align 8, !tbaa !13
  %i.re = add nsw i64 %.0504505, -1
  %i.rf = getelementptr inbounds [8 x i8], ptr %.0512, i64 %8
  %i.rg = getelementptr inbounds [8 x i8], ptr %.0498511, i64 %8
  %i.rh = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %9
  %i.ri = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %9
  %i.rj = getelementptr inbounds [8 x i8], ptr %.0501508, i64 %i.b
  %i.rk = getelementptr inbounds [8 x i8], ptr %.0502507, i64 %i.b
  %i.rl = getelementptr inbounds [8 x i8], ptr %.0503506, i64 %i.b
  %i.rm = icmp samesign ugt i64 %.0504505, 1
  br i1 %i.rm, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !14}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
