Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/smallpt?download=true
inline.NumInlined: 132
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z8radianceRK3RayiPt:bb.a
  %i.nd = fmul double %i.mr, %i.lb
  %i.ne = fmul <2 x double> %i.mx, %i.nc
  %i.nf = fmul double %i.kv, %i.nd
  %i.ng = fadd <2 x double> %i.my, %i.ne
  %i.nh = fadd double %i.mz, %i.nf
  %i.ni = insertelement <2 x double> poison, double %i.ld, i64 0
  %i.nj = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nk = fmul <2 x double> %i.js, %i.nj
  %i.nl = fadd <2 x double> %i.nk, %i.ng          ; 4 uses
  %i.nm = fadd double %i.le, %i.nh                ; 3 uses
  %foldExtExtBinop373 = fmul <2 x double> %i.nl, %i.nl
  %i.nn = extractelement <2 x double> %foldExtExtBinop373, i64 1
  %i.no = extractelement <2 x double> %i.nl, i64 0 ; 2 uses
  %i.np = tail call double @llvm.fmuladd.f64(double %i.no, double %i.no, double %i.nn)
  %i.nq = tail call double @llvm.fmuladd.f64(double %i.nm, double %i.nm, double %i.np)
  %sqrt.i97 = tail call double @llvm.sqrt.f64(double %i.nq)
  %i.nr = fdiv double 1.000000e+00, %sqrt.i97     ; 2 uses
  %i.ns = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.nt = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nu = fmul <2 x double> %i.nl, %i.nt
  %i.nv = fmul double %i.nm, %i.nr
  store <2 x double> %i.nu, ptr %i.lg, align 8, !tbaa !11
  %.sroa.5304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store double %i.nv, ptr %.sroa.5304.0..sroa_idx, align 8, !tbaa !11
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.kd, ptr noundef %3)
  %i.nw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.nx = load double, ptr %i.nw, align 16, !tbaa !10, !noalias !45
  %i.ny = fmul double %.sroa.18.0336, %i.nx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !10, !noalias !46
  %i.ob = fadd double %i.ny, %i.oa
  %i.oc = load <2 x double>, ptr %4, align 16, !tbaa !11, !noalias !45
  %i.od = fmul <2 x double> %i.kp, %i.oc
  %i.oe = load <2 x double>, ptr %i.lf, align 8, !tbaa !11, !noalias !46
  %i.of = fadd <2 x double> %i.od, %i.oe
  store <2 x double> %i.of, ptr %0, align 8, !tbaa !11, !alias.scope !46
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ob, ptr %i.og, align 8, !tbaa !10, !alias.scope !46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.av

bb.aj:                                            ; preds = %.thread
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.oi = fmul double %i.je, 2.000000e+00
  %i.oj = load double, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  store <2 x double> %i.it, ptr %7, align 16, !tbaa !11
  %.sroa.5307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.io, ptr %.sroa.5307.0..sroa_idx, align 16, !tbaa !11
  %i.ok = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ol = fmul <2 x double> %i.jd, splat (double 2.000000e+00)
  %i.om = load <2 x double>, ptr %i.b, align 8, !tbaa !11 ; 3 uses
  %foldExtExtBinop375 = fmul <2 x double> %i.jd, %i.om
  %i.on = extractelement <2 x double> %foldExtExtBinop375, i64 1
  %i.oo = extractelement <2 x double> %i.om, i64 0
  %i.op = tail call double @llvm.fmuladd.f64(double %i.jh, double %i.oo, double %i.on)
  %i.oq = tail call noundef double @llvm.fmuladd.f64(double %i.je, double %i.oj, double %i.op) ; 2 uses
  %i.or = insertelement <2 x double> poison, double %i.oq, i64 0
  %i.os = shufflevector <2 x double> %i.or, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ot = fmul <2 x double> %i.ol, %i.os
  %i.ou = fmul double %i.oi, %i.oq
  %i.ov = fsub <2 x double> %i.om, %i.ot
  %i.ow = fsub double %i.oj, %i.ou
  store <2 x double> %i.ov, ptr %i.ok, align 8, !tbaa !11
  %.sroa.5310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store double %i.ow, ptr %.sroa.5310.0..sroa_idx, align 8, !tbaa !11
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.kd, ptr noundef %3)
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.oy = load double, ptr %i.ox, align 16, !tbaa !10, !noalias !47
  %i.oz = fmul double %.sroa.18.0336, %i.oy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !10, !noalias !48
  %i.pc = fadd double %i.oz, %i.pb
  %i.pd = load <2 x double>, ptr %6, align 16, !tbaa !11, !noalias !47
  %i.pe = fmul <2 x double> %i.kp, %i.pd
  %i.pf = load <2 x double>, ptr %i.oh, align 8, !tbaa !11, !noalias !48
  %i.pg = fadd <2 x double> %i.pe, %i.pf
  store <2 x double> %i.pg, ptr %0, align 8, !tbaa !11, !alias.scope !48
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.pc, ptr %i.ph, align 8, !tbaa !10, !alias.scope !48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.av

bb.ak:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.pi = fmul double %i.jh, 2.000000e+00
  %i.pj = fmul double %i.jf, 2.000000e+00
  %i.pk = fmul double %i.je, 2.000000e+00
  %i.pl = load double, ptr %i.d, align 8, !tbaa !10 ; 4 uses
  %i.pm = extractelement <2 x double> %i.it, i64 0 ; 3 uses
  store double %i.pm, ptr %8, align 8, !tbaa !11
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.pn = extractelement <2 x double> %i.it, i64 1 ; 3 uses
  store double %i.pn, ptr %.sroa.4312.0..sroa_idx, align 8, !tbaa !11
  %.sroa.5313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double %i.io, ptr %.sroa.5313.0..sroa_idx, align 8, !tbaa !11
  %i.po = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.4315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.5316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.pp = load <2 x double>, ptr %i.b, align 8, !tbaa !11 ; 3 uses
  %i.pq = load double, ptr %i.c, align 8, !tbaa !49 ; 3 uses
  %i.pr = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ps = shufflevector <2 x double> %i.pp, <2 x double> %i.js, <2 x i32> <i32 1, i32 3>
  %i.pt = fmul <2 x double> %i.pr, %i.ps
  %i.pu = shufflevector <2 x double> %i.pp, <2 x double> %i.js, <2 x i32> <i32 0, i32 2>
  %i.pv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.pu, <2 x double> %i.pt) ; 2 uses
  %i.pw = extractelement <2 x double> %i.pv, i64 0
  %i.px = tail call noundef double @llvm.fmuladd.f64(double %i.je, double %i.pl, double %i.pw) ; 3 uses
  %i.py = fmul double %i.pi, %i.px
  %i.pz = fmul double %i.pj, %i.px
  %i.qa = fmul double %i.pk, %i.px
  %i.qb = extractelement <2 x double> %i.pp, i64 0 ; 3 uses
  %i.qc = fsub double %i.qb, %i.py
  %i.qd = fsub double %i.pq, %i.pz
  %i.qe = fsub double %i.pl, %i.qa
  store double %i.qc, ptr %i.po, align 8, !tbaa !11
  store double %i.qd, ptr %.sroa.4315.0..sroa_idx, align 8, !tbaa !11
  store double %i.qe, ptr %.sroa.5316.0..sroa_idx, align 8, !tbaa !11
  %i.qf = extractelement <2 x double> %i.pv, i64 1
  %i.qg = extractelement <2 x double> %i.jt, i64 0 ; 2 uses
  %i.qh = tail call noundef double @llvm.fmuladd.f64(double %i.je, double %i.qg, double %i.qf)
  %i.qi = fcmp ogt double %i.qh, 0.000000e+00     ; 3 uses
  %. = select i1 %i.qi, double f0x3FE5555555555555, double 1.500000e+00 ; 6 uses
  %i.qj = extractelement <2 x double> %i.js, i64 1
  %i.qk = fmul double %i.qj, %i.pq
  %i.ql = extractelement <2 x double> %i.js, i64 0
  %i.qm = tail call double @llvm.fmuladd.f64(double %i.qb, double %i.ql, double %i.qk)
  %i.qn = tail call noundef double @llvm.fmuladd.f64(double %i.pl, double %i.qg, double %i.qm) ; 3 uses
  %i.qo = fneg double %i.qn                       ; 2 uses
  %i.qp = tail call double @llvm.fmuladd.f64(double %i.qo, double %i.qn, double 1.000000e+00)
  %i.qq = fneg double %.
  %i.qr = fmul nnan double %., %i.qq
  %i.qs = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.qp, double 1.000000e+00) ; 2 uses
  %i.qt = fcmp olt double %i.qs, 0.000000e+00
  br i1 %i.qt, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef %i.kd, ptr noundef %3)
  %i.qv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.qw = load double, ptr %i.qv, align 16, !tbaa !10, !noalias !50
  %i.qx = fmul double %.sroa.18.0336, %i.qw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !10, !noalias !51
  %i.ra = fadd double %i.qx, %i.qz
  %i.rb = load <2 x double>, ptr %9, align 16, !tbaa !11, !noalias !50
  %i.rc = fmul <2 x double> %i.kp, %i.rb
  %i.rd = load <2 x double>, ptr %i.qu, align 8, !tbaa !11, !noalias !51
  %i.re = fadd <2 x double> %i.rc, %i.rd
  store <2 x double> %i.re, ptr %0, align 8, !tbaa !11, !alias.scope !51
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ra, ptr %i.rf, align 8, !tbaa !10, !alias.scope !51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.au

bb.am:                                            ; preds = %bb.ak
  %i.rg = fmul double %., %i.qb
  %i.rh = fmul double %., %i.pq
  %i.ri = fmul double %., %i.pl
  %i.rj = tail call double @sqrt(double noundef %i.qs) #10, !tbaa !7
  %i.rk = tail call double @llvm.fmuladd.f64(double %i.qn, double %., double %i.rj) ; 2 uses
  %i.rl = fneg double %i.rk
  %i.rm = select i1 %i.qi, double %i.rk, double %i.rl ; 3 uses
  %i.rn = fmul double %i.jh, %i.rm
  %i.ro = fmul double %i.jf, %i.rm
  %i.rp = fmul double %i.je, %i.rm
  %i.rq = fsub double %i.rg, %i.rn                ; 3 uses
  %i.rr = fsub double %i.rh, %i.ro                ; 3 uses
  %i.rs = fsub double %i.ri, %i.rp                ; 3 uses
  %i.rt = fmul double %i.rr, %i.rr
  %i.ru = tail call double @llvm.fmuladd.f64(double %i.rq, double %i.rq, double %i.rt)
  %i.rv = tail call double @llvm.fmuladd.f64(double %i.rs, double %i.rs, double %i.ru)
  %sqrt.i98 = tail call double @llvm.sqrt.f64(double %i.rv)
  %i.rw = fdiv double 1.000000e+00, %sqrt.i98     ; 3 uses
  %i.rx = fmul double %i.rq, %i.rw                ; 3 uses
  %i.ry = fmul double %i.rr, %i.rw                ; 3 uses
  %i.rz = fmul double %i.rs, %i.rw                ; 3 uses
  br i1 %i.qi, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.sa = fmul double %i.jf, %i.ry
  %i.sb = tail call double @llvm.fmuladd.f64(double %i.rx, double %i.jh, double %i.sa)
  %i.sc = tail call noundef double @llvm.fmuladd.f64(double %i.rz, double %i.je, double %i.sb)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.sd = phi double [ %i.sc, %bb.an ], [ %i.qo, %bb.am ]
  %i.se = fsub double 1.000000e+00, %i.sd         ; 5 uses
  %i.sf = fmul double %i.se, f0x3FEEB851EB851EB8
  %i.sg = fmul double %i.se, %i.sf
  %i.sh = fmul double %i.se, %i.sg
  %i.si = fmul double %i.se, %i.sh
  %i.sj = tail call double @llvm.fmuladd.f64(double %i.si, double %i.se, double 4.000000e-02) ; 4 uses
  %i.sk = fsub double 1.000000e+00, %i.sj         ; 2 uses
  %i.sl = tail call double @llvm.fmuladd.f64(double %i.sj, double 5.000000e-01, double 2.500000e-01) ; 3 uses
  %i.sm = fsub double 1.000000e+00, %i.sl
  %i.sn = insertelement <2 x double> poison, double %i.sj, i64 0 ; 2 uses
  %i.so = insertelement <2 x double> %i.sn, double %i.sk, i64 1 ; 2 uses
  %i.sp = insertelement <2 x double> poison, double %i.sl, i64 0
  %i.sq = insertelement <2 x double> %i.sp, double %i.sm, i64 1
  %i.sr = fdiv <2 x double> %i.so, %i.sq          ; 4 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.st = icmp sgt i32 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  br i1 %i.st, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.su = tail call double @erand48(ptr noundef %3) #10
  %i.sv = fcmp olt double %i.su, %i.sl
  br i1 %i.sv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef %i.kd, ptr noundef %3)
  %i.sw = load <2 x double>, ptr %10, align 16, !tbaa !11, !noalias !52
  %i.sx = shufflevector <2 x double> %i.sr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sy = fmul <2 x double> %i.sx, %i.sw
  %i.sz = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ta = load double, ptr %i.sz, align 16, !tbaa !10, !noalias !52
  %i.tb = extractelement <2 x double> %i.sr, i64 0
  %i.tc = fmul double %i.tb, %i.ta
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  store double %i.pm, ptr %12, align 8, !tbaa !11
  %.sroa.4318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store double %i.pn, ptr %.sroa.4318.0..sroa_idx, align 8, !tbaa !11
  %.sroa.5319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store double %i.io, ptr %.sroa.5319.0..sroa_idx, align 8, !tbaa !11
  %i.td = getelementptr inbounds nuw i8, ptr %12, i64 24
  store double %i.rx, ptr %i.td, align 8, !tbaa !11
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store double %i.ry, ptr %.sroa.4321.0..sroa_idx, align 8, !tbaa !11
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 40
  store double %i.rz, ptr %.sroa.5322.0..sroa_idx, align 8, !tbaa !11
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %12, i32 noundef %i.kd, ptr noundef %3)
  %i.te = load <2 x double>, ptr %11, align 16, !tbaa !11, !noalias !53
  %i.tf = shufflevector <2 x double> %i.sr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.tg = fmul <2 x double> %i.tf, %i.te
  %i.th = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ti = load double, ptr %i.th, align 16, !tbaa !10, !noalias !53
  %i.tj = extractelement <2 x double> %i.sr, i64 1
  %i.tk = fmul double %i.tj, %i.ti
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef %i.kd, ptr noundef %3)
  %i.tl = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.tm = load double, ptr %i.tl, align 16, !tbaa !10, !noalias !54
  %i.tn = fmul double %i.sj, %i.tm
  store double %i.pm, ptr %15, align 8, !tbaa !11
  %.sroa.4324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store double %i.pn, ptr %.sroa.4324.0..sroa_idx, align 8, !tbaa !11
  %.sroa.5325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store double %i.io, ptr %.sroa.5325.0..sroa_idx, align 8, !tbaa !11
  %i.to = getelementptr inbounds nuw i8, ptr %15, i64 24
  store double %i.rx, ptr %i.to, align 8, !tbaa !11
  %.sroa.4327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 32
  store double %i.ry, ptr %.sroa.4327.0..sroa_idx, align 8, !tbaa !11
  %.sroa.5328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 40
  store double %i.rz, ptr %.sroa.5328.0..sroa_idx, align 8, !tbaa !11
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %15, i32 noundef %i.kd, ptr noundef %3)
  %i.tp = load <2 x double>, ptr %13, align 16, !tbaa !11, !noalias !54
  %i.tq = shufflevector <2 x double> %i.sn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tr = fmul <2 x double> %i.tq, %i.tp
  %i.ts = load <2 x double>, ptr %14, align 16, !tbaa !11, !noalias !55
  %16 = shufflevector <2 x double> %i.so, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.tt = fmul <2 x double> %16, %i.ts
  %i.tu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.tv = load double, ptr %i.tu, align 16, !tbaa !10, !noalias !55
  %i.tw = fmul double %i.sk, %i.tv
  %i.tx = fadd <2 x double> %i.tr, %i.tt
  %i.ty = fadd double %i.tn, %i.tw
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  %.sroa.10.0 = phi double [ %i.tc, %bb.aq ], [ %i.tk, %bb.ar ], [ %i.ty, %bb.as ]
  %i.tz = phi <2 x double> [ %i.sy, %bb.aq ], [ %i.tg, %bb.ar ], [ %i.tx, %bb.as ]
  %i.ua = fmul double %.sroa.18.0336, %.sroa.10.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !10, !noalias !56
  %i.ud = fadd double %i.ua, %i.uc
  %i.ue = fmul <2 x double> %i.kp, %i.tz
  %i.uf = load <2 x double>, ptr %i.ss, align 8, !tbaa !11, !noalias !56
  %i.ug = fadd <2 x double> %i.ue, %i.uf
  store <2 x double> %i.ug, ptr %0, align 8, !tbaa !11, !alias.scope !56
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ud, ptr %i.uh, align 8, !tbaa !10, !alias.scope !56
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.av

bb.av:                                            ; preds = %bb.af, %bb.ah, %bb.ai, %bb.aj, %bb.au, %bb.ac
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind
declare double @erand48(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: cold norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i16], align 2                ; 13 uses
  %2 = alloca %struct.Vec, align 16               ; 9 uses
  %3 = alloca %struct.Ray, align 16               ; 11 uses
  %i.b = icmp eq i32 %0, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 10) #10, !inline_history !57
  %i.f = trunc i64 %i.e to i32
  %i.g = sdiv i32 %i.f, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 1, %bb.a ]    ; 5 uses
  %i.i = tail call noalias noundef nonnull dereferenceable(18874368) ptr @_Znam(i64 noundef 18874368) #11 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18874368) %i.i, i8 0, i64 18874368, i1 false), !tbaa !11
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.k = shl nsw i32 %i.h, 2
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str, i32 noundef %i.k) #12 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = icmp sgt i32 %i.h, 0
  %.sroa.5135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.q = sitofp i32 %i.h to double
  %i.r = fdiv double 1.000000e+00, %i.q           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %i.o, label %.split161.us.us.preheader, label %.split161

.split161.us.us.preheader:                        ; preds = %bb.c
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.split161.us.us

.split161.us.us:                                  ; preds = %.split161.us.us.preheader, %.split163.us.us
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %.split163.us.us ], [ 0, %.split161.us.us.preheader ] ; 3 uses
  %indvars187 = trunc i64 %indvars.iv185 to i32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i16 0, ptr %i.a, align 2, !tbaa !68
  store i16 0, ptr %i.m, align 2, !tbaa !68
  %i.v = mul nuw nsw i32 %indvars187, %indvars187
  %i.w = mul nuw nsw i32 %i.v, %indvars187
  %i.x = trunc i32 %i.w to i16
  store i16 %i.x, ptr %i.n, align 2, !tbaa !68
  %i.y = shl nuw nsw i64 %indvars.iv185, 10
  %i.z = uitofp nneg i32 %indvars187 to double    ; 2 uses
  br label %.split152.us.us.us

.split152.us.us.us:                               ; preds = %.split154.us.us.us, %.split161.us.us
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %.split154.us.us.us ], [ 0, %.split161.us.us ] ; 3 uses
  %i.aa = sub nsw i64 %indvars.iv180, %i.y
  %i.ab = trunc i64 %indvars.iv180 to i16
  %i.ac = uitofp nneg i16 %i.ab to double         ; 2 uses
  %i.ad = getelementptr [24 x i8], ptr %i.i, i64 %i.aa ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 18849792 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 18849808 ; 3 uses
  br label %.preheader139.us.us.us

.preheader139.us.us.us:                           ; preds = %._crit_edge.us.us.us.us.1, %.split152.us.us.us
  %i.ag = phi i1 [ true, %.split152.us.us.us ], [ false, %._crit_edge.us.us.us.us.1 ]
  %.047151.us.us.us = phi double [ 5.000000e-01, %.split152.us.us.us ], [ 1.500000e+00, %._crit_edge.us.us.us.us.1 ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.preheader139.us.us.us
  %.0143.us.us.us.us = phi i32 [ 0, %.preheader139.us.us.us ], [ %i.co, %bb.j ]
  %.sroa.12.4142.us.us.us.us = phi double [ 0.000000e+00, %.preheader139.us.us.us ], [ %i.cn, %bb.j ]
  %i.ah = phi <2 x double> [ zeroinitializer, %.preheader139.us.us.us ], [ %i.cm, %bb.j ]
  %i.ai = call double @erand48(ptr noundef nonnull %i.a) #10
  %i.aj = fmul double %i.ai, 2.000000e+00         ; 3 uses
  %i.ak = fcmp olt double %i.aj, 1.000000e+00
  br i1 %i.ak, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = fsub double 2.000000e+00, %i.aj
  %i.am = call double @sqrt(double noundef %i.al) #10, !tbaa !7
  %i.an = fsub double 1.000000e+00, %i.am
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ao = call double @sqrt(double noundef %i.aj) #10, !tbaa !7
  %i.ap = fadd double %i.ao, -1.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = phi double [ %i.ap, %bb.f ], [ %i.an, %bb.e ]
  %i.ar = call double @erand48(ptr noundef nonnull %i.a) #10
  %i.as = fmul double %i.ar, 2.000000e+00         ; 3 uses
  %i.at = fcmp olt double %i.as, 1.000000e+00
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = fsub double 2.000000e+00, %i.as
  %i.av = call double @sqrt(double noundef %i.au) #10, !tbaa !7
  %i.aw = fsub double 1.000000e+00, %i.av
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ax = call double @sqrt(double noundef %i.as) #10, !tbaa !7
  %i.ay = fadd double %i.ax, -1.000000e+00
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = phi double [ %i.ay, %bb.i ], [ %i.aw, %bb.h ]
  %i.ba = fadd double %i.aq, 5.000000e-01
  %i.bb = fadd double %.047151.us.us.us, %i.az
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.bc = fmul double %i.ba, 5.000000e-01
  %i.bd = fmul double %i.bb, 5.000000e-01
  %i.be = fadd double %i.bc, %i.ac
  %i.bf = fadd double %i.bd, %i.z
  %i.bg = fmul double %i.be, f0x3F50000000000000
  %i.bh = fdiv double %i.bf, 7.680000e+02
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bg, i64 1
  %i.bk = fadd <2 x double> %i.bj, splat (double -5.000000e-01) ; 3 uses
  %i.bl = fmul <2 x double> %i.bk, zeroinitializer ; 2 uses
  %i.bm = fmul <2 x double> %i.bk, <double f0x3FE06AC72F44BE81, double f0x3FE5E8CA11BFD44F>
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = extractelement <2 x double> %i.bk, i64 0
  %i.bp = fmul double %i.bo, f0x3F9662D746DC5A9D
  %i.bq = fadd <2 x double> %i.bl, %i.bn
  %i.br = extractelement <2 x double> %i.bl, i64 1
  %i.bs = fsub double %i.br, %i.bp
  %i.bt = fadd <2 x double> %i.bq, <double 0.000000e+00, double f0xBFA5CC2D1960285F> ; 5 uses
  %i.bu = fadd double %i.bs, f0xBFEFF8929A5E7D34  ; 4 uses
  %i.bv = fmul <2 x double> %i.bt, splat (double 1.400000e+02)
  %i.bw = fmul double %i.bu, 1.400000e+02
  %i.bx = fadd <2 x double> %i.bv, <double 5.000000e+01, double 5.200000e+01>
  %i.by = fadd double %i.bw, 2.956000e+02
  %foldExtExtBinop = fmul <2 x double> %i.bt, %i.bt
  %i.bz = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ca = extractelement <2 x double> %i.bt, i64 0 ; 2 uses
  %i.cb = call double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double %i.bz)
  %i.cc = call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.cb)
  %sqrt.i57.us.us.us.us = call double @llvm.sqrt.f64(double %i.cc)
end_hunk_0
