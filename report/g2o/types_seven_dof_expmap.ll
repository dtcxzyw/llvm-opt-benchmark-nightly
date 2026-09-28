Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_seven_dof_expmap?download=true
inline.NumInlined: 15398
inline.NumDeleted: 8608
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3g2o4Sim3C2ERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE:bb.a
  %.sroa.0316.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx328 = getelementptr inbounds nuw i8, ptr %.sroa.0316, i64 16
  %.sroa.0316.16..sroa.0316.16. = load <2 x double>, ptr %.sroa.0316.16..07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i.i.sroa_idx328, align 16 ; 8 uses
  %i.r = shufflevector <2 x double> %.sroa.0316.16..sroa.0316.16., <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = fmul <2 x double> %.sroa.0316.48..sroa.0316.48., %i.r ; 2 uses
  %i.t = fadd <2 x double> %i.q, %i.s             ; 5 uses
  %i.u = shufflevector <2 x double> %.sroa.0316.24..sroa.0316.24., <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %.sroa.0316.0..sroa.0316.0., %i.u
  %i.w = shufflevector <2 x double> %.sroa.0316.24..sroa.0316.24., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.x = fmul <2 x double> %.sroa.0316.24..sroa.0316.24., %i.w
  %i.y = fadd <2 x double> %i.v, %i.x
  %i.z = shufflevector <2 x double> %.sroa.0223.0.copyload, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fmul <2 x double> %i.z, %.sroa.0316.48..sroa.0316.48.
  %i.ab = fadd <2 x double> %i.aa, %i.y           ; 2 uses
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 8
  store <2 x double> %i.ab, ptr %.sroa.7.8..sroa_idx, align 8, !tbaa !20
  %i.ac = shufflevector <2 x double> %.sroa.0316.0..sroa.0316.0., <2 x double> %.sroa.0316.16..sroa.0316.16., <2 x i32> <i32 0, i32 3>
  %i.ad = fmul <2 x double> %i.r, %i.ac
  %i.ae = shufflevector <2 x double> %.sroa.0316.8..sroa.0316.8., <2 x double> %.sroa.0316.24..sroa.0316.24., <2 x i32> <i32 0, i32 3>
  %i.af = fmul <2 x double> %i.z, %i.ae
  %i.ag = shufflevector <2 x double> %.sroa.0316.16..sroa.0316.16., <2 x double> %.sroa.0223.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ah = fmul <2 x double> %i.ag, zeroinitializer
  %i.ai = fadd <2 x double> %i.ah, %i.af
  %i.aj = fadd <2 x double> %i.ad, %i.ai          ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0 ; 2 uses
  store double %i.ak, ptr %.sroa.7, align 16, !tbaa !36
  %i.al = extractelement <2 x double> %i.aj, i64 1 ; 2 uses
  %.sroa.7.24..sroa_idx315 = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 24
  store double %i.al, ptr %.sroa.7.24..sroa_idx315, align 8, !tbaa !36
  %i.am = shufflevector <2 x double> %.sroa.0316.48..sroa.0316.48., <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x double> %.sroa.0316.0..sroa.0316.0., %i.am
  %i.ao = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.ao, %.sroa.0316.24..sroa.0316.24.
  %i.aq = fadd <2 x double> %i.ap, %i.an
  %i.ar = fmul <2 x double> %.sroa.0316.48..sroa.0316.48., zeroinitializer
  %i.as = fadd <2 x double> %i.ar, %i.aq          ; 5 uses
  %i.at = extractelement <2 x double> %i.s, i64 0
  %foldExtExtBinop288 = fmul <2 x double> %.sroa.0223.0.copyload, %.sroa.0223.0.copyload
  %i.au = extractelement <2 x double> %foldExtExtBinop288, i64 0
  %i.av = fsub double 0.000000e+00, %i.au
  %i.aw = fadd double %i.av, %i.at                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ax = tail call double @llvm.fabs.f64(double %i.b)
  %i.ay = fcmp olt double %i.ax, 1.000000e-05
  br i1 %i.ay, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.az = fcmp olt double %.scalar.i, 1.000000e-05
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2)
  store double %i.ak, ptr %.sroa.2, align 16, !tbaa !36
  %.sroa.2.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 8
  store <2 x double> %i.ab, ptr %.sroa.2.8..sroa_idx, align 8, !tbaa !20
  %.sroa.2.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 24
  store double %i.al, ptr %.sroa.2.24..sroa_idx, align 8, !tbaa !36
  %i.ba = fadd <2 x double> %.sroa.0316.0..sroa.0316.0., <double 1.000000e+00, double 0.000000e+00>
  %i.bb = fmul <2 x double> %i.t, splat (double 5.000000e-01)
  %i.bc = fadd <2 x double> %i.ba, %i.bb          ; 2 uses
  store <2 x double> %i.bc, ptr %2, align 16, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = fadd <2 x double> %.sroa.0316.16..sroa.0316.16., zeroinitializer
  %.sroa.2.0..sroa.2.64. = load <2 x double>, ptr %.sroa.2, align 16, !tbaa !20
  %i.bf = fmul <2 x double> %.sroa.2.0..sroa.2.64., splat (double 5.000000e-01)
  %i.bg = fadd <2 x double> %i.be, %i.bf          ; 2 uses
  store <2 x double> %i.bg, ptr %i.bd, align 16, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0316.32..sroa_idx332 = getelementptr inbounds nuw i8, ptr %.sroa.0316, i64 32
  %.sroa.0316.32..sroa.0316.32. = load <2 x double>, ptr %.sroa.0316.32..sroa_idx332, align 16, !tbaa !20 ; 2 uses
  %i.bi = fadd <2 x double> %.sroa.0316.32..sroa.0316.32., <double 1.000000e+00, double 0.000000e+00>
  %.sroa.2.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 16
  %.sroa.2.16..sroa.2.80. = load <2 x double>, ptr %.sroa.2.16..sroa_idx, align 16, !tbaa !20
  %i.bj = fmul <2 x double> %.sroa.2.16..sroa.2.80., splat (double 5.000000e-01)
  %i.bk = fadd <2 x double> %i.bi, %i.bj          ; 2 uses
  store <2 x double> %i.bk, ptr %i.bh, align 16, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bm = fadd <2 x double> %.sroa.0316.48..sroa.0316.48., zeroinitializer
  %i.bn = fmul <2 x double> %i.as, splat (double 5.000000e-01)
  %i.bo = fadd <2 x double> %i.bn, %i.bm          ; 2 uses
  store <2 x double> %i.bo, ptr %i.bl, align 16, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bq = fmul double %i.aw, 5.000000e-01
  %i.br = fadd double %i.bq, 1.000000e+00         ; 2 uses
  store double %i.br, ptr %i.bp, align 16, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.bs = fmul double %.scalar.i, %.scalar.i      ; 3 uses
  %i.bt = tail call double @cos(double noundef %.scalar.i) #26
  %i.bu = tail call double @sin(double noundef %.scalar.i) #26 ; 2 uses
  %i.bv = insertelement <2 x double> <double 1.000000e+00, double poison>, double %.scalar.i, i64 1
  %i.bw = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bu, i64 1
  %i.by = fsub <2 x double> %i.bv, %i.bx
  %i.bz = fmul double %.scalar.i, %i.bs
  %i.ca = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bz, i64 1
  %i.cc = fdiv <2 x double> %i.by, %i.cb
  %i.cd = tail call double @cos(double noundef %.scalar.i) #26
  %i.ce = fsub double 1.000000e+00, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16. = load <2 x double>, ptr %.sroa.7, align 16, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0316.32..sroa_idx333 = getelementptr inbounds nuw i8, ptr %.sroa.0316, i64 32
  %.sroa.0316.32..sroa.0316.32.321 = load <2 x double>, ptr %.sroa.0316.32..sroa_idx333, align 16, !tbaa !20 ; 2 uses
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32. = load <2 x double>, ptr %.sroa.7.16..sroa_idx, align 16, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cj = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ce, i64 1
  %i.cl = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.bs, i64 1
  %i.cn = fdiv <2 x double> %i.ck, %i.cm          ; 3 uses
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cp = fmul <2 x double> %.sroa.0316.0..sroa.0316.0., %i.co
  %i.cq = fadd <2 x double> %i.cp, <double 1.000000e+00, double 0.000000e+00>
  %i.cr = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.cs = fmul <2 x double> %i.t, %i.cr
  %i.ct = fadd <2 x double> %i.cq, %i.cs          ; 2 uses
  store <2 x double> %i.ct, ptr %2, align 16, !tbaa !20
  %i.cu = fmul <2 x double> %i.co, %.sroa.0316.16..sroa.0316.16.
  %i.cv = fadd <2 x double> %i.cu, zeroinitializer
  %i.cw = fmul <2 x double> %i.cr, %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.
  %i.cx = fadd <2 x double> %i.cv, %i.cw          ; 2 uses
  store <2 x double> %i.cx, ptr %i.cf, align 16, !tbaa !20
  %i.cy = fmul <2 x double> %i.co, %.sroa.0316.32..sroa.0316.32.321
  %i.cz = fadd <2 x double> %i.cy, <double 1.000000e+00, double 0.000000e+00>
  %i.da = fmul <2 x double> %i.cr, %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.
  %i.db = fadd <2 x double> %i.cz, %i.da          ; 2 uses
  store <2 x double> %i.db, ptr %i.cg, align 16, !tbaa !20
  %i.dc = fmul <2 x double> %i.co, %.sroa.0316.48..sroa.0316.48.
  %i.dd = fadd <2 x double> %i.dc, zeroinitializer
  %i.de = fmul <2 x double> %i.as, %i.cr
  %i.df = fadd <2 x double> %i.de, %i.dd          ; 2 uses
  store <2 x double> %i.df, ptr %i.ch, align 16, !tbaa !20
  %i.dg = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.aw, i64 1
  %i.dh = fmul <2 x double> %i.dg, %i.cn          ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  %i.dj = fadd double %i.di, 1.000000e+00
  %i.dk = extractelement <2 x double> %i.dh, i64 1
  %i.dl = fadd double %i.dj, %i.dk                ; 2 uses
  store double %i.dl, ptr %i.ci, align 16, !tbaa !36
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.dm = fadd double %i.k, -1.000000e+00
  %i.dn = fdiv double %i.dm, %i.b                 ; 3 uses
  %i.do = fcmp olt double %.scalar.i, 1.000000e-05
  br i1 %i.do, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dp = fmul double %i.b, %i.b                  ; 3 uses
  %i.dq = fneg double %i.b
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dp, double 5.000000e-01, double %i.dq)
  %i.ds = insertelement <2 x double> poison, double %i.b, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dr, i64 1
  %i.du = fadd <2 x double> %i.dt, <double -1.000000e+00, double 1.000000e+00>
  %i.dv = insertelement <2 x double> poison, double %i.k, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.dw, <2 x double> <double 1.000000e+00, double -1.000000e+00>)
  %i.dy = fmul double %i.b, %i.dp
  %i.dz = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.dy, i64 1
  %i.eb = fdiv <2 x double> %i.dx, %i.ea
  %i.ec = fadd <2 x double> %.sroa.0316.0..sroa.0316.0., <double 1.000000e+00, double 0.000000e+00>
  %i.ed = fmul <2 x double> %i.t, splat (double 5.000000e-01)
  %i.ee = fadd <2 x double> %i.ed, %i.ec          ; 2 uses
  store <2 x double> %i.ee, ptr %2, align 16, !tbaa !20
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eg = fadd <2 x double> %.sroa.0316.16..sroa.0316.16., zeroinitializer
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.191 = load <2 x double>, ptr %.sroa.7, align 16, !tbaa !20
  %i.eh = fmul <2 x double> %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.191, splat (double 5.000000e-01)
  %i.ei = fadd <2 x double> %i.eg, %i.eh          ; 2 uses
  store <2 x double> %i.ei, ptr %i.ef, align 16, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0316.32..sroa_idx334 = getelementptr inbounds nuw i8, ptr %.sroa.0316, i64 32
  %.sroa.0316.32..sroa.0316.32.323 = load <2 x double>, ptr %.sroa.0316.32..sroa_idx334, align 16, !tbaa !20 ; 2 uses
  %i.ek = fadd <2 x double> %.sroa.0316.32..sroa.0316.32.323, <double 1.000000e+00, double 0.000000e+00>
  %.sroa.7.16..sroa_idx312 = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.195 = load <2 x double>, ptr %.sroa.7.16..sroa_idx312, align 16, !tbaa !20
  %i.el = fmul <2 x double> %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.195, splat (double 5.000000e-01)
  %i.em = fadd <2 x double> %i.ek, %i.el          ; 2 uses
  store <2 x double> %i.em, ptr %i.ej, align 16, !tbaa !20
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eo = fadd <2 x double> %.sroa.0316.48..sroa.0316.48., zeroinitializer
  %i.ep = fmul <2 x double> %i.as, splat (double 5.000000e-01)
  %i.eq = fadd <2 x double> %i.ep, %i.eo          ; 2 uses
  store <2 x double> %i.eq, ptr %i.en, align 16, !tbaa !20
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.es = fmul double %i.aw, 5.000000e-01
  %i.et = fadd double %i.es, 1.000000e+00         ; 2 uses
  store double %i.et, ptr %i.er, align 16, !tbaa !36
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.eu = tail call double @sin(double noundef %.scalar.i) #26
  %i.ev = tail call double @cos(double noundef %.scalar.i) #26
  %i.ew = fsub double 1.000000e+00, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.192 = load <2 x double>, ptr %.sroa.7, align 16, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0316.32..sroa_idx335 = getelementptr inbounds nuw i8, ptr %.sroa.0316, i64 32
  %.sroa.0316.32..sroa.0316.32.325 = load <2 x double>, ptr %.sroa.0316.32..sroa_idx335, align 16, !tbaa !20 ; 2 uses
  %.sroa.7.16..sroa_idx313 = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.197 = load <2 x double>, ptr %.sroa.7.16..sroa_idx313, align 16, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = tail call double @sin(double noundef %.scalar.i) #26
  %5 = fmul double %i.k, %4                       ; 2 uses
  %6 = tail call double @cos(double noundef %.scalar.i) #26
  %7 = fmul double %i.b, %i.b
  %8 = fmul double %.scalar.i, %5
  %9 = fmul double %.scalar.i, %.scalar.i         ; 3 uses
  %i.fb = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.ew, i64 1
  %i.fd = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %9, i64 1
  %i.ff = fdiv <2 x double> %i.fc, %i.fe          ; 3 uses
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fh = fmul <2 x double> %.sroa.0316.0..sroa.0316.0., %i.fg
  %i.fi = fadd <2 x double> %i.fh, <double 1.000000e+00, double 0.000000e+00>
  %i.fj = fmul <2 x double> %i.fg, %.sroa.0316.16..sroa.0316.16.
  %i.fk = fadd <2 x double> %i.fj, zeroinitializer
  %i.fl = fmul <2 x double> %i.fg, %.sroa.0316.32..sroa.0316.32.325
  %i.fm = fadd <2 x double> %i.fl, <double 1.000000e+00, double 0.000000e+00>
  %i.fn = fmul <2 x double> %i.fg, %.sroa.0316.48..sroa.0316.48.
  %i.fo = fadd <2 x double> %i.fn, zeroinitializer
  %10 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.aw, i64 1
  %i.fp = fmul <2 x double> %10, %i.ff            ; 2 uses
  %11 = extractelement <2 x double> %i.fp, i64 0
  %12 = fadd double %11, 1.000000e+00
  %13 = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.fq = fmul <2 x double> %i.t, %13
  %i.fr = fadd <2 x double> %i.fi, %i.fq          ; 2 uses
  store <2 x double> %i.fr, ptr %2, align 16, !tbaa !20
  %i.fs = fmul <2 x double> %13, %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.192
  %i.ft = fadd <2 x double> %i.fk, %i.fs          ; 2 uses
  store <2 x double> %i.ft, ptr %i.ex, align 16, !tbaa !20
  %i.fu = fmul <2 x double> %13, %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.197
  %i.fv = fadd <2 x double> %i.fm, %i.fu          ; 2 uses
  store <2 x double> %i.fv, ptr %i.ey, align 16, !tbaa !20
  %i.fw = fmul <2 x double> %i.as, %13
  %14 = fadd <2 x double> %i.fw, %i.fo            ; 2 uses
  store <2 x double> %14, ptr %i.ez, align 16, !tbaa !20
  %i.fx = extractelement <2 x double> %i.fp, i64 1
  %i.fy = fadd double %12, %i.fx                  ; 2 uses
  store double %i.fy, ptr %i.fa, align 16, !tbaa !36
  %i.fz = fmul double %i.k, %6                    ; 2 uses
  %i.ga = fadd double %7, %9                      ; 2 uses
  %i.gb = fsub double 1.000000e+00, %i.fz
  %i.gc = fmul double %.scalar.i, %i.gb
  %i.gd = tail call double @llvm.fmuladd.f64(double %5, double %i.b, double %i.gc)
  %i.ge = fmul double %.scalar.i, %i.ga
  %i.gf = fadd double %i.fz, -1.000000e+00
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.b, double %8)
  %i.gh = fdiv double %i.gg, %i.ga
  %i.gi = fsub double %i.dn, %i.gh
  %i.gj = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %9, i64 1
  %i.gl = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %i.gi, i64 1
  %i.gn = fdiv <2 x double> %i.gm, %i.gk
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %.sink284 = phi <2 x double> [ %i.ee, %bb.f ], [ %i.fr, %bb.g ], [ %i.bc, %bb.c ], [ %i.ct, %bb.d ] ; 3 uses
  %.sink283 = phi <2 x double> [ %i.em, %bb.f ], [ %i.fv, %bb.g ], [ %i.bk, %bb.c ], [ %i.db, %bb.d ] ; 3 uses
  %.sink281 = phi <2 x double> [ %i.eq, %bb.f ], [ %14, %bb.g ], [ %i.bo, %bb.c ], [ %i.df, %bb.d ] ; 2 uses
  %.sink279 = phi <2 x double> [ %i.ei, %bb.f ], [ %i.ft, %bb.g ], [ %i.bg, %bb.c ], [ %i.cx, %bb.d ] ; 2 uses
  %i.go = phi <2 x double> [ %.sroa.0316.32..sroa.0316.32.323, %bb.f ], [ %.sroa.0316.32..sroa.0316.32.325, %bb.g ], [ %.sroa.0316.32..sroa.0316.32., %bb.c ], [ %.sroa.0316.32..sroa.0316.32.321, %bb.d ]
  %i.gp = phi double [ %i.et, %bb.f ], [ %i.fy, %bb.g ], [ %i.br, %bb.c ], [ %i.dl, %bb.d ] ; 2 uses
  %.0187 = phi double [ %i.dn, %bb.f ], [ %i.dn, %bb.g ], [ 1.000000e+00, %bb.c ], [ 1.000000e+00, %bb.d ] ; 2 uses
  %i.gq = phi <2 x double> [ %i.eb, %bb.f ], [ %i.gn, %bb.g ], [ <double 5.000000e-01, double f0x3FC5555555555555>, %bb.c ], [ %i.cc, %bb.d ] ; 3 uses
  %i.gr = extractelement <2 x double> %.sink284, i64 0
  %i.gs = extractelement <2 x double> %.sink283, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.gt = fadd double %i.gs, %i.gp
  %i.gu = fadd double %i.gr, %i.gt                ; 2 uses
  %i.gv = fcmp ogt double %i.gu, 0.000000e+00
  br i1 %i.gv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gw = fadd double %i.gu, 1.000000e+00
  %i.gx = tail call double @sqrt(double noundef %i.gw) #26 ; 2 uses
  %i.gy = fmul double %i.gx, 5.000000e-01
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.gy, ptr %i.gz, align 8, !tbaa !36
  %i.ha = fdiv double 5.000000e-01, %i.gx         ; 2 uses
  %i.hb = shufflevector <2 x double> %.sink283, <2 x double> %.sink281, <2 x i32> <i32 1, i32 2>
  %i.hc = shufflevector <2 x double> %.sink281, <2 x double> %.sink279, <2 x i32> <i32 1, i32 2>
  %i.hd = fsub <2 x double> %i.hb, %i.hc
  %i.he = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hg = fmul <2 x double> %i.hf, %i.hd
  store <2 x double> %i.hg, ptr %3, align 16, !tbaa !36
  %foldExtExtBinop290 = fsub <2 x double> %.sink284, %.sink279
  %i.hh = extractelement <2 x double> %foldExtExtBinop290, i64 1
  %i.hi = fmul double %i.ha, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.hi, ptr %i.hj, align 16, !tbaa !36
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.hk = fcmp ogt <2 x double> %.sink283, %.sink284
  %i.hl = extractelement <2 x i1> %i.hk, i64 0    ; 3 uses
  %spec.select.i.i.i = zext i1 %i.hl to i64
  %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.hl, i64 8, i64 0
  %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %.idx.i.i.i.i = select i1 %i.hl, i64 24, i64 0
  %i.hm = getelementptr i8, ptr %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.idx.i.i.i.i
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !36
  %i.ho = fcmp ogt double %i.gp, %i.hn
  %.1.i.i.i = select i1 %i.ho, i64 2, i64 %spec.select.i.i.i ; 4 uses
  %i.hp = add nuw nsw i64 %.1.i.i.i, 1            ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 3
  %i.hr = select i1 %i.hq, i64 0, i64 %i.hp
  %.fr.i.i.i = freeze i64 %i.hr                   ; 5 uses
  %i.hs = add i64 %.fr.i.i.i, 1                   ; 2 uses
  %.urem.i.i.i = add i64 %.fr.i.i.i, -2
  %.cmp.i.i.i = icmp ult i64 %i.hs, 3
  %i.ht = select i1 %.cmp.i.i.i, i64 %i.hs, i64 %.urem.i.i.i ; 3 uses
  %i.hu = getelementptr [8 x i8], ptr %2, i64 %.1.i.i.i ; 3 uses
  %.idx.i66.i.i.i = mul nuw nsw i64 %.1.i.i.i, 24 ; 3 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 %.idx.i66.i.i.i
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !36
  %i.hx = getelementptr [8 x i8], ptr %2, i64 %.fr.i.i.i ; 3 uses
  %.idx.i67.i.i.i = mul nuw nsw i64 %.fr.i.i.i, 24 ; 3 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 %.idx.i67.i.i.i
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !36
  %i.ia = fsub double %i.hw, %i.hz
  %i.ib = getelementptr [8 x i8], ptr %2, i64 %i.ht ; 3 uses
  %.idx.i68.i.i.i = mul i64 %i.ht, 24             ; 3 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 %.idx.i68.i.i.i
  %i.id = load double, ptr %i.ic, align 8, !tbaa !36
  %i.ie = fsub double %i.ia, %i.id
  %i.if = fadd double %i.ie, 1.000000e+00
  %i.ig = tail call double @sqrt(double noundef %i.if) #26 ; 2 uses
  %i.ih = fmul double %i.ig, 5.000000e-01
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1.i.i.i
  store double %i.ih, ptr %i.ii, align 8, !tbaa !36
  %i.ij = fdiv double 5.000000e-01, %i.ig         ; 3 uses
  %i.ik = getelementptr i8, ptr %i.ib, i64 %.idx.i67.i.i.i
  %i.il = load double, ptr %i.ik, align 8, !tbaa !36
  %i.im = getelementptr i8, ptr %i.hx, i64 %.idx.i68.i.i.i
  %i.in = load double, ptr %i.im, align 8, !tbaa !36
  %i.io = fsub double %i.il, %i.in
  %i.ip = fmul double %i.ij, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.ip, ptr %i.iq, align 8, !tbaa !36
  %i.ir = getelementptr i8, ptr %i.hx, i64 %.idx.i66.i.i.i
  %i.is = load double, ptr %i.ir, align 8, !tbaa !36
  %i.it = getelementptr i8, ptr %i.hu, i64 %.idx.i67.i.i.i
  %i.iu = load double, ptr %i.it, align 8, !tbaa !36
  %i.iv = fadd double %i.is, %i.iu
  %i.iw = fmul double %i.ij, %i.iv
  %i.ix = getelementptr inbounds [8 x i8], ptr %3, i64 %.fr.i.i.i
  store double %i.iw, ptr %i.ix, align 8, !tbaa !36
  %i.iy = getelementptr i8, ptr %i.ib, i64 %.idx.i66.i.i.i
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !36
  %i.ja = getelementptr i8, ptr %i.hu, i64 %.idx.i68.i.i.i
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !36
  %i.jc = fadd double %i.iz, %i.jb
  %i.jd = fmul double %i.ij, %i.jc
  %i.je = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ht
  store double %i.jd, ptr %i.je, align 8, !tbaa !36
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.i, %bb.j
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  %.sroa.2739.88.vec.insert.i.i.i.i.i.i = insertelement <2 x double> poison, double %.0187, i64 0
  %i.jg = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jh = fmul <2 x double> %i.jg, %.sroa.0316.0..sroa.0316.0.
  %i.ji = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.jj = fmul <2 x double> %i.t, %i.ji
  %i.jk = fadd <2 x double> %i.jj, %i.jh
  %i.jl = shufflevector <2 x double> %.sroa.2739.88.vec.insert.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.jm = fmul <2 x double> %i.jl, <double 1.000000e+00, double 0.000000e+00>
  %i.jn = fadd <2 x double> %i.jk, %i.jm
  %i.jo = fmul <2 x double> %i.jg, %.sroa.0316.16..sroa.0316.16.
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.193 = load <2 x double>, ptr %.sroa.7, align 16, !tbaa !20
  %i.jp = fmul <2 x double> %i.ji, %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.193
  %i.jq = fadd <2 x double> %i.jo, %i.jp
  %i.jr = fmul <2 x double> %i.jl, zeroinitializer ; 2 uses
  %i.js = fadd <2 x double> %i.jq, %i.jr          ; 2 uses
  store <2 x double> %i.js, ptr %.sroa.3, align 16, !tbaa !20
  %i.jt = fmul <2 x double> %i.jg, %i.go
  %.sroa.7.16..sroa_idx314 = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.199 = load <2 x double>, ptr %.sroa.7.16..sroa_idx314, align 16, !tbaa !20
  %i.ju = fmul <2 x double> %i.ji, %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.199
  %i.jv = fadd <2 x double> %i.jt, %i.ju
  %i.jw = fmul <2 x double> %i.jl, <double 1.000000e+00, double 0.000000e+00>
  %i.jx = fadd <2 x double> %i.jv, %i.jw          ; 2 uses
  %.sroa.3.16..sroa_idx301 = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 16
  store <2 x double> %i.jx, ptr %.sroa.3.16..sroa_idx301, align 16, !tbaa !20
  %i.jy = fmul <2 x double> %i.jg, %.sroa.0316.48..sroa.0316.48.
  %i.jz = fmul <2 x double> %i.as, %i.ji
  %i.ka = fadd <2 x double> %i.jz, %i.jy
  %i.kb = fadd <2 x double> %i.ka, %i.jr
  %i.kc = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.aw, i64 1
  %i.kd = fmul <2 x double> %i.kc, %i.gq          ; 2 uses
  %shift292 = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop293 = fadd <2 x double> %shift292, %i.kd
  %i.ke = extractelement <2 x double> %foldExtExtBinop293, i64 0
  %i.kf = fadd double %.0187, %i.ke
  %.sroa.0221.0..sroa.0221.0..sroa.0221.0. = load <2 x double>, ptr %.sroa.0221, align 16 ; 2 uses
  %i.kg = shufflevector <2 x double> %.sroa.0221.0..sroa.0221.0..sroa.0221.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.kh = fmul <2 x double> %i.jn, %i.kg
  %.sroa.3.8..sroa_idx300 = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 8
  %.sroa.3.8..sroa.3.8..sroa.3.24. = load <2 x double>, ptr %.sroa.3.8..sroa_idx300, align 8, !tbaa !20
  %.sroa.0221.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0221, i64 8
  %.sroa.0221.8..sroa.0221.8..sroa.0221.8. = load <2 x double>, ptr %.sroa.0221.8..sroa_idx, align 8 ; 4 uses
  %i.ki = shufflevector <2 x double> %.sroa.0221.8..sroa.0221.8..sroa.0221.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.kj = fmul <2 x double> %.sroa.3.8..sroa.3.8..sroa.3.24., %i.ki
  %i.kk = fadd <2 x double> %i.kh, %i.kj
  %i.kl = shufflevector <2 x double> %.sroa.0221.8..sroa.0221.8..sroa.0221.8., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.km = fmul <2 x double> %i.kb, %i.kl
  %i.kn = fadd <2 x double> %i.km, %i.kk
  %foldExtExtBinop295 = fmul <2 x double> %.sroa.0221.0..sroa.0221.0..sroa.0221.0., %i.js
  %i.ko = extractelement <2 x double> %foldExtExtBinop295, i64 0
  %shift297 = shufflevector <2 x double> %i.jx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop298 = fmul <2 x double> %.sroa.0221.8..sroa.0221.8..sroa.0221.8., %shift297
  %i.kp = extractelement <2 x double> %foldExtExtBinop298, i64 0
  %i.kq = extractelement <2 x double> %.sroa.0221.8..sroa.0221.8..sroa.0221.8., i64 1
  %i.kr = fmul double %i.kf, %i.kq
  %i.ks = fadd double %i.kr, %i.kp
  %i.kt = fadd double %i.ko, %i.ks
  store <2 x double> %i.kn, ptr %i.jf, align 16, !tbaa !20
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.kt, ptr %i.ku, align 16, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0316)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0221)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o16VertexSim3Expmap5writeERSo(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(369) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.g2o::Sim3", align 16       ; 10 uses
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.b = load <2 x i64>, ptr %i.a, align 16, !tbaa !20, !noalias !399
  %i.c = xor <2 x i64> %i.b, splat (i64 -9223372036854775808) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load <2 x i64>, ptr %i.d, align 16, !tbaa !20, !noalias !399
  %i.f = xor <2 x i64> %i.e, <i64 -9223372036854775808, i64 0> ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = load <2 x double>, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = load <2 x double>, ptr %i.i, align 16, !tbaa !20, !noalias !400
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = load double, ptr %i.k, align 16, !tbaa !36, !noalias !400
  %bc.i = bitcast <2 x i64> %i.c to <2 x double>  ; 4 uses
  %i.m = extractelement <2 x double> %bc.i, i64 1 ; 4 uses
  %bc6.i = bitcast <2 x i64> %i.f to <2 x double> ; 5 uses
  %i.n = extractelement <2 x double> %bc6.i, i64 0 ; 4 uses
  %i.o = extractelement <2 x double> %bc.i, i64 0 ; 4 uses
  %i.p = extractelement <2 x double> %bc6.i, i64 1 ; 2 uses
  %i.q = shufflevector <2 x double> %bc6.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.r = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x double> <double -1.000000e+00, double 1.000000e+00>, %i.r ; 3 uses
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@_ZNK3g2o4Sim33logEv:bb.a
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.Eigen::internal::evaluator.612", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Matrix.178", align 16 ; 41 uses
  %5 = alloca %"class.Eigen::PartialPivLU", align 16 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load double, ptr %i.b, align 8, !tbaa !47 ; 5 uses
  %i.d = tail call double @log(double noundef %i.c) #26 ; 12 uses
  %i.e = load double, ptr %1, align 16, !tbaa !36, !noalias !405 ; 4 uses
  %i.f = fmul double %i.e, 2.000000e+00           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !36, !noalias !405 ; 3 uses
  %i.i = fmul double %i.h, 2.000000e+00           ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load double, ptr %i.j, align 16, !tbaa !36, !noalias !405 ; 2 uses
  %i.l = fmul double %i.k, 2.000000e+00           ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !36, !noalias !405 ; 3 uses
  %i.o = fmul double %i.f, %i.n                   ; 2 uses
  %i.p = fmul double %i.i, %i.n                   ; 2 uses
  %i.q = fmul double %i.l, %i.n                   ; 2 uses
  %i.r = fmul double %i.e, %i.f                   ; 2 uses
  %i.s = fmul double %i.e, %i.i                   ; 2 uses
  %i.t = fmul double %i.e, %i.l                   ; 2 uses
  %i.u = fmul double %i.h, %i.i                   ; 2 uses
  %i.v = fmul double %i.h, %i.l                   ; 2 uses
  %i.w = fmul double %i.k, %i.l                   ; 2 uses
  %i.x = fadd double %i.u, %i.w
  %i.y = fsub double 1.000000e+00, %i.x
  %i.z = fsub double %i.s, %i.q                   ; 4 uses
  %i.aa = fadd double %i.t, %i.p                  ; 4 uses
  %i.ab = fadd double %i.s, %i.q                  ; 4 uses
  %i.ac = fadd double %i.r, %i.w
  %i.ad = fsub double 1.000000e+00, %i.ac
  %i.ae = fsub double %i.v, %i.o                  ; 4 uses
  %i.af = fsub double %i.t, %i.p                  ; 4 uses
  %i.ag = fadd double %i.v, %i.o                  ; 4 uses
  %i.ah = fadd double %i.r, %i.u
  %i.ai = fsub double 1.000000e+00, %i.ah
  %i.aj = fadd double %i.y, %i.ad
  %i.ak = fadd double %i.ai, %i.aj
  %i.al = fadd double %i.ak, -1.000000e+00
  %i.am = fmul double %i.al, 5.000000e-01         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.an = tail call double @llvm.fabs.f64(double %i.d)
  %i.ao = fcmp olt double %i.an, 1.000000e-05
  br i1 %i.ao, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ap = fcmp ogt double %i.am, 9.999900e-01
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aq = fsub double %i.ag, %i.ae
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ar = fsub double %i.aa, %i.af
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.ar, i64 1
  %i.as = fsub double %i.ab, %i.z
  %i.at = fmul <2 x double> %.sroa.0.8.vec.insert, splat (double 5.000000e-01) ; 4 uses
  %i.au = fmul double %i.as, 5.000000e-01         ; 3 uses
  %i.av = fneg double %i.au
  %.sroa.0.0.vec.extract = extractelement <2 x double> %i.at, i64 0
  %i.aw = fneg <2 x double> %i.at                 ; 2 uses
  store double 0.000000e+00, ptr %4, align 16
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.au, ptr %.sroa.4160.0..sroa_idx, align 8
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ax = extractelement <2 x double> %i.aw, i64 1
  store double %i.ax, ptr %.sroa.5161.0..sroa_idx, align 16
  %.sroa.6162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.av, ptr %.sroa.6162.0..sroa_idx, align 8
  %.sroa.7163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double 0.000000e+00, ptr %.sroa.7163.0..sroa_idx, align 16
  %.sroa.7164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store <2 x double> %i.at, ptr %.sroa.7164.0..sroa_idx, align 8
  %.sroa.9166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ay = extractelement <2 x double> %i.aw, i64 0
  store double %i.ay, ptr %.sroa.9166.0..sroa_idx, align 8
  %.sroa.10167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double 0.000000e+00, ptr %.sroa.10167.0..sroa_idx, align 16, !tbaa !20
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_5SolveINS_12PartialPivLUINS0_IdLi3ELi3ELi0ELi3ELi3EEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.az = tail call double @acos(double noundef %i.am) #26 ; 7 uses
  %i.ba = fmul double %i.az, %i.az                ; 2 uses
  %i.bb = fneg double %i.am
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.am, double 1.000000e+00)
  %i.bd = tail call double @sqrt(double noundef %i.bc) #26
  %i.be = fmul double %i.bd, 2.000000e+00
  %i.bf = fdiv double %i.az, %i.be                ; 2 uses
  %i.bg = fsub double %i.ag, %i.ae
  %.sroa.0203.0.vec.insert = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bh = fsub double %i.aa, %i.af
  %.sroa.0203.8.vec.insert = insertelement <2 x double> %.sroa.0203.0.vec.insert, double %i.bh, i64 1
  %i.bi = fsub double %i.ab, %i.z
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i65 = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bj = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i65, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x double> %.sroa.0203.8.vec.insert, %i.bj ; 4 uses
  %i.bl = fmul double %i.bi, %i.bf                ; 3 uses
  %i.bm = fneg double %i.bl
  %.sroa.0.0.vec.extract217 = extractelement <2 x double> %i.bk, i64 0
  %i.bn = fneg <2 x double> %i.bk                 ; 2 uses
  store double 0.000000e+00, ptr %4, align 16
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.bl, ptr %.sroa.4146.0..sroa_idx, align 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bo = extractelement <2 x double> %i.bn, i64 1
  store double %i.bo, ptr %.sroa.5147.0..sroa_idx, align 16
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.bm, ptr %.sroa.6148.0..sroa_idx, align 8
  %.sroa.7149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double 0.000000e+00, ptr %.sroa.7149.0..sroa_idx, align 16
  %.sroa.7150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store <2 x double> %i.bk, ptr %.sroa.7150.0..sroa_idx, align 8
  %.sroa.9152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bp = extractelement <2 x double> %i.bn, i64 0
  store double %i.bp, ptr %.sroa.9152.0..sroa_idx, align 8
  %.sroa.10153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double 0.000000e+00, ptr %.sroa.10153.0..sroa_idx, align 16, !tbaa !20
  %i.bq = tail call double @cos(double noundef %i.az) #26
  %i.br = tail call double @sin(double noundef %i.az) #26
  %i.bs = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.az, i64 1
  %i.bt = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.br, i64 1
  %i.bv = fsub <2 x double> %i.bs, %i.bu
  %i.bw = fmul double %i.az, %i.ba
  %i.bx = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bw, i64 1
  %i.bz = fdiv <2 x double> %i.bv, %i.by
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_5SolveINS_12PartialPivLUINS0_IdLi3ELi3ELi0ELi3ELi3EEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit

bb.e:                                             ; preds = %bb.a
  %i.ca = fadd double %i.c, -1.000000e+00
  %i.cb = fdiv double %i.ca, %i.d                 ; 3 uses
  %i.cc = fcmp ogt double %i.am, 9.999900e-01
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cd = fmul double %i.d, %i.d                  ; 3 uses
  %i.ce = fsub double %i.ag, %i.ae
  %.sroa.0206.0.vec.insert = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cf = fsub double %i.aa, %i.af
  %.sroa.0206.8.vec.insert = insertelement <2 x double> %.sroa.0206.0.vec.insert, double %i.cf, i64 1
  %i.cg = fsub double %i.ab, %i.z
  %i.ch = fmul <2 x double> %.sroa.0206.8.vec.insert, splat (double 5.000000e-01) ; 4 uses
  %i.ci = fmul double %i.cg, 5.000000e-01         ; 3 uses
  %i.cj = fneg double %i.ci
  %.sroa.0.0.vec.extract219 = extractelement <2 x double> %i.ch, i64 0
  %i.ck = fneg <2 x double> %i.ch                 ; 2 uses
  store double 0.000000e+00, ptr %4, align 16
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.ci, ptr %.sroa.4132.0..sroa_idx, align 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cl = extractelement <2 x double> %i.ck, i64 1
  store double %i.cl, ptr %.sroa.5133.0..sroa_idx, align 16
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.cj, ptr %.sroa.6134.0..sroa_idx, align 8
  %.sroa.7135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double 0.000000e+00, ptr %.sroa.7135.0..sroa_idx, align 16
  %.sroa.7136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store <2 x double> %i.ch, ptr %.sroa.7136.0..sroa_idx, align 8
  %.sroa.9138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cm = extractelement <2 x double> %i.ck, i64 0
  store double %i.cm, ptr %.sroa.9138.0..sroa_idx, align 8
  %.sroa.10139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double 0.000000e+00, ptr %.sroa.10139.0..sroa_idx, align 16, !tbaa !20
  %i.cn = fneg double %i.d
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cd, double 5.000000e-01, double %i.cn)
  %i.cp = insertelement <2 x double> poison, double %i.d, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1
  %i.cr = fadd <2 x double> %i.cq, <double -1.000000e+00, double 1.000000e+00>
  %i.cs = insertelement <2 x double> poison, double %i.c, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.ct, <2 x double> <double 1.000000e+00, double -1.000000e+00>)
  %i.cv = fmul double %i.d, %i.cd
  %i.cw = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.cv, i64 1
  %i.cy = fdiv <2 x double> %i.cu, %i.cx
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_5SolveINS_12PartialPivLUINS0_IdLi3ELi3ELi0ELi3ELi3EEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.cz = tail call double @acos(double noundef %i.am) #26 ; 8 uses
  %i.da = fneg double %i.am
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.am, double 1.000000e+00)
  %i.dc = tail call double @sqrt(double noundef %i.db) #26
  %i.dd = fmul double %i.dc, 2.000000e+00
  %i.de = fsub double %i.ag, %i.ae
  %.sroa.0209.0.vec.insert = insertelement <2 x double> poison, double %i.de, i64 0
  %i.df = fsub double %i.aa, %i.af
  %.sroa.0209.8.vec.insert = insertelement <2 x double> %.sroa.0209.0.vec.insert, double %i.df, i64 1
  %i.dg = fsub double %i.ab, %i.z
  store double 0.000000e+00, ptr %4, align 16
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.7122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double 0.000000e+00, ptr %.sroa.7122.0..sroa_idx, align 16
  %.sroa.7123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.9125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.10126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double 0.000000e+00, ptr %.sroa.10126.0..sroa_idx, align 16, !tbaa !20
  %i.dh = tail call double @sin(double noundef %i.cz) #26
  %i.di = fmul double %i.c, %i.dh                 ; 2 uses
  %i.dj = tail call double @cos(double noundef %i.cz) #26
  %i.dk = fmul double %i.c, %i.dj                 ; 2 uses
  %6 = fadd double %i.dk, -1.000000e+00
  %i.dl = fmul double %i.cz, %i.di
  %7 = fmul double %i.cz, %i.cz                   ; 2 uses
  %8 = tail call double @llvm.fmuladd.f64(double %i.d, double %i.d, double %7) ; 2 uses
  %i.dm = fsub double 1.000000e+00, %i.dk
  %i.dn = fmul double %i.cz, %i.dm
  %i.do = tail call double @llvm.fmuladd.f64(double %i.di, double %i.d, double %i.dn)
  %9 = fmul double %i.cz, %8
  %i.dp = tail call double @llvm.fmuladd.f64(double %6, double %i.d, double %i.dl)
  %i.dq = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.dp, i64 1
  %i.ds = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %8, i64 1
  %i.du = fdiv <2 x double> %i.dr, %i.dt          ; 3 uses
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x double> %.sroa.0209.8.vec.insert, %i.dv ; 4 uses
  %i.dx = extractelement <2 x double> %i.du, i64 0
  %i.dy = fmul double %i.dg, %i.dx                ; 3 uses
  %i.dz = fneg double %i.dy
  %.sroa.0.0.vec.extract221 = extractelement <2 x double> %i.dw, i64 0
  %i.ea = fneg <2 x double> %i.dw                 ; 2 uses
  store double %i.dy, ptr %.sroa.4119.0..sroa_idx, align 8
  %i.eb = extractelement <2 x double> %i.ea, i64 1
  store double %i.eb, ptr %.sroa.5120.0..sroa_idx, align 16
  store double %i.dz, ptr %.sroa.6121.0..sroa_idx, align 8
  store <2 x double> %i.dw, ptr %.sroa.7123.0..sroa_idx, align 8
  %i.ec = extractelement <2 x double> %i.ea, i64 0
  store double %i.ec, ptr %.sroa.9125.0..sroa_idx, align 8
  %i.ed = extractelement <2 x double> %i.du, i64 1
  %i.ee = fsub double %i.cb, %i.ed
  %i.ef = insertelement <2 x double> poison, double %9, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %7, i64 1
  %i.eh = insertelement <2 x double> poison, double %i.do, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ee, i64 1
  %i.ej = fdiv <2 x double> %i.ei, %i.eg
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_5SolveINS_12PartialPivLUINS0_IdLi3ELi3ELi0ELi3ELi3EEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_5SolveINS_12PartialPivLUINS0_IdLi3ELi3ELi0ELi3ELi3EEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.d, %bb.c, %bb.g, %bb.f
  %i.ek = phi double [ %.sroa.0.0.vec.extract, %bb.c ], [ %.sroa.0.0.vec.extract217, %bb.d ], [ %.sroa.0.0.vec.extract219, %bb.f ], [ %.sroa.0.0.vec.extract221, %bb.g ] ; 3 uses
  %.sroa.15.0 = phi double [ %i.au, %bb.c ], [ %i.bl, %bb.d ], [ %i.ci, %bb.f ], [ %i.dy, %bb.g ]
  %.sroa.0.0 = phi <2 x double> [ %i.at, %bb.c ], [ %i.bk, %bb.d ], [ %i.ch, %bb.f ], [ %i.dw, %bb.g ]
  %.0201 = phi double [ 1.000000e+00, %bb.c ], [ 1.000000e+00, %bb.d ], [ %i.cb, %bb.f ], [ %i.cb, %bb.g ]
  %i.el = phi <2 x double> [ <double 5.000000e-01, double f0x3FC5555555555555>, %bb.c ], [ %i.bz, %bb.d ], [ %i.cy, %bb.f ], [ %i.ej, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.en = extractelement <2 x double> %i.el, i64 0
  store double %i.en, ptr %i.em, align 8, !tbaa !129
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %4, ptr %i.eo, align 8, !tbaa !131
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !131
  %i.er = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.es = load <2 x double>, ptr %4, align 16     ; 4 uses
  %i.et = fmul <2 x double> %i.er, %i.es          ; 3 uses
  %i.eu = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x double> %i.et, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ex = load <2 x double>, ptr %i.ew, align 8   ; 4 uses
  %i.ey = fmul <2 x double> %i.er, %i.ex          ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fa = load <2 x double>, ptr %i.ez, align 8   ; 2 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x double> %i.ey, %i.fb
  %i.fd = fadd <2 x double> %i.ev, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ff = load <2 x double>, ptr %i.fe, align 16  ; 5 uses
  %i.fg = fmul <2 x double> %i.er, %i.ff          ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fi = load <2 x double>, ptr %i.fh, align 16  ; 4 uses
  %i.fj = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x double> %i.fg, %i.fj
  %i.fl = fadd <2 x double> %i.fd, %i.fk          ; 2 uses
  store <2 x double> %i.fl, ptr %i.eq, align 8, !tbaa !20
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.fn = extractelement <2 x double> %i.fi, i64 0 ; 2 uses
  %i.fo = extractelement <2 x double> %i.el, i64 1 ; 3 uses
  %i.fp = fmul double %i.fo, %i.fn                ; 3 uses
  %i.fq = extractelement <2 x double> %i.es, i64 0
  %i.fr = fmul double %i.fp, %i.fq
  %i.fs = fmul double %i.fo, %i.ek                ; 3 uses
  %i.ft = extractelement <2 x double> %i.fa, i64 0
  %i.fu = fmul double %i.fs, %i.ft
  %i.fv = fmul double %i.fo, 0.000000e+00         ; 3 uses
  %i.fw = fmul double %i.fv, %i.fn
  %i.fx = fadd double %i.fu, %i.fw
  %i.fy = fadd double %i.fr, %i.fx
  store double %i.fy, ptr %i.fm, align 8, !tbaa !36
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ga = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = fmul <2 x double> %i.et, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gd = extractelement <2 x double> %i.ex, i64 1
  %i.ge = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gf = fmul <2 x double> %i.ey, %i.ge
  %i.gg = fadd <2 x double> %i.gb, %i.gf
  %i.gh = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = fmul <2 x double> %i.fg, %i.gi
  %i.gk = fadd <2 x double> %i.gj, %i.gg
  store <2 x double> %i.gk, ptr %i.fz, align 8, !tbaa !20
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.gm = extractelement <2 x double> %i.fi, i64 1
  %i.gn = fmul double %i.fp, %i.gm
  %i.go = fmul double %i.fs, %i.gd
  %i.gp = fmul double %i.ek, %i.fv
  %i.gq = fadd double %i.gp, %i.go
  %i.gr = fadd double %i.gq, %i.gn
  store double %i.gr, ptr %i.gl, align 8, !tbaa !36
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.gt = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = fmul <2 x double> %i.et, %i.gt
  %i.gv = extractelement <2 x double> %i.ff, i64 1
  %i.gw = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gx = fmul <2 x double> %i.ey, %i.gw
  %i.gy = fadd <2 x double> %i.gu, %i.gx
  %i.gz = fmul <2 x double> %i.fg, zeroinitializer
  %i.ha = fadd <2 x double> %i.gz, %i.gy          ; 2 uses
  store <2 x double> %i.ha, ptr %i.gs, align 8, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.hc = extractelement <2 x double> %i.ff, i64 0
  %i.hd = fmul double %i.fp, %i.hc
  %i.he = fmul double %i.fs, %i.gv
  %i.hf = fmul ninf double %i.fv, 0.000000e+00
  %i.hg = fadd double %i.hf, %i.he
  %i.hh = fadd double %i.hg, %i.hd                ; 2 uses
  store double %i.hh, ptr %i.hb, align 8, !tbaa !36
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  store double %.0201, ptr %i.hi, align 8, !tbaa !129
  %i.hj = load <2 x double>, ptr %i.em, align 8   ; 2 uses
  %i.hk = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hl = fmul <2 x double> %i.es, %i.hk
  %i.hm = fadd <2 x double> %i.fl, %i.hl
  %i.hn = load <2 x double>, ptr %i.hi, align 8   ; 2 uses
  %i.ho = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hp = fmul <2 x double> %i.ho, <double 1.000000e+00, double 0.000000e+00>
  %i.hq = fadd <2 x double> %i.hm, %i.hp          ; 2 uses
  %i.hr = fmul <2 x double> %i.hk, %i.fi
  %i.hs = load <2 x double>, ptr %i.fm, align 8, !tbaa !20
  %i.ht = fadd <2 x double> %i.hr, %i.hs
  %i.hu = fmul <2 x double> %i.ho, zeroinitializer
  %i.hv = fadd <2 x double> %i.ht, %i.hu          ; 2 uses
  %i.hw = load <2 x double>, ptr %i.gc, align 16, !tbaa !20
  %i.hx = fmul <2 x double> %i.hk, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.hz = load <2 x double>, ptr %i.hy, align 8, !tbaa !20
  %i.ia = fadd <2 x double> %i.hx, %i.hz
  %i.ib = fmul <2 x double> %i.ho, <double 1.000000e+00, double 0.000000e+00>
  %i.ic = fadd <2 x double> %i.ia, %i.ib          ; 2 uses
  %i.id = load <2 x double>, ptr %i.fe, align 16, !tbaa !20
  %i.ie = fmul <2 x double> %i.hk, %i.id
  %i.if = fadd <2 x double> %i.ha, %i.ie
  %i.ig = fmul <2 x double> %i.ho, zeroinitializer
  %i.ih = fadd <2 x double> %i.if, %i.ig          ; 2 uses
  %i.ii = extractelement <2 x double> %i.hj, i64 0
  %i.ij = fmul double %i.ii, 0.000000e+00
  %i.ik = fadd double %i.hh, %i.ij
  %i.il = extractelement <2 x double> %i.hn, i64 0
  %i.im = fadd double %i.il, %i.ik                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.io = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  store i8 0, ptr %i.io, align 8, !tbaa !418, !alias.scope !406
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 105 ; 2 uses
  store i8 0, ptr %i.ip, align 1, !tbaa !419, !alias.scope !406
  store <2 x double> %i.hq, ptr %5, align 16, !tbaa !20, !alias.scope !406
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x double> %i.hv, ptr %i.iq, align 16, !tbaa !20, !alias.scope !406
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 32
  store <2 x double> %i.ic, ptr %i.ir, align 16, !tbaa !20, !alias.scope !406
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <2 x double> %i.ih, ptr %i.is, align 16, !tbaa !20, !alias.scope !406
  %i.it = getelementptr inbounds nuw i8, ptr %5, i64 64
  store double %i.im, ptr %i.it, align 16, !tbaa !36, !alias.scope !406
  %i.iu = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hq) ; 2 uses
  %shift = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.iu, %shift
  %i.iv = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.iw = extractelement <2 x double> %i.hv, i64 0
  %i.ix = call noundef double @llvm.fabs.f64(double %i.iw)
  %i.iy = fadd double %i.iv, %i.ix                ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ja = load <2 x double>, ptr %i.iz, align 8, !tbaa !20, !alias.scope !406
  %i.jb = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ja) ; 2 uses
  %i.jc = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ih) ; 2 uses
  %i.jd = shufflevector <2 x double> %i.jb, <2 x double> %i.jc, <2 x i32> <i32 0, i32 2>
  %i.je = shufflevector <2 x double> %i.jb, <2 x double> %i.jc, <2 x i32> <i32 1, i32 3>
  %i.jf = fadd <2 x double> %i.jd, %i.je
  %i.jg = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jh = insertelement <2 x double> %i.jg, double %i.im, i64 1
  %i.ji = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.jh)
  %i.jj = fadd <2 x double> %i.ji, %i.jf          ; 2 uses
  %i.jk = extractelement <2 x double> %i.jj, i64 0 ; 2 uses
  %i.jl = extractelement <2 x double> %i.jj, i64 1 ; 2 uses
  %i.jm = fcmp olt double %i.jk, %i.jl
  %i.jn = select i1 %i.jm, double %i.jl, double %i.jk ; 2 uses
  %i.jo = fcmp olt double %i.iy, %i.jn
  %i.jp = select i1 %i.jo, double %i.jn, double %i.iy
  store double %i.jp, ptr %i.in, align 16, !tbaa !420, !alias.scope !406
  %i.jq = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !406
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !406
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %5, ptr %2, align 8, !tbaa !134, !noalias !406
  store i64 3, ptr %i.jr, align 8, !tbaa !136, !noalias !406
  %i.js = call noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLi3EE12unblocked_luERNS_3RefINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.jq, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !406
  %i.jt = load i32, ptr %i.a, align 4, !tbaa !29, !noalias !406
  %i.ju = and i32 %i.jt, 1
  %.not.i.i.i.i = icmp eq i32 %i.ju, 0
  %i.jv = select i1 %.not.i.i.i.i, i8 1, i8 -1
  store i8 %i.jv, ptr %i.io, align 8, !tbaa !418, !alias.scope !406
  %i.jw = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 6 uses
  store i32 0, ptr %i.jw, align 8, !tbaa !29, !alias.scope !406
  %i.jx = getelementptr inbounds nuw i8, ptr %5, i64 76 ; 3 uses
  store i32 1, ptr %i.jx, align 4, !tbaa !29, !alias.scope !406
  %i.jy = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  store i32 2, ptr %i.jy, align 16, !tbaa !29, !alias.scope !406
  %i.jz = getelementptr inbounds nuw i8, ptr %5, i64 92
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !29, !alias.scope !406
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.kb ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !29, !alias.scope !406
  store i32 %i.kd, ptr %i.jy, align 16, !tbaa !29, !alias.scope !406
  store i32 2, ptr %i.kc, align 4, !tbaa !29, !alias.scope !406
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !29, !alias.scope !406
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.jx, align 4, !tbaa !29, !alias.scope !406
end_hunk_1
