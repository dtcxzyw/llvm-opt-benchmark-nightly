begin_hunk_0_@hotspotKernel:bb.a
  %i.df = fdiv double %i.de, %4
  %i.dg = fadd double %i.db, %i.df
  %i.dh = load double, ptr %i.p, align 8, !tbaa !8
  %i.di = fsub double %i.dh, %i.dd
  %i.dj = fdiv double %i.di, %5
  %i.dk = fadd double %i.dg, %i.dj
  %i.dl = fsub double %8, %i.dd
  %i.dm = fdiv double %i.dl, %6
  %i.dn = fadd double %i.dm, %i.dk
  %i.do = fmul double %i.c, %i.dn
  %i.dp = fadd double %i.dd, %i.do
  store double %i.dp, ptr %i.r, align 8, !tbaa !8
  %i.dq = load double, ptr %i.j, align 8, !tbaa !8
  %i.dr = load double, ptr %i.s, align 8, !tbaa !8
  %i.ds = load double, ptr %i.l, align 8, !tbaa !8 ; 4 uses
  %i.dt = fsub double %i.dr, %i.ds
  %i.du = fdiv double %i.dt, %4
  %i.dv = fadd double %i.dq, %i.du
  %i.dw = load double, ptr %i.o, align 8, !tbaa !8
  %i.dx = fsub double %i.dw, %i.ds
  %i.dy = fdiv double %i.dx, %5
  %i.dz = fadd double %i.dv, %i.dy
  %i.ea = fsub double %8, %i.ds
  %i.eb = fdiv double %i.ea, %6
  %i.ec = fadd double %i.eb, %i.dz
  %i.ed = fmul double %i.c, %i.ec
  %i.ee = fadd double %i.ds, %i.ed
  store double %i.ee, ptr %i.q, align 8, !tbaa !8
  br i1 %conflict.rdx288, label %scalar.ph289, label %vector.body301

vector.body301:                                   ; preds = %vector.memcheck277, %vector.body301
  %index302 = phi i64 [ %index.next313, %vector.body301 ], [ 0, %vector.memcheck277 ] ; 5 uses
  %i.ef = or disjoint i64 %index302, 1            ; 8 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ef
  %wide.load303 = load <2 x double>, ptr %i.eg, align 8, !tbaa !8, !alias.scope !24
  %i.eh = add nuw nsw i64 %index302, 2            ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.eh
  %wide.load304 = load <2 x double>, ptr %i.ei, align 8, !tbaa !8, !alias.scope !27
  %i.ej = getelementptr inbounds [8 x i8], ptr %1, i64 %index302
  %wide.load305 = load <2 x double>, ptr %i.ej, align 8, !tbaa !8, !alias.scope !27
  %i.ek = fadd <2 x double> %wide.load304, %wide.load305
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ef
  %wide.load306 = load <2 x double>, ptr %i.el, align 8, !tbaa !8, !alias.scope !27 ; 4 uses
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load306, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ek)
  %i.en = fdiv <2 x double> %i.em, %broadcast.splat292
  %i.eo = fadd <2 x double> %wide.load303, %i.en
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ef
  %wide.load307 = load <2 x double>, ptr %i.ep, align 8, !tbaa !8, !alias.scope !27
  %i.eq = fsub <2 x double> %wide.load307, %wide.load306
  %i.er = fdiv <2 x double> %i.eq, %broadcast.splat294
  %i.es = fadd <2 x double> %i.eo, %i.er
  %i.et = fsub <2 x double> %broadcast.splat296, %wide.load306
  %i.eu = fdiv <2 x double> %i.et, %broadcast.splat298
  %i.ev = fadd <2 x double> %i.eu, %i.es
  %i.ew = fmul <2 x double> %broadcast.splat300, %i.ev
  %i.ex = fadd <2 x double> %wide.load306, %i.ew
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ef
  store <2 x double> %i.ex, ptr %i.ey, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ef
  %wide.load308 = load <2 x double>, ptr %i.ez, align 8, !tbaa !8, !alias.scope !24
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.eh
  %wide.load309 = load <2 x double>, ptr %i.fa, align 8, !tbaa !8, !alias.scope !27
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.l, i64 %index302
  %wide.load310 = load <2 x double>, ptr %i.fb, align 8, !tbaa !8, !alias.scope !27
  %i.fc = fadd <2 x double> %wide.load309, %wide.load310
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ef
  %wide.load311 = load <2 x double>, ptr %i.fd, align 8, !tbaa !8, !alias.scope !27 ; 4 uses
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load311, <2 x double> splat (double -2.000000e+00), <2 x double> %i.fc)
  %i.ff = fdiv <2 x double> %i.fe, %broadcast.splat292
  %i.fg = fadd <2 x double> %wide.load308, %i.ff
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ef
  %wide.load312 = load <2 x double>, ptr %i.fh, align 8, !tbaa !8, !alias.scope !27
  %i.fi = fsub <2 x double> %wide.load312, %wide.load311
  %i.fj = fdiv <2 x double> %i.fi, %broadcast.splat294
  %i.fk = fadd <2 x double> %i.fg, %i.fj
  %i.fl = fsub <2 x double> %broadcast.splat296, %wide.load311
  %i.fm = fdiv <2 x double> %i.fl, %broadcast.splat298
  %i.fn = fadd <2 x double> %i.fm, %i.fk
  %i.fo = fmul <2 x double> %broadcast.splat300, %i.fn
  %i.fp = fadd <2 x double> %wide.load311, %i.fo
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ef
  store <2 x double> %i.fp, ptr %i.fq, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  %index.next313 = add nuw i64 %index302, 2       ; 2 uses
  %i.fr = icmp eq i64 %index.next313, 510
  br i1 %i.fr, label %vector.memcheck256, label %vector.body301, !llvm.loop !32

scalar.ph289:                                     ; preds = %vector.memcheck277, %scalar.ph289
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %scalar.ph289 ], [ 1, %vector.memcheck277 ] ; 10 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv237
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !8
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 4 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next238
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !8
  %i.fw = add nsw i64 %indvars.iv237, -1          ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !8
  %i.fz = fadd double %i.fv, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv237
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !8 ; 4 uses
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.gb, double -2.000000e+00, double %i.fz)
  %i.gd = fdiv double %i.gc, %4
  %i.ge = fadd double %i.ft, %i.gd
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv237
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !8
  %i.gh = fsub double %i.gg, %i.gb
  %i.gi = fdiv double %i.gh, %5
  %i.gj = fadd double %i.ge, %i.gi
  %i.gk = fsub double %8, %i.gb
  %i.gl = fdiv double %i.gk, %6
  %i.gm = fadd double %i.gl, %i.gj
  %i.gn = fmul double %i.c, %i.gm
  %i.go = fadd double %i.gb, %i.gn
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv237
  store double %i.go, ptr %i.gp, align 8, !tbaa !8
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv237
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !8
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next238
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !8
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fw
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !8
  %i.gw = fadd double %i.gt, %i.gv
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv237
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !8 ; 4 uses
  %i.gz = tail call double @llvm.fmuladd.f64(double %i.gy, double -2.000000e+00, double %i.gw)
  %i.ha = fdiv double %i.gz, %4
  %i.hb = fadd double %i.gr, %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv237
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !8
  %i.he = fsub double %i.hd, %i.gy
  %i.hf = fdiv double %i.he, %5
  %i.hg = fadd double %i.hb, %i.hf
  %i.hh = fsub double %8, %i.gy
  %i.hi = fdiv double %i.hh, %6
  %i.hj = fadd double %i.hi, %i.hg
  %i.hk = fmul double %i.c, %i.hj
  %i.hl = fadd double %i.gy, %i.hk
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv237
  store double %i.hl, ptr %i.hm, align 8, !tbaa !8
  %exitcond240.not = icmp eq i64 %indvars.iv.next238, 511
  br i1 %exitcond240.not, label %vector.memcheck256, label %scalar.ph289, !llvm.loop !33

vector.memcheck256:                               ; preds = %vector.body301, %scalar.ph289
  br i1 %conflict.rdx, label %.preheader223, label %vector.body273

vector.body273:                                   ; preds = %vector.memcheck256, %vector.body273
  %index274 = phi i64 [ %index.next275, %vector.body273 ], [ 0, %vector.memcheck256 ] ; 5 uses
  %i.hn = or disjoint i64 %index274, 1            ; 3 uses
  %i.ho = add i64 %index274, 2                    ; 3 uses
  %i.hp = getelementptr inbounds nuw [4096 x i8], ptr %2, i64 %i.hn ; 2 uses
  %i.hq = getelementptr inbounds nuw [4096 x i8], ptr %2, i64 %i.ho ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 4088
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4088
  %i.ht = load double, ptr %i.hr, align 8, !tbaa !8, !alias.scope !34
  %i.hu = load double, ptr %i.hs, align 8, !tbaa !8, !alias.scope !34
  %i.hv = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.hu, i64 1
  %i.hx = getelementptr inbounds nuw [4096 x i8], ptr %1, i64 %index274 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8192
  %i.hz = getelementptr [4096 x i8], ptr %1, i64 %index274 ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 12288
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 12280
  %i.ic = getelementptr i8, ptr %i.hz, i64 16376
  %i.id = load double, ptr %i.ib, align 8, !tbaa !8, !alias.scope !37
  %i.ie = load double, ptr %i.ic, align 8, !tbaa !8, !alias.scope !37
  %i.if = insertelement <2 x double> poison, double %i.id, i64 0
  %i.ig = insertelement <2 x double> %i.if, double %i.ie, i64 1
  %i.ih = getelementptr [4096 x i8], ptr %1, i64 %i.hn ; 6 uses
  %i.ii = getelementptr [4096 x i8], ptr %1, i64 %i.ho ; 6 uses
  %i.ij = getelementptr i8, ptr %i.ih, i64 -4096
  %i.ik = getelementptr i8, ptr %i.ii, i64 -4096
  %i.il = getelementptr i8, ptr %i.ih, i64 -8
  %i.im = getelementptr i8, ptr %i.ii, i64 -8
  %i.in = load double, ptr %i.il, align 8, !tbaa !8, !alias.scope !37
  %i.io = load double, ptr %i.im, align 8, !tbaa !8, !alias.scope !37
  %i.ip = insertelement <2 x double> poison, double %i.in, i64 0
  %i.iq = insertelement <2 x double> %i.ip, double %i.io, i64 1
  %i.ir = fadd <2 x double> %i.ig, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 4088
  %i.it = getelementptr inbounds nuw i8, ptr %i.ii, i64 4088
  %i.iu = load double, ptr %i.is, align 8, !tbaa !8, !alias.scope !37
  %i.iv = load double, ptr %i.it, align 8, !tbaa !8, !alias.scope !37
  %i.iw = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.ix = insertelement <2 x double> %i.iw, double %i.iv, i64 1 ; 4 uses
  %i.iy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ir)
  %i.iz = fdiv <2 x double> %i.iy, %broadcast.splat
  %i.ja = fadd <2 x double> %i.hw, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ih, i64 4080
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ii, i64 4080
  %i.jd = load double, ptr %i.jb, align 8, !tbaa !8, !alias.scope !37
  %i.je = load double, ptr %i.jc, align 8, !tbaa !8, !alias.scope !37
  %i.jf = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.jg = insertelement <2 x double> %i.jf, double %i.je, i64 1
  %i.jh = fsub <2 x double> %i.jg, %i.ix
  %i.ji = fdiv <2 x double> %i.jh, %broadcast.splat266
  %i.jj = fadd <2 x double> %i.ja, %i.ji
  %i.jk = fsub <2 x double> %broadcast.splat268, %i.ix
  %i.jl = fdiv <2 x double> %i.jk, %broadcast.splat270
  %i.jm = fadd <2 x double> %i.jl, %i.jj
  %i.jn = fmul <2 x double> %broadcast.splat272, %i.jm
  %i.jo = fadd <2 x double> %i.ix, %i.jn          ; 2 uses
  %9 = extractelement <2 x double> %i.jo, i64 1
  %i.jp = getelementptr inbounds nuw [4096 x i8], ptr %0, i64 %i.hn ; 2 uses
  %10 = getelementptr inbounds nuw [4096 x i8], ptr %0, i64 %i.ho
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4088
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4088
  store double %9, ptr %11, align 8, !tbaa !8, !alias.scope !39, !noalias !41
  %i.jr = load double, ptr %i.hp, align 8, !tbaa !8, !alias.scope !34
  %i.js = load double, ptr %i.hq, align 8, !tbaa !8, !alias.scope !34
  %i.jt = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.ju = insertelement <2 x double> %i.jt, double %i.js, i64 1
  %i.jv = load double, ptr %i.hy, align 8, !tbaa !8, !alias.scope !37
  %i.jw = load double, ptr %i.ia, align 8, !tbaa !8, !alias.scope !37
  %i.jx = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.jw, i64 1
  %i.jz = load double, ptr %i.ij, align 8, !tbaa !8, !alias.scope !37
  %i.ka = load double, ptr %i.ik, align 8, !tbaa !8, !alias.scope !37
  %i.kb = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kc = insertelement <2 x double> %i.kb, double %i.ka, i64 1
  %i.kd = fadd <2 x double> %i.jy, %i.kc
  %i.ke = load double, ptr %i.ih, align 8, !tbaa !8, !alias.scope !37
  %i.kf = load double, ptr %i.ii, align 8, !tbaa !8, !alias.scope !37
  %i.kg = insertelement <2 x double> poison, double %i.ke, i64 0
  %i.kh = insertelement <2 x double> %i.kg, double %i.kf, i64 1 ; 4 uses
  %i.ki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kh, <2 x double> splat (double -2.000000e+00), <2 x double> %i.kd)
  %i.kj = fdiv <2 x double> %i.ki, %broadcast.splat
  %i.kk = fadd <2 x double> %i.ju, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.kn = load double, ptr %i.kl, align 8, !tbaa !8, !alias.scope !37
  %i.ko = load double, ptr %i.km, align 8, !tbaa !8, !alias.scope !37
  %i.kp = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kq = insertelement <2 x double> %i.kp, double %i.ko, i64 1
  %i.kr = fsub <2 x double> %i.kq, %i.kh
  %i.ks = fdiv <2 x double> %i.kr, %broadcast.splat266
  %i.kt = fadd <2 x double> %i.kk, %i.ks
  %i.ku = fsub <2 x double> %broadcast.splat268, %i.kh
  %i.kv = fdiv <2 x double> %i.ku, %broadcast.splat270
  %i.kw = fadd <2 x double> %i.kv, %i.kt
  %i.kx = fmul <2 x double> %broadcast.splat272, %i.kw
  %i.ky = fadd <2 x double> %i.kh, %i.kx          ; 2 uses
  %i.kz = extractelement <2 x double> %i.ky, i64 0
  store double %i.kz, ptr %i.jp, align 8, !tbaa !8, !alias.scope !39, !noalias !41
  %i.la = shufflevector <2 x double> %i.jo, <2 x double> %i.ky, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.la, ptr %i.jq, align 8, !tbaa !8, !alias.scope !39, !noalias !41
  %index.next275 = add nuw i64 %index274, 2       ; 2 uses
  %i.lb = icmp eq i64 %index.next275, 510
  br i1 %i.lb, label %.preheader.preheader, label %vector.body273, !llvm.loop !42

.preheader223:                                    ; preds = %vector.memcheck256, %.preheader223
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %.preheader223 ], [ 1, %vector.memcheck256 ] ; 4 uses
  %i.lc = getelementptr inbounds nuw [4096 x i8], ptr %2, i64 %indvars.iv241 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4088
  %i.le = load double, ptr %i.ld, align 8, !tbaa !8
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 3 uses
  %i.lf = getelementptr inbounds nuw [4096 x i8], ptr %1, i64 %indvars.iv.next242 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4088
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !8
  %i.li = getelementptr [4096 x i8], ptr %1, i64 %indvars.iv241 ; 6 uses
  %i.lj = getelementptr i8, ptr %i.li, i64 -4096
  %i.lk = getelementptr i8, ptr %i.li, i64 -8
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !8
  %i.lm = fadd double %i.lh, %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 4088
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !8 ; 4 uses
  %i.lp = tail call double @llvm.fmuladd.f64(double %i.lo, double -2.000000e+00, double %i.lm)
  %i.lq = fdiv double %i.lp, %5
  %i.lr = fadd double %i.le, %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.li, i64 4080
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !8
  %i.lu = fsub double %i.lt, %i.lo
  %i.lv = fdiv double %i.lu, %4
  %i.lw = fadd double %i.lr, %i.lv
  %i.lx = fsub double %8, %i.lo
  %i.ly = fdiv double %i.lx, %6
  %i.lz = fadd double %i.ly, %i.lw
  %i.ma = fmul double %i.c, %i.lz
  %i.mb = fadd double %i.lo, %i.ma
  %i.mc = getelementptr inbounds nuw [4096 x i8], ptr %0, i64 %indvars.iv241 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 4088
  store double %i.mb, ptr %i.md, align 8, !tbaa !8
  %i.me = load double, ptr %i.lc, align 8, !tbaa !8
  %i.mf = load double, ptr %i.lf, align 8, !tbaa !8
  %i.mg = load double, ptr %i.lj, align 8, !tbaa !8
  %i.mh = fadd double %i.mf, %i.mg
  %i.mi = load double, ptr %i.li, align 8, !tbaa !8 ; 4 uses
  %i.mj = tail call double @llvm.fmuladd.f64(double %i.mi, double -2.000000e+00, double %i.mh)
  %i.mk = fdiv double %i.mj, %5
  %i.ml = fadd double %i.me, %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !8
  %i.mo = fsub double %i.mn, %i.mi
  %i.mp = fdiv double %i.mo, %4
  %i.mq = fadd double %i.ml, %i.mp
  %i.mr = fsub double %8, %i.mi
  %i.ms = fdiv double %i.mr, %6
  %i.mt = fadd double %i.ms, %i.mq
  %i.mu = fmul double %i.c, %i.mt
  %i.mv = fadd double %i.mi, %i.mu
  store double %i.mv, ptr %i.mc, align 8, !tbaa !8
  %exitcond244.not = icmp eq i64 %indvars.iv.next242, 511
  br i1 %exitcond244.not, label %.preheader.preheader, label %.preheader223, !llvm.loop !43

.preheader.preheader:                             ; preds = %vector.body273, %.preheader223
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %middle.block
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %middle.block ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [4096 x i8], ptr %0, i64 %indvars.iv250 ; 8 uses
  %i.mx = getelementptr inbounds nuw [4096 x i8], ptr %1, i64 %indvars.iv250 ; 8 uses
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %.preheader ] ; 6 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %index ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %wide.load = load <2 x double>, ptr %i.my, align 8, !tbaa !8
  %wide.load255 = load <2 x double>, ptr %i.mz, align 8, !tbaa !8
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %index ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store <2 x double> %wide.load, ptr %i.na, align 8, !tbaa !8
  store <2 x double> %wide.load255, ptr %i.nb, align 8, !tbaa !8
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %index.next ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %wide.load.1 = load <2 x double>, ptr %i.nc, align 8, !tbaa !8
  %wide.load255.1 = load <2 x double>, ptr %i.nd, align 8, !tbaa !8
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %index.next ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store <2 x double> %wide.load.1, ptr %i.ne, align 8, !tbaa !8
  store <2 x double> %wide.load255.1, ptr %i.nf, align 8, !tbaa !8
  %index.next.1 = or disjoint i64 %index, 8       ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %index.next.1 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %wide.load.2 = load <2 x double>, ptr %i.ng, align 8, !tbaa !8
  %wide.load255.2 = load <2 x double>, ptr %i.nh, align 8, !tbaa !8
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %index.next.1 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  store <2 x double> %wide.load.2, ptr %i.ni, align 8, !tbaa !8
  store <2 x double> %wide.load255.2, ptr %i.nj, align 8, !tbaa !8
  %index.next.2 = or disjoint i64 %index, 12      ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %index.next.2 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %wide.load.3 = load <2 x double>, ptr %i.nk, align 8, !tbaa !8
  %wide.load255.3 = load <2 x double>, ptr %i.nl, align 8, !tbaa !8
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %index.next.2 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  store <2 x double> %wide.load.3, ptr %i.nm, align 8, !tbaa !8
  store <2 x double> %wide.load255.3, ptr %i.nn, align 8, !tbaa !8
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.no = icmp eq i64 %index.next.3, 512
  br i1 %i.no, label %middle.block, label %vector.body, !llvm.loop !44

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv246 = phi i64 [ %indvars.iv.next247.3, %scalar.ph ], [ 0, %.preheader ] ; 6 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv246
  %i.nq = load double, ptr %i.np, align 8, !tbaa !8
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv246
  store double %i.nq, ptr %i.nr, align 8, !tbaa !8
  %indvars.iv.next247 = or disjoint i64 %indvars.iv246, 1 ; 2 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.next247
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !8
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.next247
  store double %i.nt, ptr %i.nu, align 8, !tbaa !8
  %indvars.iv.next247.1 = or disjoint i64 %indvars.iv246, 2 ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.next247.1
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !8
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.next247.1
  store double %i.nw, ptr %i.nx, align 8, !tbaa !8
  %indvars.iv.next247.2 = or disjoint i64 %indvars.iv246, 3 ; 2 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.next247.2
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !8
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.next247.2
  store double %i.nz, ptr %i.oa, align 8, !tbaa !8
  %indvars.iv.next247.3 = add nuw nsw i64 %indvars.iv246, 4 ; 2 uses
  %exitcond249.not.3 = icmp eq i64 %indvars.iv.next247.3, 512
  br i1 %exitcond249.not.3, label %middle.block, label %scalar.ph, !llvm.loop !45

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next251, 512
  br i1 %exitcond253.not, label %bb.c, label %.preheader, !llvm.loop !46

bb.c:                                             ; preds = %middle.block
  %i.ob = add nuw nsw i32 %.0220231, 1            ; 2 uses
  %exitcond254.not = icmp eq i32 %i.ob, 200
  br i1 %exitcond254.not, label %bb.b, label %.preheader224, !llvm.loop !47
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12}
!12 = distinct !{!12, !"LVerDomain"}
!13 = !{!14}
!14 = distinct !{!14, !12}
!15 = !{!16}
!16 = distinct !{!16, !12}
!17 = !{!11, !14}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !19, !20}
!23 = distinct !{!23, !19}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = !{!30}
!30 = distinct !{!30, !26}
!31 = !{!25, !28}
!32 = distinct !{!32, !19, !20, !21}
!33 = distinct !{!33, !19, !20}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = !{!40}
!40 = distinct !{!40, !36}
!41 = !{!35, !38}
!42 = distinct !{!42, !19, !20, !21}
end_hunk_0
