Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/utils_dcraw?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN6LibRaw13pseudoinverseEPA3_dS1_i:bb.a
  store double %i.is, ptr %2, align 8, !tbaa !79
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store double 0.000000e+00, ptr %i.it, align 8, !tbaa !79
  %i.iu = load double, ptr %1, align 8, !tbaa !79
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.iu, double 0.000000e+00) ; 2 uses
  store double %i.iv, ptr %i.it, align 8, !tbaa !79
  %i.iw = load double, ptr %i.in, align 8, !tbaa !79
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.iw, double %i.iv) ; 2 uses
  store double %i.ix, ptr %i.it, align 8, !tbaa !79
  %i.iy = load double, ptr %i.iq, align 8, !tbaa !79
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.iy, double %i.ix)
  store double %i.iz, ptr %i.it, align 8, !tbaa !79
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store double 0.000000e+00, ptr %i.ja, align 8, !tbaa !79
  %i.jb = load double, ptr %1, align 8, !tbaa !79
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.if, double %i.jb, double 0.000000e+00) ; 2 uses
  store double %i.jc, ptr %i.ja, align 8, !tbaa !79
  %i.jd = load double, ptr %i.in, align 8, !tbaa !79
  %i.je = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.jd, double %i.jc) ; 2 uses
  store double %i.je, ptr %i.ja, align 8, !tbaa !79
  %i.jf = load double, ptr %i.iq, align 8, !tbaa !79
  %i.jg = tail call double @llvm.fmuladd.f64(double %.sroa.261.3, double %i.jf, double %i.je)
  store double %i.jg, ptr %i.ja, align 8, !tbaa !79
  %exitcond147.not = icmp eq i32 %3, 1
  br i1 %exitcond147.not, label %._crit_edge, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store double 0.000000e+00, ptr %i.jh, align 8, !tbaa !79
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !79
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.id, double %i.jj, double 0.000000e+00) ; 2 uses
  store double %i.jk, ptr %i.jh, align 8, !tbaa !79
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !79
  %i.jn = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.jm, double %i.jk) ; 2 uses
  store double %i.jn, ptr %i.jh, align 8, !tbaa !79
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !79
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.jp, double %i.jn)
  store double %i.jq, ptr %i.jh, align 8, !tbaa !79
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store double 0.000000e+00, ptr %i.jr, align 8, !tbaa !79
  %i.js = load double, ptr %i.ji, align 8, !tbaa !79
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.js, double 0.000000e+00) ; 2 uses
  store double %i.jt, ptr %i.jr, align 8, !tbaa !79
  %i.ju = load double, ptr %i.jl, align 8, !tbaa !79
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.ju, double %i.jt) ; 2 uses
  store double %i.jv, ptr %i.jr, align 8, !tbaa !79
  %i.jw = load double, ptr %i.jo, align 8, !tbaa !79
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.jw, double %i.jv)
  store double %i.jx, ptr %i.jr, align 8, !tbaa !79
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  store double 0.000000e+00, ptr %i.jy, align 8, !tbaa !79
  %i.jz = load double, ptr %i.ji, align 8, !tbaa !79
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.if, double %i.jz, double 0.000000e+00) ; 2 uses
  store double %i.ka, ptr %i.jy, align 8, !tbaa !79
  %i.kb = load double, ptr %i.jl, align 8, !tbaa !79
  %i.kc = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.kb, double %i.ka) ; 2 uses
  store double %i.kc, ptr %i.jy, align 8, !tbaa !79
  %i.kd = load double, ptr %i.jo, align 8, !tbaa !79
  %i.ke = tail call double @llvm.fmuladd.f64(double %.sroa.261.3, double %i.kd, double %i.kc)
  store double %i.ke, ptr %i.jy, align 8, !tbaa !79
  %exitcond147.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond147.not.1, label %._crit_edge, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store double 0.000000e+00, ptr %i.kf, align 8, !tbaa !79
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !79
  %i.ki = tail call double @llvm.fmuladd.f64(double %i.id, double %i.kh, double 0.000000e+00) ; 2 uses
  store double %i.ki, ptr %i.kf, align 8, !tbaa !79
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !79
  %i.kl = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.kk, double %i.ki) ; 2 uses
  store double %i.kl, ptr %i.kf, align 8, !tbaa !79
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !79
  %i.ko = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.kn, double %i.kl)
  store double %i.ko, ptr %i.kf, align 8, !tbaa !79
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  store double 0.000000e+00, ptr %i.kp, align 8, !tbaa !79
  %i.kq = load double, ptr %i.kg, align 8, !tbaa !79
  %i.kr = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.kq, double 0.000000e+00) ; 2 uses
  store double %i.kr, ptr %i.kp, align 8, !tbaa !79
  %i.ks = load double, ptr %i.kj, align 8, !tbaa !79
  %i.kt = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.ks, double %i.kr) ; 2 uses
  store double %i.kt, ptr %i.kp, align 8, !tbaa !79
  %i.ku = load double, ptr %i.km, align 8, !tbaa !79
  %i.kv = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.ku, double %i.kt)
  store double %i.kv, ptr %i.kp, align 8, !tbaa !79
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  store double 0.000000e+00, ptr %i.kw, align 8, !tbaa !79
  %i.kx = load double, ptr %i.kg, align 8, !tbaa !79
  %i.ky = tail call double @llvm.fmuladd.f64(double %i.if, double %i.kx, double 0.000000e+00) ; 2 uses
  store double %i.ky, ptr %i.kw, align 8, !tbaa !79
  %i.kz = load double, ptr %i.kj, align 8, !tbaa !79
  %i.la = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.kz, double %i.ky) ; 2 uses
  store double %i.la, ptr %i.kw, align 8, !tbaa !79
  %i.lb = load double, ptr %i.km, align 8, !tbaa !79
  %i.lc = tail call double @llvm.fmuladd.f64(double %.sroa.261.3, double %i.lb, double %i.la)
  store double %i.lc, ptr %i.kw, align 8, !tbaa !79
  %exitcond147.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond147.not.2, label %._crit_edge, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store double 0.000000e+00, ptr %i.ld, align 8, !tbaa !79
  %i.lf = load double, ptr %i.le, align 8, !tbaa !79
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.id, double %i.lf, double 0.000000e+00) ; 2 uses
  store double %i.lg, ptr %i.ld, align 8, !tbaa !79
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.li = load double, ptr %i.lh, align 8, !tbaa !79
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.li, double %i.lg) ; 2 uses
  store double %i.lj, ptr %i.ld, align 8, !tbaa !79
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !79
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.ll, double %i.lj)
  store double %i.lm, ptr %i.ld, align 8, !tbaa !79
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  store double 0.000000e+00, ptr %i.ln, align 8, !tbaa !79
  %i.lo = load double, ptr %i.le, align 8, !tbaa !79
  %i.lp = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.lo, double 0.000000e+00) ; 2 uses
  store double %i.lp, ptr %i.ln, align 8, !tbaa !79
  %i.lq = load double, ptr %i.lh, align 8, !tbaa !79
  %i.lr = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.lq, double %i.lp) ; 2 uses
  store double %i.lr, ptr %i.ln, align 8, !tbaa !79
  %i.ls = load double, ptr %i.lk, align 8, !tbaa !79
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.ls, double %i.lr)
  store double %i.lt, ptr %i.ln, align 8, !tbaa !79
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  store double 0.000000e+00, ptr %i.lu, align 8, !tbaa !79
  %i.lv = load double, ptr %i.le, align 8, !tbaa !79
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.if, double %i.lv, double 0.000000e+00) ; 2 uses
  store double %i.lw, ptr %i.lu, align 8, !tbaa !79
  %i.lx = load double, ptr %i.lh, align 8, !tbaa !79
  %i.ly = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.lx, double %i.lw) ; 2 uses
  store double %i.ly, ptr %i.lu, align 8, !tbaa !79
  %i.lz = load double, ptr %i.lk, align 8, !tbaa !79
  %i.ma = tail call double @llvm.fmuladd.f64(double %.sroa.261.3, double %i.lz, double %i.ly)
  store double %i.ma, ptr %i.lu, align 8, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader71
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw13cam_xyz_coeffEPA4_fPA3_d(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = alloca [4 x [3 x double]], align 16      ; 26 uses
  %i.b = alloca [4 x [3 x double]], align 16      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.d = load i32, ptr %i.c, align 4, !tbaa !129  ; 18 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader56.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  call void @_ZN6LibRaw13pseudoinverseEPA3_dS1_i(ptr nonnull align 8 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.d)
  br label %.split75

.preheader56.preheader:                           ; preds = %bb.a
  %.pre = load double, ptr @_ZN16LibRaw_constants7xyz_rgbE, align 16, !tbaa !79 ; 4 uses
  %.pre105 = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 24), align 8, !tbaa !79 ; 4 uses
  %.pre106 = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 48), align 16, !tbaa !79 ; 4 uses
  %.pre108 = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 32), align 16, !tbaa !79
  %.pre109 = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 56), align 8, !tbaa !79
  %.pre107 = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 8), align 8, !tbaa !79 ; 4 uses
  %i.f = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 16), align 16
  %i.g = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 40), align 8
  %.pre112 = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN16LibRaw_constants7xyz_rgbE, i64 64), align 16, !tbaa !79 ; 4 uses
  %i.h = insertelement <2 x double> %i.f, double %.pre108, i64 1 ; 4 uses
  %i.i = insertelement <2 x double> %i.g, double %.pre109, i64 1 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !79 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load <2 x double>, ptr %2, align 8, !tbaa !79 ; 4 uses
  %i.o = extractelement <2 x double> %i.n, i64 0  ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %.pre, double 0.000000e+00)
  %i.q = extractelement <2 x double> %i.n, i64 1
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %.pre105, double %i.p)
  %i.s = tail call double @llvm.fmuladd.f64(double %i.k, double %.pre106, double %i.r)
  store double %i.s, ptr %i.a, align 16, !tbaa !79
  %i.t = tail call double @llvm.fmuladd.f64(double %i.o, double %.pre107, double 0.000000e+00)
  %i.u = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.t, i64 1
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.h, <2 x double> %i.u)
  %i.w = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.x = insertelement <2 x double> %i.w, double %i.k, i64 1
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.i, <2 x double> %i.v) ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 1
  store double %i.z, ptr %i.l, align 8, !tbaa !79
  %i.aa = extractelement <2 x double> %i.y, i64 0
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.k, double %.pre112, double %i.aa) ; 3 uses
  store double %i.ab, ptr %i.m, align 16, !tbaa !79
  %exitcond.not = icmp eq i32 %i.d, 1
  br i1 %exitcond.not, label %.preheader54.lr.ph, label %.preheader56.1

.preheader56.1:                                   ; preds = %.preheader56.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !79 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ai = load <2 x double>, ptr %i.ad, align 8, !tbaa !79 ; 4 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0 ; 2 uses
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %.pre, double 0.000000e+00)
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %.pre105, double %i.ak)
  %i.an = tail call double @llvm.fmuladd.f64(double %i.af, double %.pre106, double %i.am)
  store double %i.an, ptr %i.ac, align 8, !tbaa !79
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.aj, double %.pre107, double 0.000000e+00)
  %i.ap = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ao, i64 1
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.h, <2 x double> %i.ap)
  %i.ar = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.as = insertelement <2 x double> %i.ar, double %i.af, i64 1
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.i, <2 x double> %i.aq) ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 1
  store double %i.au, ptr %i.ag, align 16, !tbaa !79
  %i.av = extractelement <2 x double> %i.at, i64 0
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.af, double %.pre112, double %i.av) ; 4 uses
  store double %i.aw, ptr %i.ah, align 8, !tbaa !79
  %exitcond.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not.1, label %.preheader54.lr.ph, label %.preheader56.2

.preheader56.2:                                   ; preds = %.preheader56.1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ba = load double, ptr %i.az, align 8, !tbaa !79 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bd = load <2 x double>, ptr %i.ay, align 8, !tbaa !79 ; 4 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.be, double %.pre, double 0.000000e+00)
  %i.bg = extractelement <2 x double> %i.bd, i64 1
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %.pre105, double %i.bf)
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.ba, double %.pre106, double %i.bh)
  store double %i.bi, ptr %i.ax, align 16, !tbaa !79
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.be, double %.pre107, double 0.000000e+00)
  %i.bk = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bj, i64 1
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.h, <2 x double> %i.bk)
  %i.bm = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bn = insertelement <2 x double> %i.bm, double %i.ba, i64 1
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.i, <2 x double> %i.bl) ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 1
  store double %i.bp, ptr %i.bb, align 8, !tbaa !79
  %i.bq = extractelement <2 x double> %i.bo, i64 0
  %i.br = tail call double @llvm.fmuladd.f64(double %i.ba, double %.pre112, double %i.bq) ; 3 uses
  store double %i.br, ptr %i.bc, align 16, !tbaa !79
  %exitcond.not.2 = icmp eq i32 %i.d, 3
  br i1 %exitcond.not.2, label %.preheader54.lr.ph, label %.preheader56.3

.preheader56.3:                                   ; preds = %.preheader56.2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !79 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.by = load <2 x double>, ptr %i.bt, align 8, !tbaa !79 ; 4 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0 ; 2 uses
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bz, double %.pre, double 0.000000e+00)
  %i.cb = extractelement <2 x double> %i.by, i64 1
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %.pre105, double %i.ca)
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.bv, double %.pre106, double %i.cc)
  store double %i.cd, ptr %i.bs, align 8, !tbaa !79
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.bz, double %.pre107, double 0.000000e+00)
  %i.cf = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ce, i64 1
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.h, <2 x double> %i.cf)
  %i.ch = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = insertelement <2 x double> %i.ch, double %i.bv, i64 1
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.i, <2 x double> %i.cg) ; 2 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 1
  store double %i.ck, ptr %i.bw, align 16, !tbaa !79
  %i.cl = extractelement <2 x double> %i.cj, i64 0
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.bv, double %.pre112, double %i.cl) ; 2 uses
  store double %i.cm, ptr %i.bx, align 8, !tbaa !79
  br label %.preheader54.lr.ph

.preheader54.lr.ph:                               ; preds = %.preheader56.3, %.preheader56.2, %.preheader56.1, %.preheader56.preheader
  %3 = phi double [ %i.cm, %.preheader56.3 ], [ undef, %.preheader56.2 ], [ undef, %.preheader56.1 ], [ undef, %.preheader56.preheader ] ; 2 uses
  %4 = phi double [ %i.br, %.preheader56.3 ], [ %i.br, %.preheader56.2 ], [ undef, %.preheader56.1 ], [ undef, %.preheader56.preheader ] ; 2 uses
  %5 = phi double [ %i.aw, %.preheader56.3 ], [ %i.aw, %.preheader56.2 ], [ %i.aw, %.preheader56.1 ], [ undef, %.preheader56.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.co = load <2 x double>, ptr %i.a, align 16, !tbaa !79 ; 3 uses
  %i.cp = extractelement <2 x double> %i.co, i64 0
  %i.cq = fadd double %i.cp, 0.000000e+00
  %i.cr = extractelement <2 x double> %i.co, i64 1
  %i.cs = fadd double %i.cq, %i.cr
  %i.ct = fadd double %i.cs, %i.ab                ; 4 uses
  %i.cu = fcmp ogt double %i.ct, 1.000000e-05
  br i1 %i.cu, label %.preheader52, label %.preheader53

.preheader53:                                     ; preds = %.preheader54.lr.ph
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !tbaa !79
  br label %bb.b

.preheader52:                                     ; preds = %.preheader54.lr.ph
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cv = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fdiv <2 x double> %i.co, %i.cw
  store <2 x double> %i.cx, ptr %i.a, align 16, !tbaa !79
  %i.cy = fdiv double %i.ab, %i.ct
  store double %i.cy, ptr %6, align 16, !tbaa !79
  %i.cz = fdiv double 1.000000e+00, %i.ct
  %i.da = fptrunc double %i.cz to float
  br label %bb.b

bb.b:                                             ; preds = %.preheader52, %.preheader53
  %.sink = phi float [ %i.da, %.preheader52 ], [ 1.000000e+00, %.preheader53 ]
  store float %.sink, ptr %i.cn, align 4, !tbaa !76
  %exitcond95.not = icmp eq i32 %i.d, 1
  br i1 %exitcond95.not, label %._crit_edge, label %.preheader54.1

.preheader54.1:                                   ; preds = %bb.b
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.dc = load <2 x double>, ptr %i.db, align 8, !tbaa !79 ; 3 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  %i.de = fadd double %i.dd, 0.000000e+00
  %i.df = extractelement <2 x double> %i.dc, i64 1
  %i.dg = fadd double %i.de, %i.df
  %i.dh = fadd double %i.dg, %5                   ; 4 uses
  %i.di = fcmp ogt double %i.dh, 1.000000e-05
  br i1 %i.di, label %.preheader52.1, label %.preheader53.1

.preheader53.1:                                   ; preds = %.preheader54.1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false), !tbaa !79
  br label %bb.c

.preheader52.1:                                   ; preds = %.preheader54.1
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.dj = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = fdiv <2 x double> %i.dc, %i.dk
  store <2 x double> %i.dl, ptr %i.db, align 8, !tbaa !79
  %i.dm = fdiv double %5, %i.dh
  store double %i.dm, ptr %7, align 8, !tbaa !79
  %i.dn = fdiv double 1.000000e+00, %i.dh
  %i.do = fptrunc double %i.dn to float
  br label %bb.c

bb.c:                                             ; preds = %.preheader52.1, %.preheader53.1
  %.sink.1 = phi float [ %i.do, %.preheader52.1 ], [ 1.000000e+00, %.preheader53.1 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 153272
  store float %.sink.1, ptr %i.dp, align 8, !tbaa !76
  %exitcond95.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond95.not.1, label %._crit_edge, label %.preheader54.2

.preheader54.2:                                   ; preds = %bb.c
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.dr = load <2 x double>, ptr %i.dq, align 16, !tbaa !79 ; 3 uses
  %i.ds = extractelement <2 x double> %i.dr, i64 0
  %i.dt = fadd double %i.ds, 0.000000e+00
  %i.du = extractelement <2 x double> %i.dr, i64 1
  %i.dv = fadd double %i.dt, %i.du
  %i.dw = fadd double %i.dv, %4                   ; 4 uses
  %i.dx = fcmp ogt double %i.dw, 1.000000e-05
  br i1 %i.dx, label %.preheader52.2, label %.preheader53.2

.preheader53.2:                                   ; preds = %.preheader54.2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false), !tbaa !79
  br label %bb.d

.preheader52.2:                                   ; preds = %.preheader54.2
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.dy = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fdiv <2 x double> %i.dr, %i.dz
  store <2 x double> %i.ea, ptr %i.dq, align 16, !tbaa !79
  %i.eb = fdiv double %4, %i.dw
  store double %i.eb, ptr %8, align 16, !tbaa !79
  %i.ec = fdiv double 1.000000e+00, %i.dw
  %i.ed = fptrunc double %i.ec to float
  br label %bb.d

bb.d:                                             ; preds = %.preheader52.2, %.preheader53.2
  %.sink.2 = phi float [ %i.ed, %.preheader52.2 ], [ 1.000000e+00, %.preheader53.2 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 153276
  store float %.sink.2, ptr %i.ee, align 4, !tbaa !76
  %exitcond95.not.2 = icmp eq i32 %i.d, 3
  br i1 %exitcond95.not.2, label %._crit_edge, label %.preheader54.3

.preheader54.3:                                   ; preds = %bb.d
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  %i.eg = load <2 x double>, ptr %i.ef, align 8, !tbaa !79 ; 3 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 0
  %i.ei = fadd double %i.eh, 0.000000e+00
  %i.ej = extractelement <2 x double> %i.eg, i64 1
  %i.ek = fadd double %i.ei, %i.ej
  %i.el = fadd double %i.ek, %3                   ; 4 uses
  %i.em = fcmp ogt double %i.el, 1.000000e-05
  br i1 %i.em, label %.preheader52.3, label %.preheader53.3

.preheader53.3:                                   ; preds = %.preheader54.3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false), !tbaa !79
  br label %bb.e

.preheader52.3:                                   ; preds = %.preheader54.3
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.en = insertelement <2 x double> poison, double %i.el, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fdiv <2 x double> %i.eg, %i.eo
  store <2 x double> %i.ep, ptr %i.ef, align 8, !tbaa !79
  %i.eq = fdiv double %3, %i.el
  store double %i.eq, ptr %9, align 8, !tbaa !79
  %i.er = fdiv double 1.000000e+00, %i.el
  %i.es = fptrunc double %i.er to float
  br label %bb.e

bb.e:                                             ; preds = %.preheader52.3, %.preheader53.3
  %.sink.3 = phi float [ %i.es, %.preheader52.3 ], [ 1.000000e+00, %.preheader53.3 ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 153280
  store float %.sink.3, ptr %i.et, align 8, !tbaa !76
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  call void @_ZN6LibRaw13pseudoinverseEPA3_dS1_i(ptr nonnull align 8 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.d)
  %i.eu = load double, ptr %i.b, align 16, !tbaa !79
  %i.ev = fptrunc double %i.eu to float
  store float %i.ev, ptr %1, align 4, !tbaa !76
  %exitcond100.not = icmp eq i32 %i.d, 1
  br i1 %exitcond100.not, label %._crit_edge71, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %gep73.1115 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ew = load double, ptr %gep73.1115, align 8, !tbaa !79
  %i.ex = fptrunc double %i.ew to float
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ex, ptr %i.ey, align 4, !tbaa !76
  %exitcond100.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond100.not.1, label %._crit_edge71, label %bb.g

bb.g:                                             ; preds = %bb.f
  %gep73.2118 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ez = load double, ptr %gep73.2118, align 16, !tbaa !79
  %i.fa = fptrunc double %i.ez to float
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.fa, ptr %i.fb, align 4, !tbaa !76
  %exitcond100.not.2 = icmp eq i32 %i.d, 3
  br i1 %exitcond100.not.2, label %._crit_edge71, label %bb.h

bb.h:                                             ; preds = %bb.g
  %gep73.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fc = load double, ptr %gep73.3, align 8, !tbaa !79
  %i.fd = fptrunc double %i.fc to float
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.fd, ptr %i.fe, align 4, !tbaa !76
  br label %._crit_edge71

._crit_edge71:                                    ; preds = %._crit_edge, %bb.f, %bb.g, %bb.h
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  %invariant.gep72.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fg = load double, ptr %invariant.gep72.1, align 8, !tbaa !79
  %i.fh = fptrunc double %i.fg to float
  store float %i.fh, ptr %i.ff, align 4, !tbaa !76
  %exitcond100.1.not = icmp eq i32 %i.d, 1
  br i1 %exitcond100.1.not, label %._crit_edge71.1, label %bb.i

bb.i:                                             ; preds = %._crit_edge71
  %gep73.1.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fi = load double, ptr %gep73.1.1, align 16, !tbaa !79
  %i.fj = fptrunc double %i.fi to float
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.fj, ptr %i.fk, align 4, !tbaa !76
  %exitcond100.1.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond100.1.not.1, label %._crit_edge71.1, label %bb.j

bb.j:                                             ; preds = %bb.i
  %gep73.1.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fl = load double, ptr %gep73.1.2, align 8, !tbaa !79
  %i.fm = fptrunc double %i.fl to float
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.fm, ptr %i.fn, align 4, !tbaa !76
  %exitcond100.1.not.2 = icmp eq i32 %i.d, 3
  br i1 %exitcond100.1.not.2, label %._crit_edge71.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %gep73.1.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.fo = load double, ptr %gep73.1.3, align 16, !tbaa !79
  %i.fp = fptrunc double %i.fo to float
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.fp, ptr %i.fq, align 4, !tbaa !76
  br label %._crit_edge71.1

._crit_edge71.1:                                  ; preds = %._crit_edge71, %bb.i, %bb.j, %bb.k
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %invariant.gep72.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fs = load double, ptr %invariant.gep72.2, align 16, !tbaa !79
  %i.ft = fptrunc double %i.fs to float
  store float %i.ft, ptr %i.fr, align 4, !tbaa !76
  %exitcond100.2.not = icmp eq i32 %i.d, 1
  br i1 %exitcond100.2.not, label %.split75, label %bb.l

bb.l:                                             ; preds = %._crit_edge71.1
  %gep73.2.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.fu = load double, ptr %gep73.2.1, align 8, !tbaa !79
  %i.fv = fptrunc double %i.fu to float
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.fv, ptr %i.fw, align 4, !tbaa !76
  %exitcond100.2.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond100.2.not.1, label %.split75, label %bb.m

bb.m:                                             ; preds = %bb.l
  %gep73.2.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.fx = load double, ptr %gep73.2.2, align 16, !tbaa !79
  %i.fy = fptrunc double %i.fx to float
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.fy, ptr %i.fz, align 4, !tbaa !76
  %exitcond100.2.not.2 = icmp eq i32 %i.d, 3
  br i1 %exitcond100.2.not.2, label %.split75, label %bb.n

bb.n:                                             ; preds = %bb.m
  %gep73.2.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ga = load double, ptr %gep73.2.3, align 8, !tbaa !79
  %i.gb = fptrunc double %i.ga to float
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.gb, ptr %i.gc, align 4, !tbaa !76
  br label %.split75

.split75:                                         ; preds = %._crit_edge71.1, %bb.l, %bb.m, %bb.n, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw8tiff_getExPjS0_S0_Px(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !132
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.l = icmp slt i64 %i.k, 12
  %i.m = sub nsw i64 %i.k, %i.f
  %i.n = icmp slt i64 %i.m, 12
  %or.cond = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 4, ptr %i.o, align 16, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.q = zext i16 %i.p to i32
  store i32 %i.q, ptr %2, align 4, !tbaa !78
  %i.r = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.s = zext i16 %i.r to i32
  store i32 %i.s, ptr %3, align 4, !tbaa !78
  %i.t = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.t, ptr %4, align 4, !tbaa !78
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !132
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.z = add nsw i64 %i.y, 4
  store i64 %i.z, ptr %5, align 8, !tbaa !133
  %i.aa = load i32, ptr %4, align 4, !tbaa !78
  %i.ab = load i32, ptr %3, align 4, !tbaa !78    ; 2 uses
  %i.ac = icmp ult i32 %i.ab, 19
  %spec.select = select i1 %i.ac, i32 %i.ab, i32 0 ; 2 uses
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw22tagtype_dataunit_bytesE, i64 8), align 8, !tbaa !135 ; 2 uses
  %i.ae = icmp ult i32 %spec.select, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr @_ZN6LibRaw22tagtype_dataunit_bytesE, align 8, !tbaa !136
  %i.ag = zext i32 %spec.select to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !78
  br label %_ZNK21libraw_static_table_tixEj.exit

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr @_ZN6LibRaw22tagtype_dataunit_bytesE, align 8, !tbaa !136 ; 2 uses
  %.not6.i = icmp eq ptr %i.aj, null
  br i1 %.not6.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !78
  br label %_ZNK21libraw_static_table_tixEj.exit

_ZNK21libraw_static_table_tixEj.exit:             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.ai, %bb.d ], [ %i.ak, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.al = mul i32 %.0.i, %i.aa
  %i.am = icmp ugt i32 %i.al, 4
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !130 ; 2 uses
  %i.ao = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
end_hunk_0
