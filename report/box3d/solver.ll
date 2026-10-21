Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/solver?download=true
inline.NumInlined: 218
inline.NumDeleted: 66
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@b3ExecuteBlock:bb.a
  %i.nj = extractelement <2 x float> %i.nb, i64 1
  %i.nk = fmul float %i.md, %i.nj
  %i.nl = fsub float %i.ni, %i.nk
  %i.nm = fmul <2 x float> %i.ng, splat (float 2.000000e+00)
  %i.nn = fadd <2 x float> %i.mg, %i.nm
  %i.no = fmul float %i.nl, 2.000000e+00
  %i.np = extractelement <2 x float> %i.mj, i64 0
  %i.nq = fadd float %i.np, %i.no
  store <2 x float> %i.bp, ptr %i.an, align 4, !tbaa !146
  store float %i.bs, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !146
  store <2 x float> %i.nn, ptr %i.ao, align 4, !tbaa !146
  store float %i.nq, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !146
  %indvars.iv.next.i297 = add nsw i64 %indvars.iv.i296, 1 ; 2 uses
  %i.nr = icmp slt i64 %indvars.iv.next.i297, %i.af
  br i1 %i.nr, label %bb.g, label %b3PrepareJointsTask.exit, !llvm.loop !365

bb.l:                                             ; preds = %bb.a
  %i.ns = trunc i64 %.sroa.19.0.extract.shift to i8
  switch i8 %i.ns, label %bb.o [
    i8 4, label %bb.m
    i8 5, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %.sroa.3.0.extract.shift.i298 = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc.i299 = trunc nuw i64 %.sroa.3.0.extract.shift.i298 to i32
  %.sroa.48.0.extract.shift.i = lshr i64 %1, 56
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !112
  %i.nv = getelementptr inbounds nuw [112 x i8], ptr %i.nu, i64 %.sroa.48.0.extract.shift.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !106
  %i.ny = and i32 %.sroa.3.0.extract.trunc.i299, 65535 ; 2 uses
  %.not.i300 = icmp eq i32 %i.ny, 0
  br i1 %.not.i300, label %b3PrepareJointsTask.exit, label %.lr.ph.preheader.i301

.lr.ph.preheader.i301:                            ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i302 = trunc i64 %1 to i32
  %i.nz = add nsw i32 %i.ny, %.sroa.0.0.extract.trunc.i302
  %sext.i303 = shl i64 %1, 32
  %i.oa = ashr exact i64 %sext.i303, 32
  %i.ob = sext i32 %i.nz to i64
  br label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %.lr.ph.i304, %.lr.ph.preheader.i301
  %indvars.iv.i305 = phi i64 [ %i.oa, %.lr.ph.preheader.i301 ], [ %indvars.iv.next.i306, %.lr.ph.i304 ] ; 2 uses
  %i.oc = getelementptr inbounds [444 x i8], ptr %i.nx, i64 %indvars.iv.i305
  tail call void @b3WarmStartJoint(ptr noundef %i.oc, ptr noundef nonnull %0) #11
  %indvars.iv.next.i306 = add nsw i64 %indvars.iv.i305, 1 ; 2 uses
  %i.od = icmp slt i64 %indvars.iv.next.i306, %i.ob
  br i1 %i.od, label %.lr.ph.i304, label %b3PrepareJointsTask.exit, !llvm.loop !366

bb.n:                                             ; preds = %bb.l
  tail call void @b3WarmStartContacts_Convex(i64 %1, ptr noundef %0) #11
  br label %b3PrepareJointsTask.exit

bb.o:                                             ; preds = %bb.l
  tail call void @b3WarmStartContacts_Mesh(i64 %1, ptr noundef %0) #11
  br label %b3PrepareJointsTask.exit

bb.p:                                             ; preds = %bb.a
  %trunc2 = trunc i64 %.sroa.19.0.extract.shift to i8
  switch i8 %trunc2, label %bb.s [
    i8 4, label %bb.q
    i8 5, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @b3SolveJointsTask(i64 %1, ptr noundef %0, i1 noundef zeroext true, i32 noundef %2)
  br label %b3PrepareJointsTask.exit

bb.r:                                             ; preds = %bb.p
  tail call void @b3SolveContacts_Convex(i64 %1, ptr noundef %0, i1 noundef zeroext true) #11
  br label %b3PrepareJointsTask.exit

bb.s:                                             ; preds = %bb.p
  tail call void @b3SolveContacts_Mesh(i64 %1, ptr noundef %0, i1 noundef zeroext true) #11
  br label %b3PrepareJointsTask.exit

bb.t:                                             ; preds = %bb.a
  %.sroa.3.0.extract.shift.i307 = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc.i308 = trunc nuw i64 %.sroa.3.0.extract.shift.i307 to i32
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !96
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oh = load float, ptr %i.og, align 8, !tbaa !368 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.oj = load float, ptr %i.oi, align 8, !tbaa !371 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !162
  %i.om = fmul float %i.ol, f0x3F490FDB           ; 3 uses
  %i.on = fmul float %i.oj, %i.oj
  %i.oo = fmul float %i.om, %i.om
  %i.op = and i32 %.sroa.3.0.extract.trunc.i308, 65535 ; 2 uses
  %.not125.i = icmp eq i32 %i.op, 0
  br i1 %.not125.i, label %b3PrepareJointsTask.exit, label %.lr.ph.preheader.i309

.lr.ph.preheader.i309:                            ; preds = %bb.t
  %.sroa.0104.0.extract.trunc.i = trunc i64 %1 to i32
  %i.oq = add nsw i32 %i.op, %.sroa.0104.0.extract.trunc.i
  %sext.i310 = shl i64 %1, 32
  %i.or = ashr exact i64 %sext.i310, 32
  %i.os = sext i32 %i.oq to i64
  %i.ot = insertelement <2 x float> poison, float %i.oh, i64 0
  %i.ou = shufflevector <2 x float> %i.ot, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i311

.lr.ph.i311:                                      ; preds = %b3IntegrateRotation.exit.i, %.lr.ph.preheader.i309
  %indvars.iv.i312 = phi i64 [ %i.or, %.lr.ph.preheader.i309 ], [ %indvars.iv.next.i323, %b3IntegrateRotation.exit.i ] ; 2 uses
  %i.ov = getelementptr inbounds [56 x i8], ptr %i.of, i64 %indvars.iv.i312 ; 10 uses
  %.sroa.058.0.copyload.i = load <2 x float>, ptr %i.ov, align 4, !tbaa !146
  %.sroa.1467.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 2 uses
  %.sroa.1467.0.copyload.i = load float, ptr %.sroa.1467.0..sroa_idx.i, align 4, !tbaa !146
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 12 ; 2 uses
  %.sroa.047.0.copyload.i = load <2 x float>, ptr %i.ow, align 4, !tbaa !146
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ov, i64 20 ; 2 uses
  %.sroa.14.0.copyload.i = load float, ptr %.sroa.14.0..sroa_idx.i, align 4, !tbaa !146
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 52 ; 3 uses
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !167 ; 5 uses
  %i.oz = insertelement <2 x i32> poison, i32 %i.oy, i64 0
  %i.pa = shufflevector <2 x i32> %i.oz, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pb = and <2 x i32> %i.pa, <i32 1, i32 2>
  %i.pc = icmp eq <2 x i32> %i.pb, zeroinitializer
  %i.pd = select <2 x i1> %i.pc, <2 x float> %.sroa.058.0.copyload.i, <2 x float> zeroinitializer ; 4 uses
  %i.pe = and i32 %i.oy, 4
  %.not108.i = icmp eq i32 %i.pe, 0
  %i.pf = select i1 %.not108.i, float %.sroa.1467.0.copyload.i, float 0.000000e+00 ; 4 uses
  %i.pg = and <2 x i32> %i.pa, <i32 8, i32 16>
  %i.ph = icmp eq <2 x i32> %i.pg, zeroinitializer
  %i.pi = select <2 x i1> %i.ph, <2 x float> %.sroa.047.0.copyload.i, <2 x float> zeroinitializer ; 4 uses
  %i.pj = and i32 %i.oy, 32
  %.not111.i = icmp eq i32 %i.pj, 0
  %i.pk = select i1 %.not111.i, float %.sroa.14.0.copyload.i, float 0.000000e+00 ; 4 uses
  %i.pl = fmul <2 x float> %i.pd, %i.pd           ; 2 uses
  %shift76 = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop77 = fadd <2 x float> %i.pl, %shift76
  %i.pm = extractelement <2 x float> %foldExtExtBinop77, i64 0
  %i.pn = fmul float %i.pf, %i.pf
  %i.po = fadd float %i.pn, %i.pm                 ; 2 uses
  %i.pp = fcmp ogt float %i.po, %i.on
  br i1 %i.pp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i311
  %i.pq = tail call float @sqrtf(float noundef %i.po) #11
  %i.pr = fdiv float %i.oj, %i.pq                 ; 2 uses
  %i.ps = insertelement <2 x float> poison, float %i.pr, i64 0
  %i.pt = shufflevector <2 x float> %i.ps, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pu = fmul <2 x float> %i.pd, %i.pt
  %i.pv = fmul float %i.pf, %i.pr
  %i.pw = or i32 %i.oy, 256                       ; 2 uses
  store i32 %i.pw, ptr %i.ox, align 4, !tbaa !167
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i311
  %i.px = phi i32 [ %i.pw, %bb.u ], [ %i.oy, %.lr.ph.i311 ] ; 2 uses
  %.sroa.058.0.i = phi <2 x float> [ %i.pu, %bb.u ], [ %i.pd, %.lr.ph.i311 ] ; 2 uses
  %.sroa.1467.0.i = phi float [ %i.pv, %bb.u ], [ %i.pf, %.lr.ph.i311 ] ; 2 uses
  %i.py = fmul <2 x float> %i.pi, %i.pi           ; 2 uses
  %shift79 = shufflevector <2 x float> %i.py, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop80 = fadd <2 x float> %i.py, %shift79
  %i.pz = extractelement <2 x float> %foldExtExtBinop80, i64 0
  %i.qa = fmul float %i.pk, %i.pk
  %i.qb = fadd float %i.qa, %i.pz                 ; 2 uses
  %i.qc = fcmp ogt float %i.qb, %i.oo
  %i.qd = and i32 %i.px, 1024
  %i.qe = icmp eq i32 %i.qd, 0
  %or.cond.i = and i1 %i.qc, %i.qe
  br i1 %or.cond.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.qf = tail call float @sqrtf(float noundef %i.qb) #11
  %i.qg = fdiv float %i.om, %i.qf                 ; 2 uses
  %i.qh = insertelement <2 x float> poison, float %i.qg, i64 0
  %i.qi = shufflevector <2 x float> %i.qh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qj = fmul <2 x float> %i.pi, %i.qi
  %i.qk = fmul float %i.pk, %i.qg
  %i.ql = or i32 %i.px, 256
  store i32 %i.ql, ptr %i.ox, align 4, !tbaa !167
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.047.0.i = phi <2 x float> [ %i.qj, %bb.w ], [ %i.pi, %bb.v ] ; 2 uses
  %.sroa.14.0.i314 = phi float [ %i.qk, %bb.w ], [ %i.pk, %bb.v ] ; 2 uses
  store <2 x float> %.sroa.058.0.i, ptr %i.ov, align 4, !tbaa !146
  store float %.sroa.1467.0.i, ptr %.sroa.1467.0..sroa_idx.i, align 4, !tbaa !146
  store <2 x float> %.sroa.047.0.i, ptr %i.ow, align 4, !tbaa !146
  store float %.sroa.14.0.i314, ptr %.sroa.14.0..sroa_idx.i, align 4, !tbaa !146
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ov, i64 24 ; 2 uses
  %.sroa.014.0.copyload.i = load <2 x float>, ptr %i.qm, align 4
  %.sroa.215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ov, i64 32 ; 2 uses
  %.sroa.215.0.copyload.i = load float, ptr %.sroa.215.0..sroa_idx.i, align 4
  %i.qn = fmul <2 x float> %i.ou, %.sroa.058.0.i
  %i.qo = fadd <2 x float> %i.qn, %.sroa.014.0.copyload.i
  %i.qp = fmul float %i.oh, %.sroa.1467.0.i
  %i.qq = fadd float %i.qp, %.sroa.215.0.copyload.i
  store <2 x float> %i.qo, ptr %i.qm, align 4, !tbaa !146
  store float %i.qq, ptr %.sroa.215.0..sroa_idx.i, align 4, !tbaa !146
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ov, i64 36 ; 2 uses
  %i.qs = fmul float %i.oh, %.sroa.14.0.i314
  %i.qt = load <2 x float>, ptr %i.qr, align 4    ; 6 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ov, i64 44
  %i.qv = load <2 x float>, ptr %i.qu, align 4    ; 5 uses
  %i.qw = fmul float %i.qs, 5.000000e-01          ; 4 uses
  %.sroa.03.4.vec.extract.i.i.i.i321 = extractelement <2 x float> %i.qt, i64 1
  %i.qx = fmul <2 x float> %i.ou, %.sroa.047.0.i
  %i.qy = fmul <2 x float> %i.qx, splat (float 5.000000e-01) ; 5 uses
  %i.qz = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qw, i64 0
  %i.ra = shufflevector <2 x float> %i.qv, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.rb = fmul <2 x float> %i.qz, %i.ra           ; 2 uses
  %i.rc = shufflevector <2 x float> %i.qy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rd = shufflevector <2 x float> %i.qt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.re = fmul <2 x float> %i.rc, %i.rd           ; 2 uses
  %i.rf = shufflevector <2 x float> %i.qy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rg = fmul <2 x float> %i.rf, %i.qt           ; 2 uses
  %i.rh = fsub <2 x float> %i.re, %i.rg
  %i.ri = fadd <2 x float> %i.re, %i.rg
  %i.rj = shufflevector <2 x float> %i.rh, <2 x float> %i.ri, <2 x i32> <i32 0, i32 3>
  %i.rk = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.qw, i64 1
  %i.rl = shufflevector <2 x float> %i.qv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rm = fmul <2 x float> %i.rk, %i.rl
  %i.rn = fadd <2 x float> %i.rm, %i.rj           ; 2 uses
  %i.ro = fadd <2 x float> %i.rb, %i.rn
  %i.rp = fsub <2 x float> %i.rb, %i.rn
  %i.rq = shufflevector <2 x float> %i.ro, <2 x float> %i.rp, <2 x i32> <i32 0, i32 3>
  %i.rr = fmul float %i.qw, %.sroa.03.4.vec.extract.i.i.i.i321
  %i.rs = fmul <2 x float> %i.qt, zeroinitializer
  %foldExtExtBinop85 = fmul <2 x float> %i.qy, %i.qv
  %i.rt = shufflevector <2 x float> %i.qy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ru = insertelement <2 x float> %i.rt, float %i.qw, i64 1
  %i.rv = shufflevector <2 x float> %i.qv, <2 x float> %i.qt, <2 x i32> <i32 0, i32 2>
  %i.rw = fmul <2 x float> %i.ru, %i.rv
  %i.rx = insertelement <2 x float> poison, float %i.rr, i64 0
  %i.ry = shufflevector <2 x float> %i.rx, <2 x float> %foldExtExtBinop85, <2 x i32> <i32 0, i32 2>
  %i.rz = fsub <2 x float> %i.rw, %i.ry
  %i.sa = fadd <2 x float> %i.rs, %i.rz
  %i.sb = fmul <2 x float> %i.qy, %i.ra
  %i.sc = fadd <2 x float> %i.sb, %i.sa
  %i.sd = fadd <2 x float> %i.qt, %i.sc           ; 2 uses
  %i.se = fadd <2 x float> %i.qv, %i.rq           ; 2 uses
  %i.sf = shufflevector <2 x float> %i.sd, <2 x float> %i.se, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.sg = fmul <4 x float> %i.sf, %i.sf           ; 4 uses
  %shift87 = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop88 = fadd <4 x float> %i.sg, %shift87
  %shift90 = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop91 = fadd <4 x float> %shift90, %foldExtExtBinop88
  %shift93 = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop94 = fadd <4 x float> %shift93, %foldExtExtBinop91
  %i.sh = extractelement <4 x float> %foldExtExtBinop94, i64 0 ; 2 uses
  %i.si = fcmp ogt float %i.sh, f0x057A0000
  br i1 %i.si, label %bb.y, label %b3IntegrateRotation.exit.i

bb.y:                                             ; preds = %bb.x
  %i.sj = tail call float @sqrtf(float noundef %i.sh) #11
  %i.sk = fdiv float 1.000000e+00, %i.sj
  %i.sl = insertelement <2 x float> poison, float %i.sk, i64 0
  %i.sm = shufflevector <2 x float> %i.sl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sn = fmul <2 x float> %i.sd, %i.sm
  %i.so = fmul <2 x float> %i.se, %i.sm
  br label %b3IntegrateRotation.exit.i

b3IntegrateRotation.exit.i:                       ; preds = %bb.y, %bb.x
  %.sroa.010.0.i.i.i = phi <2 x float> [ %i.sn, %bb.y ], [ zeroinitializer, %bb.x ]
  %.sroa.4.0.i.i.i = phi <2 x float> [ %i.so, %bb.y ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.x ]
  %3 = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %i.qr, align 4, !tbaa !146
  %indvars.iv.next.i323 = add nsw i64 %indvars.iv.i312, 1 ; 2 uses
  %i.sp = icmp slt i64 %indvars.iv.next.i323, %i.os
  br i1 %i.sp, label %.lr.ph.i311, label %b3PrepareJointsTask.exit, !llvm.loop !367

bb.z:                                             ; preds = %bb.a
  %trunc1 = trunc i64 %.sroa.19.0.extract.shift to i8
  switch i8 %trunc1, label %bb.ac [
    i8 4, label %bb.aa
    i8 5, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %.sroa.3.0.extract.shift.i324 = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc.i325 = trunc nuw i64 %.sroa.3.0.extract.shift.i324 to i32
  %.sroa.423.0.extract.shift.i = lshr i64 %1, 56
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !112
  %i.ss = getelementptr inbounds nuw [112 x i8], ptr %i.sr, i64 %.sroa.423.0.extract.shift.i
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !106
  %i.sv = and i32 %.sroa.3.0.extract.trunc.i325, 65535 ; 2 uses
  %.not.i326 = icmp eq i32 %i.sv, 0
  br i1 %.not.i326, label %b3PrepareJointsTask.exit, label %.lr.ph.i327

.lr.ph.i327:                                      ; preds = %bb.aa
  %.sroa.0.0.extract.trunc.i328 = trunc i64 %1 to i32
  %i.sw = add nsw i32 %i.sv, %.sroa.0.0.extract.trunc.i328
  %sext31.i = shl i64 %1, 32
  %i.sx = ashr exact i64 %sext31.i, 32
  %i.sy = sext i32 %i.sw to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.i327
  %indvars.iv.i329 = phi i64 [ %indvars.iv.next.i330, %.lr.ph.split.i ], [ %i.sx, %.lr.ph.i327 ] ; 2 uses
  %i.sz = getelementptr inbounds [444 x i8], ptr %i.su, i64 %indvars.iv.i329
  tail call void @b3SolveJoint(ptr noundef %i.sz, ptr noundef nonnull %0, i1 noundef zeroext false) #11
  %indvars.iv.next.i330 = add nsw i64 %indvars.iv.i329, 1 ; 2 uses
  %i.ta = icmp slt i64 %indvars.iv.next.i330, %i.sy
  br i1 %i.ta, label %.lr.ph.split.i, label %b3PrepareJointsTask.exit, !llvm.loop !2

bb.ab:                                            ; preds = %bb.z
  tail call void @b3SolveContacts_Convex(i64 %1, ptr noundef %0, i1 noundef zeroext false) #11
  br label %b3PrepareJointsTask.exit

bb.ac:                                            ; preds = %bb.z
  tail call void @b3SolveContacts_Mesh(i64 %1, ptr noundef %0, i1 noundef zeroext false) #11
  br label %b3PrepareJointsTask.exit

bb.ad:                                            ; preds = %bb.a
  %trunc = trunc i64 %.sroa.19.0.extract.shift to i8
  switch i8 %trunc, label %b3PrepareJointsTask.exit [
    i8 5, label %bb.ae
    i8 6, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  tail call void @b3ApplyRestitution_Convex(i64 %1, ptr noundef %0) #11
  br label %b3PrepareJointsTask.exit

bb.af:                                            ; preds = %bb.ad
  tail call void @b3ApplyRestitution_Mesh(i64 %1, ptr noundef %0) #11
  br label %b3PrepareJointsTask.exit

bb.ag:                                            ; preds = %bb.a
  tail call void @b3StoreImpulses_Convex(i64 %1, ptr noundef %0, i32 noundef %2) #11
  br label %b3PrepareJointsTask.exit

bb.ah:                                            ; preds = %bb.a
  tail call void @b3StoreImpulses_Mesh(i64 %1, ptr noundef %0, i32 noundef %2) #11
  br label %b3PrepareJointsTask.exit

b3PrepareJointsTask.exit:                         ; preds = %.lr.ph.split.i, %b3IntegrateRotation.exit.i, %.lr.ph.i304, %b3Solve3.exit.i, %.loopexit.i, %bb.aa, %bb.t, %bb.m, %bb.f, %.preheader.i, %bb.ad, %bb.ae, %bb.af, %bb.ac, %bb.ab, %bb.q, %bb.s, %bb.r, %bb.o, %bb.n, %bb.ah, %bb.ag, %bb.e, %bb.d, %bb.a
  ret void
}

declare void @b3PrepareContacts_Convex(i64, ptr noundef) local_unnamed_addr #2

declare void @b3PrepareContacts_Mesh(i64, ptr noundef) local_unnamed_addr #2

declare void @b3WarmStartContacts_Convex(i64, ptr noundef) local_unnamed_addr #2

declare void @b3WarmStartContacts_Mesh(i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @b3SolveJointsTask(i64 %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %.sroa.423.0.extract.shift = lshr i64 %0, 56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %.sroa.423.0.extract.shift
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !160
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !120
  %i.l = sext i32 %3 to i64
  %i.m = getelementptr inbounds [3848 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  %i.o = and i32 %.sroa.3.0.extract.trunc, 65535  ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %i.p = add nsw i32 %i.o, %.sroa.0.0.extract.trunc
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 68
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %sext31 = shl i64 %0, 32
  %i.s = ashr exact i64 %sext31, 32               ; 2 uses
  %i.t = sext i32 %i.p to i64                     ; 2 uses
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %bb.g ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.u = getelementptr inbounds [444 x i8], ptr %i.g, i64 %indvars.iv28 ; 7 uses
  call void @b3SolveJoint(ptr noundef %i.u, ptr noundef %1, i1 noundef zeroext true) #11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 172 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !373
  %i.x = fcmp olt float %i.w, f0x7F7FFFFF
  br i1 %i.x, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 176
  %i.z = load float, ptr %i.y, align 4, !tbaa !374
  %i.aa = fcmp olt float %i.z, f0x7F7FFFFF
  br i1 %i.aa, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.ab = load i32, ptr %i.u, align 4, !tbaa !375 ; 2 uses
  %i.ac = lshr i32 %i.ab, 6                       ; 2 uses
  %i.ad = load i32, ptr %i.q, align 4, !tbaa !130
  %.not.i.us = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i.us, label %b3GetBit.exit.us, label %b3GetBit.exit.thread.us

b3GetBit.exit.us:                                 ; preds = %bb.c
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !131
  %i.af = zext nneg i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !80
  %i.ai = and i32 %i.ab, 63
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = and i64 %i.ah, %i.ak
  %.not.us = icmp eq i64 %i.al, 0
  br i1 %.not.us, label %b3GetBit.exit.thread.us, label %bb.g

b3GetBit.exit.thread.us:                          ; preds = %b3GetBit.exit.us, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !160
  %i.an = load float, ptr %i.r, align 4, !tbaa !376
  call void @b3GetJointReaction(ptr noundef %i.am, ptr noundef nonnull %i.u, float noundef %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %i.ao = load float, ptr %i.a, align 4, !tbaa !146
  %i.ap = load float, ptr %i.v, align 4, !tbaa !373
  %i.aq = fcmp ult float %i.ao, %i.ap
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %b3GetBit.exit.thread.us
  %i.ar = load float, ptr %i.b, align 4, !tbaa !146
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 176
  %i.at = load float, ptr %i.as, align 4, !tbaa !374
  %i.au = fcmp ult float %i.ar, %i.at
  br i1 %i.au, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %b3GetBit.exit.thread.us
  %i.av = load i32, ptr %i.u, align 4, !tbaa !375 ; 2 uses
  %.val.us = load ptr, ptr %i.n, align 8, !tbaa !131
  %i.aw = lshr i32 %i.av, 6
  %i.ax = and i32 %i.av, 63
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = zext nneg i32 %i.aw to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val.us, i64 %i.ba ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !80
  %i.bd = or i64 %i.az, %i.bc
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !80
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %b3GetBit.exit.us, %bb.b
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, 1 ; 2 uses
  %i.be = icmp slt i64 %indvars.iv.next29, %i.t
  br i1 %i.be, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph.split, %bb.g, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.bf = getelementptr inbounds [444 x i8], ptr %i.g, i64 %indvars.iv
  tail call void @b3SolveJoint(ptr noundef %i.bf, ptr noundef nonnull %1, i1 noundef zeroext false) #11
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bg = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.bg, label %.lr.ph.split, label %._crit_edge, !llvm.loop !2
}

declare void @b3SolveContacts_Convex(i64, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @b3SolveContacts_Mesh(i64, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @b3ApplyRestitution_Convex(i64, ptr noundef) local_unnamed_addr #2

declare void @b3ApplyRestitution_Mesh(i64, ptr noundef) local_unnamed_addr #2

declare void @b3StoreImpulses_Convex(i64, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @b3StoreImpulses_Mesh(i64, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @b3PrepareJoint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3WarmStartJoint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3SolveJoint(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @b3GetJointReaction(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #2

declare zeroext i1 @b3IsValidVec3(<2 x float>, float) local_unnamed_addr #2

declare void @b3Log(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @b3SolveContinuous(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.b3Transform, align 8        ; 6 uses
  %4 = alloca %struct.b3ContinuousContext, align 8 ; 32 uses
  %5 = alloca %struct.b3AABB, align 8             ; 5 uses
  %6 = alloca %struct.b3AABB, align 8             ; 9 uses
  %7 = alloca %struct.b3Transform, align 8        ; 8 uses
  %8 = alloca %struct.b3AABB, align 8             ; 9 uses
  %i.a = tail call i64 @b3GetTicks() #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [216 x i8], ptr %i.e, i64 %i.f ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %.sroa.0218.0.copyload = load <2 x float>, ptr %i.h, align 4, !tbaa !146 ; 8 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !146 ; 8 uses
  %i.i = fsub float %.sroa.8.0.copyload, %.sroa.8.0.copyload ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 3 uses
  %.sroa.03.0.copyload.i287 = load <2 x float>, ptr %i.j, align 4, !noalias !385
  %.sroa.24.0..sroa_idx.i288 = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %.sroa.24.0.copyload.i289 = load float, ptr %.sroa.24.0..sroa_idx.i288, align 4, !noalias !385
  %i.k = fsub <2 x float> %.sroa.0218.0.copyload, %.sroa.0218.0.copyload ; 5 uses
  %i.l = fsub <2 x float> %.sroa.03.0.copyload.i287, %.sroa.0218.0.copyload ; 5 uses
  %i.m = fsub float %.sroa.24.0.copyload.i289, %.sroa.8.0.copyload ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  %.sroa.28.36.copyload461 = load <2 x float>, ptr %i.n, align 4, !tbaa !146 ; 13 uses
  %.sroa.32.36..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %.sroa.32.36.copyload462 = load <2 x float>, ptr %.sroa.32.36..sroa_idx, align 4, !tbaa !146 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %.sroa.34.52.copyload465 = load <2 x float>, ptr %i.o, align 4, !tbaa !146 ; 13 uses
  %.sroa.38.52..sroa_idx466 = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.38.52.copyload467 = load <2 x float>, ptr %.sroa.38.52..sroa_idx466, align 4, !tbaa !146 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %.sroa.0449.0.copyload452 = load <2 x float>, ptr %i.p, align 4, !tbaa !146 ; 12 uses
  %.sroa.7453.0..sroa_idx454 = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %.sroa.7453.0.copyload455 = load float, ptr %.sroa.7453.0..sroa_idx454, align 4, !tbaa !146 ; 9 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.28.36.copyload461, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.32.36.copyload462, %.sroa.0449.0.copyload452
  %i.q = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.r = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.7453.0.copyload455
  %i.s = fsub float %i.q, %i.r
  %i.t = shufflevector <2 x float> %.sroa.0449.0.copyload452, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.u = insertelement <2 x float> %i.t, float %.sroa.7453.0.copyload455, i64 1 ; 4 uses
  %i.v = fmul <2 x float> %.sroa.28.36.copyload461, %i.u
  %i.w = shufflevector <2 x float> %.sroa.28.36.copyload461, <2 x float> %.sroa.32.36.copyload462, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.x = fmul <2 x float> %i.w, %.sroa.0449.0.copyload452
  %i.y = fsub <2 x float> %i.v, %i.x              ; 2 uses
  %i.z = shufflevector <2 x float> %.sroa.32.36.copyload462, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.aa = insertelement <2 x float> %i.t, float %.sroa.7453.0.copyload455, i64 0 ; 3 uses
  %i.ab = fmul <2 x float> %i.z, %i.aa
  %i.ac = fmul <2 x float> %i.z, %i.u
  %i.ad = fadd <2 x float> %i.ab, %i.y            ; 2 uses
  %i.ae = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.af = insertelement <2 x float> %i.ae, float %i.s, i64 0
  %i.ag = fadd <2 x float> %i.ac, %i.af           ; 2 uses
  %i.ah = fmul <2 x float> %i.w, %i.ad
  %i.ai = shufflevector <2 x float> %.sroa.32.36.copyload462, <2 x float> %.sroa.28.36.copyload461, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aj = fmul <2 x float> %i.ai, %i.ag
  %i.ak = fsub <2 x float> %i.ah, %i.aj
  %i.al = fmul <2 x float> %i.ak, splat (float 2.000000e+00)
  %i.am = fadd <2 x float> %.sroa.0449.0.copyload452, %i.al
  %i.an = fsub <2 x float> %i.k, %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 12
  %9 = shufflevector <2 x float> %.sroa.34.52.copyload465, <2 x float> %.sroa.38.52.copyload467, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %9, ptr %i.ao, align 4, !tbaa !146
  %.sroa.011.0.vec.extract.i.i296 = extractelement <2 x float> %.sroa.34.52.copyload465, i64 0 ; 2 uses
  %foldExtExtBinop585 = fmul <2 x float> %.sroa.38.52.copyload467, %.sroa.0449.0.copyload452
  %i.ap = extractelement <2 x float> %foldExtExtBinop585, i64 0
  %i.aq = fmul float %.sroa.011.0.vec.extract.i.i296, %.sroa.7453.0.copyload455
  %i.ar = fsub float %i.ap, %i.aq
  %i.as = fmul <2 x float> %.sroa.34.52.copyload465, %i.u
  %i.at = shufflevector <2 x float> %.sroa.34.52.copyload465, <2 x float> %.sroa.38.52.copyload467, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.au = fmul <2 x float> %i.at, %.sroa.0449.0.copyload452
  %i.av = fsub <2 x float> %i.as, %i.au           ; 2 uses
  %i.aw = shufflevector <2 x float> %.sroa.38.52.copyload467, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.ax = fmul <2 x float> %i.aw, %i.aa
  %i.ay = fmul <2 x float> %i.aw, %i.u
  %i.az = fadd <2 x float> %i.ax, %i.av           ; 2 uses
  %i.ba = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bb = insertelement <2 x float> %i.ba, float %i.ar, i64 0
  %i.bc = fadd <2 x float> %i.ay, %i.bb           ; 2 uses
  %i.bd = fmul <2 x float> %i.at, %i.az
  %i.be = shufflevector <2 x float> %.sroa.38.52.copyload467, <2 x float> %.sroa.34.52.copyload465, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bf = fmul <2 x float> %i.be, %i.bc
  %i.bg = fsub <2 x float> %i.bd, %i.bf
  %i.bh = fmul <2 x float> %i.bg, splat (float 2.000000e+00)
  %i.bi = fadd <2 x float> %.sroa.0449.0.copyload452, %i.bh
  %i.bj = shufflevector <2 x float> %.sroa.28.36.copyload461, <2 x float> %.sroa.34.52.copyload465, <2 x i32> <i32 0, i32 2>
  %i.bk = shufflevector <2 x float> %i.ag, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bl = fmul <2 x float> %i.bj, %i.bk
  %i.bm = shufflevector <2 x float> %.sroa.28.36.copyload461, <2 x float> %.sroa.34.52.copyload465, <2 x i32> <i32 1, i32 3>
  %i.bn = shufflevector <2 x float> %i.ad, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bo = fmul <2 x float> %i.bm, %i.bn
  %i.bp = fsub <2 x float> %i.bl, %i.bo
  %i.bq = fmul <2 x float> %i.bp, splat (float 2.000000e+00)
  %i.br = insertelement <2 x float> poison, float %.sroa.7453.0.copyload455, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fadd <2 x float> %i.bs, %i.bq           ; 2 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 0
  %i.bv = fsub float %i.i, %i.bu
  %i.bw = fsub <2 x float> %i.l, %i.bi            ; 2 uses
  %i.bx = extractelement <2 x float> %i.bt, i64 1
  %i.by = fsub float %i.m, %i.bx                  ; 2 uses
  store <2 x float> %i.bw, ptr %3, align 8, !tbaa !146
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.by, ptr %.sroa.4197.0..sroa_idx, align 8, !tbaa !146
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !139
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !151
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [128 x i8], ptr %i.cd, i64 %i.cg ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ci, i8 0, i64 232, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !173
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %.sroa.0449.0.copyload452, ptr %i.cj, align 8, !tbaa !146
  %.sroa.7453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store float %.sroa.7453.0.copyload455, ptr %.sroa.7453.0..sroa_idx, align 8, !tbaa !146
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 60
  store <2 x float> %i.k, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !146
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 68
  store float %i.i, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !146
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  store <2 x float> %i.l, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !146
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %i.m, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !146
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 84
  store <2 x float> %.sroa.28.36.copyload461, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !146
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 92
  store <2 x float> %.sroa.32.36.copyload462, ptr %.sroa.32.0..sroa_idx, align 4, !tbaa !146
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 100
  store <2 x float> %.sroa.34.52.copyload465, ptr %.sroa.34.0..sroa_idx, align 4, !tbaa !146
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 108
  store <2 x float> %.sroa.38.52.copyload467, ptr %.sroa.38.0..sroa_idx, align 4, !tbaa !146
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 116
  store <2 x float> %.sroa.0218.0.copyload, ptr %i.ck, align 4, !tbaa !146
  %.sroa.8.0..sroa_idx223 = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.g, ptr %i.cl, align 8, !tbaa !174
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.cn = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.sroa.8.0.copyload, i64 0
  store <2 x float> %i.cn, ptr %.sroa.8.0..sroa_idx223, align 4, !tbaa !146
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 212 ; 5 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !154
  %i.cq = and i32 %i.cp, 128
  %.not = icmp eq i32 %i.cq, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !153 ; 2 uses
  %.not277554 = icmp eq i32 %i.cs, -1
  br i1 %.not277554, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 36
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %.sroa.5479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.6480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.8482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.415.0..sroa_idx.i355 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.4.0..sroa_idx.i359 = getelementptr inbounds nuw i8, ptr %6, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.0272555 = phi i32 [ %i.cs, %.lr.ph ], [ %i.dc, %bb.g ]
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !136
  %i.cz = sext i32 %.0272555 to i64
  %i.da = getelementptr inbounds [232 x i8], ptr %i.cy, i64 %i.cz ; 11 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !155 ; 2 uses
  store ptr %i.da, ptr %i.cu, align 8, !tbaa !175
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 88 ; 2 uses
  %.sroa.0152.0.copyload = load <2 x float>, ptr %i.dd, align 8 ; 4 uses
  %.sroa.2153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 96 ; 2 uses
  %.sroa.2153.0.copyload = load float, ptr %.sroa.2153.0..sroa_idx, align 8 ; 4 uses
  %foldExtExtBinop587 = fmul <2 x float> %.sroa.32.36.copyload462, %.sroa.0152.0.copyload
  %i.de = extractelement <2 x float> %foldExtExtBinop587, i64 0
  %i.df = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.2153.0.copyload
  %i.dg = fsub float %i.de, %i.df
  %i.dh = shufflevector <2 x float> %.sroa.0152.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.di = insertelement <2 x float> %i.dh, float %.sroa.2153.0.copyload, i64 1 ; 2 uses
  %i.dj = fmul <2 x float> %.sroa.28.36.copyload461, %i.di
  %i.dk = fmul <2 x float> %i.w, %.sroa.0152.0.copyload
  %i.dl = fsub <2 x float> %i.dj, %i.dk           ; 2 uses
  %i.dm = insertelement <2 x float> %i.dh, float %.sroa.2153.0.copyload, i64 0
  %i.dn = fmul <2 x float> %i.z, %i.dm
  %i.do = fmul <2 x float> %i.z, %i.di
  %i.dp = fadd <2 x float> %i.dn, %i.dl           ; 2 uses
  %i.dq = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dr = insertelement <2 x float> %i.dq, float %i.dg, i64 0
  %i.ds = fadd <2 x float> %i.do, %i.dr           ; 2 uses
  %i.dt = fmul <2 x float> %i.w, %i.dp
  %i.du = fmul <2 x float> %i.ai, %i.ds
  %i.dv = fsub <2 x float> %i.dt, %i.du
  %foldExtExtBinop589 = fmul <2 x float> %.sroa.28.36.copyload461, %i.ds
  %foldExtExtBinop591 = fmul <2 x float> %.sroa.28.36.copyload461, %i.dp
  %shift = shufflevector <2 x float> %foldExtExtBinop591, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop593 = fsub <2 x float> %foldExtExtBinop589, %shift
  %i.dw = extractelement <2 x float> %foldExtExtBinop593, i64 0
  %i.dx = fmul <2 x float> %i.dv, splat (float 2.000000e+00)
  %i.dy = fadd <2 x float> %.sroa.0152.0.copyload, %i.dx
  %i.dz = fmul float %i.dw, 2.000000e+00
  %i.ea = fadd float %.sroa.2153.0.copyload, %i.dz
  %i.eb = fadd <2 x float> %i.an, %i.dy
  %i.ec = fadd float %i.bv, %i.ea
  store <2 x float> %i.eb, ptr %i.cv, align 8, !tbaa !146
  store float %i.ec, ptr %.sroa.4155.0..sroa_idx, align 8, !tbaa !146
  %.sroa.0144.0.copyload = load <2 x float>, ptr %i.dd, align 8 ; 4 uses
  %.sroa.2145.0.copyload = load float, ptr %.sroa.2153.0..sroa_idx, align 8 ; 4 uses
  %foldExtExtBinop595 = fmul <2 x float> %.sroa.38.52.copyload467, %.sroa.0144.0.copyload
  %i.ed = extractelement <2 x float> %foldExtExtBinop595, i64 0
  %i.ee = fmul float %.sroa.011.0.vec.extract.i.i296, %.sroa.2145.0.copyload
  %i.ef = fsub float %i.ed, %i.ee
  %i.eg = shufflevector <2 x float> %.sroa.0144.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eh = insertelement <2 x float> %i.eg, float %.sroa.2145.0.copyload, i64 1 ; 2 uses
  %i.ei = fmul <2 x float> %.sroa.34.52.copyload465, %i.eh
  %i.ej = fmul <2 x float> %i.at, %.sroa.0144.0.copyload
  %i.ek = fsub <2 x float> %i.ei, %i.ej           ; 2 uses
  %i.el = insertelement <2 x float> %i.eg, float %.sroa.2145.0.copyload, i64 0
  %i.em = fmul <2 x float> %i.aw, %i.el
  %i.en = fmul <2 x float> %i.aw, %i.eh
  %i.eo = fadd <2 x float> %i.em, %i.ek           ; 2 uses
  %i.ep = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eq = insertelement <2 x float> %i.ep, float %i.ef, i64 0
  %i.er = fadd <2 x float> %i.en, %i.eq           ; 2 uses
  %i.es = fmul <2 x float> %i.at, %i.eo
  %i.et = fmul <2 x float> %i.be, %i.er
  %i.eu = fsub <2 x float> %i.es, %i.et
  %foldExtExtBinop597 = fmul <2 x float> %.sroa.34.52.copyload465, %i.er
  %foldExtExtBinop599 = fmul <2 x float> %.sroa.34.52.copyload465, %i.eo
  %shift601 = shufflevector <2 x float> %foldExtExtBinop599, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop602 = fsub <2 x float> %foldExtExtBinop597, %shift601
  %i.ev = extractelement <2 x float> %foldExtExtBinop602, i64 0
  %i.ew = fmul <2 x float> %i.eu, splat (float 2.000000e+00)
  %i.ex = fadd <2 x float> %.sroa.0144.0.copyload, %i.ew
  %i.ey = fmul float %i.ev, 2.000000e+00
  %i.ez = fadd float %.sroa.2145.0.copyload, %i.ey
  %i.fa = fadd <2 x float> %i.bw, %i.ex
  %i.fb = fadd float %i.by, %i.ez
  store <2 x float> %i.fa, ptr %i.cw, align 4, !tbaa !146
  store float %i.fb, ptr %.sroa.4147.0..sroa_idx, align 4, !tbaa !146
  %i.fc = getelementptr inbounds nuw i8, ptr %i.da, i64 40 ; 2 uses
  %.sroa.0487.0.copyload = load <2 x float>, ptr %i.fc, align 8, !tbaa !146 ; 2 uses
  %.sroa.4488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 48 ; 2 uses
  %.sroa.4488.0.copyload = load float, ptr %.sroa.4488.0..sroa_idx, align 8, !tbaa !146 ; 2 uses
  %.sroa.5489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 52 ; 2 uses
  %.sroa.5489.0.copyload = load <2 x float>, ptr %.sroa.5489.0..sroa_idx, align 4, !tbaa !146 ; 2 uses
  %.sroa.6490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 60 ; 2 uses
  %.sroa.6490.0.copyload = load float, ptr %.sroa.6490.0..sroa_idx, align 4, !tbaa !146 ; 2 uses
  call void @b3ComputeShapeAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %5, ptr noundef %i.da, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3) #11
  %.sroa.5479.0.copyload = load float, ptr %.sroa.5479.0..sroa_idx, align 8
  %.sroa.8482.0.copyload = load float, ptr %.sroa.8482.0..sroa_idx, align 4
  %i.fd = load <2 x float>, ptr %5, align 8
  %i.fe = fadd <2 x float> %.sroa.0218.0.copyload, %i.fd ; 3 uses
  %i.ff = fadd float %.sroa.8.0.copyload, %.sroa.5479.0.copyload ; 3 uses
  %i.fg = load <2 x float>, ptr %.sroa.6480.0..sroa_idx, align 4
  %i.fh = fadd <2 x float> %.sroa.0218.0.copyload, %i.fg ; 3 uses
  %i.fi = fadd float %.sroa.8.0.copyload, %.sroa.8482.0.copyload ; 3 uses
  store <2 x float> %i.fe, ptr %i.fc, align 8, !tbaa !146
  store float %i.ff, ptr %.sroa.4488.0..sroa_idx, align 8, !tbaa !146
  store <2 x float> %i.fh, ptr %.sroa.5489.0..sroa_idx, align 4, !tbaa !146
  store float %i.fi, ptr %.sroa.6490.0..sroa_idx, align 4, !tbaa !146
  %i.fj = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !386
  switch i32 %i.fk, label %bb.c [
    i32 4, label %bb.g
    i32 2, label %bb.g
  ], !llvm.loop !379

bb.c:                                             ; preds = %bb.b
  %i.fl = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !159
  %.not281 = icmp eq i32 %i.fm, -1
  br i1 %.not281, label %bb.d, label %bb.g, !llvm.loop !379

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.fn = fcmp olt <2 x float> %.sroa.0487.0.copyload, %i.fe
  %i.fo = select <2 x i1> %i.fn, <2 x float> %.sroa.0487.0.copyload, <2 x float> %i.fe
  %i.fp = fcmp olt float %.sroa.4488.0.copyload, %i.ff
  %i.fq = select i1 %i.fp, float %.sroa.4488.0.copyload, float %i.ff
  store <2 x float> %i.fo, ptr %6, align 8, !tbaa !146, !alias.scope !387
  store float %i.fq, ptr %.sroa.415.0..sroa_idx.i355, align 8, !tbaa !146, !alias.scope !387
  %i.fr = fcmp ogt <2 x float> %.sroa.5489.0.copyload, %i.fh
  %i.fs = select <2 x i1> %i.fr, <2 x float> %.sroa.5489.0.copyload, <2 x float> %i.fh
  %i.ft = fcmp ogt float %.sroa.6490.0.copyload, %i.fi
  %i.fu = select i1 %i.ft, float %.sroa.6490.0.copyload, float %i.fi
  store <2 x float> %i.fs, ptr %i.cx, align 4, !tbaa !146, !alias.scope !387
  store float %i.fu, ptr %.sroa.4.0..sroa_idx.i359, align 4, !tbaa !146, !alias.scope !387
  %i.fv = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.bz, ptr noundef nonnull byval(%struct.b3AABB) align 8 %6, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3ContinuousQueryCallback, ptr noundef nonnull %4) #11 ; 0 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fw = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.ca, ptr noundef nonnull byval(%struct.b3AABB) align 8 %6, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3ContinuousQueryCallback, ptr noundef nonnull %4) #11 ; 0 uses
  %i.fx = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.cb, ptr noundef nonnull byval(%struct.b3AABB) align 8 %6, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3ContinuousQueryCallback, ptr noundef nonnull %4) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.b, %bb.f
  %.not277 = icmp eq i32 %i.dc, -1
  br i1 %.not277, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.fy = call float @b3GetLengthUnitsPerMeter() #11
  %i.fz = fmul float %i.fy, 5.000000e-03
  %i.ga = fmul float %i.fz, 4.000000e+00
  %i.gb = load float, ptr %i.cm, align 8, !tbaa !176 ; 4 uses
  %i.gc = fcmp olt float %i.gb, 1.000000e+00
  br i1 %i.gc, label %bb.h, label %bb.l

bb.h:                                             ; preds = %._crit_edge
  %i.gd = shufflevector <2 x float> %.sroa.28.36.copyload461, <2 x float> %.sroa.32.36.copyload462, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ge = shufflevector <2 x float> %.sroa.34.52.copyload465, <2 x float> %.sroa.38.52.copyload467, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gf = fmul <4 x float> %i.gd, %i.ge           ; 4 uses
  %shift604 = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop605 = fadd <4 x float> %i.gf, %shift604
  %shift607 = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop608 = fadd <4 x float> %foldExtExtBinop605, %shift607
  %shift610 = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop611 = fadd <4 x float> %shift610, %foldExtExtBinop608
  %i.gg = extractelement <4 x float> %foldExtExtBinop611, i64 0
  %i.gh = fcmp olt float %i.gg, 0.000000e+00      ; 2 uses
  %i.gi = fneg <2 x float> %.sroa.28.36.copyload461
  %i.gj = fneg <2 x float> %.sroa.32.36.copyload462
  %i.gk = select i1 %i.gh, <2 x float> %i.gj, <2 x float> %.sroa.32.36.copyload462
  %i.gl = select i1 %i.gh, <2 x float> %i.gi, <2 x float> %.sroa.28.36.copyload461
  %i.gm = fsub float 1.000000e+00, %i.gb          ; 2 uses
  %i.gn = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gp = fmul <2 x float> %.sroa.34.52.copyload465, %i.go
  %i.gq = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gs = fmul <2 x float> %i.gr, %i.gl
  %i.gt = fadd <2 x float> %i.gp, %i.gs           ; 2 uses
  %i.gu = fmul <2 x float> %.sroa.38.52.copyload467, %i.go
  %i.gv = fmul <2 x float> %i.gr, %i.gk
  %i.gw = fadd <2 x float> %i.gu, %i.gv           ; 2 uses
  %i.gx = shufflevector <2 x float> %i.gt, <2 x float> %i.gw, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.gy = fmul <4 x float> %i.gx, %i.gx           ; 4 uses
  %shift613 = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop614 = fadd <4 x float> %i.gy, %shift613
  %shift616 = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop617 = fadd <4 x float> %foldExtExtBinop614, %shift616
  %shift619 = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop620 = fadd <4 x float> %shift619, %foldExtExtBinop617
  %i.gz = extractelement <4 x float> %foldExtExtBinop620, i64 0 ; 2 uses
  %i.ha = fcmp ogt float %i.gz, f0x057A0000
  br i1 %i.ha, label %bb.i, label %b3NLerp.exit

bb.i:                                             ; preds = %bb.h
  %i.hb = call float @sqrtf(float noundef %i.gz) #11
  %i.hc = fdiv float 1.000000e+00, %i.hb
  %i.hd = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hf = fmul <2 x float> %i.gt, %i.he
  %i.hg = fmul <2 x float> %i.gw, %i.he
  br label %b3NLerp.exit

b3NLerp.exit:                                     ; preds = %bb.h, %bb.i
  %.sroa.010.0.i.i = phi <2 x float> [ %i.hf, %bb.i ], [ zeroinitializer, %bb.h ] ; 8 uses
  %.sroa.4.0.i.i = phi <2 x float> [ %i.hg, %bb.i ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.h ] ; 6 uses
  %i.hh = fmul <2 x float> %i.k, %i.gr
  %i.hi = fmul <2 x float> %i.l, %i.go
  %i.hj = fmul float %i.i, %i.gm
  %i.hk = fmul float %i.m, %i.gb
  %i.hl = fadd float %i.hk, %i.hj                 ; 2 uses
  %.sroa.011.4.vec.extract.i.i363 = extractelement <2 x float> %.sroa.010.0.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.hm = fadd <2 x float> %i.hi, %i.hh           ; 2 uses
  %i.hn = fmul float %.sroa.7453.0.copyload455, %.sroa.011.4.vec.extract.i.i363
  %i.ho = insertelement <2 x float> %.sroa.0449.0.copyload452, float %.sroa.7453.0.copyload455, i64 0
  %i.hp = shufflevector <2 x float> %.sroa.010.0.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = fmul <2 x float> %i.ho, %i.hp           ; 2 uses
  %i.hr = shufflevector <2 x float> %.sroa.010.0.i.i, <2 x float> %.sroa.4.0.i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.hs = fmul <2 x float> %.sroa.0449.0.copyload452, %i.hr
  %i.ht = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hu = insertelement <2 x float> %i.ht, float %i.hn, i64 1
  %i.hv = fsub <2 x float> %i.hu, %i.hs
  %i.hw = fmul <2 x float> %.sroa.0449.0.copyload452, %.sroa.4.0.i.i ; 2 uses
  %foldExtExtBinop622 = fsub <2 x float> %i.hw, %i.hq
  %shift624 = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop625 = fadd <2 x float> %shift624, %foldExtExtBinop622 ; 2 uses
  %i.hx = shufflevector <2 x float> %.sroa.4.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hy = fmul <2 x float> %i.aa, %i.hx
  %i.hz = fadd <2 x float> %i.hy, %i.hv           ; 3 uses
  %i.ia = fmul <2 x float> %i.hr, %i.hz
  %i.ib = shufflevector <2 x float> %.sroa.4.0.i.i, <2 x float> %.sroa.010.0.i.i, <2 x i32> <i32 0, i32 2>
  %i.ic = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.id = shufflevector <2 x float> %foldExtExtBinop625, <2 x float> %i.ic, <2 x i32> <i32 0, i32 3>
  %i.ie = fmul <2 x float> %i.ib, %i.id
  %i.if = fsub <2 x float> %i.ia, %i.ie
  %foldExtExtBinop627 = fmul <2 x float> %.sroa.010.0.i.i, %foldExtExtBinop625
  %foldExtExtBinop629 = fmul <2 x float> %.sroa.010.0.i.i, %i.hz
  %shift631 = shufflevector <2 x float> %foldExtExtBinop629, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop632 = fsub <2 x float> %foldExtExtBinop627, %shift631
  %i.ig = extractelement <2 x float> %foldExtExtBinop632, i64 0
  %i.ih = fmul <2 x float> %i.if, splat (float 2.000000e+00)
  %i.ii = fadd <2 x float> %.sroa.0449.0.copyload452, %i.ih
  %i.ij = fmul float %i.ig, 2.000000e+00
  %i.ik = fadd float %.sroa.7453.0.copyload455, %i.ij
  %i.il = fsub <2 x float> %i.hm, %i.ii
  %i.im = fsub float %i.hl, %i.ik
  %i.in = fadd <2 x float> %.sroa.0218.0.copyload, %i.il
  %i.io = fadd float %.sroa.8.0.copyload, %i.im
  store <2 x float> %i.in, ptr %7, align 8
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.io, ptr %.sroa.295.0..sroa_idx, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %7, i64 12
  %10 = shufflevector <2 x float> %.sroa.010.0.i.i, <2 x float> %.sroa.4.0.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %10, ptr %i.ip, align 4, !tbaa !146
  %i.iq = fadd <2 x float> %.sroa.0218.0.copyload, %i.hm ; 2 uses
  %i.ir = fadd float %.sroa.8.0.copyload, %i.hl   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.g, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false), !tbaa.struct !165
  store <2 x float> %i.iq, ptr %i.j, align 4, !tbaa !146
  store float %i.ir, ptr %.sroa.24.0..sroa_idx.i288, align 4, !tbaa !146
  store <2 x float> %.sroa.010.0.i.i, ptr %i.n, align 4, !tbaa !146
  store <2 x float> %.sroa.4.0.i.i, ptr %.sroa.32.36..sroa_idx, align 4, !tbaa !146
  store <2 x float> %i.iq, ptr %i.h, align 4, !tbaa !146
  store float %i.ir, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !146
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !97
  %i.iu = getelementptr inbounds [48 x i8], ptr %i.it, i64 %i.f
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.iv, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  %i.iw = load i32, ptr %i.cr, align 8, !tbaa !153 ; 2 uses
  %.not279561 = icmp eq i32 %i.iw, -1
  br i1 %.not279561, label %._crit_edge564, label %.lr.ph563

.lr.ph563:                                        ; preds = %b3NLerp.exit
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %i.iy = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %8, i64 20
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph563, %bb.k
  %.1562 = phi i32 [ %i.iw, %.lr.ph563 ], [ %i.ki, %bb.k ]
  %i.jb = load ptr, ptr %i.ix, align 8, !tbaa !136
  %i.jc = sext i32 %.1562 to i64
  %i.jd = getelementptr inbounds [232 x i8], ptr %i.jb, i64 %i.jc ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @b3ComputeFatShapeAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %8, ptr noundef %i.jd, ptr noundef nonnull byval(%struct.b3Transform) align 8 %7, float noundef %i.ga) #11
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !169
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 64 ; 2 uses
  %.sroa.5499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jd, i64 72 ; 2 uses
  %.sroa.5499.0.copyload = load float, ptr %.sroa.5499.0..sroa_idx, align 8
  %.sroa.6500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jd, i64 76 ; 2 uses
  %.sroa.8502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jd, i64 84 ; 2 uses
  %.sroa.8502.0.copyload = load float, ptr %.sroa.8502.0..sroa_idx, align 4
  %i.jg = load <2 x float>, ptr %i.jf, align 8
  %i.jh = load <2 x float>, ptr %.sroa.6500.0..sroa_idx, align 4
  %i.ji = load <2 x float>, ptr %8, align 8
  %i.jj = load <2 x float>, ptr %i.iy, align 4
  %i.jk = shufflevector <2 x float> %i.jg, <2 x float> %i.jj, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.jl = shufflevector <2 x float> %i.ji, <2 x float> %i.jh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.jm = fcmp ule <4 x float> %i.jk, %i.jl
  %i.jn = load float, ptr %i.iz, align 8          ; 2 uses
  %i.jo = fcmp ule float %.sroa.5499.0.copyload, %i.jn
  %i.jp = load float, ptr %i.ja, align 4          ; 2 uses
  %i.jq = fcmp ule float %i.jp, %.sroa.8502.0.copyload
  %i.jr = freeze <4 x i1> %i.jm
  %i.js = bitcast <4 x i1> %i.jr to i4
  %i.jt = icmp eq i4 %i.js, -1
  %.fr634 = freeze i1 %i.jo
  %op.rdx = and i1 %i.jt, %.fr634
  %op.rdx581 = select i1 %op.rdx, i1 %i.jq, i1 false
  br i1 %op.rdx581, label %bb.k, label %b3AABB_Contains.exit.thread

b3AABB_Contains.exit.thread:                      ; preds = %bb.j
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jd, i64 36
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !170 ; 3 uses
  %.sroa.058.0.copyload = load <2 x float>, ptr %8, align 8
  %i.jw = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jy = fsub <2 x float> %.sroa.058.0.copyload, %i.jx
  %i.jz = fsub float %i.jn, %i.jv
  %.sroa.050.0.copyload = load <2 x float>, ptr %i.iy, align 4
  %i.ka = fadd <2 x float> %i.jx, %.sroa.050.0.copyload
  %i.kb = fadd float %i.jv, %i.jp
  store <2 x float> %i.jy, ptr %i.jf, align 8, !tbaa !146
  store float %i.jz, ptr %.sroa.5499.0..sroa_idx, align 8, !tbaa !146
  store <2 x float> %i.ka, ptr %.sroa.6500.0..sroa_idx, align 4, !tbaa !146
  store float %i.kb, ptr %.sroa.8502.0..sroa_idx, align 4, !tbaa !146
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jd, i64 198 ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 2, !tbaa !156
  %i.ke = or i8 %i.kd, 32
  store i8 %i.ke, ptr %i.kc, align 2, !tbaa !156
  %i.kf = load i32, ptr %i.co, align 4, !tbaa !154
  %i.kg = or i32 %i.kf, 2048
  store i32 %i.kg, ptr %i.co, align 4, !tbaa !154
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %b3AABB_Contains.exit.thread
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !155 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %.not279 = icmp eq i32 %i.ki, -1
  br i1 %.not279, label %._crit_edge564, label %bb.j, !llvm.loop !382

._crit_edge564:                                   ; preds = %bb.k, %b3NLerp.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.loopexit

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !168
  %.2556 = load i32, ptr %i.cr, align 8, !tbaa !101 ; 2 uses
  %.not278557 = icmp eq i32 %.2556, -1
  br i1 %.not278557, label %.loopexit, label %.lr.ph560

.lr.ph560:                                        ; preds = %bb.l
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !136
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph560, %bb.n
  %.2558 = phi i32 [ %.2556, %.lr.ph560 ], [ %.2, %bb.n ]
  %i.kl = sext i32 %.2558 to i64
  %i.km = getelementptr inbounds [232 x i8], ptr %i.kk, i64 %i.kl ; 11 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 64 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 40 ; 2 uses
  %.sroa.5511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  %.sroa.5511.0.copyload = load float, ptr %.sroa.5511.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.km, i64 52 ; 2 uses
  %.sroa.8514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.km, i64 60
  %.sroa.8514.0.copyload = load float, ptr %.sroa.8514.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.km, i64 72 ; 2 uses
  %.sroa.5505.0.copyload = load float, ptr %.sroa.5505.0..sroa_idx, align 8
  %.sroa.6506.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.km, i64 76 ; 2 uses
  %.sroa.8508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.km, i64 84 ; 2 uses
  %.sroa.8508.0.copyload = load float, ptr %.sroa.8508.0..sroa_idx, align 4
  %i.kp = load <2 x float>, ptr %i.ko, align 8
  %i.kq = load <2 x float>, ptr %.sroa.6512.0..sroa_idx, align 4
  %i.kr = load <2 x float>, ptr %i.kn, align 8
  %i.ks = load <2 x float>, ptr %.sroa.6506.0..sroa_idx, align 4
  %i.kt = shufflevector <2 x float> %i.kr, <2 x float> %i.kq, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ku = shufflevector <2 x float> %i.kp, <2 x float> %i.ks, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.kv = fcmp ule <4 x float> %i.kt, %i.ku
  %i.kw = fcmp ule float %.sroa.5505.0.copyload, %.sroa.5511.0.copyload
  %i.kx = fcmp ule float %.sroa.8514.0.copyload, %.sroa.8508.0.copyload
  %i.ky = freeze <4 x i1> %i.kv
  %i.kz = bitcast <4 x i1> %i.ky to i4
  %i.la = icmp eq i4 %i.kz, -1
  %.fr = freeze i1 %i.kw
  %op.rdx582 = and i1 %i.la, %.fr
  %op.rdx583 = select i1 %op.rdx582, i1 %i.kx, i1 false
  br i1 %op.rdx583, label %bb.n, label %b3AABB_Contains.exit413.thread

b3AABB_Contains.exit413.thread:                   ; preds = %bb.m
  %i.lb = getelementptr inbounds nuw i8, ptr %i.km, i64 36
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !170 ; 3 uses
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.ko, align 8
  %i.ld = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lf = fsub <2 x float> %.sroa.025.0.copyload, %i.le
  %i.lg = fsub float %.sroa.5511.0.copyload, %i.lc
  %.sroa.017.0.copyload = load <2 x float>, ptr %.sroa.6512.0..sroa_idx, align 4
  %i.lh = fadd <2 x float> %i.le, %.sroa.017.0.copyload
  %i.li = fadd float %i.lc, %.sroa.8514.0.copyload
  store <2 x float> %i.lf, ptr %i.kn, align 8, !tbaa !146
  store float %i.lg, ptr %.sroa.5505.0..sroa_idx, align 8, !tbaa !146
  store <2 x float> %i.lh, ptr %.sroa.6506.0..sroa_idx, align 4, !tbaa !146
  store float %i.li, ptr %.sroa.8508.0..sroa_idx, align 4, !tbaa !146
  %i.lj = getelementptr inbounds nuw i8, ptr %i.km, i64 198 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 2, !tbaa !156
  %i.ll = or i8 %i.lk, 32
  store i8 %i.ll, ptr %i.lj, align 2, !tbaa !156
  %i.lm = load i32, ptr %i.co, align 4, !tbaa !154
  %i.ln = or i32 %i.lm, 2048
  store i32 %i.ln, ptr %i.co, align 4, !tbaa !154
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %b3AABB_Contains.exit413.thread
  %i.lo = getelementptr inbounds nuw i8, ptr %i.km, i64 12
  %.2 = load i32, ptr %i.lo, align 4, !tbaa !101  ; 2 uses
  %.not278 = icmp eq i32 %.2, -1
  br i1 %.not278, label %.loopexit, label %bb.m, !llvm.loop !383

.loopexit:                                        ; preds = %bb.n, %bb.l, %._crit_edge564
  %i.lp = getelementptr inbounds nuw i8, ptr %4, i64 228 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !177 ; 2 uses
  %i.lr = icmp sgt i32 %i.lq, 0
  br i1 %i.lr, label %.lr.ph567, label %._crit_edge568

.lr.ph567:                                        ; preds = %.loopexit
  %i.ls = getelementptr inbounds nuw i8, ptr %4, i64 196
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 132
  br label %bb.o

._crit_edge568:                                   ; preds = %bb.s, %.loopexit
  %i.lx = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %4, i64 236
  %i.lz = load <2 x i32>, ptr %i.lx, align 8, !tbaa !101
  %i.ma = load <2 x i32>, ptr %i.ly, align 4, !tbaa !101
  %i.mb = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.lz, <2 x i32> %i.ma)
  store <2 x i32> %i.mb, ptr %i.lx, align 8, !tbaa !101
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !388
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 244
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !178
  %i.mg = call noundef i32 @llvm.smax.i32(i32 %i.md, i32 %i.mf)
  store i32 %i.mg, ptr %i.mc, align 8, !tbaa !388
  %i.mh = call float @b3GetMilliseconds(i64 noundef %i.a) #11 ; 2 uses
  %i.mi = call float @b3GetStallThreshold() #11
  %i.mj = fmul float %i.mi, 1.000000e+03
  %i.mk = fcmp ogt float %i.mh, %i.mj
end_hunk_0
