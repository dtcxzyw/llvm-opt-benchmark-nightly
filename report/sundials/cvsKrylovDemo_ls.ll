Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsKrylovDemo_ls?download=true
inline.NumInlined: 44
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SetInitialProfiles:bb.a
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.ih = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.ij = fmul <2 x double> %i.ii, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.ij, ptr %i.ig, align 8, !tbaa !13
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.il = fmul <2 x double> %i.ii, %i.cu
  store <2 x double> %i.il, ptr %i.ik, align 8, !tbaa !13
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.in = fmul <2 x double> %i.ii, %i.cs
  store <2 x double> %i.in, ptr %i.im, align 8, !tbaa !13
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  %i.ip = fmul <2 x double> %i.ii, %i.cq
  store <2 x double> %i.ip, ptr %i.io, align 8, !tbaa !13
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.ir = fmul <2 x double> %i.ii, %i.co
  store <2 x double> %i.ir, ptr %i.iq, align 8, !tbaa !13
  %i.is = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.it = fmul <2 x double> %i.ii, %i.cm
  store <2 x double> %i.it, ptr %i.is, align 8, !tbaa !13
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.iv = fmul <2 x double> %i.ii, %i.ck
  store <2 x double> %i.iv, ptr %i.iu, align 8, !tbaa !13
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  %i.ix = fmul <2 x double> %i.ii, %i.ci
  store <2 x double> %i.ix, ptr %i.iw, align 8, !tbaa !13
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.iz = fmul <2 x double> %i.ii, %i.cg
  store <2 x double> %i.iz, ptr %i.iy, align 8, !tbaa !13
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  %i.jb = fmul <2 x double> %i.ii, %i.ce
  store <2 x double> %i.jb, ptr %i.ja, align 8, !tbaa !13
  %i.jc = tail call nnan double @llvm.fmuladd.f64(double %2, double 6.000000e+00, double 3.000000e+01)
  %i.jd = fadd nnan double %i.jc, -4.000000e+01
  %i.je = fmul nnan double %i.jd, 1.000000e-01    ; 2 uses
  %i.jf = fmul double %i.je, %i.je                ; 3 uses
  %i.jg = fsub double 1.000000e+00, %i.jf
  %i.jh = fmul double %i.jf, %i.jf
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.jh, double 5.000000e-01, double %i.jg)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.jk = insertelement <2 x double> poison, double %i.ji, i64 0
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.jm = fmul <2 x double> %i.jl, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.jm, ptr %i.jj, align 8, !tbaa !13
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  %i.jo = fmul <2 x double> %i.jl, %i.cu
  store <2 x double> %i.jo, ptr %i.jn, align 8, !tbaa !13
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.jq = fmul <2 x double> %i.jl, %i.cs
  store <2 x double> %i.jq, ptr %i.jp, align 8, !tbaa !13
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  %i.js = fmul <2 x double> %i.jl, %i.cq
  store <2 x double> %i.js, ptr %i.jr, align 8, !tbaa !13
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.ju = fmul <2 x double> %i.jl, %i.co
  store <2 x double> %i.ju, ptr %i.jt, align 8, !tbaa !13
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  %i.jw = fmul <2 x double> %i.jl, %i.cm
  store <2 x double> %i.jw, ptr %i.jv, align 8, !tbaa !13
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %i.jy = fmul <2 x double> %i.jl, %i.ck
  store <2 x double> %i.jy, ptr %i.jx, align 8, !tbaa !13
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  %i.ka = fmul <2 x double> %i.jl, %i.ci
  store <2 x double> %i.ka, ptr %i.jz, align 8, !tbaa !13
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.kc = fmul <2 x double> %i.jl, %i.cg
  store <2 x double> %i.kc, ptr %i.kb, align 8, !tbaa !13
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  %i.ke = fmul <2 x double> %i.jl, %i.ce
  store <2 x double> %i.ke, ptr %i.kd, align 8, !tbaa !13
  %i.kf = tail call nnan double @llvm.fmuladd.f64(double %2, double 7.000000e+00, double 3.000000e+01)
  %i.kg = fadd nnan double %i.kf, -4.000000e+01
  %i.kh = fmul nnan double %i.kg, 1.000000e-01    ; 2 uses
  %i.ki = fmul double %i.kh, %i.kh                ; 3 uses
  %i.kj = fsub double 1.000000e+00, %i.ki
  %i.kk = fmul double %i.ki, %i.ki
  %i.kl = tail call double @llvm.fmuladd.f64(double %i.kk, double 5.000000e-01, double %i.kj)
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  %i.kn = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.ko = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.kp = fmul <2 x double> %i.ko, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.kp, ptr %i.km, align 8, !tbaa !13
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 1136
  %i.kr = fmul <2 x double> %i.ko, %i.cu
  store <2 x double> %i.kr, ptr %i.kq, align 8, !tbaa !13
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  %i.kt = fmul <2 x double> %i.ko, %i.cs
  store <2 x double> %i.kt, ptr %i.ks, align 8, !tbaa !13
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 1168
  %i.kv = fmul <2 x double> %i.ko, %i.cq
  store <2 x double> %i.kv, ptr %i.ku, align 8, !tbaa !13
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  %i.kx = fmul <2 x double> %i.ko, %i.co
  store <2 x double> %i.kx, ptr %i.kw, align 8, !tbaa !13
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  %i.kz = fmul <2 x double> %i.ko, %i.cm
  store <2 x double> %i.kz, ptr %i.ky, align 8, !tbaa !13
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  %i.lb = fmul <2 x double> %i.ko, %i.ck
  store <2 x double> %i.lb, ptr %i.la, align 8, !tbaa !13
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  %i.ld = fmul <2 x double> %i.ko, %i.ci
  store <2 x double> %i.ld, ptr %i.lc, align 8, !tbaa !13
  %i.le = getelementptr inbounds nuw i8, ptr %i.a, i64 1248
  %i.lf = fmul <2 x double> %i.ko, %i.cg
  store <2 x double> %i.lf, ptr %i.le, align 8, !tbaa !13
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 1264
  %i.lh = fmul <2 x double> %i.ko, %i.ce
  store <2 x double> %i.lh, ptr %i.lg, align 8, !tbaa !13
  %i.li = tail call nnan double @llvm.fmuladd.f64(double %2, double 8.000000e+00, double 3.000000e+01)
  %i.lj = fadd nnan double %i.li, -4.000000e+01
  %i.lk = fmul nnan double %i.lj, 1.000000e-01    ; 2 uses
  %i.ll = fmul double %i.lk, %i.lk                ; 3 uses
  %i.lm = fsub double 1.000000e+00, %i.ll
  %i.ln = fmul double %i.ll, %i.ll
  %i.lo = tail call double @llvm.fmuladd.f64(double %i.ln, double 5.000000e-01, double %i.lm)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.lq = insertelement <2 x double> poison, double %i.lo, i64 0
  %i.lr = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.ls = fmul <2 x double> %i.lr, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.ls, ptr %i.lp, align 8, !tbaa !13
  %i.lt = getelementptr inbounds nuw i8, ptr %i.a, i64 1296
  %i.lu = fmul <2 x double> %i.lr, %i.cu
  store <2 x double> %i.lu, ptr %i.lt, align 8, !tbaa !13
  %i.lv = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  %i.lw = fmul <2 x double> %i.lr, %i.cs
  store <2 x double> %i.lw, ptr %i.lv, align 8, !tbaa !13
  %i.lx = getelementptr inbounds nuw i8, ptr %i.a, i64 1328
  %i.ly = fmul <2 x double> %i.lr, %i.cq
  store <2 x double> %i.ly, ptr %i.lx, align 8, !tbaa !13
  %i.lz = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  %i.ma = fmul <2 x double> %i.lr, %i.co
  store <2 x double> %i.ma, ptr %i.lz, align 8, !tbaa !13
  %i.mb = getelementptr inbounds nuw i8, ptr %i.a, i64 1360
  %i.mc = fmul <2 x double> %i.lr, %i.cm
  store <2 x double> %i.mc, ptr %i.mb, align 8, !tbaa !13
  %i.md = getelementptr inbounds nuw i8, ptr %i.a, i64 1376
  %i.me = fmul <2 x double> %i.lr, %i.ck
  store <2 x double> %i.me, ptr %i.md, align 8, !tbaa !13
  %i.mf = getelementptr inbounds nuw i8, ptr %i.a, i64 1392
  %i.mg = fmul <2 x double> %i.lr, %i.ci
  store <2 x double> %i.mg, ptr %i.mf, align 8, !tbaa !13
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 1408
  %i.mi = fmul <2 x double> %i.lr, %i.cg
  store <2 x double> %i.mi, ptr %i.mh, align 8, !tbaa !13
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 1424
  %i.mk = fmul <2 x double> %i.lr, %i.ce
  store <2 x double> %i.mk, ptr %i.mj, align 8, !tbaa !13
  %i.ml = tail call nnan double @llvm.fmuladd.f64(double %2, double 9.000000e+00, double 3.000000e+01)
  %i.mm = fadd nnan double %i.ml, -4.000000e+01
  %i.mn = fmul nnan double %i.mm, 1.000000e-01    ; 2 uses
  %i.mo = fmul double %i.mn, %i.mn                ; 3 uses
  %i.mp = fsub double 1.000000e+00, %i.mo
  %i.mq = fmul double %i.mo, %i.mo
  %i.mr = tail call double @llvm.fmuladd.f64(double %i.mq, double 5.000000e-01, double %i.mp)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 1440
  %i.mt = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.mv = fmul <2 x double> %i.mu, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.mv, ptr %i.ms, align 8, !tbaa !13
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 1456
  %i.mx = fmul <2 x double> %i.mu, %i.cu
  store <2 x double> %i.mx, ptr %i.mw, align 8, !tbaa !13
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 1472
  %i.mz = fmul <2 x double> %i.mu, %i.cs
  store <2 x double> %i.mz, ptr %i.my, align 8, !tbaa !13
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 1488
  %i.nb = fmul <2 x double> %i.mu, %i.cq
  store <2 x double> %i.nb, ptr %i.na, align 8, !tbaa !13
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 1504
  %i.nd = fmul <2 x double> %i.mu, %i.co
  store <2 x double> %i.nd, ptr %i.nc, align 8, !tbaa !13
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 1520
  %i.nf = fmul <2 x double> %i.mu, %i.cm
  store <2 x double> %i.nf, ptr %i.ne, align 8, !tbaa !13
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 1536
  %i.nh = fmul <2 x double> %i.mu, %i.ck
  store <2 x double> %i.nh, ptr %i.ng, align 8, !tbaa !13
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 1552
  %i.nj = fmul <2 x double> %i.mu, %i.ci
  store <2 x double> %i.nj, ptr %i.ni, align 8, !tbaa !13
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 1568
  %i.nl = fmul <2 x double> %i.mu, %i.cg
  store <2 x double> %i.nl, ptr %i.nk, align 8, !tbaa !13
  %i.nm = getelementptr inbounds nuw i8, ptr %i.a, i64 1584
  %i.nn = fmul <2 x double> %i.mu, %i.ce
  store <2 x double> %i.nn, ptr %i.nm, align 8, !tbaa !13
  ret void
}

declare ptr @CVodeCreate(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeInit(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @f(double noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((2400, 2408)) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 14 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2408
  %i.d = load double, ptr %i.c, align 8, !tbaa !36
  %i.e = fmul double %0, %i.d
  %i.f = tail call double @sin(double noundef %i.e) #10 ; 2 uses
  %i.g = fcmp ogt double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = insertelement <2 x double> poison, double %i.f, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fdiv <2 x double> <double -2.262000e+01, double f0xC01E676C8B439581>, %i.i ; 2 uses
  %i.k = extractelement <2 x double> %i.j, i64 0
  %i.l = tail call double @exp(double noundef %i.k) #10
  %i.m = extractelement <2 x double> %i.j, i64 1
  %i.n = tail call double @exp(double noundef %i.m) #10
  %i.o = fmul double %i.l, 3.700000e+16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi double [ %i.n, %bb.b ], [ 0.000000e+00, %bb.a ] ; 4 uses
  %.0122 = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2400
  store double %.sink, ptr %i.p, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2424
  %i.r = load double, ptr %i.q, align 8, !tbaa !21 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2448
  %i.t = load double, ptr %i.s, align 8, !tbaa !22 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2432
  %i.v = load double, ptr %i.u, align 8, !tbaa !23 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2440
  %i.x = load double, ptr %i.w, align 8, !tbaa !37 ; 6 uses
  %i.y = insertelement <2 x double> poison, double %.0122, i64 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  br label %.peel.next

.peel.next:                                       ; preds = %.loopexit.peel.begin, %bb.c
  %indvars.iv128 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next129, %.loopexit.peel.begin ] ; 8 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.ab = uitofp nneg i32 %i.aa to double
  %i.ac = fadd double %i.ab, -5.000000e-01
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.r, double 3.000000e+01) ; 2 uses
  %i.ae = fadd double %i.r, %i.ad
  %i.af = fmul double %i.ad, 2.000000e-01
  %i.ag = tail call double @exp(double noundef %i.af) #10
  %i.ah = fmul double %i.ae, 2.000000e-01
  %i.ai = tail call double @exp(double noundef %i.ah) #10
  %i.aj = icmp eq i64 %indvars.iv128, 0
  %i.ak = select i1 %i.aj, i64 1, i64 4294967295
  %i.al = icmp eq i64 %indvars.iv128, 9
  %i.am = select i1 %i.al, i64 4294967295, i64 1
  %i.an = mul nuw nsw i64 %indvars.iv128, 20      ; 11 uses
  %i.ao = add nuw i64 %i.ak, %indvars.iv128
  %i.ap = add nuw i64 %i.am, %indvars.iv128
  %i.aq = or disjoint i64 %i.an, 1                ; 2 uses
  %sext = mul i64 %i.ap, 85899345920
  %i.ar = ashr exact i64 %sext, 32                ; 2 uses
  %sext132 = mul i64 %i.ao, 85899345920
  %i.as = ashr exact i64 %sext132, 32             ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an
  %i.au = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.as
  %i.av = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ar
  %i.aw = fmul double %i.t, %i.ag                 ; 5 uses
  %i.ax = fmul double %i.t, %i.ai                 ; 2 uses
  %i.ay = load <2 x double>, ptr %i.at, align 8, !tbaa !13 ; 5 uses
  %i.az = extractelement <2 x double> %i.ay, i64 0 ; 2 uses
  %i.ba = fmul double %i.az, 1.630000e-16
  %i.bb = fmul double %i.ba, 3.700000e+16         ; 2 uses
  %i.bc = fmul double %i.az, 4.660000e-16
  %i.bd = extractelement <2 x double> %i.ay, i64 1 ; 2 uses
  %i.be = fmul double %i.bc, %i.bd                ; 2 uses
  %i.bf = fmul double %.sink, %i.bd               ; 2 uses
  %i.bg = fneg double %i.bb
  %i.bh = fsub double %i.bg, %i.be
  %i.bi = tail call double @llvm.fmuladd.f64(double %.0122, double 2.000000e+00, double %i.bh)
  %i.bj = fadd double %i.bf, %i.bi
  %i.bk = fsub double %i.bb, %i.be
  %i.bl = fsub double %i.bk, %i.bf
  %i.bm = load <2 x double>, ptr %i.au, align 8, !tbaa !13
  %i.bn = load <2 x double>, ptr %i.av, align 8, !tbaa !13
  %i.bo = fsub <2 x double> %i.bn, %i.ay
  %i.bp = fsub <2 x double> %i.ay, %i.bm
  %i.bq = fneg <2 x double> %i.bp
  %i.br = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x double> %i.bs, %i.bq
  %i.bu = insertelement <2 x double> poison, double %i.ax, i64 0 ; 3 uses
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bo, <2 x double> %i.bt) ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = trunc nuw nsw i64 %i.aq to i32
  %4 = load <2 x double>, ptr %i.by, align 8, !tbaa !13 ; 5 uses
  %5 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> splat (double -2.000000e+00), <2 x double> %4) ; 2 uses
  %foldExtExtBinop = fadd <2 x double> %4, %5
  %i.ca = extractelement <2 x double> %foldExtExtBinop, i64 0
  %6 = fmul double %i.v, %i.ca
  %foldExtExtBinop140 = fadd <2 x double> %4, %5
  %i.cb = extractelement <2 x double> %foldExtExtBinop140, i64 1
  %7 = fmul double %i.v, %i.cb
  %8 = fsub <2 x double> %4, %4                   ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  %i.cc = fmul double %i.x, %9
  %10 = extractelement <2 x double> %8, i64 1
  %i.cd = fmul double %i.x, %10
  %i.ce = extractelement <2 x double> %i.bw, i64 0
  %i.cf = fadd double %i.ce, %6
  %i.cg = fadd double %i.cc, %i.cf
  %i.ch = fadd double %i.bj, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.an
  store double %i.ch, ptr %i.ci, align 8, !tbaa !13
  %i.cj = extractelement <2 x double> %i.bw, i64 1
  %i.ck = fadd double %i.cj, %7
  %i.cl = fadd double %i.cd, %i.ck
  %i.cm = fadd double %i.bl, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.an
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store double %i.cm, ptr %i.co, align 8, !tbaa !13
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %invariant.gep134 = getelementptr [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %invariant.gep136 = getelementptr [8 x i8], ptr %i.a, i64 %i.ar ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.a, i64 %i.aq ; 2 uses
  %i.cr = getelementptr [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.cs = insertelement <2 x double> %i.y, double %i.ax, i64 1 ; 2 uses
  %invariant.gep142 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ct = shl nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %i.cu = add nuw nsw i64 %i.ct, %i.an            ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cu
  %i.cw = or disjoint i64 %i.ct, 1                ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ct
  %i.cx = load double, ptr %gep, align 8, !tbaa !13
  %gep135 = getelementptr [8 x i8], ptr %invariant.gep134, i64 %i.cw
  %i.cy = load double, ptr %gep135, align 8, !tbaa !13
  %gep137 = getelementptr [8 x i8], ptr %invariant.gep136, i64 %i.ct
  %i.cz = load <2 x double>, ptr %i.cv, align 8, !tbaa !13 ; 4 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0 ; 3 uses
  %i.db = fmul double %i.da, 4.660000e-16
  %i.dc = extractelement <2 x double> %i.cz, i64 1 ; 4 uses
  %i.dd = fmul double %i.db, %i.dc                ; 2 uses
  %i.de = fmul double %.sink, %i.dc               ; 2 uses
  %i.df = load <2 x double>, ptr %gep137, align 8, !tbaa !13
  %i.dg = fmul double %i.da, 1.630000e-16
  %i.dh = fmul double %i.dg, 3.700000e+16         ; 2 uses
  %i.di = fneg double %i.dh
  %i.dj = fsub double %i.di, %i.dd
  %i.dk = fsub double %i.da, %i.cx
  %i.dl = fneg double %i.dk
  %i.dm = fmul double %i.aw, %i.dl
  %i.dn = fsub <2 x double> %i.df, %i.cz          ; 2 uses
  %i.do = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.dp = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.dm, i64 1
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.do, <2 x double> %i.dq) ; 2 uses
  %i.ds = extractelement <2 x double> %i.dr, i64 0
  %i.dt = fadd double %i.de, %i.ds
  %i.du = fsub double %i.dh, %i.dd
  %i.dv = fsub double %i.du, %i.de
  %i.dw = fsub double %i.dc, %i.cy
  %i.dx = fneg double %i.dw
  %i.dy = fmul double %i.aw, %i.dx
  %i.dz = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ea = shl nuw nsw i32 %i.dz, 1
  %i.eb = add nsw i32 %i.ea, -2
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %i.cp, i64 %i.ec
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !13 ; 2 uses
  %i.ef = getelementptr [8 x i8], ptr %i.cq, i64 %i.ec
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !13 ; 2 uses
  %i.eh = shl nuw i32 %i.dz, 1
  %i.ei = add i32 %i.eh, 2                        ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr [8 x i8], ptr %i.cr, i64 %i.ej
  %i.el = load double, ptr %i.ek, align 8, !tbaa !13 ; 2 uses
  %i.em = add nuw nsw i32 %i.ei, %i.bz
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !13 ; 2 uses
  %i.eq = shufflevector <2 x double> %i.bu, <2 x double> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.er = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.dn, <2 x i32> <i32 3, i32 1>
  %i.es = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.el, i64 1
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.er, <2 x double> %i.et) ; 2 uses
  %i.ev = extractelement <2 x double> %i.eu, i64 1
  %i.ew = fadd double %i.ee, %i.ev
  %i.ex = fmul double %i.v, %i.ew
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.dc, double -2.000000e+00, double %i.ep)
  %i.ez = fadd double %i.eg, %i.ey
  %i.fa = fmul double %i.v, %i.ez
  %i.fb = fsub double %i.el, %i.ee
  %i.fc = fmul double %i.x, %i.fb
  %i.fd = fsub double %i.ep, %i.eg
  %i.fe = fmul double %i.x, %i.fd
  %i.ff = extractelement <2 x double> %i.dr, i64 1
  %i.fg = fadd double %i.ff, %i.ex
  %i.fh = fadd double %i.fc, %i.fg
  %i.fi = fadd double %i.dt, %i.fh
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cu
  store double %i.fi, ptr %i.fj, align 8, !tbaa !13
  %i.fk = extractelement <2 x double> %i.eu, i64 0
  %i.fl = fadd double %i.fk, %i.fa
  %i.fm = fadd double %i.fe, %i.fl
  %i.fn = fadd double %i.dv, %i.fm
  %gep143 = getelementptr inbounds [8 x i8], ptr %invariant.gep142, i64 %i.cw
  store double %i.fn, ptr %gep143, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %.loopexit.peel.begin, label %bb.d, !llvm.loop !35

.loopexit.peel.begin:                             ; preds = %bb.d
  %i.fo = add nuw nsw i64 %i.an, 18               ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fo
  %gep.peel = getelementptr i8, ptr %invariant.gep, i64 144
  %i.fq = load double, ptr %gep.peel, align 8, !tbaa !13
  %gep135.peel = getelementptr i8, ptr %invariant.gep134, i64 152
  %i.fr = load double, ptr %gep135.peel, align 8, !tbaa !13
  %gep137.peel = getelementptr i8, ptr %invariant.gep136, i64 144
  %i.fs = load <2 x double>, ptr %i.fp, align 8, !tbaa !13 ; 4 uses
  %i.ft = extractelement <2 x double> %i.fs, i64 0 ; 3 uses
  %i.fu = fmul double %i.ft, 4.660000e-16
  %i.fv = extractelement <2 x double> %i.fs, i64 1 ; 4 uses
  %i.fw = fmul double %i.fu, %i.fv                ; 2 uses
  %i.fx = fmul double %.sink, %i.fv               ; 2 uses
  %i.fy = load <2 x double>, ptr %gep137.peel, align 8, !tbaa !13
  %i.fz = fmul double %i.ft, 1.630000e-16
  %i.ga = fmul double %i.fz, 3.700000e+16         ; 2 uses
  %i.gb = fneg double %i.ga
  %i.gc = fsub double %i.gb, %i.fw
  %i.gd = fsub double %i.ft, %i.fq
  %i.ge = fneg double %i.gd
  %i.gf = fmul double %i.aw, %i.ge
  %i.gg = fsub <2 x double> %i.fy, %i.fs          ; 2 uses
  %i.gh = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.gg, <2 x i32> <i32 0, i32 2>
  %i.gi = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.gf, i64 1
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.gh, <2 x double> %i.gj) ; 2 uses
  %i.gl = extractelement <2 x double> %i.gk, i64 0
  %i.gm = fadd double %i.fx, %i.gl
  %i.gn = fsub double %i.ga, %i.fw
  %i.go = fsub double %i.gn, %i.fx
  %i.gp = fsub double %i.fv, %i.fr
  %i.gq = fneg double %i.gp
  %i.gr = fmul double %i.aw, %i.gq
  %i.gs = getelementptr i8, ptr %i.cp, i64 128
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !13 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.cq, i64 128
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !13 ; 2 uses
  %i.gw = getelementptr i8, ptr %i.cr, i64 128
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !13 ; 2 uses
  %i.gy = mul i64 %indvars.iv128, 85899345920
  %sext141 = add i64 %i.gy, 73014444032
  %i.gz = ashr exact i64 %sext141, 29
  %i.ha = getelementptr inbounds i8, ptr %i.a, i64 %i.gz
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !13 ; 2 uses
  %i.hc = shufflevector <2 x double> %i.bu, <2 x double> %i.fs, <2 x i32> <i32 0, i32 2>
  %i.hd = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.gg, <2 x i32> <i32 3, i32 1>
  %i.he = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.hf = insertelement <2 x double> %i.he, double %i.gx, i64 1
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.hd, <2 x double> %i.hf) ; 2 uses
  %i.hh = extractelement <2 x double> %i.hg, i64 1
  %i.hi = fadd double %i.gt, %i.hh
  %i.hj = fmul double %i.v, %i.hi
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.fv, double -2.000000e+00, double %i.hb)
  %i.hl = fadd double %i.gv, %i.hk
  %i.hm = fmul double %i.v, %i.hl
  %i.hn = fsub double %i.gx, %i.gt
  %i.ho = fmul double %i.x, %i.hn
  %i.hp = fsub double %i.hb, %i.gv
  %i.hq = fmul double %i.x, %i.hp
  %i.hr = extractelement <2 x double> %i.gk, i64 1
  %i.hs = fadd double %i.hr, %i.hj
  %i.ht = fadd double %i.ho, %i.hs
  %i.hu = fadd double %i.gm, %i.ht
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fo
  store double %i.hu, ptr %i.hv, align 8, !tbaa !13
  %i.hw = extractelement <2 x double> %i.hg, i64 0
  %i.hx = fadd double %i.hw, %i.hm
  %i.hy = fadd double %i.hq, %i.hx
  %i.hz = fadd double %i.go, %i.hy
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.an
  store double %i.hz, ptr %i.ia, align 8, !tbaa !13
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, 10
  br i1 %exitcond131.not, label %bb.e, label %.peel.next

bb.e:                                             ; preds = %.loopexit.peel.begin
  ret i32 0
}

declare i32 @CVodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNNonlinSol_Newton(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetNonlinearSolver(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeReInit(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @SUNLinSol_SPGMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPFGMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPBCGS(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPTFQMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetPreconditioner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Precond(double %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, double noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 800 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 1600
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %.preheader95

.preheader95:                                     ; preds = %bb.a, %.preheader95
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader95 ], [ 0, %bb.a ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 10 uses
  %invariant.gep98 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv ; 10 uses
  %i.d = load ptr, ptr %invariant.gep, align 8, !tbaa !16
  %i.e = load ptr, ptr %invariant.gep98, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.d, ptr noundef %i.e, i64 noundef 2, i64 noundef 2) #10
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  %i.f = load ptr, ptr %gep.1, align 8, !tbaa !16
  %gep99.1 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 80
  %i.g = load ptr, ptr %gep99.1, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.f, ptr noundef %i.g, i64 noundef 2, i64 noundef 2) #10
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 160
  %i.h = load ptr, ptr %gep.2, align 8, !tbaa !16
  %gep99.2 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 160
  %i.i = load ptr, ptr %gep99.2, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.h, ptr noundef %i.i, i64 noundef 2, i64 noundef 2) #10
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 240
  %i.j = load ptr, ptr %gep.3, align 8, !tbaa !16
  %gep99.3 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 240
  %i.k = load ptr, ptr %gep99.3, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.j, ptr noundef %i.k, i64 noundef 2, i64 noundef 2) #10
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 320
  %i.l = load ptr, ptr %gep.4, align 8, !tbaa !16
  %gep99.4 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 320
  %i.m = load ptr, ptr %gep99.4, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.l, ptr noundef %i.m, i64 noundef 2, i64 noundef 2) #10
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 400
  %i.n = load ptr, ptr %gep.5, align 8, !tbaa !16
  %gep99.5 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 400
  %i.o = load ptr, ptr %gep99.5, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.n, ptr noundef %i.o, i64 noundef 2, i64 noundef 2) #10
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 480
  %i.p = load ptr, ptr %gep.6, align 8, !tbaa !16
  %gep99.6 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 480
  %i.q = load ptr, ptr %gep99.6, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.p, ptr noundef %i.q, i64 noundef 2, i64 noundef 2) #10
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 560
  %i.r = load ptr, ptr %gep.7, align 8, !tbaa !16
  %gep99.7 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 560
  %i.s = load ptr, ptr %gep99.7, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.r, ptr noundef %i.s, i64 noundef 2, i64 noundef 2) #10
  %gep.8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 640
  %i.t = load ptr, ptr %gep.8, align 8, !tbaa !16
  %gep99.8 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 640
  %i.u = load ptr, ptr %gep99.8, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.t, ptr noundef %i.u, i64 noundef 2, i64 noundef 2) #10
end_hunk_0
