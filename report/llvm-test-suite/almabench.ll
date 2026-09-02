Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/almabench?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@planetpv:bb.a
  %i.le = fcmp olt double %i.ld, f0x3D719799812DEA11
  br i1 %i.le, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.lf = fsub double %i.iz, %i.lc
  %i.lg = tail call double @sin(double noundef %i.lc) #7, !tbaa !7
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.al, double %i.lg, double %i.lf)
  %i.li = tail call double @cos(double noundef %i.lc) #7, !tbaa !7
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.li, double 1.000000e+00)
  %i.lk = fdiv double %i.lh, %i.lj                ; 2 uses
  %i.ll = fadd double %i.lc, %i.lk                ; 5 uses
  %i.lm = tail call double @llvm.fabs.f64(double %i.lk)
  %i.ln = fcmp olt double %i.lm, f0x3D719799812DEA11
  br i1 %i.ln, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.lo = fsub double %i.iz, %i.ll
  %i.lp = tail call double @sin(double noundef %i.ll) #7, !tbaa !7
  %i.lq = tail call double @llvm.fmuladd.f64(double %i.al, double %i.lp, double %i.lo)
  %i.lr = tail call double @cos(double noundef %i.ll) #7, !tbaa !7
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.lr, double 1.000000e+00)
  %i.lt = fdiv double %i.lq, %i.ls                ; 2 uses
  %i.lu = fadd double %i.ll, %i.lt                ; 5 uses
  %i.lv = tail call double @llvm.fabs.f64(double %i.lt)
  %i.lw = fcmp olt double %i.lv, f0x3D719799812DEA11
  br i1 %i.lw, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.lx = fsub double %i.iz, %i.lu
  %i.ly = tail call double @sin(double noundef %i.lu) #7, !tbaa !7
  %i.lz = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ly, double %i.lx)
  %i.ma = tail call double @cos(double noundef %i.lu) #7, !tbaa !7
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.ma, double 1.000000e+00)
  %i.mc = fdiv double %i.lz, %i.mb                ; 2 uses
  %i.md = fadd double %i.lu, %i.mc                ; 5 uses
  %i.me = tail call double @llvm.fabs.f64(double %i.mc)
  %i.mf = fcmp olt double %i.me, f0x3D719799812DEA11
  br i1 %i.mf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.mg = fsub double %i.iz, %i.md
  %i.mh = tail call double @sin(double noundef %i.md) #7, !tbaa !7
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.al, double %i.mh, double %i.mg)
  %i.mj = tail call double @cos(double noundef %i.md) #7, !tbaa !7
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.mj, double 1.000000e+00)
  %i.ml = fdiv double %i.mi, %i.mk
  %i.mm = fadd double %i.md, %i.ml
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %anpm.exit182
  %.lcssa = phi double [ %i.ll, %bb.i ], [ %i.jj, %anpm.exit182 ], [ %i.mm, %bb.l ], [ %i.js, %bb.d ], [ %i.md, %bb.k ], [ %i.kb, %bb.e ], [ %i.lc, %bb.h ], [ %i.kk, %bb.f ], [ %i.lu, %bb.j ], [ %i.kt, %bb.g ] ; 2 uses
  %i.mn = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.mo = insertelement <2 x double> %i.mn, double %i.ha, i64 1
  %i.mp = fmul <2 x double> %i.gz, %i.mo
  %i.mq = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.mr = insertelement <2 x double> %i.mq, double %i.gx, i64 1
  %i.ms = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.mr, <2 x double> %i.mp) ; 2 uses
  %i.mt = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.mu = insertelement <2 x double> %i.mt, double %i.fo, i64 1
  %i.mv = fmul <2 x double> %i.fn, %i.mu
  %i.mw = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.mx = insertelement <2 x double> %i.mw, double %i.fl, i64 1
  %i.my = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.mx, <2 x double> %i.mv) ; 2 uses
  %i.mz = insertelement <2 x double> poison, double %i.do, i64 0
  %i.na = insertelement <2 x double> %i.mz, double %i.ec, i64 1
  %i.nb = fmul <2 x double> %i.eb, %i.na
  %i.nc = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.nd = insertelement <2 x double> %i.nc, double %i.dz, i64 1
  %i.ne = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.nd, <2 x double> %i.nb) ; 2 uses
  %i.nf = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.ng = insertelement <2 x double> %i.nf, double %i.cq, i64 1
  %i.nh = fmul <2 x double> %i.cp, %i.ng
  %i.ni = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.nj = insertelement <2 x double> %i.ni, double %i.cn, i64 1
  %i.nk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.nj, <2 x double> %i.nh) ; 2 uses
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.m, double %i.f, double %i.k)
  %i.nm = tail call double @llvm.fmuladd.f64(double %i.nl, double %i.f, double %i.i)
  %i.nn = extractelement <2 x double> %i.nk, i64 0
  %i.no = tail call double @llvm.fmuladd.f64(double %i.nn, double f0x3E7AD7F29ABCAF48, double %i.nm)
  %i.np = extractelement <2 x double> %i.nk, i64 1
  %i.nq = tail call double @llvm.fmuladd.f64(double %i.np, double f0x3E7AD7F29ABCAF48, double %i.no)
  %i.nr = extractelement <2 x double> %i.ne, i64 0
  %i.ns = tail call double @llvm.fmuladd.f64(double %i.nr, double f0x3E7AD7F29ABCAF48, double %i.nq)
  %i.nt = extractelement <2 x double> %i.ne, i64 1
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.nt, double f0x3E7AD7F29ABCAF48, double %i.ns)
  %i.nv = extractelement <2 x double> %i.my, i64 0
  %i.nw = tail call double @llvm.fmuladd.f64(double %i.nv, double f0x3E7AD7F29ABCAF48, double %i.nu)
  %i.nx = extractelement <2 x double> %i.my, i64 1
  %i.ny = tail call double @llvm.fmuladd.f64(double %i.nx, double f0x3E7AD7F29ABCAF48, double %i.nw)
  %i.nz = extractelement <2 x double> %i.ms, i64 0
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.nz, double f0x3E7AD7F29ABCAF48, double %i.ny)
  %i.ob = extractelement <2 x double> %i.ms, i64 1
  %i.oc = tail call double @llvm.fmuladd.f64(double %i.ob, double f0x3E7AD7F29ABCAF48, double %i.oa)
  %i.od = fmul double %i.hw, %i.hx
  %i.oe = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.hu, double %i.od)
  %i.of = fmul double %i.f, %i.oe
  %i.og = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.f, double %i.az)
  %i.oh = fmul double %i.f, %i.og
  %i.oi = tail call double @llvm.fmuladd.f64(double %i.ax, double 3.600000e+03, double %i.oh)
  %i.oj = fmul double %i.oi, f0x3ED455A5B2FF8F9D
  %i.ok = fmul double %.lcssa, 5.000000e-01       ; 2 uses
  %i.ol = fadd double %i.al, 1.000000e+00
  %i.om = fsub double 1.000000e+00, %i.al
  %i.on = fdiv double %i.ol, %i.om
  %i.oo = tail call double @sqrt(double noundef %i.on) #7, !tbaa !7
  %i.op = tail call double @sin(double noundef %i.ok) #7, !tbaa !7
  %i.oq = fmul double %i.oo, %i.op
  %i.or = tail call double @cos(double noundef %i.ok) #7, !tbaa !7
  %i.os = tail call double @atan2(double noundef %i.oq, double noundef %i.or) #7, !tbaa !7
  %i.ot = fmul double %i.os, 2.000000e+00
  %i.ou = tail call double @cos(double noundef %.lcssa) #7, !tbaa !7
  %i.ov = getelementptr inbounds [8 x i8], ptr @amas, i64 %i.g
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !9
  %i.ox = fdiv double 1.000000e+00, %i.ow
  %i.oy = fadd double %i.ox, 1.000000e+00
  %i.oz = fmul double %i.oj, 5.000000e-01         ; 2 uses
  %i.pa = fadd double %.0.i, %i.ot                ; 2 uses
  %i.pb = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.al, double 1.000000e+00)
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.pf = tail call double @llvm.fmuladd.f64(double %i.of, double f0x3E7AD7F29ABCAF48, double %i.oc) ; 5 uses
  %i.pg = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.ou, double 1.000000e+00)
  %i.ph = fmul double %i.pf, %i.pf
  %i.pi = fmul double %i.pf, %i.ph
  %i.pj = fdiv double %i.oy, %i.pi
  %i.pk = tail call double @sqrt(double noundef %i.pj) #7, !tbaa !7
  %i.pl = insertelement <2 x double> poison, double %i.pf, i64 0
  %i.pm = insertelement <2 x double> %i.pl, double %i.pk, i64 1
  %i.pn = insertelement <2 x double> <double poison, double f0x3F919D6D51A6B69A>, double %i.pg, i64 0
  %i.po = fmul <2 x double> %i.pm, %i.pn          ; 3 uses
  %i.pp = tail call double @sin(double noundef %i.oz) #7, !tbaa !7
  %i.pq = tail call double @cos(double noundef %.0.i181) #7, !tbaa !7
  %i.pr = tail call double @sin(double noundef %.0.i181) #7, !tbaa !7
  %i.ps = tail call double @sin(double noundef %i.pa) #7, !tbaa !7 ; 3 uses
  %i.pt = tail call double @cos(double noundef %i.pa) #7, !tbaa !7 ; 2 uses
  %i.pu = fneg double %i.ps
  %i.pv = tail call double @sqrt(double noundef %i.pb) #7, !tbaa !7
  %i.pw = fdiv double %i.pf, %i.pv                ; 2 uses
  %i.px = tail call double @cos(double noundef %i.oz) #7, !tbaa !7 ; 2 uses
  %i.py = tail call double @sin(double noundef %.0.i) #7, !tbaa !7
  %i.pz = tail call double @cos(double noundef %.0.i) #7, !tbaa !7
  %i.qa = shufflevector <2 x double> %i.po, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qb = insertelement <2 x double> poison, double %i.al, i64 0
  %i.qc = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.pt, i64 0
  %i.qd = insertelement <2 x double> poison, double %i.pt, i64 0 ; 2 uses
  %i.qe = fmul double %i.px, 2.000000e+00
  %i.qf = insertelement <2 x double> poison, double %i.pp, i64 0
  %i.qg = shufflevector <2 x double> %i.qf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qh = insertelement <2 x double> poison, double %i.pq, i64 0
  %i.qi = insertelement <2 x double> %i.qh, double %i.pr, i64 1
  %i.qj = fmul <2 x double> %i.qg, %i.qi          ; 6 uses
  %i.qk = extractelement <2 x double> %i.qj, i64 0 ; 5 uses
  %i.ql = fmul double %i.qk, %i.pu
  %i.qm = shufflevector <2 x double> %i.qj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qn = insertelement <2 x double> %i.qm, double %i.al, i64 1
  %i.qo = insertelement <2 x double> %i.qd, double %i.py, i64 1
  %i.qp = insertelement <2 x double> poison, double %i.ql, i64 0
  %i.qq = insertelement <2 x double> %i.qp, double %i.ps, i64 1
  %i.qr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qn, <2 x double> %i.qo, <2 x double> %i.qq)
  %i.qs = extractelement <2 x double> %i.qj, i64 1
  %i.qt = fmul double %i.qs, 2.000000e+00         ; 2 uses
  %i.qu = fmul double %i.qk, %i.qt                ; 2 uses
  %i.qv = insertelement <2 x double> <double 2.000000e+00, double poison>, double %i.pw, i64 1
  %i.qw = fmul <2 x double> %i.qv, %i.qr          ; 4 uses
  %i.qx = extractelement <2 x double> %i.qw, i64 0
  %i.qy = fneg double %i.qx                       ; 2 uses
  %i.qz = insertelement <2 x double> %i.qb, double %i.qt, i64 1
  %i.ra = insertelement <2 x double> %i.qj, double %i.pz, i64 0
  %i.rb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qz, <2 x double> %i.ra, <2 x double> %i.qc) ; 2 uses
  %i.rc = extractelement <2 x double> %i.rb, i64 0
  %i.rd = fmul double %i.pw, %i.rc                ; 3 uses
  %i.re = fmul double %i.qu, %i.rd
  %i.rf = insertelement <2 x double> %i.rb, double %i.qy, i64 0
  %i.rg = shufflevector <2 x double> %i.qj, <2 x double> %i.qw, <2 x i32> <i32 1, i32 3>
  %i.rh = insertelement <2 x double> %i.qd, double %i.re, i64 1
  %i.ri = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rf, <2 x double> %i.rg, <2 x double> %i.rh)
  %i.rj = fmul <2 x double> %i.po, %i.ri          ; 2 uses
  %i.rk = extractelement <2 x double> %i.rj, i64 0
  store double %i.rk, ptr %2, align 8, !tbaa !9
  %i.rl = fmul double %i.px, %i.qy
  %i.rm = fmul double %i.qk, %i.rd
  %i.rn = insertelement <2 x double> poison, double %i.ps, i64 0
  %i.ro = insertelement <2 x double> %i.rn, double %i.rm, i64 1
  %i.rp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qj, <2 x double> %i.qw, <2 x double> %i.ro) ; 2 uses
  %i.rq = insertelement <2 x double> %i.rp, double %i.rl, i64 1
  %i.rr = fmul <2 x double> %i.qa, %i.rq          ; 2 uses
  %i.rs = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rt = fmul <2 x double> %i.rs, <double f0xBFD9752E50F4B399, double f0x3FED5C0357681EF3>
  %i.ru = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ru, <2 x double> <double f0x3FED5C0357681EF3, double f0x3FD9752E50F4B399>, <2 x double> %i.rt)
  store <2 x double> %i.rv, ptr %i.pc, align 8, !tbaa !9
  %i.rw = fmul double %i.qk, -2.000000e+00
  %i.rx = extractelement <2 x double> %i.qw, i64 1
  %i.ry = fneg double %i.rx
  %i.rz = fmul double %i.qu, %i.ry
  %i.sa = tail call double @llvm.fmuladd.f64(double %i.rw, double %i.qk, double 1.000000e+00)
  %i.sb = extractelement <2 x double> %i.rp, i64 1
  %i.sc = fmul double %i.qe, %i.sb
  %i.sd = tail call double @llvm.fmuladd.f64(double %i.sa, double %i.rd, double %i.rz)
  %3 = shufflevector <2 x double> %i.po, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %4 = insertelement <2 x double> poison, double %i.sd, i64 0
  %5 = insertelement <2 x double> %4, double %i.sc, i64 1
  %6 = fmul <2 x double> %3, %5                   ; 2 uses
  %7 = extractelement <2 x double> %i.rj, i64 1
  store double %7, ptr %i.pd, align 8, !tbaa !9
  %8 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.se = fmul <2 x double> %8, <double f0xBFD9752E50F4B399, double f0x3FED5C0357681EF3>
  %i.sf = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sf, <2 x double> <double f0x3FED5C0357681EF3, double f0x3FD9752E50F4B399>, <2 x double> %i.se)
  store <2 x double> %i.sg, ptr %i.pe, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @radecdist(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !9   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %i.d = fmul double %i.c, %i.c
  %i.e = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !9 ; 2 uses
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %i.e)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.h) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %sqrt, ptr %i.i, align 8, !tbaa !9
  %i.j = load double, ptr %i.b, align 8, !tbaa !9
  %i.k = load double, ptr %0, align 8, !tbaa !9
  %i.l = tail call double @atan2(double noundef %i.j, double noundef %i.k) #7, !tbaa !7
  %i.m = fmul double %i.l, f0x400E8EC8A4AEACC4    ; 3 uses
  %i.n = fcmp olt double %i.m, 0.000000e+00
  %i.o = fadd double %i.m, 2.400000e+01
  %storemerge = select i1 %i.n, double %i.o, double %i.m
  store double %storemerge, ptr %1, align 8, !tbaa !9
  %i.p = load double, ptr %i.f, align 8, !tbaa !9
  %i.q = fdiv double %i.p, %sqrt
  %i.r = tail call double @asin(double noundef %i.q) #7, !tbaa !7
  %i.s = fmul double %i.r, f0x404CA5DC1A63C1F8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.s, ptr %i.t, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
.loopexit.split:
  %i.a = alloca [2 x double], align 16            ; 12 uses
  %i.b = alloca [2 x [3 x double]], align 16      ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  br label %bb.a

bb.a:                                             ; preds = %.loopexit.split, %bb.c
  %.11925 = phi i32 [ 0, %.loopexit.split ], [ %i.cc, %bb.c ]
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.01724 = phi i32 [ 0, %bb.a ], [ %i.cb, %bb.b ]
  %i.f = phi double [ f0x4142B42C80000000, %bb.a ], [ %i.g, %bb.b ]
  %i.g = fadd double %i.f, 1.000000e+00           ; 2 uses
  store double %i.g, ptr %i.a, align 16, !tbaa !9
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull %i.b)
  %i.h = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.i = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.j = fmul double %i.i, %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.j)
  %i.l = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.k)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.m) ; 2 uses
  %i.n = tail call double @atan2(double noundef %i.i, double noundef %i.h) #7, !tbaa !7
  %i.o = fdiv double %i.l, %sqrt.i
  %i.p = tail call double @asin(double noundef %i.o) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.b)
  %i.q = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.r = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.s = fmul double %i.r, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.s)
  %i.u = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.t)
  %sqrt.i.1 = tail call double @llvm.sqrt.f64(double %i.v) ; 2 uses
  %i.w = tail call double @atan2(double noundef %i.r, double noundef %i.q) #7, !tbaa !7
  %i.x = fdiv double %i.u, %sqrt.i.1
  %i.y = tail call double @asin(double noundef %i.x) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef nonnull %i.b)
  %i.z = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.aa = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.ab = fmul double %i.aa, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.ab)
  %i.ad = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ad, double %i.ac)
  %sqrt.i.2 = tail call double @llvm.sqrt.f64(double %i.ae) ; 2 uses
  %i.af = tail call double @atan2(double noundef %i.aa, double noundef %i.z) #7, !tbaa !7
  %i.ag = fdiv double %i.ad, %sqrt.i.2
  %i.ah = tail call double @asin(double noundef %i.ag) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef nonnull %i.b)
  %i.ai = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.aj = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.ak = fmul double %i.aj, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.ak)
  %i.am = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.al)
  %sqrt.i.3 = tail call double @llvm.sqrt.f64(double %i.an) ; 2 uses
  %i.ao = tail call double @atan2(double noundef %i.aj, double noundef %i.ai) #7, !tbaa !7
  %i.ap = fdiv double %i.am, %sqrt.i.3
  %i.aq = tail call double @asin(double noundef %i.ap) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull %i.b)
  %i.ar = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.as = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.at = fmul double %i.as, %i.as
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.ar, double %i.at)
  %i.av = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %i.au)
  %sqrt.i.4 = tail call double @llvm.sqrt.f64(double %i.aw) ; 2 uses
  %i.ax = tail call double @atan2(double noundef %i.as, double noundef %i.ar) #7, !tbaa !7
  %i.ay = fdiv double %i.av, %sqrt.i.4
  %i.az = tail call double @asin(double noundef %i.ay) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 5, ptr noundef nonnull %i.b)
  %i.ba = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.bb = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.bc = fmul double %i.bb, %i.bb
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.bc)
  %i.be = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.bd)
  %sqrt.i.5 = tail call double @llvm.sqrt.f64(double %i.bf) ; 2 uses
  %i.bg = tail call double @atan2(double noundef %i.bb, double noundef %i.ba) #7, !tbaa !7
  %i.bh = fdiv double %i.be, %sqrt.i.5
  %i.bi = tail call double @asin(double noundef %i.bh) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 6, ptr noundef nonnull %i.b)
  %i.bj = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.bk = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.bl = fmul double %i.bk, %i.bk
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bj, double %i.bl)
  %i.bn = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double %i.bm)
  %sqrt.i.6 = tail call double @llvm.sqrt.f64(double %i.bo) ; 2 uses
  %i.bp = tail call double @atan2(double noundef %i.bk, double noundef %i.bj) #7, !tbaa !7
  %i.bq = fdiv double %i.bn, %sqrt.i.6
  %i.br = tail call double @asin(double noundef %i.bq) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 7, ptr noundef nonnull %i.b)
  %i.bs = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.bt = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.bu = fmul double %i.bt, %i.bt
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.bu)
  %i.bw = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.bv)
  %sqrt.i.7 = tail call double @llvm.sqrt.f64(double %i.bx) ; 2 uses
  %i.by = tail call double @atan2(double noundef %i.bt, double noundef %i.bs) #7, !tbaa !7
  %i.bz = fdiv double %i.bw, %sqrt.i.7
  %i.ca = tail call double @asin(double noundef %i.bz) #7, !tbaa !7
  %i.cb = add nuw nsw i32 %.01724, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cb, 36525
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.cc = add nuw nsw i32 %.11925, 1              ; 2 uses
  %exitcond28.not = icmp eq i32 %i.cc, 20
  br i1 %exitcond28.not, label %.preheader.preheader, label %bb.a, !llvm.loop !11

.preheader.preheader:                             ; preds = %bb.c
  %i.cd = fmul double %i.ca, f0x404CA5DC1A63C1F8
  %i.ce = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.bp, i64 1
  %i.cg = fmul <2 x double> %i.cf, splat (double f0x400E8EC8A4AEACC4) ; 3 uses
  %i.ch = fmul double %i.br, f0x404CA5DC1A63C1F8
  %i.ci = fcmp olt <2 x double> %i.cg, zeroinitializer
  %i.cj = fadd <2 x double> %i.cg, splat (double 2.400000e+01)
  %i.ck = select <2 x i1> %i.ci, <2 x double> %i.cj, <2 x double> %i.cg ; 2 uses
  %i.cl = fmul double %i.bi, f0x404CA5DC1A63C1F8
  %i.cm = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.ax, i64 1
  %i.co = fmul <2 x double> %i.cn, splat (double f0x400E8EC8A4AEACC4) ; 3 uses
  %i.cp = fmul double %i.az, f0x404CA5DC1A63C1F8
  %i.cq = fcmp olt <2 x double> %i.co, zeroinitializer
  %i.cr = fadd <2 x double> %i.co, splat (double 2.400000e+01)
  %i.cs = select <2 x i1> %i.cq, <2 x double> %i.cr, <2 x double> %i.co ; 2 uses
  %i.ct = fmul double %i.aq, f0x404CA5DC1A63C1F8
  %i.cu = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.af, i64 1
  %i.cw = fmul <2 x double> %i.cv, splat (double f0x400E8EC8A4AEACC4) ; 3 uses
  %i.cx = fmul double %i.ah, f0x404CA5DC1A63C1F8
  %i.cy = fcmp olt <2 x double> %i.cw, zeroinitializer
  %i.cz = fadd <2 x double> %i.cw, splat (double 2.400000e+01)
  %i.da = select <2 x i1> %i.cy, <2 x double> %i.cz, <2 x double> %i.cw ; 2 uses
  %i.db = fmul double %i.y, f0x404CA5DC1A63C1F8
  %i.dc = insertelement <2 x double> poison, double %i.w, i64 0
end_hunk_0
