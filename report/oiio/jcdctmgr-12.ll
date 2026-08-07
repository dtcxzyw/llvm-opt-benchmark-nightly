loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@start_pass_fdctmgr:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.af, i64 288
  %i.df = getelementptr inbounds nuw i8, ptr %i.af, i64 304
  store <2 x i64> %i.dc, ptr %i.de, align 8, !tbaa !59
  store <2 x i64> %i.dd, ptr %i.df, align 8, !tbaa !59
  %i.dg = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.dh = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  %wide.load.10 = load <2 x i16>, ptr %i.dg, align 2, !tbaa !58
  %wide.load117.10 = load <2 x i16>, ptr %i.dh, align 2, !tbaa !58
  %i.di = zext <2 x i16> %wide.load.10 to <2 x i64>
  %i.dj = zext <2 x i16> %wide.load117.10 to <2 x i64>
  %i.dk = shl nuw nsw <2 x i64> %i.di, splat (i64 3)
  %i.dl = shl nuw nsw <2 x i64> %i.dj, splat (i64 3)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.af, i64 320
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 336
  store <2 x i64> %i.dk, ptr %i.dm, align 8, !tbaa !59
  store <2 x i64> %i.dl, ptr %i.dn, align 8, !tbaa !59
  %i.do = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.x, i64 92
  %wide.load.11 = load <2 x i16>, ptr %i.do, align 2, !tbaa !58
  %wide.load117.11 = load <2 x i16>, ptr %i.dp, align 2, !tbaa !58
  %i.dq = zext <2 x i16> %wide.load.11 to <2 x i64>
  %i.dr = zext <2 x i16> %wide.load117.11 to <2 x i64>
  %i.ds = shl nuw nsw <2 x i64> %i.dq, splat (i64 3)
  %i.dt = shl nuw nsw <2 x i64> %i.dr, splat (i64 3)
  %i.du = getelementptr inbounds nuw i8, ptr %i.af, i64 352
  %i.dv = getelementptr inbounds nuw i8, ptr %i.af, i64 368
  store <2 x i64> %i.ds, ptr %i.du, align 8, !tbaa !59
  store <2 x i64> %i.dt, ptr %i.dv, align 8, !tbaa !59
  %i.dw = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.dx = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %wide.load.12 = load <2 x i16>, ptr %i.dw, align 2, !tbaa !58
  %wide.load117.12 = load <2 x i16>, ptr %i.dx, align 2, !tbaa !58
  %i.dy = zext <2 x i16> %wide.load.12 to <2 x i64>
  %i.dz = zext <2 x i16> %wide.load117.12 to <2 x i64>
  %i.ea = shl nuw nsw <2 x i64> %i.dy, splat (i64 3)
  %i.eb = shl nuw nsw <2 x i64> %i.dz, splat (i64 3)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.af, i64 384
  %i.ed = getelementptr inbounds nuw i8, ptr %i.af, i64 400
  store <2 x i64> %i.ea, ptr %i.ec, align 8, !tbaa !59
  store <2 x i64> %i.eb, ptr %i.ed, align 8, !tbaa !59
  %i.ee = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.ef = getelementptr inbounds nuw i8, ptr %i.x, i64 108
  %wide.load.13 = load <2 x i16>, ptr %i.ee, align 2, !tbaa !58
  %wide.load117.13 = load <2 x i16>, ptr %i.ef, align 2, !tbaa !58
  %i.eg = zext <2 x i16> %wide.load.13 to <2 x i64>
  %i.eh = zext <2 x i16> %wide.load117.13 to <2 x i64>
  %i.ei = shl nuw nsw <2 x i64> %i.eg, splat (i64 3)
  %i.ej = shl nuw nsw <2 x i64> %i.eh, splat (i64 3)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.af, i64 416
  %i.el = getelementptr inbounds nuw i8, ptr %i.af, i64 432
  store <2 x i64> %i.ei, ptr %i.ek, align 8, !tbaa !59
  store <2 x i64> %i.ej, ptr %i.el, align 8, !tbaa !59
  %i.em = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.en = getelementptr inbounds nuw i8, ptr %i.x, i64 116
  %wide.load.14 = load <2 x i16>, ptr %i.em, align 2, !tbaa !58
  %wide.load117.14 = load <2 x i16>, ptr %i.en, align 2, !tbaa !58
  %i.eo = zext <2 x i16> %wide.load.14 to <2 x i64>
  %i.ep = zext <2 x i16> %wide.load117.14 to <2 x i64>
  %i.eq = shl nuw nsw <2 x i64> %i.eo, splat (i64 3)
  %i.er = shl nuw nsw <2 x i64> %i.ep, splat (i64 3)
  %i.es = getelementptr inbounds nuw i8, ptr %i.af, i64 448
  %i.et = getelementptr inbounds nuw i8, ptr %i.af, i64 464
  store <2 x i64> %i.eq, ptr %i.es, align 8, !tbaa !59
  store <2 x i64> %i.er, ptr %i.et, align 8, !tbaa !59
  %i.eu = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.ev = getelementptr inbounds nuw i8, ptr %i.x, i64 124
  %wide.load.15 = load <2 x i16>, ptr %i.eu, align 2, !tbaa !58
  %wide.load117.15 = load <2 x i16>, ptr %i.ev, align 2, !tbaa !58
  %i.ew = zext <2 x i16> %wide.load.15 to <2 x i64>
  %i.ex = zext <2 x i16> %wide.load117.15 to <2 x i64>
  %i.ey = shl nuw nsw <2 x i64> %i.ew, splat (i64 3)
  %i.ez = shl nuw nsw <2 x i64> %i.ex, splat (i64 3)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.af, i64 480
  %i.fb = getelementptr inbounds nuw i8, ptr %i.af, i64 496
  store <2 x i64> %i.ey, ptr %i.fa, align 8, !tbaa !59
  store <2 x i64> %i.ez, ptr %i.fb, align 8, !tbaa !59
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.pre-phi ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !52 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ff = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !35
  %i.fh = tail call ptr %i.fg(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 2048) #5 ; 2 uses
  store ptr %i.fh, ptr %i.fc, align 8, !tbaa !52
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.fi = phi ptr [ %i.fh, %bb.i ], [ %i.fd, %bb.h ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv97 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next98.1, %bb.k ] ; 5 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv97
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !58
  %i.fl = zext i16 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr @start_pass_fdctmgr.aanscales, i64 %indvars.iv97
  %i.fn = load i16, ptr %i.fm, align 4, !tbaa !58
  %i.fo = sext i16 %i.fn to i64
  %i.fp = mul nsw i64 %i.fo, %i.fl
  %i.fq = add nsw i64 %i.fp, 1024
  %i.fr = ashr i64 %i.fq, 11
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv97
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !59
  %indvars.iv.next98 = or disjoint i64 %indvars.iv97, 1 ; 3 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.next98
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !58
  %i.fv = zext i16 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr @start_pass_fdctmgr.aanscales, i64 %indvars.iv.next98
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !58
  %i.fy = sext i16 %i.fx to i64
  %i.fz = mul nsw i64 %i.fy, %i.fv
  %i.ga = add nsw i64 %i.fz, 1024
  %i.gb = ashr i64 %i.ga, 11
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.next98
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !59
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %exitcond100.not.1 = icmp eq i64 %indvars.iv.next98.1, 64
  br i1 %exitcond100.not.1, label %.loopexit, label %bb.k, !llvm.loop !60

bb.l:                                             ; preds = %bb.e
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.pre-phi ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !53 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.m, label %vector.body119

bb.m:                                             ; preds = %bb.l
  %i.gg = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !35
  %i.gi = tail call ptr %i.gh(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 256) #5 ; 2 uses
  store ptr %i.gi, ptr %i.gd, align 8, !tbaa !53
  br label %vector.body119

vector.body119:                                   ; preds = %bb.m, %bb.l
  %i.gj = phi ptr [ %i.gi, %bb.m ], [ %i.ge, %bb.l ] ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.gl = load i16, ptr %i.x, align 2, !tbaa !58
  %i.gm = load i16, ptr %i.gk, align 2, !tbaa !58
  %i.gn = insertelement <2 x i16> poison, i16 %i.gl, i64 0
  %i.go = insertelement <2 x i16> %i.gn, i16 %i.gm, i64 1
  %i.gp = uitofp <2 x i16> %i.go to <2 x double>
  %i.gq = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.gr = getelementptr inbounds nuw i8, ptr %i.x, i64 18
  %i.gs = load i16, ptr %i.gq, align 2, !tbaa !58
  %i.gt = load i16, ptr %i.gr, align 2, !tbaa !58
  %i.gu = insertelement <2 x i16> poison, i16 %i.gs, i64 0
  %i.gv = insertelement <2 x i16> %i.gu, i16 %i.gt, i64 1
  %i.gw = uitofp <2 x i16> %i.gv to <2 x double>
  %i.gx = fmul nnan <2 x double> %i.gw, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.gy = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ha = load i16, ptr %i.gy, align 2, !tbaa !58
  %i.hb = load i16, ptr %i.gz, align 2, !tbaa !58
  %i.hc = insertelement <2 x i16> poison, i16 %i.ha, i64 0
  %i.hd = insertelement <2 x i16> %i.hc, i16 %i.hb, i64 1
  %i.he = uitofp <2 x i16> %i.hd to <2 x double>
  %i.hf = fmul nnan <2 x double> %i.he, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.hg = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.hh = getelementptr inbounds nuw i8, ptr %i.x, i64 22
  %i.hi = load i16, ptr %i.hg, align 2, !tbaa !58
  %i.hj = load i16, ptr %i.hh, align 2, !tbaa !58
  %i.hk = insertelement <2 x i16> poison, i16 %i.hi, i64 0
  %i.hl = insertelement <2 x i16> %i.hk, i16 %i.hj, i64 1
  %i.hm = uitofp <2 x i16> %i.hl to <2 x double>
  %i.hn = fmul nnan <2 x double> %i.hm, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.ho = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.hq = load i16, ptr %i.ho, align 2, !tbaa !58
  %i.hr = load i16, ptr %i.hp, align 2, !tbaa !58
  %i.hs = insertelement <2 x i16> poison, i16 %i.hq, i64 0
  %i.ht = insertelement <2 x i16> %i.hs, i16 %i.hr, i64 1
  %i.hu = uitofp <2 x i16> %i.ht to <2 x double>
  %i.hv = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.hw = getelementptr inbounds nuw i8, ptr %i.x, i64 26
  %i.hx = load i16, ptr %i.hv, align 2, !tbaa !58
  %i.hy = load i16, ptr %i.hw, align 2, !tbaa !58
  %i.hz = insertelement <2 x i16> poison, i16 %i.hx, i64 0
  %i.ia = insertelement <2 x i16> %i.hz, i16 %i.hy, i64 1
  %i.ib = uitofp <2 x i16> %i.ia to <2 x double>
  %i.ic = fmul nnan <2 x double> %i.ib, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.id = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ie = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.if = load i16, ptr %i.id, align 2, !tbaa !58
  %i.ig = load i16, ptr %i.ie, align 2, !tbaa !58
  %i.ih = insertelement <2 x i16> poison, i16 %i.if, i64 0
  %i.ii = insertelement <2 x i16> %i.ih, i16 %i.ig, i64 1
  %i.ij = uitofp <2 x i16> %i.ii to <2 x double>
  %i.ik = fmul nnan <2 x double> %i.ij, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.il = getelementptr inbounds nuw i8, ptr %i.x, i64 14
  %i.im = getelementptr inbounds nuw i8, ptr %i.x, i64 30
  %i.in = load i16, ptr %i.il, align 2, !tbaa !58
  %i.io = load i16, ptr %i.im, align 2, !tbaa !58
  %i.ip = insertelement <2 x i16> poison, i16 %i.in, i64 0
  %i.iq = insertelement <2 x i16> %i.ip, i16 %i.io, i64 1
  %i.ir = uitofp <2 x i16> %i.iq to <2 x double>
  %i.is = fmul nnan <2 x double> %i.ir, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.it = shufflevector <2 x double> %i.hf, <2 x double> %i.hn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %1 = fmul nnan <2 x double> %i.gp, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %2 = fmul nnan <2 x double> %i.gx, splat (double f0x3FF63150B14861EF)
  %i.iu = shufflevector <2 x double> %1, <2 x double> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %3 = fmul nnan <4 x double> %i.it, <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>
  %4 = shufflevector <4 x double> %i.iu, <4 x double> %3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iv = fmul nnan <8 x double> %4, splat (double 8.000000e+00)
  %i.iw = fdiv <8 x double> splat (double 1.000000e+00), %i.iv
  %i.ix = fptrunc <8 x double> %i.iw to <8 x float>
  %i.iy = shufflevector <2 x double> %i.ik, <2 x double> %i.is, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %5 = fmul nnan <2 x double> %i.hu, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %6 = fmul nnan <2 x double> %i.ic, splat (double f0x3FE92469C0A7BF3B)
  %i.iz = shufflevector <2 x double> %5, <2 x double> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %7 = fmul nnan <4 x double> %i.iy, <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>
  %8 = shufflevector <4 x double> %i.iz, <4 x double> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ja = fmul nnan <8 x double> %8, splat (double 8.000000e+00)
  %i.jb = fdiv <8 x double> splat (double 1.000000e+00), %i.ja
  %i.jc = fptrunc <8 x double> %i.jb to <8 x float>
  %interleaved.vec = shufflevector <8 x float> %i.ix, <8 x float> %i.jc, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.gj, align 4, !tbaa !62
  %i.jd = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.jf = load i16, ptr %i.jd, align 2, !tbaa !58
  %i.jg = load i16, ptr %i.je, align 2, !tbaa !58
  %i.jh = insertelement <2 x i16> poison, i16 %i.jf, i64 0
  %i.ji = insertelement <2 x i16> %i.jh, i16 %i.jg, i64 1
  %i.jj = uitofp <2 x i16> %i.ji to <2 x double>
  %i.jk = getelementptr inbounds nuw i8, ptr %i.gj, i64 64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.x, i64 34
  %i.jm = getelementptr inbounds nuw i8, ptr %i.x, i64 50
  %i.jn = load i16, ptr %i.jl, align 2, !tbaa !58
  %i.jo = load i16, ptr %i.jm, align 2, !tbaa !58
  %i.jp = insertelement <2 x i16> poison, i16 %i.jn, i64 0
  %i.jq = insertelement <2 x i16> %i.jp, i16 %i.jo, i64 1
  %i.jr = uitofp <2 x i16> %i.jq to <2 x double>
  %i.js = fmul nnan <2 x double> %i.jr, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.jt = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.ju = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %i.jv = load i16, ptr %i.jt, align 2, !tbaa !58
  %i.jw = load i16, ptr %i.ju, align 2, !tbaa !58
  %i.jx = insertelement <2 x i16> poison, i16 %i.jv, i64 0
  %i.jy = insertelement <2 x i16> %i.jx, i16 %i.jw, i64 1
  %i.jz = uitofp <2 x i16> %i.jy to <2 x double>
  %i.ka = fmul nnan <2 x double> %i.jz, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.kb = getelementptr inbounds nuw i8, ptr %i.x, i64 38
  %i.kc = getelementptr inbounds nuw i8, ptr %i.x, i64 54
  %i.kd = load i16, ptr %i.kb, align 2, !tbaa !58
  %i.ke = load i16, ptr %i.kc, align 2, !tbaa !58
  %i.kf = insertelement <2 x i16> poison, i16 %i.kd, i64 0
  %i.kg = insertelement <2 x i16> %i.kf, i16 %i.ke, i64 1
  %i.kh = uitofp <2 x i16> %i.kg to <2 x double>
  %i.ki = fmul nnan <2 x double> %i.kh, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.kj = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.kk = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.kl = load i16, ptr %i.kj, align 2, !tbaa !58
  %i.km = load i16, ptr %i.kk, align 2, !tbaa !58
  %i.kn = insertelement <2 x i16> poison, i16 %i.kl, i64 0
  %i.ko = insertelement <2 x i16> %i.kn, i16 %i.km, i64 1
  %i.kp = uitofp <2 x i16> %i.ko to <2 x double>
  %i.kq = getelementptr inbounds nuw i8, ptr %i.x, i64 42
  %i.kr = getelementptr inbounds nuw i8, ptr %i.x, i64 58
  %i.ks = load i16, ptr %i.kq, align 2, !tbaa !58
  %i.kt = load i16, ptr %i.kr, align 2, !tbaa !58
  %i.ku = insertelement <2 x i16> poison, i16 %i.ks, i64 0
  %i.kv = insertelement <2 x i16> %i.ku, i16 %i.kt, i64 1
  %i.kw = uitofp <2 x i16> %i.kv to <2 x double>
  %i.kx = fmul nnan <2 x double> %i.kw, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.ky = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.kz = getelementptr inbounds nuw i8, ptr %i.x, i64 60
  %i.la = load i16, ptr %i.ky, align 2, !tbaa !58
  %i.lb = load i16, ptr %i.kz, align 2, !tbaa !58
  %i.lc = insertelement <2 x i16> poison, i16 %i.la, i64 0
  %i.ld = insertelement <2 x i16> %i.lc, i16 %i.lb, i64 1
  %i.le = uitofp <2 x i16> %i.ld to <2 x double>
  %i.lf = fmul nnan <2 x double> %i.le, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.lg = getelementptr inbounds nuw i8, ptr %i.x, i64 46
  %i.lh = getelementptr inbounds nuw i8, ptr %i.x, i64 62
  %i.li = load i16, ptr %i.lg, align 2, !tbaa !58
  %i.lj = load i16, ptr %i.lh, align 2, !tbaa !58
  %i.lk = insertelement <2 x i16> poison, i16 %i.li, i64 0
  %i.ll = insertelement <2 x i16> %i.lk, i16 %i.lj, i64 1
  %i.lm = uitofp <2 x i16> %i.ll to <2 x double>
  %i.ln = fmul nnan <2 x double> %i.lm, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.lo = shufflevector <2 x double> %i.ka, <2 x double> %i.ki, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = fmul nnan <2 x double> %i.jj, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %10 = fmul nnan <2 x double> %i.js, splat (double f0x3FF63150B14861EF)
  %i.lp = shufflevector <2 x double> %9, <2 x double> %10, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = fmul nnan <4 x double> %i.lo, <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>
  %12 = shufflevector <4 x double> %i.lp, <4 x double> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lq = fmul nnan <8 x double> %12, splat (double 8.000000e+00)
  %i.lr = fdiv <8 x double> splat (double 1.000000e+00), %i.lq
  %i.ls = fptrunc <8 x double> %i.lr to <8 x float>
  %i.lt = shufflevector <2 x double> %i.lf, <2 x double> %i.ln, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %13 = fmul nnan <2 x double> %i.kp, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %14 = fmul nnan <2 x double> %i.kx, splat (double f0x3FE92469C0A7BF3B)
  %i.lu = shufflevector <2 x double> %13, <2 x double> %14, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %15 = fmul nnan <4 x double> %i.lt, <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>
  %16 = shufflevector <4 x double> %i.lu, <4 x double> %15, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lv = fmul nnan <8 x double> %16, splat (double 8.000000e+00)
  %i.lw = fdiv <8 x double> splat (double 1.000000e+00), %i.lv
  %i.lx = fptrunc <8 x double> %i.lw to <8 x float>
  %interleaved.vec.1 = shufflevector <8 x float> %i.ls, <8 x float> %i.lx, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec.1, ptr %i.jk, align 4, !tbaa !62
  %i.ly = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.ma = load i16, ptr %i.ly, align 2, !tbaa !58
  %i.mb = load i16, ptr %i.lz, align 2, !tbaa !58
  %i.mc = insertelement <2 x i16> poison, i16 %i.ma, i64 0
  %i.md = insertelement <2 x i16> %i.mc, i16 %i.mb, i64 1
  %i.me = uitofp <2 x i16> %i.md to <2 x double>
  %i.mf = getelementptr inbounds nuw i8, ptr %i.gj, i64 128
  %i.mg = getelementptr inbounds nuw i8, ptr %i.x, i64 66
  %i.mh = getelementptr inbounds nuw i8, ptr %i.x, i64 82
  %i.mi = load i16, ptr %i.mg, align 2, !tbaa !58
  %i.mj = load i16, ptr %i.mh, align 2, !tbaa !58
  %i.mk = insertelement <2 x i16> poison, i16 %i.mi, i64 0
  %i.ml = insertelement <2 x i16> %i.mk, i16 %i.mj, i64 1
  %i.mm = uitofp <2 x i16> %i.ml to <2 x double>
  %i.mn = fmul nnan <2 x double> %i.mm, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.mo = getelementptr inbounds nuw i8, ptr %i.x, i64 68
  %i.mp = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  %i.mq = load i16, ptr %i.mo, align 2, !tbaa !58
  %i.mr = load i16, ptr %i.mp, align 2, !tbaa !58
  %i.ms = insertelement <2 x i16> poison, i16 %i.mq, i64 0
  %i.mt = insertelement <2 x i16> %i.ms, i16 %i.mr, i64 1
  %i.mu = uitofp <2 x i16> %i.mt to <2 x double>
  %i.mv = fmul nnan <2 x double> %i.mu, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.mw = getelementptr inbounds nuw i8, ptr %i.x, i64 70
  %i.mx = getelementptr inbounds nuw i8, ptr %i.x, i64 86
  %i.my = load i16, ptr %i.mw, align 2, !tbaa !58
  %i.mz = load i16, ptr %i.mx, align 2, !tbaa !58
  %i.na = insertelement <2 x i16> poison, i16 %i.my, i64 0
  %i.nb = insertelement <2 x i16> %i.na, i16 %i.mz, i64 1
  %i.nc = uitofp <2 x i16> %i.nb to <2 x double>
  %i.nd = fmul nnan <2 x double> %i.nc, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.ne = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.nf = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.ng = load i16, ptr %i.ne, align 2, !tbaa !58
  %i.nh = load i16, ptr %i.nf, align 2, !tbaa !58
  %i.ni = insertelement <2 x i16> poison, i16 %i.ng, i64 0
  %i.nj = insertelement <2 x i16> %i.ni, i16 %i.nh, i64 1
  %i.nk = uitofp <2 x i16> %i.nj to <2 x double>
  %i.nl = getelementptr inbounds nuw i8, ptr %i.x, i64 74
  %i.nm = getelementptr inbounds nuw i8, ptr %i.x, i64 90
  %i.nn = load i16, ptr %i.nl, align 2, !tbaa !58
  %i.no = load i16, ptr %i.nm, align 2, !tbaa !58
  %i.np = insertelement <2 x i16> poison, i16 %i.nn, i64 0
  %i.nq = insertelement <2 x i16> %i.np, i16 %i.no, i64 1
  %i.nr = uitofp <2 x i16> %i.nq to <2 x double>
  %i.ns = fmul nnan <2 x double> %i.nr, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.nt = getelementptr inbounds nuw i8, ptr %i.x, i64 76
  %i.nu = getelementptr inbounds nuw i8, ptr %i.x, i64 92
  %i.nv = load i16, ptr %i.nt, align 2, !tbaa !58
  %i.nw = load i16, ptr %i.nu, align 2, !tbaa !58
  %i.nx = insertelement <2 x i16> poison, i16 %i.nv, i64 0
  %i.ny = insertelement <2 x i16> %i.nx, i16 %i.nw, i64 1
  %i.nz = uitofp <2 x i16> %i.ny to <2 x double>
  %i.oa = fmul nnan <2 x double> %i.nz, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.ob = getelementptr inbounds nuw i8, ptr %i.x, i64 78
  %i.oc = getelementptr inbounds nuw i8, ptr %i.x, i64 94
  %i.od = load i16, ptr %i.ob, align 2, !tbaa !58
  %i.oe = load i16, ptr %i.oc, align 2, !tbaa !58
  %i.of = insertelement <2 x i16> poison, i16 %i.od, i64 0
  %i.og = insertelement <2 x i16> %i.of, i16 %i.oe, i64 1
  %i.oh = uitofp <2 x i16> %i.og to <2 x double>
  %i.oi = fmul nnan <2 x double> %i.oh, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.oj = shufflevector <2 x double> %i.mv, <2 x double> %i.nd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %17 = fmul nnan <2 x double> %i.me, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %18 = fmul nnan <2 x double> %i.mn, splat (double f0x3FF63150B14861EF)
  %i.ok = shufflevector <2 x double> %17, <2 x double> %18, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %19 = fmul nnan <4 x double> %i.oj, <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>
  %20 = shufflevector <4 x double> %i.ok, <4 x double> %19, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ol = fmul nnan <8 x double> %20, splat (double 8.000000e+00)
  %i.om = fdiv <8 x double> splat (double 1.000000e+00), %i.ol
  %i.on = fptrunc <8 x double> %i.om to <8 x float>
  %i.oo = shufflevector <2 x double> %i.oa, <2 x double> %i.oi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %21 = fmul nnan <2 x double> %i.nk, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %22 = fmul nnan <2 x double> %i.ns, splat (double f0x3FE92469C0A7BF3B)
  %i.op = shufflevector <2 x double> %21, <2 x double> %22, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %23 = fmul nnan <4 x double> %i.oo, <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>
  %24 = shufflevector <4 x double> %i.op, <4 x double> %23, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oq = fmul nnan <8 x double> %24, splat (double 8.000000e+00)
  %i.or = fdiv <8 x double> splat (double 1.000000e+00), %i.oq
  %i.os = fptrunc <8 x double> %i.or to <8 x float>
  %interleaved.vec.2 = shufflevector <8 x float> %i.on, <8 x float> %i.os, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec.2, ptr %i.mf, align 4, !tbaa !62
  %i.ot = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.ou = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.ov = load i16, ptr %i.ot, align 2, !tbaa !58
  %i.ow = load i16, ptr %i.ou, align 2, !tbaa !58
  %i.ox = insertelement <2 x i16> poison, i16 %i.ov, i64 0
  %i.oy = insertelement <2 x i16> %i.ox, i16 %i.ow, i64 1
  %i.oz = uitofp <2 x i16> %i.oy to <2 x double>
  %i.pa = getelementptr inbounds nuw i8, ptr %i.gj, i64 192
  %i.pb = getelementptr inbounds nuw i8, ptr %i.x, i64 98
  %i.pc = getelementptr inbounds nuw i8, ptr %i.x, i64 114
  %i.pd = load i16, ptr %i.pb, align 2, !tbaa !58
  %i.pe = load i16, ptr %i.pc, align 2, !tbaa !58
  %i.pf = insertelement <2 x i16> poison, i16 %i.pd, i64 0
  %i.pg = insertelement <2 x i16> %i.pf, i16 %i.pe, i64 1
  %i.ph = uitofp <2 x i16> %i.pg to <2 x double>
  %i.pi = fmul nnan <2 x double> %i.ph, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.pj = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.pk = getelementptr inbounds nuw i8, ptr %i.x, i64 116
  %i.pl = load i16, ptr %i.pj, align 2, !tbaa !58
  %i.pm = load i16, ptr %i.pk, align 2, !tbaa !58
  %i.pn = insertelement <2 x i16> poison, i16 %i.pl, i64 0
  %i.po = insertelement <2 x i16> %i.pn, i16 %i.pm, i64 1
  %i.pp = uitofp <2 x i16> %i.po to <2 x double>
  %i.pq = fmul nnan <2 x double> %i.pp, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.pr = getelementptr inbounds nuw i8, ptr %i.x, i64 102
  %i.ps = getelementptr inbounds nuw i8, ptr %i.x, i64 118
  %i.pt = load i16, ptr %i.pr, align 2, !tbaa !58
  %i.pu = load i16, ptr %i.ps, align 2, !tbaa !58
  %i.pv = insertelement <2 x i16> poison, i16 %i.pt, i64 0
  %i.pw = insertelement <2 x i16> %i.pv, i16 %i.pu, i64 1
  %i.px = uitofp <2 x i16> %i.pw to <2 x double>
  %i.py = fmul nnan <2 x double> %i.px, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.pz = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.qa = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.qb = load i16, ptr %i.pz, align 2, !tbaa !58
  %i.qc = load i16, ptr %i.qa, align 2, !tbaa !58
  %i.qd = insertelement <2 x i16> poison, i16 %i.qb, i64 0
  %i.qe = insertelement <2 x i16> %i.qd, i16 %i.qc, i64 1
  %i.qf = uitofp <2 x i16> %i.qe to <2 x double>
  %i.qg = getelementptr inbounds nuw i8, ptr %i.x, i64 106
  %i.qh = getelementptr inbounds nuw i8, ptr %i.x, i64 122
  %i.qi = load i16, ptr %i.qg, align 2, !tbaa !58
  %i.qj = load i16, ptr %i.qh, align 2, !tbaa !58
  %i.qk = insertelement <2 x i16> poison, i16 %i.qi, i64 0
  %i.ql = insertelement <2 x i16> %i.qk, i16 %i.qj, i64 1
  %i.qm = uitofp <2 x i16> %i.ql to <2 x double>
  %i.qn = fmul nnan <2 x double> %i.qm, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.qo = getelementptr inbounds nuw i8, ptr %i.x, i64 108
  %i.qp = getelementptr inbounds nuw i8, ptr %i.x, i64 124
  %i.qq = load i16, ptr %i.qo, align 2, !tbaa !58
  %i.qr = load i16, ptr %i.qp, align 2, !tbaa !58
  %i.qs = insertelement <2 x i16> poison, i16 %i.qq, i64 0
  %i.qt = insertelement <2 x i16> %i.qs, i16 %i.qr, i64 1
  %i.qu = uitofp <2 x i16> %i.qt to <2 x double>
  %i.qv = fmul nnan <2 x double> %i.qu, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.qw = getelementptr inbounds nuw i8, ptr %i.x, i64 110
  %i.qx = getelementptr inbounds nuw i8, ptr %i.x, i64 126
  %i.qy = load i16, ptr %i.qw, align 2, !tbaa !58
  %i.qz = load i16, ptr %i.qx, align 2, !tbaa !58
  %i.ra = insertelement <2 x i16> poison, i16 %i.qy, i64 0
  %i.rb = insertelement <2 x i16> %i.ra, i16 %i.qz, i64 1
  %i.rc = uitofp <2 x i16> %i.rb to <2 x double>
  %i.rd = fmul nnan <2 x double> %i.rc, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.re = shufflevector <2 x double> %i.pq, <2 x double> %i.py, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %25 = fmul nnan <2 x double> %i.oz, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %26 = fmul nnan <2 x double> %i.pi, splat (double f0x3FF63150B14861EF)
  %i.rf = shufflevector <2 x double> %25, <2 x double> %26, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %27 = fmul nnan <4 x double> %i.re, <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>
  %28 = shufflevector <4 x double> %i.rf, <4 x double> %27, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.rg = fmul nnan <8 x double> %28, splat (double 8.000000e+00)
  %i.rh = fdiv <8 x double> splat (double 1.000000e+00), %i.rg
  %i.ri = fptrunc <8 x double> %i.rh to <8 x float>
  %i.rj = shufflevector <2 x double> %i.qv, <2 x double> %i.rd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %29 = fmul nnan <2 x double> %i.qf, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %30 = fmul nnan <2 x double> %i.qn, splat (double f0x3FE92469C0A7BF3B)
  %i.rk = shufflevector <2 x double> %29, <2 x double> %30, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %31 = fmul nnan <4 x double> %i.rj, <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>
  %32 = shufflevector <4 x double> %i.rk, <4 x double> %31, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.rl = fmul nnan <8 x double> %32, splat (double 8.000000e+00)
  %i.rm = fdiv <8 x double> splat (double 1.000000e+00), %i.rl
  %i.rn = fptrunc <8 x double> %i.rm to <8 x float>
  %interleaved.vec.3 = shufflevector <8 x float> %i.ri, <8 x float> %i.rn, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec.3, ptr %i.pa, align 4, !tbaa !62
  br label %.loopexit

bb.n:                                             ; preds = %bb.e
  %i.ro = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  store i32 49, ptr %i.rp, align 8, !tbaa !27
  %i.rq = load ptr, ptr %i.ro, align 8, !tbaa !33
  tail call void %i.rq(ptr noundef nonnull %0) #5
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %vector.body119, %vector.body, %bb.n
  %i.rr = add nuw nsw i32 %.07184, 1              ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.07383, i64 96
  %i.rt = load i32, ptr %i.a, align 4, !tbaa !54
  %i.ru = icmp slt i32 %i.rr, %i.rt
  br i1 %i.ru, label %bb.b, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @forward_DCT(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !56
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !65   ; 3 uses
  %i.q = zext i32 %4 to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %6 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.025 = phi i32 [ %5, %.lr.ph.preheader ], [ %i.t, %.lr.ph ] ; 2 uses
  tail call void %i.l(ptr noundef %i.r, i32 noundef %.025, ptr noundef %i.p) #5
  tail call void %i.j(ptr noundef %i.p) #5
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %3, i64 %indvars.iv
  tail call void %i.n(ptr noundef %i.s, ptr noundef %i.h, ptr noundef %i.p) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = add i32 %.025, 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @jpeg12_fdct_islow(ptr noundef) #1

declare void @jpeg12_fdct_ifast(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @forward_DCT_float(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !56
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67   ; 3 uses
  %i.q = zext i32 %4 to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %6 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.025 = phi i32 [ %5, %.lr.ph.preheader ], [ %i.t, %.lr.ph ] ; 2 uses
  tail call void %i.l(ptr noundef %i.r, i32 noundef %.025, ptr noundef %i.p) #5
  tail call void %i.j(ptr noundef %i.p) #5
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %3, i64 %indvars.iv
  tail call void %i.n(ptr noundef %i.s, ptr noundef %i.h, ptr noundef %i.p) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = add i32 %.025, 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @jpeg_fdct_float(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @convsamp(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 512)) %2) #2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.a ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load <4 x i16>, ptr %i.c, align 2, !tbaa !58
  %i.g = sext <4 x i16> %i.f to <4 x i32>
  %i.h = add nsw <4 x i32> %i.g, splat (i32 -2048)
  %i.i = sext <4 x i32> %i.h to <4 x i64>
  store <4 x i64> %i.i, ptr %2, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.k = load <4 x i16>, ptr %i.d, align 2, !tbaa !58
  %i.l = sext <4 x i16> %i.k to <4 x i32>
  %i.m = add nsw <4 x i32> %i.l, splat (i32 -2048)
  %i.n = sext <4 x i32> %i.m to <4 x i64>
  store <4 x i64> %i.n, ptr %i.e, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.a ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.t = load <4 x i16>, ptr %i.q, align 2, !tbaa !58
  %i.u = sext <4 x i16> %i.t to <4 x i32>
  %i.v = add nsw <4 x i32> %i.u, splat (i32 -2048)
  %i.w = sext <4 x i32> %i.v to <4 x i64>
  store <4 x i64> %i.w, ptr %i.j, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.y = load <4 x i16>, ptr %i.r, align 2, !tbaa !58
  %i.z = sext <4 x i16> %i.y to <4 x i32>
  %i.aa = add nsw <4 x i32> %i.z, splat (i32 -2048)
  %i.ab = sext <4 x i32> %i.aa to <4 x i64>
  store <4 x i64> %i.ab, ptr %i.s, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.a ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ah = load <4 x i16>, ptr %i.ae, align 2, !tbaa !58
  %i.ai = sext <4 x i16> %i.ah to <4 x i32>
  %i.aj = add nsw <4 x i32> %i.ai, splat (i32 -2048)
  %i.ak = sext <4 x i32> %i.aj to <4 x i64>
  store <4 x i64> %i.ak, ptr %i.x, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.am = load <4 x i16>, ptr %i.af, align 2, !tbaa !58
  %i.an = sext <4 x i16> %i.am to <4 x i32>
  %i.ao = add nsw <4 x i32> %i.an, splat (i32 -2048)
  %i.ap = sext <4 x i32> %i.ao to <4 x i64>
  store <4 x i64> %i.ap, ptr %i.ag, align 8, !tbaa !59
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.a ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.av = load <4 x i16>, ptr %i.as, align 2, !tbaa !58
  %i.aw = sext <4 x i16> %i.av to <4 x i32>
  %i.ax = add nsw <4 x i32> %i.aw, splat (i32 -2048)
  %i.ay = sext <4 x i32> %i.ax to <4 x i64>
  store <4 x i64> %i.ay, ptr %i.al, align 8, !tbaa !59
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ba = load <4 x i16>, ptr %i.at, align 2, !tbaa !58
  %i.bb = sext <4 x i16> %i.ba to <4 x i32>
  %i.bc = add nsw <4 x i32> %i.bb, splat (i32 -2048)
  %i.bd = sext <4 x i32> %i.bc to <4 x i64>
  store <4 x i64> %i.bd, ptr %i.au, align 8, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !69
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.a ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.bj = load <4 x i16>, ptr %i.bg, align 2, !tbaa !58
  %i.bk = sext <4 x i16> %i.bj to <4 x i32>
  %i.bl = add nsw <4 x i32> %i.bk, splat (i32 -2048)
  %i.bm = sext <4 x i32> %i.bl to <4 x i64>
  store <4 x i64> %i.bm, ptr %i.az, align 8, !tbaa !59
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.bo = load <4 x i16>, ptr %i.bh, align 2, !tbaa !58
  %i.bp = sext <4 x i16> %i.bo to <4 x i32>
  %i.bq = add nsw <4 x i32> %i.bp, splat (i32 -2048)
end_hunk_0
