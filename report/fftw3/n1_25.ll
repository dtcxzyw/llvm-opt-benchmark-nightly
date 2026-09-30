Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/n1_25?download=true
begin_hunk_0_@n1_25:bb.a
  %i.tj = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.ti
  %i.tk = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.ti
  %i.tl = shufflevector <2 x double> %i.sv, <2 x double> %i.sf, <2 x i32> <i32 0, i32 2>
  %i.tm = shufflevector <2 x double> %i.sv, <2 x double> %i.sf, <2 x i32> <i32 1, i32 3>
  %i.tn = fsub <2 x double> %i.tl, %i.tm          ; 2 uses
  %i.to = fmul <2 x double> %i.tn, <double f0x3FE2CF2304755A5E, double f0xBFE2CF2304755A5E>
  %i.tp = shufflevector <2 x double> %i.to, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.tq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tn, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.tp) ; 2 uses
  %i.tr = extractelement <2 x double> %i.tq, i64 1 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.0916919, i64 64
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !11 ; 2 uses
  %i.tu = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.tt
  %i.tv = extractelement <2 x double> %i.tq, i64 0 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.0916919, i64 144
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !11 ; 2 uses
  %i.ty = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.tx
  %i.tz = getelementptr inbounds nuw i8, ptr %.0916919, i64 184
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !11 ; 2 uses
  %i.ub = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.ua
  %i.uc = getelementptr inbounds nuw i8, ptr %.0916919, i64 104
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !11 ; 2 uses
  %i.ue = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.ud
  %i.uf = fadd double %i.tf, %i.tg                ; 2 uses
  %i.ug = fadd double %i.tb, %i.tc                ; 2 uses
  %i.uh = fmul double %i.ug, f0xBFE2CF2304755A5E
  %i.ui = tail call double @llvm.fmuladd.f64(double %i.uf, double f0x3FEE6F0E134454FF, double %i.uh) ; 2 uses
  %i.uj = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.ua
  %i.uk = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.tx
  %i.ul = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.tt
  %i.um = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.ud
  %i.un = shufflevector <2 x double> %i.ry, <2 x double> %i.rx, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.uo = shufflevector <2 x double> %i.sc, <2 x double> %i.sb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.up = fmul <2 x double> %i.uo, <double f0x3FDED50D5CBFA951, double f0xBFDB3FF7C925819C>
  %i.uq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.un, <2 x double> <double f0x3FEC0AB44E81C059, double f0x3FECF457DCDC158C>, <2 x double> %i.up) ; 2 uses
  %i.ur = extractelement <2 x double> %i.uq, i64 0 ; 2 uses
  %i.us = extractelement <2 x double> %i.uq, i64 1 ; 2 uses
  %i.ut = shufflevector <2 x double> %i.mj, <2 x double> %i.mc, <2 x i32> <i32 0, i32 2>
  %i.uu = shufflevector <2 x double> %i.sl, <2 x double> %i.si, <2 x i32> <i32 0, i32 3>
  %i.uv = fadd <2 x double> %i.ut, %i.uu          ; 2 uses
  %i.uw = shufflevector <2 x double> %i.si, <2 x double> %i.sl, <2 x i32> <i32 0, i32 3>
  %i.ux = shufflevector <2 x double> %i.gw, <2 x double> %i.hm, <2 x i32> <i32 0, i32 2>
  %i.uy = fsub <2 x double> %i.uw, %i.ux          ; 2 uses
  %i.uz = fmul <2 x double> %i.uv, <double f0x3FEB04BBFF642E86, double f0x3FEFEFD5BFE443FE>
  %i.va = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uy, <2 x double> <double f0x3FE1257E3C182B51, double f0x3FB0130A1BE09379>, <2 x double> %i.uz) ; 2 uses
  %i.vb = extractelement <2 x double> %i.va, i64 0 ; 2 uses
  %i.vc = extractelement <2 x double> %i.va, i64 1 ; 2 uses
  %i.vd = fmul <2 x double> %i.un, <double f0xBFDED50D5CBFA951, double f0x3FDB3FF7C925819C>
  %i.ve = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> <double f0x3FEC0AB44E81C059, double f0x3FECF457DCDC158C>, <2 x double> %i.vd) ; 2 uses
  %i.vf = extractelement <2 x double> %i.ve, i64 0 ; 2 uses
  %i.vg = extractelement <2 x double> %i.ve, i64 1 ; 2 uses
  %i.vh = fsub double %i.vf, %i.vg                ; 2 uses
  %i.vi = fmul <2 x double> %i.uy, <double f0xBFEB04BBFF642E86, double f0xBFEFEFD5BFE443FE>
  %i.vj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uv, <2 x double> <double f0x3FE1257E3C182B51, double f0x3FB0130A1BE09379>, <2 x double> %i.vi) ; 2 uses
  %i.vk = extractelement <2 x double> %i.vj, i64 0 ; 2 uses
  %i.vl = extractelement <2 x double> %i.vj, i64 1 ; 2 uses
  %i.vm = fadd double %i.vk, %i.vl                ; 2 uses
  %i.vn = fsub double %i.vh, %i.vm
  %i.vo = fmul double %i.vn, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.0916919, i64 16
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !11 ; 2 uses
  %i.vr = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.vq
  %i.vs = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.vq
  %i.vt = fadd double %i.vf, %i.vg
  %i.vu = fsub double %i.vk, %i.vl
  %i.vv = insertelement <2 x double> poison, double %i.vu, i64 0
  %i.vw = insertelement <2 x double> %i.vv, double %i.vt, i64 1 ; 2 uses
  %i.vx = fmul <2 x double> %i.vw, <double f0x3FE2CF2304755A5E, double f0xBFE2CF2304755A5E>
  %i.vy = shufflevector <2 x double> %i.vw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.vz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vy, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.vx) ; 2 uses
  %i.wa = extractelement <2 x double> %i.vz, i64 0 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.0916919, i64 176
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !11 ; 2 uses
  %i.wd = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.wc
  %i.we = extractelement <2 x double> %i.vz, i64 1 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.0916919, i64 136
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !11 ; 2 uses
  %i.wh = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.wg
  %i.wi = getelementptr inbounds nuw i8, ptr %.0916919, i64 56
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !11 ; 2 uses
  %i.wk = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.wj
  %i.wl = getelementptr inbounds nuw i8, ptr %.0916919, i64 96
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !11 ; 2 uses
  %i.wn = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.wm
  %i.wo = fsub <2 x double> %i.pl, %i.pg          ; 3 uses
  %foldExtExtBinop955 = fadd <2 x double> %i.wo, %i.pk ; 2 uses
  %i.wp = extractelement <2 x double> %foldExtExtBinop955, i64 0
  %i.wq = fsub double %i.tb, %i.tc                ; 2 uses
  %i.wr = fsub double %i.tf, %i.tg                ; 2 uses
  %i.ws = fsub double %i.wq, %i.wr
  %i.wt = fmul double %i.ws, f0x3FE1E3779B97F4A8  ; 2 uses
  %foldExtExtBinop957 = fadd <2 x double> %foldExtExtBinop955, %foldExtExtBinop951
  %i.wu = extractelement <2 x double> %foldExtExtBinop957, i64 0
  store double %i.wu, ptr %i.tj, align 8, !tbaa !13
  %i.wv = fadd double %i.wq, %i.wr                ; 2 uses
  %i.ww = insertelement <2 x double> poison, double %i.wv, i64 0
  %i.wx = insertelement <2 x double> %i.ww, double %i.ug, i64 1
  %i.wy = tail call double @llvm.fmuladd.f64(double %i.sw, double -2.500000e-01, double %i.wp) ; 2 uses
  %i.wz = fadd double %i.sy, %i.wy                ; 2 uses
  %i.xa = fsub double %i.wy, %i.sy                ; 2 uses
  %i.xb = fadd double %i.ui, %i.xa
  %i.xc = fsub double %i.xa, %i.ui
  %i.xd = fadd double %i.ur, %i.us                ; 2 uses
  %i.xe = fadd double %i.vb, %i.vc                ; 2 uses
  %i.xf = fsub double %i.xd, %i.xe
  %i.xg = fmul double %i.xf, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.xh = fadd double %i.xd, %i.xe
  %i.xi = shufflevector <2 x double> %i.pk, <2 x double> %i.aa, <2 x i32> <i32 0, i32 3>
  %i.xj = fsub <2 x double> %i.wo, %i.xi          ; 3 uses
  %i.xk = insertelement <2 x double> poison, double %i.xh, i64 0 ; 2 uses
  %i.xl = insertelement <2 x double> %i.xk, double %i.wv, i64 1
  %i.xm = fadd <2 x double> %i.xj, %i.xl          ; 2 uses
  %i.xn = extractelement <2 x double> %i.xm, i64 1
  store double %i.xn, ptr %i.tk, align 8, !tbaa !13
  %i.xo = shufflevector <2 x double> %i.xj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.xp = insertelement <2 x double> %i.xo, double %i.uf, i64 1
  %i.xq = fmul <2 x double> %i.xp, <double 1.000000e+00, double f0x3FE2CF2304755A5E>
  %i.xr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wx, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.xq) ; 2 uses
  %i.xs = extractelement <2 x double> %i.xr, i64 0 ; 2 uses
  %i.xt = fadd double %i.wt, %i.xs                ; 2 uses
  %i.xu = fsub double %i.xs, %i.wt                ; 2 uses
  %i.xv = fsub double %i.xt, %i.tr
  store double %i.xv, ptr %i.tu, align 8, !tbaa !13
  %i.xw = fsub double %i.xu, %i.tv
  store double %i.xw, ptr %i.ty, align 8, !tbaa !13
  %i.xx = fadd double %i.tr, %i.xt
  store double %i.xx, ptr %i.ub, align 8, !tbaa !13
  %i.xy = fadd double %i.tv, %i.xu
  store double %i.xy, ptr %i.ue, align 8, !tbaa !13
  %i.xz = extractelement <2 x double> %i.xr, i64 1 ; 2 uses
  %i.ya = fsub double %i.wz, %i.xz
  store double %i.ya, ptr %i.uj, align 8, !tbaa !13
  store double %i.xb, ptr %i.uk, align 8, !tbaa !13
  %i.yb = fadd double %i.wz, %i.xz
  store double %i.yb, ptr %i.ul, align 8, !tbaa !13
  store double %i.xc, ptr %i.um, align 8, !tbaa !13
  %foldExtExtBinop959 = fadd <2 x double> %i.aa, %i.wo ; 2 uses
  %i.yc = extractelement <2 x double> %foldExtExtBinop959, i64 1
  %i.yd = fadd double %i.vh, %i.vm                ; 2 uses
  %i.ye = fadd double %i.yc, %i.yd
  %i.yf = fsub double %i.vb, %i.vc                ; 2 uses
  %i.yg = fsub double %i.ur, %i.us                ; 2 uses
  %i.yh = extractelement <2 x double> %i.xm, i64 0
  store double %i.yh, ptr %i.vr, align 8, !tbaa !13
  store double %i.ye, ptr %i.vs, align 8, !tbaa !13
  %i.yi = insertelement <2 x double> %i.xj, double %i.yf, i64 1
  %i.yj = fmul <2 x double> %i.yi, <double 1.000000e+00, double f0x3FE2CF2304755A5E>
  %i.yk = insertelement <2 x double> %i.xk, double %i.yg, i64 1
  %i.yl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yk, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.yj) ; 2 uses
  %i.ym = extractelement <2 x double> %i.yl, i64 0 ; 2 uses
  %i.yn = fadd double %i.xg, %i.ym                ; 2 uses
  %i.yo = fsub double %i.ym, %i.xg                ; 2 uses
  %i.yp = fsub double %i.yn, %i.wa
  store double %i.yp, ptr %i.wd, align 8, !tbaa !13
  %i.yq = fadd double %i.we, %i.yo
  store double %i.yq, ptr %i.wh, align 8, !tbaa !13
  %i.yr = fadd double %i.wa, %i.yn
  store double %i.yr, ptr %i.wk, align 8, !tbaa !13
  %i.ys = fsub double %i.yo, %i.we
  store double %i.ys, ptr %i.wn, align 8, !tbaa !13
  %i.yt = fmul double %i.yg, f0xBFE2CF2304755A5E
  %i.yu = insertelement <2 x double> poison, double %i.yf, i64 0
  %i.yv = insertelement <2 x double> %i.yu, double %i.yd, i64 1
  %i.yw = insertelement <2 x double> %foldExtExtBinop959, double %i.yt, i64 0
  %i.yx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yv, <2 x double> <double f0x3FEE6F0E134454FF, double -2.500000e-01>, <2 x double> %i.yw) ; 2 uses
  %i.yy = extractelement <2 x double> %i.yx, i64 1 ; 2 uses
  %i.yz = fadd double %i.vo, %i.yy                ; 2 uses
  %i.za = fsub double %i.yy, %i.vo                ; 2 uses
  %i.zb = extractelement <2 x double> %i.yl, i64 1 ; 2 uses
  %i.zc = fsub double %i.yz, %i.zb
  %i.zd = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.wj
  store double %i.zc, ptr %i.zd, align 8, !tbaa !13
  %i.ze = extractelement <2 x double> %i.yx, i64 0 ; 2 uses
  %i.zf = fsub double %i.za, %i.ze
  %i.zg = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.wg
  store double %i.zf, ptr %i.zg, align 8, !tbaa !13
  %i.zh = fadd double %i.zb, %i.yz
  %i.zi = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.wc
  store double %i.zh, ptr %i.zi, align 8, !tbaa !13
  %i.zj = fadd double %i.ze, %i.za
  %i.zk = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.wm
  store double %i.zj, ptr %i.zk, align 8, !tbaa !13
  %i.zl = fsub <2 x double> %i.lk, %i.ll          ; 3 uses
  %i.zm = fadd <2 x double> %i.ln, %i.kz          ; 3 uses
  %i.zn = fmul <2 x double> %i.zm, <double f0x3FEB04BBFF642E86, double f0x3FE8A80B635B6BEA>
  %i.zo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zl, <2 x double> <double f0x3FE1257E3C182B51, double f0x3FE465C6FEB501BC>, <2 x double> %i.zn) ; 2 uses
  %i.zp = extractelement <2 x double> %i.zo, i64 0 ; 2 uses
  %i.zq = extractelement <2 x double> %i.zo, i64 1 ; 2 uses
  %i.zr = fsub double %i.zp, %i.zq                ; 2 uses
  %i.zs = fsub <2 x double> %i.mu, %i.mv          ; 2 uses
  %i.zt = fadd <2 x double> %i.mx, %i.ml          ; 2 uses
  %i.zu = fmul <2 x double> %i.zs, <double f0xBFDB3FF7C925819C, double f0xBFEFBF675480D903>
  %i.zv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> <double f0x3FECF457DCDC158C, double f0x3FC00AEB5DA15BE0>, <2 x double> %i.zu) ; 2 uses
  %i.zw = extractelement <2 x double> %i.zv, i64 0 ; 2 uses
  %i.zx = extractelement <2 x double> %i.zv, i64 1 ; 2 uses
  %i.zy = fadd double %i.zw, %i.zx                ; 2 uses
  %i.zz = fsub double %i.zr, %i.zy
  %i.aaa = fmul double %i.zz, f0x3FE1E3779B97F4A8 ; 2 uses
  %i.aab = shufflevector <2 x double> %i.zl, <2 x double> %i.zm, <2 x i32> <i32 0, i32 3>
  %i.aac = fmul <2 x double> %i.aab, <double f0xBFEB04BBFF642E86, double f0xBFE465C6FEB501BC>
  %i.aad = shufflevector <2 x double> %i.zm, <2 x double> %i.zl, <2 x i32> <i32 0, i32 3>
  %i.aae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aad, <2 x double> <double f0x3FE1257E3C182B51, double f0x3FE8A80B635B6BEA>, <2 x double> %i.aac) ; 4 uses
  %i.aaf = fmul <2 x double> %i.zt, <double f0x3FDB3FF7C925819C, double f0x3FEFBF675480D903>
  %i.aag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zs, <2 x double> <double f0x3FECF457DCDC158C, double f0x3FC00AEB5DA15BE0>, <2 x double> %i.aaf) ; 2 uses
  %i.aah = extractelement <2 x double> %i.aag, i64 0 ; 2 uses
  %i.aai = extractelement <2 x double> %i.aag, i64 1 ; 2 uses
  %i.aaj = fadd double %i.aah, %i.aai             ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.0916919, i64 32
  %i.aal = load i64, ptr %i.aak, align 8, !tbaa !11 ; 2 uses
  %i.aam = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.aal
  %i.aan = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.aal
  %i.aao = fsub double %i.zw, %i.zx
  %i.aap = fadd double %i.zp, %i.zq
  %i.aaq = insertelement <2 x double> poison, double %i.aap, i64 0
  %i.aar = insertelement <2 x double> %i.aaq, double %i.aao, i64 1 ; 2 uses
  %i.aas = fmul <2 x double> %i.aar, <double f0xBFE2CF2304755A5E, double f0x3FE2CF2304755A5E>
  %i.aat = shufflevector <2 x double> %i.aar, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aau = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aat, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.aas) ; 2 uses
  %i.aav = extractelement <2 x double> %i.aau, i64 0 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0916919, i64 112
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !11 ; 2 uses
  %i.aay = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.aax
  %i.aaz = extractelement <2 x double> %i.aau, i64 1 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.0916919, i64 192
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !11 ; 2 uses
  %i.abc = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.abb
  %i.abd = getelementptr inbounds nuw i8, ptr %.0916919, i64 152
  %i.abe = load i64, ptr %i.abd, align 8, !tbaa !11 ; 2 uses
  %i.abf = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.abe
  %i.abg = getelementptr inbounds nuw i8, ptr %.0916919, i64 72
  %i.abh = load i64, ptr %i.abg, align 8, !tbaa !11 ; 2 uses
  %i.abi = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %i.abh
  %9 = shufflevector <2 x double> %i.aae, <2 x double> %i.aa, <2 x i32> <i32 0, i32 2>
  %10 = shufflevector <2 x double> %i.aae, <2 x double> %i.pm, <2 x i32> <i32 1, i32 3>
  %foldExtExtBinop962.a = fadd <2 x double> %9, %10 ; 3 uses
  %i.abj = extractelement <2 x double> %foldExtExtBinop962.a, i64 0
  %i.abk = fsub double %i.abj, %i.aaj             ; 2 uses
  %11 = insertelement <2 x double> poison, double %i.aaj, i64 0
  %12 = insertelement <2 x double> %11, double %i.abk, i64 1
  %13 = fadd <2 x double> %foldExtExtBinop962.a, %12 ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0
  %15 = fmul double %14, f0x3FE1E3779B97F4A8      ; 2 uses
  %16 = shufflevector <2 x double> %foldExtExtBinop962.a, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.abl = insertelement <2 x double> poison, double %i.abk, i64 0
  %shift964.a = shufflevector <2 x double> %i.pe, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop965.a = fsub <2 x double> %i.pm, %shift964.a ; 2 uses
  %i.abm = extractelement <2 x double> %foldExtExtBinop965.a, i64 0
  %i.abn = fadd double %i.zr, %i.zy               ; 2 uses
  %i.abo = fadd double %i.abm, %i.abn
  store double %i.abo, ptr %i.aam, align 8, !tbaa !13
  %i.abp = fsub double %i.aai, %i.aah             ; 2 uses
  %shift964 = shufflevector <2 x double> %i.aae, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop965 = fsub <2 x double> %i.aae, %shift964 ; 2 uses
  %17 = extractelement <2 x double> %13, i64 1
  store double %17, ptr %i.aan, align 8, !tbaa !13
  %i.abq = insertelement <2 x double> %16, double %i.abp, i64 1
  %i.abr = fmul <2 x double> %i.abq, <double 1.000000e+00, double f0x3FE2CF2304755A5E>
  %18 = shufflevector <2 x double> %i.abl, <2 x double> %foldExtExtBinop965, <2 x i32> <i32 0, i32 2>
  %i.abs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.abr) ; 2 uses
  %i.abt = extractelement <2 x double> %i.abs, i64 0 ; 2 uses
  %i.abu = fsub double %i.abt, %15                ; 2 uses
  %i.abv = fadd double %i.abt, %15                ; 2 uses
  %i.abw = fadd double %i.aav, %i.abu
  store double %i.abw, ptr %i.aay, align 8, !tbaa !13
  %i.abx = fadd double %i.aaz, %i.abv
  store double %i.abx, ptr %i.abc, align 8, !tbaa !13
  %i.aby = fsub double %i.abu, %i.aav
  store double %i.aby, ptr %i.abf, align 8, !tbaa !13
  %i.abz = fsub double %i.abv, %i.aaz
  store double %i.abz, ptr %i.abi, align 8, !tbaa !13
  %i.aca = shufflevector <2 x double> %foldExtExtBinop965, <2 x double> %foldExtExtBinop965.a, <2 x i32> <i32 0, i32 2>
  %i.acb = fmul <2 x double> %i.aca, <double f0xBFE2CF2304755A5E, double 1.000000e+00>
  %i.acc = insertelement <2 x double> poison, double %i.abp, i64 0
  %i.acd = insertelement <2 x double> %i.acc, double %i.abn, i64 1
  %i.ace = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acd, <2 x double> <double f0x3FEE6F0E134454FF, double -2.500000e-01>, <2 x double> %i.acb) ; 2 uses
  %i.acf = extractelement <2 x double> %i.ace, i64 1 ; 2 uses
  %i.acg = fadd double %i.aaa, %i.acf             ; 2 uses
  %i.ach = fsub double %i.acf, %i.aaa             ; 2 uses
  %i.aci = extractelement <2 x double> %i.abs, i64 1 ; 2 uses
  %i.acj = fsub double %i.acg, %i.aci
  %i.ack = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.abb
  store double %i.acj, ptr %i.ack, align 8, !tbaa !13
  %i.acl = extractelement <2 x double> %i.ace, i64 0 ; 2 uses
  %i.acm = fadd double %i.acl, %i.ach
  %i.acn = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.abe
  store double %i.acm, ptr %i.acn, align 8, !tbaa !13
  %i.aco = fadd double %i.acg, %i.aci
  %i.acp = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.abh
  store double %i.aco, ptr %i.acp, align 8, !tbaa !13
  %i.acq = fsub double %i.ach, %i.acl
  %i.acr = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %i.aax
  store double %i.acq, ptr %i.acr, align 8, !tbaa !13
  %i.acs = add nsw i64 %.0917918, -1
  %i.act = getelementptr inbounds [8 x i8], ptr %.0924, i64 %7
  %i.acu = getelementptr inbounds [8 x i8], ptr %.0912923, i64 %7
  %i.acv = getelementptr inbounds [8 x i8], ptr %.0913922, i64 %8
  %i.acw = getelementptr inbounds [8 x i8], ptr %.0914921, i64 %8
  %i.acx = getelementptr inbounds [8 x i8], ptr %.0915920, i64 %i.b
  %i.acy = getelementptr inbounds [8 x i8], ptr %.0916919, i64 %i.b
  %i.acz = icmp samesign ugt i64 %.0917918, 1
  br i1 %i.acz, label %bb.b, label %._crit_edge, !llvm.loop !9

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
