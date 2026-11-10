Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btReducedDeformableBody?download=true
inline.NumInlined: 956
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN23btReducedDeformableBody32updateExternalForceProjectMatrixEb:bb.a
  %i.lf = or disjoint i64 %index338, 1            ; 2 uses
  %i.lg = or disjoint i64 %index338, 2            ; 2 uses
  %i.lh = or disjoint i64 %index338, 3            ; 2 uses
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %index338 ; 3 uses
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.lf ; 3 uses
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.lg ; 3 uses
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.lh ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lq = load float, ptr %i.lm, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %i.lr = load float, ptr %i.ln, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %i.ls = load float, ptr %i.lo, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %i.lt = load float, ptr %i.lp, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %i.lu = insertelement <4 x float> poison, float %i.lq, i64 0
  %i.lv = insertelement <4 x float> %i.lu, float %i.lr, i64 1
  %i.lw = insertelement <4 x float> %i.lv, float %i.ls, i64 2
  %i.lx = insertelement <4 x float> %i.lw, float %i.lt, i64 3 ; 7 uses
  %i.ly = fneg <4 x float> %i.lx                  ; 6 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.md = load float, ptr %i.lz, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %i.me = load float, ptr %i.ma, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %i.mf = load float, ptr %i.mb, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %i.mg = load float, ptr %i.mc, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %i.mh = insertelement <4 x float> poison, float %i.md, i64 0
  %i.mi = insertelement <4 x float> %i.mh, float %i.me, i64 1
  %i.mj = insertelement <4 x float> %i.mi, float %i.mf, i64 2
  %i.mk = insertelement <4 x float> %i.mj, float %i.mg, i64 3 ; 7 uses
  %i.ml = load float, ptr %i.li, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %i.mm = load float, ptr %i.lj, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %i.mn = load float, ptr %i.lk, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %i.mo = load float, ptr %i.ll, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %i.mp = insertelement <4 x float> poison, float %i.ml, i64 0
  %i.mq = insertelement <4 x float> %i.mp, float %i.mm, i64 1
  %i.mr = insertelement <4 x float> %i.mq, float %i.mn, i64 2
  %i.ms = insertelement <4 x float> %i.mr, float %i.mo, i64 3 ; 7 uses
  %i.mt = fneg <4 x float> %i.ms                  ; 6 uses
  %i.mu = fneg <4 x float> %i.mk                  ; 6 uses
  %i.mv = mul nuw nsw i64 %index338, 3            ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.mv ; 3 uses
  %.idx373 = mul nuw nsw i64 %i.lf, 12
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.idx373 ; 3 uses
  %.idx374 = mul nuw nsw i64 %i.lg, 12
  %i.my = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.idx374 ; 3 uses
  %.idx375 = mul nuw nsw i64 %i.lh, 12
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.idx375 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.ni = load float, ptr %i.mw, align 4, !tbaa !142, !alias.scope !245
  %i.nj = load float, ptr %i.mx, align 4, !tbaa !142, !alias.scope !245
  %i.nk = load float, ptr %i.my, align 4, !tbaa !142, !alias.scope !245
  %i.nl = load float, ptr %i.mz, align 4, !tbaa !142, !alias.scope !245
  %i.nm = insertelement <4 x float> poison, float %i.ni, i64 0
  %i.nn = insertelement <4 x float> %i.nm, float %i.nj, i64 1
  %i.no = insertelement <4 x float> %i.nn, float %i.nk, i64 2
  %i.np = insertelement <4 x float> %i.no, float %i.nl, i64 3 ; 3 uses
  %i.nq = load float, ptr %i.na, align 4, !tbaa !142, !alias.scope !245
  %i.nr = load float, ptr %i.nb, align 4, !tbaa !142, !alias.scope !245
  %i.ns = load float, ptr %i.nc, align 4, !tbaa !142, !alias.scope !245
  %i.nt = load float, ptr %i.nd, align 4, !tbaa !142, !alias.scope !245
  %i.nu = insertelement <4 x float> poison, float %i.nq, i64 0
  %i.nv = insertelement <4 x float> %i.nu, float %i.nr, i64 1
  %i.nw = insertelement <4 x float> %i.nv, float %i.ns, i64 2
  %i.nx = insertelement <4 x float> %i.nw, float %i.nt, i64 3 ; 3 uses
  %i.ny = load float, ptr %i.ne, align 4, !tbaa !142, !alias.scope !245
  %i.nz = load float, ptr %i.nf, align 4, !tbaa !142, !alias.scope !245
  %i.oa = load float, ptr %i.ng, align 4, !tbaa !142, !alias.scope !245
  %i.ob = load float, ptr %i.nh, align 4, !tbaa !142, !alias.scope !245
  %i.oc = insertelement <4 x float> poison, float %i.ny, i64 0
  %i.od = insertelement <4 x float> %i.oc, float %i.nz, i64 1
  %i.oe = insertelement <4 x float> %i.od, float %i.oa, i64 2
  %i.of = insertelement <4 x float> %i.oe, float %i.ob, i64 3 ; 3 uses
  %i.og = fmul <4 x float> %broadcast.splat, %i.ly
  %i.oh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat340, <4 x float> zeroinitializer, <4 x float> %i.og)
  %i.oi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat342, <4 x float> %i.mk, <4 x float> %i.oh) ; 3 uses
  %i.oj = fmul <4 x float> %broadcast.splat334, %i.ly
  %i.ok = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat344, <4 x float> zeroinitializer, <4 x float> %i.oj)
  %i.ol = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat346, <4 x float> %i.mk, <4 x float> %i.ok) ; 3 uses
  %i.om = fmul <4 x float> %broadcast.splat336, %i.ly
  %i.on = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat348, <4 x float> zeroinitializer, <4 x float> %i.om)
  %i.oo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat350, <4 x float> %i.mk, <4 x float> %i.on) ; 3 uses
  %i.op = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat340, <4 x float> %i.lx, <4 x float> %i.lc)
  %i.oq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat342, <4 x float> %i.mt, <4 x float> %i.op) ; 3 uses
  %i.or = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat344, <4 x float> %i.lx, <4 x float> %i.ld)
  %i.os = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat346, <4 x float> %i.mt, <4 x float> %i.or) ; 3 uses
  %i.ot = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat348, <4 x float> %i.lx, <4 x float> %i.le)
  %i.ou = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat350, <4 x float> %i.mt, <4 x float> %i.ot) ; 3 uses
  %i.ov = fmul <4 x float> %i.ms, %broadcast.splat
  %i.ow = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat340, <4 x float> %i.mu, <4 x float> %i.ov)
  %i.ox = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat342, <4 x float> zeroinitializer, <4 x float> %i.ow) ; 3 uses
  %i.oy = fmul <4 x float> %i.ms, %broadcast.splat334
  %i.oz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat344, <4 x float> %i.mu, <4 x float> %i.oy)
  %i.pa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat346, <4 x float> zeroinitializer, <4 x float> %i.oz) ; 3 uses
  %i.pb = fmul <4 x float> %i.ms, %broadcast.splat336
  %i.pc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat348, <4 x float> %i.mu, <4 x float> %i.pb)
  %i.pd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat350, <4 x float> zeroinitializer, <4 x float> %i.pc) ; 3 uses
  %i.pe = fmul <4 x float> %i.lx, %i.ol
  %i.pf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oi, <4 x float> zeroinitializer, <4 x float> %i.pe)
  %i.pg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mu, <4 x float> %i.oo, <4 x float> %i.pf)
  %i.ph = fmul <4 x float> %i.ol, zeroinitializer
  %i.pi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ly, <4 x float> %i.oi, <4 x float> %i.ph)
  %i.pj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ms, <4 x float> %i.oo, <4 x float> %i.pi)
  %i.pk = fmul <4 x float> %i.ol, %i.mt
  %i.pl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mk, <4 x float> %i.oi, <4 x float> %i.pk)
  %i.pm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oo, <4 x float> zeroinitializer, <4 x float> %i.pl)
  %i.pn = fmul <4 x float> %i.lx, %i.os
  %i.po = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oq, <4 x float> zeroinitializer, <4 x float> %i.pn)
  %i.pp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mu, <4 x float> %i.ou, <4 x float> %i.po)
  %i.pq = fmul <4 x float> %i.os, zeroinitializer
  %i.pr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ly, <4 x float> %i.oq, <4 x float> %i.pq)
  %i.ps = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ms, <4 x float> %i.ou, <4 x float> %i.pr)
  %i.pt = fmul <4 x float> %i.os, %i.mt
  %i.pu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mk, <4 x float> %i.oq, <4 x float> %i.pt)
  %i.pv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ou, <4 x float> zeroinitializer, <4 x float> %i.pu)
  %i.pw = fmul <4 x float> %i.lx, %i.pa
  %i.px = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> zeroinitializer, <4 x float> %i.pw)
  %i.py = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mu, <4 x float> %i.pd, <4 x float> %i.px)
  %i.pz = fmul <4 x float> %i.pa, zeroinitializer
  %i.qa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ly, <4 x float> %i.ox, <4 x float> %i.pz)
  %i.qb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ms, <4 x float> %i.pd, <4 x float> %i.qa)
  %i.qc = fmul <4 x float> %i.pa, %i.mt
  %i.qd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mk, <4 x float> %i.ox, <4 x float> %i.qc)
  %i.qe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pd, <4 x float> zeroinitializer, <4 x float> %i.qd)
  %i.qf = fmul <4 x float> %i.nx, %i.pj
  %i.qg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pg, <4 x float> %i.np, <4 x float> %i.qf)
  %i.qh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pm, <4 x float> %i.of, <4 x float> %i.qg)
  %i.qi = fmul <4 x float> %i.nx, %i.ps
  %i.qj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pp, <4 x float> %i.np, <4 x float> %i.qi)
  %i.qk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pv, <4 x float> %i.of, <4 x float> %i.qj)
  %i.ql = fmul <4 x float> %i.nx, %i.qb
  %i.qm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.py, <4 x float> %i.np, <4 x float> %i.ql)
  %i.qn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qe, <4 x float> %i.of, <4 x float> %i.qm)
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %index338
  %wide.load351 = load <4 x float>, ptr %i.qo, align 4, !tbaa !142, !alias.scope !246 ; 3 uses
  %i.qp = fmul <4 x float> %wide.load351, %i.qh
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.mv
  %i.qr = fmul <4 x float> %wide.load351, %i.qk
  %i.qs = fmul <4 x float> %wide.load351, %i.qn
  %i.qt = shufflevector <4 x float> %i.qp, <4 x float> %i.qr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qu = shufflevector <4 x float> %i.qs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.qt, <8 x float> %i.qu, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.qq, align 4, !tbaa !142, !alias.scope !247, !noalias !248
  %index.next352 = add nuw i64 %index338, 4       ; 2 uses
  %i.qv = icmp eq i64 %index.next352, %n.vec332
  br i1 %i.qv, label %scalar.ph317.preheader, label %vector.body337, !llvm.loop !238

._crit_edge199:                                   ; preds = %scalar.ph317, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit116
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.qw = load i32, ptr %i.hi, align 8, !tbaa !139
  %i.qx = sext i32 %i.qw to i64
  %i.qy = icmp slt i64 %indvars.iv.next221, %i.qx
  br i1 %i.qy, label %bb.y, label %._crit_edge203, !llvm.loop !239

scalar.ph317:                                     ; preds = %scalar.ph317.preheader, %scalar.ph317
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %scalar.ph317 ], [ %indvars.iv215.ph, %scalar.ph317.preheader ] ; 4 uses
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %indvars.iv215 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %i.rc = mul nuw nsw i64 %indvars.iv215, 3       ; 4 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.rc ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rg = load float, ptr %i.rd, align 4, !tbaa !142 ; 3 uses
  %i.rh = load float, ptr %i.re, align 4, !tbaa !142 ; 3 uses
  %i.ri = load float, ptr %i.rf, align 4, !tbaa !142 ; 3 uses
  %i.rj = load <3 x float>, ptr %i.ho, align 8, !tbaa !142, !noalias !249 ; 2 uses
  %i.rk = shufflevector <3 x float> %i.rj, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.rl = load <1 x float>, ptr %i.hr, align 4
  %i.rm = load <3 x float>, ptr %i.hp, align 8, !tbaa !142, !noalias !249 ; 3 uses
  %i.rn = shufflevector <3 x float> %i.rm, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ro = load float, ptr %i.hs, align 4, !tbaa !142, !noalias !249 ; 2 uses
  %i.rp = load <3 x float>, ptr %i.hq, align 8, !tbaa !142, !noalias !249 ; 2 uses
  %i.rq = shufflevector <3 x float> %i.rp, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.rr = load <1 x float>, ptr %i.ht, align 4
  %i.rs = extractelement <3 x float> %i.rm, i64 2
  %i.rt = extractelement <3 x float> %i.rm, i64 0
  %i.ru = load <2 x float>, ptr %i.qz, align 4, !tbaa !142, !noalias !244 ; 3 uses
  %i.rv = extractelement <2 x float> %i.ru, i64 0 ; 4 uses
  %i.rw = fneg float %i.rv                        ; 4 uses
  %i.rx = shufflevector <2 x float> %i.ru, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison> ; 2 uses
  %i.ry = insertelement <4 x float> %i.rx, float %i.rw, i64 1
  %i.rz = shufflevector <4 x float> %i.ry, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sa = insertelement <4 x float> %i.rx, float 0.000000e+00, i64 3 ; 2 uses
  %i.sb = load <2 x float>, ptr %i.rb, align 4, !tbaa !142, !noalias !244 ; 3 uses
  %i.sc = load float, ptr %i.ra, align 4, !tbaa !142, !noalias !244 ; 3 uses
  %i.sd = fneg float %i.sc                        ; 4 uses
  %i.se = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.sd, i64 0
  %i.sf = shufflevector <4 x float> %i.se, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sg = fmul <4 x float> %i.rn, %i.sf
  %i.sh = shufflevector <2 x float> %i.sb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %4 = shufflevector <4 x float> %i.sh, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.si = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rk, <4 x float> %4, <4 x float> %i.sg)
  %i.sj = fmul float %i.rs, 0.000000e+00
  %i.sk = extractelement <2 x float> %i.sb, i64 0 ; 2 uses
  %i.sl = fneg float %i.sk                        ; 6 uses
  %i.sm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rq, <4 x float> %i.rz, <4 x float> %i.si) ; 8 uses
  %i.sn = fmul float %i.rv, %i.rt
  %i.so = shufflevector <3 x float> %i.rj, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.sp = shufflevector <2 x float> %i.sb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sq = insertelement <2 x float> %i.sp, float %i.sl, i64 1
  %i.sr = insertelement <2 x float> poison, float %i.sj, i64 0
  %i.ss = insertelement <2 x float> %i.sr, float %i.sn, i64 1
  %i.st = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.so, <2 x float> %i.sq, <2 x float> %i.ss)
  %i.su = shufflevector <3 x float> %i.rp, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.sv = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rw, i64 0 ; 3 uses
  %i.sw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.su, <2 x float> %i.sv, <2 x float> %i.st) ; 2 uses
  %i.sx = shufflevector <2 x float> %i.sw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.sy = extractelement <4 x float> %i.sm, i64 1 ; 2 uses
  %i.sz = extractelement <4 x float> %i.sm, i64 0
  %i.ta = extractelement <4 x float> %i.sm, i64 2
  %i.tb = fmul float %i.sy, 0.000000e+00
  %i.tc = call float @llvm.fmuladd.f32(float %i.sd, float %i.sz, float %i.tb)
  %i.td = fmul float %i.sy, %i.rw
  %i.te = extractelement <4 x float> %i.sm, i64 3
  %i.tf = insertelement <4 x float> %i.sa, float %i.sd, i64 1
  %i.tg = shufflevector <4 x float> %i.sm, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 3>
  %i.th = insertelement <4 x float> poison, float %i.td, i64 0
  %i.ti = extractelement <2 x float> %i.sw, i64 0 ; 2 uses
  %i.tj = fmul float %i.ro, 0.000000e+00
  %i.tk = fmul float %i.rv, %i.ro
  %i.tl = shufflevector <1 x float> %i.rl, <1 x float> poison, <2 x i32> zeroinitializer
  %i.tm = insertelement <2 x float> poison, float %i.sc, i64 0 ; 2 uses
  %i.tn = insertelement <2 x float> %i.tm, float %i.sl, i64 1
  %i.to = insertelement <2 x float> poison, float %i.tj, i64 0
  %i.tp = insertelement <2 x float> %i.to, float %i.tk, i64 1
  %i.tq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tl, <2 x float> %i.tn, <2 x float> %i.tp)
  %i.tr = shufflevector <1 x float> %i.rr, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ts = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tr, <2 x float> %i.sv, <2 x float> %i.tq) ; 2 uses
  %i.tt = shufflevector <2 x float> %i.ts, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.tu = shufflevector <2 x float> %i.tm, <2 x float> %i.sv, <4 x i32> <i32 0, i32 poison, i32 2, i32 0>
  %i.tv = insertelement <4 x float> %i.tu, float 0.000000e+00, i64 1
  %i.tw = fmul <4 x float> %i.tt, %i.tv           ; 3 uses
  %i.tx = shufflevector <4 x float> %i.th, <4 x float> %i.tw, <4 x i32> <i32 0, i32 5, i32 poison, i32 4>
  %i.ty = insertelement <4 x float> %i.tx, float %i.tc, i64 2
  %i.tz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tf, <4 x float> %i.tg, <4 x float> %i.ty) ; 4 uses
  %i.ua = extractelement <4 x float> %i.tz, i64 0
  %i.ub = call noundef float @llvm.fmuladd.f32(float %i.ta, float 0.000000e+00, float %i.ua)
  %i.uc = extractelement <4 x float> %i.tz, i64 3
  %i.ud = call noundef float @llvm.fmuladd.f32(float %i.sl, float %i.ti, float %i.uc)
  %i.ue = extractelement <4 x float> %i.tz, i64 1
  %i.uf = call noundef float @llvm.fmuladd.f32(float %i.rv, float %i.ti, float %i.ue)
  %i.ug = extractelement <4 x float> %i.tw, i64 2
  %i.uh = call float @llvm.fmuladd.f32(float %i.sk, float %i.te, float %i.ug)
  %i.ui = extractelement <2 x float> %i.ts, i64 1 ; 2 uses
  %i.uj = fmul float %i.ui, 0.000000e+00
  %i.uk = fmul float %i.ui, %i.rw
  %i.ul = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.sd, i64 2
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> %i.sh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.un = insertelement <4 x float> poison, float %i.uh, i64 0
  %i.uo = shufflevector <4 x float> %i.un, <4 x float> %i.tw, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.up = insertelement <4 x float> %i.uo, float %i.uj, i64 2
  %i.uq = insertelement <4 x float> %i.up, float %i.uk, i64 3
  %i.ur = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.um, <4 x float> %i.sx, <4 x float> %i.uq) ; 2 uses
  %i.us = extractelement <4 x float> %i.tz, i64 2
  %i.ut = insertelement <2 x float> %i.ru, float %i.sc, i64 1
  %i.uu = shufflevector <4 x float> %i.rn, <4 x float> %i.sm, <2 x i32> <i32 2, i32 5>
  %i.uv = fmul <2 x float> %i.ut, %i.uu
  %i.uw = shufflevector <4 x float> %i.rk, <4 x float> %i.sm, <2 x i32> <i32 2, i32 4>
  %i.ux = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sl, i64 0
  %i.uy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uw, <2 x float> %i.ux, <2 x float> %i.uv)
  %i.uz = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.sl, i64 1
  %i.va = shufflevector <4 x float> %i.rq, <4 x float> %i.sm, <2 x i32> <i32 2, i32 6>
  %i.vb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uz, <2 x float> %i.va, <2 x float> %i.uy)
  %i.vc = shufflevector <2 x float> %i.vb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.vd = fmul float %i.rh, %i.us
  %i.ve = insertelement <4 x float> %i.sa, float %i.rg, i64 0
  %i.vf = insertelement <4 x float> %i.ve, float %i.sl, i64 1
  %i.vg = insertelement <4 x float> %i.ur, float %i.vd, i64 0
  %i.vh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vf, <4 x float> %i.vc, <4 x float> %i.vg) ; 4 uses
  %i.vi = extractelement <4 x float> %i.vh, i64 0
  %i.vj = call noundef float @llvm.fmuladd.f32(float %i.ub, float %i.ri, float %i.vi)
  %i.vk = fmul float %i.rh, %i.uf
  %i.vl = call float @llvm.fmuladd.f32(float %i.ud, float %i.rg, float %i.vk)
  %i.vm = extractelement <4 x float> %i.ur, i64 0
  %i.vn = call noundef float @llvm.fmuladd.f32(float %i.vm, float %i.ri, float %i.vl)
  %i.vo = extractelement <4 x float> %i.vh, i64 2
  %i.vp = fmul float %i.rh, %i.vo
  %i.vq = extractelement <4 x float> %i.vh, i64 1
  %i.vr = call float @llvm.fmuladd.f32(float %i.vq, float %i.rg, float %i.vp)
  %i.vs = extractelement <4 x float> %i.vh, i64 3
  %i.vt = call noundef float @llvm.fmuladd.f32(float %i.vs, float %i.ri, float %i.vr)
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv215 ; 3 uses
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !142
  %i.vw = fmul float %i.vv, %i.vj
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.rc
  store float %i.vw, ptr %i.vx, align 4, !tbaa !142
  %i.vy = load float, ptr %i.vu, align 4, !tbaa !142
  %i.vz = fmul float %i.vy, %i.vn
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.rc
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 4
  store float %i.vz, ptr %i.wb, align 4, !tbaa !142
  %i.wc = load float, ptr %i.vu, align 4, !tbaa !142
  %i.wd = fmul float %i.wc, %i.vt
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.rc
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  store float %i.wd, ptr %i.wf, align 4, !tbaa !142
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count218
  br i1 %exitcond219.not, label %._crit_edge199, label %scalar.ph317, !llvm.loop !242

bb.ad:                                            ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.dv, %bb.r ], [ %i.du, %bb.q ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIS_IfEE6resizeEiRKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(25) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !125  ; 4 uses
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN20btAlignedObjectArrayIfED2Ev.exit
  %indvars.iv26 = phi i64 [ %i.e, %.preheader ], [ %indvars.iv.next27, %_ZN20btAlignedObjectArrayIfED2Ev.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.g = getelementptr inbounds [32 x i8], ptr %i.f, i64 %indvars.iv26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !128  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i8, ptr %i.j, align 8, !range !143
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.l, i1 false
  br i1 %or.cond.i.i, label %bb.c, label %_ZN20btAlignedObjectArrayIfED2Ev.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #23
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %bb.b, %bb.c
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %lftr.wideiv29 = trunc i64 %indvars.iv.next27 to i32
  %exitcond30.not = icmp eq i32 %i.b, %lftr.wideiv29
  br i1 %exitcond30.not, label %.loopexit, label %bb.b, !llvm.loop !250

bb.e:                                             ; preds = %bb.a
  %i.o = icmp sgt i32 %1, %i.b
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  tail call void @_ZN20btAlignedObjectArrayIS_IfEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = sext i32 %i.b to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN20btAlignedObjectArrayIfEC2ERKS0_.exit
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %_ZN20btAlignedObjectArrayIfEC2ERKS0_.exit ] ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !124
  %i.u = getelementptr inbounds [32 x i8], ptr %i.t, i64 %indvars.iv ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  store i8 1, ptr %i.v, align 8, !tbaa !127
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store ptr null, ptr %i.w, align 8, !tbaa !128
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 4 uses
  store i32 0, ptr %i.x, align 4, !tbaa !129
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !130
  %i.z = load i32, ptr %i.q, align 4, !tbaa !129  ; 6 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i: ; preds = %bb.f
  %i.ab = zext nneg i32 %i.z to i64               ; 6 uses
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  %i.ad = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ac, i32 noundef 16) ; 15 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %.pre.i.i = load i32, ptr %i.x, align 4, !tbaa !129 ; 3 uses
  %i.af = icmp sgt i32 %.pre.i.i, 0
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !128 ; 9 uses
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %.pre.i.i to i64 ; 5 uses
  %min.iters.check42 = icmp ult i32 %.pre.i.i, 8
  %i.ai = sub i64 %i.ah, %i.ae
end_hunk_0
begin_hunk_1_@_ZN23btReducedDeformableBody21updateReducedVelocityEf:bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.au = load float, ptr %i.at, align 4, !tbaa !142
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.aw = load float, ptr %i.av, align 4, !tbaa !142
  %i.ax = fadd float %i.au, %i.aw
  %i.ay = fmul float %1, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ba = load float, ptr %i.az, align 4, !tbaa !142
  %i.bb = fadd float %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store float %i.bb, ptr %i.bc, align 4, !tbaa !142
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.be = load float, ptr %i.bd, align 4, !tbaa !142
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !142
  %i.bh = fadd float %i.be, %i.bg
  %i.bi = fmul float %1, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !142
  %i.bl = fadd float %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next
  store float %i.bl, ptr %i.bm, align 4, !tbaa !142
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !269
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btReducedDeformableBody17mapToFullVelocityERK11btTransform(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2716 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !140
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 944
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %i.f = tail call { <2 x float>, <2 x float> } @_ZNK23btReducedDeformableBody23computeNodeFullVelocityERK11btTransformi(ptr noundef nonnull align 8 dereferenceable(3176) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, i32 noundef %i.e) ; 2 uses
  %i.g = extractvalue { <2 x float>, <2 x float> } %i.f, 0
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.f, 1
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.j = getelementptr inbounds nuw [256 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store <2 x float> %i.g, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store <2 x float> %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !149
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.a, align 4, !tbaa !140
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !270
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK23btReducedDeformableBody23computeNodeFullVelocityERK11btTransformi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, i32 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !142 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !142 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load float, ptr %i.d, align 4, !tbaa !142
  %i.o = load <2 x float>, ptr %1, align 4, !tbaa !142 ; 5 uses
  %i.p = load float, ptr %i.e, align 4, !tbaa !142
  %i.q = load float, ptr %i.f, align 4, !tbaa !142
  %i.r = load float, ptr %i.i, align 4, !tbaa !142
  %i.s = load <2 x float>, ptr %i.j, align 4, !tbaa !142 ; 4 uses
  %i.t = load <2 x float>, ptr %i.m, align 4, !tbaa !142 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load float, ptr %i.u, align 4, !tbaa !142 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.x = load i32, ptr %i.w, align 8, !tbaa !139  ; 5 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.split, label %.split43

.split:                                           ; preds = %bb.a
  %i.z = mul nsw i32 %2, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !124 ; 9 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !128 ; 9 uses
  %i.ae = sext i32 %i.z to i64                    ; 9 uses
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 7 uses
  %i.af = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.epil.preheader, label %.split.new

.split.new:                                       ; preds = %.split
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.split43.loopexit.unr-lcssa:                      ; preds = %._crit_edge.1
  %lcmp.mod71.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod71.not, label %.split43, label %._crit_edge.1.epil.preheader

._crit_edge.1.epil.preheader:                     ; preds = %.split43.loopexit.unr-lcssa, %._crit_edge.1.preheader
  %indvars.iv.2.epil.init = phi i64 [ 0, %._crit_edge.1.preheader ], [ %indvars.iv.next.2.1, %.split43.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init70 = phi float [ 0.000000e+00, %._crit_edge.1.preheader ], [ %i.ev, %.split43.loopexit.unr-lcssa ]
  %lcmp.mod73 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.2.epil.init
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !128
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %i.ae
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !142
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.2.epil.init
  %i.ao = load float, ptr %i.an, align 4, !tbaa !142
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ao, float %.epil.init70)
  br label %.split43

.split43:                                         ; preds = %._crit_edge.1.epil.preheader, %.split43.loopexit.unr-lcssa, %bb.a
  %.sroa.10.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.ev, %.split43.loopexit.unr-lcssa ], [ %i.ap, %._crit_edge.1.epil.preheader ] ; 2 uses
  %.sroa.6.0 = phi float [ 0.000000e+00, %bb.a ], [ %.lcssa53, %.split43.loopexit.unr-lcssa ], [ %.lcssa53, %._crit_edge.1.epil.preheader ] ; 2 uses
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.a ], [ %.lcssa54, %.split43.loopexit.unr-lcssa ], [ %.lcssa54, %._crit_edge.1.epil.preheader ] ; 2 uses
  %i.aq = shufflevector <2 x float> %i.t, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %i.ar = insertelement <2 x float> poison, float %i.q, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = fmul <2 x float> %i.aq, %i.as
  %i.au = shufflevector <2 x float> %i.o, <2 x float> %i.s, <2 x i32> <i32 1, i32 3>
  %i.av = fmul <2 x float> %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2380
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %i.az = load float, ptr %i.ay, align 8, !tbaa !142 ; 2 uses
  %i.ba = fmul float %i.p, %.sroa.6.0
  %i.bb = extractelement <2 x float> %i.o, i64 0
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %.sroa.0.0, float %i.ba)
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %.sroa.10.0, float %i.bc)
  %i.be = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 1, i32 3>
  %i.bf = insertelement <2 x float> poison, float %.sroa.6.0, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !142
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2364
  %i.bl = shufflevector <2 x float> %i.o, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %i.bm = insertelement <2 x float> poison, float %i.n, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bn, <2 x float> %i.av)
  %i.bp = shufflevector <2 x float> %i.t, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bn, <2 x float> %i.at)
  %i.br = insertelement <2 x float> poison, float %i.h, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.l, i64 1
  %i.bt = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bu, <2 x float> %i.bo) ; 2 uses
  %i.bw = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.h, i64 1
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bu, <2 x float> %i.bq) ; 2 uses
  %i.bz = extractelement <2 x float> %i.bv, i64 1
  %i.ca = fneg float %i.bz
  %i.cb = fmul float %i.az, %i.ca
  %i.cc = load float, ptr %i.ax, align 4, !tbaa !142
  %i.cd = load <2 x float>, ptr %i.aw, align 8, !tbaa !142 ; 2 uses
  %i.ce = extractelement <2 x float> %i.by, i64 0
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.ce, float %i.cb)
  %i.cg = fneg <2 x float> %i.by
  %i.ch = fmul <2 x float> %i.cd, %i.cg
  %i.ci = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cj = insertelement <2 x float> %i.ci, float %i.az, i64 0
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.bv, <2 x float> %i.ch)
  %i.cl = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  %i.cm = insertelement <2 x float> poison, float %.sroa.0.0, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cn, <2 x float> %i.bh)
  %i.cp = insertelement <2 x float> poison, float %i.l, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.v, i64 1
  %i.cr = insertelement <2 x float> poison, float %.sroa.10.0, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cs, <2 x float> %i.co)
  %i.cu = fadd float %i.cf, %i.bd
  %i.cv = fadd <2 x float> %i.ck, %i.ct
  %i.cw = fadd float %i.bj, %i.cu
  %i.cx = load <2 x float>, ptr %i.bk, align 4, !tbaa !142
  %i.cy = fadd <2 x float> %i.cx, %i.cv           ; 2 uses
  %.sroa.0.0.vec.insert.i28 = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cz = shufflevector <2 x float> %.sroa.0.0.vec.insert.i28, <2 x float> %i.cy, <2 x i32> <i32 0, i32 2>
  %3 = shufflevector <2 x float> %i.cy, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %.fca.0.insert.i31 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.cz, 0
  %.fca.1.insert.i32 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i31, <2 x float> %3, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i32

._crit_edge:                                      ; preds = %._crit_edge, %._crit_edge.preheader.new
  %indvars.iv.1 = phi i64 [ 0, %._crit_edge.preheader.new ], [ %indvars.iv.next.1.1, %._crit_edge ] ; 4 uses
  %i.da = phi float [ 0.000000e+00, %._crit_edge.preheader.new ], [ %i.ds, %._crit_edge ]
  %niter66 = phi i64 [ 0, %._crit_edge.preheader.new ], [ %niter66.next.1, %._crit_edge ]
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !128
  %i.de = getelementptr [4 x i8], ptr %i.dd, i64 %i.ae
  %i.df = getelementptr i8, ptr %i.de, i64 4
  %i.dg = load float, ptr %i.df, align 4, !tbaa !142
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.1
  %i.di = load float, ptr %i.dh, align 4, !tbaa !142
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.di, float %i.da)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.next.1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !128
  %i.dn = getelementptr [4 x i8], ptr %i.dm, i64 %i.ae
  %i.do = getelementptr i8, ptr %i.dn, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !142
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.1
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !142
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.dr, float %i.dj) ; 3 uses
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %niter66.next.1 = add i64 %niter66, 2           ; 2 uses
  %niter66.ncmp.1 = icmp eq i64 %niter66.next.1, %unroll_iter65
  br i1 %niter66.ncmp.1, label %._crit_edge.1.preheader.unr-lcssa, label %._crit_edge, !llvm.loop !271

._crit_edge.1.preheader.unr-lcssa:                ; preds = %._crit_edge
  %lcmp.mod62.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod62.not, label %._crit_edge.1.preheader, label %._crit_edge.epil.preheader

._crit_edge.epil.preheader:                       ; preds = %._crit_edge.1.preheader.unr-lcssa, %._crit_edge.preheader
  %indvars.iv.1.epil.init = phi i64 [ 0, %._crit_edge.preheader ], [ %indvars.iv.next.1.1, %._crit_edge.1.preheader.unr-lcssa ] ; 2 uses
  %.epil.init61 = phi float [ 0.000000e+00, %._crit_edge.preheader ], [ %i.ds, %._crit_edge.1.preheader.unr-lcssa ]
  %lcmp.mod64 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.1.epil.init
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !128
  %i.dw = getelementptr [4 x i8], ptr %i.dv, i64 %i.ae
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !142
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.1.epil.init
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !142
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.ea, float %.epil.init61)
  br label %._crit_edge.1.preheader

._crit_edge.1.preheader:                          ; preds = %._crit_edge.1.preheader.unr-lcssa, %._crit_edge.epil.preheader
  %.lcssa53 = phi float [ %i.ds, %._crit_edge.1.preheader.unr-lcssa ], [ %i.eb, %._crit_edge.epil.preheader ] ; 2 uses
  %xtraiter68 = and i64 %wide.trip.count, 1
  %i.ec = icmp eq i64 %i.af, 0
  br i1 %i.ec, label %._crit_edge.1.epil.preheader, label %._crit_edge.1.preheader.new

._crit_edge.1.preheader.new:                      ; preds = %._crit_edge.1.preheader
  %unroll_iter74 = and i64 %wide.trip.count, 2147483646
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.1, %._crit_edge.1.preheader.new
  %indvars.iv.2 = phi i64 [ 0, %._crit_edge.1.preheader.new ], [ %indvars.iv.next.2.1, %._crit_edge.1 ] ; 4 uses
  %i.ed = phi float [ 0.000000e+00, %._crit_edge.1.preheader.new ], [ %i.ev, %._crit_edge.1 ]
  %niter75 = phi i64 [ 0, %._crit_edge.1.preheader.new ], [ %niter75.next.1, %._crit_edge.1 ]
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !128
  %i.eh = getelementptr [4 x i8], ptr %i.eg, i64 %i.ae
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !142
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.2
  %i.el = load float, ptr %i.ek, align 4, !tbaa !142
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.el, float %i.ed)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.next.2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !128
  %i.eq = getelementptr [4 x i8], ptr %i.ep, i64 %i.ae
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !142
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.2
  %i.eu = load float, ptr %i.et, align 4, !tbaa !142
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.es, float %i.eu, float %i.em) ; 3 uses
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %niter75.next.1 = add i64 %niter75, 2           ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %.split43.loopexit.unr-lcssa, label %._crit_edge.1, !llvm.loop !271

bb.b:                                             ; preds = %bb.b, %.split.new
  %indvars.iv = phi i64 [ 0, %.split.new ], [ %indvars.iv.next.158, %bb.b ] ; 4 uses
  %i.ew = phi float [ 0.000000e+00, %.split.new ], [ %i.fm, %bb.b ]
  %niter = phi i64 [ 0, %.split.new ], [ %niter.next.1, %bb.b ]
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !128
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.ae
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !142
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !142
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fd, float %i.ew)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !128
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ae
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !142
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !142
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.fl, float %i.fe) ; 3 uses
  %indvars.iv.next.158 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.preheader.unr-lcssa, label %bb.b, !llvm.loop !271

._crit_edge.preheader.unr-lcssa:                  ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.preheader.unr-lcssa, %.split
  %indvars.iv.epil.init = phi i64 [ 0, %.split ], [ %indvars.iv.next.158, %._crit_edge.preheader.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ 0.000000e+00, %.split ], [ %i.fm, %._crit_edge.preheader.unr-lcssa ]
  %lcmp.mod56 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !128
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.ae
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !142
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.epil.init
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !142
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.ft, float %.epil.init)
  br label %._crit_edge.preheader

._crit_edge.preheader:                            ; preds = %._crit_edge.preheader.unr-lcssa, %.epil.preheader
  %.lcssa54 = phi float [ %i.fm, %._crit_edge.preheader.unr-lcssa ], [ %i.fu, %.epil.preheader ] ; 2 uses
  %xtraiter59 = and i64 %wide.trip.count, 1
  %i.fv = icmp eq i64 %i.af, 0
  br i1 %i.fv, label %._crit_edge.epil.preheader, label %._crit_edge.preheader.new

._crit_edge.preheader.new:                        ; preds = %._crit_edge.preheader
  %unroll_iter65 = and i64 %wide.trip.count, 2147483646
  br label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK23btReducedDeformableBody27computeTotalAngularMomentumEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2612
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2632
  %i.f = load float, ptr %i.e, align 8, !tbaa !142, !noalias !278 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %i.h = load float, ptr %i.g, align 8, !tbaa !142, !noalias !278 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2628
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.k = load float, ptr %i.j, align 8, !tbaa !142, !noalias !278 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2380
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %i.o = load float, ptr %i.i, align 4, !tbaa !142, !noalias !278 ; 2 uses
  %i.p = load <2 x float>, ptr %i.d, align 8, !tbaa !142, !noalias !278 ; 3 uses
  %i.q = load float, ptr %i.c, align 4, !tbaa !142, !noalias !278 ; 2 uses
  %i.r = load <2 x float>, ptr %i.b, align 8, !tbaa !142, !noalias !278 ; 3 uses
  %i.s = load <2 x float>, ptr %i.a, align 8, !tbaa !142, !noalias !278 ; 5 uses
  %i.t = load float, ptr %i.l, align 8, !tbaa !142 ; 2 uses
  %i.u = load float, ptr %i.m, align 4, !tbaa !142 ; 2 uses
  %i.v = load float, ptr %i.n, align 8, !tbaa !142 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2716
  %i.x = load i32, ptr %i.w, align 4, !tbaa !140  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge114

.lr.ph:                                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2324
  %i.aa = load float, ptr %i.z, align 4, !tbaa !142, !noalias !279
  %i.ab = fneg float %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !142, !noalias !279 ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  %i.af = fneg float %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !142, !noalias !279 ; 2 uses
  %i.ai = fneg float %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !132
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2484
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2500
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !142 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2516
  %i.at = load <2 x float>, ptr %i.aj, align 8, !tbaa !142 ; 3 uses
  %i.au = load <2 x float>, ptr %i.an, align 8, !tbaa !142 ; 2 uses
  %i.av = load float, ptr %i.ao, align 4, !tbaa !142
  %i.aw = load <2 x float>, ptr %i.ar, align 8, !tbaa !142 ; 3 uses
  %i.ax = load <2 x float>, ptr %i.am, align 4, !tbaa !142 ; 3 uses
  %i.ay = load <2 x float>, ptr %i.as, align 4, !tbaa !142 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !139 ; 5 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !128
  %wide.trip.count128 = zext nneg i32 %i.x to i64
  %wide.trip.count = zext i32 %i.ba to i64        ; 7 uses
  %i.bg = insertelement <3 x float> <float poison, float 0.000000e+00, float poison>, float %i.ab, i64 0
  %i.bh = insertelement <3 x float> %i.bg, float %i.ah, i64 2
  %i.bi = shufflevector <2 x float> %i.ad, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bj = insertelement <3 x float> %i.bi, float 0.000000e+00, i64 0
  %i.bk = insertelement <3 x float> %i.bj, float %i.af, i64 2
  %i.bl = insertelement <3 x float> %i.bi, float 0.000000e+00, i64 2
  %i.bm = insertelement <3 x float> %i.bl, float %i.ai, i64 1
  %i.bn = extractelement <2 x float> %i.au, i64 0
  %i.bo = shufflevector <2 x float> %i.aw, <2 x float> %i.at, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.bp = shufflevector <2 x float> %i.au, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bq = shufflevector <3 x float> %i.bo, <3 x float> %i.bp, <3 x i32> <i32 0, i32 1, i32 3>
  %i.br = shufflevector <2 x float> %i.aw, <2 x float> %i.at, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.bs = shufflevector <3 x float> %i.br, <3 x float> %i.bp, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bt = shufflevector <2 x float> %i.at, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bu = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <3 x i32> <i32 3, i32 1, i32 poison>
  %i.bv = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 1, i32 3>
  %i.bw = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.bx = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.by = load ptr, ptr %i.bc, align 8            ; 9 uses
  %i.bz = load ptr, ptr %i.bd, align 8            ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ca = icmp eq i64 %i.bx, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod146 = trunc i32 %i.ba to i1
  %xtraiter149 = and i64 %wide.trip.count, 1
  %i.cb = icmp eq i64 %i.bx, 0
  %unroll_iter155 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod152.not = icmp eq i64 %xtraiter149, 0
  %lcmp.mod154 = trunc i32 %i.ba to i1
  %xtraiter158 = and i64 %wide.trip.count, 1
  %i.cc = icmp eq i64 %i.bx, 0
  %unroll_iter164 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod161.not = icmp eq i64 %xtraiter158, 0
  %lcmp.mod163 = trunc i32 %i.ba to i1
  %i.cd = insertelement <3 x float> %i.bu, float %i.aq, i64 2
  br label %bb.b

._crit_edge114:                                   ; preds = %.split108, %bb.a
  %.sroa.087.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.hc, %.split108 ]
  %i.ce = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.hd, %.split108 ]
  %i.cf = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cg = insertelement <2 x float> %i.cf, float %i.h, i64 0 ; 2 uses
  %i.ch = fneg <2 x float> %i.cg
  %i.ci = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cj = insertelement <2 x float> %i.ci, float %i.f, i64 0 ; 2 uses
  %i.ck = fneg <2 x float> %i.cj                  ; 2 uses
  %i.cl = fneg <2 x float> %i.p
  %i.cm = fneg float %i.o
  %i.cn = fmul float %i.h, %i.cm
  %i.co = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.f, float %i.cn) ; 2 uses
  %i.cp = fneg float %i.q
  %i.cq = fmul float %i.k, %i.cp
  %i.cr = extractelement <2 x float> %i.s, i64 1  ; 3 uses
  %i.cs = tail call noundef float @llvm.fmuladd.f32(float %i.cr, float %i.h, float %i.cq)
  %i.ct = extractelement <2 x float> %i.ck, i64 0
  %i.cu = fmul float %i.cr, %i.ct
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.o, float %i.cu)
  %i.cw = fmul <2 x float> %i.r, %i.ck
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.p, <2 x float> %i.cw) ; 3 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  %i.cz = fmul float %i.cr, %i.cy
  %i.da = extractelement <2 x float> %i.s, i64 0
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.co, float %i.cz)
  %i.dc = extractelement <2 x float> %i.cx, i64 1
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.dc, float %i.db)
  %i.de = fdiv float 1.000000e+00, %i.dd          ; 4 uses
  %i.df = fmul <2 x float> %i.s, %i.ch
  %i.dg = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dh = insertelement <2 x float> %i.dg, float %i.k, i64 0 ; 2 uses
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.r, <2 x float> %i.df)
  %i.dj = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dl = fmul <2 x float> %i.di, %i.dk
  %i.dm = fmul <2 x float> %i.cx, %i.dk
  %i.dn = fmul <2 x float> %i.dh, %i.cl
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.cj, <2 x float> %i.dn)
  %i.dp = fmul <2 x float> %i.do, %i.dk
  %i.dq = insertelement <2 x float> poison, float %i.u, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %i.dr, %i.dp
  %i.dt = insertelement <2 x float> poison, float %i.t, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.du, <2 x float> %i.ds)
  %i.dw = insertelement <2 x float> poison, float %i.v, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dx, <2 x float> %i.dv)
  %i.dz = fmul float %i.cs, %i.de
  %i.ea = fmul float %i.co, %i.de
  %i.eb = fmul float %i.cv, %i.de
  %i.ec = fmul float %i.u, %i.eb
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.t, float %i.ec)
  %i.ee = tail call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.v, float %i.ed)
  %i.ef = fadd float %i.ee, %.sroa.087.0.lcssa
  %i.eg = fadd <2 x float> %i.dy, %i.ce           ; 2 uses
  %.sroa.0.0.vec.insert.i15 = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.eh = shufflevector <2 x float> %.sroa.0.0.vec.insert.i15, <2 x float> %i.eg, <2 x i32> <i32 0, i32 2>
  %1 = shufflevector <2 x float> %i.eg, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %.fca.0.insert.i18 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.eh, 0
  %.fca.1.insert.i19 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i18, <2 x float> %1, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i19

bb.b:                                             ; preds = %.lr.ph, %.split108
  %indvars.iv125 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next126, %.split108 ] ; 4 uses
  %.sroa.087.0109 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.hc, %.split108 ]
  %i.ei = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.hd, %.split108 ]
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv125 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load float, ptr %i.ej, align 4, !tbaa !142 ; 2 uses
  %i.en = load float, ptr %i.ek, align 4, !tbaa !142 ; 2 uses
  %i.eo = load float, ptr %i.el, align 4, !tbaa !142 ; 2 uses
  %i.ep = fmul float %i.en, %i.av
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.em, float %i.ep)
  %i.er = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.eo, float %i.eq) ; 3 uses
  %i.es = insertelement <2 x float> poison, float %i.en, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x float> %i.et, %i.bw
  %i.ev = insertelement <2 x float> poison, float %i.em, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.ew, <2 x float> %i.eu)
  %i.ey = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.ez, <2 x float> %i.ex) ; 6 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 1
  %i.fc = fneg float %i.fb
  %i.fd = extractelement <2 x float> %i.fa, i64 0
  %i.fe = fneg float %i.fd
  %i.ff = fneg float %i.er
  %i.fg = mul nuw nsw i64 %indvars.iv125, 3       ; 9 uses
  br i1 %i.bb, label %.split, label %.split108

.split:                                           ; preds = %bb.b
  br i1 %i.ca, label %.epil.preheader, label %.split.new

.split108.loopexit.unr-lcssa:                     ; preds = %._crit_edge.1
  br i1 %lcmp.mod161.not, label %.split108, label %._crit_edge.1.epil.preheader

._crit_edge.1.epil.preheader:                     ; preds = %.split108.loopexit.unr-lcssa, %._crit_edge.1.preheader
  %indvars.iv.2.epil.init = phi i64 [ 0, %._crit_edge.1.preheader ], [ %indvars.iv.next.2.1, %.split108.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init160 = phi float [ 0.000000e+00, %._crit_edge.1.preheader ], [ %i.iy, %.split108.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.fh = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.2.epil.init
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !128
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fg
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !142
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.2.epil.init
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !142
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.fo, float %.epil.init160)
  br label %.split108

.split108:                                        ; preds = %._crit_edge.1.epil.preheader, %.split108.loopexit.unr-lcssa, %bb.b
  %.sroa.10.0 = phi float [ 0.000000e+00, %bb.b ], [ %i.iy, %.split108.loopexit.unr-lcssa ], [ %i.fp, %._crit_edge.1.epil.preheader ]
  %.sroa.6.0 = phi float [ 0.000000e+00, %bb.b ], [ %.lcssa141, %.split108.loopexit.unr-lcssa ], [ %.lcssa141, %._crit_edge.1.epil.preheader ]
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.b ], [ %.lcssa, %.split108.loopexit.unr-lcssa ], [ %.lcssa, %._crit_edge.1.epil.preheader ]
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv125
  %i.fr = insertelement <3 x float> poison, float %.sroa.6.0, i64 0
  %i.fs = shufflevector <3 x float> %i.fr, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ft = fmul <3 x float> %i.bs, %i.fs
  %i.fu = insertelement <3 x float> poison, float %i.er, i64 0
  %i.fv = shufflevector <3 x float> %i.fu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fw = fmul <3 x float> %i.bm, %i.fv
  %i.fx = load float, ptr %i.fq, align 4, !tbaa !142 ; 2 uses
  %i.fy = insertelement <3 x float> poison, float %.sroa.0.0, i64 0
  %i.fz = shufflevector <3 x float> %i.fy, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ga = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bq, <3 x float> %i.fz, <3 x float> %i.ft)
  %i.gb = insertelement <3 x float> poison, float %.sroa.10.0, i64 0
  %i.gc = shufflevector <3 x float> %i.gb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.gd = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cd, <3 x float> %i.gc, <3 x float> %i.ga)
  %i.ge = shufflevector <2 x float> %i.fa, <2 x float> poison, <3 x i32> zeroinitializer
  %i.gf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.ge, <3 x float> %i.fw)
  %i.gg = shufflevector <2 x float> %i.fa, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.gh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bk, <3 x float> %i.gg, <3 x float> %i.gf)
  %i.gi = fsub <3 x float> %i.gd, %i.gh           ; 6 uses
  %i.gj = extractelement <3 x float> %i.gi, i64 2
  %i.gk = fmul float %i.gj, %i.fc
  %i.gl = extractelement <3 x float> %i.gi, i64 1
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float 0.000000e+00, float %i.gk)
  %i.gn = extractelement <3 x float> %i.gi, i64 0
  %i.go = tail call noundef float @llvm.fmuladd.f32(float %i.er, float %i.gn, float %i.gm)
  %2 = shufflevector <2 x float> %i.fa, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0>
  %i.gp = shufflevector <3 x float> %i.gi, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gq = fmul <2 x float> %2, %i.gp
  %i.gr = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x float> %i.gr, float %i.ff, i64 1
  %i.gt = shufflevector <3 x float> %i.gi, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.gt, <2 x float> %i.gq)
  %i.gv = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fe, i64 0
  %i.gw = shufflevector <3 x float> %i.gi, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gv, <2 x float> %i.gw, <2 x float> %i.gu)
  %i.gy = fmul float %i.fx, %i.go
  %i.gz = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x float> %i.ha, %i.gx
  %i.hc = fadd float %.sroa.087.0109, %i.gy       ; 2 uses
  %i.hd = fadd <2 x float> %i.ei, %i.hb           ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge114, label %bb.b, !llvm.loop !276

._crit_edge:                                      ; preds = %._crit_edge.preheader, %._crit_edge
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.1, %._crit_edge ], [ 0, %._crit_edge.preheader ] ; 4 uses
  %i.he = phi float [ %i.hw, %._crit_edge ], [ 0.000000e+00, %._crit_edge.preheader ]
  %niter156 = phi i64 [ %niter156.next.1, %._crit_edge ], [ 0, %._crit_edge.preheader ]
  %i.hf = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !128
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.fg
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !142
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.1
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !142
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hk, float %i.hm, float %i.he)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.next.1
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !128
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.fg
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !142
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next.1
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !142
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.hv, float %i.hn) ; 3 uses
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %niter156.next.1 = add i64 %niter156, 2         ; 2 uses
  %niter156.ncmp.1 = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %._crit_edge.1.preheader.unr-lcssa, label %._crit_edge, !llvm.loop !277

._crit_edge.1.preheader.unr-lcssa:                ; preds = %._crit_edge
  br i1 %lcmp.mod152.not, label %._crit_edge.1.preheader, label %._crit_edge.epil.preheader

._crit_edge.epil.preheader:                       ; preds = %._crit_edge.1.preheader.unr-lcssa, %._crit_edge.preheader
  %indvars.iv.1.epil.init = phi i64 [ 0, %._crit_edge.preheader ], [ %indvars.iv.next.1.1, %._crit_edge.1.preheader.unr-lcssa ] ; 2 uses
  %.epil.init151 = phi float [ 0.000000e+00, %._crit_edge.preheader ], [ %i.hw, %._crit_edge.1.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.hx = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.1.epil.init
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !128
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.fg
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !142
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.1.epil.init
  %i.ie = load float, ptr %i.id, align 4, !tbaa !142
  %i.if = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.ie, float %.epil.init151)
  br label %._crit_edge.1.preheader

._crit_edge.1.preheader:                          ; preds = %._crit_edge.1.preheader.unr-lcssa, %._crit_edge.epil.preheader
  %.lcssa141 = phi float [ %i.hw, %._crit_edge.1.preheader.unr-lcssa ], [ %i.if, %._crit_edge.epil.preheader ] ; 2 uses
  br i1 %i.cc, label %._crit_edge.1.epil.preheader, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.1.preheader, %._crit_edge.1
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.1, %._crit_edge.1 ], [ 0, %._crit_edge.1.preheader ] ; 4 uses
  %i.ig = phi float [ %i.iy, %._crit_edge.1 ], [ 0.000000e+00, %._crit_edge.1.preheader ]
  %niter165 = phi i64 [ %niter165.next.1, %._crit_edge.1 ], [ 0, %._crit_edge.1.preheader ]
  %i.ih = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.2
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !128
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.fg
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load float, ptr %i.il, align 4, !tbaa !142
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.2
  %i.io = load float, ptr %i.in, align 4, !tbaa !142
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.im, float %i.io, float %i.ig)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1 ; 2 uses
  %i.iq = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.next.2
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !128
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.fg
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !142
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next.2
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !142
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.ix, float %i.ip) ; 3 uses
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %niter165.next.1 = add i64 %niter165, 2         ; 2 uses
  %niter165.ncmp.1 = icmp eq i64 %niter165.next.1, %unroll_iter164
  br i1 %niter165.ncmp.1, label %.split108.loopexit.unr-lcssa, label %._crit_edge.1, !llvm.loop !277

.split.new:                                       ; preds = %.split, %.split.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1148, %.split.new ], [ 0, %.split ] ; 4 uses
  %i.iz = phi float [ %i.jp, %.split.new ], [ 0.000000e+00, %.split ]
  %niter = phi i64 [ %niter.next.1, %.split.new ], [ 0, %.split ]
  %i.ja = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !128
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.fg
  %i.je = load float, ptr %i.jd, align 4, !tbaa !142
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !142
  %i.jh = tail call float @llvm.fmuladd.f32(float %i.je, float %i.jg, float %i.iz)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ji = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.next
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !128
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.fg
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !142
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !142
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.jo, float %i.jh) ; 3 uses
  %indvars.iv.next.1148 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.preheader.unr-lcssa, label %.split.new, !llvm.loop !277

._crit_edge.preheader.unr-lcssa:                  ; preds = %.split.new
  br i1 %lcmp.mod.not, label %._crit_edge.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.preheader.unr-lcssa, %.split
  %indvars.iv.epil.init = phi i64 [ 0, %.split ], [ %indvars.iv.next.1148, %._crit_edge.preheader.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ 0.000000e+00, %.split ], [ %i.jp, %._crit_edge.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.jq = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.epil.init
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !128
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.fg
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !142
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.epil.init
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !142
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.jw, float %.epil.init)
  br label %._crit_edge.preheader

._crit_edge.preheader:                            ; preds = %._crit_edge.preheader.unr-lcssa, %.epil.preheader
  %.lcssa = phi float [ %i.jp, %._crit_edge.preheader.unr-lcssa ], [ %i.jx, %.epil.preheader ] ; 2 uses
  br i1 %i.cb, label %._crit_edge.epil.preheader, label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK23btReducedDeformableBody32internalComputeNodeDeltaVelocityERK11btTransformi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, i32 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !142 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !142 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load float, ptr %i.d, align 4, !tbaa !142
  %i.o = load <2 x float>, ptr %1, align 4, !tbaa !142 ; 5 uses
  %i.p = load float, ptr %i.e, align 4, !tbaa !142
  %i.q = load float, ptr %i.f, align 4, !tbaa !142
  %i.r = load float, ptr %i.i, align 4, !tbaa !142
  %i.s = load <2 x float>, ptr %i.j, align 4, !tbaa !142 ; 4 uses
  %i.t = load <2 x float>, ptr %i.m, align 4, !tbaa !142 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load float, ptr %i.u, align 4, !tbaa !142 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.x = load i32, ptr %i.w, align 8, !tbaa !139  ; 5 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.split, label %.split43

.split:                                           ; preds = %bb.a
  %i.z = mul nsw i32 %2, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !124 ; 9 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !128 ; 9 uses
  %i.ae = sext i32 %i.z to i64                    ; 9 uses
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 7 uses
  %i.af = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.epil.preheader, label %.split.new

.split.new:                                       ; preds = %.split
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.split43.loopexit.unr-lcssa:                      ; preds = %._crit_edge.1
  %lcmp.mod71.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod71.not, label %.split43, label %._crit_edge.1.epil.preheader

._crit_edge.1.epil.preheader:                     ; preds = %.split43.loopexit.unr-lcssa, %._crit_edge.1.preheader
  %indvars.iv.2.epil.init = phi i64 [ 0, %._crit_edge.1.preheader ], [ %indvars.iv.next.2.1, %.split43.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init70 = phi float [ 0.000000e+00, %._crit_edge.1.preheader ], [ %i.ev, %.split43.loopexit.unr-lcssa ]
  %lcmp.mod73 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.2.epil.init
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !128
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %i.ae
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !142
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.2.epil.init
  %i.ao = load float, ptr %i.an, align 4, !tbaa !142
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ao, float %.epil.init70)
  br label %.split43

.split43:                                         ; preds = %._crit_edge.1.epil.preheader, %.split43.loopexit.unr-lcssa, %bb.a
  %.sroa.10.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.ev, %.split43.loopexit.unr-lcssa ], [ %i.ap, %._crit_edge.1.epil.preheader ] ; 2 uses
  %.sroa.6.0 = phi float [ 0.000000e+00, %bb.a ], [ %.lcssa53, %.split43.loopexit.unr-lcssa ], [ %.lcssa53, %._crit_edge.1.epil.preheader ] ; 2 uses
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.a ], [ %.lcssa54, %.split43.loopexit.unr-lcssa ], [ %.lcssa54, %._crit_edge.1.epil.preheader ] ; 2 uses
  %i.aq = shufflevector <2 x float> %i.t, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %i.ar = insertelement <2 x float> poison, float %i.q, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = fmul <2 x float> %i.aq, %i.as
  %i.au = shufflevector <2 x float> %i.o, <2 x float> %i.s, <2 x i32> <i32 1, i32 3>
  %i.av = fmul <2 x float> %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2260
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.az = load float, ptr %i.ay, align 8, !tbaa !142 ; 2 uses
  %i.ba = fmul float %i.p, %.sroa.6.0
  %i.bb = extractelement <2 x float> %i.o, i64 0
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %.sroa.0.0, float %i.ba)
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %.sroa.10.0, float %i.bc)
  %i.be = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 1, i32 3>
  %i.bf = insertelement <2 x float> poison, float %.sroa.6.0, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !142
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2244
  %i.bl = shufflevector <2 x float> %i.o, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %i.bm = insertelement <2 x float> poison, float %i.n, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bn, <2 x float> %i.av)
  %i.bp = shufflevector <2 x float> %i.t, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bn, <2 x float> %i.at)
  %i.br = insertelement <2 x float> poison, float %i.h, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.l, i64 1
  %i.bt = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bu, <2 x float> %i.bo) ; 2 uses
  %i.bw = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.h, i64 1
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bu, <2 x float> %i.bq) ; 2 uses
  %i.bz = extractelement <2 x float> %i.bv, i64 1
  %i.ca = fneg float %i.bz
  %i.cb = fmul float %i.az, %i.ca
  %i.cc = load float, ptr %i.ax, align 4, !tbaa !142
  %i.cd = load <2 x float>, ptr %i.aw, align 8, !tbaa !142 ; 2 uses
  %i.ce = extractelement <2 x float> %i.by, i64 0
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.ce, float %i.cb)
  %i.cg = fneg <2 x float> %i.by
  %i.ch = fmul <2 x float> %i.cd, %i.cg
  %i.ci = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cj = insertelement <2 x float> %i.ci, float %i.az, i64 0
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.bv, <2 x float> %i.ch)
  %i.cl = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  %i.cm = insertelement <2 x float> poison, float %.sroa.0.0, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cn, <2 x float> %i.bh)
  %i.cp = insertelement <2 x float> poison, float %i.l, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.v, i64 1
  %i.cr = insertelement <2 x float> poison, float %.sroa.10.0, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cs, <2 x float> %i.co)
  %i.cu = fadd float %i.cf, %i.bd
  %i.cv = fadd <2 x float> %i.ck, %i.ct
  %i.cw = fadd float %i.bj, %i.cu
  %i.cx = load <2 x float>, ptr %i.bk, align 4, !tbaa !142
  %i.cy = fadd <2 x float> %i.cx, %i.cv           ; 2 uses
  %.sroa.0.0.vec.insert.i28 = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cz = shufflevector <2 x float> %.sroa.0.0.vec.insert.i28, <2 x float> %i.cy, <2 x i32> <i32 0, i32 2>
  %3 = shufflevector <2 x float> %i.cy, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %.fca.0.insert.i31 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.cz, 0
  %.fca.1.insert.i32 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i31, <2 x float> %3, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i32

._crit_edge:                                      ; preds = %._crit_edge, %._crit_edge.preheader.new
  %indvars.iv.1 = phi i64 [ 0, %._crit_edge.preheader.new ], [ %indvars.iv.next.1.1, %._crit_edge ] ; 4 uses
  %i.da = phi float [ 0.000000e+00, %._crit_edge.preheader.new ], [ %i.ds, %._crit_edge ]
  %niter66 = phi i64 [ 0, %._crit_edge.preheader.new ], [ %niter66.next.1, %._crit_edge ]
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !128
  %i.de = getelementptr [4 x i8], ptr %i.dd, i64 %i.ae
  %i.df = getelementptr i8, ptr %i.de, i64 4
  %i.dg = load float, ptr %i.df, align 4, !tbaa !142
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.1
  %i.di = load float, ptr %i.dh, align 4, !tbaa !142
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.di, float %i.da)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.next.1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !128
  %i.dn = getelementptr [4 x i8], ptr %i.dm, i64 %i.ae
  %i.do = getelementptr i8, ptr %i.dn, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !142
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.1
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !142
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.dr, float %i.dj) ; 3 uses
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %niter66.next.1 = add i64 %niter66, 2           ; 2 uses
  %niter66.ncmp.1 = icmp eq i64 %niter66.next.1, %unroll_iter65
  br i1 %niter66.ncmp.1, label %._crit_edge.1.preheader.unr-lcssa, label %._crit_edge, !llvm.loop !280

._crit_edge.1.preheader.unr-lcssa:                ; preds = %._crit_edge
  %lcmp.mod62.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod62.not, label %._crit_edge.1.preheader, label %._crit_edge.epil.preheader

._crit_edge.epil.preheader:                       ; preds = %._crit_edge.1.preheader.unr-lcssa, %._crit_edge.preheader
  %indvars.iv.1.epil.init = phi i64 [ 0, %._crit_edge.preheader ], [ %indvars.iv.next.1.1, %._crit_edge.1.preheader.unr-lcssa ] ; 2 uses
  %.epil.init61 = phi float [ 0.000000e+00, %._crit_edge.preheader ], [ %i.ds, %._crit_edge.1.preheader.unr-lcssa ]
  %lcmp.mod64 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.1.epil.init
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !128
  %i.dw = getelementptr [4 x i8], ptr %i.dv, i64 %i.ae
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !142
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.1.epil.init
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !142
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.ea, float %.epil.init61)
  br label %._crit_edge.1.preheader

._crit_edge.1.preheader:                          ; preds = %._crit_edge.1.preheader.unr-lcssa, %._crit_edge.epil.preheader
  %.lcssa53 = phi float [ %i.ds, %._crit_edge.1.preheader.unr-lcssa ], [ %i.eb, %._crit_edge.epil.preheader ] ; 2 uses
  %xtraiter68 = and i64 %wide.trip.count, 1
  %i.ec = icmp eq i64 %i.af, 0
  br i1 %i.ec, label %._crit_edge.1.epil.preheader, label %._crit_edge.1.preheader.new

._crit_edge.1.preheader.new:                      ; preds = %._crit_edge.1.preheader
  %unroll_iter74 = and i64 %wide.trip.count, 2147483646
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.1, %._crit_edge.1.preheader.new
  %indvars.iv.2 = phi i64 [ 0, %._crit_edge.1.preheader.new ], [ %indvars.iv.next.2.1, %._crit_edge.1 ] ; 4 uses
  %i.ed = phi float [ 0.000000e+00, %._crit_edge.1.preheader.new ], [ %i.ev, %._crit_edge.1 ]
  %niter75 = phi i64 [ 0, %._crit_edge.1.preheader.new ], [ %niter75.next.1, %._crit_edge.1 ]
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !128
  %i.eh = getelementptr [4 x i8], ptr %i.eg, i64 %i.ae
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !142
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.2
  %i.el = load float, ptr %i.ek, align 4, !tbaa !142
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.el, float %i.ed)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.next.2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !128
  %i.eq = getelementptr [4 x i8], ptr %i.ep, i64 %i.ae
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !142
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.2
  %i.eu = load float, ptr %i.et, align 4, !tbaa !142
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.es, float %i.eu, float %i.em) ; 3 uses
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %niter75.next.1 = add i64 %niter75, 2           ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %.split43.loopexit.unr-lcssa, label %._crit_edge.1, !llvm.loop !280

bb.b:                                             ; preds = %bb.b, %.split.new
  %indvars.iv = phi i64 [ 0, %.split.new ], [ %indvars.iv.next.158, %bb.b ] ; 4 uses
  %i.ew = phi float [ 0.000000e+00, %.split.new ], [ %i.fm, %bb.b ]
  %niter = phi i64 [ 0, %.split.new ], [ %niter.next.1, %bb.b ]
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !128
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.ae
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !142
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !142
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fd, float %i.ew)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !128
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ae
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !142
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !142
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.fl, float %i.fe) ; 3 uses
  %indvars.iv.next.158 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.preheader.unr-lcssa, label %bb.b, !llvm.loop !280

._crit_edge.preheader.unr-lcssa:                  ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.preheader.unr-lcssa, %.split
  %indvars.iv.epil.init = phi i64 [ 0, %.split ], [ %indvars.iv.next.158, %._crit_edge.preheader.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ 0.000000e+00, %.split ], [ %i.fm, %._crit_edge.preheader.unr-lcssa ]
  %lcmp.mod56 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !128
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.ae
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !142
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.epil.init
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !142
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.ft, float %.epil.init)
  br label %._crit_edge.preheader

._crit_edge.preheader:                            ; preds = %._crit_edge.preheader.unr-lcssa, %.epil.preheader
  %.lcssa54 = phi float [ %i.fm, %._crit_edge.preheader.unr-lcssa ], [ %i.fu, %.epil.preheader ] ; 2 uses
  %xtraiter59 = and i64 %wide.trip.count, 1
  %i.fv = icmp eq i64 %i.af, 0
  br i1 %i.fv, label %._crit_edge.epil.preheader, label %._crit_edge.preheader.new

._crit_edge.preheader.new:                        ; preds = %._crit_edge.preheader
  %unroll_iter65 = and i64 %wide.trip.count, 2147483646
  br label %._crit_edge
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody18proceedToTransformEfb(ptr noundef nonnull align 8 dereferenceable(3176) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2480 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, float noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.d)
  tail call void @_ZN23btReducedDeformableBody19updateInertiaTensorEv(ptr noundef nonnull align 8 dereferenceable(3176) %0)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 16, i1 false), !tbaa.struct !150
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2496
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !150
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !150
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !150
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2592
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 16, i1 false), !tbaa.struct !150
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !150
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2624
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !150
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody11transformToERK11btTransform(ptr noundef nonnull align 8 dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 16        ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2484
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %.sroa.817.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2500
  %.sroa.918.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %.sroa.1221.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2516
  %.sroa.1322.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2528
  %.sroa.17.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %.sroa.17.48.copyload = load float, ptr %.sroa.17.48..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !142, !noalias !283
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load float, ptr %i.h, align 4, !tbaa !142, !noalias !283
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load float, ptr %i.k, align 4, !tbaa !142, !noalias !283
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load <2 x float>, ptr %i.d, align 8
  %i.o = load <2 x float>, ptr %i.m, align 4, !tbaa !142
  %i.p = fsub <2 x float> %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load float, ptr %i.q, align 4, !tbaa !142
  %i.s = fsub float %i.r, %.sroa.17.48.copyload
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.s, i64 0
  %i.t = load <2 x float>, ptr %i.a, align 8      ; 2 uses
  %i.u = load <2 x float>, ptr %i.b, align 8      ; 2 uses
  %i.v = load <2 x float>, ptr %i.c, align 8      ; 2 uses
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.x = load <2 x float>, ptr %1, align 4, !tbaa !142, !noalias !283 ; 2 uses
  %i.y = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %3 = shufflevector <4 x float> %i.y, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 poison, i32 7>
  %i.z = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aa = shufflevector <4 x float> %3, <4 x float> %i.z, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ab = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ac = shufflevector <4 x float> %i.aa, <4 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ad = shufflevector <2 x float> %i.x, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ae = fmul <4 x float> %i.ac, %i.ad
  %i.af = insertelement <4 x float> %i.y, float 0.000000e+00, i64 3
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> %i.z, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ai = shufflevector <2 x float> %i.x, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.ai, <4 x float> %i.ae)
  %i.ak = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.f, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load <2 x float>, ptr %i.g, align 4, !tbaa !142, !noalias !283 ; 2 uses
  %i.ao = load <2 x float>, ptr %.sroa.413.0..sroa_idx, align 4 ; 2 uses
  %.sroa.514.0.copyload = load float, ptr %.sroa.514.0..sroa_idx, align 8
  %i.ap = load <2 x float>, ptr %.sroa.817.16..sroa_idx, align 4 ; 2 uses
  %.sroa.918.16.copyload = load float, ptr %.sroa.918.16..sroa_idx, align 8
  %i.aq = load <2 x float>, ptr %.sroa.1221.32..sroa_idx, align 4 ; 2 uses
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.1322.32.copyload = load float, ptr %.sroa.1322.32..sroa_idx, align 8
  %i.as = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %4 = shufflevector <4 x float> %i.as, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 poison, i32 7>
  %i.at = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.au = shufflevector <4 x float> %4, <4 x float> %i.at, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.av = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.al, <4 x float> %i.aj)
  %i.ay = insertelement <4 x float> %i.as, float 0.000000e+00, i64 3
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> %i.at, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.bb = shufflevector <2 x float> %i.an, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bc = fmul <4 x float> %i.ba, %i.bb
  %i.bd = shufflevector <2 x float> %i.t, <2 x float> %i.u, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.be = insertelement <4 x float> %i.bd, float 0.000000e+00, i64 3
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.bg = shufflevector <2 x float> %i.an, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.bg, <4 x float> %i.bc)
  %i.bi = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.i, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.bj, <4 x float> %i.bh)
  store <4 x float> %i.ax, ptr %2, align 16
  store <4 x float> %i.bk, ptr %i.am, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bm = load <2 x float>, ptr %i.j, align 4, !tbaa !142, !noalias !283 ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bo = shufflevector <2 x float> %i.ao, <2 x float> %i.ap, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bp = insertelement <4 x float> %i.bo, float 1.000000e+00, i64 3
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.br = fmul <4 x float> %i.bn, %i.bq
  %i.bs = shufflevector <2 x float> %i.bm, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.bs, <4 x float> %i.br)
  %i.bu = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.514.0.copyload, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %.sroa.918.16.copyload, i64 1
  %i.bw = insertelement <4 x float> %i.bv, float %.sroa.1322.32.copyload, i64 2
  %i.bx = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.l, i64 0
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.by, <4 x float> %i.bt)
  store <4 x float> %i.bz, ptr %i.bl, align 16
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.p, ptr %i.ca, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !149
  %i.cb = load ptr, ptr %0, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(3176) %0, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZN23btReducedDeformableBody17getRigidTransformEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(3176) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2480
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody9transformERK11btTransform(ptr noundef nonnull align 8 dereferenceable(3176) initializes((2065, 2066)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %struct.btDbvtAabbMm, align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2065
  store i8 1, ptr %i.a, align 1, !tbaa !141
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef float %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2528 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2536 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load <2 x float>, ptr %i.h, align 8      ; 4 uses
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 8 ; 4 uses
  %i.l = load <2 x float>, ptr %i.i, align 4      ; 2 uses
  %.sroa.19.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.2296.32.copyload = load float, ptr %i.m, align 4 ; 3 uses
  %.sroa.26.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %.sroa.26.32.copyload = load float, ptr %.sroa.26.32..sroa_idx, align 4 ; 3 uses
  %.sroa.29.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.29.32.copyload = load float, ptr %.sroa.29.32..sroa_idx, align 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !163
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.19.16.copyload = load float, ptr %.sroa.19.16..sroa_idx, align 4
  %.sroa.16.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load <2 x float>, ptr %.sroa.16.16..sroa_idx, align 4 ; 2 uses
  %i.r = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load <2 x float>, ptr %.sroa.684.0..sroa_idx, align 4 ; 2 uses
  %i.t = load <2 x float>, ptr %i.j, align 4      ; 2 uses
  %i.u = load <2 x float>, ptr %1, align 4        ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 944
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.x = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  %i.y = extractelement <2 x float> %i.k, i64 1   ; 2 uses
  %i.z = shufflevector <2 x float> %i.u, <2 x float> %i.t, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.aa = shufflevector <2 x float> %i.u, <2 x float> %i.t, <2 x i32> <i32 1, i32 3>
  %i.ab = shufflevector <2 x float> %i.s, <2 x float> %i.q, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ac = shufflevector <2 x float> %i.s, <2 x float> %i.q, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ad = insertelement <2 x float> %i.r, float %.sroa.19.16.copyload, i64 1
  %i.ae = insertelement <2 x float> poison, float %i.g, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_ZN10btSoftBody13updateNormalsEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  call void @_ZN10btSoftBody12updateBoundsEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  call void @_ZN10btSoftBody15updateConstantsEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !139 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.preheader.lr.ph.i, label %_ZN23btReducedDeformableBody21updateModesByRotationERK11btMatrix3x3.exit

.preheader.lr.ph.i:                               ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2716
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !140 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.an = load ptr, ptr %i.am, align 8
  br i1 %i.al, label %.preheader.preheader.i, label %_ZN23btReducedDeformableBody21updateModesByRotationERK11btMatrix3x3.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count26.i = zext nneg i32 %i.ah to i64
  %wide.trip.count.i = zext nneg i32 %i.ak to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !128
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count26.i
  br i1 %exitcond27.not.i, label %_ZN23btReducedDeformableBody21updateModesByRotationERK11btMatrix3x3.exit, label %.preheader.i, !llvm.loop !2

bb.b:                                             ; preds = %bb.b, %.preheader.i
  %indvar.i = phi i64 [ 0, %.preheader.i ], [ %indvar.next.i, %bb.b ] ; 2 uses
  %i.ar = mul nuw nsw i64 %indvar.i, 12
  %scevgep.i = getelementptr i8, ptr %i.aq, i64 %i.ar ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 8 ; 2 uses
  %i.au = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4
  %i.av = load float, ptr %.sroa.19.16..sroa_idx, align 4, !tbaa !142
  %i.aw = load float, ptr %scevgep.i, align 4, !tbaa !142 ; 2 uses
  %i.ax = load float, ptr %i.as, align 4, !tbaa !142 ; 2 uses
  %i.ay = load float, ptr %i.at, align 4, !tbaa !142 ; 2 uses
  %i.az = load <2 x float>, ptr %1, align 4, !tbaa !142 ; 2 uses
  %i.ba = load <2 x float>, ptr %i.j, align 4, !tbaa !142 ; 2 uses
  %i.bb = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <2 x i32> <i32 1, i32 3>
  %i.be = fmul <2 x float> %i.bc, %i.bd
  %i.bf = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2>
  %i.bg = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bh, <2 x float> %i.be)
  %i.bj = insertelement <2 x float> %i.au, float %i.av, i64 1
  %i.bk = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bl, <2 x float> %i.bi)
  %i.bn = load float, ptr %i.m, align 4, !tbaa !142
  %i.bo = load float, ptr %.sroa.26.32..sroa_idx, align 4, !tbaa !142
  %i.bp = fmul float %i.ax, %i.bo
  %i.bq = call float @llvm.fmuladd.f32(float %i.bn, float %i.aw, float %i.bp)
  %i.br = load float, ptr %.sroa.29.32..sroa_idx, align 4, !tbaa !142
  %i.bs = call noundef float @llvm.fmuladd.f32(float %i.br, float %i.ay, float %i.bq)
  store <2 x float> %i.bm, ptr %scevgep.i, align 4, !tbaa !142
  store float %i.bs, ptr %i.at, align 4, !tbaa !142
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvar.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !3

_ZN23btReducedDeformableBody21updateModesByRotationERK11btMatrix3x3.exit: ; preds = %._crit_edge.i, %._crit_edge, %.preheader.lr.ph.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2480
  call void @_ZN23btReducedDeformableBody26updateInitialInertiaTensorERK11btMatrix3x3(ptr noundef nonnull align 8 dereferenceable(3176) %0, ptr noundef nonnull align 4 dereferenceable(48) %1)
  call void @_ZN23btReducedDeformableBody19updateInertiaTensorEv(ptr noundef nonnull align 8 dereferenceable(3176) %0)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(48) %i.bu, i64 16, i1 false), !tbaa.struct !150
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !150
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !150
end_hunk_1
begin_hunk_2_@_ZN23btReducedDeformableBody19applyCentralImpulseERK9btVector3:bb.a
  %i.p = fmul <2 x float> %i.m, %i.o
  %i.q = load <2 x float>, ptr %i.j, align 8, !tbaa !142
  %i.r = fadd <2 x float> %i.p, %i.q
  store <2 x float> %i.r, ptr %i.j, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2368 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !142
  %i.u = fadd float %i.i, %i.t
  store float %i.u, ptr %i.s, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btReducedDeformableBody18applyTorqueImpulseERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2648
  %i.d = load <2 x float>, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2664
  %i.h = load float, ptr %i.g, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.j = load float, ptr %i.i, align 8, !tbaa !142
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2676
  %i.l = load float, ptr %i.k, align 4, !tbaa !142
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.n = load float, ptr %i.m, align 8, !tbaa !142
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.q = load float, ptr %i.p, align 8, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %i.s = load float, ptr %1, align 4, !tbaa !142  ; 2 uses
  %i.t = load <2 x float>, ptr %i.a, align 8, !tbaa !142 ; 2 uses
  %i.u = load float, ptr %i.b, align 4, !tbaa !142 ; 2 uses
  %i.v = load float, ptr %i.e, align 4, !tbaa !142 ; 2 uses
  %i.w = load <2 x float>, ptr %i.f, align 8, !tbaa !142 ; 2 uses
  %i.x = insertelement <2 x float> poison, float %i.u, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = shufflevector <2 x float> %i.t, <2 x float> %i.w, <2 x i32> <i32 1, i32 3>
  %i.aa = fmul <2 x float> %i.y, %i.z
  %i.ab = shufflevector <2 x float> %i.t, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %i.ac = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ad, <2 x float> %i.aa)
  %i.af = insertelement <2 x float> %i.d, float %i.h, i64 1
  %i.ag = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ah, <2 x float> %i.ae)
  %i.aj = fmul float %i.u, %i.l
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.j, float %i.s, float %i.aj)
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.v, float %i.ak)
  %i.am = load <2 x float>, ptr %i.o, align 8, !tbaa !142
  %i.an = fmul <2 x float> %i.ai, %i.am
  %i.ao = fmul float %i.al, %i.q
  %i.ap = load <2 x float>, ptr %i.r, align 8, !tbaa !142
  %i.aq = fadd <2 x float> %i.an, %i.ap
  store <2 x float> %i.aq, ptr %i.r, align 8, !tbaa !142
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2384 ; 2 uses
  %i.as = load float, ptr %i.ar, align 8, !tbaa !142
  %i.at = fadd float %i.ao, %i.as
  store float %i.at, ptr %i.ar, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody25internalApplyRigidImpulseERK9btVector3S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2356 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !154 ; 2 uses
  %i.c = fcmp oeq float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 51) ; 0 uses
  %.pre = load float, ptr %i.a, align 4, !tbaa !142
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi float [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.j = load float, ptr %i.i, align 8, !tbaa !142 ; 2 uses
  %i.k = fmul float %i.h, %i.j
  %i.l = fmul float %i.e, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2240 ; 2 uses
  %i.n = load <2 x float>, ptr %1, align 4, !tbaa !142
  %i.o = load <2 x float>, ptr %i.f, align 8, !tbaa !142 ; 2 uses
  %i.p = fmul <2 x float> %i.n, %i.o
  %i.q = insertelement <2 x float> poison, float %i.e, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.p, %i.r
  %i.t = load <2 x float>, ptr %i.m, align 8, !tbaa !142
  %i.u = fadd <2 x float> %i.s, %i.t
  store <2 x float> %i.u, ptr %i.m, align 8, !tbaa !142
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !142
  %i.x = fadd float %i.l, %i.w
  store float %i.x, ptr %i.v, align 8, !tbaa !142
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2648
  %i.aa = load <2 x float>, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2664
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !142
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.af = load float, ptr %i.ae, align 8, !tbaa !142
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2676
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !142
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !142
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.am = load float, ptr %i.al, align 8, !tbaa !142
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.ao = load <3 x float>, ptr %1, align 4, !tbaa !142
  %i.ap = shufflevector <2 x float> %i.o, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.aq = insertelement <3 x float> %i.ap, float %i.j, i64 2
  %i.ar = fmul <3 x float> %i.aq, %i.ao           ; 2 uses
  %i.as = load <3 x float>, ptr %2, align 4, !tbaa !142 ; 2 uses
  %i.at = shufflevector <3 x float> %i.as, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.au = fneg <3 x float> %i.ar
  %i.av = shufflevector <3 x float> %i.au, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.aw = fmul <3 x float> %i.as, %i.av
  %i.ax = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.at, <3 x float> %i.ar, <3 x float> %i.aw) ; 6 uses
  %i.ay = load <2 x float>, ptr %i.y, align 8, !tbaa !142 ; 2 uses
  %i.az = load <2 x float>, ptr %i.ab, align 8, !tbaa !142 ; 2 uses
  %i.ba = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bb = shufflevector <3 x float> %i.ax, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.ba, %i.bb
  %i.bd = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %i.be = shufflevector <3 x float> %i.ax, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bg = insertelement <2 x float> %i.aa, float %i.ad, i64 1
  %i.bh = shufflevector <3 x float> %i.ax, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bh, <2 x float> %i.bf)
  %i.bj = extractelement <3 x float> %i.ax, i64 0
  %i.bk = fmul float %i.bj, %i.ah
  %i.bl = extractelement <3 x float> %i.ax, i64 2
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.af, float %i.bl, float %i.bk)
  %i.bn = extractelement <3 x float> %i.ax, i64 1
  %i.bo = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.bn, float %i.bm)
  %i.bp = load <2 x float>, ptr %i.ak, align 8, !tbaa !142
  %i.bq = fmul <2 x float> %i.bi, %i.bp
  %i.br = fmul float %i.bo, %i.am
  %i.bs = load <2 x float>, ptr %i.an, align 8, !tbaa !142
  %i.bt = fadd <2 x float> %i.bq, %i.bs
  store <2 x float> %i.bt, ptr %i.an, align 8, !tbaa !142
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !142
  %i.bw = fadd float %i.br, %i.bv
  store float %i.bw, ptr %i.bu, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN23btReducedDeformableBody14getRelativePosEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload = load float, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load <2 x float>, ptr %.sroa.9.16..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.13.32.copyload = load float, ptr %.sroa.13.32..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load <2 x float>, ptr %i.b, align 8      ; 2 uses
  %i.l = load <2 x float>, ptr %i.d, align 8      ; 2 uses
  %i.m = load float, ptr %i.h, align 4, !tbaa !142 ; 2 uses
  %i.n = load float, ptr %i.i, align 4, !tbaa !142 ; 2 uses
  %i.o = fmul float %.sroa.4.0.copyload, %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload, float %i.m, float %i.o)
  %i.q = load float, ptr %i.j, align 4, !tbaa !142 ; 2 uses
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5.0.copyload, float %i.q, float %i.p)
  %i.s = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 1, i32 3>
  %i.t = insertelement <2 x float> poison, float %i.n, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.s, %i.u
  %i.w = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 0, i32 2>
  %i.x = insertelement <2 x float> poison, float %i.m, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.y, <2 x float> %i.v)
  %i.aa = insertelement <2 x float> %i.c, float %.sroa.13.32.copyload, i64 1
  %i.ab = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.ac, <2 x float> %i.z) ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ae = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %2 = shufflevector <2 x float> %i.ad, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ae, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %2, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody16getImpulseFactorEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.btMatrix3x3) align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %1, i32 noundef %2) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btAlignedObjectArray.4, align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.10297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.16303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.29316.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.35.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.48.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 108
  %.sroa.54.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2224 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load <2 x float>, ptr %i.a, align 8      ; 6 uses
  %i.k = load <2 x float>, ptr %i.b, align 8      ; 7 uses
  %i.l = load <2 x float>, ptr %i.c, align 8      ; 6 uses
  %i.m = load <2 x float>, ptr %.sroa.10297.0..sroa_idx, align 4 ; 4 uses
  %.sroa.16303.0.copyload = load float, ptr %.sroa.16303.0..sroa_idx, align 8 ; 5 uses
  %i.n = load <2 x float>, ptr %.sroa.29316.16..sroa_idx, align 4 ; 5 uses
  %.sroa.35.16.copyload = load float, ptr %.sroa.35.16..sroa_idx, align 8 ; 3 uses
  %i.o = load <2 x float>, ptr %.sroa.48.32..sroa_idx, align 4 ; 5 uses
  %.sroa.54.32.copyload = load float, ptr %.sroa.54.32..sroa_idx, align 8 ; 7 uses
  %i.p = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.q = extractelement <2 x float> %i.j, i64 0   ; 4 uses
  %i.r = load float, ptr %i.g, align 4, !tbaa !142 ; 2 uses
  %i.s = load float, ptr %i.h, align 4, !tbaa !142 ; 2 uses
  %i.t = load float, ptr %i.i, align 4, !tbaa !142 ; 2 uses
  %i.u = fmul float %i.p, %i.s
  %i.v = tail call float @llvm.fmuladd.f32(float %i.q, float %i.r, float %i.u)
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %.sroa.16303.0.copyload, float %i.t, float %i.v) ; 5 uses
  %i.x = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.y = insertelement <2 x float> poison, float %i.s, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.x, %i.z
  %i.ab = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ac = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ad, <2 x float> %i.aa)
  %i.af = insertelement <2 x float> poison, float %.sroa.35.16.copyload, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %.sroa.54.32.copyload, i64 1 ; 3 uses
  %i.ah = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ai, <2 x float> %i.ae) ; 7 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 1 ; 3 uses
  %i.al = fneg float %i.ak                        ; 4 uses
  %i.am = fneg float %i.w                         ; 5 uses
  %i.an = extractelement <2 x float> %i.aj, i64 0 ; 2 uses
  %i.ao = fneg float %i.an                        ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 3088 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !128
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.f
  %i.as = load float, ptr %i.ar, align 4, !tbaa !142
  %i.at = fcmp ogt float %i.as, 0.000000e+00
  br i1 %i.at, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2352
  %i.av = load float, ptr %i.au, align 8, !tbaa !153
  %i.aw = fdiv float 1.000000e+00, %i.av
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ax = phi float [ %i.aw, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2640 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2656 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2672 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 2644 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 2660 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 2676 ; 2 uses
  %i.be = load float, ptr %i.bc, align 4, !tbaa !142, !noalias !310 ; 2 uses
  %i.bf = load <3 x float>, ptr %i.az, align 8, !tbaa !142, !noalias !310 ; 2 uses
  %i.bg = fmul float %i.be, %i.al
  %i.bh = load float, ptr %i.bb, align 4, !tbaa !142, !noalias !310 ; 2 uses
  %i.bi = load <3 x float>, ptr %i.ay, align 8, !tbaa !142, !noalias !310 ; 2 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.bg)
  %i.bk = load float, ptr %i.bd, align 4, !tbaa !142, !noalias !310 ; 2 uses
  %i.bl = load <3 x float>, ptr %i.ba, align 8, !tbaa !142, !noalias !310 ; 2 uses
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.bk, float %i.an, float %i.bj) ; 2 uses
  %i.bn = fmul float %i.be, 0.000000e+00
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.ak, float %i.bn)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.bk, float %i.am, float %i.bo) ; 2 uses
  %i.bq = insertelement <3 x float> poison, float %i.w, i64 0
  %i.br = shufflevector <3 x float> %i.bq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bs = fmul <3 x float> %i.br, %i.bf
  %i.bt = insertelement <3 x float> poison, float %i.ao, i64 0
  %i.bu = shufflevector <3 x float> %i.bt, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bv = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bi, <3 x float> %i.bu, <3 x float> %i.bs)
  %i.bw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bl, <3 x float> zeroinitializer, <3 x float> %i.bv) ; 4 uses
  %i.bx = fmul float %i.ak, %i.bm
  %i.by = shufflevector <3 x float> %i.bw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.am, i64 1
  %i.ca = fmul <2 x float> %i.by, %i.bz
  %i.cb = insertelement <2 x float> poison, float %i.al, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.cd = shufflevector <3 x float> %i.bw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.cd, <2 x float> %i.ca)
  %i.cf = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.w, i64 0
  %i.cg = shufflevector <3 x float> %i.bw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.cg, <2 x float> %i.ce)
  %i.ci = shufflevector <3 x float> %i.bf, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 4 uses
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 6, i32 7>
  %i.ck = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.al, i64 0 ; 3 uses
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> %i.ci, <4 x i32> <i32 0, i32 0, i32 2, i32 4>
  %i.cm = fmul <4 x float> %i.cj, %i.cl
  %i.cn = shufflevector <3 x float> %i.bi, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 4 uses
  %4 = shufflevector <4 x float> %i.cn, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0>
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 poison>
  %i.cp = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 6 uses
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %i.cq, <4 x float> %i.cm)
  %i.cs = shufflevector <3 x float> %i.bl, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 5, i32 0>
  %i.cu = insertelement <4 x float> %i.cp, float -0.000000e+00, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.am, i64 3
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.cw, <4 x float> %i.cr) ; 3 uses
  %i.cy = shufflevector <4 x float> %i.ci, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 6, i32 7>
  %i.cz = shufflevector <4 x float> %i.ck, <4 x float> %i.ci, <4 x i32> <i32 0, i32 0, i32 poison, i32 6>
  %i.da = insertelement <4 x float> %i.cz, float 1.000000e+00, i64 2
  %i.db = fmul <4 x float> %i.cy, %i.da
  %5 = shufflevector <4 x float> %i.cn, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 2>
  %i.dc = shufflevector <4 x float> %i.cn, <4 x float> %i.cp, <4 x i32> <i32 2, i32 2, i32 poison, i32 5> ; 2 uses
  %i.dd = insertelement <4 x float> %i.dc, float -0.000000e+00, i64 2
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %i.dd, <4 x float> %i.db)
  %i.df = shufflevector <4 x float> %i.cs, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 5, i32 2>
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.cw, <4 x float> %i.de) ; 3 uses
  %i.dh = extractelement <4 x float> %i.cx, i64 0
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float 0.000000e+00, float %i.bx)
  %i.dj = extractelement <4 x float> %i.dg, i64 0
  %i.dk = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.dj, float %i.di)
  %i.dl = insertelement <4 x float> %i.dc, float 0.000000e+00, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %i.bm, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.do = insertelement <4 x float> <float 0.000000e+00, float poison, float 1.000000e+00, float poison>, float %i.am, i64 1 ; 2 uses
  %i.dp = insertelement <4 x float> %i.do, float %i.bp, i64 3
  %i.dq = fmul <4 x float> %i.dn, %i.dp
  %i.dr = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.al, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %i.cp, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %i.dt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.cx, <4 x float> %i.dq)
  %i.du = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.w, i64 0
  %i.dv = insertelement <4 x float> %i.du, float %i.ao, i64 3 ; 2 uses
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.dg, <4 x float> %i.dt)
  %i.dx = fsub float %i.ax, %i.dk                 ; 2 uses
  %i.dy = fsub <4 x float> zeroinitializer, %i.dw ; 2 uses
  %6 = shufflevector <4 x float> %i.cp, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 poison, i32 poison, i32 6, i32 1>
  %i.dz = insertelement <4 x float> %6, float %i.bp, i64 0
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.eb = shufflevector <3 x float> %i.bw, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.ec = shufflevector <4 x float> %i.do, <4 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ed = fmul <4 x float> %i.ea, %i.ec
  %i.ee = shufflevector <4 x float> %i.cx, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.ef, <4 x float> %i.ed)
  %i.eh = shufflevector <4 x float> %i.dg, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.ei, <4 x float> %i.eg)
  %i.ek = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ax, i64 0
  %i.el = fsub <4 x float> %i.ek, %i.ej           ; 2 uses
  %i.em = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ax, i64 1
  %i.en = fsub <2 x float> %i.em, %i.ch           ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 2712 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !139 ; 14 uses
  %i.eq = icmp sgt i32 %i.ep, 0                   ; 2 uses
  %i.er = mul nsw i32 %2, 3                       ; 2 uses
  br i1 %i.eq, label %.split352, label %.split353

.split352:                                        ; preds = %bb.c
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 2128
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 2736
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !124 ; 25 uses
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !124 ; 25 uses
  %i.ex = load ptr, ptr %i.es, align 8, !tbaa !124 ; 25 uses
  %i.ey = sext i32 %i.er to i64                   ; 29 uses
  %wide.trip.count = zext nneg i32 %i.ep to i64   ; 18 uses
  %i.ez = add nsw i64 %wide.trip.count, -1        ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %.epil.preheader, label %.split352.new

.split352.new:                                    ; preds = %.split352
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.g

.split353.loopexit:                               ; preds = %._crit_edge.1.2
  %i.fb = insertelement <3 x float> poison, float %.lcssa501, i64 0
  %i.fc = insertelement <3 x float> %i.fb, float %.lcssa503, i64 1
  %i.fd = insertelement <3 x float> %i.fc, float %.lcssa502, i64 2
  %i.fe = insertelement <3 x float> poison, float %.lcssa504, i64 0
  %i.ff = insertelement <3 x float> %i.fe, float %.lcssa506, i64 1
  %i.fg = insertelement <3 x float> %i.ff, float %.lcssa505, i64 2
  br label %.split353

.split353:                                        ; preds = %.split353.loopexit, %bb.c
  %.sroa.22441.0 = phi float [ 0.000000e+00, %bb.c ], [ %.lcssa500, %.split353.loopexit ] ; 2 uses
  %.sroa.25.0 = phi float [ 0.000000e+00, %bb.c ], [ %.lcssa499, %.split353.loopexit ] ; 2 uses
  %.sroa.28.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.yl, %.split353.loopexit ] ; 2 uses
  %i.fh = phi <3 x float> [ zeroinitializer, %bb.c ], [ %i.fg, %.split353.loopexit ] ; 2 uses
  %i.fi = phi <3 x float> [ zeroinitializer, %bb.c ], [ %i.fd, %.split353.loopexit ] ; 2 uses
  %i.fj = shufflevector <2 x float> %i.j, <2 x float> %i.k, <4 x i32> <i32 1, i32 1, i32 poison, i32 3> ; 3 uses
  %i.fk = insertelement <4 x float> %i.fj, float -0.000000e+00, i64 2 ; 2 uses
  %i.fl = shufflevector <3 x float> %i.fi, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 1, i32 1, i32 6, i32 1>
  %i.fn = fmul <4 x float> %i.fk, %i.fm
  %i.fo = shufflevector <3 x float> %i.fh, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 1, i32 1, i32 6, i32 1>
  %i.fq = shufflevector <2 x float> %i.j, <2 x float> %i.k, <4 x i32> <i32 0, i32 0, i32 poison, i32 2> ; 2 uses
  %i.fr = insertelement <4 x float> %i.fq, float -0.000000e+00, i64 2 ; 3 uses
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> %i.fr, <4 x float> %i.fn)
  %i.ft = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %.sroa.22441.0, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.fv = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 5 uses
  %7 = shufflevector <4 x float> %i.fv, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 1, i32 poison, i32 6, i32 poison>
  %i.fw = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.fx = shufflevector <4 x float> %7, <4 x float> %i.fw, <4 x i32> <i32 0, i32 0, i32 2, i32 5> ; 3 uses
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fu, <4 x float> %i.fx, <4 x float> %i.fs) ; 3 uses
  %i.fz = shufflevector <4 x float> %i.fj, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 3>
  %i.ga = shufflevector <4 x float> %i.fl, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 2, i32 2, i32 6, i32 2>
  %i.gb = fmul <4 x float> %i.fz, %i.ga
  %i.gc = shufflevector <4 x float> %i.fo, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 2, i32 6, i32 2>
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> %i.fr, <4 x float> %i.gb)
  %i.ge = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %.sroa.25.0, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> %i.fx, <4 x float> %i.gd) ; 3 uses
  %i.gh = shufflevector <4 x float> %i.fl, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 0>
  %i.gi = fmul <4 x float> %i.fk, %i.gh
  %i.gj = shufflevector <4 x float> %i.fo, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 0>
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> %i.fr, <4 x float> %i.gi)
  %i.gl = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %.sroa.28.0, i64 0
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %i.fx, <4 x float> %i.gk) ; 3 uses
  %i.go = extractelement <4 x float> %i.gg, i64 0
  %i.gp = fmul float %i.p, %i.go
  %i.gq = extractelement <4 x float> %i.fy, i64 0
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.q, float %i.gq, float %i.gp)
  %i.gs = extractelement <4 x float> %i.gn, i64 0
  %i.gt = tail call noundef float @llvm.fmuladd.f32(float %.sroa.16303.0.copyload, float %i.gs, float %i.gr)
  %i.gu = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gv = shufflevector <4 x float> %i.fj, <4 x float> %i.gu, <4 x i32> <i32 3, i32 5, i32 poison, i32 0>
  %i.gw = insertelement <4 x float> %i.gv, float -0.000000e+00, i64 2 ; 2 uses
  %i.gx = fmul <4 x float> %i.gw, %i.gg
  %i.gy = shufflevector <4 x float> %i.fq, <4 x float> %i.gu, <4 x i32> <i32 3, i32 4, i32 poison, i32 0>
  %i.gz = insertelement <4 x float> %i.gy, float 0.000000e+00, i64 2 ; 2 uses
  %i.ha = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %i.fy, <4 x float> %i.gx)
  %8 = shufflevector <4 x float> %i.fv, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 poison, i32 poison, i32 6, i32 1>
  %i.hb = shufflevector <4 x float> %8, <4 x float> %i.fw, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.hc = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.hd = shufflevector <4 x float> %i.hb, <4 x float> %i.hc, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.he = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %i.gn, <4 x float> %i.ha)
  %i.hf = insertelement <4 x float> %i.fw, float -0.000000e+00, i64 2
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> %i.hc, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.hi = shufflevector <4 x float> %i.gg, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.hj = shufflevector <2 x float> %i.k, <2 x float> %i.l, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hk = insertelement <4 x float> %i.hj, float 0.000000e+00, i64 2
  %i.hl = insertelement <4 x float> %i.hk, float %i.q, i64 3 ; 2 uses
  %i.hm = shufflevector <4 x float> %i.fy, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %9 = shufflevector <4 x float> %i.fw, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 1, i32 poison, i32 6, i32 poison>
  %i.hn = shufflevector <4 x float> %9, <4 x float> %i.hc, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.ho = shufflevector <4 x float> %i.hn, <4 x float> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.hp = shufflevector <4 x float> %i.gn, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.hq = shufflevector <2 x float> %i.o, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hr = fmul <3 x float> %i.hq, %i.fi
  %i.hs = shufflevector <2 x float> %i.l, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ht = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fh, <3 x float> %i.hs, <3 x float> %i.hr)
  %i.hu = insertelement <3 x float> poison, float %.sroa.28.0, i64 0
  %i.hv = insertelement <3 x float> %i.hu, float %.sroa.22441.0, i64 1
  %i.hw = insertelement <3 x float> %i.hv, float %.sroa.25.0, i64 2
  %i.hx = insertelement <3 x float> poison, float %.sroa.54.32.copyload, i64 0
  %i.hy = shufflevector <3 x float> %i.hx, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hz = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hw, <3 x float> %i.hy, <3 x float> %i.ht) ; 4 uses
  %i.ia = shufflevector <3 x float> %i.hz, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.ib = shufflevector <4 x float> %i.hi, <4 x float> %i.ia, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ic = fmul <4 x float> %i.hh, %i.ib
  %i.id = shufflevector <4 x float> %i.hm, <4 x float> %i.ia, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ie = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hl, <4 x float> %i.id, <4 x float> %i.ic)
  %i.if = shufflevector <4 x float> %i.hp, <4 x float> %i.ia, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ig = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %i.if, <4 x float> %i.ie)
  %i.ih = shufflevector <3 x float> %i.hz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ii = fmul <2 x float> %i.x, %i.ih
  %i.ij = shufflevector <3 x float> %i.hz, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ik = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ij, <2 x float> %i.ii)
  %i.il = shufflevector <3 x float> %i.hz, <3 x float> poison, <2 x i32> zeroinitializer
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.il, <2 x float> %i.ik)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 1, ptr %i.in, align 8, !tbaa !131
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr null, ptr %i.io, align 8, !tbaa !132
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 0, ptr %i.ip, align 4, !tbaa !133
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.iq, align 8, !tbaa !134
  br i1 %i.eq, label %bb.d, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.split353
  store i32 %i.ep, ptr %i.ip, align 4, !tbaa !133
  br label %.split373

bb.d:                                             ; preds = %.split353
  %i.ir = zext nneg i32 %i.ep to i64
  %i.is = shl nuw nsw i64 %i.ir, 4
  %i.it = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.is, i32 noundef 16)
          to label %.loopexit unwind label %bb.h  ; 3 uses

._crit_edge.unr-lcssa:                            ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.split352
  %indvars.iv.epil.init = phi i64 [ 0, %.split352 ], [ %indvars.iv.next.1510, %._crit_edge.unr-lcssa ] ; 3 uses
  %.epil.init = phi float [ 0.000000e+00, %.split352 ], [ %i.zu, %._crit_edge.unr-lcssa ]
  %lcmp.mod508 = trunc i32 %i.ep to i1
  tail call void @llvm.assume(i1 %lcmp.mod508)
  %i.iu = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %indvars.iv.epil.init
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !128
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.ey
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !142
  %i.iz = getelementptr inbounds nuw [32 x i8], ptr %i.ew, i64 %indvars.iv.epil.init
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !128
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.ey
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !142
  %i.je = getelementptr inbounds nuw [32 x i8], ptr %i.ex, i64 %indvars.iv.epil.init
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !128
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.ey
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !142
  %i.jj = fadd float %i.jd, %i.ji
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.jj, float %.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa506 = phi float [ %i.zu, %._crit_edge.unr-lcssa ], [ %i.jk, %.epil.preheader ]
  %i.jl = add nsw i64 %i.ey, 1                    ; 27 uses
  %xtraiter512 = and i64 %wide.trip.count, 1
  %i.jm = icmp eq i64 %i.ez, 0
  br i1 %i.jm, label %.epil.preheader511, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter518 = and i64 %wide.trip.count, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge.new
  %indvars.iv.1 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next.1.1521, %bb.e ] ; 5 uses
  %i.jn = phi float [ 0.000000e+00, %._crit_edge.new ], [ %i.kv, %bb.e ]
  %niter519 = phi i64 [ 0, %._crit_edge.new ], [ %niter519.next.1, %bb.e ]
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %indvars.iv.1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !128
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jq, i64 %i.ey
  %i.js = load float, ptr %i.jr, align 4, !tbaa !142
  %i.jt = getelementptr inbounds nuw [32 x i8], ptr %i.ew, i64 %indvars.iv.1
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !128
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jl
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !142
  %i.jy = getelementptr inbounds nuw [32 x i8], ptr %i.ex, i64 %indvars.iv.1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !128
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.jl
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !142
  %i.kd = fadd float %i.jx, %i.kc
  %i.ke = tail call float @llvm.fmuladd.f32(float %i.js, float %i.kd, float %i.jn)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1 ; 3 uses
  %i.kf = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %indvars.iv.next.1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !128
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.ey
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !142
  %i.kk = getelementptr inbounds nuw [32 x i8], ptr %i.ew, i64 %indvars.iv.next.1
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !128
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.jl
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !142
  %i.kp = getelementptr inbounds nuw [32 x i8], ptr %i.ex, i64 %indvars.iv.next.1
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !128
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.jl
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !142
  %i.ku = fadd float %i.ko, %i.kt
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.kj, float %i.ku, float %i.ke) ; 3 uses
  %indvars.iv.next.1.1521 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %niter519.next.1 = add i64 %niter519, 2         ; 2 uses
  %niter519.ncmp.1 = icmp eq i64 %niter519.next.1, %unroll_iter518
  br i1 %niter519.ncmp.1, label %._crit_edge.1.unr-lcssa, label %bb.e, !llvm.loop !298

._crit_edge.1.unr-lcssa:                          ; preds = %bb.e
  %lcmp.mod515.not = icmp eq i64 %xtraiter512, 0
  br i1 %lcmp.mod515.not, label %._crit_edge.1, label %.epil.preheader511

.epil.preheader511:                               ; preds = %._crit_edge.1.unr-lcssa, %._crit_edge
  %indvars.iv.1.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.1.1521, %._crit_edge.1.unr-lcssa ] ; 3 uses
  %.epil.init514 = phi float [ 0.000000e+00, %._crit_edge ], [ %i.kv, %._crit_edge.1.unr-lcssa ]
  %lcmp.mod517 = trunc i32 %i.ep to i1
  tail call void @llvm.assume(i1 %lcmp.mod517)
  %i.kw = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %indvars.iv.1.epil.init
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !128
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %i.ey
  %i.la = load float, ptr %i.kz, align 4, !tbaa !142
  %i.lb = getelementptr inbounds nuw [32 x i8], ptr %i.ew, i64 %indvars.iv.1.epil.init
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !128
  %i.le = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %i.jl
  %i.lf = load float, ptr %i.le, align 4, !tbaa !142
  %i.lg = getelementptr inbounds nuw [32 x i8], ptr %i.ex, i64 %indvars.iv.1.epil.init
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !128
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.jl
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !142
  %i.ll = fadd float %i.lf, %i.lk
  %i.lm = tail call float @llvm.fmuladd.f32(float %i.la, float %i.ll, float %.epil.init514)
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.1.unr-lcssa, %.epil.preheader511
  %.lcssa505 = phi float [ %i.kv, %._crit_edge.1.unr-lcssa ], [ %i.lm, %.epil.preheader511 ]
  %i.ln = add nsw i64 %i.ey, 2                    ; 21 uses
  %xtraiter523 = and i64 %wide.trip.count, 1
  %i.lo = icmp eq i64 %i.ez, 0
  br i1 %i.lo, label %.epil.preheader522, label %._crit_edge.1.new

._crit_edge.1.new:                                ; preds = %._crit_edge.1
  %unroll_iter529 = and i64 %wide.trip.count, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge.1.new
  %indvars.iv.2 = phi i64 [ 0, %._crit_edge.1.new ], [ %indvars.iv.next.2.1532, %bb.f ] ; 5 uses
  %i.lp = phi float [ 0.000000e+00, %._crit_edge.1.new ], [ %i.mx, %bb.f ]
  %niter530 = phi i64 [ 0, %._crit_edge.1.new ], [ %niter530.next.1, %bb.f ]
  %i.lq = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %indvars.iv.2
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !128
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.ey
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !142
  %i.lv = getelementptr inbounds nuw [32 x i8], ptr %i.ew, i64 %indvars.iv.2
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !128
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.ln
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !142
  %i.ma = getelementptr inbounds nuw [32 x i8], ptr %i.ex, i64 %indvars.iv.2
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !128
  %i.md = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.ln
  %i.me = load float, ptr %i.md, align 4, !tbaa !142
  %i.mf = fadd float %i.lz, %i.me
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.lu, float %i.mf, float %i.lp)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1 ; 3 uses
  %i.mh = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %indvars.iv.next.2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !128
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.ey
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !142
  %i.mm = getelementptr inbounds nuw [32 x i8], ptr %i.ew, i64 %indvars.iv.next.2
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !128
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.ln
end_hunk_2
begin_hunk_3_@_ZN23btReducedDeformableBody16getImpulseFactorEi:bb.a
  %indvars.iv408.2431.epil.init = phi i64 [ 0, %._crit_edge366.2.1 ], [ %indvars.iv.next409.2433.1, %._crit_edge366.2436.preheader.unr-lcssa ] ; 3 uses
  %.epil.init638 = phi float [ 0.000000e+00, %._crit_edge366.2.1 ], [ %i.aok, %._crit_edge366.2436.preheader.unr-lcssa ]
  %lcmp.mod641 = trunc i32 %i.abd to i1
  tail call void @llvm.assume(i1 %lcmp.mod641)
  %gep.2432.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.2, i64 %indvars.iv408.2431.epil.init
  %i.aol = load float, ptr %gep.2432.epil, align 4, !tbaa !142
  %i.aom = getelementptr inbounds nuw [32 x i8], ptr %i.aes, i64 %indvars.iv408.2431.epil.init
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 16
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !128
  %i.aop = getelementptr inbounds [4 x i8], ptr %i.aoo, i64 %i.aeu
  %i.aoq = load float, ptr %i.aop, align 4, !tbaa !142
  %i.aor = getelementptr inbounds nuw [32 x i8], ptr %i.aet, i64 %indvars.iv408.2431.epil.init
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 16
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !128
  %i.aou = getelementptr inbounds [4 x i8], ptr %i.aot, i64 %i.aeu
  %i.aov = load float, ptr %i.aou, align 4, !tbaa !142
  %i.aow = fadd float %i.aoq, %i.aov
  %i.aox = tail call float @llvm.fmuladd.f32(float %i.aol, float %i.aow, float %.epil.init638)
  br label %._crit_edge366.2436.preheader

._crit_edge366.2436.preheader:                    ; preds = %._crit_edge366.2436.preheader.unr-lcssa, %.epil.preheader635
  %.lcssa488 = phi float [ %i.aok, %._crit_edge366.2436.preheader.unr-lcssa ], [ %i.aox, %.epil.preheader635 ]
  %xtraiter644 = and i64 %wide.trip.count411, 1
  %i.aoy = icmp eq i64 %i.aev, 0
  br i1 %i.aoy, label %._crit_edge366.2436.epil.preheader, label %._crit_edge366.2436.preheader.new

._crit_edge366.2436.preheader.new:                ; preds = %._crit_edge366.2436.preheader
  %unroll_iter650 = and i64 %wide.trip.count411, 2147483646
  br label %._crit_edge366.2436

._crit_edge366.2436:                              ; preds = %._crit_edge366.2436, %._crit_edge366.2436.preheader.new
  %indvars.iv408.1.2 = phi i64 [ 0, %._crit_edge366.2436.preheader.new ], [ %indvars.iv.next409.1.2.1, %._crit_edge366.2436 ] ; 5 uses
  %i.aoz = phi float [ 0.000000e+00, %._crit_edge366.2436.preheader.new ], [ %i.apz, %._crit_edge366.2436 ]
  %niter651 = phi i64 [ 0, %._crit_edge366.2436.preheader.new ], [ %niter651.next.1, %._crit_edge366.2436 ]
  %gep.1.2 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.2, i64 %indvars.iv408.1.2
  %i.apa = load float, ptr %gep.1.2, align 4, !tbaa !142
  %i.apb = getelementptr inbounds nuw [32 x i8], ptr %i.aes, i64 %indvars.iv408.1.2
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 16
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !128
  %i.ape = getelementptr inbounds [4 x i8], ptr %i.apd, i64 %i.afk
  %i.apf = load float, ptr %i.ape, align 4, !tbaa !142
  %i.apg = getelementptr inbounds nuw [32 x i8], ptr %i.aet, i64 %indvars.iv408.1.2
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 16
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !128
  %i.apj = getelementptr inbounds [4 x i8], ptr %i.api, i64 %i.afk
  %i.apk = load float, ptr %i.apj, align 4, !tbaa !142
  %i.apl = fadd float %i.apf, %i.apk
  %i.apm = tail call float @llvm.fmuladd.f32(float %i.apa, float %i.apl, float %i.aoz)
  %indvars.iv.next409.1.2 = or disjoint i64 %indvars.iv408.1.2, 1 ; 3 uses
  %gep.1.2.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.2, i64 %indvars.iv.next409.1.2
  %i.apn = load float, ptr %gep.1.2.1, align 4, !tbaa !142
  %i.apo = getelementptr inbounds nuw [32 x i8], ptr %i.aes, i64 %indvars.iv.next409.1.2
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 16
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !128
  %i.apr = getelementptr inbounds [4 x i8], ptr %i.apq, i64 %i.afk
  %i.aps = load float, ptr %i.apr, align 4, !tbaa !142
  %i.apt = getelementptr inbounds nuw [32 x i8], ptr %i.aet, i64 %indvars.iv.next409.1.2
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 16
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !128
  %i.apw = getelementptr inbounds [4 x i8], ptr %i.apv, i64 %i.afk
  %i.apx = load float, ptr %i.apw, align 4, !tbaa !142
  %i.apy = fadd float %i.aps, %i.apx
  %i.apz = tail call float @llvm.fmuladd.f32(float %i.apn, float %i.apy, float %i.apm) ; 3 uses
  %indvars.iv.next409.1.2.1 = add nuw nsw i64 %indvars.iv408.1.2, 2 ; 2 uses
  %niter651.next.1 = add i64 %niter651, 2         ; 2 uses
  %niter651.ncmp.1 = icmp eq i64 %niter651.next.1, %unroll_iter650
  br i1 %niter651.ncmp.1, label %._crit_edge366.1.2.preheader.unr-lcssa, label %._crit_edge366.2436, !llvm.loop !305

._crit_edge366.1.2.preheader.unr-lcssa:           ; preds = %._crit_edge366.2436
  %lcmp.mod647.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod647.not, label %._crit_edge366.1.2.preheader, label %._crit_edge366.2436.epil.preheader

._crit_edge366.2436.epil.preheader:               ; preds = %._crit_edge366.1.2.preheader.unr-lcssa, %._crit_edge366.2436.preheader
  %indvars.iv408.1.2.epil.init = phi i64 [ 0, %._crit_edge366.2436.preheader ], [ %indvars.iv.next409.1.2.1, %._crit_edge366.1.2.preheader.unr-lcssa ] ; 3 uses
  %.epil.init646 = phi float [ 0.000000e+00, %._crit_edge366.2436.preheader ], [ %i.apz, %._crit_edge366.1.2.preheader.unr-lcssa ]
  %lcmp.mod649 = trunc i32 %i.abd to i1
  tail call void @llvm.assume(i1 %lcmp.mod649)
  %gep.1.2.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.2, i64 %indvars.iv408.1.2.epil.init
  %i.aqa = load float, ptr %gep.1.2.epil, align 4, !tbaa !142
  %i.aqb = getelementptr inbounds nuw [32 x i8], ptr %i.aes, i64 %indvars.iv408.1.2.epil.init
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 16
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !128
  %i.aqe = getelementptr inbounds [4 x i8], ptr %i.aqd, i64 %i.afk
  %i.aqf = load float, ptr %i.aqe, align 4, !tbaa !142
  %i.aqg = getelementptr inbounds nuw [32 x i8], ptr %i.aet, i64 %indvars.iv408.1.2.epil.init
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 16
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !128
  %i.aqj = getelementptr inbounds [4 x i8], ptr %i.aqi, i64 %i.afk
  %i.aqk = load float, ptr %i.aqj, align 4, !tbaa !142
  %i.aql = fadd float %i.aqf, %i.aqk
  %i.aqm = tail call float @llvm.fmuladd.f32(float %i.aqa, float %i.aql, float %.epil.init646)
  br label %._crit_edge366.1.2.preheader

._crit_edge366.1.2.preheader:                     ; preds = %._crit_edge366.1.2.preheader.unr-lcssa, %._crit_edge366.2436.epil.preheader
  %.lcssa487 = phi float [ %i.apz, %._crit_edge366.1.2.preheader.unr-lcssa ], [ %i.aqm, %._crit_edge366.2436.epil.preheader ]
  br label %._crit_edge366.1.2

._crit_edge366.1.2:                               ; preds = %._crit_edge366.1.2.preheader, %._crit_edge366.1.2
  %indvars.iv408.2.2 = phi i64 [ %indvars.iv.next409.2.2, %._crit_edge366.1.2 ], [ 0, %._crit_edge366.1.2.preheader ] ; 4 uses
  %i.aqn = phi float [ %i.ara, %._crit_edge366.1.2 ], [ 0.000000e+00, %._crit_edge366.1.2.preheader ]
  %gep.2.2 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.2, i64 %indvars.iv408.2.2
  %i.aqo = load float, ptr %gep.2.2, align 4, !tbaa !142
  %i.aqp = getelementptr inbounds nuw [32 x i8], ptr %i.aes, i64 %indvars.iv408.2.2
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !128
  %i.aqs = getelementptr inbounds [4 x i8], ptr %i.aqr, i64 %i.aha
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !142
  %i.aqu = getelementptr inbounds nuw [32 x i8], ptr %i.aet, i64 %indvars.iv408.2.2
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 16
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !128
  %i.aqx = getelementptr inbounds [4 x i8], ptr %i.aqw, i64 %i.aha
  %i.aqy = load float, ptr %i.aqx, align 4, !tbaa !142
  %i.aqz = fadd float %i.aqt, %i.aqy
  %i.ara = tail call float @llvm.fmuladd.f32(float %i.aqo, float %i.aqz, float %i.aqn) ; 2 uses
  %indvars.iv.next409.2.2 = add nuw nsw i64 %indvars.iv408.2.2, 1 ; 2 uses
  %exitcond412.2.2.not = icmp eq i64 %indvars.iv.next409.2.2, %wide.trip.count411
  br i1 %exitcond412.2.2.not, label %.split373.loopexit, label %._crit_edge366.1.2, !llvm.loop !305

bb.o:                                             ; preds = %bb.o, %.split372.new
  %indvars.iv408 = phi i64 [ 0, %.split372.new ], [ %indvars.iv.next409.1585, %bb.o ] ; 5 uses
  %i.arb = phi float [ 0.000000e+00, %.split372.new ], [ %i.asb, %bb.o ]
  %niter582 = phi i64 [ 0, %.split372.new ], [ %niter582.next.1, %bb.o ]
  %gep = getelementptr inbounds nuw [16 x i8], ptr %.pre442, i64 %indvars.iv408
  %i.arc = load float, ptr %gep, align 4, !tbaa !142
  %i.ard = getelementptr inbounds nuw [32 x i8], ptr %i.aes, i64 %indvars.iv408
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 16
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !128
  %i.arg = getelementptr inbounds [4 x i8], ptr %i.arf, i64 %i.aeu
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !142
  %i.ari = getelementptr inbounds nuw [32 x i8], ptr %i.aet, i64 %indvars.iv408
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 16
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !128
  %i.arl = getelementptr inbounds [4 x i8], ptr %i.ark, i64 %i.aeu
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !142
  %i.arn = fadd float %i.arh, %i.arm
  %i.aro = tail call float @llvm.fmuladd.f32(float %i.arc, float %i.arn, float %i.arb)
  %indvars.iv.next409 = or disjoint i64 %indvars.iv408, 1 ; 3 uses
  %gep.1584 = getelementptr inbounds nuw [16 x i8], ptr %.pre442, i64 %indvars.iv.next409
  %i.arp = load float, ptr %gep.1584, align 4, !tbaa !142
  %i.arq = getelementptr inbounds nuw [32 x i8], ptr %i.aes, i64 %indvars.iv.next409
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 16
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !128
  %i.art = getelementptr inbounds [4 x i8], ptr %i.ars, i64 %i.aeu
  %i.aru = load float, ptr %i.art, align 4, !tbaa !142
  %i.arv = getelementptr inbounds nuw [32 x i8], ptr %i.aet, i64 %indvars.iv.next409
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 16
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !128
  %i.ary = getelementptr inbounds [4 x i8], ptr %i.arx, i64 %i.aeu
  %i.arz = load float, ptr %i.ary, align 4, !tbaa !142
  %i.asa = fadd float %i.aru, %i.arz
  %i.asb = tail call float @llvm.fmuladd.f32(float %i.arp, float %i.asa, float %i.aro) ; 3 uses
  %indvars.iv.next409.1585 = add nuw nsw i64 %indvars.iv408, 2 ; 2 uses
  %niter582.next.1 = add i64 %niter582, 2         ; 2 uses
  %niter582.ncmp.1 = icmp eq i64 %niter582.next.1, %unroll_iter581
  br i1 %niter582.ncmp.1, label %._crit_edge366.unr-lcssa, label %bb.o, !llvm.loop !305

.split373.loopexit:                               ; preds = %._crit_edge366.1.2
  %i.asc = insertelement <3 x float> poison, float %.lcssa489, i64 0
  %i.asd = insertelement <3 x float> %i.asc, float %.lcssa491, i64 1
  %i.ase = insertelement <3 x float> %i.asd, float %.lcssa490, i64 2
  %i.asf = insertelement <3 x float> poison, float %.lcssa492, i64 0
  %i.asg = insertelement <3 x float> %i.asf, float %.lcssa494, i64 1
  %i.ash = insertelement <3 x float> %i.asg, float %.lcssa493, i64 2
  br label %.split373

.split373:                                        ; preds = %.split373.loopexit, %.loopexit.thread, %.loopexit, %._crit_edge363
  %i.asi = phi ptr [ %i.it, %.loopexit ], [ %.pre442, %._crit_edge363 ], [ null, %.loopexit.thread ], [ %.pre442, %.split373.loopexit ]
  %.sroa.21438.0 = phi float [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %._crit_edge363 ], [ 0.000000e+00, %.loopexit.thread ], [ %.lcssa488, %.split373.loopexit ] ; 2 uses
  %.sroa.24.0 = phi float [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %._crit_edge363 ], [ 0.000000e+00, %.loopexit.thread ], [ %.lcssa487, %.split373.loopexit ] ; 2 uses
  %.sroa.27.0 = phi float [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %._crit_edge363 ], [ 0.000000e+00, %.loopexit.thread ], [ %i.ara, %.split373.loopexit ] ; 2 uses
  %i.asj = phi <3 x float> [ zeroinitializer, %.loopexit ], [ zeroinitializer, %._crit_edge363 ], [ zeroinitializer, %.loopexit.thread ], [ %i.ash, %.split373.loopexit ] ; 2 uses
  %i.ask = phi <3 x float> [ zeroinitializer, %.loopexit ], [ zeroinitializer, %._crit_edge363 ], [ zeroinitializer, %.loopexit.thread ], [ %i.ase, %.split373.loopexit ] ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %1, i64 2064
  %i.asm = load i8, ptr %i.asl, align 8, !tbaa !122, !range !143, !noundef !148
  %i.asn = trunc nuw i8 %i.asm to i1
  br i1 %i.asn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.split373
  store float %i.dx, ptr %0, align 4
  %.sroa.8248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <4 x float> %i.dy, ptr %.sroa.8248.0..sroa_idx, align 4
  %.sroa.20255.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x float> %i.el, ptr %.sroa.20255.16..sroa_idx, align 4
  %.sroa.33.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> %i.en, ptr %.sroa.33.32..sroa_idx, align 4
  br label %bb.r

bb.q:                                             ; preds = %.split373
  %i.aso = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.asp = load <2 x float>, ptr %i.az, align 8, !tbaa !142, !noalias !313 ; 3 uses
  %i.asq = load <2 x float>, ptr %i.ay, align 8, !tbaa !142, !noalias !313 ; 4 uses
  %i.asr = load <2 x float>, ptr %i.ba, align 8, !tbaa !142, !noalias !313 ; 3 uses
  %i.ass = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ast = insertelement <4 x float> %i.ass, float -0.000000e+00, i64 2
  %i.asu = insertelement <4 x float> %i.ast, float %i.am, i64 3
  %i.asv = shufflevector <4 x float> %i.asu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 3 uses
  %i.asw = shufflevector <2 x float> %i.asp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.asx = shufflevector <4 x float> %i.asw, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.asy = shufflevector <2 x float> %i.asp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.asz = shufflevector <2 x float> %i.asq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %10 = shufflevector <4 x float> %i.asz, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0>
  %i.ata = shufflevector <2 x float> %i.asr, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.atb = shufflevector <2 x float> %i.asp, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.atc = shufflevector <4 x float> %i.atb, <4 x float> <float poison, float poison, float 1.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %11 = shufflevector <4 x float> %i.asz, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.atd = shufflevector <2 x float> %i.asr, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.ate = shufflevector <3 x float> %i.ask, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.atf = shufflevector <4 x float> %i.ate, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 2, i32 2, i32 6, i32 2>
  %i.atg = shufflevector <3 x float> %i.asj, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.ath = shufflevector <4 x float> %i.atg, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 2, i32 6, i32 2>
  %i.ati = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %.sroa.24.0, i64 0
  %i.atj = shufflevector <4 x float> %i.ati, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.atk = shufflevector <4 x float> %i.ate, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 1, i32 1, i32 6, i32 1>
  %i.atl = shufflevector <4 x float> %i.atg, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 1, i32 1, i32 6, i32 1>
  %i.atm = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %.sroa.21438.0, i64 0
  %i.atn = shufflevector <4 x float> %i.atm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.ato = shufflevector <4 x float> %i.ate, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 0>
  %i.atp = shufflevector <4 x float> %i.atg, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 0>
  %i.atq = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %.sroa.27.0, i64 0
  %i.atr = shufflevector <4 x float> %i.atq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.ats = load <2 x float>, ptr %i.bc, align 4, !tbaa !142, !noalias !313 ; 2 uses
  %i.att = load <2 x float>, ptr %i.bb, align 4, !tbaa !142, !noalias !313 ; 2 uses
  %i.atu = shufflevector <2 x float> %i.ats, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.atv = shufflevector <4 x float> %i.atu, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 6, i32 7>
  %i.atw = shufflevector <4 x float> %i.ck, <4 x float> %i.atu, <4 x i32> <i32 0, i32 poison, i32 2, i32 5> ; 3 uses
  %i.atx = shufflevector <4 x float> %i.atw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.aty = fmul <4 x float> %i.atv, %i.atx
  %i.atz = shufflevector <2 x float> %i.att, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %12 = shufflevector <4 x float> %i.atz, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.aua = shufflevector <4 x float> %i.atz, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 1, i32 1, i32 6, i32 poison>
  %i.aub = shufflevector <4 x float> %i.aua, <4 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.auc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> %i.aub, <4 x float> %i.aty)
  %i.aud = shufflevector <4 x float> %i.atw, <4 x float> %i.asy, <4 x i32> <i32 0, i32 0, i32 poison, i32 4>
  %i.aue = insertelement <4 x float> %i.aud, float 1.000000e+00, i64 2
  %i.auf = fmul <4 x float> %i.asx, %i.aue
  %i.aug = shufflevector <2 x float> %i.asq, <2 x float> %i.aj, <4 x i32> <i32 0, i32 0, i32 poison, i32 3>
  %i.auh = insertelement <4 x float> %i.aug, float -0.000000e+00, i64 2
  %i.aui = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.auh, <4 x float> %i.auf)
  %i.auj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ata, <4 x float> %i.asv, <4 x float> %i.aui) ; 3 uses
  %i.auk = shufflevector <4 x float> %i.atw, <4 x float> %i.asy, <4 x i32> <i32 0, i32 0, i32 poison, i32 5>
  %i.aul = insertelement <4 x float> %i.auk, float 1.000000e+00, i64 2
  %i.aum = fmul <4 x float> %i.atc, %i.aul
  %i.aun = shufflevector <2 x float> %i.asq, <2 x float> %i.aj, <4 x i32> <i32 1, i32 1, i32 poison, i32 3>
  %i.auo = insertelement <4 x float> %i.aun, float -0.000000e+00, i64 2
  %i.aup = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %i.auo, <4 x float> %i.aum)
  %i.auq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atd, <4 x float> %i.asv, <4 x float> %i.aup) ; 3 uses
  %i.aur = fmul <4 x float> %i.auq, %i.atf
  %i.aus = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ath, <4 x float> %i.auj, <4 x float> %i.aur)
  %i.aut = fmul <4 x float> %i.atk, %i.auq
  %i.auu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atl, <4 x float> %i.auj, <4 x float> %i.aut)
  %i.auv = insertelement <4 x float> poison, float %i.w, i64 0
  %i.auw = shufflevector <4 x float> %i.auv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.aux = shufflevector <4 x float> %i.auw, <4 x float> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.auy = shufflevector <2 x float> %i.ats, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.auz = shufflevector <2 x float> %i.asq, <2 x float> %i.j, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.ava = shufflevector <2 x float> %i.att, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.avb = shufflevector <4 x float> %i.ava, <4 x float> %i.auz, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.avc = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.avd = fmul <4 x float> %i.ato, %i.auq
  %i.ave = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atp, <4 x float> %i.auj, <4 x float> %i.avd)
  %i.avf = load <2 x float>, ptr %i.bd, align 4, !tbaa !142, !noalias !313 ; 2 uses
  %i.avg = shufflevector <2 x float> %i.avf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.avh = shufflevector <4 x float> %i.avg, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.avi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avh, <4 x float> %i.asv, <4 x float> %i.auc) ; 3 uses
  %i.avj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atj, <4 x float> %i.avi, <4 x float> %i.aus) ; 3 uses
  %i.avk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atn, <4 x float> %i.avi, <4 x float> %i.auu) ; 3 uses
  %i.avl = shufflevector <4 x float> %i.asy, <4 x float> %i.avj, <4 x i32> <i32 poison, i32 0, i32 poison, i32 4>
  %i.avm = shufflevector <4 x float> %i.auy, <4 x float> %i.avl, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.avn = fmul <4 x float> %i.aux, %i.avm
  %i.avo = shufflevector <4 x float> %i.avc, <4 x float> %i.avk, <4 x i32> <i32 0, i32 0, i32 0, i32 4>
  %i.avp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avb, <4 x float> %i.avo, <4 x float> %i.avn)
  %i.avq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atr, <4 x float> %i.avi, <4 x float> %i.ave) ; 3 uses
  %i.avr = fmul <4 x float> %i.gw, %i.avj
  %i.avs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %i.avk, <4 x float> %i.avr)
  %i.avt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %i.avq, <4 x float> %i.avs)
  %i.avu = fadd <4 x float> %i.he, %i.avt
  %i.avv = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.sroa.16303.0.copyload, i64 3
  %i.avw = shufflevector <2 x float> %i.asr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.avx = shufflevector <4 x float> %i.avw, <4 x float> %i.avq, <4 x i32> <i32 poison, i32 0, i32 poison, i32 4>
  %i.avy = shufflevector <2 x float> %i.avf, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.avz = shufflevector <4 x float> %i.avy, <4 x float> %i.avx, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.awa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avv, <4 x float> %i.avz, <4 x float> %i.avp) ; 4 uses
  %i.awb = extractelement <4 x float> %i.awa, i64 3
  %i.awc = fadd float %i.gt, %i.awb
  %i.awd = fadd float %i.dx, %i.awc
  %i.awe = insertelement <4 x float> %i.dy, float 0.000000e+00, i64 2
  %i.awf = fadd <4 x float> %i.awe, %i.avu
  store float %i.awd, ptr %0, align 4, !tbaa !142, !alias.scope !314
  store <4 x float> %i.awf, ptr %i.aso, align 4, !tbaa !142, !alias.scope !314
  %i.awg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.awh = shufflevector <4 x float> %i.avj, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.awi = shufflevector <4 x float> %i.avk, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.awj = shufflevector <4 x float> %i.avq, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.awk = insertelement <4 x float> %i.el, float 0.000000e+00, i64 2
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.awm = shufflevector <4 x float> %i.awa, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.awn = fmul <3 x float> %i.awm, %i.ask
  %i.awo = shufflevector <4 x float> %i.awa, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.awp = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.asj, <3 x float> %i.awo, <3 x float> %i.awn)
  %i.awq = insertelement <3 x float> poison, float %.sroa.27.0, i64 0
  %i.awr = insertelement <3 x float> %i.awq, float %.sroa.21438.0, i64 1
  %i.aws = insertelement <3 x float> %i.awr, float %.sroa.24.0, i64 2
  %i.awt = shufflevector <4 x float> %i.awa, <4 x float> poison, <3 x i32> zeroinitializer
  %i.awu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aws, <3 x float> %i.awt, <3 x float> %i.awp) ; 4 uses
  %i.awv = shufflevector <3 x float> %i.awu, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aww = fmul <2 x float> %i.x, %i.awv
  %i.awx = shufflevector <3 x float> %i.awu, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.awy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.awx, <2 x float> %i.aww)
  %i.awz = shufflevector <3 x float> %i.awu, <3 x float> poison, <2 x i32> zeroinitializer
  %i.axa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.awz, <2 x float> %i.awy)
  %i.axb = fadd <2 x float> %i.im, %i.axa
  %i.axc = fadd <2 x float> %i.en, %i.axb
  %i.axd = shufflevector <3 x float> %i.awu, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.axe = shufflevector <4 x float> %i.awh, <4 x float> %i.axd, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.axf = fmul <4 x float> %i.hh, %i.axe
  %i.axg = shufflevector <4 x float> %i.awi, <4 x float> %i.axd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.axh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hl, <4 x float> %i.axg, <4 x float> %i.axf)
  %i.axi = shufflevector <4 x float> %i.awj, <4 x float> %i.axd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.axj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %i.axi, <4 x float> %i.axh)
  %i.axk = fadd <4 x float> %i.ig, %i.axj
  %i.axl = fadd <4 x float> %i.awk, %i.axk
  store <4 x float> %i.axl, ptr %i.awg, align 4, !tbaa !142, !alias.scope !314
  store <2 x float> %i.axc, ptr %i.awl, align 4, !tbaa !142, !alias.scope !314
  %.pre443 = load ptr, ptr %i.io, align 8, !tbaa !132
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.axm = phi ptr [ %.pre443, %bb.q ], [ %i.asi, %bb.p ] ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %i.axn, align 4, !tbaa !149
  %.not.i.i.i91 = icmp ne ptr %i.axm, null
  %i.axo = load i8, ptr %i.in, align 8, !range !143
  %i.axp = trunc nuw i8 %i.axo to i1
  %or.cond.i.i = select i1 %.not.i.i.i91, i1 %i.axp, i1 false
  br i1 %or.cond.i.i, label %bb.s, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.axm)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.axq = landingpad { ptr, i32 }
          catch ptr null
  %i.axr = extractvalue { ptr, i32 } %i.axq, 0
  tail call void @__clang_call_terminate(ptr %i.axr) #23
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody29internalApplyFullSpaceImpulseERK9btVector3S2_if(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, i32 noundef %3, float noundef %4) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btAlignedObjectArray.6, align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.b = load i8, ptr %i.a, align 8, !tbaa !122, !range !143, !noundef !148
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.d = fdiv float 1.000000e+00, %4              ; 2 uses
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !142
  %i.f = insertelement <2 x float> poison, float %i.d, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !142
  %i.k = fmul float %i.d, %i.j
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  store <2 x float> %i.h, ptr %5, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.l, align 8
  call void @_ZN23btReducedDeformableBody24applyFullSpaceNodalForceERK9btVector3i(ptr noundef nonnull align 8 dereferenceable(3176) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.m, align 8, !tbaa !127
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !128
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !129
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !130
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !139  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %_ZN20btAlignedObjectArrayIfED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.t = zext nneg i32 %i.r to i64
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  %i.v = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.u, i32 noundef 16)
          to label %.loopexit unwind label %bb.d  ; 16 uses

.loopexit:                                        ; preds = %bb.c
  %i.w = ptrtoaddr ptr %i.v to i64                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %i.u, i1 false), !tbaa !142
  %.pre = load i32, ptr %i.q, align 8, !tbaa !139 ; 7 uses
  %i.x = icmp sgt i32 %.pre, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge32

.lr.ph:                                           ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !128  ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !128 ; 7 uses
  %wide.trip.count = zext nneg i32 %.pre to i64   ; 15 uses
  %min.iters.check = icmp ult i32 %.pre, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = ptrtoaddr ptr %i.z to i64
  %i.ae = sub i64 %i.ad, %i.w
  %diff.check = icmp ugt i64 %i.ae, -32
  %i.af = sub i64 %i.ac, %i.w
  %diff.check48 = icmp ugt i64 %i.af, -32
  %conflict.rdx = or i1 %diff.check, %diff.check48
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_3
