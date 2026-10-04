Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_anequalizer?download=true
inline.NumInlined: 16
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@equalizer:bb.a
  %i.lx = extractelement <2 x double> %i.lw, i64 0
  %i.ly = fadd nsz double %i.lx, 1.000000e+00
  %i.lz = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.ma = insertelement <2 x double> %i.lz, double %i.kf, i64 1
  %i.mb = fdiv nsz <2 x double> %i.ma, %i.lf
  store <2 x double> %i.mb, ptr %i.jp, align 8, !tbaa !31
  %i.mc = extractelement <2 x double> %i.lw, i64 1
  %i.md = fadd nsz double %i.mc, 1.000000e+00
  %i.me = insertelement <2 x double> poison, double %i.md, i64 0
  %i.mf = insertelement <2 x double> %i.me, double %i.la, i64 1
  %i.mg = fdiv nsz <2 x double> %i.mf, %i.lt
  store <2 x double> %i.mg, ptr %i.km, align 8, !tbaa !31
  %i.mh = extractelement <2 x double> %i.ll, i64 1
  store double %i.mh, ptr %i.ko, align 8, !tbaa !61
  %i.mi = tail call nsz double @llvm.fmuladd.f64(double %i.jc, double %i.ix, double 1.000000e+00) ; 2 uses
  %i.mj = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.mi, i64 0 ; 2 uses
  %i.mk = fsub nsz <2 x double> %i.mj, %i.kc
  %i.ml = fmul nsz <2 x double> %i.mk, %i.kg
  %i.mm = fdiv nsz <2 x double> %i.ml, %i.lf
  store <2 x double> %i.mm, ptr %i.jq, align 8, !tbaa !31
  %i.mn = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.mi, i64 1 ; 2 uses
  %i.mo = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.kh, <2 x double> %i.mn)
  %i.mp = fmul nsz <2 x double> %i.ki, %i.mo
  %i.mq = fdiv nsz <2 x double> %i.mp, %i.lf
  store <2 x double> %i.mq, ptr %i.jt, align 8, !tbaa !31
  %i.mr = fsub nsz <2 x double> %i.mj, %i.kx
  %i.ms = fmul nsz <2 x double> %i.mr, %i.kg
  %i.mt = fdiv nsz <2 x double> %i.ms, %i.lt
  store <2 x double> %i.mt, ptr %i.kn, align 8, !tbaa !31
  %i.mu = shufflevector <2 x double> %i.js, <2 x double> %i.lu, <2 x i32> <i32 1, i32 3>
  %i.mv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.kh, <2 x double> %i.mn)
  %i.mw = fmul nsz <2 x double> %i.ki, %i.mv
  %i.mx = fdiv nsz <2 x double> %i.mw, %i.lt
  store <2 x double> %i.mx, ptr %i.kp, align 8, !tbaa !31
  %i.my = getelementptr i8, ptr %0, i64 208
  %i.mz = shufflevector <2 x double> %i.kq, <2 x double> %i.lb, <2 x i32> <i32 1, i32 3>
  %i.na = insertelement <2 x double> %i.kt, double 1.000000e+00, i64 0
  %i.nb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.kh, <2 x double> %i.na) ; 2 uses
  %i.nc = fmul nsz <2 x double> %i.kk, %i.nb
  %i.nd = fadd nsz <2 x double> %i.kk, %i.nb
  %i.ne = shufflevector <2 x double> %i.nc, <2 x double> %i.nd, <2 x i32> <i32 0, i32 3>
  %i.nf = fdiv nsz <2 x double> %i.ne, %i.lt
  store <2 x double> %i.nf, ptr %i.my, align 8, !tbaa !31
  br label %butterworth_bp_filter.exit

chebyshev1_fo_section.exit.us.preheader.i:        ; preds = %bb.q
  %i.ng = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.nh = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ni = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nh, <2 x double> %i.nh, <2 x double> <double f0x3FEB504F333F9DE6, double f0x3FC2BEC333018869>) ; 3 uses
  %i.nj = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.nk = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nl = fmul nsz <2 x double> %i.nk, <double f0x3FD87DE2A6AEA963, double f0x3FED906BCF328D46> ; 2 uses
  %i.nm = getelementptr i8, ptr %0, i64 40
  %i.nn = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = fmul nsz <2 x double> %i.no, <double f0x3FD87DE2A6AEA963, double f0x3FED906BCF328D46>
  %i.nq = insertelement <2 x double> poison, double %i.is, i64 0
  %i.nr = shufflevector <2 x double> %i.nq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ns = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nr, <2 x double> %i.nr, <2 x double> <double f0x3FEB504F333F9DE6, double f0x3FC2BEC333018869>) ; 3 uses
  %i.nt = getelementptr i8, ptr %0, i64 80
  %i.nu = getelementptr i8, ptr %0, i64 96
  %i.nv = getelementptr i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nv, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.nm, align 8, !tbaa !73
  %i.nw = getelementptr i8, ptr %0, i64 48
  %i.nx = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.jc, i64 1 ; 4 uses
  %i.nz = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oa = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.jc, i64 0 ; 4 uses
  %i.ob = getelementptr i8, ptr %0, i64 64
  %i.oc = getelementptr i8, ptr %0, i64 184
  %i.od = getelementptr i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ob, i8 0, i64 16, i1 false)
  %i.oe = getelementptr i8, ptr %0, i64 240
  %i.of = getelementptr i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.of, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.oc, align 8, !tbaa !73
  %i.og = getelementptr i8, ptr %0, i64 192
  %i.oh = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.oi = shufflevector <2 x double> %i.oh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oj = fmul nsz <2 x double> %i.nl, %i.oi      ; 2 uses
  %i.ok = shufflevector <2 x double> <double -1.000000e+00, double poison>, <2 x double> %i.oj, <2 x i32> <i32 0, i32 2>
  %i.ol = fmul nsz double %i.iv, %i.iv
  %i.om = insertelement <2 x double> poison, double %i.ol, i64 0
  %i.on = shufflevector <2 x double> %i.om, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.oo = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.on, <2 x double> %i.nz, <2 x double> %i.ok) ; 2 uses
  %i.op = fmul nsz <2 x double> %i.oa, %i.oo
  %i.oq = fadd nsz <2 x double> %i.oa, %i.oo
  %i.or = shufflevector <2 x double> %i.op, <2 x double> %i.oq, <2 x i32> <i32 0, i32 3>
  %i.os = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ot = insertelement <2 x double> poison, double %i.iv, i64 0
  %i.ou = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ov = fmul nsz <2 x double> %i.ou, %i.np      ; 2 uses
  %i.ow = fmul nsz <2 x double> %i.ou, %i.ni
  %i.ox = fmul nsz <2 x double> %i.ou, %i.nl
  %i.oy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ow, <2 x double> %i.ou, <2 x double> %i.ox)
  %i.oz = fadd nsz <2 x double> %i.oy, splat (double 1.000000e+00) ; 3 uses
  %i.pa = shufflevector <2 x double> %i.oz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pb = fmul nsz <2 x double> %i.ou, %i.ov      ; 2 uses
  %i.pc = insertelement <2 x double> %i.pb, double -1.000000e+00, i64 1
  %i.pd = fneg nsz <2 x double> %i.ov
  %i.pe = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.on, <2 x double> %i.nx, <2 x double> %i.pc) ; 2 uses
  %i.pf = fadd nsz <2 x double> %i.ny, %i.pe
  %i.pg = fmul nsz <2 x double> %i.ny, %i.pe
  %i.ph = shufflevector <2 x double> %i.pf, <2 x double> %i.pg, <2 x i32> <i32 0, i32 3>
  %i.pi = fdiv nsz <2 x double> %i.ph, %i.pa
  store <2 x double> %i.pi, ptr %i.nt, align 8, !tbaa !31
  %i.pj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.on, <2 x double> %i.ns, <2 x double> %i.pd)
  %i.pk = fadd nsz <2 x double> %i.pj, splat (double 1.000000e+00)
  %i.pl = fdiv nsz <2 x double> %i.pk, %i.oz      ; 2 uses
  %i.pm = extractelement <2 x double> %i.pl, i64 0
  store double %i.pm, ptr %i.nu, align 8, !tbaa !62
  %i.pn = fdiv nsz <2 x double> %i.or, %i.pa
  store <2 x double> %i.pn, ptr %i.nw, align 8, !tbaa !31
  %i.po = shufflevector <2 x double> <double poison, double -1.000000e+00>, <2 x double> %i.pb, <2 x i32> <i32 3, i32 1>
  %i.pp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.on, <2 x double> %i.os, <2 x double> %i.po) ; 2 uses
  %i.pq = fadd nsz <2 x double> %i.ny, %i.pp
  %i.pr = fmul nsz <2 x double> %i.ny, %i.pp
  %i.ps = shufflevector <2 x double> %i.pq, <2 x double> %i.pr, <2 x i32> <i32 0, i32 3>
  %i.pt = shufflevector <2 x double> %i.oz, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.pu = fdiv nsz <2 x double> %i.ps, %i.pt
  store <2 x double> %i.pu, ptr %i.od, align 8, !tbaa !31
  %i.pv = extractelement <2 x double> %i.pl, i64 1
  store double %i.pv, ptr %i.oe, align 8, !tbaa !62
  %i.pw = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.px = insertelement <2 x double> %i.oj, double -1.000000e+00, i64 0
  %i.py = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.on, <2 x double> %i.pw, <2 x double> %i.px) ; 2 uses
  %i.pz = fmul nsz <2 x double> %i.oa, %i.py
  %i.qa = fadd nsz <2 x double> %i.oa, %i.py
  %i.qb = shufflevector <2 x double> %i.pz, <2 x double> %i.qa, <2 x i32> <i32 0, i32 3>
  %i.qc = fdiv nsz <2 x double> %i.qb, %i.pt
  store <2 x double> %i.qc, ptr %i.og, align 8, !tbaa !31
  %i.qd = getelementptr i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qd, i8 0, i64 16, i1 false)
  br label %butterworth_bp_filter.exit

bb.r:                                             ; preds = %bb.a
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !45 ; 6 uses
  %i.qg = fcmp nsz ugt double %i.qf, -6.000000e+00
  br i1 %i.qg, label %bb.s, label %chebyshev2_compute_bw_gain_db.exit

bb.s:                                             ; preds = %bb.r
  %i.qh = tail call nsz double @llvm.fabs.f64(double %i.qf)
  %or.cond.i27 = fcmp nsz olt double %i.qh, 6.000000e+00
  br i1 %or.cond.i27, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.qi = fmul nnan nsz double %i.qf, 3.000000e-01
  br label %chebyshev2_compute_bw_gain_db.exit

bb.u:                                             ; preds = %bb.s
  %i.qj = fcmp nsz ult double %i.qf, 6.000000e+00
  br i1 %i.qj, label %chebyshev2_compute_bw_gain_db.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  br label %chebyshev2_compute_bw_gain_db.exit

chebyshev2_compute_bw_gain_db.exit:               ; preds = %bb.r, %bb.t, %bb.u, %bb.v
  %.0.i26 = phi nsz double [ 0.000000e+00, %bb.u ], [ %i.qi, %bb.t ], [ 3.000000e+00, %bb.v ], [ -3.000000e+00, %bb.r ]
  %i.qk = fcmp nsz oeq double %i.qf, 0.000000e+00
  br i1 %i.qk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %chebyshev2_compute_bw_gain_db.exit
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double 1.000000e+00, ptr %i.ql, align 8, !tbaa !73
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 1.000000e+00, ptr %i.qm, align 8, !tbaa !59
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double 1.000000e+00, ptr %i.qn, align 8, !tbaa !73
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 224
  store double 1.000000e+00, ptr %i.qo, align 8, !tbaa !59
  br label %butterworth_bp_filter.exit

bb.x:                                             ; preds = %chebyshev2_compute_bw_gain_db.exit
  %i.qp = insertelement <2 x double> poison, double %i.qf, i64 0
  %i.qq = insertelement <2 x double> %i.qp, double %.0.i26, i64 1
  %i.qr = fdiv nsz <2 x double> %i.qq, splat (double 2.000000e+01)
  %i.qs = fmul nsz <2 x double> %i.qr, splat (double f0x400A934F0979A371)
  %i.qt = tail call nsz <2 x double> @llvm.exp2.v2f64(<2 x double> %i.qs) ; 4 uses
  %i.qu = extractelement <2 x double> %i.qt, i64 1 ; 3 uses
  %i.qv = fneg nsz double %i.qu
  %i.qw = fmul nsz double %i.qu, %i.qv
  %i.qx = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.qw, i64 0
  %i.qy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qt, <2 x double> %i.qt, <2 x double> %i.qx) ; 2 uses
  %i.qz = extractelement <2 x double> %i.qy, i64 0
  %i.ra = extractelement <2 x double> %i.qy, i64 1
  %i.rb = fdiv nsz double %i.qz, %i.ra
  %i.rc = tail call nsz double @llvm.sqrt.f64(double %i.rb) ; 4 uses
  %i.rd = extractelement <2 x double> %i.qt, i64 0
  %i.re = tail call nsz double @llvm.pow.f64(double %i.rd, double 2.500000e-01) ; 5 uses
  %i.rf = tail call nsz double @llvm.fmuladd.f64(double %i.rc, double %i.rc, double 1.000000e+00)
  %i.rg = tail call nsz double @llvm.sqrt.f64(double %i.rf) ; 2 uses
  %i.rh = fadd nsz double %i.rc, %i.rg
  %i.ri = tail call nsz double @llvm.pow.f64(double %i.rh, double 2.500000e-01) ; 2 uses
  %i.rj = fmul nsz double %i.qu, %i.rg
  %i.rk = fadd nsz double %i.rc, %i.rj
  %i.rl = tail call nsz double @llvm.pow.f64(double %i.rk, double 2.500000e-01) ; 2 uses
  %i.rm = fdiv nsz double 1.000000e+00, %i.ri
  %i.rn = fsub nsz double %i.ri, %i.rm
  %i.ro = fmul nsz double %i.rn, 5.000000e-01     ; 9 uses
  %i.rp = extractelement <2 x double> %i.j, i64 1
  %i.rq = fmul nsz double %i.rp, 5.000000e-01
  %i.rr = tail call nsz double @llvm.tan.f64(double %i.rq) ; 14 uses
  %i.rs = extractelement <2 x double> %i.j, i64 0
  %i.rt = tail call nsz double @llvm.cos.f64(double %i.rs) ; 5 uses
  %i.ru = fmul nsz double %i.ro, 2.000000e+00     ; 2 uses
  %i.rv = fcmp nsz oeq double %i.rt, 1.000000e+00
  %i.rw = fcmp nsz oeq double %i.rt, -1.000000e+00
  %or.cond.i.i28 = or i1 %i.rv, %i.rw
  %i.rx = fmul nsz double %i.re, %i.re            ; 4 uses
  %i.ry = fdiv nsz double %i.rx, %i.rl
  %i.rz = fsub nsz double %i.rl, %i.ry
  %i.sa = fmul nsz double %i.rr, %i.rx            ; 8 uses
  %i.sb = insertelement <2 x double> poison, double %i.rt, i64 0
  %i.sc = insertelement <2 x double> %i.sb, double %i.rz, i64 1
  %i.sd = fmul nsz <2 x double> %i.sc, <double 2.000000e+00, double 5.000000e-01> ; 14 uses
  %i.se = extractelement <2 x double> %i.sd, i64 1 ; 6 uses
  br i1 %or.cond.i.i28, label %chebyshev2_fo_section.exit.us.preheader.i, label %chebyshev2_fo_section.exit.preheader.i

chebyshev2_fo_section.exit.preheader.i:           ; preds = %bb.x
  %i.sf = fneg nsz double %i.rr                   ; 4 uses
  %i.sg = fmul nsz double %i.rr, %i.sf            ; 2 uses
  %i.sh = fmul nsz double %i.sa, %i.sf            ; 2 uses
  %i.si = fmul nsz double %i.re, %i.se
  %i.sj = fmul nsz double %i.rt, -4.000000e+00    ; 6 uses
  %i.sk = fmul nsz double %i.re, 2.000000e+00
  %i.sl = fmul nsz double %i.sk, %i.se
  %i.sm = insertelement <2 x double> poison, double %i.ru, i64 0
  %i.sn = shufflevector <2 x double> %i.sm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.so = fmul nsz <2 x double> %i.sn, <double f0x3FD87DE2A6AEA963, double f0x3FED906BCF328D46> ; 3 uses
  %i.sp = getelementptr i8, ptr %0, i64 40
  %i.sq = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.sr = shufflevector <2 x double> %i.sq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ss = fmul nsz <2 x double> %i.sr, <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA964> ; 5 uses
  %i.st = getelementptr i8, ptr %0, i64 80
  %i.su = extractelement <2 x double> %i.ss, i64 0
  %i.sv = fmul nsz double %i.su, f0x3FED906BCF328D46
  %i.sw = getelementptr i8, ptr %0, i64 96
  %i.sx = insertelement <2 x double> %i.sd, double %i.rt, i64 0
  %i.sy = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.sv, i64 1
  %i.sz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sd, <2 x double> %i.sx, <2 x double> %i.sy) ; 5 uses
  %i.ta = insertelement <2 x double> %i.sz, double %i.rr, i64 1 ; 2 uses
  %i.tb = insertelement <2 x double> %i.sz, double %i.sh, i64 0
  %i.tc = insertelement <2 x double> <double 2.000000e+00, double poison>, double %i.sj, i64 1 ; 2 uses
  %i.td = getelementptr i8, ptr %0, i64 112
  store double 1.000000e+00, ptr %i.sp, align 8, !tbaa !73
  %i.te = getelementptr i8, ptr %0, i64 48
  %i.tf = insertelement <2 x double> poison, double %i.si, i64 0
  %i.tg = insertelement <2 x double> %i.tf, double %i.ro, i64 1 ; 2 uses
  %i.th = fmul nsz <2 x double> %i.tg, splat (double f0x3FD87DE2A6AEA963) ; 3 uses
  %i.ti = fneg nsz <2 x double> %i.th             ; 2 uses
  %i.tj = shufflevector <2 x double> %i.sz, <2 x double> %i.ti, <2 x i32> <i32 1, i32 2>
  %i.tk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tj, <2 x double> %i.ta, <2 x double> %i.tb)
  %i.tl = fmul nsz <2 x double> %i.tc, %i.tk
  %i.tm = extractelement <2 x double> %i.so, i64 0
  %i.tn = fmul nsz double %i.tm, %i.sf
  %i.to = insertelement <2 x double> poison, double %i.rr, i64 0 ; 2 uses
  %i.tp = shufflevector <2 x double> %i.to, <2 x double> %i.sz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.tq = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.sj, i64 0 ; 2 uses
  %i.tr = getelementptr i8, ptr %0, i64 64
  %i.ts = insertelement <2 x double> poison, double %i.ro, i64 0 ; 4 uses
  %i.tt = insertelement <2 x double> %i.ts, double %i.rr, i64 1 ; 5 uses
  %i.tu = insertelement <2 x double> <double f0x3FEB504F333F9DE6, double poison>, double %i.tn, i64 1
  %i.tv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tt, <2 x double> %i.tt, <2 x double> %i.tu) ; 3 uses
  %i.tw = shufflevector <2 x double> %i.tt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tx = shufflevector <2 x double> %i.ti, <2 x double> %i.ts, <2 x i32> <i32 1, i32 2>
  %i.ty = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tx, <2 x double> %i.tw, <2 x double> %i.tv) ; 2 uses
  %i.tz = insertelement <2 x double> <double poison, double f0x3FEB504F333F9DE6>, double %i.sj, i64 0 ; 2 uses
  %i.ua = fmul nsz <2 x double> %i.tz, %i.ty
  %i.ub = fadd nsz <2 x double> %i.tz, %i.ty
  %i.uc = shufflevector <2 x double> %i.ua, <2 x double> %i.ub, <2 x i32> <i32 0, i32 3>
  %i.ud = shufflevector <2 x double> %i.th, <2 x double> %i.tv, <2 x i32> <i32 1, i32 2>
  %i.ue = insertelement <2 x double> %i.tv, double %i.sg, i64 1
  %i.uf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ud, <2 x double> %i.tp, <2 x double> %i.ue)
  %i.ug = fmul nsz <2 x double> %i.tq, %i.uf
  %i.uh = getelementptr i8, ptr %0, i64 184
  %i.ui = getelementptr i8, ptr %0, i64 224
  %i.uj = extractelement <2 x double> %i.ss, i64 1
  %i.uk = getelementptr i8, ptr %0, i64 240
  %i.ul = shufflevector <2 x double> %i.sz, <2 x double> %i.ss, <2 x i32> <i32 1, i32 3>
  %i.um = fmul nsz <2 x double> %i.ul, <double 1.000000e+00, double f0x3FD87DE2A6AEA964>
  %i.un = shufflevector <2 x double> %i.th, <2 x double> %i.sd, <2 x i32> <i32 0, i32 3>
  %i.uo = insertelement <2 x double> %i.sd, double %i.rr, i64 0
  %i.up = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.un, <2 x double> %i.uo, <2 x double> %i.um) ; 4 uses
  %i.uq = extractelement <2 x double> %i.up, i64 0
  %i.ur = fmul nsz double %i.sj, %i.uq
  %i.us = insertelement <2 x double> %i.up, double %i.sh, i64 0
  %i.ut = insertelement <2 x double> poison, double %i.sl, i64 0
  %i.uu = shufflevector <2 x double> %i.ut, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uv = fmul nsz <2 x double> %i.uu, <double f0x3FD87DE2A6AEA963, double f0x3FED906BCF328D46>
  %i.uw = shufflevector <2 x double> %i.to, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.ux = fmul nsz <2 x double> %i.uw, %i.uv      ; 3 uses
  %i.uy = shufflevector <2 x double> %i.up, <2 x double> %i.ux, <2 x i32> <i32 1, i32 2>
  %i.uz = fmul nsz <2 x double> %i.uw, %i.so
  %i.va = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uw, <2 x double> %i.uw, <2 x double> %i.uz)
  %i.vb = shufflevector <2 x double> %i.ts, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vb, <2 x double> %i.vb, <2 x double> %i.va)
  %i.vd = fadd nsz <2 x double> %i.vc, <double f0x3FEB504F333F9DE6, double f0x3FC2BEC333018869> ; 3 uses
  %i.ve = shufflevector <2 x double> %i.vd, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.vf = fdiv nsz <2 x double> %i.tl, %i.ve
  store <2 x double> %i.vf, ptr %i.sw, align 8, !tbaa !31
  %i.vg = fneg nsz <2 x double> %i.ux
  %i.vh = insertelement <2 x double> poison, double %i.sa, i64 0
  %i.vi = shufflevector <2 x double> %i.vh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vi, <2 x double> %i.uw, <2 x double> %i.vg)
  %i.vk = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.vl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vk, <2 x double> %i.vk, <2 x double> %i.vj)
  %i.vm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ss, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA964>, <2 x double> %i.vl)
  %i.vn = fdiv nsz <2 x double> %i.vm, %i.vd      ; 2 uses
  %i.vo = extractelement <2 x double> %i.vn, i64 0
  store double %i.vo, ptr %i.td, align 8, !tbaa !61
  %i.vp = fdiv nsz <2 x double> %i.uc, %i.ve
  %i.vq = fdiv nsz <2 x double> %i.ug, %i.ve
  store <2 x double> %i.vq, ptr %i.te, align 8, !tbaa !31
  store <2 x double> %i.vp, ptr %i.tr, align 8, !tbaa !31
  %i.vr = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %2 = insertelement <2 x double> %i.vr, double %i.sa, i64 1
  %i.vs = insertelement <2 x double> %i.vr, double %i.rr, i64 1
  %3 = shufflevector <2 x double> %i.ss, <2 x double> %i.sd, <2 x i32> <i32 0, i32 3>
  %i.vt = insertelement <2 x double> %i.sd, double f0x3FED906BCF328D46, i64 0
  %i.vu = shufflevector <2 x double> %i.vd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.vv = getelementptr i8, ptr %0, i64 256
  %i.vw = extractelement <2 x double> %i.vn, i64 1
  store double %i.vw, ptr %i.vv, align 8, !tbaa !61
  store double 1.000000e+00, ptr %i.uh, align 8, !tbaa !73
  %i.vx = getelementptr i8, ptr %0, i64 192
  %i.vy = fmul nsz <2 x double> %i.tg, splat (double f0x3FED906BCF328D46) ; 3 uses
  %i.vz = fneg nsz <2 x double> %i.vy             ; 2 uses
  %i.wa = shufflevector <2 x double> %i.up, <2 x double> %i.vz, <2 x i32> <i32 1, i32 2>
  %i.wb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wa, <2 x double> %i.ta, <2 x double> %i.us)
  %i.wc = fmul nsz <2 x double> %i.tc, %i.wb
  %i.wd = insertelement <2 x double> %i.vy, double %i.sa, i64 1
  %i.we = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wd, <2 x double> %i.uw, <2 x double> %i.uy) ; 2 uses
  %i.wf = extractelement <2 x double> %i.we, i64 0
  %i.wg = fmul nsz double %i.sj, %i.wf
  %i.wh = shufflevector <2 x double> %i.we, <2 x double> %i.ux, <2 x i32> <i32 1, i32 3>
  %i.wi = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> %i.vs, <2 x double> %i.wh)
  %4 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> %i.vt, <2 x double> %i.wi) ; 2 uses
  %i.wj = insertelement <2 x double> %4, double %i.ur, i64 1
  %i.wk = fdiv nsz <2 x double> %i.wj, %i.ve
  store <2 x double> %i.wk, ptr %i.st, align 8, !tbaa !31
  %i.wl = extractelement <2 x double> %4, i64 1
  %i.wm = tail call nsz double @llvm.fmuladd.f64(double %i.uj, double f0x3FD87DE2A6AEA964, double %i.wl)
  %i.wn = insertelement <2 x double> poison, double %i.wm, i64 0
  %i.wo = insertelement <2 x double> %i.wn, double %i.wg, i64 1
  %i.wp = fdiv nsz <2 x double> %i.wo, %i.vu
  store <2 x double> %i.wp, ptr %i.ui, align 8, !tbaa !31
  %i.wq = fdiv nsz <2 x double> %i.wc, %i.vu
  store <2 x double> %i.wq, ptr %i.uk, align 8, !tbaa !31
  %i.wr = extractelement <2 x double> %i.so, i64 1
  %i.ws = fmul nsz double %i.wr, %i.sf
  %i.wt = getelementptr i8, ptr %0, i64 208
  %i.wu = insertelement <2 x double> <double f0x3FC2BEC333018869, double poison>, double %i.ws, i64 1
  %i.wv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tt, <2 x double> %i.tt, <2 x double> %i.wu) ; 3 uses
  %i.ww = shufflevector <2 x double> %i.vz, <2 x double> %i.ts, <2 x i32> <i32 1, i32 2>
  %i.wx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ww, <2 x double> %i.tw, <2 x double> %i.wv) ; 2 uses
  %i.wy = insertelement <2 x double> <double poison, double f0x3FC2BEC333018869>, double %i.sj, i64 0 ; 2 uses
  %i.wz = fmul nsz <2 x double> %i.wy, %i.wx
  %i.xa = fadd nsz <2 x double> %i.wy, %i.wx
  %i.xb = shufflevector <2 x double> %i.wz, <2 x double> %i.xa, <2 x i32> <i32 0, i32 3>
  %i.xc = fdiv nsz <2 x double> %i.xb, %i.vu
  %i.xd = shufflevector <2 x double> %i.vy, <2 x double> %i.wv, <2 x i32> <i32 1, i32 2>
  %i.xe = insertelement <2 x double> %i.wv, double %i.sg, i64 1
  %i.xf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xd, <2 x double> %i.tp, <2 x double> %i.xe)
  %i.xg = fmul nsz <2 x double> %i.tq, %i.xf
  %i.xh = fdiv nsz <2 x double> %i.xg, %i.vu
  store <2 x double> %i.xh, ptr %i.vx, align 8, !tbaa !31
  store <2 x double> %i.xc, ptr %i.wt, align 8, !tbaa !31
  br label %butterworth_bp_filter.exit

chebyshev2_fo_section.exit.us.preheader.i:        ; preds = %bb.x
  %i.xi = extractelement <2 x double> %i.sd, i64 0 ; 2 uses
  %i.xj = fmul nsz double %i.rr, 2.000000e+00     ; 2 uses
  %i.xk = fmul nsz double %i.xj, %i.ro            ; 2 uses
  %i.xl = fneg nsz double %i.ro
  %i.xm = fneg nsz double %i.se
  %i.xn = fmul nsz double %i.se, %i.xm
  %i.xo = fmul nsz double %i.xj, %i.re
  %i.xp = insertelement <2 x double> poison, double %i.ru, i64 0
  %i.xq = shufflevector <2 x double> %i.xp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xr = fmul nsz <2 x double> %i.xq, <double f0x3FD87DE2A6AEA963, double f0x3FED906BCF328D46>
  %i.xs = getelementptr i8, ptr %0, i64 40
  %i.xt = getelementptr i8, ptr %0, i64 80
  %i.xu = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.xv = shufflevector <2 x double> %i.xu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xw = fmul nsz <2 x double> %i.xv, <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA964> ; 4 uses
  %i.xx = getelementptr i8, ptr %0, i64 96
  %i.xy = getelementptr i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xy, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.xs, align 8, !tbaa !73
  %i.xz = getelementptr i8, ptr %0, i64 48
  %i.ya = insertelement <2 x double> poison, double %i.ro, i64 0 ; 2 uses
  %i.yb = insertelement <2 x double> %i.ya, double %i.xk, i64 1
  %i.yc = insertelement <2 x double> <double poison, double f0xBFD87DE2A6AEA963>, double %i.xl, i64 0
  %i.yd = fmul nsz <2 x double> %i.yb, %i.yc
  %i.ye = insertelement <2 x double> poison, double %i.rr, i64 0
  %i.yf = shufflevector <2 x double> %i.ye, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.yg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yf, <2 x double> %i.yf, <2 x double> %i.yd) ; 2 uses
  %i.yh = extractelement <2 x double> %i.yg, i64 0 ; 2 uses
  %i.yi = fadd nsz double %i.yh, f0xBFEB504F333F9DE6
  %i.yj = fmul nsz double %i.xi, %i.yi
  %i.yk = extractelement <2 x double> %i.yg, i64 1
  %i.yl = tail call nsz double @llvm.fmuladd.f64(double %i.ro, double %i.ro, double %i.yk)
  %i.ym = fadd nsz double %i.yl, f0x3FEB504F333F9DE6
  %i.yn = insertelement <2 x double> poison, double %i.yj, i64 0
  %i.yo = insertelement <2 x double> %i.yn, double %i.ym, i64 1
  %i.yp = getelementptr i8, ptr %0, i64 64
  %i.yq = getelementptr i8, ptr %0, i64 184
  %i.yr = getelementptr i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yp, i8 0, i64 16, i1 false)
  %i.ys = tail call nsz double @llvm.fmuladd.f64(double %i.sa, double %i.rr, double %i.xn)
  %i.yt = fneg nsz <2 x double> %i.xw
  %i.yu = insertelement <2 x double> poison, double %i.ys, i64 0
  %i.yv = shufflevector <2 x double> %i.yu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yt, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA964>, <2 x double> %i.yv) ; 2 uses
  %i.yx = insertelement <2 x double> %i.yw, double %i.xo, i64 1
  %i.yy = fmul nsz <2 x double> %i.yx, %i.sd      ; 2 uses
  %shift = shufflevector <2 x double> %i.yw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x double> %i.sd, %shift
  %i.yz = shufflevector <2 x double> %i.yy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.za = fmul nsz <2 x double> %i.yz, <double f0x3FD87DE2A6AEA963, double f0x3FED906BCF328D46> ; 3 uses
  %i.zb = extractelement <2 x double> %i.za, i64 0
  %i.zc = tail call nsz double @llvm.fmuladd.f64(double %i.sa, double %i.rr, double %i.zb)
  %i.zd = tail call nsz double @llvm.fmuladd.f64(double %i.se, double %i.se, double %i.zc)
  %i.ze = fmul nsz <2 x double> %i.yf, %i.xr
  %i.zf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yf, <2 x double> %i.yf, <2 x double> %i.ze)
  %i.zg = shufflevector <2 x double> %i.ya, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zg, <2 x double> %i.zg, <2 x double> %i.zf)
  %i.zi = fadd nsz <2 x double> %i.zh, <double f0x3FEB504F333F9DE6, double f0x3FC2BEC333018869> ; 3 uses
  %i.zj = shufflevector <2 x double> %i.zi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zk = fneg nsz <2 x double> %i.za
  %i.zl = insertelement <2 x double> poison, double %i.sa, i64 0
  %i.zm = shufflevector <2 x double> %i.zl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zm, <2 x double> %i.yf, <2 x double> %i.zk)
  %i.zo = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.zp = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.zq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zp, <2 x double> %i.zp, <2 x double> %i.zn)
  %i.zr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xw, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA964>, <2 x double> %i.zq)
  %i.zs = fdiv nsz <2 x double> %i.zr, %i.zi      ; 2 uses
  %i.zt = extractelement <2 x double> %i.zs, i64 0
  store double %i.zt, ptr %i.xx, align 8, !tbaa !62
  %i.zu = fdiv nsz <2 x double> %i.yo, %i.zj
  store <2 x double> %i.zu, ptr %i.xz, align 8, !tbaa !31
  %i.zv = insertelement <2 x double> %i.xw, double %i.sa, i64 1
  %i.zw = insertelement <2 x double> <double f0x3FED906BCF328D46, double poison>, double %i.rr, i64 1
  %i.zx = insertelement <2 x double> %i.za, double %i.zd, i64 0
  %i.zy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zv, <2 x double> %i.zw, <2 x double> %i.zx) ; 2 uses
  %i.zz = shufflevector <2 x double> %i.zy, <2 x double> %i.yy, <2 x i32> <i32 0, i32 2>
  %i.aaa = fdiv nsz <2 x double> %i.zz, %i.zj
  store <2 x double> %i.aaa, ptr %i.xt, align 8, !tbaa !31
  %i.aab = shufflevector <2 x double> %i.zi, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aac = getelementptr i8, ptr %0, i64 240
  %i.aad = extractelement <2 x double> %i.zs, i64 1
  store double %i.aad, ptr %i.aac, align 8, !tbaa !62
  %i.aae = getelementptr i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aae, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.yq, align 8, !tbaa !73
  %i.aaf = fadd nsz double %i.yh, f0xBFC2BEC333018869
  %i.aag = getelementptr i8, ptr %0, i64 192
  %i.aah = fmul nsz double %i.xk, f0xBFED906BCF328D46
  %i.aai = fmul nsz double %i.xi, %i.aaf
  %i.aaj = insertelement <2 x double> %i.zo, double %i.rr, i64 1 ; 2 uses
  %i.aak = shufflevector <2 x double> %i.zy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aal = insertelement <2 x double> %i.aak, double %i.aah, i64 1
  %i.aam = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaj, <2 x double> %i.aaj, <2 x double> %i.aal)
  %5 = shufflevector <2 x double> %i.xw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %6 = insertelement <2 x double> %5, double %i.ro, i64 1 ; 2 uses
  %i.aan = insertelement <2 x double> %6, double f0x3FD87DE2A6AEA964, i64 0
  %7 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %i.aan, <2 x double> %i.aam) ; 2 uses
  %i.aao = shufflevector <2 x double> %7, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.aap = fdiv nsz <2 x double> %i.aao, %i.aab
  store <2 x double> %i.aap, ptr %i.yr, align 8, !tbaa !31
  %i.aaq = extractelement <2 x double> %7, i64 1
  %i.aar = fadd nsz double %i.aaq, f0x3FC2BEC333018869
  %i.aas = insertelement <2 x double> poison, double %i.aai, i64 0
  %i.aat = insertelement <2 x double> %i.aas, double %i.aar, i64 1
  %i.aau = fdiv nsz <2 x double> %i.aat, %i.aab
  store <2 x double> %i.aau, ptr %i.aag, align 8, !tbaa !31
  %i.aav = getelementptr i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aav, i8 0, i64 16, i1 false)
  br label %butterworth_bp_filter.exit

butterworth_bp_filter.exit:                       ; preds = %chebyshev2_fo_section.exit.us.preheader.i, %chebyshev2_fo_section.exit.preheader.i, %bb.w, %chebyshev1_fo_section.exit.us.preheader.i, %chebyshev1_fo_section.exit.preheader.i, %bb.p, %butterworth_fo_section.exit.us.preheader.i, %butterworth_fo_section.exit.preheader.i, %bb.h, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tan.f64(double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #7

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare i32 @ff_append_outpad(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_video(ptr noundef initializes((40, 48)) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load <2 x i32>, ptr %i.g, align 4, !tbaa !21
  store <2 x i32> %i.j, ptr %i.h, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  tail call void @av_frame_free(ptr noundef nonnull %i.k) #14
  %i.l = load i32, ptr %i.h, align 8, !tbaa !75
  %i.m = load i32, ptr %i.i, align 4, !tbaa !76
  %i.n = tail call ptr @ff_get_video_buffer(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %i.m) #14 ; 3 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !46
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.o, align 8, !tbaa !21
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !21
  tail call fastcc void @draw_curves(ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef nonnull %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0
}

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_curves(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = tail call noalias ptr @av_strdup(ptr noundef %i.f) #14 ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  %i.m = mul nsw i32 %i.l, %i.j
  %i.n = sext i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 0, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !48
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph155, label %._crit_edge156

.lr.ph155:                                        ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph155, %._crit_edge152
  %.0125153 = phi i32 [ 0, %.lr.ph155 ], [ %i.hh, %._crit_edge152 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 -1, ptr %i.b, align 4
  %i.w = icmp eq i32 %.0125153, 0
  %i.x = select i1 %i.w, ptr %i.g, ptr null
  %i.y = call ptr @av_strtok(ptr noundef %i.x, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.a) #14 ; 2 uses
  %.not131 = icmp eq ptr %i.y, null
  br i1 %.not131, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = call i32 @av_parse_color(ptr noundef nonnull %i.b, ptr noundef nonnull %i.y, i32 noundef -1, ptr noundef %0) #14 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !84  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph151.preheader, label %._crit_edge152

.lr.ph151.preheader:                              ; preds = %bb.e
  %i.ac = uitofp nneg i32 %i.aa to double
  br label %.lr.ph151

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %.loopexit139
  %i.ad = phi double [ %i.hf, %.loopexit139 ], [ %i.ac, %.lr.ph151.preheader ]
  %i.ae = phi i32 [ %i.he, %.loopexit139 ], [ %i.aa, %.lr.ph151.preheader ]
  %.0120149 = phi double [ %i.hd, %.loopexit139 ], [ 0.000000e+00, %.lr.ph151.preheader ] ; 4 uses
  %.0121148 = phi i32 [ %.0.i, %.loopexit139 ], [ -1, %.lr.ph151.preheader ] ; 2 uses
  %i.af = load i32, ptr %i.s, align 8, !tbaa !85
  %.not132 = icmp eq i32 %i.af, 0
  %.pre = add nsw i32 %i.ae, -1
  %.pre162 = sitofp nsz i32 %.pre to double       ; 2 uses
  br i1 %.not132, label %.lr.ph151._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph151
  %i.ag = fdiv nsz double %.0120149, %i.ad
  %i.ah = call nsz double @llvm.pow.f64(double %.pre162, double %i.ag)
  br label %.lr.ph151._crit_edge

.lr.ph151._crit_edge:                             ; preds = %.lr.ph151, %bb.f
  %i.ai = phi nsz double [ %i.ah, %bb.f ], [ %.0120149, %.lr.ph151 ]
  %i.aj = load i32, ptr %i.t, align 4, !tbaa !30  ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph151._crit_edge
  %i.al = fmul nsz double %i.ai, f0x400921FB54442D18
  %i.am = fdiv nsz double %i.al, %.pre162
  %sincos = call nsz { double, double } @llvm.sincos.f64(double %i.am) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 3 uses
  %i.an = fneg nsz double %sin
  %cos = extractvalue { double, double } %sincos, 1 ; 4 uses
  %i.ao = fmul nsz double %sin, %sin              ; 3 uses
  %i.ap = fmul nsz double %cos, %cos              ; 4 uses
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.ar = fmul nsz double %i.ap, -8.000000e+00
  %i.as = fsub nsz double %i.ap, %i.ao
  %i.at = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = insertelement <2 x double> <double -3.000000e+00, double poison>, double %i.ar, i64 1
  %i.aw = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ap, i64 0
  %i.ax = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.av, <2 x double> %i.aw) ; 2 uses
  %i.ay = fneg nsz double %i.ao
  %i.az = call nsz double @llvm.fmuladd.f64(double %i.ap, double 3.000000e+00, double %i.ay)
  %i.ba = fmul nsz double %cos, 2.000000e+00
  %wide.trip.count = zext nneg i32 %i.aj to i64
  %i.bb = insertelement <4 x double> poison, double %cos, i64 0
  %i.bc = shufflevector <4 x double> %i.bb, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bd = shufflevector <2 x double> %i.ax, <2 x double> poison, <4 x i32> zeroinitializer
  %i.be = shufflevector <2 x double> %i.ax, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bf = insertelement <4 x double> poison, double %i.as, i64 0
  %i.bg = shufflevector <4 x double> %i.bf, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bh = insertelement <4 x double> poison, double %i.ba, i64 0
  %i.bi = shufflevector <4 x double> %i.bh, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bj = insertelement <4 x double> poison, double %i.az, i64 0
  %i.bk = shufflevector <4 x double> %i.bj, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bl = insertelement <4 x double> poison, double %i.an, i64 0
  %i.bm = shufflevector <4 x double> %i.bl, <4 x double> poison, <4 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0118145 = phi double [ 1.000000e+00, %.lr.ph ], [ %.2, %.loopexit ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [328 x i8], ptr %i.aq, i64 %indvars.iv ; 14 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !57
  %.not136 = icmp eq i32 %i.bp, %.0125153
  br i1 %.not136, label %bb.h, label %.loopexit

end_hunk_0
