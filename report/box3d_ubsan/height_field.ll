Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/height_field?download=true
inline.NumInlined: 198
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3CreateHeightField:bb.a
  %i.jv = extractvalue { i32, i1 } %i.jt, 1, !nosanitize !9
  br i1 %i.jv, label %.split4003.us, label %bb.ax, !prof !20, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.hx, label %.split4009.us, label %bb.ay, !prof !20, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  %i.jw = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.hw, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.jx = extractvalue { i32, i1 } %i.jw, 0, !nosanitize !9 ; 4 uses
  %i.jy = extractvalue { i32, i1 } %i.jw, 1, !nosanitize !9
  br i1 %i.jy, label %.split4012.us, label %bb.az, !prof !20, !nosanitize !9

bb.az:                                            ; preds = %bb.ay
  %i.jz = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.jx, i32 1), !nosanitize !9 ; 2 uses
  %i.ka = extractvalue { i32, i1 } %i.jz, 0, !nosanitize !9 ; 2 uses
  %i.kb = extractvalue { i32, i1 } %i.jz, 1, !nosanitize !9
  br i1 %i.kb, label %.split4016.us, label %bb.ba, !prof !20, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  %i.kc = sext i32 %i.jr to i64                   ; 2 uses
  %i.kd = getelementptr inbounds [4 x i8], ptr %.fr7125, i64 %i.kc ; 3 uses
  %i.ke = shl nsw i64 %i.kc, 2
  %i.kf = add i64 %i.ke, %i.hc, !nosanitize !9    ; 4 uses
  %i.kg = icmp eq i64 %i.kf, 0
  %i.kh = xor i1 %i.hd, %i.kg
  %i.ki = icmp uge i64 %i.kf, %i.hc, !nosanitize !9
  %i.kj = icmp slt i32 %i.jr, 0
  %i.kk = xor i1 %i.kj, %i.ki
  %i.kl = and i1 %i.kh, %i.kk, !nosanitize !9
  br i1 %i.kl, label %bb.bb, label %.split4019.us, !prof !10, !nosanitize !9

bb.bb:                                            ; preds = %bb.ba
  %i.km = ptrtoint ptr %i.kd to i64, !nosanitize !9 ; 2 uses
  %i.kn = and i64 %i.km, 3, !nosanitize !9
  %i.ko = icmp eq i64 %i.kn, 0, !nosanitize !9
  %i.kp = and i1 %i.hd, %i.ko
  br i1 %i.kp, label %bb.bc, label %.split4023.us, !prof !10, !nosanitize !9

bb.bc:                                            ; preds = %bb.bb
  %i.kq = load float, ptr %i.kd, align 4, !tbaa !25
  %i.kr = sext i32 %i.ju to i64                   ; 2 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %.fr7125, i64 %i.kr ; 3 uses
  %i.kt = shl nsw i64 %i.kr, 2
  %i.ku = add i64 %i.kt, %i.hc, !nosanitize !9    ; 3 uses
  %i.kv = icmp ne i64 %i.ku, 0
  %i.kw = icmp uge i64 %i.ku, %i.hc, !nosanitize !9
  %i.kx = icmp slt i32 %i.ju, 0
  %i.ky = xor i1 %i.kx, %i.kw
  %i.kz = and i1 %i.kv, %i.ky, !nosanitize !9
  br i1 %i.kz, label %bb.bd, label %.split4026.us, !prof !10, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  %i.la = ptrtoint ptr %i.ks to i64, !nosanitize !9 ; 2 uses
  %i.lb = and i64 %i.la, 3, !nosanitize !9
  %i.lc = icmp eq i64 %i.lb, 0, !nosanitize !9
  br i1 %i.lc, label %bb.be, label %.split4030.us, !prof !10, !nosanitize !9

bb.be:                                            ; preds = %bb.bd
  %i.ld = load float, ptr %i.ks, align 4, !tbaa !25
  %i.le = sext i32 %i.jx to i64                   ; 2 uses
  %i.lf = getelementptr inbounds [4 x i8], ptr %.fr7125, i64 %i.le ; 3 uses
  %i.lg = shl nsw i64 %i.le, 2
  %i.lh = add i64 %i.lg, %i.hc, !nosanitize !9    ; 3 uses
  %i.li = icmp ne i64 %i.lh, 0
  %i.lj = icmp uge i64 %i.lh, %i.hc, !nosanitize !9
  %i.lk = icmp slt i32 %i.jx, 0
  %i.ll = xor i1 %i.lk, %i.lj
  %i.lm = and i1 %i.li, %i.ll, !nosanitize !9
  br i1 %i.lm, label %bb.bf, label %.split4033.us, !prof !10, !nosanitize !9

bb.bf:                                            ; preds = %bb.be
  %i.ln = ptrtoint ptr %i.lf to i64, !nosanitize !9 ; 2 uses
  %i.lo = and i64 %i.ln, 3, !nosanitize !9
  %i.lp = icmp eq i64 %i.lo, 0, !nosanitize !9
  br i1 %i.lp, label %bb.bg, label %.split4037.us, !prof !10, !nosanitize !9

bb.bg:                                            ; preds = %bb.bf
  %i.lq = load float, ptr %i.lf, align 4, !tbaa !25
  %i.lr = sext i32 %i.ka to i64                   ; 2 uses
  %i.ls = getelementptr inbounds [4 x i8], ptr %.fr7125, i64 %i.lr ; 3 uses
  %i.lt = shl nsw i64 %i.lr, 2
  %i.lu = add i64 %i.lt, %i.hc, !nosanitize !9    ; 3 uses
  %i.lv = icmp ne i64 %i.lu, 0
  %i.lw = icmp uge i64 %i.lu, %i.hc, !nosanitize !9
  %i.lx = icmp slt i32 %i.ka, 0
  %i.ly = xor i1 %i.lx, %i.lw
  %i.lz = and i1 %i.lv, %i.ly, !nosanitize !9
  br i1 %i.lz, label %bb.bh, label %.split4040.us, !prof !10, !nosanitize !9

bb.bh:                                            ; preds = %bb.bg
  %i.ma = ptrtoint ptr %i.ls to i64, !nosanitize !9 ; 2 uses
  %i.mb = and i64 %i.ma, 3, !nosanitize !9
  %i.mc = icmp eq i64 %i.mb, 0, !nosanitize !9
  br i1 %i.mc, label %bb.bi, label %.split4044.us, !prof !10, !nosanitize !9

bb.bi:                                            ; preds = %bb.bh
  %i.md = load float, ptr %i.ls, align 4, !tbaa !25
  %i.me = add nuw nsw i32 %.08873603.us3978, 1    ; 7 uses
  %i.mf = sitofp i32 %.08873603.us3978 to float
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.mg = fmul float %.sroa.07.0.vec.extract.i, %i.mf ; 7 uses
  %.sroa.05.0.vec.insert.i.us = insertelement <2 x float> poison, float %i.mg, i64 0 ; 4 uses
  %i.mh = fmul float %.sroa.07.4.vec.extract.i, %i.kq ; 4 uses
  %.sroa.05.4.vec.insert.i.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i.us, float %i.mh, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i.us, ptr %1, align 16
  store float %i.ia, ptr %.sroa.4590.0..sroa_idx, align 8, !tbaa !25
  %i.mi = fmul float %.sroa.07.4.vec.extract.i, %i.lq ; 3 uses
  %.sroa.05.4.vec.insert.i1036.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i.us, float %i.mi, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1036.us, ptr %i.he, align 4
  store float %i.ib, ptr %.sroa.4577.0..sroa_idx, align 4, !tbaa !25
  br i1 %.not983, label %.split4047.us, label %bb.bj, !prof !20, !nosanitize !9

bb.bj:                                            ; preds = %bb.bi
  %i.mj = sitofp i32 %i.me to float
  %i.mk = fmul float %.sroa.07.0.vec.extract.i, %i.mj ; 8 uses
  %.sroa.05.0.vec.insert.i1041.us = insertelement <2 x float> poison, float %i.mk, i64 0 ; 6 uses
  %i.ml = fmul float %.sroa.07.4.vec.extract.i, %i.ld ; 3 uses
  %.sroa.05.4.vec.insert.i1042.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.ml, i64 1
  %i.mm = fsub float %i.mg, %i.mg                 ; 4 uses
  %i.mn = fsub float %i.mi, %i.mh                 ; 2 uses
  %i.mo = fsub float %i.mk, %i.mg                 ; 4 uses
  %i.mp = fsub float %i.ml, %i.mh                 ; 2 uses
  %i.mq = fmul float %i.id, %i.mn
  %i.mr = fmul float %i.ic, %i.mp
  %i.ms = fsub float %i.mq, %i.mr                 ; 3 uses
  %i.mt = fmul float %i.ic, %i.mo
  %i.mu = fmul float %i.id, %i.mm
  %i.mv = fsub float %i.mt, %i.mu                 ; 3 uses
  %i.mw = fmul float %i.mm, %i.mp
  %i.mx = fmul float %i.mo, %i.mn
  %i.my = fsub float %i.mw, %i.mx                 ; 3 uses
  %i.mz = fmul float %i.ms, %i.ms
  %i.na = fmul float %i.mv, %i.mv
  %i.nb = fadd float %i.na, %i.mz
  %i.nc = fmul float %i.my, %i.my
  %i.nd = fadd float %i.nc, %i.nb                 ; 2 uses
  %i.ne = fcmp ogt float %i.nd, f0x057A0000
  br i1 %i.ne, label %bb.bk, label %b3MakePlaneFromPoints.exit.us

bb.bk:                                            ; preds = %bb.bj
  %sqrt.i.us = call float @llvm.sqrt.f32(float %i.nd)
  %i.nf = fdiv float 1.000000e+00, %sqrt.i.us     ; 3 uses
  %i.ng = fmul float %i.ms, %i.nf
  %.sroa.07.0.vec.insert.i.i.us = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.nh = fmul float %i.mv, %i.nf
  %.sroa.07.4.vec.insert.i.i.us = insertelement <2 x float> %.sroa.07.0.vec.insert.i.i.us, float %i.nh, i64 1
  %i.ni = fmul float %i.my, %i.nf
  br label %b3MakePlaneFromPoints.exit.us

b3MakePlaneFromPoints.exit.us:                    ; preds = %bb.bk, %bb.bj
  %.sroa.07.0.i.i.us = phi <2 x float> [ %.sroa.07.4.vec.insert.i.i.us, %bb.bk ], [ zeroinitializer, %bb.bj ] ; 6 uses
  %.sroa.5.0.i.i.us = phi float [ %i.ni, %bb.bk ], [ 0.000000e+00, %bb.bj ] ; 6 uses
  %.sroa.03.0.vec.extract.i.i.us = extractelement <2 x float> %.sroa.07.0.i.i.us, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i.i.us = extractelement <2 x float> %.sroa.07.0.i.i.us, i64 1 ; 3 uses
  %i.nj = fmul float %i.mg, %.sroa.03.0.vec.extract.i.i.us
  %i.nk = fmul float %i.mh, %.sroa.03.4.vec.extract.i.i.us
  %i.nl = fadd float %i.nj, %i.nk
  %i.nm = fmul float %i.ia, %.sroa.5.0.i.i.us
  %i.nn = fadd float %i.nm, %i.nl                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.no = fmul float %.sroa.07.4.vec.extract.i, %i.md ; 5 uses
  %.sroa.05.4.vec.insert.i1072.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.no, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1072.us, ptr %2, align 16
  store float %i.ib, ptr %.sroa.4515.0..sroa_idx, align 8, !tbaa !25
  store <2 x float> %.sroa.05.4.vec.insert.i1042.us, ptr %i.hf, align 4
  store float %i.ia, ptr %.sroa.4502.0..sroa_idx, align 4, !tbaa !25
  br i1 %.not984, label %.split4049.us, label %bb.bl, !prof !20, !nosanitize !9

bb.bl:                                            ; preds = %b3MakePlaneFromPoints.exit.us
  %i.np = fsub float %i.mk, %i.mk                 ; 6 uses
  %i.nq = fsub float %i.ml, %i.no                 ; 2 uses
  %i.nr = fsub float %i.mg, %i.mk                 ; 4 uses
  %i.ns = fsub float %i.mi, %i.no                 ; 2 uses
  %i.nt = fmul float %i.if, %i.nq
  %i.nu = fmul float %i.ie, %i.ns
  %i.nv = fsub float %i.nt, %i.nu                 ; 3 uses
  %i.nw = fmul float %i.ie, %i.nr
  %i.nx = fmul float %i.if, %i.np
  %i.ny = fsub float %i.nw, %i.nx                 ; 3 uses
  %i.nz = fmul float %i.np, %i.ns
  %i.oa = fmul float %i.nr, %i.nq
  %i.ob = fsub float %i.nz, %i.oa                 ; 3 uses
  %i.oc = fmul float %i.nv, %i.nv
  %i.od = fmul float %i.ny, %i.ny
  %i.oe = fadd float %i.od, %i.oc
  %i.of = fmul float %i.ob, %i.ob
  %i.og = fadd float %i.of, %i.oe                 ; 2 uses
  %i.oh = fcmp ogt float %i.og, f0x057A0000
  br i1 %i.oh, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %sqrt.i1105.us = call float @llvm.sqrt.f32(float %i.og)
  %i.oi = fdiv float 1.000000e+00, %sqrt.i1105.us ; 3 uses
  %i.oj = fmul float %i.nv, %i.oi
  %.sroa.07.0.vec.insert.i.i1106.us = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.ok = fmul float %i.ny, %i.oi
  %.sroa.07.4.vec.insert.i.i1107.us = insertelement <2 x float> %.sroa.07.0.vec.insert.i.i1106.us, float %i.ok, i64 1
  %i.ol = fmul float %i.ob, %i.oi
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.07.0.i.i1097.us = phi <2 x float> [ %.sroa.07.4.vec.insert.i.i1107.us, %bb.bm ], [ zeroinitializer, %bb.bl ] ; 6 uses
  %.sroa.5.0.i.i1098.us = phi float [ %i.ol, %bb.bm ], [ 0.000000e+00, %bb.bl ] ; 6 uses
  %.sroa.03.0.vec.extract.i.i1100.us = extractelement <2 x float> %.sroa.07.0.i.i1097.us, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i.i1101.us = extractelement <2 x float> %.sroa.07.0.i.i1097.us, i64 1 ; 2 uses
  %i.om = fmul float %i.mk, %.sroa.03.0.vec.extract.i.i1100.us
  %i.on = fmul float %i.no, %.sroa.03.4.vec.extract.i.i1101.us
  %i.oo = fadd float %i.om, %i.on
  %i.op = fmul float %i.ib, %.sroa.5.0.i.i1098.us
  %i.oq = fadd float %i.op, %i.oo                 ; 2 uses
  %i.or = fmul float %i.mk, %.sroa.03.0.vec.extract.i.i.us ; 2 uses
  %i.os = fmul float %i.no, %.sroa.03.4.vec.extract.i.i.us
  %i.ot = fadd float %i.or, %i.os
  %i.ou = fmul float %i.ib, %.sroa.5.0.i.i.us     ; 2 uses
  %i.ov = fadd float %i.ou, %i.ot
  %i.ow = fsub float %i.ov, %i.nn                 ; 2 uses
  %i.ox = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.07.0.i.i1097.us ; 2 uses
  %shift11171 = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11172 = fadd <2 x float> %i.ox, %shift11171
  %i.oy = extractelement <2 x float> %foldExtExtBinop11172, i64 0
  %i.oz = fmul float %.sroa.5.0.i.i.us, %.sroa.5.0.i.i1098.us
  %i.pa = fadd float %i.oz, %i.oy
  %i.pb = fcmp ogt float %i.ow, 0.000000e+00
  %i.pc = fcmp ogt float %i.pa, 9.962000e-01      ; 2 uses
  %or.cond.us = select i1 %i.pb, i1 true, i1 %i.pc
  %.0888.us = select i1 %or.cond.us, i32 2, i32 0 ; 2 uses
  %i.pd = fcmp olt float %i.ow, 0.000000e+00
  %or.cond998.us = select i1 %i.pd, i1 true, i1 %i.pc
  %i.pe = or disjoint i32 %.0888.us, 32
  %.1891.us = select i1 %or.cond998.us, i32 %i.pe, i32 %.0888.us ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br i1 %i.ij, label %.split4054.us.a, label %bb.bo, !prof !20, !nosanitize !9

bb.bo:                                            ; preds = %bb.bn
  %i.pf = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ii, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.pg = extractvalue { i32, i1 } %i.pf, 0, !nosanitize !9 ; 2 uses
  %i.ph = extractvalue { i32, i1 } %i.pf, 1, !nosanitize !9
  br i1 %i.ph, label %.split4057.us, label %bb.bp, !prof !20, !nosanitize !9

bb.bp:                                            ; preds = %bb.bo
  br i1 %.not7117, label %bb.cb, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pi = sext i32 %i.pg to i64                   ; 2 uses
  %i.pj = add i64 %i.bs, %i.pi, !nosanitize !9    ; 3 uses
  %i.pk = icmp ne i64 %i.pj, 0
  %i.pl = icmp uge i64 %i.pj, %i.bs, !nosanitize !9
  %i.pm = icmp slt i32 %i.pg, 0
  %i.pn = xor i1 %i.pm, %i.pl
  %i.po = and i1 %i.pk, %i.pn, !nosanitize !9
  br i1 %i.po, label %bb.br, label %.split4061.us, !prof !10, !nosanitize !9

bb.br:                                            ; preds = %bb.bq
  %i.pp = getelementptr inbounds i8, ptr %i.bu, i64 %i.pi
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !41
  %.not986.us = icmp eq i8 %i.pq, -1
  br i1 %.not986.us, label %bb.cb, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  br i1 %i.im, label %.split4067.us.a, label %bb.bt, !prof !20, !nosanitize !9

bb.bt:                                            ; preds = %bb.bs
  %i.pr = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.il, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.ps = extractvalue { i32, i1 } %i.pr, 1, !nosanitize !9
  br i1 %i.ps, label %.split4070.us, label %bb.bu, !prof !20, !nosanitize !9

bb.bu:                                            ; preds = %bb.bt
  %i.pt = extractvalue { i32, i1 } %i.pr, 0, !nosanitize !9 ; 2 uses
  %i.pu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.pt, i32 1), !nosanitize !9 ; 2 uses
  %i.pv = extractvalue { i32, i1 } %i.pu, 1, !nosanitize !9
  br i1 %i.pv, label %.split4074.us, label %bb.bv, !prof !20, !nosanitize !9

bb.bv:                                            ; preds = %bb.bu
  %i.pw = extractvalue { i32, i1 } %i.pu, 0, !nosanitize !9 ; 2 uses
  %i.px = sext i32 %i.pw to i64                   ; 2 uses
  %i.py = getelementptr inbounds [4 x i8], ptr %.fr7125, i64 %i.px ; 2 uses
  %i.pz = shl nsw i64 %i.px, 2
  %i.qa = add i64 %i.pz, %i.hc, !nosanitize !9    ; 3 uses
  %i.qb = icmp ne i64 %i.qa, 0
  %i.qc = icmp uge i64 %i.qa, %i.hc, !nosanitize !9
  %i.qd = icmp slt i32 %i.pw, 0
  %i.qe = xor i1 %i.qd, %i.qc
  %i.qf = and i1 %i.qb, %i.qe, !nosanitize !9
  br i1 %i.qf, label %bb.bw, label %.split4090.us, !prof !10, !nosanitize !9

bb.bw:                                            ; preds = %bb.bv
  %i.qg = ptrtoint ptr %i.py to i64, !nosanitize !9 ; 2 uses
  %i.qh = and i64 %i.qg, 3, !nosanitize !9
  %i.qi = icmp eq i64 %i.qh, 0, !nosanitize !9
  br i1 %i.qi, label %bb.bx, label %.split4094.us.a, !prof !10, !nosanitize !9

bb.bx:                                            ; preds = %bb.bw
  %.not7118 = icmp eq i64 %i.kf, 0
  br i1 %.not7118, label %.split4097.us, label %bb.by, !prof !20, !nosanitize !9

bb.by:                                            ; preds = %bb.bx
  %i.qj = load float, ptr %i.py, align 4, !tbaa !25
  %i.qk = load float, ptr %i.kd, align 4, !tbaa !25
  %i.ql = load float, ptr %i.ks, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.qm = fmul float %.sroa.07.4.vec.extract.i, %i.ql ; 3 uses
  %.sroa.05.4.vec.insert.i1142.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.qm, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1142.us, ptr %3, align 16
  store float %i.ia, ptr %.sroa.4407.0..sroa_idx, align 8, !tbaa !25
  %i.qn = fmul float %.sroa.07.4.vec.extract.i, %i.qj ; 3 uses
  %.sroa.05.4.vec.insert.i1150.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.qn, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1150.us, ptr %i.hg, align 4
  store float %i.io, ptr %.sroa.4394.0..sroa_idx, align 4, !tbaa !25
  br i1 %.not987, label %.split4111.us, label %bb.bz, !prof !20, !nosanitize !9

bb.bz:                                            ; preds = %bb.by
  %i.qo = fmul float %.sroa.07.4.vec.extract.i, %i.qk
  %i.qp = fsub float %i.qn, %i.qm                 ; 2 uses
  %i.qq = fsub float %i.qo, %i.qm                 ; 2 uses
  %i.qr = fmul float %i.id, %i.qp
  %i.qs = fmul float %i.ip, %i.qq
  %i.qt = fsub float %i.qr, %i.qs                 ; 3 uses
  %i.qu = fmul float %i.ip, %i.nr
  %i.qv = fmul float %i.id, %i.np
  %i.qw = fsub float %i.qu, %i.qv                 ; 3 uses
  %i.qx = fmul float %i.np, %i.qq
  %i.qy = fmul float %i.nr, %i.qp
  %i.qz = fsub float %i.qx, %i.qy                 ; 3 uses
  %i.ra = fmul float %i.qt, %i.qt
  %i.rb = fmul float %i.qw, %i.qw
  %i.rc = fadd float %i.rb, %i.ra
  %i.rd = fmul float %i.qz, %i.qz
  %i.re = fadd float %i.rd, %i.rc                 ; 2 uses
  %i.rf = fcmp ogt float %i.re, f0x057A0000
  br i1 %i.rf, label %bb.ca, label %b3Normalize.exit1030.us

bb.ca:                                            ; preds = %bb.bz
  %sqrt.us = call float @llvm.sqrt.f32(float %i.re)
  %i.rg = fdiv float 1.000000e+00, %sqrt.us       ; 3 uses
  %i.rh = fmul float %i.qt, %i.rg
  %.sroa.07.0.vec.insert.i1028.us = insertelement <2 x float> poison, float %i.rh, i64 0
  %i.ri = fmul float %i.qw, %i.rg
  %.sroa.07.4.vec.insert.i1029.us = insertelement <2 x float> %.sroa.07.0.vec.insert.i1028.us, float %i.ri, i64 1
  %i.rj = fmul float %i.qz, %i.rg
  br label %b3Normalize.exit1030.us

b3Normalize.exit1030.us:                          ; preds = %bb.ca, %bb.bz
  %.sroa.07.0.i1024.us = phi <2 x float> [ %.sroa.07.4.vec.insert.i1029.us, %bb.ca ], [ zeroinitializer, %bb.bz ]
  %.sroa.5.0.i1025.us = phi float [ %i.rj, %bb.ca ], [ 0.000000e+00, %bb.bz ]
  %i.rk = fmul float %.sroa.03.4.vec.extract.i.i.us, %i.qn
  %i.rl = fadd float %i.or, %i.rk
  %i.rm = fmul float %i.io, %.sroa.5.0.i.i.us
  %i.rn = fadd float %i.rm, %i.rl
  %i.ro = fsub float %i.rn, %i.nn                 ; 2 uses
  %i.rp = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.07.0.i1024.us ; 2 uses
  %shift11174 = shufflevector <2 x float> %i.rp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11175 = fadd <2 x float> %i.rp, %shift11174
  %i.rq = extractelement <2 x float> %foldExtExtBinop11175, i64 0
  %i.rr = fmul float %.sroa.5.0.i.i.us, %.sroa.5.0.i1025.us
  %i.rs = fadd float %i.rr, %i.rq
  %i.rt = fcmp ogt float %i.ro, 0.000000e+00
  %i.ru = fcmp ogt float %i.rs, 9.962000e-01      ; 2 uses
  %or.cond999.us = select i1 %i.rt, i1 true, i1 %i.ru
  %i.rv = or disjoint i32 %.1891.us, 4
  %.2.us = select i1 %or.cond999.us, i32 %i.rv, i32 %.1891.us ; 2 uses
  %i.rw = fcmp olt float %i.ro, 0.000000e+00
  %or.cond1000.us = select i1 %i.rw, i1 true, i1 %i.ru
  %i.rx = or disjoint i32 %.2.us, 64
  %.3.us = select i1 %or.cond1000.us, i32 %i.rx, i32 %.2.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.cb

bb.cb:                                            ; preds = %b3Normalize.exit1030.us, %bb.br, %bb.bp
  %.4.us = phi i32 [ %.3.us, %b3Normalize.exit1030.us ], [ %.1891.us, %bb.br ], [ %.1891.us, %bb.bp ] ; 3 uses
  br i1 %i.is, label %.split4113.us.a, label %bb.cc, !prof !20, !nosanitize !9

bb.cc:                                            ; preds = %bb.cb
  %i.ry = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ir, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.rz = extractvalue { i32, i1 } %i.ry, 0, !nosanitize !9 ; 2 uses
  %i.sa = extractvalue { i32, i1 } %i.ry, 1, !nosanitize !9
  br i1 %i.sa, label %.split4116.us, label %bb.cd, !prof !20, !nosanitize !9

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.it, label %bb.ce, label %bb.cn

bb.ce:                                            ; preds = %bb.cd
  %i.sb = sext i32 %i.rz to i64                   ; 2 uses
  %i.sc = add i64 %i.bs, %i.sb, !nosanitize !9    ; 3 uses
  %i.sd = icmp ne i64 %i.sc, 0
  %i.se = icmp uge i64 %i.sc, %i.bs, !nosanitize !9
  %i.sf = icmp slt i32 %i.rz, 0
  %i.sg = xor i1 %i.sf, %i.se
  %i.sh = and i1 %i.sd, %i.sg, !nosanitize !9
  br i1 %i.sh, label %bb.cf, label %.split4120.us, !prof !10, !nosanitize !9

bb.cf:                                            ; preds = %bb.ce
  %i.si = getelementptr inbounds i8, ptr %i.bu, i64 %i.sb
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !41
  %.not989.us = icmp eq i8 %i.sj, -1
  br i1 %.not989.us, label %bb.cn, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.ix, label %.split4126.us.a, label %bb.ch, !prof !20, !nosanitize !9

bb.ch:                                            ; preds = %bb.cg
end_hunk_0
