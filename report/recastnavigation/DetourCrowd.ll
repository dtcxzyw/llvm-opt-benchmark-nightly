Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourCrowd?download=true
inline.NumInlined: 146
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7dtCrowd6updateEfP21dtCrowdAgentDebugInfo:bb.a
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !32
  %i.ko = and i8 %i.kn, 4
  %.not13.i = icmp eq i8 %i.ko, 0
  br i1 %.not13.i, label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 416 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jz, i64 520
  %i.kr = mul nsw i32 %i.kk, 3
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.ks ; 2 uses
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !31
  %i.kv = load float, ptr %i.kp, align 8, !tbaa !31
  %i.kw = fsub float %i.ku, %i.kv                 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !31
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jz, i64 424 ; 2 uses
  %i.la = load float, ptr %i.kz, align 8, !tbaa !31
  %i.lb = fsub float %i.ky, %i.la                 ; 2 uses
  %i.lc = fmul float %i.lb, %i.lb
  %i.ld = call noundef float @llvm.fmuladd.f32(float %i.kw, float %i.kw, float %i.lc)
  %i.le = fmul float %i.kg, %i.kg
  %i.lf = fcmp uge float %i.ld, %i.le
  br i1 %i.lf, label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread, label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit

_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit: ; preds = %bb.aq
  %i.lg = load ptr, ptr %i.ie, align 8, !tbaa !24
  %i.lh = ptrtoint ptr %i.jz to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = sdiv exact i64 %i.lj, 624
  %i.ll = load ptr, ptr %i.if, align 8, !tbaa !26
  %sext381 = shl i64 %i.lk, 32
  %i.lm = ashr exact i64 %sext381, 32
  %i.ln = getelementptr inbounds [52 x i8], ptr %i.ll, i64 %i.lm ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.lp = sext i32 %i.ki to i64
  %i.lq = getelementptr [4 x i8], ptr %i.jz, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 568
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !44
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ln, i64 16 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ln, i64 28 ; 2 uses
  %i.lv = load ptr, ptr %i.ig, align 8, !tbaa !30
  %i.lw = call noundef zeroext i1 @_ZN14dtPathCorridor25moveOverOffmeshConnectionEjPjPfS1_P14dtNavMeshQuery(ptr noundef nonnull align 8 dereferenceable(40) %i.lo, i32 noundef %i.ls, ptr noundef nonnull %i.b, ptr noundef nonnull %i.lt, ptr noundef nonnull %i.lu, ptr noundef %i.lv) #12
  br i1 %i.lw, label %bb.ar, label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread.sink.split

bb.ar:                                            ; preds = %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.ly = load float, ptr %i.kp, align 8, !tbaa !31
  store float %i.ly, ptr %i.lx, align 4, !tbaa !31
  %i.lz = getelementptr inbounds nuw i8, ptr %i.jz, i64 420
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !31
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store float %i.ma, ptr %i.mb, align 4, !tbaa !31
  %i.mc = load float, ptr %i.kz, align 8, !tbaa !31
  %i.md = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  store float %i.mc, ptr %i.md, align 4, !tbaa !31
  %i.me = load i32, ptr %i.ih, align 4, !tbaa !44
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  store i32 %i.me, ptr %i.mf, align 4, !tbaa !77
  store i8 1, ptr %i.ln, align 4, !tbaa !41
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ln, i64 44
  store float 0.000000e+00, ptr %i.mg, align 4, !tbaa !78
  %i.mh = load float, ptr %i.lu, align 4, !tbaa !31
  %i.mi = load float, ptr %i.lt, align 4, !tbaa !31
  %i.mj = fsub float %i.mh, %i.mi                 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ln, i64 36
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !31
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !31
  %i.mo = fsub float %i.ml, %i.mn                 ; 2 uses
  %i.mp = fmul float %i.mo, %i.mo
  %i.mq = call float @llvm.fmuladd.f32(float %i.mj, float %i.mj, float %i.mp)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.mq)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.jz, i64 492
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !79
  %i.mt = fdiv float %sqrt.i, %i.ms
  %i.mu = fmul float %i.mt, 5.000000e-01
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ln, i64 48
  store float %i.mu, ptr %i.mv, align 4, !tbaa !80
  store i8 2, ptr %i.ka, align 1, !tbaa !51
  store i32 0, ptr %i.kh, align 4, !tbaa !75
  %i.mw = getelementptr inbounds nuw i8, ptr %i.jz, i64 408
  store i32 0, ptr %i.mw, align 8, !tbaa !49
  br label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread.sink.split

_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread.sink.split: ; preds = %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread

_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread: ; preds = %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread.sink.split, %bb.ap, %bb.aq, %bb.ao, %bb.an, %bb.an, %bb.am
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next522, %wide.trip.count524
  br i1 %exitcond525.not, label %.lr.ph476, label %bb.am

.lr.ph484:                                        ; preds = %bb.bj
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 632
  %wide.trip.count545 = zext nneg i32 %.09.lcssa.i to i64
  br label %bb.bk

bb.as:                                            ; preds = %.lr.ph476, %bb.bj
  %indvars.iv531 = phi i64 [ 0, %.lr.ph476 ], [ %indvars.iv.next532, %bb.bj ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv531
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !56 ; 31 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 1
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !51
  %.not377 = icmp eq i8 %i.ne, 1
  br i1 %.not377, label %bb.at, label %bb.bj

bb.at:                                            ; preds = %bb.as
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 592
  %i.ng = load i8, ptr %i.nf, align 8, !tbaa !52
  switch i8 %i.ng, label %bb.av [
    i8 0, label %bb.bj
    i8 6, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 600
  %i.ni = load <2 x float>, ptr %i.nh, align 8, !tbaa !31 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nc, i64 608
  %i.nk = load float, ptr %i.nj, align 8, !tbaa !31 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ni, %i.ni
  %i.nl = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.nm = extractelement <2 x float> %i.ni, i64 0 ; 2 uses
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %i.nm, float %i.nl)
  %i.no = call float @llvm.fmuladd.f32(float %i.nk, float %i.nk, float %i.nn)
  %sqrt.i401 = call noundef float @llvm.sqrt.f32(float %i.no) ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nc, i64 412
  store float %sqrt.i401, ptr %i.np, align 4, !tbaa !50
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.nc, i64 508
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !59
  br label %bb.bc

bb.av:                                            ; preds = %bb.at
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nc, i64 480 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nc, i64 508
  %i.ns = load i8, ptr %i.nr, align 4, !tbaa !59  ; 2 uses
  %i.nt = and i8 %i.ns, 1
  %.not378 = icmp eq i8 %i.nt, 0
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nc, i64 588
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !75 ; 3 uses
  %.not.i403 = icmp eq i32 %i.nv, 0               ; 2 uses
  br i1 %.not378, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %.not.i403, label %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nw = call i32 @llvm.smin.i32(i32 %i.nv, i32 2)
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nc, i64 520 ; 2 uses
  %i.ny = mul i32 %i.nw, 3
  %i.nz = add i32 %i.ny, -3
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.nx, i64 %i.oa ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nc, i64 416
  %i.od = load float, ptr %i.nx, align 8, !tbaa !31
  %i.oe = load float, ptr %i.oc, align 8, !tbaa !31
  %i.of = getelementptr inbounds nuw i8, ptr %i.nc, i64 528
  %i.og = load float, ptr %i.of, align 8, !tbaa !31
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nc, i64 424
  %i.oi = load float, ptr %i.oh, align 8, !tbaa !31
  %i.oj = load float, ptr %i.ob, align 4, !tbaa !31
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !31
  %i.om = insertelement <2 x float> poison, float %i.od, i64 0
  %i.on = insertelement <2 x float> %i.om, float %i.og, i64 1
  %i.oo = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.op = insertelement <2 x float> %i.oo, float %i.oi, i64 1 ; 2 uses
  %i.oq = fsub <2 x float> %i.on, %i.op           ; 3 uses
  %i.or = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.os = insertelement <2 x float> %i.or, float %i.ol, i64 1
  %i.ot = fsub <2 x float> %i.os, %i.op           ; 4 uses
  %i.ou = extractelement <2 x float> %i.oq, i64 0 ; 2 uses
  %i.ov = call float @llvm.fmuladd.f32(float %i.ou, float %i.ou, float 0.000000e+00)
  %i.ow = extractelement <2 x float> %i.oq, i64 1 ; 2 uses
  %i.ox = call float @llvm.fmuladd.f32(float %i.ow, float %i.ow, float %i.ov)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ox)
  %i.oy = extractelement <2 x float> %i.ot, i64 0 ; 2 uses
  %i.oz = call float @llvm.fmuladd.f32(float %i.oy, float %i.oy, float 0.000000e+00)
  %i.pa = extractelement <2 x float> %i.ot, i64 1 ; 2 uses
  %i.pb = call float @llvm.fmuladd.f32(float %i.pa, float %i.pa, float %i.oz)
  %sqrt.i18.i = call noundef float @llvm.sqrt.f32(float %i.pb) ; 2 uses
  %i.pc = fcmp ogt float %sqrt.i18.i, 1.000000e-03
  %i.pd = fdiv float 1.000000e+00, %sqrt.i18.i
  %i.pe = insertelement <2 x float> poison, float %i.pd, i64 0
  %i.pf = shufflevector <2 x float> %i.pe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pg = fmul <2 x float> %i.ot, %i.pf
  %i.ph = insertelement <2 x i1> poison, i1 %i.pc, i64 0
  %i.pi = shufflevector <2 x i1> %i.ph, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.pj = select <2 x i1> %i.pi, <2 x float> %i.pg, <2 x float> %i.ot
  %i.pk = fneg float %sqrt.i.i
  %i.pl = insertelement <2 x float> poison, float %i.pk, i64 0
  %i.pm = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pn = fmul <2 x float> %i.pj, %i.pm
  %i.po = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pn, <2 x float> splat (float 5.000000e-01), <2 x float> %i.oq) ; 4 uses
  %i.pp = fmul <2 x float> %i.po, %i.po
  %3 = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.pp)
  %i.pq = extractelement <2 x float> %i.po, i64 0
  %i.pr = extractelement <2 x float> %i.po, i64 1
  br label %bb.ba

bb.ay:                                            ; preds = %bb.av
  br i1 %.not.i403, label %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ps = getelementptr inbounds nuw i8, ptr %i.nc, i64 520
  %i.pt = getelementptr inbounds nuw i8, ptr %i.nc, i64 416
  %i.pu = load float, ptr %i.ps, align 8, !tbaa !31
  %i.pv = load float, ptr %i.pt, align 8, !tbaa !31
  %i.pw = fsub float %i.pu, %i.pv                 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.nc, i64 528
  %i.py = load float, ptr %i.px, align 8, !tbaa !31
  %i.pz = getelementptr inbounds nuw i8, ptr %i.nc, i64 424
  %i.qa = load float, ptr %i.pz, align 8, !tbaa !31
  %i.qb = fsub float %i.py, %i.qa                 ; 3 uses
  %i.qc = fmul float %i.pw, %i.pw
  %i.qd = fmul float %i.qb, %i.qb
  %i.qe = fadd float %i.qc, %i.qd
  br label %bb.ba

_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread: ; preds = %bb.aw, %bb.ay
  %i.qf = load float, ptr %i.nq, align 8, !tbaa !67
  %i.qg = fmul float %i.qf, 2.000000e+00          ; 2 uses
  br label %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit

bb.ba:                                            ; preds = %bb.ax, %bb.az
  %.sink629 = phi float [ %3, %bb.ax ], [ %i.qe, %bb.az ]
  %.sink627 = phi float [ %i.pq, %bb.ax ], [ %i.pw, %bb.az ]
  %.sink624 = phi float [ %i.pr, %bb.ax ], [ %i.qb, %bb.az ]
  %sqrt.i19.i = call float @llvm.sqrt.f32(float %.sink629)
  %i.qh = fdiv float 1.000000e+00, %sqrt.i19.i    ; 2 uses
  %i.qi = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink627, i64 0
  %i.qj = insertelement <2 x float> poison, float %i.qh, i64 0
  %i.qk = shufflevector <2 x float> %i.qj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ql = fmul <2 x float> %i.qi, %i.qk           ; 2 uses
  %i.qm = fmul float %.sink624, %i.qh             ; 2 uses
  %i.qn = load float, ptr %i.nq, align 8, !tbaa !67
  %i.qo = fmul float %i.qn, 2.000000e+00          ; 5 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.nc, i64 568
  %i.qq = add nsw i32 %i.nv, -1                   ; 2 uses
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds i8, ptr %i.qp, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !32
  %i.qu = and i8 %i.qt, 2
  %.not11.i = icmp eq i8 %i.qu, 0
  br i1 %.not11.i, label %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qv = getelementptr inbounds nuw i8, ptr %i.nc, i64 416
  %i.qw = getelementptr inbounds nuw i8, ptr %i.nc, i64 520
  %i.qx = mul nsw i32 %i.qq, 3
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.qy ; 2 uses
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !31
  %i.rb = load float, ptr %i.qv, align 8, !tbaa !31
  %i.rc = fsub float %i.ra, %i.rb                 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.re = load float, ptr %i.rd, align 4, !tbaa !31
  %i.rf = getelementptr inbounds nuw i8, ptr %i.nc, i64 424
  %i.rg = load float, ptr %i.rf, align 8, !tbaa !31
  %i.rh = fsub float %i.re, %i.rg                 ; 2 uses
  %i.ri = fmul float %i.rh, %i.rh
  %i.rj = call float @llvm.fmuladd.f32(float %i.rc, float %i.rc, float %i.ri)
  %sqrt.i.i406 = call noundef float @llvm.sqrt.f32(float %i.rj) ; 2 uses
  %i.rk = fcmp olt float %sqrt.i.i406, %i.qo
  %i.rl = select i1 %i.rk, float %sqrt.i.i406, float %i.qo
  br label %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit

_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit:     ; preds = %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread, %bb.ba, %bb.bb
  %i.rm = phi float [ %i.qg, %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread ], [ %i.qo, %bb.bb ], [ %i.qo, %bb.ba ]
  %.sroa.31.0612 = phi float [ 0.000000e+00, %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread ], [ %i.qm, %bb.bb ], [ %i.qm, %bb.ba ]
  %.1.i407 = phi float [ %i.qg, %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread ], [ %i.rl, %bb.bb ], [ %i.qo, %bb.ba ]
  %i.rn = phi <2 x float> [ zeroinitializer, %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread ], [ %i.ql, %bb.bb ], [ %i.ql, %bb.ba ]
  %i.ro = fdiv float %.1.i407, %i.rm
  %i.rp = getelementptr inbounds nuw i8, ptr %i.nc, i64 492
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !79 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.nc, i64 412
  store float %i.rq, ptr %i.rr, align 4, !tbaa !50
  %i.rs = fmul float %i.rq, %i.ro                 ; 2 uses
  %i.rt = insertelement <2 x float> poison, float %i.rs, i64 0
  %i.ru = shufflevector <2 x float> %i.rt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rv = fmul <2 x float> %i.rn, %i.ru
  %i.rw = fmul float %.sroa.31.0612, %i.rs
  br label %bb.bc

bb.bc:                                            ; preds = %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit, %bb.au
  %i.rx = phi float [ %sqrt.i401, %bb.au ], [ %i.rq, %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit ] ; 2 uses
  %i.ry = phi i8 [ %.pre, %bb.au ], [ %i.ns, %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit ]
  %.sroa.31.1 = phi float [ %i.nk, %bb.au ], [ %i.rw, %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit ] ; 4 uses
  %i.rz = phi <2 x float> [ %i.ni, %bb.au ], [ %i.rv, %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit ] ; 4 uses
  %i.sa = and i8 %i.ry, 4
  %.not379 = icmp eq i8 %i.sa, 0
  br i1 %.not379, label %._crit_edge.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.sb = getelementptr inbounds nuw i8, ptr %i.nc, i64 496
  %i.sc = load float, ptr %i.sb, align 8, !tbaa !68 ; 3 uses
  %i.sd = fdiv float 1.000000e+00, %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.nc, i64 504
  %i.sf = load float, ptr %i.se, align 8, !tbaa !81
  %i.sg = getelementptr inbounds nuw i8, ptr %i.nc, i64 408
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !49 ; 2 uses
  %i.si = icmp sgt i32 %i.sh, 0
  br i1 %i.si, label %.lr.ph471, label %._crit_edge.thread

.lr.ph471:                                        ; preds = %bb.bd
  %i.sj = load ptr, ptr %i.jx, align 8, !tbaa !24
  %i.sk = getelementptr inbounds nuw i8, ptr %i.nc, i64 360
  %i.sl = getelementptr inbounds nuw i8, ptr %i.nc, i64 416
  %i.sm = load float, ptr %i.sl, align 8, !tbaa !31
  %i.sn = getelementptr inbounds nuw i8, ptr %i.nc, i64 424
  %i.so = load float, ptr %i.sn, align 8, !tbaa !31
  %i.sp = fmul float %i.sc, %i.sc
  %wide.trip.count529 = zext nneg i32 %i.sh to i64
  br label %bb.be

._crit_edge:                                      ; preds = %bb.bg
  %i.sq = fcmp ogt float %.1351, f0x38D1B717
  br i1 %i.sq, label %bb.bh, label %._crit_edge.thread

bb.be:                                            ; preds = %.lr.ph471, %bb.bg
  %indvars.iv526 = phi i64 [ 0, %.lr.ph471 ], [ %indvars.iv.next527, %bb.bg ] ; 2 uses
  %.0350469 = phi float [ 0.000000e+00, %.lr.ph471 ], [ %.1351, %bb.bg ] ; 2 uses
  %.sroa.9423.0468 = phi float [ 0.000000e+00, %.lr.ph471 ], [ %.sroa.9423.1, %bb.bg ] ; 2 uses
  %i.sr = phi <2 x float> [ zeroinitializer, %.lr.ph471 ], [ %i.tr, %bb.bg ] ; 2 uses
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %indvars.iv526
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !74
  %i.su = sext i32 %i.st to i64
  %i.sv = getelementptr inbounds [624 x i8], ptr %i.sj, i64 %i.su ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 416
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !31
  %i.sy = fsub float %i.sm, %i.sx                 ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 424
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !31
  %i.tb = fsub float %i.so, %i.ta                 ; 3 uses
  %i.tc = call float @llvm.fmuladd.f32(float %i.sy, float %i.sy, float 0.000000e+00)
  %i.td = call noundef float @llvm.fmuladd.f32(float %i.tb, float %i.tb, float %i.tc) ; 3 uses
  %i.te = fcmp olt float %i.td, f0x3727C5AC
  %i.tf = fcmp ogt float %i.td, %i.sp
  %or.cond442 = select i1 %i.te, i1 true, i1 %i.tf
  br i1 %or.cond442, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %sqrt = call float @llvm.sqrt.f32(float %i.td)  ; 2 uses
  %i.tg = fmul float %i.sd, %sqrt                 ; 2 uses
  %i.th = fmul float %i.tg, %i.tg
  %i.ti = fsub float 1.000000e+00, %i.th
  %i.tj = fmul float %i.sf, %i.ti
  %i.tk = fdiv float %i.tj, %sqrt                 ; 2 uses
  %i.tl = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sy, i64 0
  %i.tm = insertelement <2 x float> poison, float %i.tk, i64 0
  %i.tn = shufflevector <2 x float> %i.tm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.to = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tl, <2 x float> %i.tn, <2 x float> %i.sr)
  %i.tp = call float @llvm.fmuladd.f32(float %i.tb, float %i.tk, float %.sroa.9423.0468)
  %i.tq = fadd float %.0350469, 1.000000e+00
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.sroa.9423.1 = phi float [ %.sroa.9423.0468, %bb.be ], [ %i.tp, %bb.bf ] ; 2 uses
  %.1351 = phi float [ %.0350469, %bb.be ], [ %i.tq, %bb.bf ] ; 3 uses
  %i.tr = phi <2 x float> [ %i.sr, %bb.be ], [ %i.to, %bb.bf ] ; 2 uses
  %indvars.iv.next527 = add nuw nsw i64 %indvars.iv526, 1 ; 2 uses
  %exitcond530.not = icmp eq i64 %indvars.iv.next527, %wide.trip.count529
  br i1 %exitcond530.not, label %._crit_edge, label %bb.be

bb.bh:                                            ; preds = %._crit_edge
  %i.ts = fdiv float 1.000000e+00, %.1351         ; 2 uses
  %i.tt = insertelement <2 x float> poison, float %i.ts, i64 0
  %i.tu = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tr, <2 x float> %i.tu, <2 x float> %i.rz) ; 5 uses
  %i.tw = call float @llvm.fmuladd.f32(float %.sroa.9423.1, float %i.ts, float %.sroa.31.1) ; 4 uses
  %foldExtExtBinop647.a = fmul <2 x float> %i.tv, %i.tv
  %i.tx = extractelement <2 x float> %foldExtExtBinop647.a, i64 1
  %i.ty = extractelement <2 x float> %i.tv, i64 0 ; 2 uses
  %i.tz = call float @llvm.fmuladd.f32(float %i.ty, float %i.ty, float %i.tx)
  %i.ua = call noundef float @llvm.fmuladd.f32(float %i.tw, float %i.tw, float %i.tz) ; 2 uses
  %i.ub = fmul float %i.rx, %i.rx                 ; 2 uses
  %i.uc = fcmp ogt float %i.ua, %i.ub
  br i1 %i.uc, label %bb.bi, label %._crit_edge.thread

bb.bi:                                            ; preds = %bb.bh
  %i.ud = fdiv float %i.ub, %i.ua                 ; 2 uses
  %i.ue = insertelement <2 x float> poison, float %i.ud, i64 0
  %i.uf = shufflevector <2 x float> %i.ue, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ug = fmul <2 x float> %i.tv, %i.uf
  %i.uh = fmul float %i.tw, %i.ud
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.bd, %._crit_edge, %bb.bi, %bb.bh, %bb.bc
  %.sroa.31.3 = phi float [ %.sroa.31.1, %bb.bc ], [ %i.uh, %bb.bi ], [ %i.tw, %bb.bh ], [ %.sroa.31.1, %._crit_edge ], [ %.sroa.31.1, %bb.bd ]
  %i.ui = phi <2 x float> [ %i.rz, %bb.bc ], [ %i.ug, %bb.bi ], [ %i.tv, %bb.bh ], [ %i.rz, %._crit_edge ], [ %i.rz, %bb.bd ]
  %i.uj = getelementptr inbounds nuw i8, ptr %i.nc, i64 440
  store <2 x float> %i.ui, ptr %i.uj, align 8, !tbaa !31
  %i.uk = getelementptr inbounds nuw i8, ptr %i.nc, i64 448
  store float %.sroa.31.3, ptr %i.uk, align 8, !tbaa !31
  br label %bb.bj

end_hunk_0
begin_hunk_1_@_ZN7dtCrowd6updateEfP21dtCrowdAgentDebugInfo:bb.a
  %i.ade = load float, ptr %i.add, align 4, !tbaa !31
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acr, i64 424
  store float %i.ade, ptr %i.adf, align 4, !tbaa !31
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acr, i64 592
  %i.adh = load i8, ptr %i.adg, align 8, !tbaa !52
  switch i8 %i.adh, label %bb.cp [
    i8 0, label %bb.cn
    i8 6, label %bb.cn
  ]

bb.cn:                                            ; preds = %bb.cm, %bb.cm
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acr, i64 40
  %i.adj = load i32, ptr %i.adi, align 8, !tbaa !58
  %.not.i411 = icmp eq i32 %i.adj, 0
  br i1 %.not.i411, label %_ZNK14dtPathCorridor12getFirstPolyEv.exit412, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acr, i64 32
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !57
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !44
  br label %_ZNK14dtPathCorridor12getFirstPolyEv.exit412

_ZNK14dtPathCorridor12getFirstPolyEv.exit412:     ; preds = %bb.cn, %bb.co
  %i.adn = phi i32 [ %i.adm, %bb.co ], [ 0, %bb.cn ]
  call void @_ZN14dtPathCorridor5resetEjPKf(ptr noundef nonnull align 8 dereferenceable(40) %i.acu, i32 noundef %i.adn, ptr noundef nonnull %i.acv) #12
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acr, i64 2
  store i8 0, ptr %i.ado, align 2, !tbaa !46
  br label %bb.cp

bb.cp:                                            ; preds = %_ZNK14dtPathCorridor12getFirstPolyEv.exit412, %bb.cm, %bb.cl
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1 ; 2 uses
  %exitcond572.not = icmp eq i64 %indvars.iv.next569, %wide.trip.count571
  br i1 %exitcond572.not, label %.lr.ph502, label %bb.cl

._crit_edge503:                                   ; preds = %._crit_edge497.thread, %bb.cx
  ret void

bb.cq:                                            ; preds = %.lr.ph502, %bb.cx
  %indvars.iv573 = phi i64 [ 0, %.lr.ph502 ], [ %indvars.iv.next574, %bb.cx ] ; 2 uses
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv573
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !56 ; 10 uses
  %i.adr = ptrtoint ptr %i.adq to i64
  %i.ads = sub i64 %i.adr, %i.acn
  %i.adt = sdiv exact i64 %i.ads, 624
  %sext = shl i64 %i.adt, 32
  %i.adu = ashr exact i64 %sext, 32
  %i.adv = getelementptr inbounds [52 x i8], ptr %i.acp, i64 %i.adu ; 13 uses
  %i.adw = load i8, ptr %i.adv, align 4, !tbaa !41, !range !42, !noundef !43
  %i.adx = trunc nuw i8 %i.adw to i1
  br i1 %i.adx, label %bb.cr, label %bb.cx

bb.cr:                                            ; preds = %bb.cq
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adv, i64 44 ; 2 uses
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !78
  %i.aea = fadd float %1, %i.adz                  ; 5 uses
  store float %i.aea, ptr %i.ady, align 4, !tbaa !78
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adv, i64 48
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !80 ; 3 uses
  %i.aed = fcmp ogt float %i.aea, %i.aec
  br i1 %i.aed, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i8 0, ptr %i.adv, align 4, !tbaa !41
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adq, i64 1
  store i8 1, ptr %i.aee, align 1, !tbaa !51
  br label %bb.cx

bb.ct:                                            ; preds = %bb.cr
  %i.aef = fmul float %i.aec, 1.500000e-01        ; 4 uses
  %i.aeg = fcmp olt float %i.aea, %i.aef
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adv, i64 20 ; 2 uses
  br i1 %i.aeg, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.aei = fdiv float %i.aea, %i.aef              ; 3 uses
  %i.aej = fcmp olt float %i.aei, 0.000000e+00
  %i.aek = fcmp ogt float %i.aei, 1.000000e+00
  %i.ael = select i1 %i.aek, float 1.000000e+00, float %i.aei
  %i.aem = select i1 %i.aej, float 0.000000e+00, float %i.ael ; 3 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adq, i64 416
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.adv, i64 4
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adv, i64 16
  %i.aeq = load float, ptr %i.aeo, align 4, !tbaa !31 ; 2 uses
  %i.aer = load float, ptr %i.aep, align 4, !tbaa !31
  %i.aes = fsub float %i.aer, %i.aeq
  %i.aet = call float @llvm.fmuladd.f32(float %i.aes, float %i.aem, float %i.aeq)
  store float %i.aet, ptr %i.aen, align 4, !tbaa !31
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.adv, i64 8
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !31 ; 2 uses
  %i.aew = load float, ptr %i.aeh, align 4, !tbaa !31
  %i.aex = fsub float %i.aew, %i.aev
  %i.aey = call float @llvm.fmuladd.f32(float %i.aex, float %i.aem, float %i.aev)
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.aez = fsub float %i.aea, %i.aef
  %i.afa = fsub float %i.aec, %i.aef
  %i.afb = fdiv float %i.aez, %i.afa              ; 3 uses
  %i.afc = fcmp olt float %i.afb, 0.000000e+00
  %i.afd = fcmp ogt float %i.afb, 1.000000e+00
  %i.afe = select i1 %i.afd, float 1.000000e+00, float %i.afb
  %i.aff = select i1 %i.afc, float 0.000000e+00, float %i.afe ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.adq, i64 416
  %i.afh = getelementptr inbounds nuw i8, ptr %i.adv, i64 16
  %i.afi = getelementptr inbounds nuw i8, ptr %i.adv, i64 28
  %i.afj = load float, ptr %i.afh, align 4, !tbaa !31 ; 2 uses
  %i.afk = load float, ptr %i.afi, align 4, !tbaa !31
  %i.afl = fsub float %i.afk, %i.afj
  %i.afm = call float @llvm.fmuladd.f32(float %i.afl, float %i.aff, float %i.afj)
  store float %i.afm, ptr %i.afg, align 4, !tbaa !31
  %i.afn = load float, ptr %i.aeh, align 4, !tbaa !31 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.adv, i64 32
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !31
  %i.afq = fsub float %i.afp, %i.afn
  %i.afr = call float @llvm.fmuladd.f32(float %i.afq, float %i.aff, float %i.afn)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sink637 = phi float [ %i.afr, %bb.cv ], [ %i.aey, %bb.cu ]
  %.sink636 = phi i64 [ 24, %bb.cv ], [ 12, %bb.cu ]
  %.sink = phi i64 [ 36, %bb.cv ], [ 24, %bb.cu ]
  %.sink631 = phi float [ %i.aff, %bb.cv ], [ %i.aem, %bb.cu ]
  %i.afs = getelementptr inbounds nuw i8, ptr %i.adq, i64 420
  store float %.sink637, ptr %i.afs, align 4, !tbaa !31
  %i.aft = getelementptr inbounds nuw i8, ptr %i.adv, i64 %.sink636
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !31 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.adv, i64 %.sink
  %i.afw = load float, ptr %i.afv, align 4, !tbaa !31
  %i.afx = fsub float %i.afw, %i.afu
  %i.afy = call float @llvm.fmuladd.f32(float %i.afx, float %.sink631, float %i.afu)
  %i.afz = getelementptr inbounds nuw i8, ptr %i.adq, i64 424
  store float %i.afy, ptr %i.afz, align 4, !tbaa !31
  %i.aga = getelementptr inbounds nuw i8, ptr %i.adq, i64 464
  store <2 x float> zeroinitializer, ptr %i.aga, align 4, !tbaa !31
  %i.agb = getelementptr inbounds nuw i8, ptr %i.adq, i64 472
  store float 0.000000e+00, ptr %i.agb, align 4, !tbaa !31
  %i.agc = getelementptr inbounds nuw i8, ptr %i.adq, i64 440
  store <2 x float> zeroinitializer, ptr %i.agc, align 4, !tbaa !31
  %i.agd = getelementptr inbounds nuw i8, ptr %i.adq, i64 448
  store float 0.000000e+00, ptr %i.agd, align 4, !tbaa !31
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cq, %bb.cw, %bb.cs
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1 ; 2 uses
  %exitcond577.not = icmp eq i64 %indvars.iv.next574, %wide.trip.count576
  br i1 %exitcond577.not, label %._crit_edge503, label %bb.cq
}

declare void @_ZN15dtProximityGrid5clearEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #2

declare void @_ZN15dtProximityGrid7addItemEtffff(ptr noundef nonnull align 8 dereferenceable(52), i16 noundef zeroext, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN15dtLocalBoundary7isValidEP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 4 dereferenceable(308), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN15dtLocalBoundary6updateEjPKffP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 4 dereferenceable(308), i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN14dtPathCorridor11findCornersEPfPhPjiP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN14dtPathCorridor22optimizePathVisibilityEPKffP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN14dtPathCorridor25moveOverOffmeshConnectionEjPjPfS1_P14dtNavMeshQuery(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN24dtObstacleAvoidanceQuery5resetEv(ptr noundef nonnull align 8 dereferenceable(76)) local_unnamed_addr #2

declare void @_ZN24dtObstacleAvoidanceQuery9addCircleEPKffS1_S1_(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN24dtObstacleAvoidanceQuery10addSegmentEPKfS1_(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN24dtObstacleAvoidanceQuery22sampleVelocityAdaptiveEPKfffS1_S1_PfPK25dtObstacleAvoidanceParamsP28dtObstacleAvoidanceDebugData(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN14dtPathCorridor12movePositionEPKfP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN15dtLocalBoundaryD1Ev(ptr noundef nonnull align 4 dead_on_return(308) dereferenceable(308)) unnamed_addr #2

declare void @_ZN14dtPathCorridorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #2

declare void @_ZN14dtPathCorridorC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

declare void @_ZN15dtLocalBoundaryC1Ev(ptr noundef nonnull align 4 dereferenceable(308)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

declare noundef i32 @_ZNK15dtProximityGrid10queryItemsEffffPti(ptr noundef nonnull align 8 dereferenceable(52), float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS12dtCrowdAgent", !11, i64 0}
!13 = !{!"any p2 pointer", !11, i64 0}
!14 = !{!"p2 _ZTS12dtCrowdAgent", !13, i64 0}
!15 = !{!"p1 _ZTS21dtCrowdAgentAnimation", !11, i64 0}
!16 = !{!"p1 _ZTS14dtNavMeshQuery", !11, i64 0}
!17 = !{!"_ZTS11dtPathQueue", !7, i64 0, !8, i64 576, !8, i64 580, !8, i64 584, !16, i64 592}
!18 = !{!"p1 _ZTS24dtObstacleAvoidanceQuery", !11, i64 0}
!19 = !{!"p1 _ZTS15dtProximityGrid", !11, i64 0}
!20 = !{!"p1 int", !11, i64 0}
!21 = !{!"float", !7, i64 0}
!22 = !{!"_ZTS7dtCrowd", !8, i64 0, !12, i64 8, !14, i64 16, !15, i64 24, !17, i64 32, !7, i64 632, !18, i64 856, !19, i64 864, !20, i64 872, !8, i64 880, !7, i64 884, !7, i64 896, !21, i64 5056, !8, i64 5060, !16, i64 5064}
!23 = !{!22, !8, i64 0}
!24 = !{!22, !12, i64 8}
!25 = !{!22, !14, i64 16}
!26 = !{!22, !15, i64 24}
!27 = !{!22, !20, i64 872}
!28 = !{!22, !19, i64 864}
!29 = !{!22, !18, i64 856}
!30 = !{!22, !16, i64 5064}
!31 = !{!21, !21, i64 0}
!32 = !{!7, !7, i64 0}
!33 = !{!22, !8, i64 880}
!34 = !{!"bool", !7, i64 0}
!35 = !{!"_ZTS14dtPathCorridor", !7, i64 0, !7, i64 12, !20, i64 24, !8, i64 32, !8, i64 36}
!36 = !{!"_ZTS15dtLocalBoundary", !7, i64 0, !7, i64 12, !8, i64 236, !7, i64 240, !8, i64 304}
!37 = !{!"_ZTS18dtCrowdAgentParams", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !7, i64 28, !7, i64 29, !7, i64 30, !11, i64 32}
!38 = !{!"_ZTS12dtCrowdAgent", !34, i64 0, !7, i64 1, !34, i64 2, !35, i64 8, !36, i64 48, !21, i64 356, !7, i64 360, !8, i64 408, !21, i64 412, !7, i64 416, !7, i64 428, !7, i64 440, !7, i64 452, !7, i64 464, !37, i64 480, !7, i64 520, !7, i64 568, !7, i64 572, !8, i64 588, !7, i64 592, !8, i64 596, !7, i64 600, !8, i64 612, !34, i64 616, !21, i64 620}
!39 = !{!38, !34, i64 0}
!40 = !{!"_ZTS21dtCrowdAgentAnimation", !34, i64 0, !7, i64 4, !7, i64 16, !7, i64 28, !8, i64 40, !21, i64 44, !21, i64 48}
!41 = !{!40, !34, i64 0}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!8, !8, i64 0}
!45 = !{!38, !7, i64 510}
!46 = !{!38, !34, i64 2}
!47 = !{!38, !21, i64 356}
!48 = !{!38, !21, i64 620}
!49 = !{!38, !8, i64 408}
!50 = !{!38, !21, i64 412}
!51 = !{!38, !7, i64 1}
!52 = !{!38, !7, i64 592}
!53 = !{!38, !8, i64 596}
!54 = !{!38, !8, i64 612}
!55 = !{!38, !34, i64 616}
!56 = !{!12, !12, i64 0}
!57 = !{!35, !20, i64 24}
!58 = !{!35, !8, i64 32}
!59 = !{!38, !7, i64 508}
!60 = distinct !{!60, !62}
!61 = !{!22, !21, i64 5056}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!22, !8, i64 5060}
!64 = !{!"p1 _ZTS28dtObstacleAvoidanceDebugData", !11, i64 0}
!65 = !{!"_ZTS21dtCrowdAgentDebugInfo", !8, i64 0, !7, i64 4, !7, i64 16, !64, i64 32}
!66 = !{!65, !8, i64 0}
!67 = !{!38, !21, i64 480}
!68 = !{!38, !21, i64 496}
!69 = !{!38, !21, i64 484}
!70 = !{!"short", !7, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"_ZTS16dtCrowdNeighbour", !8, i64 0, !21, i64 4}
!73 = !{!72, !21, i64 4}
!74 = !{!72, !8, i64 0}
!75 = !{!38, !8, i64 588}
!76 = !{!38, !21, i64 500}
!77 = !{!40, !8, i64 40}
!78 = !{!40, !21, i64 44}
!79 = !{!38, !21, i64 492}
!80 = !{!40, !21, i64 48}
!81 = !{!38, !21, i64 504}
!82 = !{!36, !8, i64 236}
!83 = !{!65, !64, i64 32}
!84 = !{!38, !7, i64 509}
!85 = !{!38, !21, i64 488}
end_hunk_1
