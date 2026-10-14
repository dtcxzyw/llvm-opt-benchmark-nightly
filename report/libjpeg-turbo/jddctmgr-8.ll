Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jddctmgr-8?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@start_pass:bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bj, i64 120
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !60
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bl, i64 120
  store i16 %i.ij, ptr %i.ik, align 2, !tbaa !60
  %i.il = getelementptr inbounds nuw i8, ptr %i.bj, i64 122
  %i.im = load i16, ptr %i.il, align 2, !tbaa !60
  %i.in = getelementptr inbounds nuw i8, ptr %i.bl, i64 122
  store i16 %i.im, ptr %i.in, align 2, !tbaa !60
  %i.io = getelementptr inbounds nuw i8, ptr %i.bj, i64 124
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !60
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bl, i64 124
  store i16 %i.ip, ptr %i.iq, align 2, !tbaa !60
  %i.ir = getelementptr inbounds nuw i8, ptr %i.bj, i64 126
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !60
  %i.it = getelementptr inbounds nuw i8, ptr %i.bl, i64 126
  store i16 %i.is, ptr %i.it, align 2, !tbaa !60
  br label %.loopexit

vector.memcheck:                                  ; preds = %bb.ai, %bb.ag
  %i.iu = phi ptr [ %i.be, %bb.ai ], [ %i.ay, %bb.ag ] ; 11 uses
  %.6121 = phi ptr [ %jpeg_idct_ifast.jsimd_idct_ifast, %bb.ai ], [ %.06490, %bb.ag ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.06788, i64 88
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !42 ; 11 uses
  %i.ix = ptrtoaddr ptr %i.iw to i64
  %i.iy = ptrtoaddr ptr %i.iu to i64
  %i.iz = sub i64 %i.iy, %i.ix
  %diff.check = icmp ugt i64 %i.iz, -16
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %wide.load = load <8 x i16>, ptr %i.iu, align 2, !tbaa !60
  %i.ja = zext <8 x i16> %wide.load to <8 x i32>
  %i.jb = mul nuw nsw <8 x i32> %i.ja, <i32 16384, i32 22725, i32 21407, i32 19266, i32 16384, i32 12873, i32 8867, i32 4520>
  %i.jc = add nuw nsw <8 x i32> %i.jb, splat (i32 2048)
  %i.jd = lshr <8 x i32> %i.jc, splat (i32 12)
  %i.je = trunc <8 x i32> %i.jd to <8 x i16>
  store <8 x i16> %i.je, ptr %i.iw, align 2, !tbaa !60
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %wide.load.1 = load <8 x i16>, ptr %i.jf, align 2, !tbaa !60
  %i.jg = zext <8 x i16> %wide.load.1 to <8 x i32>
  %i.jh = mul nuw nsw <8 x i32> %i.jg, <i32 22725, i32 31521, i32 29692, i32 26722, i32 22725, i32 17855, i32 12299, i32 6270>
  %i.ji = add nuw nsw <8 x i32> %i.jh, splat (i32 2048)
  %i.jj = lshr <8 x i32> %i.ji, splat (i32 12)
  %i.jk = trunc <8 x i32> %i.jj to <8 x i16>
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store <8 x i16> %i.jk, ptr %i.jl, align 2, !tbaa !60
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %wide.load.2 = load <8 x i16>, ptr %i.jm, align 2, !tbaa !60
  %i.jn = zext <8 x i16> %wide.load.2 to <8 x i32>
  %i.jo = mul nuw nsw <8 x i32> %i.jn, <i32 21407, i32 29692, i32 27969, i32 25172, i32 21407, i32 16819, i32 11585, i32 5906>
  %i.jp = add nuw nsw <8 x i32> %i.jo, splat (i32 2048)
  %i.jq = lshr <8 x i32> %i.jp, splat (i32 12)
  %i.jr = trunc <8 x i32> %i.jq to <8 x i16>
  %i.js = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  store <8 x i16> %i.jr, ptr %i.js, align 2, !tbaa !60
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iu, i64 48
  %wide.load.3 = load <8 x i16>, ptr %i.jt, align 2, !tbaa !60
  %i.ju = zext <8 x i16> %wide.load.3 to <8 x i32>
  %i.jv = mul nuw nsw <8 x i32> %i.ju, <i32 19266, i32 26722, i32 25172, i32 22654, i32 19266, i32 15137, i32 10426, i32 5315>
  %i.jw = add nuw nsw <8 x i32> %i.jv, splat (i32 2048)
  %i.jx = lshr <8 x i32> %i.jw, splat (i32 12)
  %i.jy = trunc <8 x i32> %i.jx to <8 x i16>
  %i.jz = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  store <8 x i16> %i.jy, ptr %i.jz, align 2, !tbaa !60
  %i.ka = getelementptr inbounds nuw i8, ptr %i.iu, i64 64
  %wide.load.4 = load <8 x i16>, ptr %i.ka, align 2, !tbaa !60
  %i.kb = zext <8 x i16> %wide.load.4 to <8 x i32>
  %i.kc = mul nuw nsw <8 x i32> %i.kb, <i32 16384, i32 22725, i32 21407, i32 19266, i32 16384, i32 12873, i32 8867, i32 4520>
  %i.kd = add nuw nsw <8 x i32> %i.kc, splat (i32 2048)
  %i.ke = lshr <8 x i32> %i.kd, splat (i32 12)
  %i.kf = trunc <8 x i32> %i.ke to <8 x i16>
  %i.kg = getelementptr inbounds nuw i8, ptr %i.iw, i64 64
  store <8 x i16> %i.kf, ptr %i.kg, align 2, !tbaa !60
  %i.kh = getelementptr inbounds nuw i8, ptr %i.iu, i64 80
  %wide.load.5 = load <8 x i16>, ptr %i.kh, align 2, !tbaa !60
  %i.ki = zext <8 x i16> %wide.load.5 to <8 x i32>
  %i.kj = mul nuw nsw <8 x i32> %i.ki, <i32 12873, i32 17855, i32 16819, i32 15137, i32 12873, i32 10114, i32 6967, i32 3552>
  %i.kk = add nuw nsw <8 x i32> %i.kj, splat (i32 2048)
  %i.kl = lshr <8 x i32> %i.kk, splat (i32 12)
  %i.km = trunc <8 x i32> %i.kl to <8 x i16>
  %i.kn = getelementptr inbounds nuw i8, ptr %i.iw, i64 80
  store <8 x i16> %i.km, ptr %i.kn, align 2, !tbaa !60
  %i.ko = getelementptr inbounds nuw i8, ptr %i.iu, i64 96
  %wide.load.6 = load <8 x i16>, ptr %i.ko, align 2, !tbaa !60
  %i.kp = zext <8 x i16> %wide.load.6 to <8 x i32>
  %i.kq = mul nuw nsw <8 x i32> %i.kp, <i32 8867, i32 12299, i32 11585, i32 10426, i32 8867, i32 6967, i32 4799, i32 2446>
  %i.kr = add nuw nsw <8 x i32> %i.kq, splat (i32 2048)
  %i.ks = lshr <8 x i32> %i.kr, splat (i32 12)
  %i.kt = trunc <8 x i32> %i.ks to <8 x i16>
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iw, i64 96
  store <8 x i16> %i.kt, ptr %i.ku, align 2, !tbaa !60
  %i.kv = getelementptr inbounds nuw i8, ptr %i.iu, i64 112
  %wide.load.7 = load <8 x i16>, ptr %i.kv, align 2, !tbaa !60
  %i.kw = zext <8 x i16> %wide.load.7 to <8 x i32>
  %i.kx = mul nuw nsw <8 x i32> %i.kw, <i32 4520, i32 6270, i32 5906, i32 5315, i32 4520, i32 3552, i32 2446, i32 1247>
  %i.ky = add nuw nsw <8 x i32> %i.kx, splat (i32 2048)
  %i.kz = lshr <8 x i32> %i.ky, splat (i32 12)
  %i.la = trunc <8 x i32> %i.kz to <8 x i16>
  %i.lb = getelementptr inbounds nuw i8, ptr %i.iw, i64 112
  store <8 x i16> %i.la, ptr %i.lb, align 2, !tbaa !60
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 5 uses
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %indvars.iv103
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !60
  %i.le = zext i16 %i.ld to i32
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr @start_pass.aanscales, i64 %indvars.iv103
  %i.lg = load i16, ptr %i.lf, align 4, !tbaa !60
  %i.lh = sext i16 %i.lg to i32
  %i.li = mul nsw i32 %i.lh, %i.le
  %i.lj = add nsw i32 %i.li, 2048
  %i.lk = lshr i32 %i.lj, 12
  %i.ll = trunc i32 %i.lk to i16
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %indvars.iv103
  store i16 %i.ll, ptr %i.lm, align 2, !tbaa !60
  %indvars.iv.next104 = or disjoint i64 %indvars.iv103, 1 ; 3 uses
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %indvars.iv.next104
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !60
  %i.lp = zext i16 %i.lo to i32
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr @start_pass.aanscales, i64 %indvars.iv.next104
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !60
  %i.ls = sext i16 %i.lr to i32
  %i.lt = mul nsw i32 %i.ls, %i.lp
  %i.lu = add nsw i32 %i.lt, 2048
  %i.lv = lshr i32 %i.lu, 12
  %i.lw = trunc i32 %i.lv to i16
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %indvars.iv.next104
  store i16 %i.lw, ptr %i.lx, align 2, !tbaa !60
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %exitcond106.not.1 = icmp eq i64 %indvars.iv.next104.1, 64
  br i1 %exitcond106.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !53

vector.body131:                                   ; preds = %bb.ag, %bb.ah
  %i.ly = phi ptr [ %i.bb, %bb.ah ], [ %i.ay, %bb.ag ] ; 64 uses
  %.6120 = phi ptr [ %jpeg_idct_float.jsimd_idct_float, %bb.ah ], [ %.06490, %bb.ag ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.06788, i64 88
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !42 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.mc = load i16, ptr %i.ly, align 2, !tbaa !60
  %i.md = load i16, ptr %i.mb, align 2, !tbaa !60
  %i.me = insertelement <2 x i16> poison, i16 %i.mc, i64 0
  %i.mf = insertelement <2 x i16> %i.me, i16 %i.md, i64 1
  %i.mg = uitofp <2 x i16> %i.mf to <2 x double>
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ly, i64 2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 18
  %i.mj = load i16, ptr %i.mh, align 2, !tbaa !60
  %i.mk = load i16, ptr %i.mi, align 2, !tbaa !60
  %i.ml = insertelement <2 x i16> poison, i16 %i.mj, i64 0
  %i.mm = insertelement <2 x i16> %i.ml, i16 %i.mk, i64 1
  %i.mn = uitofp <2 x i16> %i.mm to <2 x double>
  %i.mo = fmul nnan <2 x double> %i.mn, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ly, i64 20
  %i.mr = load i16, ptr %i.mp, align 2, !tbaa !60
  %i.ms = load i16, ptr %i.mq, align 2, !tbaa !60
  %i.mt = insertelement <2 x i16> poison, i16 %i.mr, i64 0
  %i.mu = insertelement <2 x i16> %i.mt, i16 %i.ms, i64 1
  %i.mv = uitofp <2 x i16> %i.mu to <2 x double>
  %i.mw = fmul nnan <2 x double> %i.mv, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ly, i64 6
  %i.my = getelementptr inbounds nuw i8, ptr %i.ly, i64 22
  %i.mz = load i16, ptr %i.mx, align 2, !tbaa !60
  %i.na = load i16, ptr %i.my, align 2, !tbaa !60
  %i.nb = insertelement <2 x i16> poison, i16 %i.mz, i64 0
  %i.nc = insertelement <2 x i16> %i.nb, i16 %i.na, i64 1
  %i.nd = uitofp <2 x i16> %i.nc to <2 x double>
  %i.ne = fmul nnan <2 x double> %i.nd, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.nh = load i16, ptr %i.nf, align 2, !tbaa !60
  %i.ni = load i16, ptr %i.ng, align 2, !tbaa !60
  %i.nj = insertelement <2 x i16> poison, i16 %i.nh, i64 0
  %i.nk = insertelement <2 x i16> %i.nj, i16 %i.ni, i64 1
  %i.nl = uitofp <2 x i16> %i.nk to <2 x double>
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ly, i64 10
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ly, i64 26
  %i.no = load i16, ptr %i.nm, align 2, !tbaa !60
  %i.np = load i16, ptr %i.nn, align 2, !tbaa !60
  %i.nq = insertelement <2 x i16> poison, i16 %i.no, i64 0
  %i.nr = insertelement <2 x i16> %i.nq, i16 %i.np, i64 1
  %i.ns = uitofp <2 x i16> %i.nr to <2 x double>
  %i.nt = fmul nnan <2 x double> %i.ns, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ly, i64 28
  %i.nw = load i16, ptr %i.nu, align 2, !tbaa !60
  %i.nx = load i16, ptr %i.nv, align 2, !tbaa !60
  %i.ny = insertelement <2 x i16> poison, i16 %i.nw, i64 0
  %i.nz = insertelement <2 x i16> %i.ny, i16 %i.nx, i64 1
  %i.oa = uitofp <2 x i16> %i.nz to <2 x double>
  %i.ob = fmul nnan <2 x double> %i.oa, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ly, i64 14
  %i.od = getelementptr inbounds nuw i8, ptr %i.ly, i64 30
  %i.oe = load i16, ptr %i.oc, align 2, !tbaa !60
  %i.of = load i16, ptr %i.od, align 2, !tbaa !60
  %i.og = insertelement <2 x i16> poison, i16 %i.oe, i64 0
  %i.oh = insertelement <2 x i16> %i.og, i16 %i.of, i64 1
  %i.oi = uitofp <2 x i16> %i.oh to <2 x double>
  %i.oj = fmul nnan <2 x double> %i.oi, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.ok = shufflevector <2 x double> <double 1.000000e+00, double f0x3FF63150B14861EF>, <2 x double> %i.mo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ol = shufflevector <2 x double> %i.mw, <2 x double> %i.ne, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %1 = shufflevector <4 x double> %i.ok, <4 x double> %i.ol, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.om = shufflevector <2 x double> %i.mg, <2 x double> splat (double f0x3FF63150B14861EF), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %2 = shufflevector <4 x double> %i.om, <4 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %3 = fmul <8 x double> %1, %2
  %4 = fptrunc <8 x double> %3 to <8 x float>
  %5 = shufflevector <2 x double> <double 1.000000e+00, double f0x3FF63150B14861EF>, <2 x double> %i.nt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.on = shufflevector <2 x double> %i.ob, <2 x double> %i.oj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %6 = shufflevector <4 x double> %5, <4 x double> %i.on, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = shufflevector <2 x double> %i.nl, <2 x double> splat (double f0x3FE92469C0A7BF3B), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <4 x double> %7, <4 x double> <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %9 = fmul <8 x double> %6, %8
  %i.oo = fptrunc <8 x double> %9 to <8 x float>
  %interleaved.vec = shufflevector <8 x float> %4, <8 x float> %i.oo, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ma, align 4, !tbaa !63
  %i.op = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ly, i64 48
  %i.or = load i16, ptr %i.op, align 2, !tbaa !60
  %i.os = load i16, ptr %i.oq, align 2, !tbaa !60
  %i.ot = insertelement <2 x i16> poison, i16 %i.or, i64 0
  %i.ou = insertelement <2 x i16> %i.ot, i16 %i.os, i64 1
  %i.ov = uitofp <2 x i16> %i.ou to <2 x double>
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ma, i64 64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ly, i64 34
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ly, i64 50
  %i.oz = load i16, ptr %i.ox, align 2, !tbaa !60
  %i.pa = load i16, ptr %i.oy, align 2, !tbaa !60
  %i.pb = insertelement <2 x i16> poison, i16 %i.oz, i64 0
  %i.pc = insertelement <2 x i16> %i.pb, i16 %i.pa, i64 1
  %i.pd = uitofp <2 x i16> %i.pc to <2 x double>
  %i.pe = fmul nnan <2 x double> %i.pd, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ly, i64 36
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ly, i64 52
  %i.ph = load i16, ptr %i.pf, align 2, !tbaa !60
  %i.pi = load i16, ptr %i.pg, align 2, !tbaa !60
  %i.pj = insertelement <2 x i16> poison, i16 %i.ph, i64 0
  %i.pk = insertelement <2 x i16> %i.pj, i16 %i.pi, i64 1
  %i.pl = uitofp <2 x i16> %i.pk to <2 x double>
  %i.pm = fmul nnan <2 x double> %i.pl, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ly, i64 38
  %i.po = getelementptr inbounds nuw i8, ptr %i.ly, i64 54
  %i.pp = load i16, ptr %i.pn, align 2, !tbaa !60
  %i.pq = load i16, ptr %i.po, align 2, !tbaa !60
  %i.pr = insertelement <2 x i16> poison, i16 %i.pp, i64 0
  %i.ps = insertelement <2 x i16> %i.pr, i16 %i.pq, i64 1
  %i.pt = uitofp <2 x i16> %i.ps to <2 x double>
  %i.pu = fmul nnan <2 x double> %i.pt, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ly, i64 56
  %i.px = load i16, ptr %i.pv, align 2, !tbaa !60
  %i.py = load i16, ptr %i.pw, align 2, !tbaa !60
  %i.pz = insertelement <2 x i16> poison, i16 %i.px, i64 0
  %i.qa = insertelement <2 x i16> %i.pz, i16 %i.py, i64 1
  %i.qb = uitofp <2 x i16> %i.qa to <2 x double>
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ly, i64 42
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ly, i64 58
  %i.qe = load i16, ptr %i.qc, align 2, !tbaa !60
  %i.qf = load i16, ptr %i.qd, align 2, !tbaa !60
  %i.qg = insertelement <2 x i16> poison, i16 %i.qe, i64 0
  %i.qh = insertelement <2 x i16> %i.qg, i16 %i.qf, i64 1
  %i.qi = uitofp <2 x i16> %i.qh to <2 x double>
  %i.qj = fmul nnan <2 x double> %i.qi, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ly, i64 44
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ly, i64 60
  %i.qm = load i16, ptr %i.qk, align 2, !tbaa !60
  %i.qn = load i16, ptr %i.ql, align 2, !tbaa !60
  %i.qo = insertelement <2 x i16> poison, i16 %i.qm, i64 0
  %i.qp = insertelement <2 x i16> %i.qo, i16 %i.qn, i64 1
  %i.qq = uitofp <2 x i16> %i.qp to <2 x double>
  %i.qr = fmul nnan <2 x double> %i.qq, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ly, i64 46
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ly, i64 62
  %i.qu = load i16, ptr %i.qs, align 2, !tbaa !60
  %i.qv = load i16, ptr %i.qt, align 2, !tbaa !60
  %i.qw = insertelement <2 x i16> poison, i16 %i.qu, i64 0
  %i.qx = insertelement <2 x i16> %i.qw, i16 %i.qv, i64 1
  %i.qy = uitofp <2 x i16> %i.qx to <2 x double>
  %i.qz = fmul nnan <2 x double> %i.qy, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.ra = shufflevector <2 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>, <2 x double> %i.pe, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rb = shufflevector <2 x double> %i.pm, <2 x double> %i.pu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %10 = shufflevector <4 x double> %i.ra, <4 x double> %i.rb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.rc = shufflevector <2 x double> %i.ov, <2 x double> splat (double f0x3FF63150B14861EF), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <4 x double> %i.rc, <4 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = fmul <8 x double> %10, %11
  %13 = fptrunc <8 x double> %12 to <8 x float>
  %14 = shufflevector <2 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>, <2 x double> %i.qj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rd = shufflevector <2 x double> %i.qr, <2 x double> %i.qz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %15 = shufflevector <4 x double> %14, <4 x double> %i.rd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %16 = shufflevector <2 x double> %i.qb, <2 x double> splat (double f0x3FE92469C0A7BF3B), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %17 = shufflevector <4 x double> %16, <4 x double> <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %18 = fmul <8 x double> %15, %17
  %i.re = fptrunc <8 x double> %18 to <8 x float>
  %interleaved.vec.1 = shufflevector <8 x float> %13, <8 x float> %i.re, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec.1, ptr %i.ow, align 4, !tbaa !63
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ly, i64 64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ly, i64 80
  %i.rh = load i16, ptr %i.rf, align 2, !tbaa !60
  %i.ri = load i16, ptr %i.rg, align 2, !tbaa !60
  %i.rj = insertelement <2 x i16> poison, i16 %i.rh, i64 0
  %i.rk = insertelement <2 x i16> %i.rj, i16 %i.ri, i64 1
  %i.rl = uitofp <2 x i16> %i.rk to <2 x double>
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ma, i64 128
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ly, i64 66
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ly, i64 82
  %i.rp = load i16, ptr %i.rn, align 2, !tbaa !60
  %i.rq = load i16, ptr %i.ro, align 2, !tbaa !60
  %i.rr = insertelement <2 x i16> poison, i16 %i.rp, i64 0
  %i.rs = insertelement <2 x i16> %i.rr, i16 %i.rq, i64 1
  %i.rt = uitofp <2 x i16> %i.rs to <2 x double>
  %i.ru = fmul nnan <2 x double> %i.rt, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ly, i64 68
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ly, i64 84
  %i.rx = load i16, ptr %i.rv, align 2, !tbaa !60
  %i.ry = load i16, ptr %i.rw, align 2, !tbaa !60
  %i.rz = insertelement <2 x i16> poison, i16 %i.rx, i64 0
  %i.sa = insertelement <2 x i16> %i.rz, i16 %i.ry, i64 1
  %i.sb = uitofp <2 x i16> %i.sa to <2 x double>
  %i.sc = fmul nnan <2 x double> %i.sb, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ly, i64 70
  %i.se = getelementptr inbounds nuw i8, ptr %i.ly, i64 86
  %i.sf = load i16, ptr %i.sd, align 2, !tbaa !60
  %i.sg = load i16, ptr %i.se, align 2, !tbaa !60
  %i.sh = insertelement <2 x i16> poison, i16 %i.sf, i64 0
  %i.si = insertelement <2 x i16> %i.sh, i16 %i.sg, i64 1
  %i.sj = uitofp <2 x i16> %i.si to <2 x double>
  %i.sk = fmul nnan <2 x double> %i.sj, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ly, i64 72
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ly, i64 88
  %i.sn = load i16, ptr %i.sl, align 2, !tbaa !60
  %i.so = load i16, ptr %i.sm, align 2, !tbaa !60
  %i.sp = insertelement <2 x i16> poison, i16 %i.sn, i64 0
  %i.sq = insertelement <2 x i16> %i.sp, i16 %i.so, i64 1
  %i.sr = uitofp <2 x i16> %i.sq to <2 x double>
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ly, i64 74
  %i.st = getelementptr inbounds nuw i8, ptr %i.ly, i64 90
  %i.su = load i16, ptr %i.ss, align 2, !tbaa !60
  %i.sv = load i16, ptr %i.st, align 2, !tbaa !60
  %i.sw = insertelement <2 x i16> poison, i16 %i.su, i64 0
  %i.sx = insertelement <2 x i16> %i.sw, i16 %i.sv, i64 1
  %i.sy = uitofp <2 x i16> %i.sx to <2 x double>
  %i.sz = fmul nnan <2 x double> %i.sy, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ly, i64 76
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ly, i64 92
  %i.tc = load i16, ptr %i.ta, align 2, !tbaa !60
  %i.td = load i16, ptr %i.tb, align 2, !tbaa !60
  %i.te = insertelement <2 x i16> poison, i16 %i.tc, i64 0
  %i.tf = insertelement <2 x i16> %i.te, i16 %i.td, i64 1
  %i.tg = uitofp <2 x i16> %i.tf to <2 x double>
  %i.th = fmul nnan <2 x double> %i.tg, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ly, i64 78
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ly, i64 94
  %i.tk = load i16, ptr %i.ti, align 2, !tbaa !60
  %i.tl = load i16, ptr %i.tj, align 2, !tbaa !60
  %i.tm = insertelement <2 x i16> poison, i16 %i.tk, i64 0
  %i.tn = insertelement <2 x i16> %i.tm, i16 %i.tl, i64 1
  %i.to = uitofp <2 x i16> %i.tn to <2 x double>
  %i.tp = fmul nnan <2 x double> %i.to, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.tq = shufflevector <2 x double> <double 1.000000e+00, double f0x3FE92469C0A7BF3B>, <2 x double> %i.ru, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tr = shufflevector <2 x double> %i.sc, <2 x double> %i.sk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %19 = shufflevector <4 x double> %i.tq, <4 x double> %i.tr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ts = shufflevector <2 x double> %i.rl, <2 x double> splat (double f0x3FF63150B14861EF), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %20 = shufflevector <4 x double> %i.ts, <4 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %21 = fmul <8 x double> %19, %20
  %22 = fptrunc <8 x double> %21 to <8 x float>
  %23 = shufflevector <2 x double> <double 1.000000e+00, double f0x3FE92469C0A7BF3B>, <2 x double> %i.sz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tt = shufflevector <2 x double> %i.th, <2 x double> %i.tp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %24 = shufflevector <4 x double> %23, <4 x double> %i.tt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %25 = shufflevector <2 x double> %i.sr, <2 x double> splat (double f0x3FE92469C0A7BF3B), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %26 = shufflevector <4 x double> %25, <4 x double> <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %27 = fmul <8 x double> %24, %26
  %i.tu = fptrunc <8 x double> %27 to <8 x float>
  %interleaved.vec.2 = shufflevector <8 x float> %22, <8 x float> %i.tu, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec.2, ptr %i.rm, align 4, !tbaa !63
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ly, i64 96
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ly, i64 112
  %i.tx = load i16, ptr %i.tv, align 2, !tbaa !60
  %i.ty = load i16, ptr %i.tw, align 2, !tbaa !60
  %i.tz = insertelement <2 x i16> poison, i16 %i.tx, i64 0
  %i.ua = insertelement <2 x i16> %i.tz, i16 %i.ty, i64 1
  %i.ub = uitofp <2 x i16> %i.ua to <2 x double>
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ma, i64 192
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ly, i64 98
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ly, i64 114
  %i.uf = load i16, ptr %i.ud, align 2, !tbaa !60
  %i.ug = load i16, ptr %i.ue, align 2, !tbaa !60
  %i.uh = insertelement <2 x i16> poison, i16 %i.uf, i64 0
  %i.ui = insertelement <2 x i16> %i.uh, i16 %i.ug, i64 1
  %i.uj = uitofp <2 x i16> %i.ui to <2 x double>
  %i.uk = fmul nnan <2 x double> %i.uj, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ly, i64 100
  %i.um = getelementptr inbounds nuw i8, ptr %i.ly, i64 116
  %i.un = load i16, ptr %i.ul, align 2, !tbaa !60
  %i.uo = load i16, ptr %i.um, align 2, !tbaa !60
  %i.up = insertelement <2 x i16> poison, i16 %i.un, i64 0
  %i.uq = insertelement <2 x i16> %i.up, i16 %i.uo, i64 1
  %i.ur = uitofp <2 x i16> %i.uq to <2 x double>
  %i.us = fmul nnan <2 x double> %i.ur, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ly, i64 102
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ly, i64 118
  %i.uv = load i16, ptr %i.ut, align 2, !tbaa !60
  %i.uw = load i16, ptr %i.uu, align 2, !tbaa !60
  %i.ux = insertelement <2 x i16> poison, i16 %i.uv, i64 0
  %i.uy = insertelement <2 x i16> %i.ux, i16 %i.uw, i64 1
  %i.uz = uitofp <2 x i16> %i.uy to <2 x double>
  %i.va = fmul nnan <2 x double> %i.uz, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ly, i64 104
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ly, i64 120
  %i.vd = load i16, ptr %i.vb, align 2, !tbaa !60
  %i.ve = load i16, ptr %i.vc, align 2, !tbaa !60
  %i.vf = insertelement <2 x i16> poison, i16 %i.vd, i64 0
  %i.vg = insertelement <2 x i16> %i.vf, i16 %i.ve, i64 1
  %i.vh = uitofp <2 x i16> %i.vg to <2 x double>
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ly, i64 106
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ly, i64 122
  %i.vk = load i16, ptr %i.vi, align 2, !tbaa !60
  %i.vl = load i16, ptr %i.vj, align 2, !tbaa !60
  %i.vm = insertelement <2 x i16> poison, i16 %i.vk, i64 0
  %i.vn = insertelement <2 x i16> %i.vm, i16 %i.vl, i64 1
  %i.vo = uitofp <2 x i16> %i.vn to <2 x double>
  %i.vp = fmul nnan <2 x double> %i.vo, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ly, i64 108
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ly, i64 124
  %i.vs = load i16, ptr %i.vq, align 2, !tbaa !60
  %i.vt = load i16, ptr %i.vr, align 2, !tbaa !60
  %i.vu = insertelement <2 x i16> poison, i16 %i.vs, i64 0
  %i.vv = insertelement <2 x i16> %i.vu, i16 %i.vt, i64 1
  %i.vw = uitofp <2 x i16> %i.vv to <2 x double>
  %i.vx = fmul nnan <2 x double> %i.vw, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.vy = getelementptr inbounds nuw i8, ptr %i.ly, i64 110
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ly, i64 126
  %i.wa = load i16, ptr %i.vy, align 2, !tbaa !60
  %i.wb = load i16, ptr %i.vz, align 2, !tbaa !60
  %i.wc = insertelement <2 x i16> poison, i16 %i.wa, i64 0
  %i.wd = insertelement <2 x i16> %i.wc, i16 %i.wb, i64 1
  %i.we = uitofp <2 x i16> %i.wd to <2 x double>
  %i.wf = fmul nnan <2 x double> %i.we, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.wg = shufflevector <2 x double> <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>, <2 x double> %i.uk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wh = shufflevector <2 x double> %i.us, <2 x double> %i.va, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %28 = shufflevector <4 x double> %i.wg, <4 x double> %i.wh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wi = shufflevector <2 x double> %i.ub, <2 x double> splat (double f0x3FF63150B14861EF), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %29 = shufflevector <4 x double> %i.wi, <4 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %30 = fmul <8 x double> %28, %29
  %31 = fptrunc <8 x double> %30 to <8 x float>
  %32 = shufflevector <2 x double> <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>, <2 x double> %i.vp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wj = shufflevector <2 x double> %i.vx, <2 x double> %i.wf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %33 = shufflevector <4 x double> %32, <4 x double> %i.wj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %34 = shufflevector <2 x double> %i.vh, <2 x double> splat (double f0x3FE92469C0A7BF3B), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %35 = shufflevector <4 x double> %34, <4 x double> <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %36 = fmul <8 x double> %33, %35
  %i.wk = fptrunc <8 x double> %36 to <8 x float>
  %interleaved.vec.3 = shufflevector <8 x float> %31, <8 x float> %i.wk, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec.3, ptr %i.uc, align 4, !tbaa !63
  br label %.loopexit

default.unreachable114:                           ; preds = %bb.ag
  unreachable

.loopexit:                                        ; preds = %scalar.ph, %vector.body131, %vector.body, %bb.ad, %bb.z, %bb.v, %bb.ae, %bb.aa, %bb.w, %bb.af, %bb.ab, %bb.x, %.loopexit.loopexit, %bb.ac, %bb.u, %bb.y
  %.6119 = phi ptr [ %jpeg_idct_float.jsimd_idct_float, %bb.ad ], [ %jpeg_idct_float.jsimd_idct_float, %bb.z ], [ %jpeg_idct_float.jsimd_idct_float, %bb.v ], [ %jpeg_idct_ifast.jsimd_idct_ifast, %bb.ae ], [ %jpeg_idct_ifast.jsimd_idct_ifast, %bb.aa ], [ %jpeg_idct_ifast.jsimd_idct_ifast, %bb.w ], [ %.6.jt0, %bb.af ], [ %.6.jt0, %bb.ab ], [ %.6.jt0, %bb.x ], [ %.6120, %vector.body131 ], [ %.06490, %bb.y ], [ %.6122, %.loopexit.loopexit ], [ %.06490, %bb.ac ], [ %.06490, %bb.u ], [ %.6121, %vector.body ], [ %.6121, %scalar.ph ]
  %.166115 = phi i32 [ 2, %bb.ad ], [ 2, %bb.z ], [ 2, %bb.v ], [ 1, %bb.ae ], [ 1, %bb.aa ], [ 1, %bb.w ], [ 0, %bb.af ], [ 0, %bb.ab ], [ 0, %bb.x ], [ 2, %vector.body131 ], [ %.06589, %bb.y ], [ 0, %.loopexit.loopexit ], [ %.06589, %bb.ac ], [ %.06589, %bb.u ], [ 1, %vector.body ], [ 1, %scalar.ph ]
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.06788, i64 96
  %i.wm = load i32, ptr %i.a, align 8, !tbaa !39
  %i.wn = sext i32 %i.wm to i64
  %i.wo = icmp slt i64 %indvars.iv.next112, %i.wn
  br i1 %i.wo, label %bb.b, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare void @jpeg_idct_1x1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @jsimd_set_idct_2x2(ptr noundef) local_unnamed_addr #2

declare void @jsimd_idct_2x2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_2x2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_3x3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @jsimd_set_idct_4x4(ptr noundef) local_unnamed_addr #2

declare void @jsimd_idct_4x4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_4x4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_5x5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_6x6(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_7x7(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @jsimd_set_idct_islow(ptr noundef) local_unnamed_addr #2

declare void @jsimd_idct_islow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_islow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @jsimd_set_idct_ifast(ptr noundef) local_unnamed_addr #2

declare void @jsimd_idct_ifast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_ifast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @jsimd_set_idct_float(ptr noundef) local_unnamed_addr #2

declare void @jsimd_idct_float(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_float(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_9x9(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_10x10(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_11x11(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_12x12(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_13x13(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_14x14(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_15x15(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_16x16(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !8, i64 0}
!10 = !{!"p1 _ZTS15jpeg_memory_mgr", !8, i64 0}
!11 = !{!"p1 _ZTS17jpeg_progress_mgr", !8, i64 0}
!12 = !{!"p1 _ZTS15jpeg_source_mgr", !8, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"any p2 pointer", !8, i64 0}
!15 = !{!"p2 omnipotent char", !14, i64 0}
!16 = !{!"p1 int", !8, i64 0}
!17 = !{!"short", !4, i64 0}
!18 = !{!"p1 _ZTS18jpeg_marker_struct", !8, i64 0}
!19 = !{!"p1 omnipotent char", !8, i64 0}
!20 = !{!"p1 _ZTS18jpeg_decomp_master", !8, i64 0}
!21 = !{!"p1 _ZTS22jpeg_d_main_controller", !8, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_coef_controller", !8, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_post_controller", !8, i64 0}
!24 = !{!"p1 _ZTS21jpeg_input_controller", !8, i64 0}
!25 = !{!"p1 _ZTS18jpeg_marker_reader", !8, i64 0}
!26 = !{!"p1 _ZTS20jpeg_entropy_decoder", !8, i64 0}
!27 = !{!"p1 _ZTS16jpeg_inverse_dct", !8, i64 0}
!28 = !{!"p1 _ZTS14jpeg_upsampler", !8, i64 0}
!29 = !{!"p1 _ZTS22jpeg_color_deconverter", !8, i64 0}
!30 = !{!"p1 _ZTS20jpeg_color_quantizer", !8, i64 0}
!31 = !{!"jpeg_decompress_struct", !9, i64 0, !10, i64 8, !11, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !13, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !15, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !16, i64 192, !4, i64 200, !4, i64 232, !4, i64 264, !5, i64 296, !8, i64 304, !5, i64 312, !5, i64 316, !4, i64 320, !4, i64 336, !4, i64 352, !5, i64 368, !5, i64 372, !4, i64 376, !4, i64 377, !4, i64 378, !17, i64 380, !17, i64 382, !5, i64 384, !4, i64 388, !5, i64 392, !18, i64 400, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !19, i64 424, !5, i64 432, !4, i64 440, !5, i64 472, !5, i64 476, !5, i64 480, !4, i64 484, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !20, i64 544, !21, i64 552, !22, i64 560, !23, i64 568, !24, i64 576, !25, i64 584, !26, i64 592, !27, i64 600, !28, i64 608, !29, i64 616, !30, i64 624}
!32 = !{!31, !9, i64 0}
!33 = !{!"long", !4, i64 0}
!34 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !4, i64 44, !5, i64 124, !33, i64 128, !15, i64 136, !5, i64 144, !15, i64 152, !5, i64 160, !5, i64 164}
!35 = !{!34, !5, i64 40}
!36 = !{!4, !4, i64 0}
!37 = !{!34, !8, i64 0}
!38 = !{!31, !27, i64 600}
!39 = !{!31, !5, i64 56}
!40 = !{!31, !8, i64 304}
!41 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !8, i64 80, !8, i64 88}
!42 = !{!41, !8, i64 88}
!43 = !{!5, !5, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = !{!31, !5, i64 296}
!47 = !{!31, !10, i64 8}
!48 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !33, i64 88, !33, i64 96}
!49 = !{!48, !8, i64 0}
!50 = !{!"jpeg_inverse_dct", !8, i64 0, !4, i64 8, !4, i64 88, !8, i64 168, !8, i64 176, !8, i64 184}
!51 = !{!"", !50, i64 0, !4, i64 192}
!52 = !{!51, !8, i64 0}
!53 = distinct !{!53, !44, !61}
!54 = distinct !{!54, !44}
!55 = !{!41, !5, i64 36}
!56 = !{!31, !5, i64 96}
!57 = !{!8, !8, i64 0}
!58 = !{!41, !5, i64 48}
!59 = !{!41, !8, i64 80}
!60 = !{!17, !17, i64 0}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"float", !4, i64 0}
!63 = !{!62, !62, i64 0}
end_hunk_0
