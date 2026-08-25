Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btCollisionWorld?download=true
inline.NumInlined: 1116
inline.NumDeleted: 295
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN16btCollisionWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3:bb.a
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !350
  %i.mm = icmp sgt i32 %i.ml, 0
  br i1 %i.mm, label %.lr.ph268, label %.loopexit

.lr.ph268:                                        ; preds = %.preheader252
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 56 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 24 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.q

.preheader:                                       ; preds = %bb.p
  %i.nb = load ptr, ptr %2, align 8, !tbaa !9
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 208
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = tail call noundef i32 %i.nd(ptr noundef nonnull align 8 dereferenceable(80) %2)
  %i.nf = icmp sgt i32 %i.ne, 0
  br i1 %i.nf, label %.lr.ph270, label %.loopexit

.lr.ph270:                                        ; preds = %.preheader
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.no = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.np = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.t

bb.q:                                             ; preds = %.lr.ph268, %bb.s
  %indvars.iv282 = phi i64 [ 0, %.lr.ph268 ], [ %indvars.iv.next283, %bb.s ] ; 5 uses
  %i.nr = load ptr, ptr %i.mn, align 8, !tbaa !354 ; 2 uses
  %i.ns = getelementptr inbounds nuw [48 x i8], ptr %i.nr, i64 %indvars.iv282 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !355 ; 3 uses
  %i.nv = icmp sgt i32 %i.nu, 0
  br i1 %i.nv, label %.lr.ph264.preheader, label %.loopexit251

.lr.ph264.preheader:                              ; preds = %bb.q
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !359
  %i.ny = zext nneg i32 %i.nu to i64
  %i.nz = getelementptr [4 x i8], ptr %i.nx, i64 %i.ny
  %i.oa = getelementptr i8, ptr %i.nz, i64 -4
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !296
  br label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %.lr.ph264
  %indvars.iv279 = phi i64 [ 0, %.lr.ph264.preheader ], [ %indvars.iv.next280, %.lr.ph264 ] ; 2 uses
  %i.oc = phi ptr [ %i.nr, %.lr.ph264.preheader ], [ %i.rb, %.lr.ph264 ]
  %.0129262 = phi i32 [ %i.ob, %.lr.ph264.preheader ], [ %i.oi, %.lr.ph264 ]
  %.sroa.0219.0259 = phi float [ 0.000000e+00, %.lr.ph264.preheader ], [ %i.on, %.lr.ph264 ]
  %i.od = phi <2 x float> [ zeroinitializer, %.lr.ph264.preheader ], [ %i.oq, %.lr.ph264 ]
  %i.oe = getelementptr inbounds nuw [48 x i8], ptr %i.oc, i64 %indvars.iv282
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !359
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv279
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !296 ; 2 uses
  %i.oj = load ptr, ptr %i.mo, align 8, !tbaa !325
  %i.ok = sext i32 %i.oi to i64                   ; 2 uses
  %i.ol = getelementptr inbounds [16 x i8], ptr %i.oj, i64 %i.ok ; 2 uses
  %i.om = load float, ptr %i.ol, align 4, !tbaa !74
  %i.on = fadd float %.sroa.0219.0259, %i.om      ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %i.op = load <2 x float>, ptr %i.oo, align 4, !tbaa !74
  %i.oq = fadd <2 x float> %i.od, %i.op           ; 2 uses
  %i.or = load ptr, ptr %0, align 8, !tbaa !9
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 40
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = call noundef ptr %i.ot(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ov = load ptr, ptr %i.mo, align 8, !tbaa !325 ; 2 uses
  %i.ow = sext i32 %.0129262 to i64
  %i.ox = getelementptr inbounds [16 x i8], ptr %i.ov, i64 %i.ow ; 3 uses
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !74 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !74 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !74 ; 2 uses
  %i.pd = load float, ptr %i.mq, align 4, !tbaa !74 ; 2 uses
  %i.pe = load float, ptr %i.mt, align 4, !tbaa !74 ; 2 uses
  %i.pf = fmul float %i.pa, %i.pe
  %i.pg = call float @llvm.fmuladd.f32(float %i.oy, float %i.pd, float %i.pf)
  %i.ph = load float, ptr %i.mu, align 4, !tbaa !74 ; 2 uses
  %i.pi = call noundef float @llvm.fmuladd.f32(float %i.pc, float %i.ph, float %i.pg)
  %i.pj = load <2 x float>, ptr %1, align 4, !tbaa !74 ; 2 uses
  %i.pk = load <2 x float>, ptr %i.mp, align 4, !tbaa !74 ; 2 uses
  %i.pl = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.pm = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pn = shufflevector <2 x float> %i.pj, <2 x float> %i.pk, <2 x i32> <i32 1, i32 3>
  %i.po = fmul <2 x float> %i.pm, %i.pn
  %i.pp = insertelement <2 x float> poison, float %i.oy, i64 0
  %i.pq = shufflevector <2 x float> %i.pp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pr = shufflevector <2 x float> %i.pj, <2 x float> %i.pk, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ps = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pq, <2 x float> %i.pr, <2 x float> %i.po)
  %i.pt = insertelement <2 x float> poison, float %i.pc, i64 0
  %i.pu = shufflevector <2 x float> %i.pt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pv = load <2 x float>, ptr %i.mv, align 4, !tbaa !74 ; 2 uses
  %i.pw = load float, ptr %i.mw, align 4, !tbaa !74 ; 2 uses
  %i.px = fadd float %i.pi, %i.pw
  %.sroa.3.12.vec.insert.i4.i.i167 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.px, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i167, ptr %i.mx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.py = getelementptr inbounds [16 x i8], ptr %i.ov, i64 %i.ok ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 4
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qb = load <2 x float>, ptr %i.mr, align 4, !tbaa !74 ; 2 uses
  %i.qc = load <2 x float>, ptr %i.ms, align 4, !tbaa !74 ; 2 uses
  %i.qd = shufflevector <2 x float> %i.qb, <2 x float> %i.qc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pu, <2 x float> %i.qd, <2 x float> %i.ps)
  %i.qf = fadd <2 x float> %i.qe, %i.pv
  store <2 x float> %i.qf, ptr %9, align 8
  %i.qg = load float, ptr %i.py, align 4, !tbaa !74 ; 2 uses
  %i.qh = load float, ptr %i.pz, align 4, !tbaa !74 ; 2 uses
  %i.qi = load float, ptr %i.qa, align 4, !tbaa !74 ; 2 uses
  %i.qj = shufflevector <2 x float> %i.qb, <2 x float> %i.qc, <2 x i32> <i32 0, i32 2>
  %i.qk = insertelement <2 x float> poison, float %i.qh, i64 0
  %i.ql = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qm = fmul <2 x float> %i.qj, %i.ql
  %i.qn = insertelement <2 x float> poison, float %i.qg, i64 0
  %i.qo = shufflevector <2 x float> %i.qn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qo, <2 x float> %i.pr, <2 x float> %i.qm)
  %i.qq = insertelement <2 x float> poison, float %i.qi, i64 0
  %i.qr = shufflevector <2 x float> %i.qq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qr, <2 x float> %i.qd, <2 x float> %i.qp)
  %i.qt = fmul float %i.pe, %i.qh
  %i.qu = call float @llvm.fmuladd.f32(float %i.qg, float %i.pd, float %i.qt)
  %i.qv = call noundef float @llvm.fmuladd.f32(float %i.qi, float %i.ph, float %i.qu)
  %i.qw = fadd <2 x float> %i.pv, %i.qs
  %i.qx = fadd float %i.pw, %i.qv
  %.sroa.3.12.vec.insert.i4.i.i170 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qx, i64 0
  store <2 x float> %i.qw, ptr %10, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i170, ptr %i.my, align 8
  %i.qy = load ptr, ptr %i.ou, align 8, !tbaa !9
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 32
  %i.ra = load ptr, ptr %i.qz, align 8
  call void %i.ra(ptr noundef nonnull align 8 dereferenceable(8) %i.ou, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %i.rb = load ptr, ptr %i.mn, align 8, !tbaa !354 ; 2 uses
  %i.rc = getelementptr inbounds nuw [48 x i8], ptr %i.rb, i64 %indvars.iv282
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !355
  %i.rf = sext i32 %i.re to i64
  %i.rg = icmp slt i64 %indvars.iv.next280, %i.rf
  br i1 %i.rg, label %.lr.ph264, label %.loopexit251, !llvm.loop !360

.loopexit251:                                     ; preds = %.lr.ph264, %bb.q
  %.sroa.0219.1 = phi float [ 0.000000e+00, %bb.q ], [ %i.on, %.lr.ph264 ]
  %i.rh = phi <2 x float> [ zeroinitializer, %bb.q ], [ %i.oq, %.lr.ph264 ] ; 2 uses
  %i.ri = load ptr, ptr %0, align 8, !tbaa !9
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 40
  %i.rk = load ptr, ptr %i.rj, align 8
  %i.rl = call noundef ptr %i.rk(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !9
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 112
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = call noundef i32 %i.ro(ptr noundef nonnull align 8 dereferenceable(8) %i.rl)
  %i.rq = and i32 %i.rp, 16384
  %.not138 = icmp eq i32 %i.rq, 0
  br i1 %.not138, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit251
  %i.rr = sitofp i32 %i.nu to float
  %i.rs = fdiv float 1.000000e+00, %i.rr          ; 3 uses
  %i.rt = extractelement <2 x float> %i.rh, i64 1
  %i.ru = fmul float %i.rs, %i.rt                 ; 2 uses
  %i.rv = extractelement <2 x float> %i.rh, i64 0
  %i.rw = fmul float %i.rs, %i.rv                 ; 2 uses
  %i.rx = fmul float %i.rs, %.sroa.0219.1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %11, align 16, !tbaa !74
  %i.ry = load ptr, ptr %i.mn, align 8, !tbaa !354
  %i.rz = getelementptr inbounds nuw [48 x i8], ptr %i.ry, i64 %indvars.iv282 ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 32
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 36
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 40
  %i.sd = load float, ptr %i.sa, align 4, !tbaa !74
  %i.se = load float, ptr %i.sb, align 4, !tbaa !74
  %i.sf = load float, ptr %i.sc, align 4, !tbaa !74
  %i.sg = load ptr, ptr %0, align 8, !tbaa !9
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 40
  %i.si = load ptr, ptr %i.sh, align 8
  %i.sj = call noundef ptr %i.si(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %24 = load <4 x float>, ptr %i.mq, align 4
  %25 = load <4 x float>, ptr %i.mt, align 4
  %26 = load <4 x float>, ptr %i.mu, align 4
  %i.sk = load <2 x float>, ptr %1, align 4, !tbaa !74 ; 2 uses
  %i.sl = load <2 x float>, ptr %i.mp, align 4, !tbaa !74 ; 2 uses
  %i.sm = insertelement <2 x float> poison, float %i.rw, i64 0 ; 2 uses
  %i.sn = shufflevector <2 x float> %i.sm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.so = shufflevector <2 x float> %i.sk, <2 x float> %i.sl, <2 x i32> <i32 1, i32 3>
  %i.sp = fmul <2 x float> %i.sn, %i.so
  %i.sq = insertelement <2 x float> poison, float %i.rx, i64 0 ; 2 uses
  %i.sr = shufflevector <2 x float> %i.sq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ss = shufflevector <2 x float> %i.sk, <2 x float> %i.sl, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.st = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sr, <2 x float> %i.ss, <2 x float> %i.sp)
  %i.su = insertelement <2 x float> poison, float %i.ru, i64 0 ; 2 uses
  %i.sv = shufflevector <2 x float> %i.su, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sw = load <2 x float>, ptr %i.mv, align 4, !tbaa !74 ; 2 uses
  %i.sx = load float, ptr %i.mw, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.sy = fadd float %i.rx, %i.sd                 ; 2 uses
  %i.sz = fadd float %i.rw, %i.se                 ; 2 uses
  %i.ta = fadd float %i.ru, %i.sf                 ; 2 uses
  %i.tb = load <2 x float>, ptr %i.mr, align 4, !tbaa !74 ; 2 uses
  %i.tc = load <2 x float>, ptr %i.ms, align 4, !tbaa !74 ; 2 uses
  %i.td = shufflevector <2 x float> %i.tb, <2 x float> %i.tc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.te = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sv, <2 x float> %i.td, <2 x float> %i.st)
  %i.tf = fadd <2 x float> %i.te, %i.sw
  store <2 x float> %i.tf, ptr %12, align 8
  %i.tg = insertelement <2 x float> poison, float %i.sz, i64 0
  %i.th = shufflevector <2 x float> %i.tg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ti = shufflevector <2 x float> %i.tb, <2 x float> %i.tc, <2 x i32> <i32 0, i32 2>
  %i.tj = fmul <2 x float> %i.th, %i.ti
  %i.tk = insertelement <2 x float> poison, float %i.sy, i64 0
  %i.tl = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tl, <2 x float> %i.ss, <2 x float> %i.tj)
  %i.tn = insertelement <2 x float> poison, float %i.ta, i64 0
  %i.to = shufflevector <2 x float> %i.tn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.to, <2 x float> %i.td, <2 x float> %i.tm)
  %i.tq = fadd <2 x float> %i.tp, %i.sw
  %i.tr = insertelement <2 x float> %i.sm, float %i.sz, i64 1
  %i.ts = shufflevector <4 x float> %25, <4 x float> poison, <2 x i32> zeroinitializer
  %i.tt = fmul <2 x float> %i.tr, %i.ts
  %i.tu = insertelement <2 x float> %i.sq, float %i.sy, i64 1
  %i.tv = shufflevector <4 x float> %24, <4 x float> poison, <2 x i32> zeroinitializer
  %i.tw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tu, <2 x float> %i.tv, <2 x float> %i.tt)
  %i.tx = insertelement <2 x float> %i.su, float %i.ta, i64 1
  %i.ty = shufflevector <4 x float> %26, <4 x float> poison, <2 x i32> zeroinitializer
  %i.tz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tx, <2 x float> %i.ty, <2 x float> %i.tw)
  %i.ua = insertelement <2 x float> poison, float %i.sx, i64 0
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uc = fadd <2 x float> %i.tz, %i.ub           ; 2 uses
  %i.ud = insertelement <2 x float> %i.uc, float 0.000000e+00, i64 1
  store <2 x float> %i.ud, ptr %i.mz, align 8
  %i.ue = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.uc, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.tq, ptr %13, align 8
  store <2 x float> %i.ue, ptr %i.na, align 8
  %i.uf = load ptr, ptr %i.sj, align 8, !tbaa !9
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 32
  %i.uh = load ptr, ptr %i.ug, align 8
  call void %i.uh(ptr noundef nonnull align 8 dereferenceable(8) %i.sj, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit251
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %i.ui = load i32, ptr %i.mk, align 4, !tbaa !350
  %i.uj = sext i32 %i.ui to i64
  %i.uk = icmp slt i64 %indvars.iv.next283, %i.uj
  br i1 %i.uk, label %bb.q, label %.loopexit, !llvm.loop !361

bb.t:                                             ; preds = %.lr.ph270, %bb.t
  %.1269 = phi i32 [ 0, %.lr.ph270 ], [ %i.wn, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.ul = load ptr, ptr %2, align 8, !tbaa !9
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 216
  %i.un = load ptr, ptr %i.um, align 8
  call void %i.un(ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %.1269, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.uo = load <4 x float>, ptr %14, align 16     ; 2 uses
  %i.up = shufflevector <4 x float> %i.uo, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %27 = load <4 x float>, ptr %i.nh, align 4
  %28 = load <4 x float>, ptr %i.nk, align 4
  %29 = load <4 x float>, ptr %i.nl, align 4
  %i.uq = load <2 x float>, ptr %1, align 4, !tbaa !74 ; 2 uses
  %i.ur = load <2 x float>, ptr %i.ng, align 4, !tbaa !74 ; 2 uses
  %i.us = shufflevector <2 x float> %i.uq, <2 x float> %i.ur, <2 x i32> <i32 1, i32 3>
  %i.ut = shufflevector <2 x float> %i.uq, <2 x float> %i.ur, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.uu = shufflevector <4 x float> %i.uo, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.uv = load <2 x float>, ptr %i.nm, align 4, !tbaa !74 ; 2 uses
  %i.uw = load float, ptr %i.nn, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.ux = load float, ptr %i.np, align 8, !tbaa !74 ; 2 uses
  %i.uy = load <2 x float>, ptr %i.ni, align 4, !tbaa !74 ; 2 uses
  %i.uz = load <2 x float>, ptr %i.nj, align 4, !tbaa !74 ; 2 uses
  %i.va = shufflevector <2 x float> %i.uy, <2 x float> %i.uz, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.vb = shufflevector <2 x float> %i.uy, <2 x float> %i.uz, <2 x i32> <i32 0, i32 2>
  %i.vc = insertelement <2 x float> poison, float %i.ux, i64 0
  %i.vd = shufflevector <2 x float> %i.vc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ve = load <2 x float>, ptr %14, align 16, !tbaa !74 ; 4 uses
  %i.vf = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vg = fmul <2 x float> %i.vf, %i.us
  %i.vh = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vh, <2 x float> %i.ut, <2 x float> %i.vg)
  %i.vj = load <2 x float>, ptr %15, align 8, !tbaa !74 ; 4 uses
  %i.vk = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> zeroinitializer
  %i.vl = shufflevector <2 x float> %i.ve, <2 x float> %i.vj, <2 x i32> <i32 1, i32 3>
  %i.vm = fmul <2 x float> %i.vk, %i.vl
  %i.vn = shufflevector <2 x float> %i.ve, <2 x float> %i.vj, <2 x i32> <i32 0, i32 2>
  %i.vo = shufflevector <4 x float> %27, <4 x float> poison, <2 x i32> zeroinitializer
  %i.vp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vn, <2 x float> %i.vo, <2 x float> %i.vm)
  %i.vq = insertelement <2 x float> %i.up, float %i.ux, i64 1
  %i.vr = shufflevector <4 x float> %29, <4 x float> poison, <2 x i32> zeroinitializer
  %i.vs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vq, <2 x float> %i.vr, <2 x float> %i.vp)
  %i.vt = insertelement <2 x float> poison, float %i.uw, i64 0
  %i.vu = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vv = fadd <2 x float> %i.vs, %i.vu           ; 2 uses
  %i.vw = insertelement <2 x float> %i.vv, float 0.000000e+00, i64 1
  store <2 x float> %i.vw, ptr %i.no, align 8
  %i.vx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uu, <2 x float> %i.va, <2 x float> %i.vi)
  %i.vy = fadd <2 x float> %i.vx, %i.uv
  store <2 x float> %i.vy, ptr %16, align 8
  %i.vz = shufflevector <2 x float> %i.vj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wa = fmul <2 x float> %i.vb, %i.vz
  %i.wb = shufflevector <2 x float> %i.vj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wb, <2 x float> %i.ut, <2 x float> %i.wa)
  %i.wd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vd, <2 x float> %i.va, <2 x float> %i.wc)
  %i.we = fadd <2 x float> %i.uv, %i.wd
  %i.wf = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.vv, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.we, ptr %17, align 8
  store <2 x float> %i.wf, ptr %i.nq, align 8
  %i.wg = load ptr, ptr %0, align 8, !tbaa !9
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 40
  %i.wi = load ptr, ptr %i.wh, align 8
  %i.wj = call noundef ptr %i.wi(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !9
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 32
  %i.wm = load ptr, ptr %i.wl, align 8
  call void %i.wm(ptr noundef nonnull align 8 dereferenceable(8) %i.wj, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.wn = add nuw nsw i32 %.1269, 1               ; 2 uses
  %i.wo = load ptr, ptr %2, align 8, !tbaa !9
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 208
  %i.wq = load ptr, ptr %i.wp, align 8
  %i.wr = call noundef i32 %i.wq(ptr noundef nonnull align 8 dereferenceable(80) %2)
  %i.ws = icmp slt i32 %i.wn, %i.wr
  br i1 %i.ws, label %bb.t, label %.loopexit, !llvm.loop !362

.loopexit:                                        ; preds = %bb.s, %bb.t, %.preheader252, %.preheader, %bb.o
  %i.wt = load i32, ptr %i.u, align 8, !tbaa !64  ; 2 uses
  %i.wu = add i32 %i.wt, -21
  %i.wv = icmp ult i32 %i.wu, 9
  br i1 %i.wv, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %18, align 16, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store <4 x float> <float f0xDD5E0B6B, float f0xDD5E0B6B, float f0xDD5E0B6B, float 0.000000e+00>, ptr %19, align 16, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.ww = load ptr, ptr %0, align 8, !tbaa !9
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 40
  %i.wy = load ptr, ptr %i.wx, align 8
  %i.wz = call noundef ptr %i.wy(ptr noundef nonnull align 8 dereferenceable(121) %0)
  %i.xa = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17DebugDrawcallback, i64 16), ptr %20, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DebugDrawcallback, i64 64), ptr %i.xa, align 8, !tbaa !9
  %i.xb = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.wz, ptr %i.xb, align 8, !tbaa !363
  %i.xc = getelementptr inbounds nuw i8, ptr %20, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xc, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !61
  %i.xd = getelementptr inbounds nuw i8, ptr %20, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.xd, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !61
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xf = getelementptr inbounds nuw i8, ptr %20, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xf, ptr noundef nonnull align 4 dereferenceable(16) %i.xe, i64 16, i1 false), !tbaa.struct !61
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.xh = getelementptr inbounds nuw i8, ptr %20, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xh, ptr noundef nonnull align 4 dereferenceable(16) %i.xg, i64 16, i1 false), !tbaa.struct !61
  %i.xi = getelementptr inbounds nuw i8, ptr %20, i64 88
  %i.xj = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xi, ptr noundef nonnull align 4 dereferenceable(16) %i.xj, i64 16, i1 false), !tbaa.struct !61
  %i.xk = load ptr, ptr %2, align 8, !tbaa !9
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 128
  %i.xm = load ptr, ptr %i.xl, align 8
  invoke void %i.xm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %20, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %18)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.xa) #21
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %.pr = load i32, ptr %i.u, align 8, !tbaa !64
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.xn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.xa) #21
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ab

bb.x:                                             ; preds = %bb.v, %.loopexit
  %i.xo = phi i32 [ %.pr, %bb.v ], [ %i.wt, %.loopexit ]
  %i.xp = icmp eq i32 %i.xo, 3
  br i1 %i.xp, label %bb.y, label %.loopexit254

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %21, align 16, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  store <4 x float> <float f0xDD5E0B6B, float f0xDD5E0B6B, float f0xDD5E0B6B, float 0.000000e+00>, ptr %22, align 16, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.xq = load ptr, ptr %0, align 8, !tbaa !9
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 40
  %i.xs = load ptr, ptr %i.xr, align 8
  %i.xt = call noundef ptr %i.xs(ptr noundef nonnull align 8 dereferenceable(121) %0)
  %i.xu = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17DebugDrawcallback, i64 16), ptr %23, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DebugDrawcallback, i64 64), ptr %i.xu, align 8, !tbaa !9
  %i.xv = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %i.xt, ptr %i.xv, align 8, !tbaa !363
  %i.xw = getelementptr inbounds nuw i8, ptr %23, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xw, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !61
  %i.xx = getelementptr inbounds nuw i8, ptr %23, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.xx, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !61
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xz = getelementptr inbounds nuw i8, ptr %23, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xz, ptr noundef nonnull align 4 dereferenceable(16) %i.xy, i64 16, i1 false), !tbaa.struct !61
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.yb = getelementptr inbounds nuw i8, ptr %23, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yb, ptr noundef nonnull align 4 dereferenceable(16) %i.ya, i64 16, i1 false), !tbaa.struct !61
  %i.yc = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yc, ptr noundef nonnull align 4 dereferenceable(16) %i.yd, i64 16, i1 false), !tbaa.struct !61
  %i.ye = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !366 ; 2 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !9
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 16
  %i.yi = load ptr, ptr %i.yh, align 8
  invoke void %i.yi(ptr noundef nonnull align 8 dereferenceable(24) %i.yf, ptr noundef nonnull %i.xu, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %21)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.xu) #21
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %.loopexit254

bb.aa:                                            ; preds = %bb.y
  %i.yj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.xu) #21
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.ab

.loopexit254:                                     ; preds = %bb.j, %bb.f, %bb.i, %bb.e, %bb.g, %bb.h, %bb.k, %bb.l, %bb.m, %bb.n, %bb.z, %bb.x
  ret void

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %.pn = phi { ptr, i32 } [ %i.yj, %bb.aa ], [ %i.xn, %bb.w ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17DebugDrawcallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #21
  tail call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btCollisionWorld14debugDrawWorldEv(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"struct.btIDebugDraw::DefaultColors", align 4 ; 10 uses
  %2 = alloca %class.btVector3, align 16          ; 10 uses
  %3 = alloca %class.btVector3, align 8           ; 11 uses
  %4 = alloca %class.btVector3, align 8           ; 11 uses
  %5 = alloca %class.btVector3, align 4           ; 4 uses
  %6 = alloca %class.btVector3, align 8           ; 7 uses
  %7 = alloca %class.btVector3, align 8           ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(121) %0)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.l = load ptr, ptr %0, align 8, !tbaa !9
end_hunk_0
