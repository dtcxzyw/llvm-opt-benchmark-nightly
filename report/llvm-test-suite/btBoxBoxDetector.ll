Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btBoxBoxDetector?download=true
inline.NumInlined: 302
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE:bb.a
  %i.mr = fmul float %i.cl, %i.mq
  %i.ms = tail call float @llvm.fmuladd.f32(float %i.da, float %i.dp, float %i.mr) ; 2 uses
  %i.mt = tail call noundef float @llvm.fabs.f32(float %i.ms)
  %i.mu = fmul float %i.ep, %i.dq
  %i.mv = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.dw, float %i.mu)
  %i.mw = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ee, float %i.mv)
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ed, float %i.mw)
  %i.my = fsub float %i.mt, %i.mx                 ; 2 uses
  %i.mz = fcmp ogt float %i.my, 0.000000e+00
  br i1 %i.mz, label %bb.cf, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.na = fmul float %i.dp, %i.dp
  %i.nb = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.na) ; 2 uses
  %i.nc = fadd float %i.nb, 0.000000e+00
  %sqrt906 = tail call float @llvm.sqrt.f32(float %i.nc) ; 2 uses
  %i.nd = fcmp ogt float %i.nb, 0.000000e+00
  br i1 %i.nd, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ne = fdiv float %i.my, %sqrt906              ; 3 uses
  %i.nf = fmul float %i.ne, 1.050000e+00
  %i.ng = fcmp ogt float %i.nf, %.11683
  br i1 %i.ng, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.nh = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.db, <4 x i32> <i32 poison, i32 1, i32 5, i32 poison>
  %i.ni = insertelement <4 x float> %i.nh, float %i.ne, i64 0
  %i.nj = insertelement <4 x float> %i.ni, float %i.mq, i64 3
  %i.nk = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt906, i64 0
  %i.nl = shufflevector <4 x float> %i.nk, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.nm = fdiv <4 x float> %i.nj, %i.nl
  %i.nn = fcmp olt float %i.ms, 0.000000e+00
  %i.no = zext i1 %i.nn to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.ar
  %.12684 = phi float [ %i.ne, %bb.at ], [ %.11683, %bb.as ], [ %.11683, %bb.ar ] ; 3 uses
  %.12650 = phi i32 [ %i.no, %bb.at ], [ %.11649, %bb.as ], [ %.11649, %bb.ar ] ; 2 uses
  %.12635 = phi i32 [ 13, %bb.at ], [ %.11634, %bb.as ], [ %.11634, %bb.ar ] ; 2 uses
  %.12 = phi ptr [ null, %bb.at ], [ %.11, %bb.as ], [ %.11, %bb.ar ] ; 2 uses
  %i.np = phi <4 x float> [ %i.nm, %bb.at ], [ %i.mp, %bb.as ], [ %i.mp, %bb.ar ] ; 2 uses
  %i.nq = fneg float %i.dx                        ; 2 uses
  %i.nr = fmul float %i.cl, %i.nq
  %i.ns = tail call float @llvm.fmuladd.f32(float %i.da, float %i.dr, float %i.nr) ; 2 uses
  %i.nt = tail call noundef float @llvm.fabs.f32(float %i.ns)
  %i.nu = fmul float %i.ep, %i.ds
  %i.nv = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.dy, float %i.nu)
  %i.nw = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ee, float %i.nv)
  %i.nx = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ec, float %i.nw)
  %i.ny = fsub float %i.nt, %i.nx                 ; 2 uses
  %i.nz = fcmp ogt float %i.ny, 0.000000e+00
  br i1 %i.nz, label %bb.cf, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.oa = fmul float %i.dr, %i.dr
  %i.ob = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.oa) ; 2 uses
  %i.oc = fadd float %i.ob, 0.000000e+00
  %sqrt907 = tail call float @llvm.sqrt.f32(float %i.oc) ; 2 uses
  %i.od = fcmp ogt float %i.ob, 0.000000e+00
  br i1 %i.od, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.oe = fdiv float %i.ny, %sqrt907              ; 3 uses
  %i.of = fmul float %i.oe, 1.050000e+00
  %i.og = fcmp ogt float %i.of, %.12684
  br i1 %i.og, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.oh = insertelement <4 x float> %i.db, float 0.000000e+00, i64 1
  %i.oi = insertelement <4 x float> %i.oh, float %i.oe, i64 0
  %i.oj = insertelement <4 x float> %i.oi, float %i.nq, i64 3
  %i.ok = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt907, i64 0
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.om = fdiv <4 x float> %i.oj, %i.ol
  %i.on = fcmp olt float %i.ns, 0.000000e+00
  %i.oo = zext i1 %i.on to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.av
  %.13685 = phi float [ %i.oe, %bb.ax ], [ %.12684, %bb.aw ], [ %.12684, %bb.av ] ; 2 uses
  %.13651 = phi i32 [ %i.oo, %bb.ax ], [ %.12650, %bb.aw ], [ %.12650, %bb.av ] ; 2 uses
  %.13636 = phi i32 [ 14, %bb.ax ], [ %.12635, %bb.aw ], [ %.12635, %bb.av ] ; 3 uses
  %.13 = phi ptr [ null, %bb.ax ], [ %.12, %bb.aw ], [ %.12, %bb.av ] ; 4 uses
  %i.op = phi <4 x float> [ %i.om, %bb.ax ], [ %i.np, %bb.aw ], [ %i.np, %bb.av ]
  %i.oq = fneg float %i.dz                        ; 2 uses
  %i.or = fmul float %i.cl, %i.oq
  %i.os = tail call float @llvm.fmuladd.f32(float %i.da, float %i.dt, float %i.or) ; 2 uses
  %i.ot = tail call noundef float @llvm.fabs.f32(float %i.os)
  %i.ou = fmul float %i.ep, %i.du
  %i.ov = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ea, float %i.ou)
  %i.ow = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ed, float %i.ov)
  %i.ox = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ec, float %i.ow)
  %i.oy = fsub float %i.ot, %i.ox                 ; 2 uses
  %i.oz = fcmp ogt float %i.oy, 0.000000e+00
  br i1 %i.oz, label %bb.cf, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pa = fmul float %i.dt, %i.dt
  %i.pb = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.pa) ; 2 uses
  %i.pc = fadd float %i.pb, 0.000000e+00
  %sqrt908 = tail call float @llvm.sqrt.f32(float %i.pc) ; 2 uses
  %i.pd = fcmp ogt float %i.pb, 0.000000e+00
  br i1 %i.pd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.pe = fdiv float %i.oy, %sqrt908              ; 2 uses
  %i.pf = fmul float %i.pe, 1.050000e+00
  %i.pg = fcmp ogt float %i.pf, %.13685
  br i1 %i.pg, label %.thread864, label %bb.bb

.thread864:                                       ; preds = %bb.ba
  %i.ph = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.db, <4 x i32> <i32 poison, i32 1, i32 7, i32 poison>
  %i.pi = insertelement <4 x float> %i.ph, float %i.pe, i64 0
  %i.pj = insertelement <4 x float> %i.pi, float %i.oq, i64 3
  %i.pk = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt908, i64 0
  %i.pl = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.pm = fdiv <4 x float> %i.pj, %i.pl
  %i.pn = fcmp olt float %i.os, 0.000000e+00
  %i.po = zext i1 %i.pn to i32
  br label %bb.be

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.not = icmp eq i32 %.13636, 0
  br i1 %.not, label %bb.cf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not714 = icmp eq ptr %.13, null
  br i1 %.not714, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pp = load float, ptr %.13, align 4, !tbaa !17 ; 2 uses
  store float %i.pp, ptr %6, align 4, !tbaa !17
  %i.pq = getelementptr inbounds nuw i8, ptr %.13, i64 16
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !17 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.pr, ptr %i.ps, align 4, !tbaa !17
  %i.pt = getelementptr inbounds nuw i8, ptr %.13, i64 32
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !17
  br label %bb.bf

bb.be:                                            ; preds = %.thread864, %bb.bc
  %.14652861876 = phi i32 [ %i.po, %.thread864 ], [ %.13651, %bb.bc ]
  %.14637862874 = phi i32 [ 15, %.thread864 ], [ %.13636, %bb.bc ]
  %i.pv = phi <4 x float> [ %i.pm, %.thread864 ], [ %i.op, %bb.bc ] ; 4 uses
  %i.pw = extractelement <4 x float> %i.pv, i64 2 ; 3 uses
  %i.px = fmul float %i.bz, %i.pw
  %i.py = extractelement <4 x float> %i.pv, i64 3 ; 3 uses
  %i.pz = tail call float @llvm.fmuladd.f32(float %i.o, float %i.py, float %i.px)
  %i.qa = extractelement <4 x float> %i.pv, i64 1 ; 3 uses
  %i.qb = tail call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.qa, float %i.pz) ; 2 uses
  store float %i.qb, ptr %6, align 4, !tbaa !17
  %i.qc = load float, ptr %i.p, align 4, !tbaa !17
  %i.qd = load float, ptr %i.t, align 4, !tbaa !17
  %i.qe = fmul float %i.pw, %i.qd
  %i.qf = tail call float @llvm.fmuladd.f32(float %i.qc, float %i.py, float %i.qe)
  %i.qg = load float, ptr %i.w, align 4, !tbaa !17
  %i.qh = tail call noundef float @llvm.fmuladd.f32(float %i.qg, float %i.qa, float %i.qf) ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.qh, ptr %i.qi, align 4, !tbaa !17
  %i.qj = load float, ptr %i.q, align 4, !tbaa !17
  %i.qk = load float, ptr %i.u, align 4, !tbaa !17
  %i.ql = fmul float %i.pw, %i.qk
  %i.qm = tail call float @llvm.fmuladd.f32(float %i.qj, float %i.py, float %i.ql)
  %i.qn = load float, ptr %i.x, align 4, !tbaa !17
  %i.qo = tail call noundef float @llvm.fmuladd.f32(float %i.qn, float %i.qa, float %i.qm)
  %i.qp = extractelement <4 x float> %i.pv, i64 0
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sink = phi float [ %i.qo, %bb.be ], [ %i.pu, %bb.bd ] ; 2 uses
  %i.qq = phi float [ %i.qh, %bb.be ], [ %i.pr, %bb.bd ]
  %i.qr = phi float [ %i.qb, %bb.be ], [ %i.pp, %bb.bd ]
  %.14686860877 = phi float [ %i.qp, %bb.be ], [ %.13685, %bb.bd ] ; 2 uses
  %.14652861875 = phi i32 [ %.14652861876, %bb.be ], [ %.13651, %bb.bd ]
  %.14637862873 = phi i32 [ %.14637862874, %bb.be ], [ %.13636, %bb.bd ] ; 6 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sink, ptr %i.qs, align 4, !tbaa !17
  %.not715 = icmp eq i32 %.14652861875, 0
  br i1 %.not715, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.qt = insertelement <2 x float> poison, float %i.qr, i64 0
  %i.qu = insertelement <2 x float> %i.qt, float %i.qq, i64 1
  %i.qv = fneg <2 x float> %i.qu
  store <2 x float> %i.qv, ptr %6, align 4, !tbaa !17
  %i.qw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qx = fneg float %.sink
  store float %i.qx, ptr %i.qw, align 4, !tbaa !17
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.qy = fneg float %.14686860877
  store float %i.qy, ptr %7, align 4, !tbaa !17
  %i.qz = icmp samesign ugt i32 %.14637862873, 6
  br i1 %i.qz, label %.preheader911, label %bb.bi

.preheader911:                                    ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa !17
  %23 = load <4 x float>, ptr %6, align 4         ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.rb = fneg <3 x float> %i.z
  %i.rc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.rd = load float, ptr %i.rc, align 8, !tbaa !17
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.rf = load <2 x float>, ptr %13, align 8, !tbaa !17
  %i.rg = load <3 x float>, ptr %1, align 4, !tbaa !17 ; 4 uses
  %i.rh = load <3 x float>, ptr %i.p, align 4, !tbaa !17 ; 4 uses
  %i.ri = shufflevector <4 x float> %23, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1> ; 2 uses
  %i.rj = fmul <3 x float> %i.ri, %i.rh
  %i.rk = shufflevector <4 x float> %23, <4 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.rl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.rk, <3 x float> %i.rg, <3 x float> %i.rj)
  %i.rm = load <3 x float>, ptr %i.q, align 4, !tbaa !17 ; 3 uses
  %i.rn = load float, ptr %i.re, align 4, !tbaa !17
  %i.ro = shufflevector <4 x float> %23, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2> ; 2 uses
  %i.rp = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ro, <3 x float> %i.rm, <3 x float> %i.rl)
  %i.rq = fcmp ogt <3 x float> %i.rp, zeroinitializer
  %i.rr = select <3 x i1> %i.rq, <3 x float> %i.z, <3 x float> %i.rb ; 6 uses
  %i.rs = shufflevector <3 x float> %i.rr, <3 x float> poison, <2 x i32> zeroinitializer
  %i.rt = shufflevector <3 x float> %i.rg, <3 x float> %i.rh, <2 x i32> <i32 0, i32 3>
  %i.ru = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rs, <2 x float> %i.rt, <2 x float> %i.rf)
  %i.rv = extractelement <3 x float> %i.rr, i64 0
  %i.rw = extractelement <3 x float> %i.rm, i64 0
  %i.rx = tail call float @llvm.fmuladd.f32(float %i.rv, float %i.rw, float %i.rd)
  %i.ry = shufflevector <3 x float> %i.rr, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rz = shufflevector <3 x float> %i.rg, <3 x float> %i.rh, <2 x i32> <i32 1, i32 4>
  %i.sa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ry, <2 x float> %i.rz, <2 x float> %i.ru)
  %i.sb = extractelement <3 x float> %i.rr, i64 1
  %i.sc = tail call float @llvm.fmuladd.f32(float %i.sb, float %i.rn, float %i.rx)
  %i.sd = shufflevector <3 x float> %i.rr, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.se = shufflevector <3 x float> %i.rg, <3 x float> %i.rh, <2 x i32> <i32 2, i32 5>
  %i.sf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sd, <2 x float> %i.se, <2 x float> %i.sa)
  store <2 x float> %i.sf, ptr %13, align 8, !tbaa !17
  %i.sg = extractelement <3 x float> %i.rr, i64 2
  %i.sh = extractelement <3 x float> %i.rm, i64 2
  %i.si = tail call float @llvm.fmuladd.f32(float %i.sg, float %i.sh, float %i.sc)
  store float %i.si, ptr %i.rc, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa !17
  %i.sj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.sk = load float, ptr %i.sj, align 8, !tbaa !17
  %i.sl = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.sm = load float, ptr %i.am, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.sn = add nsw i32 %.14637862873, -7           ; 2 uses
  %.lhs.trunc = trunc i32 %i.sn to i8
  %i.so = udiv i8 %.lhs.trunc, 3
  %i.sp = zext nneg i8 %i.so to i64               ; 3 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sp
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !17
  store float %i.sr, ptr %15, align 4, !tbaa !17
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sp
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load float, ptr %i.st, align 4, !tbaa !17
  %i.sv = getelementptr inbounds nuw i8, ptr %15, i64 4
  store float %i.su, ptr %i.sv, align 4, !tbaa !17
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sp
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 32
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !17
  %i.sz = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float %i.sy, ptr %i.sz, align 4, !tbaa !17
  %.lhs.trunc1029 = trunc i32 %i.sn to i8
  %i.ta = urem i8 %.lhs.trunc1029, 3
  %i.tb = zext nneg i8 %i.ta to i64               ; 3 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.tb
  %i.td = load float, ptr %i.tc, align 4, !tbaa !17 ; 2 uses
  store float %i.td, ptr %16, align 4, !tbaa !17
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.tb
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !17 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %16, i64 4
  store float %i.tg, ptr %i.th, align 4, !tbaa !17
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.tb
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 32
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !17 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %16, i64 8
  store float %i.tk, ptr %i.tl, align 4, !tbaa !17
  %i.tm = load <2 x float>, ptr %14, align 8, !tbaa !17
  %i.tn = load <3 x float>, ptr %4, align 4, !tbaa !17 ; 4 uses
  %i.to = load <3 x float>, ptr %i.an, align 4, !tbaa !17 ; 4 uses
  %i.tp = fmul <3 x float> %i.ri, %i.to
  %i.tq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.rk, <3 x float> %i.tn, <3 x float> %i.tp)
  %i.tr = load <3 x float>, ptr %i.ao, align 4, !tbaa !17 ; 3 uses
  %i.ts = load float, ptr %i.sl, align 4, !tbaa !17
  %i.tt = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ro, <3 x float> %i.tr, <3 x float> %i.tq)
  %i.tu = fcmp ogt <3 x float> %i.tt, zeroinitializer
  %i.tv = shufflevector <3 x i1> %i.tu, <3 x i1> poison, <3 x i32> <i32 2, i32 1, i32 0>
  %i.tw = shufflevector <2 x float> %i.af, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 0>
  %i.tx = insertelement <3 x float> %i.tw, float %i.sm, i64 0 ; 2 uses
  %i.ty = fneg <3 x float> %i.tx
  %i.tz = select <3 x i1> %i.tv, <3 x float> %i.ty, <3 x float> %i.tx ; 6 uses
  %i.ua = shufflevector <3 x float> %i.tz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ub = shufflevector <3 x float> %i.tn, <3 x float> %i.to, <2 x i32> <i32 0, i32 3>
  %i.uc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ua, <2 x float> %i.ub, <2 x float> %i.tm)
  %i.ud = extractelement <3 x float> %i.tz, i64 2
  %i.ue = extractelement <3 x float> %i.tr, i64 0
  %i.uf = tail call float @llvm.fmuladd.f32(float %i.ud, float %i.ue, float %i.sk)
  %i.ug = shufflevector <3 x float> %i.tz, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uh = shufflevector <3 x float> %i.tn, <3 x float> %i.to, <2 x i32> <i32 1, i32 4>
  %i.ui = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ug, <2 x float> %i.uh, <2 x float> %i.uc)
  %i.uj = extractelement <3 x float> %i.tz, i64 1
  %i.uk = tail call float @llvm.fmuladd.f32(float %i.uj, float %i.ts, float %i.uf)
  %i.ul = shufflevector <3 x float> %i.tz, <3 x float> poison, <2 x i32> zeroinitializer
  %i.um = shufflevector <3 x float> %i.tn, <3 x float> %i.to, <2 x i32> <i32 2, i32 5>
  %i.un = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ul, <2 x float> %i.um, <2 x float> %i.ui) ; 2 uses
  store <2 x float> %i.un, ptr %14, align 8, !tbaa !17
  %i.uo = extractelement <3 x float> %i.tz, i64 0
  %i.up = extractelement <3 x float> %i.tr, i64 2
  %i.uq = tail call float @llvm.fmuladd.f32(float %i.uo, float %i.up, float %i.uk) ; 2 uses
  store float %i.uq, ptr %i.sj, align 8, !tbaa !17
  call void @_Z20dLineClosestApproachRK9btVector3S1_S1_S1_PfS2_(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.ur = load float, ptr %i.d, align 4, !tbaa !17 ; 2 uses
  %i.us = insertelement <2 x float> poison, float %i.td, i64 0
  %i.ut = insertelement <2 x float> %i.us, float %i.tg, i64 1
  %i.uu = insertelement <2 x float> poison, float %i.ur, i64 0
  %i.uv = shufflevector <2 x float> %i.uu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ut, <2 x float> %i.uv, <2 x float> %i.un)
  store <2 x float> %i.uw, ptr %14, align 8, !tbaa !17
  %i.ux = tail call float @llvm.fmuladd.f32(float %i.tk, float %i.ur, float %i.uq)
  store float %i.ux, ptr %i.sj, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.uy = load <2 x float>, ptr %6, align 4, !tbaa !17
  %i.uz = fneg <2 x float> %i.uy
  %i.va = load float, ptr %i.ra, align 4, !tbaa !17
  %i.vb = fneg float %i.va
  %.sroa.3.12.vec.insert.i723 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vb, i64 0
  store <2 x float> %i.uz, ptr %17, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i723, ptr %i.vc, align 8
  %i.vd = load ptr, ptr %12, align 8, !tbaa !9
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 32
  %i.vf = load ptr, ptr %i.ve, align 8
  call void %i.vf(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %14, float noundef %.14686860877)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  store i32 %.14637862873, ptr %8, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.cf

bb.bi:                                            ; preds = %bb.bh
  %i.vg = icmp samesign ult i32 %.14637862873, 4  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  %i.vh = load float, ptr %6, align 4, !tbaa !17  ; 2 uses
  br i1 %i.vg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.vi = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.vj = load <2 x float>, ptr %i.vi, align 4, !tbaa !17
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.vk = fneg float %i.vh
  %i.vl = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.vm = load <2 x float>, ptr %i.vl, align 4, !tbaa !17
  %i.vn = fneg <2 x float> %i.vm
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0617899 = phi ptr [ %i.b, %bb.bj ], [ %i.a, %bb.bk ] ; 3 uses
  %.0618897 = phi ptr [ %i.a, %bb.bj ], [ %i.b, %bb.bk ] ; 3 uses
  %.0619895 = phi ptr [ %3, %bb.bj ], [ %0, %bb.bk ] ; 2 uses
  %.0620893 = phi ptr [ %0, %bb.bj ], [ %3, %bb.bk ] ; 6 uses
  %.0621891 = phi ptr [ %4, %bb.bj ], [ %1, %bb.bk ] ; 17 uses
  %.0622889 = phi ptr [ %1, %bb.bj ], [ %4, %bb.bk ] ; 2 uses
  %.sroa.0739.0 = phi float [ %i.vh, %bb.bj ], [ %i.vk, %bb.bk ] ; 3 uses
  %i.vo = phi <2 x float> [ %i.vj, %bb.bj ], [ %i.vn, %bb.bk ] ; 4 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.0621891, i64 16
  %i.vq = getelementptr inbounds nuw i8, ptr %.0621891, i64 32
  %i.vr = load <2 x float>, ptr %.0621891, align 4, !tbaa !17
  %i.vs = load <2 x float>, ptr %i.vp, align 4, !tbaa !17
  %i.vt = shufflevector <2 x float> %i.vo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vu = fmul <2 x float> %i.vt, %i.vs
  %i.vv = insertelement <2 x float> poison, float %.sroa.0739.0, i64 0
  %i.vw = shufflevector <2 x float> %i.vv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vr, <2 x float> %i.vw, <2 x float> %i.vu)
  %i.vy = load <2 x float>, ptr %i.vq, align 4, !tbaa !17
  %i.vz = shufflevector <2 x float> %i.vo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vy, <2 x float> %i.vz, <2 x float> %i.vx) ; 2 uses
  store <2 x float> %i.wa, ptr %18, align 8, !tbaa !17
  %i.wb = getelementptr inbounds nuw i8, ptr %.0621891, i64 8
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !17
  %i.wd = getelementptr inbounds nuw i8, ptr %.0621891, i64 24
  %i.we = load float, ptr %i.wd, align 4, !tbaa !17
  %i.wf = extractelement <2 x float> %i.vo, i64 0 ; 2 uses
  %i.wg = fmul float %i.wf, %i.we
  %i.wh = tail call float @llvm.fmuladd.f32(float %i.wc, float %.sroa.0739.0, float %i.wg)
  %i.wi = getelementptr inbounds nuw i8, ptr %.0621891, i64 40
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !17
  %i.wk = extractelement <2 x float> %i.vo, i64 1 ; 2 uses
  %i.wl = tail call noundef float @llvm.fmuladd.f32(float %i.wj, float %i.wk, float %i.wh) ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %18, i64 8
  store float %i.wl, ptr %i.wm, align 8, !tbaa !17
  %i.wn = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wa) ; 2 uses
  %i.wo = tail call noundef float @llvm.fabs.f32(float %i.wl) ; 2 uses
  %i.wp = extractelement <2 x float> %i.wn, i64 0 ; 2 uses
  %i.wq = extractelement <2 x float> %i.wn, i64 1 ; 2 uses
  %i.wr = fcmp ogt float %i.wq, %i.wp
  br i1 %i.wr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ws = fcmp ogt float %i.wq, %i.wo             ; 2 uses
  %. = select i1 %i.ws, i64 1, i64 2
  %.717 = select i1 %i.ws, i32 2, i32 1
  br label %.loopexit914

bb.bn:                                            ; preds = %bb.bl
  %i.wt = fcmp ogt float %i.wp, %i.wo             ; 3 uses
  %.718 = select i1 %i.wt, i64 0, i64 2
end_hunk_0
