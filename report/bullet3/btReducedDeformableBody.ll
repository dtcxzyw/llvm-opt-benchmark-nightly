Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btReducedDeformableBody?download=true
inline.NumInlined: 956
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN23btReducedDeformableBody32updateExternalForceProjectMatrixEb:bb.a
  %broadcast.splatinsert319 = insertelement <4 x float> poison, float %i.ko, i64 0
  %broadcast.splat320 = shufflevector <4 x float> %broadcast.splatinsert319, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.kp = load float, ptr %i.hp, align 8, !tbaa !142, !alias.scope !243, !noalias !244
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.kp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.kq = load float, ptr %i.hq, align 8, !tbaa !142, !alias.scope !243, !noalias !244
  %broadcast.splatinsert321 = insertelement <4 x float> poison, float %i.kq, i64 0
  %broadcast.splat322 = shufflevector <4 x float> %broadcast.splatinsert321, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.kr = load float, ptr %i.hr, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %broadcast.splatinsert323 = insertelement <4 x float> poison, float %i.kr, i64 0
  %broadcast.splat324 = shufflevector <4 x float> %broadcast.splatinsert323, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ks = load float, ptr %i.hs, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %broadcast.splatinsert313 = insertelement <4 x float> poison, float %i.ks, i64 0
  %broadcast.splat314 = shufflevector <4 x float> %broadcast.splatinsert313, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.kt = load float, ptr %i.ht, align 4, !tbaa !142, !alias.scope !243, !noalias !244
  %broadcast.splatinsert325 = insertelement <4 x float> poison, float %i.kt, i64 0
  %broadcast.splat326 = shufflevector <4 x float> %broadcast.splatinsert325, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ku = load float, ptr %i.hu, align 8, !tbaa !142, !alias.scope !243, !noalias !244
  %broadcast.splatinsert327 = insertelement <4 x float> poison, float %i.ku, i64 0
  %broadcast.splat328 = shufflevector <4 x float> %broadcast.splatinsert327, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.kv = load float, ptr %i.hv, align 8, !tbaa !142, !alias.scope !243, !noalias !244
  %broadcast.splatinsert315 = insertelement <4 x float> poison, float %i.kv, i64 0
  %broadcast.splat316 = shufflevector <4 x float> %broadcast.splatinsert315, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.kw = load float, ptr %i.hw, align 8, !tbaa !142, !alias.scope !243, !noalias !244
  %broadcast.splatinsert329 = insertelement <4 x float> poison, float %i.kw, i64 0
  %broadcast.splat330 = shufflevector <4 x float> %broadcast.splatinsert329, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.kx = fmul <4 x float> %broadcast.splat, zeroinitializer
  %i.ky = fmul <4 x float> %broadcast.splat314, zeroinitializer
  %i.kz = fmul <4 x float> %broadcast.splat316, zeroinitializer
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph311
  %index318 = phi i64 [ 0, %vector.ph311 ], [ %index.next332, %vector.body317 ] ; 7 uses
  %i.la = or disjoint i64 %index318, 1            ; 2 uses
  %i.lb = or disjoint i64 %index318, 2            ; 2 uses
  %i.lc = or disjoint i64 %index318, 3            ; 2 uses
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %index318 ; 3 uses
  %i.le = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.la ; 3 uses
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.lb ; 3 uses
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.lc ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.ll = load float, ptr %i.lh, align 4, !tbaa !142, !alias.scope !245, !noalias !246
  %i.lm = load float, ptr %i.li, align 4, !tbaa !142, !alias.scope !245, !noalias !246
  %i.ln = load float, ptr %i.lj, align 4, !tbaa !142, !alias.scope !245, !noalias !246
  %i.lo = load float, ptr %i.lk, align 4, !tbaa !142, !alias.scope !245, !noalias !246
  %i.lp = insertelement <4 x float> poison, float %i.ll, i64 0
  %i.lq = insertelement <4 x float> %i.lp, float %i.lm, i64 1
  %i.lr = insertelement <4 x float> %i.lq, float %i.ln, i64 2
  %i.ls = insertelement <4 x float> %i.lr, float %i.lo, i64 3 ; 7 uses
  %i.lt = fneg <4 x float> %i.ls                  ; 6 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !142, !alias.scope !245, !noalias !246
  %i.lz = load float, ptr %i.lv, align 4, !tbaa !142, !alias.scope !245, !noalias !246
  %i.ma = load float, ptr %i.lw, align 4, !tbaa !142, !alias.scope !245, !noalias !246
  %i.mb = load float, ptr %i.lx, align 4, !tbaa !142, !alias.scope !245, !noalias !246
  %i.mc = insertelement <4 x float> poison, float %i.ly, i64 0
  %i.md = insertelement <4 x float> %i.mc, float %i.lz, i64 1
  %i.me = insertelement <4 x float> %i.md, float %i.ma, i64 2
  %i.mf = insertelement <4 x float> %i.me, float %i.mb, i64 3 ; 7 uses
  %i.mg = load float, ptr %i.ld, align 4, !tbaa !142, !alias.scope !245, !noalias !246
  %i.mh = load float, ptr %i.le, align 4, !tbaa !142, !alias.scope !245, !noalias !246
  %i.mi = load float, ptr %i.lf, align 4, !tbaa !142, !alias.scope !245, !noalias !246
  %i.mj = load float, ptr %i.lg, align 4, !tbaa !142, !alias.scope !245, !noalias !246
  %i.mk = insertelement <4 x float> poison, float %i.mg, i64 0
  %i.ml = insertelement <4 x float> %i.mk, float %i.mh, i64 1
  %i.mm = insertelement <4 x float> %i.ml, float %i.mi, i64 2
  %i.mn = insertelement <4 x float> %i.mm, float %i.mj, i64 3 ; 7 uses
  %i.mo = fneg <4 x float> %i.mn                  ; 6 uses
  %i.mp = fneg <4 x float> %i.mf                  ; 6 uses
  %i.mq = mul nuw nsw i64 %index318, 3            ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.mq ; 3 uses
  %.idx350 = mul nuw nsw i64 %i.la, 12
  %i.ms = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.idx350 ; 3 uses
  %.idx351 = mul nuw nsw i64 %i.lb, 12
  %i.mt = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.idx351 ; 3 uses
  %.idx352 = mul nuw nsw i64 %i.lc, 12
  %i.mu = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.idx352 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.nd = load float, ptr %i.mr, align 4, !tbaa !142, !alias.scope !247
  %i.ne = load float, ptr %i.ms, align 4, !tbaa !142, !alias.scope !247
  %i.nf = load float, ptr %i.mt, align 4, !tbaa !142, !alias.scope !247
  %i.ng = load float, ptr %i.mu, align 4, !tbaa !142, !alias.scope !247
  %i.nh = insertelement <4 x float> poison, float %i.nd, i64 0
  %i.ni = insertelement <4 x float> %i.nh, float %i.ne, i64 1
  %i.nj = insertelement <4 x float> %i.ni, float %i.nf, i64 2
  %i.nk = insertelement <4 x float> %i.nj, float %i.ng, i64 3 ; 3 uses
  %i.nl = load float, ptr %i.mv, align 4, !tbaa !142, !alias.scope !247
  %i.nm = load float, ptr %i.mw, align 4, !tbaa !142, !alias.scope !247
  %i.nn = load float, ptr %i.mx, align 4, !tbaa !142, !alias.scope !247
  %i.no = load float, ptr %i.my, align 4, !tbaa !142, !alias.scope !247
  %i.np = insertelement <4 x float> poison, float %i.nl, i64 0
  %i.nq = insertelement <4 x float> %i.np, float %i.nm, i64 1
  %i.nr = insertelement <4 x float> %i.nq, float %i.nn, i64 2
  %i.ns = insertelement <4 x float> %i.nr, float %i.no, i64 3 ; 3 uses
  %i.nt = load float, ptr %i.mz, align 4, !tbaa !142, !alias.scope !247
  %i.nu = load float, ptr %i.na, align 4, !tbaa !142, !alias.scope !247
  %i.nv = load float, ptr %i.nb, align 4, !tbaa !142, !alias.scope !247
  %i.nw = load float, ptr %i.nc, align 4, !tbaa !142, !alias.scope !247
  %i.nx = insertelement <4 x float> poison, float %i.nt, i64 0
  %i.ny = insertelement <4 x float> %i.nx, float %i.nu, i64 1
  %i.nz = insertelement <4 x float> %i.ny, float %i.nv, i64 2
  %i.oa = insertelement <4 x float> %i.nz, float %i.nw, i64 3 ; 3 uses
  %i.ob = fmul <4 x float> %broadcast.splat, %i.lt
  %i.oc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat320, <4 x float> zeroinitializer, <4 x float> %i.ob)
  %i.od = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat322, <4 x float> %i.mf, <4 x float> %i.oc) ; 3 uses
  %i.oe = fmul <4 x float> %broadcast.splat314, %i.lt
  %i.of = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat324, <4 x float> zeroinitializer, <4 x float> %i.oe)
  %i.og = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat326, <4 x float> %i.mf, <4 x float> %i.of) ; 3 uses
  %i.oh = fmul <4 x float> %broadcast.splat316, %i.lt
  %i.oi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> zeroinitializer, <4 x float> %i.oh)
  %i.oj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> %i.mf, <4 x float> %i.oi) ; 3 uses
  %i.ok = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat320, <4 x float> %i.ls, <4 x float> %i.kx)
  %i.ol = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat322, <4 x float> %i.mo, <4 x float> %i.ok) ; 3 uses
  %i.om = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat324, <4 x float> %i.ls, <4 x float> %i.ky)
  %i.on = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat326, <4 x float> %i.mo, <4 x float> %i.om) ; 3 uses
  %i.oo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %i.ls, <4 x float> %i.kz)
  %i.op = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> %i.mo, <4 x float> %i.oo) ; 3 uses
  %i.oq = fmul <4 x float> %i.mn, %broadcast.splat
  %i.or = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat320, <4 x float> %i.mp, <4 x float> %i.oq)
  %i.os = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat322, <4 x float> zeroinitializer, <4 x float> %i.or) ; 3 uses
  %i.ot = fmul <4 x float> %i.mn, %broadcast.splat314
  %i.ou = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat324, <4 x float> %i.mp, <4 x float> %i.ot)
  %i.ov = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat326, <4 x float> zeroinitializer, <4 x float> %i.ou) ; 3 uses
  %i.ow = fmul <4 x float> %i.mn, %broadcast.splat316
  %i.ox = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %i.mp, <4 x float> %i.ow)
  %i.oy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> zeroinitializer, <4 x float> %i.ox) ; 3 uses
  %i.oz = fmul <4 x float> %i.ls, %i.og
  %i.pa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.od, <4 x float> zeroinitializer, <4 x float> %i.oz)
  %i.pb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mp, <4 x float> %i.oj, <4 x float> %i.pa)
  %i.pc = fmul <4 x float> %i.og, zeroinitializer
  %i.pd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lt, <4 x float> %i.od, <4 x float> %i.pc)
  %i.pe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mn, <4 x float> %i.oj, <4 x float> %i.pd)
  %i.pf = fmul <4 x float> %i.og, %i.mo
  %i.pg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mf, <4 x float> %i.od, <4 x float> %i.pf)
  %i.ph = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oj, <4 x float> zeroinitializer, <4 x float> %i.pg)
  %i.pi = fmul <4 x float> %i.ls, %i.on
  %i.pj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ol, <4 x float> zeroinitializer, <4 x float> %i.pi)
  %i.pk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mp, <4 x float> %i.op, <4 x float> %i.pj)
  %i.pl = fmul <4 x float> %i.on, zeroinitializer
  %i.pm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lt, <4 x float> %i.ol, <4 x float> %i.pl)
  %i.pn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mn, <4 x float> %i.op, <4 x float> %i.pm)
  %i.po = fmul <4 x float> %i.on, %i.mo
  %i.pp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mf, <4 x float> %i.ol, <4 x float> %i.po)
  %i.pq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.op, <4 x float> zeroinitializer, <4 x float> %i.pp)
  %i.pr = fmul <4 x float> %i.ls, %i.ov
  %i.ps = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.os, <4 x float> zeroinitializer, <4 x float> %i.pr)
  %i.pt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mp, <4 x float> %i.oy, <4 x float> %i.ps)
  %i.pu = fmul <4 x float> %i.ov, zeroinitializer
  %i.pv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lt, <4 x float> %i.os, <4 x float> %i.pu)
  %i.pw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mn, <4 x float> %i.oy, <4 x float> %i.pv)
  %i.px = fmul <4 x float> %i.ov, %i.mo
  %i.py = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mf, <4 x float> %i.os, <4 x float> %i.px)
  %i.pz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oy, <4 x float> zeroinitializer, <4 x float> %i.py)
  %i.qa = fmul <4 x float> %i.ns, %i.pe
  %i.qb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pb, <4 x float> %i.nk, <4 x float> %i.qa)
  %i.qc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ph, <4 x float> %i.oa, <4 x float> %i.qb)
  %i.qd = fmul <4 x float> %i.ns, %i.pn
  %i.qe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pk, <4 x float> %i.nk, <4 x float> %i.qd)
  %i.qf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pq, <4 x float> %i.oa, <4 x float> %i.qe)
  %i.qg = fmul <4 x float> %i.ns, %i.pw
  %i.qh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pt, <4 x float> %i.nk, <4 x float> %i.qg)
  %i.qi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pz, <4 x float> %i.oa, <4 x float> %i.qh)
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %index318
  %wide.load331 = load <4 x float>, ptr %i.qj, align 4, !tbaa !142, !alias.scope !248 ; 3 uses
  %i.qk = fmul <4 x float> %wide.load331, %i.qc
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.mq
  %i.qm = fmul <4 x float> %wide.load331, %i.qf
  %i.qn = fmul <4 x float> %wide.load331, %i.qi
  %i.qo = shufflevector <4 x float> %i.qk, <4 x float> %i.qm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qp = shufflevector <4 x float> %i.qn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.qo, <8 x float> %i.qp, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.ql, align 4, !tbaa !142, !alias.scope !249, !noalias !250
  %index.next332 = add nuw i64 %index318, 4       ; 2 uses
  %i.qq = icmp eq i64 %index.next332, %n.vec312
  br i1 %i.qq, label %scalar.ph309.preheader, label %vector.body317, !llvm.loop !240

._crit_edge199:                                   ; preds = %scalar.ph309, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit116
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.qr = load i32, ptr %i.hi, align 8, !tbaa !139
  %i.qs = sext i32 %i.qr to i64
  %i.qt = icmp slt i64 %indvars.iv.next221, %i.qs
  br i1 %i.qt, label %bb.y, label %._crit_edge203, !llvm.loop !241

scalar.ph309:                                     ; preds = %scalar.ph309.preheader, %scalar.ph309
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %scalar.ph309 ], [ %indvars.iv215.ph, %scalar.ph309.preheader ] ; 4 uses
  %i.qu = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %indvars.iv215 ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %4 = load float, ptr %i.qv, align 4, !tbaa !142, !noalias !246 ; 7 uses
  %5 = fneg float %4                              ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 4
  %i.qx = mul nuw nsw i64 %indvars.iv215, 3       ; 4 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.qx ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rb = load float, ptr %i.qy, align 4, !tbaa !142 ; 3 uses
  %i.rc = load float, ptr %i.ra, align 4, !tbaa !142 ; 3 uses
  %i.rd = load <3 x float>, ptr %i.ho, align 8, !tbaa !142, !noalias !244 ; 2 uses
  %i.re = shufflevector <3 x float> %i.rd, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.rf = load float, ptr %i.hr, align 4, !tbaa !142, !noalias !244 ; 2 uses
  %i.rg = load <3 x float>, ptr %i.hp, align 8, !tbaa !142, !noalias !244 ; 2 uses
  %i.rh = shufflevector <3 x float> %i.rg, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ri = load float, ptr %i.hs, align 4, !tbaa !142, !noalias !244 ; 2 uses
  %i.rj = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %5, i64 0
  %i.rk = shufflevector <4 x float> %i.rj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %6 = fmul <4 x float> %i.rh, %i.rk
  %7 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %4, i64 3
  %8 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.re, <4 x float> %7, <4 x float> %6)
  %9 = load <3 x float>, ptr %i.hq, align 8, !tbaa !142, !noalias !244 ; 2 uses
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %11 = load float, ptr %i.ht, align 4, !tbaa !142, !noalias !244 ; 2 uses
  %12 = fmul float %i.ri, 0.000000e+00
  %13 = extractelement <3 x float> %i.rg, i64 2
  %14 = fmul float %13, 0.000000e+00
  %15 = extractelement <3 x float> %i.rd, i64 2
  %16 = call float @llvm.fmuladd.f32(float %15, float %4, float %14)
  %i.rl = extractelement <3 x float> %9, i64 2
  %17 = load <2 x float>, ptr %i.qu, align 4, !tbaa !142, !noalias !246 ; 4 uses
  %18 = load float, ptr %i.qw, align 4, !tbaa !142, !noalias !246 ; 3 uses
  %19 = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison> ; 2 uses
  %20 = call float @llvm.fmuladd.f32(float %i.rf, float %4, float %12)
  %21 = insertelement <4 x float> %19, float 0.000000e+00, i64 3
  %22 = insertelement <4 x float> %21, float %5, i64 1
  %23 = load float, ptr %i.qz, align 4, !tbaa !142 ; 3 uses
  %i.rm = insertelement <2 x float> %17, float %4, i64 1
  %24 = shufflevector <2 x float> %i.rm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %25 = extractelement <2 x float> %17, i64 0     ; 3 uses
  %26 = fneg float %18                            ; 5 uses
  %27 = fmul float %25, %i.ri
  %28 = call float @llvm.fmuladd.f32(float %i.rf, float %26, float %27)
  %29 = fneg float %25                            ; 6 uses
  %30 = insertelement <4 x float> %19, float %29, i64 1
  %31 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %32 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %31, <4 x float> %8) ; 8 uses
  %i.rn = call noundef float @llvm.fmuladd.f32(float %11, float %29, float %20) ; 3 uses
  %33 = call noundef float @llvm.fmuladd.f32(float %i.rl, float %29, float %16) ; 3 uses
  %34 = call noundef float @llvm.fmuladd.f32(float %11, float 0.000000e+00, float %28) ; 2 uses
  %35 = extractelement <4 x float> %32, i64 1     ; 2 uses
  %36 = shufflevector <4 x float> %i.rh, <4 x float> %32, <4 x i32> <i32 2, i32 0, i32 0, i32 5>
  %37 = fmul <4 x float> %24, %36
  %i.ro = extractelement <4 x float> %32, i64 0
  %38 = shufflevector <4 x float> %i.re, <4 x float> %32, <4 x i32> <i32 2, i32 0, i32 0, i32 4>
  %39 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %26, i64 0
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %41 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %38, <4 x float> %40, <4 x float> %37)
  %42 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %26, i64 3
  %43 = shufflevector <4 x float> %10, <4 x float> %32, <4 x i32> <i32 2, i32 0, i32 0, i32 6>
  %44 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %42, <4 x float> %43, <4 x float> %41) ; 4 uses
  %45 = fmul float %35, 0.000000e+00
  %46 = call float @llvm.fmuladd.f32(float %5, float %i.ro, float %45)
  %47 = fmul float %35, %29
  %48 = fmul float %4, %i.rn
  %49 = extractelement <4 x float> %32, i64 3
  %50 = fmul float %i.rn, 0.000000e+00
  %51 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 3>
  %i.rp = insertelement <4 x float> poison, float %47, i64 0
  %52 = insertelement <4 x float> %i.rp, float %50, i64 1
  %53 = insertelement <4 x float> %52, float %46, i64 2
  %i.rq = insertelement <4 x float> %53, float %48, i64 3
  %i.rr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %22, <4 x float> %51, <4 x float> %i.rq) ; 3 uses
  %i.rs = extractelement <4 x float> %i.rr, i64 1
  %i.rt = call noundef float @llvm.fmuladd.f32(float %25, float %33, float %i.rs)
  %54 = fmul float %i.rn, %29
  %i.ru = call float @llvm.fmuladd.f32(float %18, float %49, float %54)
  %55 = call noundef float @llvm.fmuladd.f32(float %33, float 0.000000e+00, float %i.ru)
  %56 = fmul float %4, %34
  %i.rv = extractelement <4 x float> %44, i64 1
  %i.rw = call float @llvm.fmuladd.f32(float %i.rv, float 0.000000e+00, float %56)
  %57 = insertelement <4 x float> poison, float %i.rw, i64 0
  %58 = insertelement <4 x float> %57, float %34, i64 1
  %59 = insertelement <4 x float> %58, float %23, i64 3
  %60 = shufflevector <4 x float> %59, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %61 = shufflevector <4 x float> %i.rr, <4 x float> <float 1.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 poison, i32 2>
  %i.rx = insertelement <4 x float> %61, float %29, i64 2
  %62 = fmul <4 x float> %60, %i.rx
  %i.ry = insertelement <4 x float> poison, float %26, i64 0
  %i.rz = insertelement <4 x float> %i.ry, float %5, i64 1
  %63 = insertelement <4 x float> %i.rz, float %18, i64 2
  %64 = insertelement <4 x float> %63, float %i.rb, i64 3
  %65 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %64, <4 x float> %44, <4 x float> %62) ; 2 uses
  %66 = shufflevector <4 x float> %32, <4 x float> <float poison, float -0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 poison, i32 5, i32 6, i32 2>
  %67 = insertelement <4 x float> %66, float %26, i64 0
  %68 = insertelement <4 x float> <float poison, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00>, float %33, i64 0
  %69 = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %70 = shufflevector <4 x float> %i.rr, <4 x float> %69, <4 x i32> <i32 3, i32 4, i32 poison, i32 0>
  %71 = shufflevector <4 x float> %70, <4 x float> %44, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %72 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %67, <4 x float> %68, <4 x float> %71)
  %73 = fmul float %23, %i.rt
  %74 = shufflevector <4 x float> %44, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 poison, i32 0, i32 6, i32 poison>
  %i.sa = insertelement <4 x float> %74, float %i.rb, i64 0
  %i.sb = insertelement <4 x float> %i.sa, float %i.rc, i64 3
  %i.sc = insertelement <4 x float> %65, float %73, i64 0
  %i.sd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %72, <4 x float> %i.sb, <4 x float> %i.sc) ; 4 uses
  %i.se = extractelement <4 x float> %i.sd, i64 0
  %i.sf = call noundef float @llvm.fmuladd.f32(float %55, float %i.rc, float %i.se)
  %i.sg = extractelement <4 x float> %i.sd, i64 1
  %i.sh = fmul float %23, %i.sg
  %i.si = extractelement <4 x float> %65, i64 0
  %i.sj = call float @llvm.fmuladd.f32(float %i.si, float %i.rb, float %i.sh)
  %i.sk = extractelement <4 x float> %i.sd, i64 2
  %i.sl = call noundef float @llvm.fmuladd.f32(float %i.sk, float %i.rc, float %i.sj)
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv215 ; 3 uses
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !142
  %75 = extractelement <4 x float> %i.sd, i64 3
  %i.so = fmul float %i.sn, %75
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.qx
  store float %i.so, ptr %i.sp, align 4, !tbaa !142
  %i.sq = load float, ptr %i.sm, align 4, !tbaa !142
  %i.sr = fmul float %i.sq, %i.sf
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.qx
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 4
  store float %i.sr, ptr %i.st, align 4, !tbaa !142
  %i.su = load float, ptr %i.sm, align 4, !tbaa !142
  %i.sv = fmul float %i.su, %i.sl
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.qx
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store float %i.sv, ptr %i.sx, align 4, !tbaa !142
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count218
  br i1 %exitcond219.not, label %._crit_edge199, label %scalar.ph309, !llvm.loop !242

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
  br i1 %exitcond30.not, label %.loopexit, label %bb.b, !llvm.loop !251

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
  %diff.check40 = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check42, i1 true, i1 %diff.check40
  br i1 %or.cond, label %scalar.ph41.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.i.i.i.i
  %n.vec44 = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph43
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next49, %vector.body45 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index46 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index46 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load47 = load <4 x float>, ptr %i.ak, align 4, !tbaa !142
  %wide.load48 = load <4 x float>, ptr %i.al, align 4, !tbaa !142
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x float> %wide.load47, ptr %i.aj, align 4, !tbaa !142
  store <4 x float> %wide.load48, ptr %i.am, align 4, !tbaa !142
  %index.next49 = add nuw i64 %index46, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.an, label %middle.block50, label %vector.body45, !llvm.loop !252

middle.block50:                                   ; preds = %vector.body45
  %cmp.n51 = icmp eq i64 %n.vec44, %wide.trip.count.i.i.i.i
  br i1 %cmp.n51, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph41.preheader

scalar.ph41.preheader:                            ; preds = %.lr.ph.i.i.i.i, %middle.block50
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec44, %middle.block50 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph41.prol.loopexit, label %scalar.ph41.prol

scalar.ph41.prol:                                 ; preds = %scalar.ph41.preheader, %scalar.ph41.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph41.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph41.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph41.prol ], [ 0, %scalar.ph41.preheader ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.i.prol
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i.prol
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !142
  store float %i.aq, ptr %i.ao, align 4, !tbaa !142
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph41.prol.loopexit, label %scalar.ph41.prol, !llvm.loop !253

scalar.ph41.prol.loopexit:                        ; preds = %scalar.ph41.prol, %scalar.ph41.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph41.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph41.prol ]
  %i.ar = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph41

scalar.ph41:                                      ; preds = %scalar.ph41.prol.loopexit, %scalar.ph41
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph41 ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph41.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.i
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.av = load float, ptr %i.au, align 4, !tbaa !142
  store float %i.av, ptr %i.at, align 4, !tbaa !142
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i.i
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !142
  store float %i.ay, ptr %i.aw, align 4, !tbaa !142
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.i.1
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i.i.1
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !142
  store float %i.bb, ptr %i.az, align 4, !tbaa !142
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.i.2
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i.i.2
  %i.be = load float, ptr %i.bd, align 4, !tbaa !142
  store float %i.be, ptr %i.bc, align 4, !tbaa !142
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, label %scalar.ph41, !llvm.loop !254

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i5.i.i.i, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i: ; preds = %scalar.ph41.prol.loopexit, %scalar.ph41, %middle.block50, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i
  %i.bf = load i8, ptr %i.v, align 8, !tbaa !127, !range !143, !noundef !148
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.g, label %.lr.ph.i.i

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ag)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i
  store i8 1, ptr %i.v, align 8, !tbaa !127
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !128
  store i32 %i.z, ptr %i.y, align 8, !tbaa !130
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %i.ac, i1 false), !tbaa !142
end_hunk_0
