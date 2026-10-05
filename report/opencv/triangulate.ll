Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/triangulate?download=true
inline.NumInlined: 264
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv14correctMatchesERKNS_11_InputArrayES2_S2_RKNS_12_OutputArrayES5_:bb.a
  %i.lf = load ptr, ptr %i.ff, align 8, !tbaa !37
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.lf, i64 %indvars.iv
  br label %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516

bb.cy:                                            ; preds = %bb.cw
  %i.lh = load i32, ptr %i.fd, align 8, !tbaa !30
  %i.li = icmp eq i32 %i.lh, 1
  br i1 %i.li, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.lj = load ptr, ptr %i.ff, align 8, !tbaa !37
  %i.lk = load i64, ptr %i.fg, align 8, !tbaa !26
  %i.ll = mul i64 %i.lk, %indvars.iv
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ll
  br label %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516

bb.da:                                            ; preds = %bb.cy
  %i.ln = load i32, ptr %i.fe, align 4, !tbaa !79 ; 3 uses
  %i.lo = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.lp = sdiv i32 %i.lo, %i.ln                   ; 2 uses
  %i.lq = mul nsw i32 %i.lp, %i.ln                ; 0 uses
  %.recomposed754 = srem i32 %i.lo, %i.ln
  %i.lr = load ptr, ptr %i.ff, align 8, !tbaa !37
  %i.ls = load i64, ptr %i.fg, align 8, !tbaa !26
  %i.lt = sext i32 %i.lp to i64
  %i.lu = mul i64 %i.ls, %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lu
  %i.lw = sext i32 %.recomposed754 to i64
  %i.lx = getelementptr inbounds [16 x i8], ptr %i.lv, i64 %i.lw
  br label %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516

_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516:       ; preds = %bb.cv, %bb.cx, %bb.cz, %bb.da
  %.0.i515 = phi ptr [ %i.kz, %bb.cv ], [ %i.lg, %bb.cx ], [ %i.lm, %bb.cz ], [ %i.lx, %bb.da ]
  %i.ly = load <2 x double>, ptr %.0.i515, align 8, !tbaa !28
  br label %bb.db

bb.db:                                            ; preds = %_ZN2cv3Mat2atINS_6Point_IfEEEERT_i.exit511, %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516
  %i.lz = phi <2 x double> [ %i.ju, %_ZN2cv3Mat2atINS_6Point_IfEEEERT_i.exit511 ], [ %i.ly, %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516 ] ; 5 uses
  %i.ma = phi <2 x double> [ %i.jt, %_ZN2cv3Mat2atINS_6Point_IfEEEERT_i.exit511 ], [ %i.kv, %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #12
  %i.mb = load double, ptr %i.fj, align 16, !tbaa !28, !noalias !81 ; 3 uses
  %i.mc = fadd double %i.mb, 0.000000e+00
  %i.md = load double, ptr %i.fk, align 8, !tbaa !28, !noalias !81 ; 3 uses
  %i.me = load double, ptr %i.fl, align 16, !tbaa !28, !noalias !81 ; 2 uses
  %i.mf = insertelement <2 x double> poison, double %i.md, i64 0
  %i.mg = insertelement <2 x double> %i.mf, double %i.mb, i64 1
  %i.mh = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.mc, i64 0
  %i.mi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> zeroinitializer, <2 x double> %i.mh) ; 2 uses
  %i.mj = extractelement <2 x double> %i.mi, i64 1
  %i.mk = fadd double %i.md, %i.mj
  %i.ml = insertelement <2 x double> poison, double %i.me, i64 0
  %i.mm = shufflevector <2 x double> %i.ml, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mn = insertelement <2 x double> %i.mi, double %i.mk, i64 1
  %i.mo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mm, <2 x double> zeroinitializer, <2 x double> %i.mn) ; 4 uses
  %i.mp = extractelement <2 x double> %i.lz, i64 0 ; 2 uses
  %i.mq = extractelement <2 x double> %i.lz, i64 1 ; 2 uses
  %i.mr = call double @llvm.fmuladd.f64(double %i.mp, double %i.mb, double 0.000000e+00)
  %i.ms = call double @llvm.fmuladd.f64(double %i.mq, double %i.md, double %i.mr)
  %i.mt = fadd double %i.me, %i.ms                ; 2 uses
  %i.mu = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = extractelement <2 x double> %i.ma, i64 1
  %i.mw = load <2 x double>, ptr %26, align 16, !tbaa !28, !noalias !81 ; 4 uses
  %i.mx = extractelement <2 x double> %i.mw, i64 0
  %i.my = fadd double %i.mx, 0.000000e+00
  %i.mz = load <2 x double>, ptr %i.fh, align 8, !tbaa !28, !noalias !81 ; 4 uses
  %i.na = extractelement <2 x double> %i.mz, i64 0
  %i.nb = load <2 x double>, ptr %i.fi, align 16, !tbaa !28, !noalias !81 ; 5 uses
  %i.nc = extractelement <2 x double> %i.nb, i64 0
  %i.nd = extractelement <2 x double> %i.mw, i64 1
  %i.ne = extractelement <2 x double> %i.mz, i64 1
  %i.nf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.ng = fadd <2 x double> %i.mz, %i.nf          ; 2 uses
  %i.nh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nb, <2 x double> zeroinitializer, <2 x double> %i.ng) ; 3 uses
  %i.ni = insertelement <2 x double> %i.lz, double 1.000000e+00, i64 1
  %i.nj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.mw, <2 x double> zeroinitializer)
  %i.nk = shufflevector <2 x double> %i.lz, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.nl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.nk, <2 x double> %i.nj) ; 2 uses
  %i.nm = insertelement <2 x double> %i.nl, double 0.000000e+00, i64 0
  %i.nn = call double @llvm.fmuladd.f64(double %i.na, double 0.000000e+00, double %i.my)
  %i.no = call double @llvm.fmuladd.f64(double %i.nc, double 0.000000e+00, double %i.nn) ; 3 uses
  %i.np = fadd double %i.no, 0.000000e+00
  %i.nq = insertelement <2 x double> %i.nb, double %i.no, i64 0
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nq, <2 x double> zeroinitializer, <2 x double> %i.nm) ; 4 uses
  %i.ns = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.no, i64 1
  %i.nt = shufflevector <2 x double> %i.nr, <2 x double> %i.ma, <2 x i32> <i32 1, i32 2>
  %i.nu = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.np, i64 0
  %i.nv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ns, <2 x double> %i.nt, <2 x double> %i.nu) ; 2 uses
  %i.nw = shufflevector <2 x double> %i.nb, <2 x double> %i.nh, <2 x i32> <i32 1, i32 2>
  %i.nx = shufflevector <2 x double> %i.ng, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ny = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> zeroinitializer, <2 x double> %i.nx) ; 2 uses
  %i.nz = fadd <2 x double> %i.nh, <double 0.000000e+00, double -0.000000e+00>
  %i.oa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ny, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %i.nz)
  %i.ob = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> zeroinitializer, <2 x double> %i.oa)
  store <2 x double> %i.oc, ptr %i.fn, align 8, !tbaa !28, !alias.scope !82
  %i.od = shufflevector <2 x double> %i.nh, <2 x double> %i.nr, <2 x i32> <i32 0, i32 3>
  %i.oe = insertelement <2 x double> %i.nv, double 0.000000e+00, i64 0
  %i.of = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.od, <2 x double> %i.ma, <2 x double> %i.oe) ; 2 uses
  %i.og = shufflevector <2 x double> %i.nr, <2 x double> %i.of, <2 x i32> <i32 0, i32 3>
  %i.oh = shufflevector <2 x double> %i.nr, <2 x double> %i.mo, <2 x i32> <i32 1, i32 2>
  %i.oi = fadd <2 x double> %i.og, %i.oh          ; 2 uses
  %i.oj = shufflevector <2 x double> %i.nv, <2 x double> %i.oi, <2 x i32> <i32 0, i32 2>
  %i.ok = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> zeroinitializer, <2 x double> %i.oj)
  store <2 x double> %i.ok, ptr %32, align 16, !tbaa !28, !alias.scope !82
  %i.ol = extractelement <2 x double> %i.oi, i64 1
  store double %i.ol, ptr %i.fm, align 16, !tbaa !28, !alias.scope !82
  %i.om = call double @llvm.fmuladd.f64(double %i.mp, double %i.nd, double 0.000000e+00)
  %i.on = insertelement <2 x double> poison, double %i.mt, i64 0
  %i.oo = shufflevector <2 x double> %i.on, <2 x double> poison, <2 x i32> zeroinitializer
  %i.op = call double @llvm.fmuladd.f64(double %i.mq, double %i.ne, double %i.om)
  %i.oq = insertelement <2 x double> %i.nl, double %i.op, i64 1
  %i.or = fadd <2 x double> %i.nb, %i.oq          ; 5 uses
  %i.os = extractelement <2 x double> %i.or, i64 0
  %i.ot = fadd double %i.os, 0.000000e+00
  %i.ou = extractelement <2 x double> %i.or, i64 1
  %i.ov = shufflevector <2 x double> %i.ny, <2 x double> %i.or, <2 x i32> <i32 0, i32 2>
  %i.ow = shufflevector <2 x double> %i.ma, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ox = insertelement <2 x double> %i.of, double 0.000000e+00, i64 1
  %i.oy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ov, <2 x double> %i.ow, <2 x double> %i.ox)
  %i.oz = shufflevector <2 x double> %i.mo, <2 x double> %i.or, <2 x i32> <i32 1, i32 3>
  %i.pa = fadd <2 x double> %i.oy, %i.oz          ; 2 uses
  %i.pb = extractelement <2 x double> %i.pa, i64 0
  store double %i.pb, ptr %i.fo, align 8, !tbaa !28, !alias.scope !82
  %i.pc = insertelement <2 x double> %i.ma, double 0.000000e+00, i64 1
  %i.pd = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ot, i64 1
  %i.pe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.or, <2 x double> %i.pc, <2 x double> %i.pd) ; 2 uses
  %i.pf = shufflevector <2 x double> %i.pe, <2 x double> %i.pa, <2 x i32> <i32 1, i32 3>
  %i.pg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oo, <2 x double> zeroinitializer, <2 x double> %i.pf)
  store <2 x double> %i.pg, ptr %i.fp, align 16, !tbaa !28, !alias.scope !82
  %i.ph = extractelement <2 x double> %i.pe, i64 0
  %i.pi = call double @llvm.fmuladd.f64(double %i.ou, double %i.mv, double %i.ph)
  %i.pj = fadd double %i.pi, %i.mt
  store double %i.pj, ptr %i.fr, align 16, !tbaa !28, !alias.scope !82
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #12
  store i32 -1056833530, ptr %33, align 8, !tbaa !29
  store ptr %32, ptr %i.ft, align 8, !tbaa !11
  store i64 12884901891, ptr %i.fs, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #12
  store i32 -1040056314, ptr %34, align 8, !tbaa !29
  store ptr %29, ptr %i.fu, align 8, !tbaa !11
  store i64 12884901889, ptr %i.fv, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #12
  store i32 -1040056314, ptr %35, align 8, !tbaa !29
  store ptr %27, ptr %i.fw, align 8, !tbaa !11
  store i64 12884901891, ptr %i.fx, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #12
  store i32 -1040056314, ptr %36, align 8, !tbaa !29
  store ptr %28, ptr %i.fy, align 8, !tbaa !11
  store i64 12884901891, ptr %i.fz, align 8, !tbaa !30
  invoke void @_ZN2cv8SVDecompERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_i(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %36, i32 noundef 0)
          to label %bb.dc unwind label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #12
  %i.pk = load double, ptr %i.gd, align 8, !tbaa !28 ; 2 uses
  %i.pl = load double, ptr %i.ge, align 8, !tbaa !28 ; 2 uses
  %i.pm = load double, ptr %i.gf, align 8, !tbaa !28
  %i.pn = insertelement <2 x double> poison, double %i.pk, i64 0
  %i.po = insertelement <2 x double> %i.pn, double %i.pl, i64 1
  %i.pp = load double, ptr %i.fr, align 16, !tbaa !28, !noalias !83 ; 2 uses
  %i.pq = load double, ptr %i.fm, align 16, !tbaa !28, !noalias !83 ; 2 uses
  %i.pr = load double, ptr %i.fo, align 8, !tbaa !28, !noalias !83 ; 2 uses
  %i.ps = load <2 x double>, ptr %32, align 16, !tbaa !28, !noalias !83 ; 3 uses
  %i.pt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ps, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.pu = load <2 x double>, ptr %i.fn, align 8, !tbaa !28, !noalias !83 ; 3 uses
  %i.pv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pu, <2 x double> zeroinitializer, <2 x double> %i.pt) ; 2 uses
  %i.pw = extractelement <2 x double> %i.pv, i64 0
  %i.px = extractelement <2 x double> %i.pv, i64 1
  %i.py = call double @llvm.fmuladd.f64(double %i.pq, double 0.000000e+00, double 0.000000e+00)
  %i.pz = call double @llvm.fmuladd.f64(double %i.pr, double 0.000000e+00, double %i.py)
  %i.qa = fadd double %i.pp, %i.pz
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #12
  %i.qb = load <2 x double>, ptr %i.ga, align 8
  %i.qc = shufflevector <2 x double> %i.qb, <2 x double> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.qd = load double, ptr %i.gb, align 8, !tbaa !28 ; 2 uses
  %i.qe = insertelement <2 x double> poison, double %i.qd, i64 0
  %i.qf = insertelement <2 x double> %i.qe, double %i.pl, i64 1 ; 2 uses
  %i.qg = fmul <2 x double> %i.qf, %i.qf
  %i.qh = insertelement <2 x double> %i.qc, double %i.pk, i64 1 ; 2 uses
  %i.qi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qh, <2 x double> %i.qh, <2 x double> %i.qg)
  %i.qj = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.qi) ; 3 uses
  %i.qk = insertelement <2 x double> %i.qc, double %i.qd, i64 1
  %i.ql = shufflevector <2 x double> %i.qj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qm = fdiv <2 x double> %i.qk, %i.ql          ; 2 uses
  %i.qn = load double, ptr %i.gc, align 8, !tbaa !28
  %i.qo = extractelement <2 x double> %i.qm, i64 0 ; 2 uses
  %i.qp = fneg double %i.qo
  %i.qq = extractelement <2 x double> %i.qm, i64 1 ; 2 uses
  %i.qr = fneg double %i.qq
  %i.qs = insertelement <2 x double> poison, double %i.qn, i64 0
  %i.qt = insertelement <2 x double> %i.qs, double %i.pm, i64 1
  %i.qu = fdiv <2 x double> %i.qt, %i.qj          ; 3 uses
  %i.qv = fcmp olt <2 x double> %i.qu, zeroinitializer ; 3 uses
  %i.qw = extractelement <2 x i1> %i.qv, i64 0    ; 2 uses
  %.sroa.8629.0 = select i1 %i.qw, double %i.qr, double %i.qq ; 2 uses
  %.sroa.0626.0 = select i1 %i.qw, double %i.qp, double %i.qo ; 3 uses
  %i.qx = fneg <2 x double> %i.qu
  %i.qy = select <2 x i1> %i.qv, <2 x double> %i.qx, <2 x double> %i.qu ; 25 uses
  %i.qz = shufflevector <2 x double> %i.qj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ra = fdiv <2 x double> %i.po, %i.qz          ; 2 uses
  %i.rb = fneg <2 x double> %i.ra
  %i.rc = shufflevector <2 x i1> %i.qv, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.rd = select <2 x i1> %i.rc, <2 x double> %i.rb, <2 x double> %i.ra ; 5 uses
  %i.re = fneg double %.sroa.8629.0
  %i.rf = extractelement <2 x double> %i.rd, i64 1
  %i.rg = fneg double %i.rf                       ; 4 uses
  %i.rh = extractelement <2 x double> %i.rd, i64 0 ; 2 uses
  %i.ri = extractelement <2 x double> %i.ps, i64 0
  %i.rj = extractelement <2 x double> %i.pu, i64 0
  %i.rk = extractelement <2 x double> %i.ps, i64 1
  %i.rl = extractelement <2 x double> %i.pu, i64 1
  %i.rm = load double, ptr %i.fp, align 16, !tbaa !28, !noalias !83 ; 2 uses
  %i.rn = load double, ptr %i.fq, align 8, !tbaa !28, !noalias !83 ; 2 uses
  %i.ro = fadd double %i.rm, %i.pw
  %i.rp = fadd double %i.rn, %i.px
  %i.rq = insertelement <2 x double> poison, double %i.ro, i64 0
  %i.rr = insertelement <2 x double> poison, double %i.rp, i64 0
  %i.rs = call double @llvm.fmuladd.f64(double %i.rg, double %i.ri, double 0.000000e+00)
  %i.rt = call double @llvm.fmuladd.f64(double %i.rh, double %i.rj, double %i.rs)
  %i.ru = call double @llvm.fmuladd.f64(double %i.rm, double 0.000000e+00, double %i.rt) ; 2 uses
  %i.rv = call double @llvm.fmuladd.f64(double %i.rg, double %i.rk, double 0.000000e+00)
  %i.rw = call double @llvm.fmuladd.f64(double %i.rh, double %i.rl, double %i.rv)
  %i.rx = insertelement <2 x double> poison, double %i.rn, i64 0
  %i.ry = insertelement <2 x double> %i.rx, double %i.ru, i64 1
  %i.rz = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.rw, i64 0
  %i.sa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> zeroinitializer, <2 x double> %i.rz) ; 3 uses
  %i.sb = extractelement <2 x double> %i.sa, i64 0
  %i.sc = extractelement <2 x double> %i.sa, i64 1
  %i.sd = call double @llvm.fmuladd.f64(double %i.sb, double 0.000000e+00, double %i.sc)
  %i.se = call double @llvm.fmuladd.f64(double %i.rg, double %i.pq, double 0.000000e+00)
  %i.sf = insertelement <2 x double> %i.rq, double %i.ru, i64 1 ; 2 uses
  %i.sg = insertelement <2 x double> poison, double %i.re, i64 0 ; 2 uses
  %i.sh = shufflevector <2 x double> %i.sg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.si = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sf, <2 x double> %i.sh, <2 x double> zeroinitializer)
  %i.sj = shufflevector <2 x double> %i.rr, <2 x double> %i.sa, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.sk = insertelement <2 x double> poison, double %.sroa.0626.0, i64 0
  %i.sl = shufflevector <2 x double> %i.sk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sj, <2 x double> %i.sl, <2 x double> %i.si)
  %i.sn = shufflevector <2 x double> %i.rd, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.so = insertelement <2 x double> %i.sf, double %i.pr, i64 1
  %i.sp = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.se, i64 1
  %i.sq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sn, <2 x double> %i.so, <2 x double> %i.sp)
  %i.sr = insertelement <2 x double> %i.sj, double %i.pp, i64 1
  %i.ss = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sr, <2 x double> zeroinitializer, <2 x double> %i.sq) ; 2 uses
  %i.st = insertelement <2 x double> %i.ss, double %i.qa, i64 0 ; 2 uses
  %i.su = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.st, <2 x double> zeroinitializer, <2 x double> %i.sm) ; 30 uses
  %i.sv = extractelement <2 x double> %i.su, i64 1 ; 11 uses
  %i.sw = extractelement <2 x double> %i.su, i64 0 ; 11 uses
  %i.sx = insertelement <2 x double> %i.st, double %i.sd, i64 1
  %i.sy = fadd <2 x double> %i.ss, %i.sx          ; 34 uses
  %i.sz = extractelement <2 x double> %i.sy, i64 1 ; 10 uses
  %i.ta = extractelement <2 x double> %i.sy, i64 0 ; 15 uses
  %i.tb = extractelement <2 x double> %i.qy, i64 1 ; 10 uses
  %i.tc = fmul double %i.tb, %i.tb                ; 14 uses
  %i.td = shufflevector <2 x double> %i.sy, <2 x double> %i.su, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.te = fmul <2 x double> %i.td, <double 2.000000e+00, double 8.000000e+00> ; 2 uses
  %i.tf = shufflevector <2 x double> %i.sy, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.tg = fmul <2 x double> %i.tf, %i.te          ; 2 uses
  %i.th = fmul double %i.sv, 2.000000e+00         ; 2 uses
  %i.ti = fmul double %i.tb, 4.000000e+00
  %i.tj = fmul double %i.tb, %i.ti
  %i.tk = fmul double %i.tb, %i.tj
  %i.tl = fmul double %i.tb, %i.tk
  %i.tm = fmul double %i.sz, %i.sw
  %i.tn = fmul double %i.ta, %i.th
  %i.to = fmul double %i.ta, %i.tn
  %i.tp = extractelement <2 x double> %i.qy, i64 0 ; 9 uses
  %i.tq = fneg double %i.tp                       ; 3 uses
  %i.tr = insertelement <2 x double> <double poison, double 6.000000e+00>, double %i.tl, i64 0
  %i.ts = fmul <2 x double> %i.tr, %i.su          ; 2 uses
  %i.tt = shufflevector <2 x double> %i.sy, <2 x double> %i.su, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.tu = fmul <2 x double> %i.tt, %i.ts
  %i.tv = fmul <2 x double> %i.sy, %i.tu
  %i.tw = fmul double %i.tb, 6.000000e+00
  %i.tx = fmul double %i.tb, %i.tw
  %i.ty = fmul double %i.tb, %i.tx
  %i.tz = fmul double %i.tb, %i.ty
  %i.ua = insertelement <2 x double> %i.qy, double %i.tz, i64 0
  %i.ub = shufflevector <2 x double> %i.su, <2 x double> %i.tg, <2 x i32> <i32 0, i32 2>
  %i.uc = fmul <2 x double> %i.ua, %i.ub
  %i.ud = shufflevector <2 x double> %i.su, <2 x double> %i.qy, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ue = fmul <2 x double> %i.ud, %i.uc          ; 2 uses
  %shift = shufflevector <2 x double> %i.ue, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.sy, %shift
  %i.uf = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ug = shufflevector <2 x double> %i.sy, <2 x double> %i.su, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.uh = fmul <2 x double> %i.ug, %i.ue          ; 2 uses
  %foldExtExtBinop739 = fmul <2 x double> %i.sy, %i.uh
  %i.ui = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uj = shufflevector <2 x double> %i.su, <2 x double> %i.sy, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.uk = insertelement <2 x double> poison, double %i.tm, i64 0
  %i.ul = shufflevector <2 x double> %i.su, <2 x double> %i.sy, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.um = shufflevector <2 x double> %i.sy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.un = shufflevector <2 x double> %i.qy, <2 x double> %i.sy, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.uo = insertelement <2 x double> %i.sy, double %i.tq, i64 1 ; 2 uses
  %i.up = shufflevector <2 x double> %i.sy, <2 x double> %i.qy, <2 x i32> <i32 0, i32 2>
  %i.uq = fmul <2 x double> %i.ud, %i.tg          ; 2 uses
  %i.ur = shufflevector <2 x double> %i.qy, <2 x double> %i.su, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.us = shufflevector <2 x double> %i.uq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ut = insertelement <2 x double> %i.us, double %i.to, i64 0
  %i.uu = fmul <2 x double> %i.ur, %i.ut
  %i.uv = shufflevector <2 x double> %i.uo, <2 x double> %i.qy, <2 x i32> <i32 1, i32 2>
  %i.uw = fmul <2 x double> %i.uu, %i.uv
  %i.ux = shufflevector <2 x double> %i.sy, <2 x double> %i.qy, <2 x i32> <i32 1, i32 2>
  %i.uy = fmul <2 x double> %i.qy, %i.uq
  %i.uz = fmul <2 x double> %i.ur, %i.uy
  %i.va = fmul double %i.sv, %i.ta
  %i.vb = fmul double %i.ta, %i.va
  %i.vc = fneg <2 x double> %i.su                 ; 2 uses
  %i.vd = shufflevector <2 x double> %i.sy, <2 x double> %i.vc, <2 x i32> <i32 3, i32 1>
  %i.ve = fmul <2 x double> %i.sy, %i.vd          ; 2 uses
  %i.vf = fmul <2 x double> %i.ug, %i.ve          ; 3 uses
  %41 = extractelement <2 x double> %i.vf, i64 1  ; 2 uses
  %42 = fmul double %i.ta, %41
  %foldExtExtBinop741 = fmul <2 x double> %i.sy, %i.ve
  %i.vg = fmul <2 x double> %i.sy, %foldExtExtBinop741
  %i.vh = shufflevector <2 x double> %i.sy, <2 x double> %i.su, <2 x i32> <i32 1, i32 2>
  %43 = insertelement <2 x double> poison, double %42, i64 0
  %44 = fmul double %i.tp, %41
  %45 = fmul double %i.tp, %44
  %i.vi = shufflevector <2 x double> %i.su, <2 x double> %i.qy, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.vj = insertelement <2 x double> <double 4.000000e+00, double poison>, double %i.tc, i64 1
  %i.vk = fmul <2 x double> %i.vi, %i.vj          ; 2 uses
  %i.vl = fmul <2 x double> %i.vi, %i.vk          ; 3 uses
  %i.vm = shufflevector <2 x double> %i.qy, <2 x double> %i.su, <2 x i32> <i32 0, i32 3> ; 2 uses
  %46 = insertelement <2 x double> %i.su, double %45, i64 0
  %i.vn = fmul <2 x double> %i.vm, %46            ; 2 uses
  %47 = insertelement <2 x double> %i.vk, double %i.th, i64 1
  %i.vo = fmul <2 x double> %i.td, %47            ; 3 uses
  %48 = shufflevector <2 x double> %i.vl, <2 x double> %i.qy, <2 x i32> <i32 1, i32 3>
  %i.vp = shufflevector <2 x double> %i.sy, <2 x double> %i.vo, <2 x i32> <i32 0, i32 3>
  %49 = fmul <2 x double> %48, %i.vp              ; 2 uses
  %i.vq = fmul <2 x double> %i.sy, %49
  %i.vr = fmul <2 x double> %i.un, %i.vo          ; 2 uses
  %i.vs = fmul <2 x double> %i.un, %i.vr          ; 2 uses
  %i.vt = fmul <2 x double> %i.uo, %i.vs
  %i.vu = shufflevector <2 x double> %i.te, <2 x double> %i.sy, <2 x i32> <i32 0, i32 3>
  %i.vv = fmul <2 x double> %i.vu, <double 1.000000e+00, double 4.000000e+00>
  %i.vw = shufflevector <2 x double> %i.su, <2 x double> %i.sy, <2 x i32> <i32 0, i32 3>
  %i.vx = fmul <2 x double> %i.vw, %i.vv
  %i.vy = fmul <2 x double> %i.ud, %i.vx
  %i.vz = fmul <2 x double> %i.qy, %i.vy
  %i.wa = shufflevector <2 x double> %i.qy, <2 x double> %i.su, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.wb = fmul <2 x double> %i.wa, %i.vz
  %i.wc = fmul <2 x double> %i.ul, %i.wb
  %i.wd = shufflevector <2 x double> %i.su, <2 x double> %i.sy, <2 x i32> <i32 1, i32 3>
  %i.we = shufflevector <2 x double> %i.vl, <2 x double> %i.vo, <2 x i32> <i32 0, i32 2>
  %i.wf = fmul <2 x double> %i.wd, %i.we
  %i.wg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wf, <2 x double> %i.tf, <2 x double> %i.wc) ; 2 uses
  %i.wh = shufflevector <2 x double> %i.wg, <2 x double> %foldExtExtBinop739, <2 x i32> <i32 1, i32 2>
  %i.wi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tv, <2 x double> %i.sy, <2 x double> %i.wh)
  %i.wj = shufflevector <2 x double> %i.qy, <2 x double> %i.su, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.wk = fmul <2 x double> %i.wj, %i.vl
  %i.wl = fmul <2 x double> %i.wj, %i.wk
  %i.wm = fmul <2 x double> %i.ui, %i.wl
  %i.wn = shufflevector <2 x double> %i.qy, <2 x double> %i.sy, <2 x i32> <i32 1, i32 2>
  %i.wo = shufflevector <2 x double> %49, <2 x double> %i.vn, <2 x i32> <i32 1, i32 3>
  %i.wp = fmul <2 x double> %i.wn, %i.wo          ; 3 uses
  %i.wq = extractelement <2 x double> %i.wp, i64 1 ; 2 uses
  %i.wr = fneg double %i.wq                       ; 2 uses
  %i.ws = insertelement <2 x double> %i.uh, double %i.wr, i64 0
  %i.wt = shufflevector <2 x double> %i.uk, <2 x double> %i.wp, <2 x i32> <i32 0, i32 2>
  %i.wu = fmul <2 x double> %i.uj, %i.wt          ; 2 uses
  %i.wv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ws, <2 x double> %i.ui, <2 x double> %i.wi)
  %i.ww = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wu, <2 x double> %i.ul, <2 x double> %i.wv)
  %i.wx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vt, <2 x double> %i.up, <2 x double> %i.ww)
  %i.wy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uw, <2 x double> %i.ux, <2 x double> %i.wx)
  %i.wz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uz, <2 x double> %i.um, <2 x double> %i.wy)
  %i.xa = fmul <2 x double> %i.uj, %i.wp
  %i.xb = shufflevector <2 x double> %i.su, <2 x double> %i.qy, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.xc = fmul <2 x double> %i.xb, %i.xa          ; 2 uses
  %i.xd = shufflevector <2 x double> %i.qy, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.xe = shufflevector <2 x double> %i.vr, <2 x double> %i.xc, <2 x i32> <i32 1, i32 3>
  %i.xf = fmul <2 x double> %i.xd, %i.xe
  %i.xg = insertelement <2 x double> poison, double %i.tq, i64 0
  %i.xh = shufflevector <2 x double> %i.xg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xi = fmul <2 x double> %i.xf, %i.xh
  %foldExtExtBinop741.a = fmul <2 x double> %i.qy, %i.wu
  %foldExtExtBinop743 = fmul <2 x double> %i.qy, %foldExtExtBinop741.a
  %i.xj = fmul double %i.tp, %i.wq
  %i.xk = fmul double %i.tp, %i.xj
  %i.xl = fmul double %i.tp, %i.xk
  %i.xm = fmul double %i.tp, %i.xl
  %i.xn = extractelement <2 x double> %i.vc, i64 0
  %i.xo = fmul double %i.xm, %i.xn
  %i.xp = shufflevector <2 x double> %i.ts, <2 x double> %foldExtExtBinop743, <2 x i32> <i32 0, i32 2>
  %i.xq = fmul <2 x double> %i.xb, %i.xp
  %i.xr = fmul <2 x double> %i.xb, %i.xq
  %i.xs = insertelement <2 x double> %i.wg, double %i.xo, i64 1
  %i.xt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.tt, <2 x double> %i.xs) ; 2 uses
  %i.xu = shufflevector <2 x double> %i.vs, <2 x double> %i.vq, <2 x i32> <i32 0, i32 2>
  %i.xv = fmul <2 x double> %i.uj, %i.xu
  %50 = shufflevector <2 x double> %i.xt, <2 x double> %i.vg, <2 x i32> <i32 0, i32 3>
  %i.xw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xv, <2 x double> %i.uj, <2 x double> %50) ; 2 uses
  %i.xx = shufflevector <2 x double> %i.xw, <2 x double> %i.xc, <2 x i32> <i32 0, i32 2>
  %i.xy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wm, <2 x double> %i.ug, <2 x double> %i.xx)
  %i.xz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xi, <2 x double> %i.xb, <2 x double> %i.xy)
  %i.ya = extractelement <2 x double> %i.xw, i64 1
  %i.yb = call double @llvm.fmuladd.f64(double %i.uf, double %i.ta, double %i.ya)
  %i.yc = call double @llvm.fmuladd.f64(double %i.wr, double %i.ta, double %i.yb)
  %i.yd = insertelement <2 x double> %43, double %i.yc, i64 1
  %i.ye = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vf, <2 x double> %i.vh, <2 x double> %i.yd)
  %i.yf = fmul <2 x double> %i.vm, %i.vn
  %i.yg = insertelement <2 x double> %i.vf, double %i.vb, i64 0
  %i.yh = fmul <2 x double> %i.wa, %i.yg
  %i.yi = fmul <2 x double> %i.xd, %i.yh
  %i.yj = fmul <2 x double> %i.xd, %i.yi
  %i.yk = insertelement <2 x double> %i.xd, double %i.tq, i64 0
  %i.yl = fmul <2 x double> %i.yj, %i.yk
  %51 = shufflevector <2 x double> %i.sy, <2 x double> %i.qy, <2 x i32> <i32 1, i32 2>
  %i.ym = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yl, <2 x double> %51, <2 x double> %i.xz)
  %i.yn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yf, <2 x double> %i.tt, <2 x double> %i.ym)
  store <2 x double> %i.ye, ptr %37, align 16, !tbaa !28
  store <2 x double> %i.wz, ptr %i.gg, align 16, !tbaa !28
  store <2 x double> %i.yn, ptr %i.gh, align 16, !tbaa !28
  %i.yo = extractelement <2 x double> %i.xt, i64 1
  store double %i.yo, ptr %i.gi, align 16, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #12
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %38, i32 noundef 6, i32 noundef 1, i32 noundef 38, ptr noundef nonnull %i.a, i64 noundef 0)
          to label %bb.de unwind label %bb.dg

bb.dd:                                            ; preds = %bb.db
  %i.yp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #12
  br label %bb.fe

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #12
  store i32 -1056833530, ptr %39, align 8, !tbaa !29
  store ptr %37, ptr %i.gk, align 8, !tbaa !11
  store i64 30064771073, ptr %i.gj, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #12
  store i64 0, ptr %i.gm, align 8
  store i32 33619968, ptr %40, align 8, !tbaa !29
  store ptr %38, ptr %i.gl, align 8, !tbaa !11
  %i.yq = invoke noundef double @_ZN2cv9solvePolyERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %40, i32 noundef 300)
          to label %bb.df unwind label %bb.dh     ; 0 uses

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #12
  %foldExtExtBinop745 = fmul <2 x double> %i.qy, %i.qy
  %i.yr = extractelement <2 x double> %foldExtExtBinop745, i64 0 ; 12 uses
  %i.ys = fdiv double 1.000000e+00, %i.yr
  %foldExtExtBinop747 = fmul <2 x double> %i.su, %i.su
  %i.yt = extractelement <2 x double> %foldExtExtBinop747, i64 0
  %i.yu = fmul double %i.tc, %i.sw
  %i.yv = fmul double %i.sw, %i.yu
  %i.yw = load i32, ptr %i.gn, align 4, !tbaa !36
  %i.yx = icmp slt i32 %i.yw, 2
  %i.yy = load i32, ptr %38, align 8
  %i.yz = and i32 %i.yy, 16384
  %i.za = icmp ne i32 %i.yz, 0
  %i.zb = load i32, ptr %i.go, align 4
  %i.zc = icmp eq i32 %i.zb, 1
  %or.cond.i517 = select i1 %i.za, i1 true, i1 %i.zc ; 5 uses
  %i.zd = load i32, ptr %i.gp, align 8
  %i.ze = icmp eq i32 %i.zd, 1                    ; 5 uses
  %i.zf = load i32, ptr %i.gq, align 4
  %.fr = freeze i32 %i.zf                         ; 15 uses
  %i.zg = load ptr, ptr %i.gr, align 8            ; 21 uses
  %i.zh = load i64, ptr %i.gs, align 8            ; 10 uses
  %i.zi = load double, ptr %i.zg, align 8, !tbaa !28 ; 5 uses
  %i.zj = fmul double %i.yr, %i.zi
  %i.zk = insertelement <2 x double> %i.su, double %i.zi, i64 0
  %i.zl = insertelement <2 x double> %i.sy, double %i.yv, i64 1
  %i.zm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.su, <2 x double> %i.zk, <2 x double> %i.zl) ; 3 uses
  %i.zn = extractelement <2 x double> %i.zm, i64 1
  %i.zo = fdiv double %i.yt, %i.zn
  %i.zp = fadd double %i.ys, %i.zo                ; 2 uses
  %i.zq = extractelement <2 x double> %i.zm, i64 0 ; 2 uses
  %i.zr = fmul double %i.tc, %i.zq
  %i.zs = fmul double %i.zq, %i.zr
  %i.zt = insertelement <2 x double> poison, double %i.zi, i64 0
  %i.zu = shufflevector <2 x double> %i.zt, <2 x double> %i.zm, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.zv = fmul <2 x double> %i.zu, %i.zu
  %i.zw = call double @llvm.fmuladd.f64(double %i.sv, double %i.zi, double %i.sz) ; 2 uses
  %i.zx = insertelement <2 x double> poison, double %i.zj, i64 0
  %i.zy = insertelement <2 x double> %i.zx, double %i.zw, i64 1
  %i.zz = insertelement <2 x double> %i.zu, double %i.zw, i64 1
  %i.aaa = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.zs, i64 1
  %i.aab = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zy, <2 x double> %i.zz, <2 x double> %i.aaa)
  %i.aac = fdiv <2 x double> %i.zv, %i.aab
  %i.aad = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.aac) ; 2 uses
  %i.aae = fcmp olt double %i.aad, %i.zp          ; 2 uses
  %.1361.us = select i1 %i.aae, double %i.zi, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.1.us = select i1 %i.aae, double %i.aad, double %i.zp ; 4 uses
  br i1 %i.yx, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.df
  br i1 %or.cond.i517, label %bb.dl, label %bb.di

.split.us.preheader:                              ; preds = %bb.df
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.aag = load double, ptr %i.aaf, align 8, !tbaa !28 ; 4 uses
  %i.aah = fmul double %i.yr, %i.aag
  %i.aai = insertelement <2 x double> poison, double %i.aah, i64 0
  %i.aaj = shufflevector <2 x double> %i.aai, <2 x double> %i.su, <2 x i32> <i32 0, i32 2>
  %i.aak = insertelement <2 x double> poison, double %i.aag, i64 0 ; 2 uses
  %i.aal = shufflevector <2 x double> %i.aak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aam = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %i.sy, <2 x i32> <i32 0, i32 2>
  %i.aan = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaj, <2 x double> %i.aal, <2 x double> %i.aam) ; 3 uses
  %i.aao = extractelement <2 x double> %i.aan, i64 1 ; 2 uses
  %i.aap = insertelement <2 x double> %i.aan, double %i.aag, i64 0 ; 2 uses
  %i.aaq = fmul <2 x double> %i.aap, %i.aap
  %i.aar = fmul double %i.tc, %i.aao
  %i.aas = fmul double %i.aao, %i.aar
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  %i.aau = load double, ptr %i.aat, align 8, !tbaa !28 ; 4 uses
  %i.aav = fmul double %i.yr, %i.aau
  %i.aaw = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aax = insertelement <2 x double> %i.aaw, double %i.aav, i64 1
  %i.aay = insertelement <2 x double> %i.aak, double %i.aau, i64 1
  %i.aaz = shufflevector <2 x double> <double poison, double 1.000000e+00>, <2 x double> %i.sy, <2 x i32> <i32 3, i32 1>
  %i.aba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aax, <2 x double> %i.aay, <2 x double> %i.aaz) ; 2 uses
  %i.abb = extractelement <2 x double> %i.aba, i64 0 ; 2 uses
  %i.abc = call double @llvm.fmuladd.f64(double %i.abb, double %i.abb, double %i.aas)
  %i.abd = insertelement <2 x double> %i.aan, double %i.abc, i64 1
  %i.abe = fdiv <2 x double> %i.aaq, %i.abd
  %i.abf = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.abe) ; 2 uses
  %i.abg = fcmp olt double %i.abf, %.1.us         ; 2 uses
  %.1361.us.1 = select i1 %i.abg, double %i.aag, double %.1361.us
  %.1.us.1 = select i1 %i.abg, double %i.abf, double %.1.us ; 2 uses
  %i.abh = insertelement <2 x double> poison, double %i.aau, i64 0 ; 2 uses
  %i.abi = shufflevector <2 x double> %i.abh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.su, <2 x double> %i.abi, <2 x double> %i.sy) ; 3 uses
  %i.abk = shufflevector <2 x double> %i.abh, <2 x double> %i.abj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.abl = fmul <2 x double> %i.abk, %i.abk
  %i.abm = extractelement <2 x double> %i.abj, i64 0 ; 2 uses
  %i.abn = fmul double %i.tc, %i.abm
  %i.abo = fmul double %i.abm, %i.abn
  %i.abp = extractelement <2 x double> %i.abj, i64 1 ; 2 uses
  %i.abq = call double @llvm.fmuladd.f64(double %i.abp, double %i.abp, double %i.abo)
  %i.abr = shufflevector <2 x double> %i.aba, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.abs = insertelement <2 x double> %i.abr, double %i.abq, i64 1
  %i.abt = fdiv <2 x double> %i.abl, %i.abs
  %i.abu = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.abt) ; 2 uses
  %i.abv = fcmp olt double %i.abu, %.1.us.1       ; 2 uses
  %.1361.us.2 = select i1 %i.abv, double %i.aau, double %.1361.us.1
  %.1.us.2 = select i1 %i.abv, double %i.abu, double %.1.us.1 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.zg, i64 48
  %i.abx = load double, ptr %i.abw, align 8, !tbaa !28 ; 6 uses
  %i.aby = fmul double %i.yr, %i.abx
  %i.abz = call double @llvm.fmuladd.f64(double %i.aby, double %i.abx, double 1.000000e+00)
  %52 = call double @llvm.fmuladd.f64(double %i.sw, double %i.abx, double %i.ta) ; 3 uses
  %53 = insertelement <2 x double> poison, double %i.abx, i64 0
  %54 = insertelement <2 x double> %53, double %52, i64 1 ; 2 uses
  %i.aca = fmul <2 x double> %54, %54
  %55 = call double @llvm.fmuladd.f64(double %i.sv, double %i.abx, double %i.sz) ; 2 uses
  %i.acb = fmul double %i.tc, %52
  %i.acc = fmul double %52, %i.acb
  %i.acd = call double @llvm.fmuladd.f64(double %55, double %55, double %i.acc)
  %i.ace = insertelement <2 x double> poison, double %i.abz, i64 0
  %i.acf = insertelement <2 x double> %i.ace, double %i.acd, i64 1
  %i.acg = fdiv <2 x double> %i.aca, %i.acf
  %i.ach = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.acg) ; 2 uses
  %i.aci = fcmp olt double %i.ach, %.1.us.2       ; 2 uses
  %.1361.us.3 = select i1 %i.aci, double %i.abx, double %.1361.us.2
  %.1.us.3 = select i1 %i.aci, double %i.ach, double %.1.us.2 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.zg, i64 64
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !28 ; 6 uses
  %i.acl = fmul double %i.yr, %i.ack
  %i.acm = call double @llvm.fmuladd.f64(double %i.acl, double %i.ack, double 1.000000e+00)
  %56 = call double @llvm.fmuladd.f64(double %i.sw, double %i.ack, double %i.ta) ; 3 uses
  %57 = insertelement <2 x double> poison, double %i.ack, i64 0
  %58 = insertelement <2 x double> %57, double %56, i64 1 ; 2 uses
  %i.acn = fmul <2 x double> %58, %58
  %59 = call double @llvm.fmuladd.f64(double %i.sv, double %i.ack, double %i.sz) ; 2 uses
  %i.aco = fmul double %i.tc, %56
  %i.acp = fmul double %56, %i.aco
  %i.acq = call double @llvm.fmuladd.f64(double %59, double %59, double %i.acp)
  %i.acr = insertelement <2 x double> poison, double %i.acm, i64 0
  %i.acs = insertelement <2 x double> %i.acr, double %i.acq, i64 1
  %i.act = fdiv <2 x double> %i.acn, %i.acs
  %i.acu = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.act) ; 2 uses
  %i.acv = fcmp olt double %i.acu, %.1.us.3       ; 2 uses
  %.1361.us.4 = select i1 %i.acv, double %i.ack, double %.1361.us.3
  %.1.us.4 = select i1 %i.acv, double %i.acu, double %.1.us.3
  %i.acw = getelementptr inbounds nuw i8, ptr %i.zg, i64 80
  %i.acx = load double, ptr %i.acw, align 8, !tbaa !28 ; 6 uses
  %i.acy = fmul double %i.yr, %i.acx
  %i.acz = call double @llvm.fmuladd.f64(double %i.acy, double %i.acx, double 1.000000e+00)
  %60 = call double @llvm.fmuladd.f64(double %i.sw, double %i.acx, double %i.ta) ; 3 uses
  %61 = insertelement <2 x double> poison, double %i.acx, i64 0
  %62 = insertelement <2 x double> %61, double %60, i64 1 ; 2 uses
  %i.ada = fmul <2 x double> %62, %62
  %63 = call double @llvm.fmuladd.f64(double %i.sv, double %i.acx, double %i.sz) ; 2 uses
  %i.adb = fmul double %i.tc, %60
  %i.adc = fmul double %60, %i.adb
  %i.add = call double @llvm.fmuladd.f64(double %63, double %63, double %i.adc)
  %i.ade = insertelement <2 x double> poison, double %i.acz, i64 0
  %i.adf = insertelement <2 x double> %i.ade, double %i.add, i64 1
  %i.adg = fdiv <2 x double> %i.ada, %i.adf
  %i.adh = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.adg)
  %i.adi = fcmp olt double %i.adh, %.1.us.4
  %.1361.us.5 = select i1 %i.adi, double %i.acx, double %.1361.us.4
  br label %.split709.us

bb.dg:                                            ; preds = %bb.dc
  %i.adj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.dh:                                            ; preds = %bb.de
  %i.adk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #12
  br label %bb.fd

bb.di:                                            ; preds = %.split.preheader
  br i1 %i.ze, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.adl = add i32 %.fr, 1
  %i.adm = icmp ult i32 %i.adl, 3
  %i.adn = select i1 %i.adm, i32 %.fr, i32 0      ; 2 uses
  %i.ado = mul nsw i32 %i.adn, %.fr
  %i.adp = sub nsw i32 1, %i.ado
  %i.adq = sext i32 %i.adn to i64
  %i.adr = mul i64 %i.zh, %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.adr
  %i.adt = sext i32 %i.adp to i64
  %i.adu = getelementptr inbounds [16 x i8], ptr %i.ads, i64 %i.adt
  br label %.split.2

bb.dk:                                            ; preds = %bb.di
  %i.adv = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.zh
  br label %.split.2

bb.dl:                                            ; preds = %.split.preheader
  %i.adw = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  br label %.split.2

.split.2:                                         ; preds = %bb.dl, %bb.dk, %bb.dj
  %.0.i518.1 = phi ptr [ %i.adu, %bb.dj ], [ %i.adw, %bb.dl ], [ %i.adv, %bb.dk ]
  %i.adx = load double, ptr %.0.i518.1, align 8, !tbaa !28 ; 6 uses
  %i.ady = fmul double %i.yr, %i.adx
  %i.adz = call double @llvm.fmuladd.f64(double %i.ady, double %i.adx, double 1.000000e+00)
  %i.aea = call double @llvm.fmuladd.f64(double %i.sw, double %i.adx, double %i.ta) ; 3 uses
  %i.aeb = insertelement <2 x double> poison, double %i.adx, i64 0
  %i.aec = insertelement <2 x double> %i.aeb, double %i.aea, i64 1 ; 2 uses
  %i.aed = fmul <2 x double> %i.aec, %i.aec
  %i.aee = call double @llvm.fmuladd.f64(double %i.sv, double %i.adx, double %i.sz) ; 2 uses
  %i.aef = fmul double %i.tc, %i.aea
  %i.aeg = fmul double %i.aea, %i.aef
  %i.aeh = call double @llvm.fmuladd.f64(double %i.aee, double %i.aee, double %i.aeg)
  %i.aei = insertelement <2 x double> poison, double %i.adz, i64 0
  %i.aej = insertelement <2 x double> %i.aei, double %i.aeh, i64 1
  %i.aek = fdiv <2 x double> %i.aed, %i.aej
  %i.ael = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.aek) ; 2 uses
  %i.aem = fcmp olt double %i.ael, %.1.us         ; 2 uses
  %.1361.1 = select i1 %i.aem, double %i.adx, double %.1361.us
  %.1.1 = select i1 %i.aem, double %i.ael, double %.1.us ; 2 uses
  br i1 %or.cond.i517, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %.split.2
  br i1 %i.ze, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aen = sdiv i32 2, %.fr                       ; 2 uses
  %i.aeo = mul nsw i32 %i.aen, %.fr               ; 0 uses
  %.recomposed755 = srem i32 2, %.fr
  %i.aep = sext i32 %i.aen to i64
  %i.aeq = mul i64 %i.zh, %i.aep
  %i.aer = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.aeq
  %i.aes = sext i32 %.recomposed755 to i64
  %i.aet = getelementptr inbounds [16 x i8], ptr %i.aer, i64 %i.aes
  br label %.split.3

bb.do:                                            ; preds = %bb.dm
  %i.aeu = shl i64 %i.zh, 1
  %i.aev = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.aeu
  br label %.split.3

bb.dp:                                            ; preds = %.split.2
  %i.aew = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  br label %.split.3

.split.3:                                         ; preds = %bb.dp, %bb.do, %bb.dn
  %.0.i518.2 = phi ptr [ %i.aet, %bb.dn ], [ %i.aew, %bb.dp ], [ %i.aev, %bb.do ]
  %i.aex = load double, ptr %.0.i518.2, align 8, !tbaa !28 ; 6 uses
  %i.aey = fmul double %i.yr, %i.aex
  %i.aez = call double @llvm.fmuladd.f64(double %i.aey, double %i.aex, double 1.000000e+00)
  %i.afa = call double @llvm.fmuladd.f64(double %i.sw, double %i.aex, double %i.ta) ; 3 uses
  %i.afb = insertelement <2 x double> poison, double %i.aex, i64 0
  %i.afc = insertelement <2 x double> %i.afb, double %i.afa, i64 1 ; 2 uses
  %i.afd = fmul <2 x double> %i.afc, %i.afc
  %i.afe = call double @llvm.fmuladd.f64(double %i.sv, double %i.aex, double %i.sz) ; 2 uses
  %i.aff = fmul double %i.tc, %i.afa
  %i.afg = fmul double %i.afa, %i.aff
  %i.afh = call double @llvm.fmuladd.f64(double %i.afe, double %i.afe, double %i.afg)
  %i.afi = insertelement <2 x double> poison, double %i.aez, i64 0
  %i.afj = insertelement <2 x double> %i.afi, double %i.afh, i64 1
  %i.afk = fdiv <2 x double> %i.afd, %i.afj
  %i.afl = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.afk) ; 2 uses
  %i.afm = fcmp olt double %i.afl, %.1.1          ; 2 uses
  %.1361.2 = select i1 %i.afm, double %i.aex, double %.1361.1
  %.1.2 = select i1 %i.afm, double %i.afl, double %.1.1 ; 2 uses
  br i1 %or.cond.i517, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %.split.3
  br i1 %i.ze, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.afn = sdiv i32 3, %.fr                       ; 2 uses
  %i.afo = mul nsw i32 %i.afn, %.fr               ; 0 uses
  %.recomposed756 = srem i32 3, %.fr
  %i.afp = sext i32 %i.afn to i64
  %i.afq = mul i64 %i.zh, %i.afp
  %i.afr = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.afq
  %i.afs = sext i32 %.recomposed756 to i64
  %i.aft = getelementptr inbounds [16 x i8], ptr %i.afr, i64 %i.afs
  br label %.split.4

bb.ds:                                            ; preds = %bb.dq
  %i.afu = mul i64 %i.zh, 3
  %i.afv = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.afu
  br label %.split.4

bb.dt:                                            ; preds = %.split.3
  %i.afw = getelementptr inbounds nuw i8, ptr %i.zg, i64 48
  br label %.split.4

.split.4:                                         ; preds = %bb.dt, %bb.ds, %bb.dr
  %.0.i518.3 = phi ptr [ %i.aft, %bb.dr ], [ %i.afw, %bb.dt ], [ %i.afv, %bb.ds ]
  %i.afx = load double, ptr %.0.i518.3, align 8, !tbaa !28 ; 6 uses
  %i.afy = fmul double %i.yr, %i.afx
  %i.afz = call double @llvm.fmuladd.f64(double %i.afy, double %i.afx, double 1.000000e+00)
  %i.aga = call double @llvm.fmuladd.f64(double %i.sw, double %i.afx, double %i.ta) ; 3 uses
  %i.agb = insertelement <2 x double> poison, double %i.afx, i64 0
  %i.agc = insertelement <2 x double> %i.agb, double %i.aga, i64 1 ; 2 uses
  %i.agd = fmul <2 x double> %i.agc, %i.agc
  %i.age = call double @llvm.fmuladd.f64(double %i.sv, double %i.afx, double %i.sz) ; 2 uses
  %i.agf = fmul double %i.tc, %i.aga
  %i.agg = fmul double %i.aga, %i.agf
  %i.agh = call double @llvm.fmuladd.f64(double %i.age, double %i.age, double %i.agg)
  %i.agi = insertelement <2 x double> poison, double %i.afz, i64 0
  %i.agj = insertelement <2 x double> %i.agi, double %i.agh, i64 1
  %i.agk = fdiv <2 x double> %i.agd, %i.agj
  %i.agl = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.agk) ; 2 uses
  %i.agm = fcmp olt double %i.agl, %.1.2          ; 2 uses
  %.1361.3 = select i1 %i.agm, double %i.afx, double %.1361.2
  %.1.3 = select i1 %i.agm, double %i.agl, double %.1.2 ; 2 uses
  br i1 %or.cond.i517, label %bb.dx, label %bb.du

bb.du:                                            ; preds = %.split.4
  br i1 %i.ze, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.agn = sdiv i32 4, %.fr                       ; 2 uses
  %i.ago = mul nsw i32 %i.agn, %.fr               ; 0 uses
  %.recomposed757 = srem i32 4, %.fr
  %i.agp = sext i32 %i.agn to i64
  %i.agq = mul i64 %i.zh, %i.agp
  %i.agr = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.agq
  %i.ags = sext i32 %.recomposed757 to i64
  %i.agt = getelementptr inbounds [16 x i8], ptr %i.agr, i64 %i.ags
  br label %.split.5

bb.dw:                                            ; preds = %bb.du
  %i.agu = shl i64 %i.zh, 2
  %i.agv = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.agu
  br label %.split.5

bb.dx:                                            ; preds = %.split.4
  %i.agw = getelementptr inbounds nuw i8, ptr %i.zg, i64 64
  br label %.split.5

.split.5:                                         ; preds = %bb.dx, %bb.dw, %bb.dv
  %.0.i518.4 = phi ptr [ %i.agt, %bb.dv ], [ %i.agw, %bb.dx ], [ %i.agv, %bb.dw ]
  %i.agx = load double, ptr %.0.i518.4, align 8, !tbaa !28 ; 6 uses
  %i.agy = fmul double %i.yr, %i.agx
  %i.agz = call double @llvm.fmuladd.f64(double %i.agy, double %i.agx, double 1.000000e+00)
  %i.aha = call double @llvm.fmuladd.f64(double %i.sw, double %i.agx, double %i.ta) ; 3 uses
  %i.ahb = insertelement <2 x double> poison, double %i.agx, i64 0
  %i.ahc = insertelement <2 x double> %i.ahb, double %i.aha, i64 1 ; 2 uses
  %i.ahd = fmul <2 x double> %i.ahc, %i.ahc
  %i.ahe = call double @llvm.fmuladd.f64(double %i.sv, double %i.agx, double %i.sz) ; 2 uses
  %i.ahf = fmul double %i.tc, %i.aha
  %i.ahg = fmul double %i.aha, %i.ahf
  %i.ahh = call double @llvm.fmuladd.f64(double %i.ahe, double %i.ahe, double %i.ahg)
  %i.ahi = insertelement <2 x double> poison, double %i.agz, i64 0
  %i.ahj = insertelement <2 x double> %i.ahi, double %i.ahh, i64 1
  %i.ahk = fdiv <2 x double> %i.ahd, %i.ahj
  %i.ahl = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ahk) ; 2 uses
  %i.ahm = fcmp olt double %i.ahl, %.1.3          ; 2 uses
  %.1361.4 = select i1 %i.ahm, double %i.agx, double %.1361.3
  %.1.4 = select i1 %i.ahm, double %i.ahl, double %.1.3
end_hunk_0
