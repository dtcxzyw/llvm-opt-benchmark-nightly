inline.NumInlined: 494
inline.NumDeleted: 147
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN16btRaycastVehicle14updateFrictionEf:bb.a
  %i.la = getelementptr inbounds nuw i8, ptr %i.km, i64 328
  %i.lb = getelementptr inbounds nuw i8, ptr %i.km, i64 344
  %i.lc = getelementptr inbounds nuw i8, ptr %i.km, i64 348
  %i.ld = getelementptr inbounds nuw i8, ptr %i.km, i64 352
  %i.le = load float, ptr %i.la, align 4, !tbaa !50
  %i.lf = getelementptr inbounds nuw i8, ptr %i.km, i64 332
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !50
  %i.lh = getelementptr inbounds nuw i8, ptr %i.km, i64 336
  %i.li = load float, ptr %i.lh, align 4, !tbaa !50
  %i.lj = load <2 x float>, ptr %i.kg, align 4, !tbaa !50 ; 2 uses
  %i.lk = load <2 x float>, ptr %i.kn, align 4, !tbaa !50 ; 2 uses
  %i.ll = shufflevector <4 x float> %i.kh, <4 x float> poison, <2 x i32> zeroinitializer
  %i.lm = shufflevector <2 x float> %i.lj, <2 x float> %i.lk, <2 x i32> <i32 0, i32 2>
  %i.ln = fsub <2 x float> %i.ll, %i.lm           ; 2 uses
  %i.lo = shufflevector <4 x float> %i.ki, <4 x float> poison, <2 x i32> zeroinitializer
  %i.lp = shufflevector <2 x float> %i.lj, <2 x float> %i.lk, <2 x i32> <i32 1, i32 3>
  %i.lq = fsub <2 x float> %i.lo, %i.lp           ; 2 uses
  %i.lr = load <2 x float>, ptr %i.ks, align 4, !tbaa !50 ; 2 uses
  %i.ls = load <2 x float>, ptr %i.lb, align 4, !tbaa !50 ; 2 uses
  %i.lt = fneg <2 x float> %i.ln
  %i.lu = shufflevector <2 x float> %i.lr, <2 x float> %i.ls, <2 x i32> <i32 1, i32 3>
  %i.lv = fmul <2 x float> %i.lu, %i.lt
  %i.lw = shufflevector <2 x float> %i.lr, <2 x float> %i.ls, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lw, <2 x float> %i.lq, <2 x float> %i.lv)
  %i.ly = shufflevector <4 x float> %i.kj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.lz = insertelement <2 x float> poison, float %i.kl, i64 0
  %i.ma = insertelement <2 x float> %i.lz, float %i.kp, i64 1
  %i.mb = fsub <2 x float> %i.ly, %i.ma           ; 2 uses
  %i.mc = load <2 x float>, ptr %i.kt, align 4, !tbaa !50 ; 2 uses
  %i.md = load float, ptr %i.ku, align 4, !tbaa !50
  %i.me = fneg <2 x float> %i.lq
  %i.mf = load <2 x float>, ptr %i.lc, align 4, !tbaa !50 ; 2 uses
  %i.mg = load float, ptr %i.ld, align 4, !tbaa !50
  %i.mh = shufflevector <2 x float> %i.mc, <2 x float> %i.mf, <2 x i32> <i32 1, i32 3>
  %i.mi = fmul <2 x float> %i.mh, %i.me
  %i.mj = shufflevector <2 x float> %i.mc, <2 x float> %i.mf, <2 x i32> <i32 0, i32 2>
  %i.mk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mj, <2 x float> %i.mb, <2 x float> %i.mi)
  %i.ml = insertelement <2 x float> poison, float %i.kv, i64 0
  %i.mm = insertelement <2 x float> %i.ml, float %i.le, i64 1
  %i.mn = fadd <2 x float> %i.mk, %i.mm           ; 2 uses
  %i.mo = fneg <2 x float> %i.mb
  %i.mp = fmul <2 x float> %i.lw, %i.mo
  %i.mq = insertelement <2 x float> poison, float %i.md, i64 0
  %i.mr = insertelement <2 x float> %i.mq, float %i.mg, i64 1
  %i.ms = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mr, <2 x float> %i.ln, <2 x float> %i.mp)
  %i.mt = insertelement <2 x float> poison, float %i.kx, i64 0
  %i.mu = insertelement <2 x float> %i.mt, float %i.lg, i64 1
  %i.mv = fadd <2 x float> %i.mu, %i.ms           ; 2 uses
  %i.mw = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.mx = insertelement <2 x float> %i.mw, float %i.li, i64 1
  %i.my = fadd <2 x float> %i.lx, %i.mx           ; 2 uses
  %shift = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop290 = fsub <2 x float> %i.mn, %shift
  %i.mz = extractelement <2 x float> %foldExtExtBinop290, i64 0
  %shift292 = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop293 = fsub <2 x float> %i.mv, %shift292
  %i.na = extractelement <2 x float> %foldExtExtBinop293, i64 0
  %shift295 = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop296 = fsub <2 x float> %i.my, %shift295
  %i.nb = extractelement <2 x float> %foldExtExtBinop296, i64 0
  %i.nc = load float, ptr %i.fp, align 8, !tbaa !50
  %i.nd = load float, ptr %i.fq, align 4, !tbaa !50
  %i.ne = fmul float %i.na, %i.nd
  %i.nf = call float @llvm.fmuladd.f32(float %i.nc, float %i.mz, float %i.ne)
  %i.ng = load float, ptr %i.fr, align 8, !tbaa !50
  %i.nh = call noundef float @llvm.fmuladd.f32(float %i.ng, float %i.nb, float %i.nf)
  %i.ni = fneg float %i.nh
  %i.nj = load float, ptr %i.fs, align 8, !tbaa !91
  %i.nk = fmul float %i.nj, %i.ni                 ; 2 uses
  %i.nl = fcmp olt float %i.kq, %i.nk
  %.0.i = select i1 %i.nl, float %i.kq, float %i.nk ; 2 uses
  %i.nm = fneg float %i.kq                        ; 2 uses
  %i.nn = fcmp olt float %.0.i, %i.nm
  %.1.i = select i1 %i.nn, float %i.nm, float %.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.pre241 = load ptr, ptr %i.fh, align 8, !tbaa !42
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.no = phi ptr [ %i.jq, %bb.t ], [ %.pre241, %bb.u ] ; 5 uses
  %.0111 = phi float [ %i.jy, %bb.t ], [ %.1.i, %bb.u ] ; 2 uses
  %i.np = load ptr, ptr %i.ft, align 8, !tbaa !29 ; 3 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv228 ; 2 uses
  store float 0.000000e+00, ptr %i.nq, align 4, !tbaa !50
  %i.nr = getelementptr inbounds nuw [288 x i8], ptr %i.no, i64 %indvars.iv228
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 284 ; 3 uses
  store float 1.000000e+00, ptr %i.ns, align 4, !tbaa !101
  %i.nt = getelementptr inbounds nuw i8, ptr %i.js, i64 280
  %i.nu = load float, ptr %i.nt, align 8, !tbaa !83
  %i.nv = fmul float %1, %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.js, i64 232
  %i.nx = load float, ptr %i.nw, align 8, !tbaa !102
  %i.ny = fmul float %i.nv, %i.nx                 ; 3 uses
  %i.nz = fmul float %i.ny, %i.ny
  store float %.0111, ptr %i.nq, align 4, !tbaa !50
  %i.oa = fmul float %.0111, 5.000000e-01         ; 2 uses
  %i.ob = load ptr, ptr %i.fu, align 8, !tbaa !29
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %indvars.iv228
  %i.od = load float, ptr %i.oc, align 4, !tbaa !50 ; 2 uses
  %i.oe = fmul float %i.od, %i.od
  %i.of = call float @llvm.fmuladd.f32(float %i.oa, float %i.oa, float %i.oe) ; 2 uses
  %i.og = fcmp ogt float %i.of, %i.nz
  br i1 %i.og, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %sqrt = call float @llvm.sqrt.f32(float %i.of)
  %i.oh = fdiv float %i.ny, %sqrt
  %i.oi = load float, ptr %i.ns, align 4, !tbaa !101
  %i.oj = fmul float %i.oh, %i.oi
  store float %i.oj, ptr %i.ns, align 4, !tbaa !101
  br label %bb.x

.critedge:                                        ; preds = %bb.r
  %i.ok = load ptr, ptr %i.ft, align 8, !tbaa !29 ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv228
  store float 0.000000e+00, ptr %i.ol, align 4, !tbaa !50
  %i.om = getelementptr inbounds nuw i8, ptr %i.js, i64 284
  store float 1.000000e+00, ptr %i.om, align 4, !tbaa !101
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %.critedge
  %i.on = phi ptr [ %i.ok, %.critedge ], [ %i.np, %bb.v ], [ %i.np, %bb.w ]
  %i.oo = phi ptr [ %i.jq, %.critedge ], [ %i.no, %bb.v ], [ %i.no, %bb.w ] ; 2 uses
  %i.op = phi ptr [ %i.jr, %.critedge ], [ %i.no, %bb.v ], [ %i.no, %bb.w ]
  %.2 = phi i1 [ %.0108216, %.critedge ], [ %.0108216, %bb.v ], [ true, %bb.w ] ; 2 uses
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %i.oq = load i32, ptr %i.a, align 4, !tbaa !43  ; 4 uses
  %i.or = sext i32 %i.oq to i64
  %i.os = icmp slt i64 %indvars.iv.next229, %i.or
  br i1 %i.os, label %bb.r, label %._crit_edge

bb.y:                                             ; preds = %.lr.ph220, %bb.ab
  %indvars.iv230 = phi i64 [ 0, %.lr.ph220 ], [ %indvars.iv.next231, %bb.ab ] ; 4 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv230 ; 3 uses
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !50
  %i.ov = fcmp une float %i.ou, 0.000000e+00
  br i1 %i.ov, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ow = getelementptr inbounds nuw [288 x i8], ptr %i.oo, i64 %indvars.iv230
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 284 ; 2 uses
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !101 ; 2 uses
  %i.oz = fcmp olt float %i.oy, 1.000000e+00
  br i1 %i.oz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv230 ; 2 uses
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !50
  %i.pc = fmul float %i.oy, %i.pb
  store float %i.pc, ptr %i.pa, align 4, !tbaa !50
  %i.pd = load float, ptr %i.ox, align 4, !tbaa !101
  %i.pe = load float, ptr %i.ot, align 4, !tbaa !50
  %i.pf = fmul float %i.pd, %i.pe
  store float %i.pf, ptr %i.ot, align 4, !tbaa !50
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.z
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit209, label %bb.y

.loopexit209:                                     ; preds = %bb.ab, %._crit_edge
  %i.pg = icmp sgt i32 %i.oq, 0
  br i1 %i.pg, label %.lr.ph223, label %.loopexit

.lr.ph223:                                        ; preds = %.loopexit209
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.po = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ps = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph223, %bb.ag
  %indvars.iv234 = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next235, %bb.ag ] ; 7 uses
  %i.pt = load ptr, ptr %i.ph, align 8, !tbaa !42
  %i.pu = getelementptr inbounds nuw [288 x i8], ptr %i.pt, i64 %indvars.iv234 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16 ; 2 uses
  %i.pw = load ptr, ptr %i.pi, align 8, !tbaa !45 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 56
  %i.py = load <2 x float>, ptr %i.pv, align 4, !tbaa !50
  %i.pz = load <2 x float>, ptr %i.px, align 4, !tbaa !50
  %i.qa = fsub <2 x float> %i.py, %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pu, i64 24 ; 2 uses
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !50
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pw, i64 64
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !50
  %i.qf = fsub float %i.qc, %i.qe
  %.sroa.3.12.vec.insert.i181 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qf, i64 0
  store <2 x float> %i.qa, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i181, ptr %i.pj, align 8
  %i.qg = load ptr, ptr %i.pk, align 8, !tbaa !29
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %indvars.iv234
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !50 ; 3 uses
  %i.qj = fcmp une float %i.qi, 0.000000e+00
  br i1 %i.qj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.qk = load ptr, ptr %i.pl, align 8, !tbaa !22
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.qk, i64 %indvars.iv234 ; 2 uses
  %i.qm = load <2 x float>, ptr %i.ql, align 4, !tbaa !50
  %i.qn = insertelement <2 x float> poison, float %i.qi, i64 0
  %i.qo = shufflevector <2 x float> %i.qn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qp = fmul <2 x float> %i.qo, %i.qm
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !50
  %i.qs = fmul float %i.qi, %i.qr
  %.sroa.3.12.vec.insert.i186 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qs, i64 0
  store <2 x float> %i.qp, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i186, ptr %i.pm, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.pw, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.qt = load ptr, ptr %i.pn, align 8, !tbaa !29
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv234 ; 2 uses
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !50
  %i.qw = fcmp une float %i.qv, 0.000000e+00
  br i1 %i.qw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.qx = load ptr, ptr %i.ph, align 8, !tbaa !42
  %i.qy = getelementptr inbounds nuw [288 x i8], ptr %i.qx, i64 %indvars.iv234
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 88
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !77 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 56
  %i.rc = load <2 x float>, ptr %i.pv, align 4, !tbaa !50
  %i.rd = load <2 x float>, ptr %i.rb, align 4, !tbaa !50
  %i.re = fsub <2 x float> %i.rc, %i.rd
  %i.rf = load float, ptr %i.qb, align 4, !tbaa !50
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ra, i64 64
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !50
  %i.ri = fsub float %i.rf, %i.rh
  %.sroa.3.12.vec.insert.i191 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ri, i64 0
  store <2 x float> %i.re, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i191, ptr %i.po, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.rj = load ptr, ptr %i.pp, align 8, !tbaa !22
  %i.rk = getelementptr inbounds nuw [16 x i8], ptr %i.rj, i64 %indvars.iv234 ; 2 uses
  %i.rl = load float, ptr %i.qu, align 4, !tbaa !50 ; 2 uses
  %i.rm = load <2 x float>, ptr %i.rk, align 4, !tbaa !50
  %i.rn = insertelement <2 x float> poison, float %i.rl, i64 0
  %i.ro = shufflevector <2 x float> %i.rn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rp = fmul <2 x float> %i.ro, %i.rm
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !50
  %i.rs = fmul float %i.rl, %i.rr
  %.sroa.3.12.vec.insert.i196 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rs, i64 0
  store <2 x float> %i.rp, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i196, ptr %i.pq, align 8
  %i.rt = getelementptr inbounds nuw i8, ptr %i.pu, i64 248
  %i.ru = load float, ptr %i.rt, align 8, !tbaa !103
  %i.rv = load i32, ptr %i.pr, align 4, !tbaa !47
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds [4 x i8], ptr %4, i64 %i.rw ; 2 uses
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !50
  %i.rz = fmul float %i.ru, %i.ry
  store float %i.rz, ptr %i.rx, align 4, !tbaa !50
  %i.sa = load ptr, ptr %i.pi, align 8, !tbaa !45
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.sa, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.sb = load <2 x float>, ptr %7, align 8, !tbaa !50
  %i.sc = fneg <2 x float> %i.sb
  %i.sd = load float, ptr %i.pq, align 8, !tbaa !50
  %i.se = fneg float %i.sd
  %.sroa.3.12.vec.insert.i201 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.se, i64 0
  store <2 x float> %i.sc, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i201, ptr %i.ps, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.ra, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %i.sf = load i32, ptr %i.a, align 4, !tbaa !43
  %i.sg = sext i32 %i.sf to i64
  %i.sh = icmp slt i64 %indvars.iv.next235, %i.sg
  br i1 %i.sh, label %bb.ac, label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit172, %.preheader210, %.loopexit209, %bb.a
  ret void
}

declare void @_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff(ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), float noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %5) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %5, ptr %i.d, align 4, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load float, ptr %3, align 4, !tbaa !50   ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !50
  %i.h = fsub float %i.f, %i.g                    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !50 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.l = load float, ptr %i.k, align 4, !tbaa !50
  %i.m = fsub float %i.j, %i.l                    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !50 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load float, ptr %i.p, align 4, !tbaa !50
  %i.r = fsub float %i.o, %i.q                    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !50 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !50 ; 5 uses
  %i.w = fneg float %i.v                          ; 2 uses
  %i.x = fmul float %i.r, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.m, float %i.t, float %i.x) ; 3 uses
  %i.z = load float, ptr %4, align 4, !tbaa !50   ; 5 uses
  %i.aa = fneg float %i.t                         ; 2 uses
  %i.ab = fmul float %i.h, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.r, float %i.z, float %i.ab) ; 3 uses
  %i.ad = fneg float %i.z                         ; 2 uses
  %i.ae = fmul float %i.m, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.h, float %i.v, float %i.ae) ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !50
  %i.ak = fmul float %i.ac, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.y, float %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.an = load float, ptr %i.am, align 4, !tbaa !50
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.af, float %i.al) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.as = load float, ptr %i.ar, align 4, !tbaa !50
  %i.at = fmul float %i.ac, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.y, float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.aw = load float, ptr %i.av, align 4, !tbaa !50
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float %i.af, float %i.au) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.az = load float, ptr %i.ay, align 4, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !50
  %i.bc = fmul float %i.ac, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.az, float %i.y, float %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.bf = load float, ptr %i.be, align 4, !tbaa !50
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.af, float %i.bd) ; 2 uses
  %i.bh = fneg float %i.m
  %i.bi = fmul float %i.bg, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.r, float %i.bi)
  %i.bk = fneg float %i.r
  %i.bl = fmul float %i.ao, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.h, float %i.bl)
  %i.bn = fneg float %i.h
  %i.bo = fmul float %i.ax, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.m, float %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.br = load float, ptr %i.bq, align 8, !tbaa !81
  %i.bs = fmul float %i.v, %i.bm
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.z, float %i.bj, float %i.bs)
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.bp, float %i.bt)
  %i.bv = fadd float %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !50
  %i.by = fsub float %i.f, %i.bx                  ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !50
  %i.cb = fsub float %i.j, %i.ca                  ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !50
  %i.ce = fsub float %i.o, %i.cd                  ; 4 uses
  %i.cf = fmul float %i.ce, %i.w
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.t, float %i.cf) ; 3 uses
  %i.ch = fmul float %i.by, %i.aa
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.z, float %i.ch) ; 3 uses
  %i.cj = fmul float %i.cb, %i.ad
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.by, float %i.v, float %i.cj) ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !50
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.co = load float, ptr %i.cn, align 4, !tbaa !50
  %i.cp = fmul float %i.ci, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cg, float %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !50
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.ck, float %i.cq) ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 284
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !50
  %i.cy = fmul float %i.ci, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cg, float %i.cy)
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 316
  %i.db = load float, ptr %i.da, align 4, !tbaa !50
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.ck, float %i.cz) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.de = load float, ptr %i.dd, align 4, !tbaa !50
end_hunk_0
