Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fundam?download=true
inline.NumInlined: 902
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK2cv19FMEstimatorCallback9runKernelERKNS_11_InputArrayES3_RKNS_12_OutputArrayE:bb.a
  %i.ho = insertelement <2 x double> %i.hc, double %i.ha, i64 0
  store <2 x double> %i.ho, ptr %i.hn, align 8, !tbaa !68
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.hi, ptr %i.hp, align 8, !tbaa !68
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double 1.000000e+00, ptr %i.hq, align 16, !tbaa !68
  %i.hr = extractelement <2 x double> %i.gx, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.es, %i.gx
  %i.hs = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop90 = fmul <2 x double> %i.ev, %i.gx
  %i.ht = extractelement <2 x double> %foldExtExtBinop90, i64 0 ; 3 uses
  %foldExtExtBinop92 = fmul <2 x double> %i.es, %i.gx
  %i.hu = extractelement <2 x double> %foldExtExtBinop92, i64 1 ; 3 uses
  %foldExtExtBinop94 = fmul <2 x double> %i.ev, %i.gx
  %i.hv = extractelement <2 x double> %foldExtExtBinop94, i64 1 ; 3 uses
  %i.hw = fmul double %i.hs, %i.hu
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store double %i.hw, ptr %i.hx, align 8, !tbaa !68
  %i.hy = fmul double %i.ht, %i.hu
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.hy, ptr %i.hz, align 16, !tbaa !68
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double %i.hu, ptr %i.ia, align 8, !tbaa !68
  %i.ib = fmul double %i.hs, %i.hv
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store double %i.ib, ptr %i.ic, align 16, !tbaa !68
  %i.id = fmul double %i.ht, %i.hv
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store double %i.id, ptr %i.ie, align 8, !tbaa !68
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store double %i.hv, ptr %i.if, align 16, !tbaa !68
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double %i.hs, ptr %i.ig, align 8, !tbaa !68
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store double %i.ht, ptr %i.ih, align 16, !tbaa !68
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store double 1.000000e+00, ptr %i.ii, align 8, !tbaa !68
  %i.ij = fmul double %i.fc, %i.gz                ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.il = fmul double %i.fa, %i.hr                ; 3 uses
  %i.im = fmul <2 x double> %i.fb, %i.gx          ; 4 uses
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.io = insertelement <2 x double> %i.in, double %i.il, i64 1
  %i.ip = fmul <2 x double> %i.im, %i.io
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.iq, ptr %i.ik, align 16, !tbaa !68
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.is = extractelement <2 x double> %i.im, i64 1
  store double %i.is, ptr %i.ir, align 16, !tbaa !68
  %i.it = fmul double %i.il, %i.ij
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store double %i.it, ptr %i.iu, align 8, !tbaa !68
  %i.iv = extractelement <2 x double> %i.im, i64 0 ; 2 uses
  %i.iw = fmul double %i.iv, %i.ij
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store double %i.iw, ptr %i.ix, align 16, !tbaa !68
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store double %i.ij, ptr %i.iy, align 8, !tbaa !68
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store double %i.il, ptr %i.iz, align 16, !tbaa !68
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store double %i.iv, ptr %i.ja, align 8, !tbaa !68
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store double 1.000000e+00, ptr %i.jb, align 16, !tbaa !68
  %foldExtExtBinop96 = fmul <2 x double> %i.fk, %i.gx
  %i.jc = extractelement <2 x double> %foldExtExtBinop96, i64 1 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.jf = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store double %i.jc, ptr %i.jf, align 8, !tbaa !68
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.jh = fmul <2 x double> %i.fo, %i.gy          ; 3 uses
  %i.ji = shufflevector <2 x double> %i.fk, <2 x double> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.jj = fmul <2 x double> %i.ji, %i.gx          ; 2 uses
  %i.jk = extractelement <2 x double> %i.jj, i64 0 ; 2 uses
  %i.jl = fmul double %i.jk, %i.jc
  store double %i.jl, ptr %i.jd, align 8, !tbaa !68
  %i.jm = extractelement <2 x double> %i.jh, i64 1 ; 2 uses
  %i.jn = fmul double %i.jm, %i.jc
  store double %i.jn, ptr %i.je, align 16, !tbaa !68
  %i.jo = fmul <2 x double> %i.jh, %i.jj
  store <2 x double> %i.jo, ptr %i.jg, align 16, !tbaa !68
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.jq = extractelement <2 x double> %i.jh, i64 0
  store double %i.jq, ptr %i.jp, align 16, !tbaa !68
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store double %i.jk, ptr %i.jr, align 8, !tbaa !68
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store double %i.jm, ptr %i.js, align 16, !tbaa !68
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store double 1.000000e+00, ptr %i.jt, align 8, !tbaa !68
  %foldExtExtBinop98 = fmul <2 x double> %i.fw, %i.gx ; 2 uses
  %i.ju = extractelement <2 x double> %foldExtExtBinop98, i64 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.jw = shufflevector <2 x double> %i.fw, <2 x double> %i.fu, <2 x i32> <i32 3, i32 0>
  %i.jx = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jy = fmul <2 x double> %i.jw, %i.jx          ; 3 uses
  %i.jz = fmul <2 x double> %i.fu, %i.gx          ; 2 uses
  %i.ka = fmul <2 x double> %i.jy, %i.jz
  store <2 x double> %i.ka, ptr %i.jv, align 16, !tbaa !68
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.kc = extractelement <2 x double> %i.jy, i64 0
  store double %i.kc, ptr %i.kb, align 16, !tbaa !68
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.ke = shufflevector <2 x double> %i.jz, <2 x double> %i.jy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.kf = shufflevector <2 x double> %foldExtExtBinop98, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kg = fmul <2 x double> %i.ke, %i.kf
  store <2 x double> %i.kg, ptr %i.kd, align 8, !tbaa !68
  %i.kh = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store double %i.ju, ptr %i.kh, align 8, !tbaa !68
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store <2 x double> %i.ke, ptr %i.ki, align 16, !tbaa !68
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store double 1.000000e+00, ptr %i.kj, align 16, !tbaa !68
  %foldExtExtBinop100 = fmul <2 x double> %i.gc, %i.gx ; 2 uses
  %i.kk = extractelement <2 x double> %foldExtExtBinop100, i64 1
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.km = shufflevector <2 x double> %i.gc, <2 x double> %i.gb, <2 x i32> <i32 3, i32 0>
  %i.kn = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ko = fmul <2 x double> %i.km, %i.kn          ; 3 uses
  %i.kp = fmul <2 x double> %i.gb, %i.gx          ; 2 uses
  %i.kq = fmul <2 x double> %i.ko, %i.kp
  store <2 x double> %i.kq, ptr %i.kl, align 8, !tbaa !68
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.ks = extractelement <2 x double> %i.ko, i64 0
  store double %i.ks, ptr %i.kr, align 8, !tbaa !68
  %i.kt = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ku = shufflevector <2 x double> %i.kp, <2 x double> %i.ko, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.kv = shufflevector <2 x double> %foldExtExtBinop100, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kw = fmul <2 x double> %i.ku, %i.kv
  store <2 x double> %i.kw, ptr %i.kt, align 16, !tbaa !68
  %i.kx = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store double %i.kk, ptr %i.kx, align 16, !tbaa !68
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  store <2 x double> %i.ku, ptr %i.ky, align 8, !tbaa !68
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  store double 1.000000e+00, ptr %i.kz, align 8, !tbaa !68
  %foldExtExtBinop102 = fmul <2 x double> %i.gi, %i.gx ; 2 uses
  %i.la = extractelement <2 x double> %foldExtExtBinop102, i64 1
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.lc = shufflevector <2 x double> %i.gi, <2 x double> %i.gh, <2 x i32> <i32 3, i32 0>
  %i.ld = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.le = fmul <2 x double> %i.lc, %i.ld          ; 3 uses
  %i.lf = fmul <2 x double> %i.gh, %i.gx          ; 2 uses
  %i.lg = fmul <2 x double> %i.le, %i.lf
  store <2 x double> %i.lg, ptr %i.lb, align 16, !tbaa !68
  %i.lh = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.li = extractelement <2 x double> %i.le, i64 0
  store double %i.li, ptr %i.lh, align 16, !tbaa !68
  %i.lj = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.lk = shufflevector <2 x double> %i.lf, <2 x double> %i.le, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ll = shufflevector <2 x double> %foldExtExtBinop102, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lm = fmul <2 x double> %i.lk, %i.ll
  store <2 x double> %i.lm, ptr %i.lj, align 8, !tbaa !68
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store double %i.la, ptr %i.ln, align 8, !tbaa !68
  %i.lo = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store <2 x double> %i.lk, ptr %i.lo, align 16, !tbaa !68
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store double 1.000000e+00, ptr %i.lp, align 16, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #17
  %i.lq = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i32 0, ptr %i.lq, align 8, !tbaa !26
  %i.lr = getelementptr inbounds nuw i8, ptr %39, i64 20
  store i32 0, ptr %i.lr, align 4, !tbaa !27
  store i32 16842752, ptr %39, align 8, !tbaa !28
  %i.ls = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr %33, ptr %i.ls, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #17
  %i.lt = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i64 0, ptr %i.lu, align 8
  store i32 33619968, ptr %40, align 8, !tbaa !28
  store ptr %36, ptr %i.lt, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #17
  %i.lv = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.lw = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i64 0, ptr %i.lw, align 8
  store i32 33619968, ptr %41, align 8, !tbaa !28
  store ptr %34, ptr %i.lv, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #17
  %i.lx = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i64 0, ptr %i.ly, align 8
  store i32 33619968, ptr %42, align 8, !tbaa !28
  store ptr %35, ptr %i.lx, align 8, !tbaa !19
  invoke void @_ZN2cv8SVDecompERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_i(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %42, i32 noundef 5)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #17
  %i.lz = getelementptr inbounds nuw i8, ptr %i.d, i64 504 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.d, i64 576 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.d, i64 584
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %i.md = load <2 x double>, ptr %i.ma, align 16, !tbaa !68 ; 10 uses
  %i.me = load <2 x double>, ptr %i.lz, align 8, !tbaa !68
  %i.mf = fsub <2 x double> %i.me, %i.md          ; 8 uses
  store <2 x double> %i.mf, ptr %i.lz, align 8, !tbaa !68
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 592 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 520 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.d, i64 600
  %i.mj = getelementptr inbounds nuw i8, ptr %i.d, i64 528
  %i.mk = load <2 x double>, ptr %i.mg, align 16, !tbaa !68 ; 10 uses
  %i.ml = load <2 x double>, ptr %i.mh, align 8, !tbaa !68
  %i.mm = fsub <2 x double> %i.ml, %i.mk          ; 8 uses
  store <2 x double> %i.mm, ptr %i.mh, align 8, !tbaa !68
  %i.mn = getelementptr inbounds nuw i8, ptr %i.d, i64 608 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.d, i64 536 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.d, i64 616
  %i.mq = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.mr = load <2 x double>, ptr %i.mn, align 16, !tbaa !68 ; 8 uses
  %i.ms = load <2 x double>, ptr %i.mo, align 8, !tbaa !68
  %i.mt = fsub <2 x double> %i.ms, %i.mr          ; 7 uses
  store <2 x double> %i.mt, ptr %i.mo, align 8, !tbaa !68
  %i.mu = getelementptr inbounds nuw i8, ptr %i.d, i64 624 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.d, i64 552 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 632
  %i.mx = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  %i.my = load <2 x double>, ptr %i.mu, align 16, !tbaa !68 ; 6 uses
  %i.mz = load <2 x double>, ptr %i.mv, align 8, !tbaa !68
  %i.na = fsub <2 x double> %i.mz, %i.my          ; 5 uses
  store <2 x double> %i.na, ptr %i.mv, align 8, !tbaa !68
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 640 ; 2 uses
  %i.nc = load double, ptr %i.nb, align 16, !tbaa !68 ; 6 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 568 ; 3 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !68
  %i.nf = fsub double %i.ne, %i.nc                ; 6 uses
  store double %i.nf, ptr %i.nd, align 8, !tbaa !68
  %i.ng = shufflevector <2 x double> %i.mr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nh = extractelement <2 x double> %i.mr, i64 0 ; 2 uses
  %i.ni = extractelement <2 x double> %i.my, i64 0
  %i.nj = extractelement <2 x double> %i.mk, i64 1
  %i.nk = extractelement <2 x double> %i.md, i64 1 ; 3 uses
  %i.nl = extractelement <2 x double> %i.mk, i64 0 ; 2 uses
  %i.nm = extractelement <2 x double> %i.mf, i64 1 ; 4 uses
  %i.nn = extractelement <2 x double> %i.mf, i64 0 ; 3 uses
  %i.no = extractelement <2 x double> %i.mm, i64 0 ; 2 uses
  %i.np = extractelement <2 x double> %i.mt, i64 0 ; 2 uses
  %i.nq = extractelement <2 x double> %i.mt, i64 1 ; 3 uses
  %i.nr = fneg double %i.nq
  %i.ns = fneg double %i.nh
  %i.nt = fmul double %i.nl, %i.ns
  %55 = extractelement <2 x double> %i.na, i64 1
  %i.nu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.nv = extractelement <2 x double> %i.mr, i64 1 ; 2 uses
  %i.nw = fneg double %i.nv
  %i.nx = fneg double %i.np
  %i.ny = fmul double %i.no, %i.nx
  %i.nz = shufflevector <2 x double> %i.na, <2 x double> %i.mm, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.oa = fneg <2 x double> %i.nz                 ; 5 uses
  %i.ob = extractelement <2 x double> %i.oa, i64 1
  %i.oc = shufflevector <2 x double> %i.mk, <2 x double> %i.my, <2 x i32> <i32 1, i32 2>
  %i.od = fneg <2 x double> %i.oc                 ; 4 uses
  %foldExtExtBinop104 = fmul <2 x double> %i.mr, %i.od
  %i.oe = extractelement <2 x double> %foldExtExtBinop104, i64 1
  %i.of = call double @llvm.fmuladd.f64(double %i.nj, double %i.nc, double %i.oe)
  %i.og = fneg double %i.of                       ; 2 uses
  %i.oh = fmul double %i.nk, %i.og
  %i.oi = fmul double %i.nm, %i.og
  %i.oj = shufflevector <2 x double> %i.mk, <2 x double> %i.my, <2 x i32> <i32 1, i32 3>
  %i.ok = fneg <2 x double> %i.oj                 ; 3 uses
  %i.ol = shufflevector <2 x double> %i.mk, <2 x double> %i.mr, <2 x i32> <i32 0, i32 3>
  %i.om = fmul <2 x double> %i.ol, %i.ok
  %i.on = insertelement <2 x double> %i.md, double %i.nc, i64 1
  %i.oo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.on, <2 x double> %i.om) ; 2 uses
  %i.op = extractelement <2 x double> %i.oo, i64 1
  %i.oq = shufflevector <2 x double> %i.md, <2 x double> %i.mr, <2 x i32> <i32 1, i32 2>
  %i.or = fmul <2 x double> %i.oq, %i.od
  %i.os = shufflevector <2 x double> %i.md, <2 x double> %i.mk, <2 x i32> <i32 0, i32 3>
  %i.ot = shufflevector <2 x double> %i.mr, <2 x double> %i.my, <2 x i32> <i32 0, i32 3>
  %i.ou = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.ot, <2 x double> %i.or) ; 2 uses
  %i.ov = extractelement <2 x double> %i.ou, i64 1
  %shift = shufflevector <2 x double> %i.ok, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop106 = fmul <2 x double> %i.mk, %shift
  %i.ow = extractelement <2 x double> %foldExtExtBinop106, i64 0
  %i.ox = shufflevector <2 x double> %i.mk, <2 x double> %i.md, <2 x i32> <i32 0, i32 3>
  %i.oy = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oz = fmul <2 x double> %i.ox, %i.oy
  %i.pa = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pb = insertelement <2 x double> %i.my, double %i.nc, i64 0
  %i.pc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pa, <2 x double> %i.pb, <2 x double> %i.oz) ; 2 uses
  %i.pd = call double @llvm.fmuladd.f64(double %i.nk, double %i.nv, double %i.nt)
  %i.pe = extractelement <2 x double> %i.pc, i64 0
  %i.pf = extractelement <2 x double> %i.pc, i64 1
  %i.pg = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ph = insertelement <2 x double> %i.pg, double %i.nf, i64 0
  %i.pi = extractelement <2 x double> %i.oa, i64 0 ; 2 uses
  %i.pj = fmul double %i.nq, %i.pi
  %i.pk = call double @llvm.fmuladd.f64(double %i.nn, double %i.op, double %i.oi)
  %i.pl = call double @llvm.fmuladd.f64(double %i.no, double %i.ov, double %i.pk)
  %i.pm = call double @llvm.fmuladd.f64(double %i.nk, double %i.nc, double %i.ow)
  %i.pn = call double @llvm.fmuladd.f64(double %i.ob, double %i.pm, double %i.pl)
  %i.po = call double @llvm.fmuladd.f64(double %i.np, double %i.pe, double %i.pn)
  %i.pp = call double @llvm.fmuladd.f64(double %i.nr, double %i.pf, double %i.po)
  %i.pq = insertelement <2 x double> poison, double %i.pd, i64 0
  %i.pr = insertelement <2 x double> %i.pq, double %i.nf, i64 1
  %i.ps = insertelement <2 x double> poison, double %i.pp, i64 0
  %i.pt = insertelement <2 x double> %i.ps, double %i.pj, i64 1
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nz, <2 x double> %i.pr, <2 x double> %i.pt) ; 2 uses
  %i.pv = insertelement <2 x double> %i.pu, double %i.oh, i64 1
  %i.pw = shufflevector <2 x double> %i.mt, <2 x double> %i.mm, <2 x i32> <i32 1, i32 2>
  %56 = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.px = insertelement <2 x double> %56, double %i.nf, i64 0
  %i.py = shufflevector <2 x double> %i.mt, <2 x double> %i.mf, <2 x i32> <i32 0, i32 3>
  %i.pz = fmul <2 x double> %i.py, %i.oa
  %i.qa = shufflevector <2 x double> %i.mm, <2 x double> %i.mf, <2 x i32> <i32 1, i32 2>
  %i.qb = shufflevector <2 x double> %i.na, <2 x double> %i.mt, <2 x i32> <i32 1, i32 2>
  %i.qc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qa, <2 x double> %i.qb, <2 x double> %i.pz) ; 2 uses
  %i.qd = extractelement <2 x double> %i.qc, i64 0
  %i.qe = shufflevector <2 x double> %i.pu, <2 x double> %i.na, <2 x i32> <i32 1, i32 3>
  %i.qf = fneg <2 x double> %i.qe                 ; 4 uses
  %i.qg = shufflevector <2 x double> %i.qf, <2 x double> %i.md, <2 x i32> <i32 1, i32 2>
  %i.qh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.oo, <2 x double> %i.pv)
  %i.qi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> %i.ou, <2 x double> %i.qh)
  store <2 x double> %i.qi, ptr %i.nu, align 16, !tbaa !68
  %i.qj = shufflevector <2 x double> %i.oa, <2 x double> %i.qf, <2 x i32> <i32 3, i32 1>
  %i.qk = fmul <2 x double> %i.pw, %i.qj
  %i.ql = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mt, <2 x double> %i.px, <2 x double> %i.qk) ; 2 uses
  %i.qm = shufflevector <2 x double> %i.md, <2 x double> %i.mm, <2 x i32> <i32 1, i32 2>
  %i.qn = fmul <2 x double> %i.qm, %i.qf
  %i.qo = shufflevector <2 x double> %i.md, <2 x double> %i.mf, <2 x i32> <i32 0, i32 3>
  %i.qp = insertelement <2 x double> %i.ql, double %i.nf, i64 1
  %i.qq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qo, <2 x double> %i.qp, <2 x double> %i.qn) ; 2 uses
  %i.qr = extractelement <2 x double> %i.qq, i64 0
  %i.qs = call double @llvm.fmuladd.f64(double %i.nl, double %i.qd, double %i.qr)
  %i.qt = extractelement <2 x double> %i.od, i64 0
  %i.qu = extractelement <2 x double> %i.qq, i64 1
  %i.qv = call double @llvm.fmuladd.f64(double %i.qt, double %i.qu, double %i.qs)
  %foldExtExtBinop108 = fmul <2 x double> %i.mm, %i.oa
  %57 = extractelement <2 x double> %foldExtExtBinop108, i64 0
  %58 = call double @llvm.fmuladd.f64(double %i.nn, double %i.nf, double %57)
  %59 = call double @llvm.fmuladd.f64(double %i.nh, double %58, double %i.qv)
  %60 = fmul double %i.nm, %i.pi
  %61 = call double @llvm.fmuladd.f64(double %i.nn, double %55, double %60)
  %i.qw = call double @llvm.fmuladd.f64(double %i.nw, double %61, double %59)
  %i.qx = call double @llvm.fmuladd.f64(double %i.nm, double %i.nq, double %i.ny)
  %i.qy = call double @llvm.fmuladd.f64(double %i.ni, double %i.qx, double %i.qw)
  %i.qz = extractelement <2 x double> %i.qf, i64 0
  %i.ra = fmul double %i.nm, %i.qz
  %i.rb = shufflevector <2 x double> %i.mf, <2 x double> %i.ok, <2 x i32> <i32 0, i32 3>
  %i.rc = insertelement <2 x double> poison, double %i.ra, i64 0
  %i.rd = insertelement <2 x double> %i.rc, double %i.qy, i64 1
  %i.re = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rb, <2 x double> %i.ql, <2 x double> %i.rd)
  %i.rf = insertelement <2 x double> %i.mm, double %i.nc, i64 1
  %i.rg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rf, <2 x double> %i.qc, <2 x double> %i.re)
  store <2 x double> %i.rg, ptr %i.e, align 16, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #17
  %i.rh = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i32 0, ptr %i.rh, align 8, !tbaa !26
  %i.ri = getelementptr inbounds nuw i8, ptr %43, i64 20
  store i32 0, ptr %i.ri, align 4, !tbaa !27
  store i32 16842752, ptr %43, align 8, !tbaa !28
  %i.rj = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %37, ptr %i.rj, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #17
  %i.rk = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.rl = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i64 0, ptr %i.rl, align 8
  store i32 33619968, ptr %44, align 8, !tbaa !28
  store ptr %38, ptr %i.rk, align 8, !tbaa !19
  %i.rm = invoke noundef i32 @_ZN2cv10solveCubicERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %44)
          to label %bb.v unwind label %bb.w       ; 4 uses

bb.u:                                             ; preds = %bb.s
  %i.rn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #17
  br label %bb.ar

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #17
  %i.ro = add i32 %i.rm, -4
  %or.cond3.i = icmp ult i32 %i.ro, -3
  br i1 %or.cond3.i, label %_ZN2cvL9run7PointERKNS_3MatES2_RS0_.exit, label %.lr.ph.i

bb.w:                                             ; preds = %bb.t
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #17
  br label %bb.ar

.lr.ph.i:                                         ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #17
  %i.rq = fneg double %i.hr                       ; 2 uses
  %i.rr = fmul double %i.ep, %i.rq
  %i.rs = extractelement <2 x double> %i.eb, i64 0
  %i.rt = fmul double %i.rs, %i.rq
  store double %i.hr, ptr %45, align 8, !tbaa !68
  %i.ru = getelementptr inbounds nuw i8, ptr %45, i64 8
  store double 0.000000e+00, ptr %i.ru, align 8, !tbaa !68
  %i.rv = getelementptr inbounds nuw i8, ptr %45, i64 16
  store double %i.rr, ptr %i.rv, align 8, !tbaa !68
  %i.rw = getelementptr inbounds nuw i8, ptr %45, i64 24
  store double 0.000000e+00, ptr %i.rw, align 8, !tbaa !68
  %i.rx = getelementptr inbounds nuw i8, ptr %45, i64 32
  store double %i.hr, ptr %i.rx, align 8, !tbaa !68
  %i.ry = getelementptr inbounds nuw i8, ptr %45, i64 40
  store double %i.rt, ptr %i.ry, align 8, !tbaa !68
  %i.rz = getelementptr inbounds nuw i8, ptr %45, i64 48
  %i.sa = getelementptr inbounds nuw i8, ptr %45, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rz, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.sa, align 8, !tbaa !68
  %i.sb = fneg double %i.gz                       ; 2 uses
  %i.sc = extractelement <2 x double> %i.eb, i64 1
  %i.sd = fmul double %i.sc, %i.sb
  %i.se = fmul double %i.eh, %i.sb
  %i.sf = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.sg = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.sh = getelementptr inbounds nuw i8, ptr %50, i64 40
  %i.si = getelementptr inbounds nuw i8, ptr %50, i64 48
  %i.sj = getelementptr inbounds nuw i8, ptr %50, i64 56
  %i.sk = getelementptr inbounds nuw i8, ptr %50, i64 64
  %i.sl = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.sm = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.sn = getelementptr inbounds nuw i8, ptr %32, i64 72
  %i.so = getelementptr inbounds nuw i8, ptr %32, i64 128
  %i.sp = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.sq = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.sr = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ss = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.st = getelementptr inbounds nuw i8, ptr %29, i64 72
  %i.su = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.sv = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.sw = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.sx = getelementptr inbounds nuw i8, ptr %47, i64 432
  %i.sy = getelementptr inbounds nuw i8, ptr %47, i64 224
  %i.sz = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.ta = getelementptr inbounds nuw i8, ptr %49, i64 432
  %i.tb = getelementptr inbounds nuw i8, ptr %49, i64 224
  %i.tc = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.td = getelementptr inbounds nuw i8, ptr %46, i64 4
  %i.te = getelementptr inbounds nuw i8, ptr %46, i64 84
  %i.tf = getelementptr inbounds nuw i8, ptr %46, i64 88
  %i.tg = getelementptr inbounds nuw i8, ptr %46, i64 12
  %i.th = getelementptr inbounds nuw i8, ptr %46, i64 24 ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %46, i64 128 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.tk = getelementptr inbounds nuw i8, ptr %26, i64 16
  %wide.trip.count.i = zext nneg i32 %i.rm to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ao, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ao ] ; 2 uses
  %.0228340.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.xp, %bb.ao ] ; 11 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !68 ; 3 uses
  %i.tn = load double, ptr %i.nd, align 8, !tbaa !68
  %i.to = load double, ptr %i.nb, align 16, !tbaa !68
  %i.tp = call double @llvm.fmuladd.f64(double %i.tn, double %i.tm, double %i.to) ; 2 uses
  %i.tq = call double @llvm.fabs.f64(double %i.tp)
  %i.tr = fcmp ogt double %i.tq, f0x3CB0000000000000 ; 3 uses
  %i.ts = fdiv double 1.000000e+00, %i.tp         ; 2 uses
  %i.tt = fmul double %i.tm, %i.ts
  %.sink.i = select i1 %i.tr, double 1.000000e+00, double 0.000000e+00
  %.0222.i = select i1 %i.tr, double %i.tt, double %i.tm ; 8 uses
  %.0.i = select i1 %i.tr, double %i.ts, double 1.000000e+00 ; 8 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0228340.i, i64 64
  store double %.sink.i, ptr %i.tu, align 8, !tbaa !68
  %i.tv = load double, ptr %i.lz, align 8, !tbaa !68
  %i.tw = load double, ptr %i.ma, align 16, !tbaa !68
  %i.tx = fmul double %i.tw, %.0.i
  %i.ty = call double @llvm.fmuladd.f64(double %i.tv, double %.0222.i, double %i.tx)
  store double %i.ty, ptr %.0228340.i, align 8, !tbaa !68
  %i.tz = load double, ptr %i.mc, align 16, !tbaa !68
  %i.ua = load double, ptr %i.mb, align 8, !tbaa !68
  %i.ub = fmul double %.0.i, %i.ua
  %i.uc = call double @llvm.fmuladd.f64(double %i.tz, double %.0222.i, double %i.ub)
  %i.ud = getelementptr inbounds nuw i8, ptr %.0228340.i, i64 8
  store double %i.uc, ptr %i.ud, align 8, !tbaa !68
  %i.ue = load double, ptr %i.mh, align 8, !tbaa !68
  %i.uf = load double, ptr %i.mg, align 16, !tbaa !68
  %i.ug = fmul double %.0.i, %i.uf
  %i.uh = call double @llvm.fmuladd.f64(double %i.ue, double %.0222.i, double %i.ug)
  %i.ui = getelementptr inbounds nuw i8, ptr %.0228340.i, i64 16
  store double %i.uh, ptr %i.ui, align 8, !tbaa !68
  %i.uj = load double, ptr %i.mj, align 16, !tbaa !68
  %i.uk = load double, ptr %i.mi, align 8, !tbaa !68
  %i.ul = fmul double %.0.i, %i.uk
  %i.um = call double @llvm.fmuladd.f64(double %i.uj, double %.0222.i, double %i.ul)
  %i.un = getelementptr inbounds nuw i8, ptr %.0228340.i, i64 24
  store double %i.um, ptr %i.un, align 8, !tbaa !68
  %i.uo = load double, ptr %i.mo, align 8, !tbaa !68
  %i.up = load double, ptr %i.mn, align 16, !tbaa !68
  %i.uq = fmul double %.0.i, %i.up
  %i.ur = call double @llvm.fmuladd.f64(double %i.uo, double %.0222.i, double %i.uq)
  %i.us = getelementptr inbounds nuw i8, ptr %.0228340.i, i64 32
  store double %i.ur, ptr %i.us, align 8, !tbaa !68
  %i.ut = load double, ptr %i.mq, align 16, !tbaa !68
  %i.uu = load double, ptr %i.mp, align 8, !tbaa !68
  %i.uv = fmul double %.0.i, %i.uu
  %i.uw = call double @llvm.fmuladd.f64(double %i.ut, double %.0222.i, double %i.uv)
  %i.ux = getelementptr inbounds nuw i8, ptr %.0228340.i, i64 40
  store double %i.uw, ptr %i.ux, align 8, !tbaa !68
  %i.uy = load double, ptr %i.mv, align 8, !tbaa !68
  %i.uz = load double, ptr %i.mu, align 16, !tbaa !68
  %i.va = fmul double %.0.i, %i.uz
  %i.vb = call double @llvm.fmuladd.f64(double %i.uy, double %.0222.i, double %i.va)
  %i.vc = getelementptr inbounds nuw i8, ptr %.0228340.i, i64 48
  store double %i.vb, ptr %i.vc, align 8, !tbaa !68
  %i.vd = load double, ptr %i.mx, align 16, !tbaa !68
  %i.ve = load double, ptr %i.mw, align 8, !tbaa !68
  %i.vf = fmul double %.0.i, %i.ve
  %i.vg = call double @llvm.fmuladd.f64(double %i.vd, double %.0222.i, double %i.vf)
  %i.vh = getelementptr inbounds nuw i8, ptr %.0228340.i, i64 56
  store double %i.vg, ptr %i.vh, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #17
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %46, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %.0228340.i, i64 noundef 0)
          to label %bb.y unwind label %bb.aj

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #17
  store double %i.gz, ptr %50, align 8, !tbaa !68, !alias.scope !385
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sf, i8 0, i64 24, i1 false)
  store double %i.gz, ptr %i.sg, align 8, !tbaa !68, !alias.scope !385
  store double 0.000000e+00, ptr %i.sh, align 8, !tbaa !68, !alias.scope !385
  store double %i.sd, ptr %i.si, align 8, !tbaa !68, !alias.scope !385
  store double %i.se, ptr %i.sj, align 8, !tbaa !68, !alias.scope !385
  store double 1.000000e+00, ptr %i.sk, align 8, !tbaa !68, !alias.scope !385
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #17, !noalias !386
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %32, align 16, !tbaa !56, !noalias !386
  store i32 153, ptr %i.sl, align 16, !tbaa !95, !noalias !386
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.sm, i8 0, i64 48, i1 false), !noalias !386
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.sn, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc.i unwind label %bb.ak

.noexc.i:                                         ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.so, i8 0, i64 80, i1 false), !noalias !386
end_hunk_0
