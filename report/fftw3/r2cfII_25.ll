Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cfII_25?download=true
begin_hunk_0_@r2cfII_25:bb.a
  %i.gp = fmul <2 x double> %i.go, <double f0xBFFCF457DCDC158C, double f0xBFEFBF675480D903>
  %i.gq = shufflevector <2 x double> %i.ge, <2 x double> %i.eq, <2 x i32> <i32 1, i32 2>
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> <double f0x3FDB3FF7C925819C, double f0x3FD00AEB5DA15BE0>, <2 x double> %i.gp) ; 4 uses
  %shift517 = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop518 = fsub <2 x double> %i.gr, %shift517 ; 2 uses
  %i.gs = fmul <2 x double> %i.gl, <double f0x3FFEFEA21D101EE0, double f0x3FF1257E3C182B51>
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> <double f0x3FCFD511FA1C0796, double f0x3FEB04BBFF642E86>, <2 x double> %i.gs) ; 4 uses
  %shift520 = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop521 = fadd <2 x double> %i.gt, %shift520 ; 2 uses
  %i.gu = fmul <2 x double> %i.ex, <double f0x3FF753B603D2B816, double f0x3FFC0AB44E81C059>
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> <double f0x3FE5E7CF55112014, double f0x3FDED50D5CBFA951>, <2 x double> %i.gu) ; 4 uses
  %shift523 = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop524 = fadd <2 x double> %i.gv, %shift523 ; 2 uses
  %i.gw = fmul <2 x double> %i.gl, <double f0xBFDFD511FA1C0796, double f0xBFFB04BBFF642E86>
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> <double f0x3FEEFEA21D101EE0, double f0x3FE1257E3C182B51>, <2 x double> %i.gw) ; 4 uses
  %shift526 = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop527 = fadd <2 x double> %i.gx, %shift526 ; 2 uses
  %i.gy = fmul <2 x double> %i.ex, <double f0xBFF5E7CF55112014, double f0xBFEED50D5CBFA951>
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> <double f0x3FE753B603D2B816, double f0x3FEC0AB44E81C059>, <2 x double> %i.gy) ; 4 uses
  %shift529 = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop530 = fadd <2 x double> %i.gz, %shift529 ; 2 uses
  %i.ha = extractelement <2 x double> %i.aa, i64 0
  %shift532 = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop533 = fsub <2 x double> %i.gn, %shift532 ; 2 uses
  %foldExtExtBinop535 = fadd <2 x double> %foldExtExtBinop533, %foldExtExtBinop518
  %i.hb = extractelement <2 x double> %foldExtExtBinop535, i64 0
  %i.hc = fmul double %i.hb, f0x3FE1E3779B97F4A8  ; 2 uses
  %foldExtExtBinop537 = fsub <2 x double> %foldExtExtBinop518, %foldExtExtBinop533
  %i.hd = getelementptr inbounds nuw i8, ptr %.0502507, i64 32
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !11
  %i.hf = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.he
  %i.hg = shufflevector <2 x double> %i.gb, <2 x double> %i.gk, <2 x i32> <i32 0, i32 2>
  %i.hh = shufflevector <2 x double> %i.gb, <2 x double> %i.gk, <2 x i32> <i32 1, i32 3>
  %i.hi = fsub <2 x double> %i.hg, %i.hh          ; 3 uses
  %i.hj = shufflevector <2 x double> %foldExtExtBinop537, <2 x double> %i.hi, <2 x i32> <i32 0, i32 3>
  %i.hk = extractelement <2 x double> %i.hi, i64 0
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.hk, double f0x3FE2CF2304755A5E, double %i.hc)
  %i.hm = getelementptr inbounds nuw i8, ptr %.0502507, i64 72
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !11
  %i.ho = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.hn
  %foldExtExtBinop539 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop515
  %i.hp = extractelement <2 x double> %foldExtExtBinop539, i64 0
  %i.hq = fmul double %i.hp, f0x3FE1E3779B97F4A8  ; 2 uses
  %foldExtExtBinop541 = fsub <2 x double> %foldExtExtBinop515, %foldExtExtBinop
  %i.hr = getelementptr inbounds nuw i8, ptr %.0503506, i64 72
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !11
  %i.ht = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.hs
  %i.hu = shufflevector <2 x double> %i.gr, <2 x double> %i.gn, <2 x i32> <i32 1, i32 2>
  %i.hv = shufflevector <2 x double> %i.gr, <2 x double> %i.gn, <2 x i32> <i32 0, i32 3>
  %i.hw = fadd <2 x double> %i.hu, %i.hv          ; 3 uses
  %i.hx = extractelement <2 x double> %i.hw, i64 0
  %i.hy = fmul double %i.hx, f0x3FEE6F0E134454FF
  %i.hz = shufflevector <2 x double> %foldExtExtBinop541, <2 x double> %i.hw, <2 x i32> <i32 0, i32 3>
  %i.ia = insertelement <2 x double> %i.aa, double %i.hy, i64 1
  %i.ib = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> <double 2.500000e-01, double f0x3FE2CF2304755A5E>, <2 x double> %i.ia) ; 3 uses
  %shift543 = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop544 = fadd <2 x double> %shift543, %i.ib
  %i.ic = extractelement <2 x double> %foldExtExtBinop544, i64 0
  %i.id = fsub double %i.ic, %i.hq
  %i.ie = insertelement <2 x double> %i.ib, double %i.hq, i64 1
  %i.if = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> <double f0x3FE2CF2304755A5E, double f0xBFEE6F0E134454FF>, <2 x double> %i.ie) ; 2 uses
  %shift546 = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop547 = fadd <2 x double> %i.if, %shift546
  %i.ig = extractelement <2 x double> %foldExtExtBinop547, i64 0
  %i.ih = getelementptr inbounds nuw i8, ptr %.0503506, i64 32
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !11
  %i.ij = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.ii
  %i.ik = fneg double %i.ha
  %foldExtExtBinop549 = fsub <2 x double> %foldExtExtBinop524, %foldExtExtBinop521
  %i.il = extractelement <2 x double> %foldExtExtBinop549, i64 0
  %i.im = fmul double %i.il, f0x3FE1E3779B97F4A8  ; 2 uses
  %foldExtExtBinop551 = fadd <2 x double> %foldExtExtBinop521, %foldExtExtBinop524 ; 2 uses
  %foldExtExtBinop553 = fadd <2 x double> %i.aa, %foldExtExtBinop551
  %i.in = extractelement <2 x double> %foldExtExtBinop553, i64 0
  %i.io = fneg double %i.in
  %i.ip = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.iq = insertelement <2 x double> %i.ip, double %i.im, i64 1
  %i.ir = getelementptr inbounds nuw i8, ptr %.0503506, i64 40
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !11
  %i.it = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.is
  %i.iu = shufflevector <2 x double> %i.gz, <2 x double> %i.gx, <2 x i32> <i32 1, i32 2>
  %i.iv = shufflevector <2 x double> %i.gz, <2 x double> %i.gx, <2 x i32> <i32 0, i32 3>
  %i.iw = fsub <2 x double> %i.iu, %i.iv          ; 3 uses
  %i.ix = shufflevector <2 x double> %foldExtExtBinop551, <2 x double> %i.iw, <2 x i32> <i32 0, i32 3>
  %i.iy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> <double 2.500000e-01, double f0x3FE2CF2304755A5E>, <2 x double> %i.iq) ; 3 uses
  %i.iz = extractelement <2 x double> %i.iw, i64 0
  %i.ja = fmul double %i.iz, f0x3FE2CF2304755A5E
  %i.jb = insertelement <2 x double> %i.iy, double %i.ja, i64 1
  %i.jc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.jb) ; 2 uses
  %shift555 = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop556 = fsub <2 x double> %i.jc, %shift555
  %i.jd = extractelement <2 x double> %foldExtExtBinop556, i64 0
  %i.je = getelementptr inbounds nuw i8, ptr %.0503506, i64 80
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !11
  %i.jg = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.jf
  %foldExtExtBinop558 = fadd <2 x double> %foldExtExtBinop527, %foldExtExtBinop530 ; 2 uses
  %i.jh = extractelement <2 x double> %foldExtExtBinop558, i64 0
  %i.ji = getelementptr inbounds nuw i8, ptr %.0502507, i64 40
  %i.jj = shufflevector <2 x double> %i.gt, <2 x double> %i.gv, <2 x i32> <i32 1, i32 3>
  %i.jk = shufflevector <2 x double> %i.gt, <2 x double> %i.gv, <2 x i32> <i32 0, i32 2>
  %i.jl = fsub <2 x double> %i.jj, %i.jk          ; 3 uses
  %i.jm = shufflevector <2 x double> %foldExtExtBinop558, <2 x double> %i.jl, <2 x i32> <i32 0, i32 3>
  %i.jn = getelementptr inbounds nuw i8, ptr %.0502507, i64 80
  %foldExtExtBinop560 = fsub <2 x double> %foldExtExtBinop527, %foldExtExtBinop530
  %i.jo = extractelement <2 x double> %foldExtExtBinop560, i64 0
  %i.jp = fmul double %i.jo, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.jq = fneg double %i.jp
  %i.jr = shufflevector <2 x double> %i.jl, <2 x double> %i.dl, <2 x i32> <i32 0, i32 3>
  %i.js = shufflevector <2 x double> %i.fq, <2 x double> %i.gc, <2 x i32> <i32 1, i32 2>
  %i.jt = shufflevector <2 x double> %i.fm, <2 x double> %i.ek, <2 x i32> <i32 1, i32 3>
  %i.ju = fsub <2 x double> %i.js, %i.jt          ; 5 uses
  %i.jv = extractelement <2 x double> %i.ju, i64 1
  %i.jw = fmul double %i.jv, f0xBFEB04BBFF642E86
  %i.jx = shufflevector <2 x double> %i.fh, <2 x double> %i.dl, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.jy = fmul <2 x double> %i.jx, <double f0x3FEB3FF7C925819C, double f0x3FFB04BBFF642E86>
  %i.jz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> <double f0x3FECF457DCDC158C, double f0x3FE1257E3C182B51>, <2 x double> %i.jy) ; 4 uses
  %i.ka = shufflevector <2 x double> %i.eq, <2 x double> %i.fh, <2 x i32> <i32 1, i32 2>
  %i.kb = shufflevector <2 x double> %i.ek, <2 x double> %i.fm, <2 x i32> <i32 0, i32 2>
  %i.kc = fsub <2 x double> %i.ka, %i.kb          ; 7 uses
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> %i.bu, <2 x i32> <i32 0, i32 3>
  %i.ke = shufflevector <2 x double> %i.ju, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x double> %i.ke, <double f0xBFDB3FF7C925819C, double f0xBFC00AEB5DA15BE0>
  %i.kg = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> <double f0x3FFCF457DCDC158C, double f0x3FFFBF675480D903>, <2 x double> %i.kf) ; 4 uses
  %i.ki = extractelement <2 x double> %i.kc, i64 0
  %i.kj = shufflevector <2 x double> %i.bu, <2 x double> %i.kc, <2 x i32> <i32 1, i32 2>
  %i.kk = fmul <2 x double> %i.kj, <double f0x3FF753B603D2B816, double f0xBFE8A80B635B6BEA>
  %i.kl = shufflevector <2 x double> %i.dl, <2 x double> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.km = fmul <2 x double> %i.kl, <double f0x3FC0130A1BE09379, double f0xBFF5E7CF55112014>
  %i.kn = shufflevector <2 x double> %i.ju, <2 x double> %i.kc, <2 x i32> <i32 1, i32 3>
  %i.ko = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kn, <2 x double> <double f0x3FEFEFD5BFE443FE, double f0x3FE753B603D2B816>, <2 x double> %i.km) ; 4 uses
  %i.kp = fmul <2 x double> %i.jx, <double f0x3FD00AEB5DA15BE0, double f0xBFFFEFD5BFE443FE>
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> <double f0x3FEFBF675480D903, double f0x3FB0130A1BE09379>, <2 x double> %i.kp) ; 3 uses
  %i.kr = extractelement <2 x double> %i.kq, i64 1 ; 2 uses
  %i.ks = shufflevector <2 x double> %i.jc, <2 x double> %i.ko, <2 x i32> <i32 1, i32 3>
  %i.kt = shufflevector <2 x double> %i.iy, <2 x double> %i.kq, <2 x i32> <i32 0, i32 2>
  %i.ku = fadd <2 x double> %i.ks, %i.kt          ; 2 uses
  %i.kv = extractelement <2 x double> %i.ku, i64 0
  %i.kw = fadd double %i.im, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %.0502507, i64 8
  %i.ky = extractelement <2 x double> %i.aa, i64 1 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.0503506, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %.0502507, i64 64
  %i.lb = getelementptr inbounds nuw i8, ptr %.0502507, i64 24
  %i.lc = getelementptr inbounds nuw i8, ptr %.0503506, i64 24
  %i.ld = shufflevector <2 x double> %i.jz, <2 x double> %i.kh, <2 x i32> <i32 1, i32 2>
  %i.le = getelementptr inbounds nuw i8, ptr %.0503506, i64 64
  %shift562 = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop563 = fsub <2 x double> %shift562, %i.kq
  %i.lf = extractelement <2 x double> %foldExtExtBinop563, i64 0 ; 2 uses
  %i.lg = fsub double %i.g, %i.k                  ; 2 uses
  %i.lh = fsub double %i.o, %i.s                  ; 2 uses
  %i.li = fadd double %i.lg, %i.lh                ; 2 uses
  %i.lj = insertelement <2 x double> poison, double %i.li, i64 0
  %i.lk = insertelement <2 x double> %i.lj, double %i.ao, i64 1
  %i.ll = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> <double -2.500000e-01, double f0x3FDE6F0E134454FF>, <2 x double> %i.at) ; 5 uses
  %i.lm = fadd double %i.c, %i.li                 ; 2 uses
  %i.ln = extractelement <2 x double> %i.ll, i64 0 ; 2 uses
  %i.lo = insertelement <2 x double> %i.ew, double %i.lm, i64 1
  %i.lp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> <double f0x3FE2CF2304755A5E, double -2.500000e-01>, <2 x double> %i.lo) ; 2 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 0
  store double %i.lq, ptr %i.ds, align 8, !tbaa !13
  %i.lr = fadd double %i.lm, %i.gg
  store double %i.lr, ptr %i.dv, align 8, !tbaa !13
  %i.ls = extractelement <2 x double> %i.lp, i64 1 ; 2 uses
  %i.lt = fadd double %i.gj, %i.ls
  store double %i.lt, ptr %i.dy, align 8, !tbaa !13
  %i.lu = fsub double %i.ls, %i.gj
  store double %i.lu, ptr %i.eb, align 8, !tbaa !13
  %i.lv = fsub double %i.lh, %i.lg
  %i.lw = fmul double %i.lv, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.lx = fadd double %i.lw, %i.ln                ; 2 uses
  %i.ly = insertelement <2 x double> poison, double %i.lx, i64 0 ; 2 uses
  %i.lz = insertelement <2 x double> %i.ly, double %i.hc, i64 1
  %i.ma = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> <double 2.500000e-01, double f0x3FE2CF2304755A5E>, <2 x double> %i.lz) ; 2 uses
  %i.mb = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.mb) ; 2 uses
  %shift565 = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop566 = fadd <2 x double> %i.mc, %shift565
  %i.md = extractelement <2 x double> %foldExtExtBinop566, i64 0
  %i.me = extractelement <2 x double> %i.mc, i64 1
  %i.mf = fsub double %i.me, %i.hl
  %i.mg = fadd double %i.lx, %i.jh
  store double %i.mg, ptr %.0499510, align 8, !tbaa !13
  store double %i.io, ptr %.0500509, align 8, !tbaa !13
  store double %i.md, ptr %i.hf, align 8, !tbaa !13
  store double %i.mf, ptr %i.ho, align 8, !tbaa !13
  store double %i.id, ptr %i.ht, align 8, !tbaa !13
  store double %i.ig, ptr %i.ij, align 8, !tbaa !13
  store double %i.jd, ptr %i.it, align 8, !tbaa !13
  store double %i.kw, ptr %i.jg, align 8, !tbaa !13
  %i.mh = load i64, ptr %i.ji, align 8, !tbaa !11
  %i.mi = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.mh
  %i.mj = load i64, ptr %i.jn, align 8, !tbaa !11
  %i.mk = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.mj
  %i.ml = fsub double %i.ln, %i.lw                ; 2 uses
  %i.mm = insertelement <2 x double> %i.ly, double %i.jq, i64 1
  %i.mn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.mm) ; 2 uses
  %i.mo = shufflevector <2 x double> %i.mn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> splat (double f0x3FE2CF2304755A5E), <2 x double> %i.mo) ; 2 uses
  %shift568 = shufflevector <2 x double> %i.mn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop569 = fadd <2 x double> %i.mp, %shift568
  %10 = extractelement <2 x double> %foldExtExtBinop569, i64 0
  store double %10, ptr %i.mi, align 8, !tbaa !13
  %i.mq = extractelement <2 x double> %i.mp, i64 1
  %i.mr = fadd double %i.jp, %i.mq
  %i.ms = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.mt = extractelement <2 x double> %i.ll, i64 1
  %i.mu = insertelement <2 x double> %i.ms, double %i.jw, i64 1
  %i.mv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> <double f0xBFEE6F0E134454FF, double f0x3FF1257E3C182B51>, <2 x double> %i.mu) ; 3 uses
  %i.mw = extractelement <2 x double> %i.mv, i64 0
  store double %i.mw, ptr %i.mk, align 8, !tbaa !13
  %i.mx = shufflevector <2 x double> %i.ll, <2 x double> %i.kc, <2 x i32> <i32 1, i32 3>
  %i.my = fmul <2 x double> %i.mx, <double f0xBFC0130A1BE09379, double f0xBFDED50D5CBFA951>
  %i.mz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kd, <2 x double> <double f0x3FEFEFD5BFE443FE, double f0x3FFC0AB44E81C059>, <2 x double> %i.my) ; 3 uses
  %shift568.a = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop569.a = fsub <2 x double> %i.mz, %shift568.a ; 2 uses
  %shift571 = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop572 = fsub <2 x double> %shift571, %i.jz ; 2 uses
  %i.na = shufflevector <2 x double> %i.ll, <2 x double> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.nb = fmul <2 x double> %i.na, <double f0x3FFFEFD5BFE443FE, double f0x3FEED50D5CBFA951>
  %i.nc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> <double f0x3FB0130A1BE09379, double f0x3FEC0AB44E81C059>, <2 x double> %i.nb) ; 3 uses
  %shift574 = shufflevector <2 x double> %i.jz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop575 = fadd <2 x double> %i.nc, %shift574 ; 2 uses
  %shift577 = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop578 = fadd <2 x double> %shift577, %i.kh ; 2 uses
  %i.nd = shufflevector <2 x double> %i.kc, <2 x double> %i.ll, <2 x i32> <i32 1, i32 3>
  %i.ne = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nd, <2 x double> <double f0x3FE5E7CF55112014, double f0x3FF465C6FEB501BC>, <2 x double> %i.kk) ; 3 uses
  %shift580 = shufflevector <2 x double> %i.ne, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop581 = fsub <2 x double> %shift580, %i.ko ; 2 uses
  %i.nf = load i64, ptr %i.kx, align 8, !tbaa !11
  %i.ng = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.nf
  %i.nh = load i64, ptr %i.kz, align 8, !tbaa !11
  %i.ni = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.nh
  %foldExtExtBinop583 = fsub <2 x double> %foldExtExtBinop578, %foldExtExtBinop575
  %i.nj = extractelement <2 x double> %foldExtExtBinop583, i64 0
  %i.nk = fmul double %i.nj, f0x3FE1E3779B97F4A8  ; 2 uses
  %foldExtExtBinop585 = fadd <2 x double> %foldExtExtBinop578, %foldExtExtBinop575
  %i.nl = insertelement <2 x double> poison, double %i.ml, i64 0 ; 2 uses
  %i.nm = insertelement <2 x double> %i.nl, double %i.nk, i64 1
  %i.nn = load i64, ptr %i.la, align 8, !tbaa !11
  %i.no = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.nn
  %i.np = shufflevector <2 x double> %i.mv, <2 x double> %i.jz, <2 x i32> <i32 1, i32 2>
  %i.nq = fadd <2 x double> %i.mz, %i.np          ; 3 uses
  %i.nr = shufflevector <2 x double> %foldExtExtBinop585, <2 x double> %i.nq, <2 x i32> <i32 0, i32 3>
  %i.ns = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nr, <2 x double> <double -2.500000e-01, double f0x3FE2CF2304755A5E>, <2 x double> %i.nm) ; 3 uses
  %i.nt = extractelement <2 x double> %i.nq, i64 0
  %i.nu = fmul double %i.nt, f0x3FE2CF2304755A5E
  %i.nv = insertelement <2 x double> %i.ns, double %i.nu, i64 1
  %i.nw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nq, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.nv) ; 2 uses
  %shift587 = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop588 = fsub <2 x double> %i.nw, %shift587
  %i.nx = extractelement <2 x double> %foldExtExtBinop588, i64 0
  %shift593 = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ny = fadd <2 x double> %i.ns, %shift593
  %i.nz = extractelement <2 x double> %i.ny, i64 0
  %i.oa = fadd double %i.nk, %i.nz
  %i.ob = load i64, ptr %i.lb, align 8, !tbaa !11
  %i.oc = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.ob
  %foldExtExtBinop590 = fadd <2 x double> %foldExtExtBinop572, %foldExtExtBinop569.a
  %i.od = extractelement <2 x double> %foldExtExtBinop590, i64 0
  %i.oe = fmul double %i.od, f0x3FE1E3779B97F4A8  ; 2 uses
  %foldExtExtBinop592 = fsub <2 x double> %foldExtExtBinop569.a, %foldExtExtBinop572
  %i.of = extractelement <2 x double> %foldExtExtBinop592, i64 0
  %i.og = load i64, ptr %i.lc, align 8, !tbaa !11
  %i.oh = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.og
  %i.oi = fsub <2 x double> %i.nc, %i.ld          ; 3 uses
  %i.oj = tail call double @llvm.fmuladd.f64(double %i.of, double 2.500000e-01, double %i.ky) ; 2 uses
  %i.ok = extractelement <2 x double> %i.oi, i64 0
  %i.ol = tail call double @llvm.fmuladd.f64(double %i.ok, double f0x3FE2CF2304755A5E, double %i.oe)
  %i.om = fadd double %i.oj, %i.ol
  %i.on = extractelement <2 x double> %i.oi, i64 1
  %i.oo = tail call double @llvm.fmuladd.f64(double %i.on, double f0xBFEE6F0E134454FF, double %i.om)
  %i.op = fneg double %i.oe
  %i.oq = insertelement <2 x double> poison, double %i.op, i64 0
  %i.or = insertelement <2 x double> %i.oq, double %i.oj, i64 1
  %i.os = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oi, <2 x double> <double f0x3FEE6F0E134454FF, double f0x3FE2CF2304755A5E>, <2 x double> %i.or) ; 2 uses
  %shift594 = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop595 = fadd <2 x double> %shift594, %i.os
  %i.ot = extractelement <2 x double> %foldExtExtBinop595, i64 0
  %i.ou = load i64, ptr %i.le, align 8, !tbaa !11
  %i.ov = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %.0502507, i64 48
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !11
  %i.oy = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.ox
  %i.oz = shufflevector <2 x double> %i.kh, <2 x double> %i.ko, <2 x i32> <i32 1, i32 2>
  %i.pa = fadd <2 x double> %i.ne, %i.oz          ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.0502507, i64 88
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !11
  %i.pd = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %i.pc
  %i.pe = shufflevector <2 x double> %i.pa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.pf = getelementptr inbounds nuw i8, ptr %.0503506, i64 48
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !11
  %i.ph = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.pg
  %shift597 = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop598 = fsub <2 x double> %shift597, %i.ne ; 2 uses
  %foldExtExtBinop600 = fadd <2 x double> %foldExtExtBinop598, %foldExtExtBinop581
  %i.pi = extractelement <2 x double> %foldExtExtBinop600, i64 0 ; 2 uses
  %i.pj = fmul double %i.mt, f0x3FF8A80B635B6BEA
  %i.pk = tail call double @llvm.fmuladd.f64(double %i.ki, double f0x3FE465C6FEB501BC, double %i.pj) ; 2 uses
  %i.pl = fsub double %i.kr, %i.pk                ; 2 uses
  %i.pm = fadd double %i.lf, %i.pl                ; 2 uses
  %i.pn = fadd double %i.pk, %i.kr                ; 2 uses
  %i.po = fadd double %i.ml, %i.pm
  store double %i.po, ptr %i.ng, align 8, !tbaa !13
  %i.pp = fsub double %i.pi, %i.ky
  store double %i.pp, ptr %i.ni, align 8, !tbaa !13
  store double %i.nx, ptr %i.no, align 8, !tbaa !13
  store double %i.oa, ptr %i.oc, align 8, !tbaa !13
  store double %i.oo, ptr %i.oh, align 8, !tbaa !13
  store double %i.ot, ptr %i.ov, align 8, !tbaa !13
  %i.pq = fsub double %i.lf, %i.pl
  %i.pr = fmul double %i.pq, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.ps = insertelement <2 x double> poison, double %i.pm, i64 0
  %i.pt = insertelement <2 x double> %i.nl, double %i.pr, i64 1
  %i.pu = shufflevector <2 x double> %i.ps, <2 x double> %i.pa, <2 x i32> <i32 0, i32 2>
  %i.pv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pu, <2 x double> <double -2.500000e-01, double f0x3FE2CF2304755A5E>, <2 x double> %i.pt) ; 3 uses
  %i.pw = shufflevector <2 x double> %i.pv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.px = insertelement <2 x double> %i.pw, double %i.pr, i64 0
  %i.py = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pa, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.px) ; 2 uses
  %i.pz = fmul double %i.pi, 2.500000e-01
  %foldExtExtBinop602 = fsub <2 x double> %foldExtExtBinop598, %foldExtExtBinop581
  %i.qa = fadd double %i.ky, %i.pz                ; 2 uses
  %i.qb = fneg double %i.qa
  %i.qc = insertelement <2 x double> %i.pe, double %i.pn, i64 1
  %i.qd = insertelement <2 x double> %i.pv, double %i.qb, i64 1
  %i.qe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qc, <2 x double> <double f0x3FE2CF2304755A5E, double f0x3FEE6F0E134454FF>, <2 x double> %i.qd) ; 2 uses
  %foldExtExtBinop604 = fadd <2 x double> %i.py, %i.qe
  %i.qf = extractelement <2 x double> %foldExtExtBinop604, i64 0
  %i.qg = insertelement <2 x double> %foldExtExtBinop602, double %i.pn, i64 1
  %i.qh = fmul <2 x double> %i.qg, <double f0x3FE1E3779B97F4A8, double f0x3FE2CF2304755A5E> ; 2 uses
  %i.qi = shufflevector <2 x double> %i.ku, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qi, <2 x double> <double f0x3FE2CF2304755A5E, double f0x3FEE6F0E134454FF>, <2 x double> %i.qh) ; 2 uses
  %i.qk = shufflevector <2 x double> %i.py, <2 x double> %i.qe, <2 x i32> <i32 1, i32 3>
  %i.ql = shufflevector <2 x double> %i.pv, <2 x double> %i.qj, <2 x i32> <i32 1, i32 2>
  %i.qm = fsub <2 x double> %i.qk, %i.ql          ; 2 uses
  %i.qn = extractelement <2 x double> %i.qm, i64 0
  store double %i.qn, ptr %i.oy, align 8, !tbaa !13
  store double %i.qf, ptr %i.pd, align 8, !tbaa !13
  %i.qo = extractelement <2 x double> %i.qm, i64 1
  store double %i.qo, ptr %i.ph, align 8, !tbaa !13
  %shift606 = shufflevector <2 x double> %i.qj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop607 = fadd <2 x double> %shift606, %i.qh
  %i.qp = extractelement <2 x double> %foldExtExtBinop607, i64 0
  %i.qq = fsub double %i.qp, %i.qa
  %i.qr = getelementptr inbounds nuw i8, ptr %.0503506, i64 88
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !11
  %i.qt = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %i.qs
  store double %i.qq, ptr %i.qt, align 8, !tbaa !13
  %i.qu = add nsw i64 %.0504505, -1
  %i.qv = getelementptr inbounds [8 x i8], ptr %.0512, i64 %8
  %i.qw = getelementptr inbounds [8 x i8], ptr %.0498511, i64 %8
  %i.qx = getelementptr inbounds [8 x i8], ptr %.0499510, i64 %9
  %i.qy = getelementptr inbounds [8 x i8], ptr %.0500509, i64 %9
  %i.qz = getelementptr inbounds [8 x i8], ptr %.0501508, i64 %i.b
  %i.ra = getelementptr inbounds [8 x i8], ptr %.0502507, i64 %i.b
  %i.rb = getelementptr inbounds [8 x i8], ptr %.0503506, i64 %i.b
  %i.rc = icmp samesign ugt i64 %.0504505, 1
  br i1 %i.rc, label %bb.b, label %._crit_edge, !llvm.loop !9

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
