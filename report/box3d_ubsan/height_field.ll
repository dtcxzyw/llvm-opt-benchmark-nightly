Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/height_field?download=true
inline.NumInlined: 198
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3CreateHeightField:bb.a
  %i.jt = extractvalue { i32, i1 } %i.jr, 1, !nosanitize !9
  br i1 %i.jt, label %.split4003.us, label %bb.av, !prof !20, !nosanitize !9

bb.av:                                            ; preds = %bb.au
  br i1 %i.hv, label %.split4009.us, label %bb.aw, !prof !20, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  %i.ju = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.hu, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.jv = extractvalue { i32, i1 } %i.ju, 0, !nosanitize !9 ; 4 uses
  %i.jw = extractvalue { i32, i1 } %i.ju, 1, !nosanitize !9
  br i1 %i.jw, label %.split4012.us, label %bb.ax, !prof !20, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  %i.jx = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.jv, i32 1), !nosanitize !9 ; 2 uses
  %i.jy = extractvalue { i32, i1 } %i.jx, 0, !nosanitize !9 ; 2 uses
  %i.jz = extractvalue { i32, i1 } %i.jx, 1, !nosanitize !9
  br i1 %i.jz, label %.split4016.us, label %bb.ay, !prof !20, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  %i.ka = sext i32 %i.jp to i64                   ; 2 uses
  %i.kb = getelementptr inbounds [4 x i8], ptr %.fr7125, i64 %i.ka ; 3 uses
  %i.kc = shl nsw i64 %i.ka, 2
  %i.kd = add i64 %i.kc, %i.ha, !nosanitize !9    ; 4 uses
  %i.ke = icmp eq i64 %i.kd, 0
  %i.kf = xor i1 %i.hb, %i.ke
  %i.kg = icmp uge i64 %i.kd, %i.ha, !nosanitize !9
  %i.kh = icmp slt i32 %i.jp, 0
  %i.ki = xor i1 %i.kh, %i.kg
  %i.kj = and i1 %i.kf, %i.ki, !nosanitize !9
  br i1 %i.kj, label %bb.az, label %.split4019.us, !prof !10, !nosanitize !9

bb.az:                                            ; preds = %bb.ay
  %i.kk = ptrtoint ptr %i.kb to i64, !nosanitize !9 ; 2 uses
  %i.kl = and i64 %i.kk, 3, !nosanitize !9
  %i.km = icmp eq i64 %i.kl, 0, !nosanitize !9
  %i.kn = and i1 %i.hb, %i.km
  br i1 %i.kn, label %bb.ba, label %.split4023.us, !prof !10, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  %i.ko = load float, ptr %i.kb, align 4, !tbaa !25
  %i.kp = sext i32 %i.js to i64                   ; 2 uses
  %i.kq = getelementptr inbounds [4 x i8], ptr %.fr7125, i64 %i.kp ; 3 uses
  %i.kr = shl nsw i64 %i.kp, 2
  %i.ks = add i64 %i.kr, %i.ha, !nosanitize !9    ; 3 uses
  %i.kt = icmp ne i64 %i.ks, 0
  %i.ku = icmp uge i64 %i.ks, %i.ha, !nosanitize !9
  %i.kv = icmp slt i32 %i.js, 0
  %i.kw = xor i1 %i.kv, %i.ku
  %i.kx = and i1 %i.kt, %i.kw, !nosanitize !9
  br i1 %i.kx, label %bb.bb, label %.split4026.us, !prof !10, !nosanitize !9

bb.bb:                                            ; preds = %bb.ba
  %i.ky = ptrtoint ptr %i.kq to i64, !nosanitize !9 ; 2 uses
  %i.kz = and i64 %i.ky, 3, !nosanitize !9
  %i.la = icmp eq i64 %i.kz, 0, !nosanitize !9
  br i1 %i.la, label %bb.bc, label %.split4030.us, !prof !10, !nosanitize !9

bb.bc:                                            ; preds = %bb.bb
  %i.lb = load float, ptr %i.kq, align 4, !tbaa !25
  %i.lc = sext i32 %i.jv to i64                   ; 2 uses
  %i.ld = getelementptr inbounds [4 x i8], ptr %.fr7125, i64 %i.lc ; 3 uses
  %i.le = shl nsw i64 %i.lc, 2
  %i.lf = add i64 %i.le, %i.ha, !nosanitize !9    ; 3 uses
  %i.lg = icmp ne i64 %i.lf, 0
  %i.lh = icmp uge i64 %i.lf, %i.ha, !nosanitize !9
  %i.li = icmp slt i32 %i.jv, 0
  %i.lj = xor i1 %i.li, %i.lh
  %i.lk = and i1 %i.lg, %i.lj, !nosanitize !9
  br i1 %i.lk, label %bb.bd, label %.split4033.us, !prof !10, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  %i.ll = ptrtoint ptr %i.ld to i64, !nosanitize !9 ; 2 uses
  %i.lm = and i64 %i.ll, 3, !nosanitize !9
  %i.ln = icmp eq i64 %i.lm, 0, !nosanitize !9
  br i1 %i.ln, label %bb.be, label %.split4037.us, !prof !10, !nosanitize !9

bb.be:                                            ; preds = %bb.bd
  %i.lo = load float, ptr %i.ld, align 4, !tbaa !25
  %i.lp = sext i32 %i.jy to i64                   ; 2 uses
  %i.lq = getelementptr inbounds [4 x i8], ptr %.fr7125, i64 %i.lp ; 3 uses
  %i.lr = shl nsw i64 %i.lp, 2
  %i.ls = add i64 %i.lr, %i.ha, !nosanitize !9    ; 3 uses
  %i.lt = icmp ne i64 %i.ls, 0
  %i.lu = icmp uge i64 %i.ls, %i.ha, !nosanitize !9
  %i.lv = icmp slt i32 %i.jy, 0
  %i.lw = xor i1 %i.lv, %i.lu
  %i.lx = and i1 %i.lt, %i.lw, !nosanitize !9
  br i1 %i.lx, label %bb.bf, label %.split4040.us, !prof !10, !nosanitize !9

bb.bf:                                            ; preds = %bb.be
  %i.ly = ptrtoint ptr %i.lq to i64, !nosanitize !9 ; 2 uses
  %i.lz = and i64 %i.ly, 3, !nosanitize !9
  %i.ma = icmp eq i64 %i.lz, 0, !nosanitize !9
  br i1 %i.ma, label %bb.bg, label %.split4044.us, !prof !10, !nosanitize !9

bb.bg:                                            ; preds = %bb.bf
  %i.mb = load float, ptr %i.lq, align 4, !tbaa !25
  %i.mc = add nuw nsw i32 %.08873603.us3978, 1    ; 7 uses
  %i.md = sitofp i32 %.08873603.us3978 to float
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.me = fmul float %.sroa.07.0.vec.extract.i, %i.md ; 7 uses
  %.sroa.05.0.vec.insert.i.us = insertelement <2 x float> poison, float %i.me, i64 0 ; 4 uses
  %i.mf = fmul float %.sroa.07.4.vec.extract.i, %i.ko ; 4 uses
  %.sroa.05.4.vec.insert.i.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i.us, float %i.mf, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i.us, ptr %1, align 16
  store float %i.hy, ptr %.sroa.4590.0..sroa_idx, align 8, !tbaa !25
  %i.mg = fmul float %.sroa.07.4.vec.extract.i, %i.lo ; 3 uses
  %.sroa.05.4.vec.insert.i1036.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i.us, float %i.mg, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1036.us, ptr %i.hc, align 4
  store float %i.hz, ptr %.sroa.4577.0..sroa_idx, align 4, !tbaa !25
  br i1 %.not983, label %.split4047.us, label %bb.bh, !prof !20, !nosanitize !9

bb.bh:                                            ; preds = %bb.bg
  %i.mh = sitofp i32 %i.mc to float
  %i.mi = fmul float %.sroa.07.0.vec.extract.i, %i.mh ; 8 uses
  %.sroa.05.0.vec.insert.i1041.us = insertelement <2 x float> poison, float %i.mi, i64 0 ; 6 uses
  %i.mj = fmul float %.sroa.07.4.vec.extract.i, %i.lb ; 3 uses
  %.sroa.05.4.vec.insert.i1042.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.mj, i64 1
  %i.mk = fsub float %i.me, %i.me                 ; 4 uses
  %i.ml = fsub float %i.mg, %i.mf                 ; 2 uses
  %i.mm = fsub float %i.mi, %i.me                 ; 4 uses
  %i.mn = fsub float %i.mj, %i.mf                 ; 2 uses
  %i.mo = fmul float %i.ib, %i.ml
  %i.mp = fmul float %i.ia, %i.mn
  %i.mq = fsub float %i.mo, %i.mp                 ; 3 uses
  %i.mr = fmul float %i.ia, %i.mm
  %i.ms = fmul float %i.ib, %i.mk
  %i.mt = fsub float %i.mr, %i.ms                 ; 3 uses
  %i.mu = fmul float %i.mk, %i.mn
  %i.mv = fmul float %i.mm, %i.ml
  %i.mw = fsub float %i.mu, %i.mv                 ; 3 uses
  %i.mx = fmul float %i.mq, %i.mq
  %i.my = fmul float %i.mt, %i.mt
  %i.mz = fadd float %i.my, %i.mx
  %i.na = fmul float %i.mw, %i.mw
  %i.nb = fadd float %i.na, %i.mz                 ; 2 uses
  %i.nc = fcmp ogt float %i.nb, f0x057A0000
  br i1 %i.nc, label %bb.bi, label %b3MakePlaneFromPoints.exit.us

bb.bi:                                            ; preds = %bb.bh
  %sqrt.i.us = call float @llvm.sqrt.f32(float %i.nb)
  %i.nd = fdiv float 1.000000e+00, %sqrt.i.us     ; 3 uses
  %i.ne = fmul float %i.mq, %i.nd
  %.sroa.07.0.vec.insert.i.i.us = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.nf = fmul float %i.mt, %i.nd
  %.sroa.07.4.vec.insert.i.i.us = insertelement <2 x float> %.sroa.07.0.vec.insert.i.i.us, float %i.nf, i64 1
  %i.ng = fmul float %i.mw, %i.nd
  br label %b3MakePlaneFromPoints.exit.us

b3MakePlaneFromPoints.exit.us:                    ; preds = %bb.bi, %bb.bh
  %.sroa.07.0.i.i.us = phi <2 x float> [ %.sroa.07.4.vec.insert.i.i.us, %bb.bi ], [ zeroinitializer, %bb.bh ] ; 6 uses
  %.sroa.5.0.i.i.us = phi float [ %i.ng, %bb.bi ], [ 0.000000e+00, %bb.bh ] ; 6 uses
  %.sroa.03.0.vec.extract.i.i.us = extractelement <2 x float> %.sroa.07.0.i.i.us, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i.i.us = extractelement <2 x float> %.sroa.07.0.i.i.us, i64 1 ; 3 uses
  %i.nh = fmul float %i.me, %.sroa.03.0.vec.extract.i.i.us
  %i.ni = fmul float %i.mf, %.sroa.03.4.vec.extract.i.i.us
  %i.nj = fadd float %i.nh, %i.ni
  %i.nk = fmul float %i.hy, %.sroa.5.0.i.i.us
  %i.nl = fadd float %i.nk, %i.nj                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.nm = fmul float %.sroa.07.4.vec.extract.i, %i.mb ; 5 uses
  %.sroa.05.4.vec.insert.i1072.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.nm, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1072.us, ptr %2, align 16
  store float %i.hz, ptr %.sroa.4515.0..sroa_idx, align 8, !tbaa !25
  store <2 x float> %.sroa.05.4.vec.insert.i1042.us, ptr %i.hd, align 4
  store float %i.hy, ptr %.sroa.4502.0..sroa_idx, align 4, !tbaa !25
  br i1 %.not984, label %.split4049.us, label %bb.bj, !prof !20, !nosanitize !9

bb.bj:                                            ; preds = %b3MakePlaneFromPoints.exit.us
  %i.nn = fsub float %i.mi, %i.mi                 ; 6 uses
  %i.no = fsub float %i.mj, %i.nm                 ; 2 uses
  %i.np = fsub float %i.me, %i.mi                 ; 4 uses
  %i.nq = fsub float %i.mg, %i.nm                 ; 2 uses
  %i.nr = fmul float %i.id, %i.no
  %i.ns = fmul float %i.ic, %i.nq
  %i.nt = fsub float %i.nr, %i.ns                 ; 3 uses
  %i.nu = fmul float %i.ic, %i.np
  %i.nv = fmul float %i.id, %i.nn
  %i.nw = fsub float %i.nu, %i.nv                 ; 3 uses
  %i.nx = fmul float %i.nn, %i.nq
  %i.ny = fmul float %i.np, %i.no
  %i.nz = fsub float %i.nx, %i.ny                 ; 3 uses
  %i.oa = fmul float %i.nt, %i.nt
  %i.ob = fmul float %i.nw, %i.nw
  %i.oc = fadd float %i.ob, %i.oa
  %i.od = fmul float %i.nz, %i.nz
  %i.oe = fadd float %i.od, %i.oc                 ; 2 uses
  %i.of = fcmp ogt float %i.oe, f0x057A0000
  br i1 %i.of, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %sqrt.i1105.us = call float @llvm.sqrt.f32(float %i.oe)
  %i.og = fdiv float 1.000000e+00, %sqrt.i1105.us ; 3 uses
  %i.oh = fmul float %i.nt, %i.og
  %.sroa.07.0.vec.insert.i.i1106.us = insertelement <2 x float> poison, float %i.oh, i64 0
  %i.oi = fmul float %i.nw, %i.og
  %.sroa.07.4.vec.insert.i.i1107.us = insertelement <2 x float> %.sroa.07.0.vec.insert.i.i1106.us, float %i.oi, i64 1
  %i.oj = fmul float %i.nz, %i.og
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %.sroa.07.0.i.i1097.us = phi <2 x float> [ %.sroa.07.4.vec.insert.i.i1107.us, %bb.bk ], [ zeroinitializer, %bb.bj ] ; 6 uses
  %.sroa.5.0.i.i1098.us = phi float [ %i.oj, %bb.bk ], [ 0.000000e+00, %bb.bj ] ; 6 uses
  %.sroa.03.0.vec.extract.i.i1100.us = extractelement <2 x float> %.sroa.07.0.i.i1097.us, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i.i1101.us = extractelement <2 x float> %.sroa.07.0.i.i1097.us, i64 1 ; 2 uses
  %i.ok = fmul float %i.mi, %.sroa.03.0.vec.extract.i.i1100.us
  %i.ol = fmul float %i.nm, %.sroa.03.4.vec.extract.i.i1101.us
  %i.om = fadd float %i.ok, %i.ol
  %i.on = fmul float %i.hz, %.sroa.5.0.i.i1098.us
  %i.oo = fadd float %i.on, %i.om                 ; 2 uses
  %i.op = fmul float %i.mi, %.sroa.03.0.vec.extract.i.i.us ; 2 uses
  %i.oq = fmul float %i.nm, %.sroa.03.4.vec.extract.i.i.us
  %i.or = fadd float %i.op, %i.oq
  %i.os = fmul float %i.hz, %.sroa.5.0.i.i.us     ; 2 uses
  %i.ot = fadd float %i.os, %i.or
  %i.ou = fsub float %i.ot, %i.nl                 ; 2 uses
  %i.ov = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.07.0.i.i1097.us ; 2 uses
  %shift11171 = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11172 = fadd <2 x float> %i.ov, %shift11171
  %i.ow = extractelement <2 x float> %foldExtExtBinop11172, i64 0
  %i.ox = fmul float %.sroa.5.0.i.i.us, %.sroa.5.0.i.i1098.us
  %i.oy = fadd float %i.ox, %i.ow
  %i.oz = fcmp ogt float %i.ou, 0.000000e+00
  %i.pa = fcmp ogt float %i.oy, 9.962000e-01      ; 2 uses
  %or.cond.us = select i1 %i.oz, i1 true, i1 %i.pa
  %.0888.us = select i1 %or.cond.us, i32 2, i32 0 ; 2 uses
  %i.pb = fcmp olt float %i.ou, 0.000000e+00
  %or.cond998.us = select i1 %i.pb, i1 true, i1 %i.pa
  %i.pc = or disjoint i32 %.0888.us, 32
  %.1891.us = select i1 %or.cond998.us, i32 %i.pc, i32 %.0888.us ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br i1 %i.ih, label %.split4054.us.a, label %bb.bm, !prof !20, !nosanitize !9

bb.bm:                                            ; preds = %bb.bl
  %i.pd = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ig, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.pe = extractvalue { i32, i1 } %i.pd, 0, !nosanitize !9 ; 2 uses
  %i.pf = extractvalue { i32, i1 } %i.pd, 1, !nosanitize !9
  br i1 %i.pf, label %.split4057.us, label %bb.bn, !prof !20, !nosanitize !9

bb.bn:                                            ; preds = %bb.bm
  br i1 %.not7117, label %bb.bz, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pg = sext i32 %i.pe to i64                   ; 2 uses
  %i.ph = add i64 %i.bq, %i.pg, !nosanitize !9    ; 3 uses
  %i.pi = icmp ne i64 %i.ph, 0
  %i.pj = icmp uge i64 %i.ph, %i.bq, !nosanitize !9
  %i.pk = icmp slt i32 %i.pe, 0
  %i.pl = xor i1 %i.pk, %i.pj
  %i.pm = and i1 %i.pi, %i.pl, !nosanitize !9
  br i1 %i.pm, label %bb.bp, label %.split4061.us, !prof !10, !nosanitize !9

bb.bp:                                            ; preds = %bb.bo
  %i.pn = getelementptr inbounds i8, ptr %i.bs, i64 %i.pg
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !41
  %.not986.us = icmp eq i8 %i.po, -1
  br i1 %.not986.us, label %bb.bz, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.ik, label %.split4067.us.a, label %bb.br, !prof !20, !nosanitize !9

bb.br:                                            ; preds = %bb.bq
  %i.pp = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ij, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.pq = extractvalue { i32, i1 } %i.pp, 1, !nosanitize !9
  br i1 %i.pq, label %.split4070.us, label %bb.bs, !prof !20, !nosanitize !9

bb.bs:                                            ; preds = %bb.br
  %i.pr = extractvalue { i32, i1 } %i.pp, 0, !nosanitize !9 ; 2 uses
  %i.ps = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.pr, i32 1), !nosanitize !9 ; 2 uses
  %i.pt = extractvalue { i32, i1 } %i.ps, 1, !nosanitize !9
  br i1 %i.pt, label %.split4074.us, label %bb.bt, !prof !20, !nosanitize !9

bb.bt:                                            ; preds = %bb.bs
  %i.pu = extractvalue { i32, i1 } %i.ps, 0, !nosanitize !9 ; 2 uses
  %i.pv = sext i32 %i.pu to i64                   ; 2 uses
  %i.pw = getelementptr inbounds [4 x i8], ptr %.fr7125, i64 %i.pv ; 2 uses
  %i.px = shl nsw i64 %i.pv, 2
  %i.py = add i64 %i.px, %i.ha, !nosanitize !9    ; 3 uses
  %i.pz = icmp ne i64 %i.py, 0
  %i.qa = icmp uge i64 %i.py, %i.ha, !nosanitize !9
  %i.qb = icmp slt i32 %i.pu, 0
  %i.qc = xor i1 %i.qb, %i.qa
  %i.qd = and i1 %i.pz, %i.qc, !nosanitize !9
  br i1 %i.qd, label %bb.bu, label %.split4090.us, !prof !10, !nosanitize !9

bb.bu:                                            ; preds = %bb.bt
  %i.qe = ptrtoint ptr %i.pw to i64, !nosanitize !9 ; 2 uses
  %i.qf = and i64 %i.qe, 3, !nosanitize !9
  %i.qg = icmp eq i64 %i.qf, 0, !nosanitize !9
  br i1 %i.qg, label %bb.bv, label %.split4094.us.a, !prof !10, !nosanitize !9

bb.bv:                                            ; preds = %bb.bu
  %.not7118 = icmp eq i64 %i.kd, 0
  br i1 %.not7118, label %.split4097.us, label %bb.bw, !prof !20, !nosanitize !9

bb.bw:                                            ; preds = %bb.bv
  %i.qh = load float, ptr %i.pw, align 4, !tbaa !25
  %i.qi = load float, ptr %i.kb, align 4, !tbaa !25
  %i.qj = load float, ptr %i.kq, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.qk = fmul float %.sroa.07.4.vec.extract.i, %i.qj ; 3 uses
  %.sroa.05.4.vec.insert.i1142.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.qk, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1142.us, ptr %3, align 16
  store float %i.hy, ptr %.sroa.4407.0..sroa_idx, align 8, !tbaa !25
  %i.ql = fmul float %.sroa.07.4.vec.extract.i, %i.qh ; 3 uses
  %.sroa.05.4.vec.insert.i1150.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.ql, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1150.us, ptr %i.he, align 4
  store float %i.im, ptr %.sroa.4394.0..sroa_idx, align 4, !tbaa !25
  br i1 %.not987, label %.split4111.us, label %bb.bx, !prof !20, !nosanitize !9

bb.bx:                                            ; preds = %bb.bw
  %i.qm = fmul float %.sroa.07.4.vec.extract.i, %i.qi
  %i.qn = fsub float %i.ql, %i.qk                 ; 2 uses
  %i.qo = fsub float %i.qm, %i.qk                 ; 2 uses
  %i.qp = fmul float %i.ib, %i.qn
  %i.qq = fmul float %i.in, %i.qo
  %i.qr = fsub float %i.qp, %i.qq                 ; 3 uses
  %i.qs = fmul float %i.in, %i.np
  %i.qt = fmul float %i.ib, %i.nn
  %i.qu = fsub float %i.qs, %i.qt                 ; 3 uses
  %i.qv = fmul float %i.nn, %i.qo
  %i.qw = fmul float %i.np, %i.qn
  %i.qx = fsub float %i.qv, %i.qw                 ; 3 uses
  %i.qy = fmul float %i.qr, %i.qr
  %i.qz = fmul float %i.qu, %i.qu
  %i.ra = fadd float %i.qz, %i.qy
  %i.rb = fmul float %i.qx, %i.qx
  %i.rc = fadd float %i.rb, %i.ra                 ; 2 uses
  %i.rd = fcmp ogt float %i.rc, f0x057A0000
  br i1 %i.rd, label %bb.by, label %b3Normalize.exit1030.us

bb.by:                                            ; preds = %bb.bx
  %sqrt.us = call float @llvm.sqrt.f32(float %i.rc)
  %i.re = fdiv float 1.000000e+00, %sqrt.us       ; 3 uses
  %i.rf = fmul float %i.qr, %i.re
  %.sroa.07.0.vec.insert.i1028.us = insertelement <2 x float> poison, float %i.rf, i64 0
  %i.rg = fmul float %i.qu, %i.re
  %.sroa.07.4.vec.insert.i1029.us = insertelement <2 x float> %.sroa.07.0.vec.insert.i1028.us, float %i.rg, i64 1
  %i.rh = fmul float %i.qx, %i.re
  br label %b3Normalize.exit1030.us

b3Normalize.exit1030.us:                          ; preds = %bb.by, %bb.bx
  %.sroa.07.0.i1024.us = phi <2 x float> [ %.sroa.07.4.vec.insert.i1029.us, %bb.by ], [ zeroinitializer, %bb.bx ]
  %.sroa.5.0.i1025.us = phi float [ %i.rh, %bb.by ], [ 0.000000e+00, %bb.bx ]
  %i.ri = fmul float %.sroa.03.4.vec.extract.i.i.us, %i.ql
  %i.rj = fadd float %i.op, %i.ri
  %i.rk = fmul float %i.im, %.sroa.5.0.i.i.us
  %i.rl = fadd float %i.rk, %i.rj
  %i.rm = fsub float %i.rl, %i.nl                 ; 2 uses
  %i.rn = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.07.0.i1024.us ; 2 uses
  %shift11174 = shufflevector <2 x float> %i.rn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11175 = fadd <2 x float> %i.rn, %shift11174
  %i.ro = extractelement <2 x float> %foldExtExtBinop11175, i64 0
  %i.rp = fmul float %.sroa.5.0.i.i.us, %.sroa.5.0.i1025.us
  %i.rq = fadd float %i.rp, %i.ro
  %i.rr = fcmp ogt float %i.rm, 0.000000e+00
  %i.rs = fcmp ogt float %i.rq, 9.962000e-01      ; 2 uses
  %or.cond999.us = select i1 %i.rr, i1 true, i1 %i.rs
  %i.rt = or disjoint i32 %.1891.us, 4
  %.2.us = select i1 %or.cond999.us, i32 %i.rt, i32 %.1891.us ; 2 uses
  %i.ru = fcmp olt float %i.rm, 0.000000e+00
  %or.cond1000.us = select i1 %i.ru, i1 true, i1 %i.rs
  %i.rv = or disjoint i32 %.2.us, 64
  %.3.us = select i1 %or.cond1000.us, i32 %i.rv, i32 %.2.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.bz

bb.bz:                                            ; preds = %b3Normalize.exit1030.us, %bb.bp, %bb.bn
  %.4.us = phi i32 [ %.3.us, %b3Normalize.exit1030.us ], [ %.1891.us, %bb.bp ], [ %.1891.us, %bb.bn ] ; 3 uses
  br i1 %i.iq, label %.split4113.us.a, label %bb.ca, !prof !20, !nosanitize !9

bb.ca:                                            ; preds = %bb.bz
  %i.rw = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ip, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.rx = extractvalue { i32, i1 } %i.rw, 0, !nosanitize !9 ; 2 uses
  %i.ry = extractvalue { i32, i1 } %i.rw, 1, !nosanitize !9
  br i1 %i.ry, label %.split4116.us, label %bb.cb, !prof !20, !nosanitize !9

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.ir, label %bb.cc, label %bb.cl

bb.cc:                                            ; preds = %bb.cb
  %i.rz = sext i32 %i.rx to i64                   ; 2 uses
  %i.sa = add i64 %i.bq, %i.rz, !nosanitize !9    ; 3 uses
  %i.sb = icmp ne i64 %i.sa, 0
  %i.sc = icmp uge i64 %i.sa, %i.bq, !nosanitize !9
  %i.sd = icmp slt i32 %i.rx, 0
  %i.se = xor i1 %i.sd, %i.sc
  %i.sf = and i1 %i.sb, %i.se, !nosanitize !9
  br i1 %i.sf, label %bb.cd, label %.split4120.us, !prof !10, !nosanitize !9

bb.cd:                                            ; preds = %bb.cc
  %i.sg = getelementptr inbounds i8, ptr %i.bs, i64 %i.rz
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !41
  %.not989.us = icmp eq i8 %i.sh, -1
  br i1 %.not989.us, label %bb.cl, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.iv, label %.split4126.us.a, label %bb.cf, !prof !20, !nosanitize !9

bb.cf:                                            ; preds = %bb.ce
end_hunk_0
