Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Tool_NavMeshTester?download=true
inline.NumInlined: 145
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN17NavMeshTesterTool6recalcEv:bb.a
  br label %bb.bv

bb.av:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 2344
  store i32 0, ptr %i.ld, align 8, !tbaa !32
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 6700
  store i32 0, ptr %i.le, align 4, !tbaa !33
  br label %bb.bv

bb.aw:                                            ; preds = %bb.h
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 6700 ; 2 uses
  store i32 0, ptr %i.lf, align 4, !tbaa !33
  %i.lg = load i8, ptr %i.w, align 1, !tbaa !38, !range !61, !noundef !62
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %bb.ax, label %bb.bv

bb.ax:                                            ; preds = %bb.aw
  %i.li = load i8, ptr %i.ah, align 4, !tbaa !39, !range !61, !noundef !62
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %bb.ay, label %bb.bv

bb.ay:                                            ; preds = %bb.ax
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !30 ; 2 uses
  %.not76 = icmp eq i32 %i.ll, 0
  br i1 %.not76, label %bb.bv, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #13
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !34
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 2344 ; 3 uses
  store i32 0, ptr %i.lm, align 8, !tbaa !32
  store i32 2, ptr %i.lf, align 4, !tbaa !33
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 32120 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 2348
  %i.lp = load <2 x float>, ptr %i.ln, align 8, !tbaa !34
  store <2 x float> %i.lp, ptr %i.lo, align 4, !tbaa !34
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 32128 ; 2 uses
  %i.lr = load float, ptr %i.lq, align 8, !tbaa !34
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 2356
  store float %i.lr, ptr %i.ls, align 4, !tbaa !34
  %i.lt = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !58
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 32136 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 32160
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ma = call noundef i32 @_ZNK14dtNavMeshQuery7raycastEjPKfS1_PK13dtQueryFilterPfS5_PjPii(ptr noundef nonnull align 8 dereferenceable(104) %i.lv, i32 noundef %i.ll, ptr noundef nonnull %i.ln, ptr noundef nonnull %i.lw, ptr noundef nonnull %i.lx, ptr noundef nonnull %i.q, ptr noundef nonnull %i.ly, ptr noundef nonnull %i.lz, ptr noundef nonnull %i.lm, i32 noundef 256) #13 ; 0 uses
  %i.mb = load float, ptr %i.q, align 4, !tbaa !34 ; 3 uses
  %i.mc = fcmp ogt float %i.mb, 1.000000e+00
  br i1 %i.mc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.md = load <2 x float>, ptr %i.lw, align 8, !tbaa !34
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 32144
  %i.mf = load float, ptr %i.me, align 8, !tbaa !34
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.mg = load <2 x float>, ptr %i.ln, align 8, !tbaa !34 ; 2 uses
  %i.mh = load <2 x float>, ptr %i.lw, align 8, !tbaa !34
  %i.mi = fsub <2 x float> %i.mh, %i.mg
  %i.mj = insertelement <2 x float> poison, float %i.mb, i64 0
  %i.mk = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ml = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mi, <2 x float> %i.mk, <2 x float> %i.mg)
  %i.mm = load float, ptr %i.lq, align 8, !tbaa !34 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 32144
  %i.mo = load float, ptr %i.mn, align 8, !tbaa !34
  %i.mp = fsub float %i.mo, %i.mm
  %i.mq = call float @llvm.fmuladd.f32(float %i.mp, float %i.mb, float %i.mm)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sink142 = phi float [ %i.mf, %bb.ba ], [ %i.mq, %bb.bb ] ; 2 uses
  %.sink = phi i8 [ 0, %bb.ba ], [ 1, %bb.bb ]
  %i.mr = phi <2 x float> [ %i.md, %bb.ba ], [ %i.ml, %bb.bb ] ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 32148 ; 3 uses
  store <2 x float> %i.mr, ptr %i.ms, align 4, !tbaa !34
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 32156 ; 2 uses
  store float %.sink142, ptr %i.mt, align 4, !tbaa !34
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 32172
  store i8 %.sink, ptr %i.mu, align 4, !tbaa !40
  %i.mv = load i32, ptr %i.lm, align 8, !tbaa !32 ; 2 uses
  %i.mw = icmp sgt i32 %i.mv, 0
  br i1 %i.mw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 32152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #13
  store float 0.000000e+00, ptr %i.r, align 4, !tbaa !34
  %i.my = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !58
  %i.nb = zext nneg i32 %i.mv to i64
  %i.nc = getelementptr [4 x i8], ptr %i.lz, i64 %i.nb
  %i.nd = getelementptr i8, ptr %i.nc, i64 -4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !63
  %i.nf = call noundef i32 @_ZNK14dtNavMeshQuery13getPolyHeightEjPKfPf(ptr noundef nonnull align 8 dereferenceable(104) %i.na, i32 noundef %i.ne, ptr noundef nonnull %i.ms, ptr noundef nonnull %i.r) #13 ; 0 uses
  %i.ng = load float, ptr %i.r, align 4, !tbaa !34 ; 2 uses
  store float %i.ng, ptr %i.mx, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #13
  %i.nh = load <2 x float>, ptr %i.ms, align 4
  %.pre145 = load float, ptr %i.mt, align 4, !tbaa !34
  %i.ni = insertelement <2 x float> %i.nh, float %i.ng, i64 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.nj = phi float [ %.pre145, %bb.bd ], [ %.sink142, %bb.bc ]
  %i.nk = phi <2 x float> [ %i.ni, %bb.bd ], [ %i.mr, %bb.bc ]
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 2360
  store <2 x float> %i.nk, ptr %i.nl, align 8, !tbaa !34
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 2368
  store float %i.nj, ptr %i.nm, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  br label %bb.bv

bb.bf:                                            ; preds = %bb.h
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 32176 ; 2 uses
  store float 0.000000e+00, ptr %i.nn, align 8, !tbaa !68
  %i.no = load i8, ptr %i.w, align 1, !tbaa !38, !range !61, !noundef !62
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.bg, label %bb.bv

bb.bg:                                            ; preds = %bb.bf
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !30 ; 2 uses
  %.not75 = icmp eq i32 %i.nr, 0
  br i1 %.not75, label %bb.bv, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ns = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !58
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 32120
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 32148
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 32160
  %i.nz = tail call noundef i32 @_ZNK14dtNavMeshQuery18findDistanceToWallEjPKffPK13dtQueryFilterPfS5_S5_(ptr noundef nonnull align 8 dereferenceable(104) %i.nu, i32 noundef %i.nr, ptr noundef nonnull %i.nv, float noundef 1.000000e+02, ptr noundef nonnull %i.nw, ptr noundef nonnull %i.nn, ptr noundef nonnull %i.nx, ptr noundef nonnull %i.ny) #13 ; 0 uses
  br label %bb.bv

bb.bi:                                            ; preds = %bb.h
  %i.oa = load i8, ptr %i.w, align 1, !tbaa !38, !range !61, !noundef !62
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.bj, label %bb.bv

bb.bj:                                            ; preds = %bb.bi
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !30 ; 2 uses
  %.not74 = icmp eq i32 %i.od, 0
  br i1 %.not74, label %bb.bv, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.oe = load i8, ptr %i.ah, align 4, !tbaa !39, !range !61, !noundef !62
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %bb.bl, label %bb.bv

bb.bl:                                            ; preds = %bb.bk
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 32136
  %i.oh = load float, ptr %i.og, align 8, !tbaa !34
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 32120 ; 2 uses
  %i.oj = load float, ptr %i.oi, align 8, !tbaa !34
  %i.ok = fsub float %i.oh, %i.oj                 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 32144
  %i.om = load float, ptr %i.ol, align 8, !tbaa !34
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 32128
  %i.oo = load float, ptr %i.on, align 8, !tbaa !34
  %i.op = fsub float %i.om, %i.oo                 ; 2 uses
  %i.oq = fmul float %i.op, %i.op
  %i.or = tail call float @llvm.fmuladd.f32(float %i.ok, float %i.ok, float %i.oq)
  %sqrt121 = tail call float @llvm.sqrt.f32(float %i.or)
  %i.os = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !58
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.oz = tail call noundef i32 @_ZNK14dtNavMeshQuery21findPolysAroundCircleEjPKffPK13dtQueryFilterPjS5_PfPii(ptr noundef nonnull align 8 dereferenceable(104) %i.ou, i32 noundef %i.od, ptr noundef nonnull %i.oi, float noundef %sqrt121, ptr noundef nonnull %i.ov, ptr noundef nonnull %i.ow, ptr noundef nonnull %i.ox, ptr noundef null, ptr noundef nonnull %i.oy, i32 noundef 256) #13 ; 0 uses
  br label %bb.bv

bb.bm:                                            ; preds = %bb.h
  %i.pa = load i8, ptr %i.w, align 1, !tbaa !38, !range !61, !noundef !62
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.bn, label %bb.bv

bb.bn:                                            ; preds = %bb.bm
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !30 ; 2 uses
  %.not72 = icmp eq i32 %i.pd, 0
  br i1 %.not72, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pe = load i8, ptr %i.ah, align 4, !tbaa !39, !range !61, !noundef !62
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 32136
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 32144
  %i.pi = load float, ptr %i.ph, align 8, !tbaa !34 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 32120
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 32128
  %i.pl = load float, ptr %i.pk, align 8, !tbaa !34 ; 3 uses
  %1 = fsub float %i.pi, %i.pl
  %2 = fmul float %1, 2.500000e-01                ; 3 uses
  %3 = load float, ptr %i.pg, align 8, !tbaa !34  ; 3 uses
  %4 = load float, ptr %i.pj, align 8, !tbaa !34  ; 3 uses
  %5 = fsub float %3, %4
  %6 = fmul float %5, -2.500000e-01               ; 3 uses
  %i.pm = load ptr, ptr %i.s, align 8, !tbaa !26  ; 3 uses
  %.not73 = icmp eq ptr %i.pm, null
  br i1 %.not73, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 60
  %i.po = load float, ptr %i.pn, align 4, !tbaa !69
  %i.pp = fmul float %i.po, 5.000000e-01
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.pq = phi float [ %i.pp, %bb.bq ], [ 0.000000e+00, %bb.bp ] ; 2 uses
  %7 = tail call float @llvm.fmuladd.f32(float %2, float 1.200000e+00, float %4)
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 31296 ; 2 uses
  store float %7, ptr %i.pr, align 8, !tbaa !34
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 32124
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !34
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 31300
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 31304
  %10 = fneg float %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 31308
  %12 = fneg float %6                             ; 2 uses
  %i.pu = fadd float %i.pq, %i.pt                 ; 2 uses
  store float %i.pu, ptr %8, align 4, !tbaa !34
  %13 = insertelement <4 x float> poison, float %10, i64 0
  %14 = insertelement <4 x float> %13, float %12, i64 2
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 2, i32 0>
  %i.pv = insertelement <4 x float> poison, float %4, i64 0
  %i.pw = insertelement <4 x float> %i.pv, float %i.pl, i64 2
  %i.px = insertelement <4 x float> %i.pw, float %3, i64 3
  %16 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> <float 1.300000e+00, float poison, float 1.300000e+00, float 8.000000e-01>, <4 x float> %i.px)
  %17 = insertelement <4 x float> %16, float %i.pu, i64 1
  store <4 x float> %17, ptr %11, align 4, !tbaa !34
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 32140
  %18 = load float, ptr %i.py, align 4, !tbaa !34
  %19 = fadd float %i.pq, %18                     ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 31324
  store float %19, ptr %i.pz, align 4, !tbaa !34
  %20 = insertelement <2 x float> poison, float %6, i64 0
  %21 = insertelement <2 x float> %20, float %12, i64 1
  %22 = insertelement <2 x float> poison, float %i.pl, i64 0
  %23 = insertelement <2 x float> %22, float %i.pi, i64 1
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> <float 1.200000e+00, float 8.000000e-01>, <2 x float> %23) ; 2 uses
  %25 = extractelement <2 x float> %24, i64 0
  store float %25, ptr %9, align 8, !tbaa !34
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 31328
  %i.qa = extractelement <2 x float> %24, i64 1
  store float %i.qa, ptr %26, align 8, !tbaa !34
  %i.qb = fadd float %3, %2
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 31332
  store float %i.qb, ptr %i.qc, align 4, !tbaa !34
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 31336
  store float %19, ptr %i.qd, align 8, !tbaa !34
  %i.qe = fadd float %i.pi, %6
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 31340
  store float %i.qe, ptr %i.qf, align 4, !tbaa !34
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !58
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.qm = tail call noundef i32 @_ZNK14dtNavMeshQuery20findPolysAroundShapeEjPKfiPK13dtQueryFilterPjS5_PfPii(ptr noundef nonnull align 8 dereferenceable(104) %i.qh, i32 noundef %i.pd, ptr noundef nonnull %i.pr, i32 noundef 4, ptr noundef nonnull %i.qi, ptr noundef nonnull %i.qj, ptr noundef nonnull %i.qk, ptr noundef null, ptr noundef nonnull %i.ql, i32 noundef 256) #13 ; 0 uses
  br label %bb.bv

bb.bs:                                            ; preds = %bb.h
  %i.qn = load i8, ptr %i.w, align 1, !tbaa !38, !range !61, !noundef !62
  %i.qo = trunc nuw i8 %i.qn to i1
  br i1 %i.qo, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !30 ; 2 uses
  %.not71 = icmp eq i32 %i.qq, 0
  br i1 %.not71, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qr = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !58
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 32120
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 32180
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !70
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.rb = tail call noundef i32 @_ZNK14dtNavMeshQuery22findLocalNeighbourhoodEjPKffPK13dtQueryFilterPjS5_Pii(ptr noundef nonnull align 8 dereferenceable(104) %i.qt, i32 noundef %i.qq, ptr noundef nonnull %i.qu, float noundef %i.qw, ptr noundef nonnull %i.qx, ptr noundef nonnull %i.qy, ptr noundef nonnull %i.qz, ptr noundef nonnull %i.ra, i32 noundef 256) #13 ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.h, %bb.al, %bb.ao, %bb.ap, %bb.be, %bb.ay, %bb.ax, %bb.aw, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bu, %bb.bt, %bb.bs, %bb.bm, %bb.bn, %bb.bo, %bb.br, %bb.bf, %bb.bg, %bb.bh, %bb.au, %bb.av, %bb.ag, %.critedge, %bb.m, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN17NavMeshTesterTool10drawMenuUIEv(ptr noundef nonnull align 8 dereferenceable(33392) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %4 = alloca %struct.ImVec2, align 8             ; 5 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 17 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !28
  %i.o = icmp eq i8 %i.n, 0
  %i.p = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext %i.o) #13
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.m, align 8, !tbaa !28
  tail call void @_ZN17NavMeshTesterTool6recalcEv(ptr noundef nonnull align 8 dereferenceable(33392) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = load i8, ptr %i.m, align 8, !tbaa !28
  %i.r = icmp eq i8 %i.q, 1
  %i.s = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.1, i1 noundef zeroext %i.r) #13
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.m, align 8, !tbaa !28
  tail call void @_ZN17NavMeshTesterTool6recalcEv(ptr noundef nonnull align 8 dereferenceable(33392) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = load i8, ptr %i.m, align 8, !tbaa !28    ; 2 uses
  %i.u = icmp eq i8 %i.t, 1
  br i1 %i.u, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00) #13
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2) #13
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 6 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29
  %i.x = icmp eq i32 %i.w, 0
  %i.y = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.3, i1 noundef zeroext %i.x) #13
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.v, align 4, !tbaa !29
  tail call void @_ZN17NavMeshTesterTool6recalcEv(ptr noundef nonnull align 8 dereferenceable(33392) %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = load i32, ptr %i.v, align 4, !tbaa !29
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.4, i1 noundef zeroext %i.aa) #13
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.v, align 4, !tbaa !29
  tail call void @_ZN17NavMeshTesterTool6recalcEv(ptr noundef nonnull align 8 dereferenceable(33392) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = load i32, ptr %i.v, align 4, !tbaa !29
  %i.ad = icmp eq i32 %i.ac, 2
  %i.ae = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.5, i1 noundef zeroext %i.ad) #13
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %i.v, align 4, !tbaa !29
  tail call void @_ZN17NavMeshTesterTool6recalcEv(ptr noundef nonnull align 8 dereferenceable(33392) %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_ZN5ImGui8UnindentEf(float noundef 0.000000e+00) #13
  %.pre = load i8, ptr %i.m, align 8, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %i.af = phi i8 [ %.pre, %bb.l ], [ %i.t, %bb.e ]
  %i.ag = icmp eq i8 %i.af, 2
  %i.ah = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.6, i1 noundef zeroext %i.ag) #13
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 2, ptr %i.m, align 8, !tbaa !28
  tail call void @_ZN17NavMeshTesterTool6recalcEv(ptr noundef nonnull align 8 dereferenceable(33392) %0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = load i8, ptr %i.m, align 8, !tbaa !28
  %i.aj = icmp eq i8 %i.ai, 4
  %i.ak = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.7, i1 noundef zeroext %i.aj) #13
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 4, ptr %i.m, align 8, !tbaa !28
  tail call void @_ZN17NavMeshTesterTool6recalcEv(ptr noundef nonnull align 8 dereferenceable(33392) %0)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.al = load i8, ptr %i.m, align 8, !tbaa !28
  %i.am = icmp eq i8 %i.al, 3
  %i.an = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.8, i1 noundef zeroext %i.am) #13
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i8 3, ptr %i.m, align 8, !tbaa !28
  tail call void @_ZN17NavMeshTesterTool6recalcEv(ptr noundef nonnull align 8 dereferenceable(33392) %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ao = load i8, ptr %i.m, align 8, !tbaa !28
  %i.ap = icmp eq i8 %i.ao, 5
  %i.aq = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.9, i1 noundef zeroext %i.ap) #13
  br i1 %i.aq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 5, ptr %i.m, align 8, !tbaa !28
  tail call void @_ZN17NavMeshTesterTool6recalcEv(ptr noundef nonnull align 8 dereferenceable(33392) %0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ar = load i8, ptr %i.m, align 8, !tbaa !28
  %i.as = icmp eq i8 %i.ar, 6
  %i.at = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.10, i1 noundef zeroext %i.as) #13
  br i1 %i.at, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 6, ptr %i.m, align 8, !tbaa !28
  tail call void @_ZN17NavMeshTesterTool6recalcEv(ptr noundef nonnull align 8 dereferenceable(33392) %0)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.au = load i8, ptr %i.m, align 8, !tbaa !28
  %i.av = icmp eq i8 %i.au, 7
  %i.aw = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.11, i1 noundef zeroext %i.av) #13
  br i1 %i.aw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 7, ptr %i.m, align 8, !tbaa !28
  tail call void @_ZN17NavMeshTesterTool6recalcEv(ptr noundef nonnull align 8 dereferenceable(33392) %0)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !34
  %i.ax = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.13, ptr noundef nonnull align 4 dereferenceable(8) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
end_hunk_0
