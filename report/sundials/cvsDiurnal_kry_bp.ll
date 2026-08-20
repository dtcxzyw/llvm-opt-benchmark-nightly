inline.NumInlined: 33
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SetInitialProfiles:bb.a
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.ja = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.jc = fmul <2 x double> %i.jb, %i.dd
  store <2 x double> %i.jc, ptr %i.iz, align 8, !tbaa !14
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.je = fmul <2 x double> %i.jb, %i.cx
  store <2 x double> %i.je, ptr %i.jd, align 8, !tbaa !14
  %i.jf = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.jg = fmul <2 x double> %i.jb, %i.cv
  store <2 x double> %i.jg, ptr %i.jf, align 8, !tbaa !14
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  %i.ji = fmul <2 x double> %i.jb, %i.ct
  store <2 x double> %i.ji, ptr %i.jh, align 8, !tbaa !14
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.jk = fmul <2 x double> %i.jb, %i.cr
  store <2 x double> %i.jk, ptr %i.jj, align 8, !tbaa !14
  %i.jl = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.jm = fmul <2 x double> %i.jb, %i.cp
  store <2 x double> %i.jm, ptr %i.jl, align 8, !tbaa !14
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.jo = fmul <2 x double> %i.jb, %i.cn
  store <2 x double> %i.jo, ptr %i.jn, align 8, !tbaa !14
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  %i.jq = fmul <2 x double> %i.jb, %i.cl
  store <2 x double> %i.jq, ptr %i.jp, align 8, !tbaa !14
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.js = fmul <2 x double> %i.jb, %i.cj
  store <2 x double> %i.js, ptr %i.jr, align 8, !tbaa !14
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  %i.ju = fmul <2 x double> %i.jb, %i.ch
  store <2 x double> %i.ju, ptr %i.jt, align 8, !tbaa !14
  %i.jv = tail call double @llvm.fmuladd.f64(double %2, double 6.000000e+00, double 3.000000e+01)
  %i.jw = fadd double %i.jv, -4.000000e+01
  %i.jx = fmul double %i.jw, 1.000000e-01         ; 2 uses
  %i.jy = fmul double %i.jx, %i.jx                ; 3 uses
  %i.jz = fsub double 1.000000e+00, %i.jy
  %i.ka = fmul double %i.jy, %i.jy
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.ka, double 5.000000e-01, double %i.jz)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.kd = insertelement <2 x double> poison, double %i.kb, i64 0
  %i.ke = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.kf = fmul <2 x double> %i.ke, %i.dd
  store <2 x double> %i.kf, ptr %i.kc, align 8, !tbaa !14
  %i.kg = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  %i.kh = fmul <2 x double> %i.ke, %i.cx
  store <2 x double> %i.kh, ptr %i.kg, align 8, !tbaa !14
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.kj = fmul <2 x double> %i.ke, %i.cv
  store <2 x double> %i.kj, ptr %i.ki, align 8, !tbaa !14
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  %i.kl = fmul <2 x double> %i.ke, %i.ct
  store <2 x double> %i.kl, ptr %i.kk, align 8, !tbaa !14
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.kn = fmul <2 x double> %i.ke, %i.cr
  store <2 x double> %i.kn, ptr %i.km, align 8, !tbaa !14
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  %i.kp = fmul <2 x double> %i.ke, %i.cp
  store <2 x double> %i.kp, ptr %i.ko, align 8, !tbaa !14
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %i.kr = fmul <2 x double> %i.ke, %i.cn
  store <2 x double> %i.kr, ptr %i.kq, align 8, !tbaa !14
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  %i.kt = fmul <2 x double> %i.ke, %i.cl
  store <2 x double> %i.kt, ptr %i.ks, align 8, !tbaa !14
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.kv = fmul <2 x double> %i.ke, %i.cj
  store <2 x double> %i.kv, ptr %i.ku, align 8, !tbaa !14
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  %i.kx = fmul <2 x double> %i.ke, %i.ch
  store <2 x double> %i.kx, ptr %i.kw, align 8, !tbaa !14
  %i.ky = tail call double @llvm.fmuladd.f64(double %2, double 7.000000e+00, double 3.000000e+01)
  %i.kz = fadd double %i.ky, -4.000000e+01
  %i.la = fmul double %i.kz, 1.000000e-01         ; 2 uses
  %i.lb = fmul double %i.la, %i.la                ; 3 uses
  %i.lc = fsub double 1.000000e+00, %i.lb
  %i.ld = fmul double %i.lb, %i.lb
  %i.le = tail call double @llvm.fmuladd.f64(double %i.ld, double 5.000000e-01, double %i.lc)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  %i.lg = insertelement <2 x double> poison, double %i.le, i64 0
  %i.lh = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.li = fmul <2 x double> %i.lh, %i.dd
  store <2 x double> %i.li, ptr %i.lf, align 8, !tbaa !14
  %i.lj = getelementptr inbounds nuw i8, ptr %i.a, i64 1136
  %i.lk = fmul <2 x double> %i.lh, %i.cx
  store <2 x double> %i.lk, ptr %i.lj, align 8, !tbaa !14
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  %i.lm = fmul <2 x double> %i.lh, %i.cv
  store <2 x double> %i.lm, ptr %i.ll, align 8, !tbaa !14
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 1168
  %i.lo = fmul <2 x double> %i.lh, %i.ct
  store <2 x double> %i.lo, ptr %i.ln, align 8, !tbaa !14
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  %i.lq = fmul <2 x double> %i.lh, %i.cr
  store <2 x double> %i.lq, ptr %i.lp, align 8, !tbaa !14
  %i.lr = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  %i.ls = fmul <2 x double> %i.lh, %i.cp
  store <2 x double> %i.ls, ptr %i.lr, align 8, !tbaa !14
  %i.lt = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  %i.lu = fmul <2 x double> %i.lh, %i.cn
  store <2 x double> %i.lu, ptr %i.lt, align 8, !tbaa !14
  %i.lv = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  %i.lw = fmul <2 x double> %i.lh, %i.cl
  store <2 x double> %i.lw, ptr %i.lv, align 8, !tbaa !14
  %i.lx = getelementptr inbounds nuw i8, ptr %i.a, i64 1248
  %i.ly = fmul <2 x double> %i.lh, %i.cj
  store <2 x double> %i.ly, ptr %i.lx, align 8, !tbaa !14
  %i.lz = getelementptr inbounds nuw i8, ptr %i.a, i64 1264
  %i.ma = fmul <2 x double> %i.lh, %i.ch
  store <2 x double> %i.ma, ptr %i.lz, align 8, !tbaa !14
  %i.mb = tail call double @llvm.fmuladd.f64(double %2, double 8.000000e+00, double 3.000000e+01)
  %i.mc = fadd double %i.mb, -4.000000e+01
  %i.md = fmul double %i.mc, 1.000000e-01         ; 2 uses
  %i.me = fmul double %i.md, %i.md                ; 3 uses
  %i.mf = fsub double 1.000000e+00, %i.me
  %i.mg = fmul double %i.me, %i.me
  %i.mh = tail call double @llvm.fmuladd.f64(double %i.mg, double 5.000000e-01, double %i.mf)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.mj = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.mk = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.ml = fmul <2 x double> %i.mk, %i.dd
  store <2 x double> %i.ml, ptr %i.mi, align 8, !tbaa !14
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 1296
  %i.mn = fmul <2 x double> %i.mk, %i.cx
  store <2 x double> %i.mn, ptr %i.mm, align 8, !tbaa !14
  %i.mo = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  %i.mp = fmul <2 x double> %i.mk, %i.cv
  store <2 x double> %i.mp, ptr %i.mo, align 8, !tbaa !14
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 1328
  %i.mr = fmul <2 x double> %i.mk, %i.ct
  store <2 x double> %i.mr, ptr %i.mq, align 8, !tbaa !14
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  %i.mt = fmul <2 x double> %i.mk, %i.cr
  store <2 x double> %i.mt, ptr %i.ms, align 8, !tbaa !14
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 1360
  %i.mv = fmul <2 x double> %i.mk, %i.cp
  store <2 x double> %i.mv, ptr %i.mu, align 8, !tbaa !14
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 1376
  %i.mx = fmul <2 x double> %i.mk, %i.cn
  store <2 x double> %i.mx, ptr %i.mw, align 8, !tbaa !14
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 1392
  %i.mz = fmul <2 x double> %i.mk, %i.cl
  store <2 x double> %i.mz, ptr %i.my, align 8, !tbaa !14
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 1408
  %i.nb = fmul <2 x double> %i.mk, %i.cj
  store <2 x double> %i.nb, ptr %i.na, align 8, !tbaa !14
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 1424
  %i.nd = fmul <2 x double> %i.mk, %i.ch
  store <2 x double> %i.nd, ptr %i.nc, align 8, !tbaa !14
  %i.ne = tail call double @llvm.fmuladd.f64(double %2, double 9.000000e+00, double 3.000000e+01)
  %i.nf = fadd double %i.ne, -4.000000e+01
  %i.ng = fmul double %i.nf, 1.000000e-01         ; 2 uses
  %i.nh = fmul double %i.ng, %i.ng                ; 3 uses
  %i.ni = fsub double 1.000000e+00, %i.nh
  %i.nj = fmul double %i.nh, %i.nh
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.nj, double 5.000000e-01, double %i.ni)
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 1440
  %i.nm = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.nn = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.no = fmul <2 x double> %i.nn, %i.dd
  store <2 x double> %i.no, ptr %i.nl, align 8, !tbaa !14
  %i.np = getelementptr inbounds nuw i8, ptr %i.a, i64 1456
  %i.nq = fmul <2 x double> %i.nn, %i.cx
  store <2 x double> %i.nq, ptr %i.np, align 8, !tbaa !14
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 1472
  %i.ns = fmul <2 x double> %i.nn, %i.cv
  store <2 x double> %i.ns, ptr %i.nr, align 8, !tbaa !14
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 1488
  %i.nu = fmul <2 x double> %i.nn, %i.ct
  store <2 x double> %i.nu, ptr %i.nt, align 8, !tbaa !14
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 1504
  %i.nw = fmul <2 x double> %i.nn, %i.cr
  store <2 x double> %i.nw, ptr %i.nv, align 8, !tbaa !14
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 1520
  %i.ny = fmul <2 x double> %i.nn, %i.cp
  store <2 x double> %i.ny, ptr %i.nx, align 8, !tbaa !14
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 1536
  %i.oa = fmul <2 x double> %i.nn, %i.cn
  store <2 x double> %i.oa, ptr %i.nz, align 8, !tbaa !14
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 1552
  %i.oc = fmul <2 x double> %i.nn, %i.cl
  store <2 x double> %i.oc, ptr %i.ob, align 8, !tbaa !14
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 1568
  %i.oe = fmul <2 x double> %i.nn, %i.cj
  store <2 x double> %i.oe, ptr %i.od, align 8, !tbaa !14
  %i.of = getelementptr inbounds nuw i8, ptr %i.a, i64 1584
  %i.og = fmul <2 x double> %i.nn, %i.ch
  store <2 x double> %i.og, ptr %i.of, align 8, !tbaa !14
  ret void
}

declare ptr @CVodeCreate(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeInit(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @f(double noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((0, 8)) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 15 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !20
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
  %storemerge = phi double [ %i.n, %bb.b ], [ 0.000000e+00, %bb.a ] ; 4 uses
  %.0122 = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  store double %storemerge, ptr %3, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !19 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.s = load double, ptr %i.r, align 8, !tbaa !22 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = load double, ptr %i.t, align 8, !tbaa !23 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = load double, ptr %i.v, align 8, !tbaa !24 ; 6 uses
  %i.x = insertelement <2 x double> poison, double %.0122, i64 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  br label %.peel.next

.peel.next:                                       ; preds = %.loopexit.peel.begin, %bb.c
  %indvars.iv128 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next129, %.loopexit.peel.begin ] ; 9 uses
  %i.z = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.aa = uitofp nneg i32 %i.z to double
  %i.ab = fadd double %i.aa, -5.000000e-01
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.q, double 3.000000e+01) ; 2 uses
  %i.ad = fadd double %i.q, %i.ac
  %i.ae = fmul double %i.ac, 2.000000e-01
  %i.af = tail call double @exp(double noundef %i.ae) #10
  %i.ag = fmul double %i.s, %i.af                 ; 5 uses
  %i.ah = fmul double %i.ad, 2.000000e-01
  %i.ai = tail call double @exp(double noundef %i.ah) #10
  %i.aj = fmul double %i.s, %i.ai                 ; 2 uses
  %i.ak = icmp eq i64 %indvars.iv128, 0
  %i.al = select i1 %i.ak, i64 1, i64 4294967295
  %i.am = icmp eq i64 %indvars.iv128, 9
  %i.an = select i1 %i.am, i64 4294967295, i64 1
  %i.ao = mul nuw nsw i64 %indvars.iv128, 20      ; 11 uses
  %i.ap = add nuw i64 %i.al, %indvars.iv128
  %i.aq = add nuw i64 %i.an, %indvars.iv128
  %i.ar = or disjoint i64 %i.ao, 1                ; 2 uses
  %sext = mul i64 %i.aq, 85899345920
  %i.as = ashr exact i64 %sext, 32                ; 2 uses
  %sext132 = mul i64 %i.ap, 85899345920
  %i.at = ashr exact i64 %sext132, 32             ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao
  %i.av = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.at
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.as
  %i.ax = load <2 x double>, ptr %i.au, align 8, !tbaa !14 ; 5 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0 ; 2 uses
  %i.az = fmul double %i.ay, 1.630000e-16
  %i.ba = fmul double %i.az, 3.700000e+16         ; 2 uses
  %i.bb = fmul double %i.ay, 4.660000e-16
  %i.bc = extractelement <2 x double> %i.ax, i64 1 ; 2 uses
  %i.bd = fmul double %i.bb, %i.bc                ; 2 uses
  %i.be = fmul double %storemerge, %i.bc          ; 2 uses
  %i.bf = fneg double %i.ba
  %i.bg = fsub double %i.bf, %i.bd
  %i.bh = tail call double @llvm.fmuladd.f64(double %.0122, double 2.000000e+00, double %i.bg)
  %i.bi = fadd double %i.be, %i.bh
  %i.bj = fsub double %i.ba, %i.bd
  %i.bk = fsub double %i.bj, %i.be
  %i.bl = load <2 x double>, ptr %i.av, align 8, !tbaa !14
  %i.bm = load <2 x double>, ptr %i.aw, align 8, !tbaa !14
  %i.bn = fsub <2 x double> %i.bm, %i.ax
  %i.bo = fsub <2 x double> %i.ax, %i.bl
  %i.bp = fneg <2 x double> %i.bo
  %i.bq = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x double> %i.br, %i.bp
  %i.bt = insertelement <2 x double> poison, double %i.aj, i64 0 ; 3 uses
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bn, <2 x double> %i.bs) ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao
  %4 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %5 = load double, ptr %4, align 8, !tbaa !14    ; 4 uses
  %6 = trunc nuw nsw i64 %i.ar to i32
  %7 = mul i64 %indvars.iv128, 85899345920
  %8 = ashr exact i64 %7, 29
  %9 = getelementptr i8, ptr %i.a, i64 %8
  %i.bx = getelementptr i8, ptr %9, i64 24
  %10 = load double, ptr %i.bx, align 8, !tbaa !14 ; 4 uses
  %11 = insertelement <2 x double> poison, double %5, i64 0
  %12 = insertelement <2 x double> %11, double %10, i64 1
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> splat (double -2.000000e+00), <2 x double> %12) ; 2 uses
  %i.by = extractelement <2 x double> %13, i64 0
  %14 = fadd double %5, %i.by
  %15 = fmul double %i.u, %14
  %i.bz = extractelement <2 x double> %13, i64 1
  %16 = fadd double %10, %i.bz
  %17 = fmul double %i.u, %16
  %18 = fsub double %5, %5
  %i.ca = fmul double %i.w, %18
  %19 = fsub double %10, %10
  %i.cb = fmul double %i.w, %19
  %i.cc = extractelement <2 x double> %i.bv, i64 0
  %i.cd = fadd double %i.cc, %15
  %i.ce = fadd double %i.ca, %i.cd
  %i.cf = fadd double %i.bi, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ao
  store double %i.cf, ptr %i.cg, align 8, !tbaa !14
  %i.ch = extractelement <2 x double> %i.bv, i64 1
  %i.ci = fadd double %i.ch, %17
  %i.cj = fadd double %i.cb, %i.ci
  %i.ck = fadd double %i.bk, %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ao
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store double %i.ck, ptr %i.cm, align 8, !tbaa !14
  %invariant.gep.a = getelementptr [8 x i8], ptr %i.a, i64 %i.at ; 2 uses
  %invariant.gep134 = getelementptr [8 x i8], ptr %i.a, i64 %i.at ; 2 uses
  %invariant.gep136 = getelementptr [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.a, i64 %i.ar ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.cq = insertelement <2 x double> %i.x, double %i.aj, i64 1 ; 2 uses
  %invariant.gep142 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ao
  br label %bb.d

bb.d:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.cr = shl nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %i.cs = add nuw nsw i64 %i.cr, %i.ao            ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cs
  %i.cu = or disjoint i64 %i.cr, 1                ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep.a, i64 %i.cr
  %i.cv = load double, ptr %gep, align 8, !tbaa !14
  %gep135 = getelementptr [8 x i8], ptr %invariant.gep134, i64 %i.cu
  %i.cw = load double, ptr %gep135, align 8, !tbaa !14
  %gep137 = getelementptr [8 x i8], ptr %invariant.gep136, i64 %i.cr
  %i.cx = load <2 x double>, ptr %i.ct, align 8, !tbaa !14 ; 4 uses
  %i.cy = extractelement <2 x double> %i.cx, i64 1 ; 4 uses
  %i.cz = fmul double %storemerge, %i.cy          ; 2 uses
  %i.da = load <2 x double>, ptr %gep137, align 8, !tbaa !14
  %i.db = extractelement <2 x double> %i.cx, i64 0 ; 3 uses
  %i.dc = fmul double %i.db, 1.630000e-16
  %i.dd = fmul double %i.db, 4.660000e-16
  %i.de = fmul double %i.dd, %i.cy                ; 2 uses
  %i.df = fsub double %i.db, %i.cv
  %i.dg = fmul double %i.dc, 3.700000e+16         ; 2 uses
  %i.dh = fneg double %i.df
  %i.di = fneg double %i.dg
  %i.dj = fmul double %i.ag, %i.dh
  %i.dk = fsub double %i.di, %i.de
  %i.dl = fsub <2 x double> %i.da, %i.cx          ; 2 uses
  %i.dm = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.dl, <2 x i32> <i32 0, i32 2>
  %i.dn = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.dj, i64 1
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.dm, <2 x double> %i.do) ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0
  %i.dr = fadd double %i.cz, %i.dq
  %i.ds = fsub double %i.dg, %i.de
  %i.dt = fsub double %i.ds, %i.cz
  %i.du = fsub double %i.cy, %i.cw
  %i.dv = fneg double %i.du
  %i.dw = fmul double %i.ag, %i.dv
  %i.dx = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.dy = shl nuw nsw i32 %i.dx, 1
  %i.dz = add nsw i32 %i.dy, -2
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %i.cn, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !14 ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %i.co, i64 %i.ea
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !14 ; 2 uses
  %i.ef = shl i32 %i.dx, 1
  %i.eg = add i32 %i.ef, 2                        ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr [8 x i8], ptr %i.cp, i64 %i.eh
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !14 ; 2 uses
  %20 = add nuw nsw i32 %i.eg, %6
  %21 = sext i32 %20 to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.a, i64 %21
  %i.el = load double, ptr %i.ek, align 8, !tbaa !14 ; 2 uses
  %i.em = shufflevector <2 x double> %i.bt, <2 x double> %i.cx, <2 x i32> <i32 0, i32 2>
  %i.en = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.dl, <2 x i32> <i32 3, i32 1>
  %i.eo = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.ej, i64 1
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.en, <2 x double> %i.ep) ; 2 uses
  %i.er = extractelement <2 x double> %i.eq, i64 1
  %i.es = fadd double %i.ec, %i.er
  %i.et = fmul double %i.u, %i.es
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.cy, double -2.000000e+00, double %i.el)
  %i.ev = fadd double %i.ee, %i.eu
  %i.ew = fmul double %i.u, %i.ev
  %i.ex = fsub double %i.ej, %i.ec
  %i.ey = fmul double %i.w, %i.ex
  %i.ez = fsub double %i.el, %i.ee
  %i.fa = fmul double %i.w, %i.ez
  %i.fb = extractelement <2 x double> %i.dp, i64 1
  %i.fc = fadd double %i.fb, %i.et
  %i.fd = fadd double %i.ey, %i.fc
  %i.fe = fadd double %i.dr, %i.fd
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cs
  store double %i.fe, ptr %i.ff, align 8, !tbaa !14
  %i.fg = extractelement <2 x double> %i.eq, i64 0
  %i.fh = fadd double %i.fg, %i.ew
  %i.fi = fadd double %i.fa, %i.fh
  %i.fj = fadd double %i.dt, %i.fi
  %gep143 = getelementptr inbounds [8 x i8], ptr %invariant.gep142, i64 %i.cu
  store double %i.fj, ptr %gep143, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %.loopexit.peel.begin, label %bb.d, !llvm.loop !25

.loopexit.peel.begin:                             ; preds = %bb.d
  %i.fk = add nuw nsw i64 %i.ao, 18               ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fk
  %gep.peel = getelementptr i8, ptr %invariant.gep.a, i64 144
  %i.fm = load double, ptr %gep.peel, align 8, !tbaa !14
  %gep135.peel = getelementptr i8, ptr %invariant.gep134, i64 152
  %i.fn = load double, ptr %gep135.peel, align 8, !tbaa !14
  %gep137.peel = getelementptr i8, ptr %invariant.gep136, i64 144
  %i.fo = load <2 x double>, ptr %i.fl, align 8, !tbaa !14 ; 4 uses
  %i.fp = extractelement <2 x double> %i.fo, i64 1 ; 4 uses
  %i.fq = fmul double %storemerge, %i.fp          ; 2 uses
  %i.fr = load <2 x double>, ptr %gep137.peel, align 8, !tbaa !14
  %i.fs = extractelement <2 x double> %i.fo, i64 0 ; 3 uses
  %i.ft = fmul double %i.fs, 1.630000e-16
  %i.fu = fmul double %i.fs, 4.660000e-16
  %i.fv = fmul double %i.fu, %i.fp                ; 2 uses
  %i.fw = fsub double %i.fs, %i.fm
  %i.fx = fmul double %i.ft, 3.700000e+16         ; 2 uses
  %i.fy = fneg double %i.fw
  %i.fz = fneg double %i.fx
  %i.ga = fmul double %i.ag, %i.fy
  %i.gb = fsub double %i.fz, %i.fv
  %i.gc = fsub <2 x double> %i.fr, %i.fo          ; 2 uses
  %i.gd = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.gc, <2 x i32> <i32 0, i32 2>
  %i.ge = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.ga, i64 1
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.gd, <2 x double> %i.gf) ; 2 uses
  %i.gh = extractelement <2 x double> %i.gg, i64 0
  %i.gi = fadd double %i.fq, %i.gh
  %i.gj = fsub double %i.fx, %i.fv
  %i.gk = fsub double %i.gj, %i.fq
  %i.gl = fsub double %i.fp, %i.fn
  %i.gm = fneg double %i.gl
  %i.gn = fmul double %i.ag, %i.gm
  %i.go = getelementptr i8, ptr %i.cn, i64 128
  %i.gp = load double, ptr %i.go, align 8, !tbaa !14 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.co, i64 128
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !14 ; 2 uses
  %i.gs = getelementptr i8, ptr %i.cp, i64 128
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !14 ; 2 uses
  %22 = mul i64 %indvars.iv128, 85899345920
  %sext141 = add i64 %22, 73014444032
  %23 = ashr exact i64 %sext141, 29
  %i.gu = getelementptr inbounds i8, ptr %i.a, i64 %23
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !14 ; 2 uses
  %i.gw = shufflevector <2 x double> %i.bt, <2 x double> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.gx = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.gc, <2 x i32> <i32 3, i32 1>
  %i.gy = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.gt, i64 1
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.gx, <2 x double> %i.gz) ; 2 uses
  %i.hb = extractelement <2 x double> %i.ha, i64 1
  %i.hc = fadd double %i.gp, %i.hb
  %i.hd = fmul double %i.u, %i.hc
  %i.he = tail call double @llvm.fmuladd.f64(double %i.fp, double -2.000000e+00, double %i.gv)
  %i.hf = fadd double %i.gr, %i.he
  %i.hg = fmul double %i.u, %i.hf
  %i.hh = fsub double %i.gt, %i.gp
  %i.hi = fmul double %i.w, %i.hh
  %i.hj = fsub double %i.gv, %i.gr
  %i.hk = fmul double %i.w, %i.hj
  %i.hl = extractelement <2 x double> %i.gg, i64 1
  %i.hm = fadd double %i.hl, %i.hd
  %i.hn = fadd double %i.hi, %i.hm
  %i.ho = fadd double %i.gi, %i.hn
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fk
  store double %i.ho, ptr %i.hp, align 8, !tbaa !14
  %i.hq = extractelement <2 x double> %i.ha, i64 0
  %i.hr = fadd double %i.hq, %i.hg
  %i.hs = fadd double %i.hk, %i.hr
  %i.ht = fadd double %i.gk, %i.hs
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ao
  store double %i.ht, ptr %i.hu, align 8, !tbaa !14
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, 10
  br i1 %exitcond131.not, label %bb.e, label %.peel.next

bb.e:                                             ; preds = %.loopexit.peel.begin
  ret i32 0
}

declare i32 @CVodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPGMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVBandPrecInit(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @PrintIntro() unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef 10, i32 noundef 10) ; 0 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef 2, i64 noundef 2) ; 0 uses
  ret void
}

declare i32 @CVodeReInit(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSol_SPGMRSetPrecType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare i32 @CVode(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintOutput(ptr noundef %0, ptr noundef %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 6 uses
  %i.e = call i32 @CVodeGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %check_retval.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.h = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.20, i32 noundef %i.e) #11 ; 0 uses
  br label %check_retval.exit

check_retval.exit:                                ; preds = %bb.a, %bb.b
  %i.i = call i32 @CVodeGetLastOrder(ptr noundef %0, ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %check_retval.exit19

bb.c:                                             ; preds = %check_retval.exit
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.l = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.21, i32 noundef %i.i) #11 ; 0 uses
  br label %check_retval.exit19

check_retval.exit19:                              ; preds = %check_retval.exit, %bb.c
  %i.m = call i32 @CVodeGetLastStep(ptr noundef %0, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %check_retval.exit21

bb.d:                                             ; preds = %check_retval.exit19
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.p = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.22, i32 noundef %i.m) #11 ; 0 uses
  br label %check_retval.exit21

check_retval.exit21:                              ; preds = %check_retval.exit19, %bb.d
  %i.q = load i64, ptr %i.a, align 8, !tbaa !27
  %i.r = load i32, ptr %i.b, align 4, !tbaa !29
  %i.s = load double, ptr %i.c, align 8, !tbaa !14
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %2, i64 noundef %i.q, i32 noundef %i.r, double noundef %i.s) ; 0 uses
  %i.u = load double, ptr %i.d, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.w = load double, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 1584
  %i.y = load double, ptr %i.x, align 8, !tbaa !14
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, double noundef %i.u, double noundef %i.w, double noundef %i.y) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 712
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 1592
  %i.af = load double, ptr %i.ae, align 8, !tbaa !14
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %i.ab, double noundef %i.ad, double noundef %i.af) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintFinalStats(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #10
  %i.s = call i32 @CVodeGetWorkSpace(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %check_retval.exit

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.v = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.26, i32 noundef %i.s) #11 ; 0 uses
  br label %check_retval.exit

check_retval.exit:                                ; preds = %bb.a, %bb.b
  %i.w = call i32 @CVodeGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.g) #10 ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.c, label %check_retval.exit16

bb.c:                                             ; preds = %check_retval.exit
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.z = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.20, i32 noundef %i.w) #11 ; 0 uses
  br label %check_retval.exit16

check_retval.exit16:                              ; preds = %check_retval.exit, %bb.c
  %i.aa = call i32 @CVodeGetNumRhsEvals(ptr noundef %0, ptr noundef nonnull %i.h) #10 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %check_retval.exit18

bb.d:                                             ; preds = %check_retval.exit16
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ad = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.27, i32 noundef %i.aa) #11 ; 0 uses
  br label %check_retval.exit18

check_retval.exit18:                              ; preds = %check_retval.exit16, %bb.d
  %i.ae = call i32 @CVodeGetNumLinSolvSetups(ptr noundef %0, ptr noundef nonnull %i.i) #10 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %check_retval.exit20

bb.e:                                             ; preds = %check_retval.exit18
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ah = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.28, i32 noundef %i.ae) #11 ; 0 uses
end_hunk_0
