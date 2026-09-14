Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_offset?download=true
inline.NumInlined: 6695
inline.NumDeleted: 3459
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN3g2o8internal22computeEdgeSE3GradientIN5Eigen3MapINS2_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS2_6StrideILi0ELi0EEEEEEEvRNS2_9TransformIdLi3ELi1ELi0EEERKNS2_10MatrixBaseIT_EESG_RKSA_SI_SI_SI_SI_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.rp = load ptr, ptr %1, align 8, !tbaa !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.rp, i8 0, i64 288, i1 false)
  %i.rq = load ptr, ptr %2, align 8, !tbaa !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.rq, i8 0, i64 288, i1 false)
  %i.rr = load ptr, ptr %1, align 8, !tbaa !136, !noalias !265 ; 6 uses
  %i.rs = fneg <2 x double> %i.bz
  store <2 x double> %i.rs, ptr %i.rr, align 1, !tbaa !29
  %i.rt = getelementptr i8, ptr %i.rr, i64 16
  %i.ru = fneg double %i.cl
  store double %i.ru, ptr %i.rt, align 8, !tbaa !12
  %i.rv = getelementptr i8, ptr %i.rr, i64 48
  %i.rw = fneg <2 x double> %i.je
  store <2 x double> %i.rw, ptr %i.rv, align 8, !tbaa !29
  %i.rx = getelementptr i8, ptr %i.rr, i64 64
  %i.ry = fneg double %i.ks
  store double %i.ry, ptr %i.rx, align 8, !tbaa !12
  %i.rz = getelementptr i8, ptr %i.rr, i64 96
  %i.sa = fneg <2 x double> %i.jm
  store <2 x double> %i.sa, ptr %i.rz, align 8, !tbaa !29
  %i.sb = getelementptr i8, ptr %i.rr, i64 112
  %i.sc = fneg double %i.ku
  store double %i.sc, ptr %i.sb, align 8, !tbaa !12
  %i.sd = load ptr, ptr %2, align 8, !tbaa !136, !noalias !266 ; 6 uses
  store <2 x double> %i.kr, ptr %i.sd, align 1, !tbaa !29
  %i.se = getelementptr i8, ptr %i.sd, i64 16
  store double %i.kx, ptr %i.se, align 8, !tbaa !12
  %i.sf = getelementptr i8, ptr %i.sd, i64 48
  store <2 x double> %i.lb, ptr %i.sf, align 8, !tbaa !29
  %i.sg = getelementptr i8, ptr %i.sd, i64 64
  store double %i.lf, ptr %i.sg, align 8, !tbaa !12
  %i.sh = getelementptr i8, ptr %i.sd, i64 96
  store <2 x double> %i.lj, ptr %i.sh, align 8, !tbaa !29
  %i.si = getelementptr i8, ptr %i.sd, i64 112
  store double %i.ln, ptr %i.si, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0365)
  %.sroa.20.96.vec.extract = extractelement <2 x double> %i.pk, i64 0
  %i.sj = fmul double %.sroa.20.96.vec.extract, 2.000000e+00 ; 4 uses
  %i.sk = fneg double %i.sj
  %i.sl = shufflevector <2 x double> %i.pk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sm = insertelement <2 x double> %i.sl, double %i.pl, i64 1
  %i.sn = fmul <2 x double> %i.sm, splat (double 2.000000e+00) ; 4 uses
  %i.so = insertelement <2 x double> %i.sn, double 0.000000e+00, i64 0
  store <2 x double> %i.so, ptr %.sroa.0365, align 16, !tbaa !12
  %i.sp = fneg <2 x double> %i.sn
  %.sroa.0365.16..sroa_idx626 = getelementptr inbounds nuw i8, ptr %.sroa.0365, i64 16
  store <2 x double> %i.sp, ptr %.sroa.0365.16..sroa_idx626, align 16, !tbaa !12
  %i.sq = load ptr, ptr %1, align 8, !tbaa !136, !noalias !267 ; 6 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 144
  %i.ss = fmul <2 x double> %i.bz, zeroinitializer
  %.sroa.0365.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0365, i64 8
  %.sroa.0365.8..sroa.0365.8..sroa.0365.8..sroa.0365.8. = load <2 x double>, ptr %.sroa.0365.8..sroa_idx, align 8 ; 2 uses
  %i.st = shufflevector <2 x double> %.sroa.0365.8..sroa.0365.8..sroa.0365.8..sroa.0365.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.su = fmul <2 x double> %i.je, %i.st
  %i.sv = fadd <2 x double> %i.ss, %i.su
  %.sroa.0365.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0365, i64 16
  %.sroa.0365.16..sroa.0365.16..sroa.0365.16..sroa.0365.16. = load <2 x double>, ptr %.sroa.0365.16..sroa_idx, align 16 ; 4 uses
  %i.sw = shufflevector <2 x double> %.sroa.0365.16..sroa.0365.16..sroa.0365.16..sroa.0365.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.sx = fmul <2 x double> %i.jm, %i.sw
  %i.sy = fadd <2 x double> %i.sv, %i.sx
  %i.sz = fmul double %i.cl, 0.000000e+00
  %foldExtExtBinop596 = fmul <2 x double> %i.ke, %.sroa.0365.8..sroa.0365.8..sroa.0365.8..sroa.0365.8.
  %i.ta = extractelement <2 x double> %foldExtExtBinop596, i64 0
  %i.tb = extractelement <2 x double> %.sroa.0365.16..sroa.0365.16..sroa.0365.16..sroa.0365.16., i64 0
  %i.tc = fmul double %i.ku, %i.tb
  %i.td = fadd double %i.ta, %i.tc
  %i.te = fadd double %i.sz, %i.td
  %i.tf = extractelement <2 x double> %.sroa.0365.16..sroa.0365.16..sroa.0365.16..sroa.0365.16., i64 1
  %i.tg = shufflevector <2 x double> %.sroa.0365.16..sroa.0365.16..sroa.0365.16..sroa.0365.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.th = fmul <2 x double> %i.bz, %i.tg
  %i.ti = fmul <2 x double> %i.je, zeroinitializer ; 3 uses
  %i.tj = fadd <2 x double> %i.ti, %i.th
  %i.tk = insertelement <2 x double> poison, double %i.sj, i64 0
  %i.tl = shufflevector <2 x double> %i.tk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tm = fmul <2 x double> %i.jm, %i.tl
  %i.tn = fadd <2 x double> %i.tm, %i.tj
  %i.to = fmul double %i.cl, %i.tf
  %i.tp = fmul double %i.ks, 0.000000e+00         ; 3 uses
  %i.tq = fmul double %i.ku, %i.sj
  %i.tr = fadd double %i.tp, %i.tq
  %i.ts = fadd double %i.tr, %i.to
  %i.tt = shufflevector <2 x double> %i.sn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tu = fmul <2 x double> %i.bz, %i.tt
  %i.tv = insertelement <2 x double> poison, double %i.sk, i64 0
  %i.tw = shufflevector <2 x double> %i.tv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tx = fmul <2 x double> %i.je, %i.tw
  %i.ty = fadd <2 x double> %i.tu, %i.tx
  %i.tz = fmul <2 x double> %i.jm, zeroinitializer ; 3 uses
  %i.ua = fadd <2 x double> %i.tz, %i.ty
  %i.ub = extractelement <2 x double> %i.sn, i64 0
  %i.uc = fmul double %i.cl, %i.ub
  %i.ud = fmul double %i.ku, 0.000000e+00         ; 3 uses
  %i.ue = fmul double %i.ks, %i.sj
  %i.uf = fsub double %i.ud, %i.ue
  %i.ug = fadd double %i.uc, %i.uf
  store <2 x double> %i.sy, ptr %i.sr, align 1, !tbaa !29
  %i.uh = getelementptr i8, ptr %i.sq, i64 160
  store double %i.te, ptr %i.uh, align 8, !tbaa !12
  %i.ui = getelementptr i8, ptr %i.sq, i64 192
  store <2 x double> %i.tn, ptr %i.ui, align 8, !tbaa !29
  %i.uj = getelementptr i8, ptr %i.sq, i64 208
  store double %i.ts, ptr %i.uj, align 8, !tbaa !12
  %i.uk = getelementptr i8, ptr %i.sq, i64 240
  store <2 x double> %i.ua, ptr %i.uk, align 8, !tbaa !29
  %i.ul = getelementptr i8, ptr %i.sq, i64 256
  store double %i.ug, ptr %i.ul, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0365)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0377)
  %i.um = load double, ptr %i.oo, align 16, !tbaa !12
  %i.un = fmul double %i.um, 2.000000e+00         ; 4 uses
  store double 0.000000e+00, ptr %.sroa.0377, align 16, !tbaa !12, !noalias !268
  %i.uo = load <2 x double>, ptr %i.ot, align 8, !tbaa !12
  %i.up = fmul <2 x double> %i.uo, splat (double 2.000000e+00) ; 3 uses
  %i.uq = extractelement <2 x double> %i.up, i64 0 ; 2 uses
  %i.ur = fneg double %i.uq
  %i.us = extractelement <2 x double> %i.up, i64 1
  %i.ut = fneg double %i.us
  %.sroa.0377.8..sroa_idx624 = getelementptr inbounds nuw i8, ptr %.sroa.0377, i64 8
  store double %i.ut, ptr %.sroa.0377.8..sroa_idx624, align 8, !tbaa !12
  %.sroa.0377.16..sroa_idx625 = getelementptr inbounds nuw i8, ptr %.sroa.0377, i64 16
  store <2 x double> %i.up, ptr %.sroa.0377.16..sroa_idx625, align 16, !tbaa !12
  %i.uu = fneg double %i.un
  %i.uv = load ptr, ptr %2, align 8, !tbaa !136, !noalias !269 ; 6 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 144
  %.sroa.0377.0..sroa.0377.0..sroa.0377.0..sroa.0377.0. = load <2 x double>, ptr %.sroa.0377, align 16 ; 2 uses
  %i.ux = shufflevector <2 x double> %.sroa.0377.0..sroa.0377.0..sroa.0377.0..sroa.0377.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.uy = fmul <2 x double> %i.kr, %i.ux
  %.sroa.0377.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0377, i64 8
  %.sroa.0377.8..sroa.0377.8..sroa.0377.8..sroa.0377.8. = load <2 x double>, ptr %.sroa.0377.8..sroa_idx, align 8 ; 2 uses
  %i.uz = shufflevector <2 x double> %.sroa.0377.8..sroa.0377.8..sroa.0377.8..sroa.0377.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.va = fmul <2 x double> %i.lb, %i.uz
  %i.vb = fadd <2 x double> %i.uy, %i.va
  %.sroa.0377.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0377, i64 16
  %.sroa.0377.16..sroa.0377.16..sroa.0377.16..sroa.0377.16. = load <2 x double>, ptr %.sroa.0377.16..sroa_idx, align 16 ; 4 uses
  %i.vc = shufflevector <2 x double> %.sroa.0377.16..sroa.0377.16..sroa.0377.16..sroa.0377.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.vd = fmul <2 x double> %i.lj, %i.vc
  %i.ve = fadd <2 x double> %i.vb, %i.vd
  %i.vf = extractelement <2 x double> %.sroa.0377.0..sroa.0377.0..sroa.0377.0..sroa.0377.0., i64 0
  %i.vg = fmul double %i.kx, %i.vf
  %i.vh = extractelement <2 x double> %.sroa.0377.8..sroa.0377.8..sroa.0377.8..sroa.0377.8., i64 0
  %i.vi = fmul double %i.lf, %i.vh
  %i.vj = extractelement <2 x double> %.sroa.0377.16..sroa.0377.16..sroa.0377.16..sroa.0377.16., i64 0
  %i.vk = fmul double %i.ln, %i.vj
  %i.vl = fadd double %i.vi, %i.vk
  %i.vm = fadd double %i.vg, %i.vl
  %i.vn = extractelement <2 x double> %.sroa.0377.16..sroa.0377.16..sroa.0377.16..sroa.0377.16., i64 1
  %i.vo = shufflevector <2 x double> %.sroa.0377.16..sroa.0377.16..sroa.0377.16..sroa.0377.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vp = fmul <2 x double> %i.kr, %i.vo
  %i.vq = fmul <2 x double> %i.lb, zeroinitializer ; 3 uses
  %i.vr = fadd <2 x double> %i.vq, %i.vp
  %i.vs = insertelement <2 x double> poison, double %i.uu, i64 0
  %i.vt = shufflevector <2 x double> %i.vs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vu = fmul <2 x double> %i.lj, %i.vt
  %i.vv = fadd <2 x double> %i.vu, %i.vr
  %i.vw = fmul double %i.kx, %i.vn
  %i.vx = fmul double %i.lf, 0.000000e+00         ; 3 uses
  %i.vy = fmul double %i.ln, %i.un
  %i.vz = fsub double %i.vx, %i.vy
  %i.wa = fadd double %i.vz, %i.vw
  %i.wb = insertelement <2 x double> poison, double %i.ur, i64 0
  %i.wc = shufflevector <2 x double> %i.wb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wd = fmul <2 x double> %i.kr, %i.wc
  %i.we = insertelement <2 x double> poison, double %i.un, i64 0
  %i.wf = shufflevector <2 x double> %i.we, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wg = fmul <2 x double> %i.lb, %i.wf
  %i.wh = fadd <2 x double> %i.wg, %i.wd
  %i.wi = fmul <2 x double> %i.lj, zeroinitializer ; 3 uses
  %i.wj = fadd <2 x double> %i.wi, %i.wh
  %i.wk = fmul double %i.lf, %i.un
  %i.wl = fmul double %i.ln, 0.000000e+00         ; 3 uses
  %i.wm = fadd double %i.wl, %i.wk
  %i.wn = fmul double %i.kx, %i.uq
  %i.wo = fsub double %i.wm, %i.wn
  store <2 x double> %i.ve, ptr %i.uw, align 1, !tbaa !29
  %i.wp = getelementptr i8, ptr %i.uv, i64 160
  store double %i.vm, ptr %i.wp, align 8, !tbaa !12
  %i.wq = getelementptr i8, ptr %i.uv, i64 192
  store <2 x double> %i.vv, ptr %i.wq, align 8, !tbaa !29
  %i.wr = getelementptr i8, ptr %i.uv, i64 208
  store double %i.wa, ptr %i.wr, align 8, !tbaa !12
  %i.ws = getelementptr i8, ptr %i.uv, i64 240
  store <2 x double> %i.wj, ptr %i.ws, align 8, !tbaa !29
  %i.wt = getelementptr i8, ptr %i.uv, i64 256
  store double %i.wo, ptr %i.wt, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0377)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0390)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0443)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0456)
  %.sroa.0362.0.vec.extract = extractelement <2 x double> %i.mq, i64 0
  %.sroa.8363.32.vec.extract = extractelement <2 x double> %i.nm, i64 0
  %.sroa.14364.64.vec.extract = extractelement <2 x double> %i.oi, i64 0
  %.sroa.0362.8.vec.extract = extractelement <2 x double> %i.mq, i64 1
  %i.wu = fmul double %.sroa.0362.8.vec.extract, 2.000000e+00 ; 2 uses
  %.sroa.8363.40.vec.extract = extractelement <2 x double> %i.nm, i64 1
  %.sroa.14364.72.vec.extract = extractelement <2 x double> %i.oi, i64 1
  %i.wv = fmul double %i.mv, 2.000000e+00         ; 2 uses
  %i.ww = fmul double %i.nr, 2.000000e+00         ; 3 uses
  %i.wx = fmul double %i.on, 2.000000e+00         ; 4 uses
  store double 0.000000e+00, ptr %.sroa.0390, align 16, !tbaa !12, !noalias !270
  %.sroa.0390.24..sroa_idx623 = getelementptr inbounds nuw i8, ptr %.sroa.0390, i64 24
  store double 0.000000e+00, ptr %.sroa.0390.24..sroa_idx623, align 8, !tbaa !12
  %.sroa.0390.8..sroa_idx621 = getelementptr inbounds nuw i8, ptr %.sroa.0390, i64 8
  store double %i.wv, ptr %.sroa.0390.8..sroa_idx621, align 8, !tbaa !12
  %i.wy = fneg double %i.wu
  %19 = fmul double %.sroa.14364.72.vec.extract, 2.000000e+00 ; 4 uses
  %20 = fmul double %.sroa.8363.40.vec.extract, 2.000000e+00 ; 3 uses
  %21 = fmul double %.sroa.14364.64.vec.extract, 2.000000e+00 ; 4 uses
  %22 = fmul double %.sroa.8363.32.vec.extract, 2.000000e+00 ; 4 uses
  %i.wz = fmul double %.sroa.0362.0.vec.extract, 2.000000e+00 ; 2 uses
  %.sroa.0390.16..sroa_idx622 = getelementptr inbounds nuw i8, ptr %.sroa.0390, i64 16
  store double %i.wy, ptr %.sroa.0390.16..sroa_idx622, align 16, !tbaa !12
  %23 = fneg double %20
  %24 = fneg double %19
  %i.xa = fneg double %i.wv
  store double %i.xa, ptr %.sroa.0443, align 16, !tbaa !12, !noalias !271
  %i.xb = fneg double %i.ww
  %.sroa.0443.24..sroa_idx620 = getelementptr inbounds nuw i8, ptr %.sroa.0443, i64 24
  store double %i.xb, ptr %.sroa.0443.24..sroa_idx620, align 8, !tbaa !12
  %i.xc = fneg double %i.wx
  %.sroa.0443.8..sroa_idx618 = getelementptr inbounds nuw i8, ptr %.sroa.0443, i64 8
  store double 0.000000e+00, ptr %.sroa.0443.8..sroa_idx618, align 8, !tbaa !12
  %.sroa.0443.16..sroa_idx619 = getelementptr inbounds nuw i8, ptr %.sroa.0443, i64 16
  store double %i.wz, ptr %.sroa.0443.16..sroa_idx619, align 16, !tbaa !12
  store double %i.wu, ptr %.sroa.0456, align 16, !tbaa !12, !noalias !272
  %.sroa.0456.24..sroa_idx617 = getelementptr inbounds nuw i8, ptr %.sroa.0456, i64 24
  store double %20, ptr %.sroa.0456.24..sroa_idx617, align 8, !tbaa !12
  %i.xd = fneg double %i.wz
  %.sroa.0456.8..sroa_idx615 = getelementptr inbounds nuw i8, ptr %.sroa.0456, i64 8
  store double %i.xd, ptr %.sroa.0456.8..sroa_idx615, align 8, !tbaa !12
  %i.xe = fneg double %22
  %i.xf = fneg double %21
  %.sroa.0456.16..sroa_idx616 = getelementptr inbounds nuw i8, ptr %.sroa.0456, i64 16
  store double 0.000000e+00, ptr %.sroa.0456.16..sroa_idx616, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8423)
  %.sroa.0390.0..sroa.0390.0..sroa.0390.0..sroa.0390.0. = load <2 x double>, ptr %.sroa.0390, align 16 ; 2 uses
  %i.xg = shufflevector <2 x double> %.sroa.0390.0..sroa.0390.0..sroa.0390.0..sroa.0390.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.xh = fmul <2 x double> %i.kr, %i.xg
  %.sroa.0390.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0390, i64 8
  %.sroa.0390.8..sroa.0390.8..sroa.0390.8..sroa.0390.8. = load <2 x double>, ptr %.sroa.0390.8..sroa_idx, align 8 ; 2 uses
  %i.xi = shufflevector <2 x double> %.sroa.0390.8..sroa.0390.8..sroa.0390.8..sroa.0390.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.xj = fmul <2 x double> %i.lb, %i.xi
  %i.xk = fadd <2 x double> %i.xh, %i.xj
  %.sroa.0390.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0390, i64 16
  %.sroa.0390.16..sroa.0390.16..sroa.0390.16..sroa.0390.16. = load <2 x double>, ptr %.sroa.0390.16..sroa_idx, align 16 ; 2 uses
  %i.xl = shufflevector <2 x double> %.sroa.0390.16..sroa.0390.16..sroa.0390.16..sroa.0390.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.xm = fmul <2 x double> %i.lj, %i.xl
  %i.xn = fadd <2 x double> %i.xk, %i.xm
  %i.xo = extractelement <2 x double> %.sroa.0390.0..sroa.0390.0..sroa.0390.0..sroa.0390.0., i64 0
  %i.xp = fmul double %i.kx, %i.xo
  %i.xq = extractelement <2 x double> %.sroa.0390.8..sroa.0390.8..sroa.0390.8..sroa.0390.8., i64 0
  %i.xr = fmul double %i.lf, %i.xq
  %i.xs = extractelement <2 x double> %.sroa.0390.16..sroa.0390.16..sroa.0390.16..sroa.0390.16., i64 0
  %i.xt = fmul double %i.ln, %i.xs
  %i.xu = fadd double %i.xr, %i.xt
  %i.xv = fadd double %i.xp, %i.xu
  store double %i.xv, ptr %.sroa.8423, align 16, !tbaa !12
  %i.xw = fmul <2 x double> %i.kr, zeroinitializer ; 4 uses
  %i.xx = insertelement <2 x double> poison, double %i.ww, i64 0
  %i.xy = shufflevector <2 x double> %i.xx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xz = fmul <2 x double> %i.lb, %i.xy
  %i.ya = fadd <2 x double> %i.xw, %i.xz
  %i.yb = insertelement <2 x double> poison, double %23, i64 0
  %i.yc = shufflevector <2 x double> %i.yb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yd = fmul <2 x double> %i.lj, %i.yc
  %i.ye = fadd <2 x double> %i.ya, %i.yd
  %.sroa.8423.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8423, i64 8
  store <2 x double> %i.ye, ptr %.sroa.8423.8..sroa_idx, align 8, !tbaa !29
  %i.yf = fmul double %i.kx, 0.000000e+00         ; 4 uses
  %i.yg = fmul double %i.lf, %i.ww
  %i.yh = fmul double %i.ln, %20
  %i.yi = fsub double %i.yg, %i.yh
  %i.yj = fadd double %i.yf, %i.yi
  %.sroa.8423.24..sroa_idx614 = getelementptr inbounds nuw i8, ptr %.sroa.8423, i64 24
  store double %i.yj, ptr %.sroa.8423.24..sroa_idx614, align 8, !tbaa !12
  %i.yk = insertelement <2 x double> poison, double %i.wx, i64 0
  %i.yl = shufflevector <2 x double> %i.yk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ym = fmul <2 x double> %i.lb, %i.yl
  %i.yn = fadd <2 x double> %i.xw, %i.ym
  %i.yo = insertelement <2 x double> poison, double %24, i64 0
  %i.yp = shufflevector <2 x double> %i.yo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yq = fmul <2 x double> %i.lj, %i.yp
  %i.yr = fadd <2 x double> %i.yn, %i.yq
  %i.ys = fmul double %i.lf, %i.wx
  %i.yt = fmul double %i.ln, %19
  %i.yu = fsub double %i.ys, %i.yt
  %i.yv = fadd double %i.yf, %i.yu
  store <2 x double> %i.xn, ptr %i.j, align 16, !tbaa !29
  %i.yw = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.8423.0..sroa.8423.0..sroa.8423.0..sroa.8423.16.425 = load <2 x double>, ptr %.sroa.8423, align 16, !tbaa !29
  store <2 x double> %.sroa.8423.0..sroa.8423.0..sroa.8423.0..sroa.8423.16.425, ptr %i.yw, align 16, !tbaa !29
  %i.yx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.8423.16..sroa_idx613 = getelementptr inbounds nuw i8, ptr %.sroa.8423, i64 16
  %.sroa.8423.16..sroa.8423.16..sroa.8423.16..sroa.8423.32.431 = load <2 x double>, ptr %.sroa.8423.16..sroa_idx613, align 16, !tbaa !29
  store <2 x double> %.sroa.8423.16..sroa.8423.16..sroa.8423.16..sroa.8423.32.431, ptr %i.yx, align 16, !tbaa !29
  %i.yy = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store <2 x double> %i.yr, ptr %i.yy, align 16, !tbaa !29
  %i.yz = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store double %i.yv, ptr %i.yz, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %.sroa.0443.0..sroa.0443.0..sroa.0443.0..sroa.0443.0. = load <2 x double>, ptr %.sroa.0443, align 16 ; 2 uses
  %i.za = shufflevector <2 x double> %.sroa.0443.0..sroa.0443.0..sroa.0443.0..sroa.0443.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.zb = fmul <2 x double> %i.bz, %i.za
  %.sroa.0443.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0443, i64 8
  %.sroa.0443.8..sroa.0443.8..sroa.0443.8..sroa.0443.8. = load <2 x double>, ptr %.sroa.0443.8..sroa_idx, align 8 ; 2 uses
  %i.zc = shufflevector <2 x double> %.sroa.0443.8..sroa.0443.8..sroa.0443.8..sroa.0443.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.zd = fmul <2 x double> %i.je, %i.zc
  %i.ze = fadd <2 x double> %i.zb, %i.zd
  %.sroa.0443.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0443, i64 16
  %.sroa.0443.16..sroa.0443.16..sroa.0443.16..sroa.0443.16. = load <2 x double>, ptr %.sroa.0443.16..sroa_idx, align 16 ; 4 uses
  %i.zf = shufflevector <2 x double> %.sroa.0443.16..sroa.0443.16..sroa.0443.16..sroa.0443.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.zg = fmul <2 x double> %i.jm, %i.zf
  %i.zh = fadd <2 x double> %i.ze, %i.zg
  %i.zi = extractelement <2 x double> %.sroa.0443.0..sroa.0443.0..sroa.0443.0..sroa.0443.0., i64 0
  %i.zj = fmul double %i.cl, %i.zi
  %foldExtExtBinop598 = fmul <2 x double> %i.ke, %.sroa.0443.8..sroa.0443.8..sroa.0443.8..sroa.0443.8.
  %i.zk = extractelement <2 x double> %foldExtExtBinop598, i64 0
  %i.zl = extractelement <2 x double> %.sroa.0443.16..sroa.0443.16..sroa.0443.16..sroa.0443.16., i64 0
  %i.zm = fmul double %i.ku, %i.zl
  %i.zn = fadd double %i.zk, %i.zm
  %i.zo = fadd double %i.zj, %i.zn
  store double %i.zo, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !12
  %i.zp = extractelement <2 x double> %.sroa.0443.16..sroa.0443.16..sroa.0443.16..sroa.0443.16., i64 1
  %i.zq = shufflevector <2 x double> %.sroa.0443.16..sroa.0443.16..sroa.0443.16..sroa.0443.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.zr = fmul <2 x double> %i.bz, %i.zq
  %i.zs = fadd <2 x double> %i.ti, %i.zr
  %i.zt = insertelement <2 x double> poison, double %22, i64 0
  %i.zu = shufflevector <2 x double> %i.zt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zv = fmul <2 x double> %i.jm, %i.zu
  %i.zw = fadd <2 x double> %i.zv, %i.zs
  %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 8
  store <2 x double> %i.zw, ptr %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !29
  %i.zx = fmul double %i.cl, %i.zp
  %i.zy = fmul double %i.ku, %22
  %i.zz = fadd double %i.tp, %i.zy
  %i.aaa = fadd double %i.zz, %i.zx
  %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 24
  store double %i.aaa, ptr %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !12
  %i.aab = insertelement <2 x double> poison, double %i.xc, i64 0
  %i.aac = shufflevector <2 x double> %i.aab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aad = fmul <2 x double> %i.bz, %i.aac
  %i.aae = fadd <2 x double> %i.ti, %i.aad
  %i.aaf = insertelement <2 x double> poison, double %21, i64 0
  %i.aag = shufflevector <2 x double> %i.aaf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aah = fmul <2 x double> %i.jm, %i.aag
  %i.aai = fadd <2 x double> %i.aae, %i.aah
  %i.aaj = fmul double %i.ku, %21
  %i.aak = fadd double %i.tp, %i.aaj
  %i.aal = fmul double %i.cl, %i.wx
  %i.aam = fsub double %i.aak, %i.aal
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !29
  %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 16
  %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.aan = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store <2 x double> %i.zh, ptr %i.aan, align 8, !tbaa !29
  %i.aao = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store <2 x double> %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i, ptr %i.aao, align 8, !tbaa !29
  %i.aap = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store <2 x double> %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i, ptr %i.aap, align 8, !tbaa !29
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store <2 x double> %i.aai, ptr %i.aaq, align 8, !tbaa !29
  %i.aar = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store double %i.aam, ptr %i.aar, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i24)
  %.sroa.0456.0..sroa.0456.0..sroa.0456.0..sroa.0456.0. = load <2 x double>, ptr %.sroa.0456, align 16 ; 2 uses
  %i.aas = shufflevector <2 x double> %.sroa.0456.0..sroa.0456.0..sroa.0456.0..sroa.0456.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.aat = fmul <2 x double> %i.bz, %i.aas
  %.sroa.0456.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0456, i64 8
  %.sroa.0456.8..sroa.0456.8..sroa.0456.8..sroa.0456.8. = load <2 x double>, ptr %.sroa.0456.8..sroa_idx, align 8 ; 2 uses
  %i.aau = shufflevector <2 x double> %.sroa.0456.8..sroa.0456.8..sroa.0456.8..sroa.0456.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.aav = fmul <2 x double> %i.je, %i.aau
  %i.aaw = fadd <2 x double> %i.aat, %i.aav
  %.sroa.0456.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0456, i64 16
  %.sroa.0456.16..sroa.0456.16..sroa.0456.16..sroa.0456.16. = load <2 x double>, ptr %.sroa.0456.16..sroa_idx, align 16 ; 4 uses
  %i.aax = shufflevector <2 x double> %.sroa.0456.16..sroa.0456.16..sroa.0456.16..sroa.0456.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.aay = fmul <2 x double> %i.jm, %i.aax
  %i.aaz = fadd <2 x double> %i.aaw, %i.aay
  %i.aba = extractelement <2 x double> %.sroa.0456.0..sroa.0456.0..sroa.0456.0..sroa.0456.0., i64 0
  %i.abb = fmul double %i.cl, %i.aba
  %foldExtExtBinop600 = fmul <2 x double> %i.ke, %.sroa.0456.8..sroa.0456.8..sroa.0456.8..sroa.0456.8.
  %i.abc = extractelement <2 x double> %foldExtExtBinop600, i64 0
  %i.abd = extractelement <2 x double> %.sroa.0456.16..sroa.0456.16..sroa.0456.16..sroa.0456.16., i64 0
  %i.abe = fmul double %i.ku, %i.abd
  %i.abf = fadd double %i.abc, %i.abe
  %i.abg = fadd double %i.abb, %i.abf
  store double %i.abg, ptr %.sroa.4.i.i.i.i24, align 16, !tbaa !12
  %i.abh = extractelement <2 x double> %.sroa.0456.16..sroa.0456.16..sroa.0456.16..sroa.0456.16., i64 1
  %i.abi = shufflevector <2 x double> %.sroa.0456.16..sroa.0456.16..sroa.0456.16..sroa.0456.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.abj = fmul <2 x double> %i.bz, %i.abi
  %i.abk = insertelement <2 x double> poison, double %i.xe, i64 0
  %i.abl = shufflevector <2 x double> %i.abk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abm = fmul <2 x double> %i.je, %i.abl
  %i.abn = fadd <2 x double> %i.abm, %i.abj
  %i.abo = fadd <2 x double> %i.tz, %i.abn
  %.sroa.4.i.i.i.i24.8.i.i.i.i24.8.i.i.i.i24.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i24, i64 8
  store <2 x double> %i.abo, ptr %.sroa.4.i.i.i.i24.8.i.i.i.i24.8.i.i.i.i24.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !29
  %i.abp = fmul double %i.cl, %i.abh
  %i.abq = fmul double %i.ks, %22
  %i.abr = fsub double %i.ud, %i.abq
  %i.abs = fadd double %i.abr, %i.abp
  %.sroa.4.i.i.i.i24.24.i.i.i.i24.24.i.i.i.i24.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i24, i64 24
  store double %i.abs, ptr %.sroa.4.i.i.i.i24.24.i.i.i.i24.24.i.i.i.i24.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !12
  %i.abt = insertelement <2 x double> poison, double %19, i64 0
  %i.abu = shufflevector <2 x double> %i.abt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abv = fmul <2 x double> %i.bz, %i.abu
  %i.abw = insertelement <2 x double> poison, double %i.xf, i64 0
  %i.abx = shufflevector <2 x double> %i.abw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aby = fmul <2 x double> %i.je, %i.abx
  %i.abz = fadd <2 x double> %i.abv, %i.aby
  %i.aca = fadd <2 x double> %i.tz, %i.abz
  %i.acb = fmul double %i.cl, %19
  %i.acc = fmul double %i.ks, %21
  %i.acd = fsub double %i.ud, %i.acc
  %i.ace = fadd double %i.acb, %i.acd
  %.sroa.4.i.i.i.i24.0..sroa.4.i.i.i.i24.0..sroa.4.i.i.i.i24.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i28 = load <2 x double>, ptr %.sroa.4.i.i.i.i24, align 16, !tbaa !29
  %.sroa.4.i.i.i.i24.16.i.i.i.i24.16.i.i.i.i24.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i24, i64 16
  %.sroa.4.i.i.i.i24.16..sroa.4.i.i.i.i24.16..sroa.4.i.i.i.i24.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i30 = load <2 x double>, ptr %.sroa.4.i.i.i.i24.16.i.i.i.i24.16.i.i.i.i24.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i24)
  %i.acf = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store <2 x double> %i.aaz, ptr %i.acf, align 16, !tbaa !29
  %i.acg = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  store <2 x double> %.sroa.4.i.i.i.i24.0..sroa.4.i.i.i.i24.0..sroa.4.i.i.i.i24.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i28, ptr %i.acg, align 16, !tbaa !29
  %i.ach = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  store <2 x double> %.sroa.4.i.i.i.i24.16..sroa.4.i.i.i.i24.16..sroa.4.i.i.i.i24.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i30, ptr %i.ach, align 16, !tbaa !29
  %i.aci = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  store <2 x double> %i.aca, ptr %i.aci, align 16, !tbaa !29
  %i.acj = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  store double %i.ace, ptr %i.acj, align 16, !tbaa !12
  %i.ack = load ptr, ptr %1, align 8, !tbaa !136, !noalias !273 ; 6 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.acm = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store ptr %i.j, ptr %i.acm, align 8
  store ptr %18, ptr %13, align 8, !tbaa !274
  %i.acn = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %18, ptr %i.acn, align 8, !tbaa !275
  %i.aco = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.j, ptr %i.aco, align 8, !tbaa !142
  %i.acp = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i64 9, ptr %i.acp, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store ptr %17, ptr %14, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store ptr %14, ptr %15, align 8, !tbaa !277
  %i.acq = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %13, ptr %i.acq, align 8, !tbaa !278
  %i.acr = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %16, ptr %i.acr, align 8, !tbaa !279
  %i.acs = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %17, ptr %i.acs, align 8, !tbaa !280
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS3_INS_7ProductINS4_IdLi3ELi9ELi0ELi3ELi9EEENS_3MapINS4_IdLi9ELi3ELi0ELi9ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_9assign_opIddEEEELi4ELi1EE3runERSI_(ptr noundef nonnull align 8 dereferenceable(32) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.act = load <2 x double>, ptr %17, align 16, !tbaa !29
  store <2 x double> %i.act, ptr %i.acl, align 1, !tbaa !29
  %i.acu = getelementptr i8, ptr %i.ack, i64 184
  %i.acv = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.acw = load double, ptr %i.acv, align 16, !tbaa !12
  store double %i.acw, ptr %i.acu, align 8, !tbaa !12
  %i.acx = getelementptr i8, ptr %i.ack, i64 216
  %i.acy = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.acz = load <2 x double>, ptr %i.acy, align 8, !tbaa !29
  store <2 x double> %i.acz, ptr %i.acx, align 8, !tbaa !29
  %i.ada = getelementptr i8, ptr %i.ack, i64 232
  %i.adb = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !12
  store double %i.adc, ptr %i.ada, align 8, !tbaa !12
  %i.add = getelementptr i8, ptr %i.ack, i64 264
  %i.ade = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.adf = load <2 x double>, ptr %i.ade, align 16, !tbaa !29
  store <2 x double> %i.adf, ptr %i.add, align 8, !tbaa !29
  %i.adg = getelementptr i8, ptr %i.ack, i64 280
  %i.adh = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.adi = load double, ptr %i.adh, align 16, !tbaa !12
  store double %i.adi, ptr %i.adg, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8423)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0456)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0443)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0390)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0469)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0522)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0535)
  %i.adj = load double, ptr %7, align 16, !tbaa !12
  %i.adk = load double, ptr %i.mw, align 16, !tbaa !12
  %i.adl = load double, ptr %i.ns, align 16, !tbaa !12
  %i.adm = load double, ptr %i.mf, align 8, !tbaa !12
  %i.adn = load double, ptr %i.nb, align 8, !tbaa !12
  %i.ado = load double, ptr %i.nx, align 8, !tbaa !12
  %i.adp = load double, ptr %i.ml, align 16, !tbaa !12
  %i.adq = fmul double %i.adp, 2.000000e+00       ; 2 uses
  %i.adr = load double, ptr %i.nh, align 16, !tbaa !12
  %i.ads = fmul double %i.adr, 2.000000e+00       ; 3 uses
  %i.adt = load double, ptr %i.od, align 16, !tbaa !12
  %i.adu = fmul double %i.adt, 2.000000e+00       ; 4 uses
  store double 0.000000e+00, ptr %.sroa.0469, align 16, !tbaa !12, !noalias !281
  %.sroa.0469.24..sroa_idx612 = getelementptr inbounds nuw i8, ptr %.sroa.0469, i64 24
  store double 0.000000e+00, ptr %.sroa.0469.24..sroa_idx612, align 8, !tbaa !12
  %i.adv = fneg double %i.adq
  %.sroa.0469.8..sroa_idx610 = getelementptr inbounds nuw i8, ptr %.sroa.0469, i64 8
  store double %i.adv, ptr %.sroa.0469.8..sroa_idx610, align 8, !tbaa !12
  %i.adw = fneg double %i.ads
  %i.adx = fneg double %i.adu
  %25 = fmul double %i.ado, 2.000000e+00          ; 4 uses
  %26 = fmul double %i.adn, 2.000000e+00          ; 3 uses
  %i.ady = fmul double %i.adm, 2.000000e+00       ; 2 uses
  %i.adz = fmul double %i.adl, 2.000000e+00       ; 4 uses
  %i.aea = fmul double %i.adk, 2.000000e+00       ; 4 uses
  %i.aeb = fmul double %i.adj, 2.000000e+00       ; 2 uses
  %.sroa.0469.16..sroa_idx611 = getelementptr inbounds nuw i8, ptr %.sroa.0469, i64 16
  store double %i.ady, ptr %.sroa.0469.16..sroa_idx611, align 16, !tbaa !12
  store double %i.adq, ptr %.sroa.0522, align 16, !tbaa !12, !noalias !282
  %.sroa.0522.24..sroa_idx609 = getelementptr inbounds nuw i8, ptr %.sroa.0522, i64 24
  store double %i.ads, ptr %.sroa.0522.24..sroa_idx609, align 8, !tbaa !12
  %.sroa.0522.8..sroa_idx607 = getelementptr inbounds nuw i8, ptr %.sroa.0522, i64 8
  store double 0.000000e+00, ptr %.sroa.0522.8..sroa_idx607, align 8, !tbaa !12
  %i.aec = fneg double %i.aeb
  %.sroa.0522.16..sroa_idx608 = getelementptr inbounds nuw i8, ptr %.sroa.0522, i64 16
  store double %i.aec, ptr %.sroa.0522.16..sroa_idx608, align 16, !tbaa !12
  %i.aed = fneg double %i.aea
  %i.aee = fneg double %i.adz
  %i.aef = fneg double %i.ady
  store double %i.aef, ptr %.sroa.0535, align 16, !tbaa !12, !noalias !283
  %i.aeg = fneg double %26
  %.sroa.0535.24..sroa_idx606 = getelementptr inbounds nuw i8, ptr %.sroa.0535, i64 24
  store double %i.aeg, ptr %.sroa.0535.24..sroa_idx606, align 8, !tbaa !12
  %i.aeh = fneg double %25
  %.sroa.0535.8..sroa_idx604 = getelementptr inbounds nuw i8, ptr %.sroa.0535, i64 8
  store double %i.aeb, ptr %.sroa.0535.8..sroa_idx604, align 8, !tbaa !12
  %.sroa.0535.16..sroa_idx605 = getelementptr inbounds nuw i8, ptr %.sroa.0535, i64 16
  store double 0.000000e+00, ptr %.sroa.0535.16..sroa_idx605, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8502)
  %.sroa.0469.0..sroa.0469.0..sroa.0469.0..sroa.0469.0. = load <2 x double>, ptr %.sroa.0469, align 16 ; 2 uses
  %i.aei = shufflevector <2 x double> %.sroa.0469.0..sroa.0469.0..sroa.0469.0..sroa.0469.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.aej = fmul <2 x double> %i.kr, %i.aei
  %.sroa.0469.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0469, i64 8
  %.sroa.0469.8..sroa.0469.8..sroa.0469.8..sroa.0469.8. = load <2 x double>, ptr %.sroa.0469.8..sroa_idx, align 8 ; 2 uses
  %i.aek = shufflevector <2 x double> %.sroa.0469.8..sroa.0469.8..sroa.0469.8..sroa.0469.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ael = fmul <2 x double> %i.lb, %i.aek
  %i.aem = fadd <2 x double> %i.aej, %i.ael
  %.sroa.0469.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0469, i64 16
  %.sroa.0469.16..sroa.0469.16..sroa.0469.16..sroa.0469.16. = load <2 x double>, ptr %.sroa.0469.16..sroa_idx, align 16 ; 2 uses
  %i.aen = shufflevector <2 x double> %.sroa.0469.16..sroa.0469.16..sroa.0469.16..sroa.0469.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.aeo = fmul <2 x double> %i.lj, %i.aen
  %i.aep = fadd <2 x double> %i.aem, %i.aeo
  %i.aeq = extractelement <2 x double> %.sroa.0469.0..sroa.0469.0..sroa.0469.0..sroa.0469.0., i64 0
  %i.aer = fmul double %i.kx, %i.aeq
  %i.aes = extractelement <2 x double> %.sroa.0469.8..sroa.0469.8..sroa.0469.8..sroa.0469.8., i64 0
  %i.aet = fmul double %i.lf, %i.aes
  %i.aeu = extractelement <2 x double> %.sroa.0469.16..sroa.0469.16..sroa.0469.16..sroa.0469.16., i64 0
  %i.aev = fmul double %i.ln, %i.aeu
  %i.aew = fadd double %i.aet, %i.aev
  %i.aex = fadd double %i.aer, %i.aew
  store double %i.aex, ptr %.sroa.8502, align 16, !tbaa !12
  %i.aey = insertelement <2 x double> poison, double %i.adw, i64 0
  %i.aez = shufflevector <2 x double> %i.aey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afa = fmul <2 x double> %i.lb, %i.aez
  %i.afb = fadd <2 x double> %i.xw, %i.afa
  %i.afc = insertelement <2 x double> poison, double %26, i64 0
  %i.afd = shufflevector <2 x double> %i.afc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afe = fmul <2 x double> %i.lj, %i.afd
  %i.aff = fadd <2 x double> %i.afe, %i.afb
  %.sroa.8502.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8502, i64 8
  store <2 x double> %i.aff, ptr %.sroa.8502.8..sroa_idx, align 8, !tbaa !29
  %i.afg = fmul double %i.ln, %26
  %i.afh = fmul double %i.lf, %i.ads
  %i.afi = fsub double %i.afg, %i.afh
  %i.afj = fadd double %i.yf, %i.afi
  %.sroa.8502.24..sroa_idx603 = getelementptr inbounds nuw i8, ptr %.sroa.8502, i64 24
  store double %i.afj, ptr %.sroa.8502.24..sroa_idx603, align 8, !tbaa !12
  %i.afk = insertelement <2 x double> poison, double %i.adx, i64 0
  %i.afl = shufflevector <2 x double> %i.afk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afm = fmul <2 x double> %i.lb, %i.afl
  %i.afn = fadd <2 x double> %i.xw, %i.afm
  %i.afo = insertelement <2 x double> poison, double %25, i64 0
  %i.afp = shufflevector <2 x double> %i.afo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afq = fmul <2 x double> %i.lj, %i.afp
  %i.afr = fadd <2 x double> %i.afq, %i.afn
  %i.afs = fmul double %i.ln, %25
  %i.aft = fmul double %i.lf, %i.adu
  %i.afu = fsub double %i.afs, %i.aft
  %i.afv = fadd double %i.yf, %i.afu
  store <2 x double> %i.aep, ptr %i.k, align 16, !tbaa !29
  %i.afw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.8502.0..sroa.8502.0..sroa.8502.0..sroa.8502.16.504 = load <2 x double>, ptr %.sroa.8502, align 16, !tbaa !29
  store <2 x double> %.sroa.8502.0..sroa.8502.0..sroa.8502.0..sroa.8502.16.504, ptr %i.afw, align 16, !tbaa !29
  %i.afx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.8502.16..sroa_idx602 = getelementptr inbounds nuw i8, ptr %.sroa.8502, i64 16
  %.sroa.8502.16..sroa.8502.16..sroa.8502.16..sroa.8502.32.510 = load <2 x double>, ptr %.sroa.8502.16..sroa_idx602, align 16, !tbaa !29
  store <2 x double> %.sroa.8502.16..sroa.8502.16..sroa.8502.16..sroa.8502.32.510, ptr %i.afx, align 16, !tbaa !29
  %i.afy = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store <2 x double> %i.afr, ptr %i.afy, align 16, !tbaa !29
  %i.afz = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store double %i.afv, ptr %i.afz, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i32)
  %.sroa.0522.0..sroa.0522.0..sroa.0522.0..sroa.0522.0. = load <2 x double>, ptr %.sroa.0522, align 16 ; 2 uses
  %i.aga = shufflevector <2 x double> %.sroa.0522.0..sroa.0522.0..sroa.0522.0..sroa.0522.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.agb = fmul <2 x double> %i.kr, %i.aga
  %.sroa.0522.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0522, i64 8
  %.sroa.0522.8..sroa.0522.8..sroa.0522.8..sroa.0522.8. = load <2 x double>, ptr %.sroa.0522.8..sroa_idx, align 8 ; 2 uses
  %i.agc = shufflevector <2 x double> %.sroa.0522.8..sroa.0522.8..sroa.0522.8..sroa.0522.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.agd = fmul <2 x double> %i.lb, %i.agc
  %i.age = fadd <2 x double> %i.agb, %i.agd
  %.sroa.0522.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0522, i64 16
  %.sroa.0522.16..sroa.0522.16..sroa.0522.16..sroa.0522.16. = load <2 x double>, ptr %.sroa.0522.16..sroa_idx, align 16 ; 4 uses
  %i.agf = shufflevector <2 x double> %.sroa.0522.16..sroa.0522.16..sroa.0522.16..sroa.0522.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.agg = fmul <2 x double> %i.lj, %i.agf
  %i.agh = fadd <2 x double> %i.age, %i.agg
  %i.agi = extractelement <2 x double> %.sroa.0522.0..sroa.0522.0..sroa.0522.0..sroa.0522.0., i64 0
  %i.agj = fmul double %i.kx, %i.agi
  %i.agk = extractelement <2 x double> %.sroa.0522.8..sroa.0522.8..sroa.0522.8..sroa.0522.8., i64 0
  %i.agl = fmul double %i.lf, %i.agk
  %i.agm = extractelement <2 x double> %.sroa.0522.16..sroa.0522.16..sroa.0522.16..sroa.0522.16., i64 0
  %i.agn = fmul double %i.ln, %i.agm
  %i.ago = fadd double %i.agl, %i.agn
  %i.agp = fadd double %i.agj, %i.ago
  store double %i.agp, ptr %.sroa.4.i.i.i.i32, align 16, !tbaa !12
  %i.agq = extractelement <2 x double> %.sroa.0522.16..sroa.0522.16..sroa.0522.16..sroa.0522.16., i64 1
  %i.agr = shufflevector <2 x double> %.sroa.0522.16..sroa.0522.16..sroa.0522.16..sroa.0522.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ags = fmul <2 x double> %i.kr, %i.agr
  %i.agt = fadd <2 x double> %i.vq, %i.ags
  %i.agu = insertelement <2 x double> poison, double %i.aed, i64 0
  %i.agv = shufflevector <2 x double> %i.agu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agw = fmul <2 x double> %i.lj, %i.agv
  %i.agx = fadd <2 x double> %i.agw, %i.agt
  %.sroa.4.i.i.i.i32.8.i.i.i.i32.8.i.i.i.i32.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i32, i64 8
  store <2 x double> %i.agx, ptr %.sroa.4.i.i.i.i32.8.i.i.i.i32.8.i.i.i.i32.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !29
  %i.agy = fmul double %i.kx, %i.agq
  %i.agz = fmul double %i.ln, %i.aea
  %i.aha = fsub double %i.vx, %i.agz
  %i.ahb = fadd double %i.aha, %i.agy
  %.sroa.4.i.i.i.i32.24.i.i.i.i32.24.i.i.i.i32.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i32, i64 24
  store double %i.ahb, ptr %.sroa.4.i.i.i.i32.24.i.i.i.i32.24.i.i.i.i32.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !12
  %i.ahc = insertelement <2 x double> poison, double %i.adu, i64 0
  %i.ahd = shufflevector <2 x double> %i.ahc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahe = fmul <2 x double> %i.kr, %i.ahd
  %i.ahf = fadd <2 x double> %i.vq, %i.ahe
  %i.ahg = insertelement <2 x double> poison, double %i.aee, i64 0
  %i.ahh = shufflevector <2 x double> %i.ahg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahi = fmul <2 x double> %i.lj, %i.ahh
  %i.ahj = fadd <2 x double> %i.ahi, %i.ahf
  %i.ahk = fmul double %i.kx, %i.adu
  %i.ahl = fmul double %i.ln, %i.adz
  %i.ahm = fsub double %i.vx, %i.ahl
  %i.ahn = fadd double %i.ahm, %i.ahk
  %.sroa.4.i.i.i.i32.0..sroa.4.i.i.i.i32.0..sroa.4.i.i.i.i32.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i36 = load <2 x double>, ptr %.sroa.4.i.i.i.i32, align 16, !tbaa !29
  %.sroa.4.i.i.i.i32.16.i.i.i.i32.16.i.i.i.i32.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i32, i64 16
  %.sroa.4.i.i.i.i32.16..sroa.4.i.i.i.i32.16..sroa.4.i.i.i.i32.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i38 = load <2 x double>, ptr %.sroa.4.i.i.i.i32.16.i.i.i.i32.16.i.i.i.i32.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i32)
  %i.aho = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store <2 x double> %i.agh, ptr %i.aho, align 8, !tbaa !29
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store <2 x double> %.sroa.4.i.i.i.i32.0..sroa.4.i.i.i.i32.0..sroa.4.i.i.i.i32.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i36, ptr %i.ahp, align 8, !tbaa !29
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store <2 x double> %.sroa.4.i.i.i.i32.16..sroa.4.i.i.i.i32.16..sroa.4.i.i.i.i32.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i38, ptr %i.ahq, align 8, !tbaa !29
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store <2 x double> %i.ahj, ptr %i.ahr, align 8, !tbaa !29
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store double %i.ahn, ptr %i.ahs, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i39)
  %.sroa.0535.0..sroa.0535.0..sroa.0535.0..sroa.0535.0. = load <2 x double>, ptr %.sroa.0535, align 16 ; 2 uses
  %i.aht = shufflevector <2 x double> %.sroa.0535.0..sroa.0535.0..sroa.0535.0..sroa.0535.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahu = fmul <2 x double> %i.kr, %i.aht
  %.sroa.0535.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0535, i64 8
  %.sroa.0535.8..sroa.0535.8..sroa.0535.8..sroa.0535.8. = load <2 x double>, ptr %.sroa.0535.8..sroa_idx, align 8 ; 2 uses
  %i.ahv = shufflevector <2 x double> %.sroa.0535.8..sroa.0535.8..sroa.0535.8..sroa.0535.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahw = fmul <2 x double> %i.lb, %i.ahv
  %i.ahx = fadd <2 x double> %i.ahu, %i.ahw
  %.sroa.0535.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0535, i64 16
  %.sroa.0535.16..sroa.0535.16..sroa.0535.16..sroa.0535.16. = load <2 x double>, ptr %.sroa.0535.16..sroa_idx, align 16 ; 4 uses
  %i.ahy = shufflevector <2 x double> %.sroa.0535.16..sroa.0535.16..sroa.0535.16..sroa.0535.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahz = fmul <2 x double> %i.lj, %i.ahy
  %i.aia = fadd <2 x double> %i.ahx, %i.ahz
  %i.aib = extractelement <2 x double> %.sroa.0535.0..sroa.0535.0..sroa.0535.0..sroa.0535.0., i64 0
  %i.aic = fmul double %i.kx, %i.aib
  %i.aid = extractelement <2 x double> %.sroa.0535.8..sroa.0535.8..sroa.0535.8..sroa.0535.8., i64 0
  %i.aie = fmul double %i.lf, %i.aid
  %i.aif = extractelement <2 x double> %.sroa.0535.16..sroa.0535.16..sroa.0535.16..sroa.0535.16., i64 0
  %i.aig = fmul double %i.ln, %i.aif
  %i.aih = fadd double %i.aie, %i.aig
  %i.aii = fadd double %i.aic, %i.aih
  store double %i.aii, ptr %.sroa.4.i.i.i.i39, align 16, !tbaa !12
  %i.aij = extractelement <2 x double> %.sroa.0535.16..sroa.0535.16..sroa.0535.16..sroa.0535.16., i64 1
  %i.aik = shufflevector <2 x double> %.sroa.0535.16..sroa.0535.16..sroa.0535.16..sroa.0535.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ail = fmul <2 x double> %i.kr, %i.aik
  %i.aim = insertelement <2 x double> poison, double %i.aea, i64 0
  %i.ain = shufflevector <2 x double> %i.aim, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aio = fmul <2 x double> %i.lb, %i.ain
  %i.aip = fadd <2 x double> %i.aio, %i.ail
  %i.aiq = fadd <2 x double> %i.wi, %i.aip
  %.sroa.4.i.i.i.i39.8.i.i.i.i39.8.i.i.i.i39.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i39, i64 8
  store <2 x double> %i.aiq, ptr %.sroa.4.i.i.i.i39.8.i.i.i.i39.8.i.i.i.i39.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !29
  %i.air = fmul double %i.kx, %i.aij
  %i.ais = fmul double %i.lf, %i.aea
  %i.ait = fadd double %i.wl, %i.ais
  %i.aiu = fadd double %i.ait, %i.air
  %.sroa.4.i.i.i.i39.24.i.i.i.i39.24.i.i.i.i39.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i39, i64 24
  store double %i.aiu, ptr %.sroa.4.i.i.i.i39.24.i.i.i.i39.24.i.i.i.i39.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !12
  %i.aiv = insertelement <2 x double> poison, double %i.aeh, i64 0
  %i.aiw = shufflevector <2 x double> %i.aiv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aix = fmul <2 x double> %i.kr, %i.aiw
  %i.aiy = insertelement <2 x double> poison, double %i.adz, i64 0
  %i.aiz = shufflevector <2 x double> %i.aiy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aja = fmul <2 x double> %i.lb, %i.aiz
  %i.ajb = fadd <2 x double> %i.aja, %i.aix
  %i.ajc = fadd <2 x double> %i.wi, %i.ajb
  %i.ajd = fmul double %i.lf, %i.adz
  %i.aje = fadd double %i.wl, %i.ajd
  %i.ajf = fmul double %i.kx, %25
  %i.ajg = fsub double %i.aje, %i.ajf
  %.sroa.4.i.i.i.i39.0..sroa.4.i.i.i.i39.0..sroa.4.i.i.i.i39.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i43 = load <2 x double>, ptr %.sroa.4.i.i.i.i39, align 16, !tbaa !29
  %.sroa.4.i.i.i.i39.16.i.i.i.i39.16.i.i.i.i39.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i39, i64 16
  %.sroa.4.i.i.i.i39.16..sroa.4.i.i.i.i39.16..sroa.4.i.i.i.i39.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i45 = load <2 x double>, ptr %.sroa.4.i.i.i.i39.16.i.i.i.i39.16.i.i.i.i39.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i39)
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store <2 x double> %i.aia, ptr %i.ajh, align 16, !tbaa !29
  %i.aji = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store <2 x double> %.sroa.4.i.i.i.i39.0..sroa.4.i.i.i.i39.0..sroa.4.i.i.i.i39.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i43, ptr %i.aji, align 16, !tbaa !29
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  store <2 x double> %.sroa.4.i.i.i.i39.16..sroa.4.i.i.i.i39.16..sroa.4.i.i.i.i39.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i45, ptr %i.ajj, align 16, !tbaa !29
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store <2 x double> %i.ajc, ptr %i.ajk, align 16, !tbaa !29
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  store double %i.ajg, ptr %i.ajl, align 16, !tbaa !12
  %i.ajm = load ptr, ptr %2, align 8, !tbaa !136, !noalias !284 ; 6 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.ajo = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.k, ptr %i.ajo, align 8
  store ptr %18, ptr %8, align 8, !tbaa !274
  %i.ajp = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %18, ptr %i.ajp, align 8, !tbaa !275
  %i.ajq = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.k, ptr %i.ajq, align 8, !tbaa !142
  %i.ajr = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 9, ptr %i.ajr, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %12, ptr %9, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %9, ptr %10, align 8, !tbaa !277
  %i.ajs = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %8, ptr %i.ajs, align 8, !tbaa !278
  %i.ajt = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %11, ptr %i.ajt, align 8, !tbaa !279
  %i.aju = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %12, ptr %i.aju, align 8, !tbaa !280
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS3_INS_7ProductINS4_IdLi3ELi9ELi0ELi3ELi9EEENS_3MapINS4_IdLi9ELi3ELi0ELi9ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_9assign_opIddEEEELi4ELi1EE3runERSI_(ptr noundef nonnull align 8 dereferenceable(32) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ajv = load <2 x double>, ptr %12, align 16, !tbaa !29
  store <2 x double> %i.ajv, ptr %i.ajn, align 1, !tbaa !29
  %i.ajw = getelementptr i8, ptr %i.ajm, i64 184
  %i.ajx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ajy = load double, ptr %i.ajx, align 16, !tbaa !12
  store double %i.ajy, ptr %i.ajw, align 8, !tbaa !12
  %i.ajz = getelementptr i8, ptr %i.ajm, i64 216
  %i.aka = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.akb = load <2 x double>, ptr %i.aka, align 8, !tbaa !29
  store <2 x double> %i.akb, ptr %i.ajz, align 8, !tbaa !29
  %i.akc = getelementptr i8, ptr %i.ajm, i64 232
  %i.akd = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ake = load double, ptr %i.akd, align 8, !tbaa !12
  store double %i.ake, ptr %i.akc, align 8, !tbaa !12
  %i.akf = getelementptr i8, ptr %i.ajm, i64 264
  %i.akg = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.akh = load <2 x double>, ptr %i.akg, align 16, !tbaa !29
  store <2 x double> %i.akh, ptr %i.akf, align 8, !tbaa !29
  %i.aki = getelementptr i8, ptr %i.ajm, i64 280
  %i.akj = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.akk = load double, ptr %i.akj, align 16, !tbaa !12
  store double %i.akk, ptr %i.aki, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8502)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0535)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0522)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0469)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o13EdgeSE3Offset15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(896) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, ptr nofree readnone captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !110
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !133  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load <2 x double>, ptr %i.j, align 1, !tbaa !29, !noalias !300 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.n = load <2 x double>, ptr %i.m, align 1, !tbaa !29, !noalias !300 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.p = load <2 x double>, ptr %i.o, align 1, !tbaa !29, !noalias !300 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load double, ptr %i.q, align 16, !tbaa !12, !noalias !300 ; 2 uses
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0 ; 2 uses
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x double> %i.p, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.w = load double, ptr %i.v, align 8, !tbaa !12, !noalias !300 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.y = load double, ptr %i.x, align 8, !tbaa !12, !noalias !300 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.aa = load double, ptr %i.z, align 8, !tbaa !12, !noalias !300 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ad = load double, ptr %i.ac, align 16, !tbaa !12, !noalias !300 ; 2 uses
  %i.ae = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x double> %i.p, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ai = load double, ptr %i.ah, align 16, !tbaa !12, !noalias !300 ; 2 uses
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %i.l, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.an = load double, ptr %i.am, align 8, !tbaa !12, !noalias !300 ; 2 uses
  %i.ao = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.n, %i.ap
  %i.ar = fadd <2 x double> %i.al, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.at = load double, ptr %i.as, align 16, !tbaa !12, !noalias !300 ; 2 uses
  %i.au = insertelement <2 x double> poison, double %i.at, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x double> %i.p, %i.av
  %i.ax = fadd <2 x double> %i.ar, %i.aw          ; 4 uses
  %i.ay = fmul double %i.w, %i.ai
  %i.az = fmul double %i.y, %i.an
  %i.ba = fmul double %i.aa, %i.at
  %i.bb = fadd double %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bf = load double, ptr %i.be, align 16, !tbaa !12, !noalias !300
  %i.bg = insertelement <2 x double> poison, double %i.bf, i64 0 ; 2 uses
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.p, %i.bh
  %i.bj = load <2 x double>, ptr %i.bd, align 8, !tbaa !29, !noalias !300
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !12, !noalias !300
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !111
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !133 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !12, !noalias !301 ; 2 uses
  %.sroa.2047.64.vec.insert = insertelement <2 x double> poison, double %i.bv, i64 0 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !12, !noalias !301 ; 3 uses
  %.sroa.2047.72.vec.insert = insertelement <2 x double> %.sroa.2047.64.vec.insert, double %i.bx, i64 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.bz = load double, ptr %i.by, align 8, !tbaa !12, !noalias !301 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !12, !noalias !301 ; 2 uses
  %i.cc = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !12, !noalias !301 ; 2 uses
  %i.cg = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !12, !noalias !301 ; 2 uses
  %i.ck = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x double> %.sroa.2047.72.vec.insert, %i.cl
  %i.cn = fneg double %i.bz
  %i.co = fmul double %i.cj, %i.cn
  %i.cp = shufflevector <2 x double> %.sroa.2047.64.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x double> %i.ax, %i.ct
  %i.cv = load <2 x double>, ptr %i.k, align 16, !tbaa !12, !noalias !300 ; 6 uses
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.l, %i.cw
  %i.cy = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cz = fmul <2 x double> %i.n, %i.cy
  %i.da = fadd <2 x double> %i.cx, %i.cz
  %i.db = fadd <2 x double> %i.da, %i.u           ; 4 uses
  %i.dc = load <2 x double>, ptr %i.ab, align 16, !tbaa !12, !noalias !300 ; 4 uses
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x double> %i.l, %i.dd
  %i.df = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dg = fmul <2 x double> %i.n, %i.df
  %i.dh = fadd <2 x double> %i.de, %i.dg
  %i.di = fadd <2 x double> %i.dh, %i.ag          ; 4 uses
  %i.dj = insertelement <2 x double> poison, double %i.w, i64 0
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dl = shufflevector <2 x double> %i.cv, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2>
  %i.dm = fmul <2 x double> %i.dk, %i.dl
  %i.dn = insertelement <2 x double> poison, double %i.y, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_0
