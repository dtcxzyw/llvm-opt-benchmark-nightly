Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Tool_NavMeshTester?download=true
inline.NumInlined: 145
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN17NavMeshTesterTool6recalcEv:bb.a
  br i1 %.not79, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !31 ; 2 uses
  %.not80 = icmp eq i32 %i.jf, 0
  br i1 %.not80, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jg = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !58
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 32120 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 32136
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 2344 ; 3 uses
  %i.jo = tail call noundef i32 @_ZNK14dtNavMeshQuery8findPathEjjPKfS1_PK13dtQueryFilterPjPii(ptr noundef nonnull align 8 dereferenceable(104) %i.ji, i32 noundef %i.jd, i32 noundef %i.jf, ptr noundef nonnull %i.jj, ptr noundef nonnull %i.jk, ptr noundef nonnull %i.jl, ptr noundef nonnull %i.jm, ptr noundef nonnull %i.jn, i32 noundef 256) #13 ; 0 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 6700 ; 2 uses
  store i32 0, ptr %i.jp, align 4, !tbaa !33
  %i.jq = load i32, ptr %i.jn, align 8, !tbaa !32 ; 3 uses
  %.not81 = icmp eq i32 %i.jq, 0
  br i1 %.not81, label %bb.bv, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #13
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr [4 x i8], ptr %i.jm, i64 %i.jr
  %i.jt = getelementptr i8, ptr %i.js, i64 -4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !63 ; 2 uses
  %i.jv = load i32, ptr %i.je, align 4, !tbaa !31
  %.not82 = icmp eq i32 %i.ju, %i.jv
  br i1 %.not82, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jw = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !58
  %i.jz = call noundef i32 @_ZNK14dtNavMeshQuery18closestPointOnPolyEjPKfPfPb(ptr noundef nonnull align 8 dereferenceable(104) %i.jy, i32 noundef %i.ju, ptr noundef nonnull %i.p, ptr noundef nonnull %i.p, ptr noundef null) #13 ; 0 uses
  %.pre146 = load i32, ptr %i.jn, align 8, !tbaa !32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ka = phi i32 [ %.pre146, %bb.an ], [ %i.jq, %bb.am ]
  %i.kb = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !58
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 2348
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 5420
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 5676
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !29
  %i.kj = call noundef i32 @_ZNK14dtNavMeshQuery16findStraightPathEPKfS1_PKjiPfPhPjPiii(ptr noundef nonnull align 8 dereferenceable(104) %i.kd, ptr noundef nonnull %i.jj, ptr noundef nonnull %i.p, ptr noundef nonnull %i.jm, i32 noundef %i.ka, ptr noundef nonnull %i.ke, ptr noundef nonnull %i.kf, ptr noundef nonnull %i.kg, ptr noundef nonnull %i.jp, i32 noundef 256, i32 noundef %i.ki) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #13
  br label %bb.bv

bb.ap:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 2344
  store i32 0, ptr %i.kk, align 8, !tbaa !32
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 6700
  store i32 0, ptr %i.kl, align 4, !tbaa !33
  br label %bb.bv

bb.aq:                                            ; preds = %bb.h
  %i.km = load i8, ptr %i.w, align 1, !tbaa !38, !range !61, !noundef !62
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.ko = load i8, ptr %i.ah, align 4, !tbaa !39, !range !61, !noundef !62
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !30 ; 2 uses
  %.not77 = icmp eq i32 %i.kr, 0
  br i1 %.not77, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !31 ; 2 uses
  %.not78 = icmp eq i32 %i.kt, 0
  br i1 %.not78, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 2344
  store i32 0, ptr %i.ku, align 8, !tbaa !32
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 6700
  store i32 0, ptr %i.kv, align 4, !tbaa !33
  %i.kw = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !58
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 32120
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 32136
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lc = tail call noundef i32 @_ZN14dtNavMeshQuery18initSlicedFindPathEjjPKfS1_PK13dtQueryFilterj(ptr noundef nonnull align 8 dereferenceable(104) %i.ky, i32 noundef %i.kr, i32 noundef %i.kt, ptr noundef nonnull %i.kz, ptr noundef nonnull %i.la, ptr noundef nonnull %i.lb, i32 noundef 2) #13
  store i32 %i.lc, ptr %i.at, align 4, !tbaa !27
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
  %1 = load <2 x float>, ptr %i.ms, align 4
  %.pre145 = load float, ptr %i.mt, align 4, !tbaa !34
  %i.nh = insertelement <2 x float> %1, float %i.ng, i64 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ni = phi float [ %.pre145, %bb.bd ], [ %.sink142, %bb.bc ]
  %i.nj = phi <2 x float> [ %i.nh, %bb.bd ], [ %i.mr, %bb.bc ]
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 2360
  store <2 x float> %i.nj, ptr %i.nk, align 8, !tbaa !34
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 2368
  store float %i.ni, ptr %i.nl, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  br label %bb.bv

bb.bf:                                            ; preds = %bb.h
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 32176 ; 2 uses
  store float 0.000000e+00, ptr %i.nm, align 8, !tbaa !68
  %i.nn = load i8, ptr %i.w, align 1, !tbaa !38, !range !61, !noundef !62
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.bg, label %bb.bv

bb.bg:                                            ; preds = %bb.bf
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !30 ; 2 uses
  %.not75 = icmp eq i32 %i.nq, 0
  br i1 %.not75, label %bb.bv, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nr = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !58
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 32120
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 32148
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 32160
  %i.ny = tail call noundef i32 @_ZNK14dtNavMeshQuery18findDistanceToWallEjPKffPK13dtQueryFilterPfS5_S5_(ptr noundef nonnull align 8 dereferenceable(104) %i.nt, i32 noundef %i.nq, ptr noundef nonnull %i.nu, float noundef 1.000000e+02, ptr noundef nonnull %i.nv, ptr noundef nonnull %i.nm, ptr noundef nonnull %i.nw, ptr noundef nonnull %i.nx) #13 ; 0 uses
  br label %bb.bv

bb.bi:                                            ; preds = %bb.h
  %i.nz = load i8, ptr %i.w, align 1, !tbaa !38, !range !61, !noundef !62
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.bj, label %bb.bv

bb.bj:                                            ; preds = %bb.bi
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !30 ; 2 uses
  %.not74 = icmp eq i32 %i.oc, 0
  br i1 %.not74, label %bb.bv, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.od = load i8, ptr %i.ah, align 4, !tbaa !39, !range !61, !noundef !62
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.bl, label %bb.bv

bb.bl:                                            ; preds = %bb.bk
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 32136
  %i.og = load float, ptr %i.of, align 8, !tbaa !34
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 32120 ; 2 uses
  %i.oi = load float, ptr %i.oh, align 8, !tbaa !34
  %i.oj = fsub float %i.og, %i.oi                 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 32144
  %i.ol = load float, ptr %i.ok, align 8, !tbaa !34
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 32128
  %i.on = load float, ptr %i.om, align 8, !tbaa !34
  %i.oo = fsub float %i.ol, %i.on                 ; 2 uses
  %i.op = fmul float %i.oo, %i.oo
  %i.oq = tail call float @llvm.fmuladd.f32(float %i.oj, float %i.oj, float %i.op)
  %sqrt121 = tail call float @llvm.sqrt.f32(float %i.oq)
  %i.or = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !58
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.oy = tail call noundef i32 @_ZNK14dtNavMeshQuery21findPolysAroundCircleEjPKffPK13dtQueryFilterPjS5_PfPii(ptr noundef nonnull align 8 dereferenceable(104) %i.ot, i32 noundef %i.oc, ptr noundef nonnull %i.oh, float noundef %sqrt121, ptr noundef nonnull %i.ou, ptr noundef nonnull %i.ov, ptr noundef nonnull %i.ow, ptr noundef null, ptr noundef nonnull %i.ox, i32 noundef 256) #13 ; 0 uses
  br label %bb.bv

bb.bm:                                            ; preds = %bb.h
  %i.oz = load i8, ptr %i.w, align 1, !tbaa !38, !range !61, !noundef !62
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %bb.bn, label %bb.bv

bb.bn:                                            ; preds = %bb.bm
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !30 ; 2 uses
  %.not72 = icmp eq i32 %i.pc, 0
  br i1 %.not72, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pd = load i8, ptr %i.ah, align 4, !tbaa !39, !range !61, !noundef !62
  %i.pe = trunc nuw i8 %i.pd to i1
  br i1 %i.pe, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 32136
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 32144
  %i.ph = load float, ptr %i.pg, align 8, !tbaa !34 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 32120
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 32128
  %i.pk = load float, ptr %i.pj, align 8, !tbaa !34 ; 2 uses
  %i.pl = load float, ptr %i.pf, align 8, !tbaa !34 ; 2 uses
  %i.pm = load float, ptr %i.pi, align 8, !tbaa !34 ; 2 uses
  %i.pn = insertelement <2 x float> poison, float %i.pl, i64 0
  %i.po = insertelement <2 x float> %i.pn, float %i.ph, i64 1 ; 2 uses
  %i.pp = insertelement <2 x float> poison, float %i.pm, i64 0
  %i.pq = insertelement <2 x float> %i.pp, float %i.pk, i64 1 ; 2 uses
  %i.pr = fsub <2 x float> %i.po, %i.pq
  %i.ps = fmul <2 x float> %i.pr, <float -2.500000e-01, float 2.500000e-01> ; 4 uses
  %i.pt = load ptr, ptr %i.s, align 8, !tbaa !26  ; 3 uses
  %.not73 = icmp eq ptr %i.pt, null
  br i1 %.not73, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 60
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !69
  %i.pw = fmul float %i.pv, 5.000000e-01
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.px = phi float [ %i.pw, %bb.bq ], [ 0.000000e+00, %bb.bp ] ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 31296 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 32124
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !34
  %i.qb = fneg <2 x float> %i.ps
  %i.qc = fadd float %i.px, %i.qa                 ; 2 uses
  %i.qd = shufflevector <2 x float> %i.qb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.qe = shufflevector <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x float> %i.qd, <4 x i32> <i32 poison, i32 1, i32 poison, i32 5>
  %i.qf = shufflevector <2 x float> %i.ps, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qg = shufflevector <4 x float> %i.qe, <4 x float> %i.qf, <4 x i32> <i32 5, i32 1, i32 4, i32 3>
  %i.qh = insertelement <4 x float> poison, float %i.pm, i64 0
  %i.qi = insertelement <4 x float> %i.qh, float %i.qc, i64 1
  %i.qj = insertelement <4 x float> %i.qi, float %i.pk, i64 2
  %i.qk = shufflevector <4 x float> %i.qj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ql = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qg, <4 x float> <float 1.200000e+00, float 0.000000e+00, float 1.200000e+00, float 1.300000e+00>, <4 x float> %i.qk)
  store <4 x float> %i.ql, ptr %i.py, align 8, !tbaa !34
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 31312
  store float %i.qc, ptr %i.qm, align 8, !tbaa !34
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 31316
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 32140
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !34
  %i.qq = fadd float %i.px, %i.qp                 ; 2 uses
  %i.qr = shufflevector <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x float> %i.qd, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.qs = shufflevector <4 x float> %i.qd, <4 x float> %i.qr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qt = shufflevector <2 x float> %i.pq, <2 x float> %i.po, <4 x i32> <i32 1, i32 2, i32 poison, i32 3>
  %i.qu = insertelement <4 x float> %i.qt, float %i.qq, i64 2
  %i.qv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qs, <4 x float> <float 1.300000e+00, float 8.000000e-01, float 0.000000e+00, float 8.000000e-01>, <4 x float> %i.qu)
  store <4 x float> %i.qv, ptr %i.qn, align 4, !tbaa !34
  %i.qw = extractelement <2 x float> %i.ps, i64 1
  %i.qx = fadd float %i.pl, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 31332
  store float %i.qx, ptr %i.qy, align 4, !tbaa !34
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 31336
  store float %i.qq, ptr %i.qz, align 8, !tbaa !34
  %i.ra = extractelement <2 x float> %i.ps, i64 0
  %i.rb = fadd float %i.ph, %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 31340
  store float %i.rb, ptr %i.rc, align 4, !tbaa !34
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !58
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.rj = tail call noundef i32 @_ZNK14dtNavMeshQuery20findPolysAroundShapeEjPKfiPK13dtQueryFilterPjS5_PfPii(ptr noundef nonnull align 8 dereferenceable(104) %i.re, i32 noundef %i.pc, ptr noundef nonnull %i.py, i32 noundef 4, ptr noundef nonnull %i.rf, ptr noundef nonnull %i.rg, ptr noundef nonnull %i.rh, ptr noundef null, ptr noundef nonnull %i.ri, i32 noundef 256) #13 ; 0 uses
  br label %bb.bv

bb.bs:                                            ; preds = %bb.h
  %i.rk = load i8, ptr %i.w, align 1, !tbaa !38, !range !61, !noundef !62
  %i.rl = trunc nuw i8 %i.rk to i1
  br i1 %i.rl, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !30 ; 2 uses
  %.not71 = icmp eq i32 %i.rn, 0
  br i1 %.not71, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ro = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !58
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 32120
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 32180
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !70
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.ry = tail call noundef i32 @_ZNK14dtNavMeshQuery22findLocalNeighbourhoodEjPKffPK13dtQueryFilterPjS5_Pii(ptr noundef nonnull align 8 dereferenceable(104) %i.rq, i32 noundef %i.rn, ptr noundef nonnull %i.rr, float noundef %i.rt, ptr noundef nonnull %i.ru, ptr noundef nonnull %i.rv, ptr noundef nonnull %i.rw, ptr noundef nonnull %i.rx, i32 noundef 256) #13 ; 0 uses
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
end_hunk_0
