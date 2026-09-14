Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul.dispatch?download=true
inline.NumInlined: 1374
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 224
loop-unroll.NumUnrolled: 233
begin_hunk_0_@_ZN2cv12cpu_baselineL13transform_32fEPKfPfS2_iii:bb.a
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.ld = zext i32 %i.kj to i64                   ; 3 uses
  %i.le = tail call i64 @llvm.usub.sat.i64(i64 %i.ld, i64 4) ; 2 uses
  %i.lf = lshr exact i64 %i.le, 2
  %i.lg = add nuw nsw i64 %i.lf, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.le, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.lh = tail call i64 @llvm.usub.sat.i64(i64 %i.ld, i64 4)
  %i.li = shl nuw nsw i64 %i.lh, 2
  %i.lj = add nuw nsw i64 %i.li, 16               ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.lj  ; 2 uses
  %scevgep29 = getelementptr i8, ptr %0, i64 %i.lj
  %scevgep30 = getelementptr i8, ptr %2, i64 80
  %bound0 = icmp ult ptr %1, %scevgep29
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %1, %scevgep30
  %bound132 = icmp ult ptr %2, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lg, 2147483644              ; 3 uses
  %i.lk = shl nuw nsw i64 %n.vec, 2
  %i.ll = load float, ptr %2, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert34 = insertelement <4 x float> poison, float %i.ll, i64 0
  %i.lm = load float, ptr %i.kk, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.lm, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ln = load float, ptr %i.kl, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert36 = insertelement <4 x float> poison, float %i.ln, i64 0
  %i.lo = load float, ptr %i.km, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert38 = insertelement <4 x float> poison, float %i.lo, i64 0
  %i.lp = load float, ptr %i.kn, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert40 = insertelement <4 x float> poison, float %i.lp, i64 0
  %i.lq = load float, ptr %i.ko, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert44 = insertelement <4 x float> poison, float %i.lq, i64 0
  %i.lr = load float, ptr %i.kp, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert42 = insertelement <4 x float> poison, float %i.lr, i64 0
  %broadcast.splat43 = shufflevector <4 x float> %broadcast.splatinsert42, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ls = load float, ptr %i.kq, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.ls, i64 0
  %i.lt = load float, ptr %i.kr, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %i.lt, i64 0
  %i.lu = load float, ptr %i.ks, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.lu, i64 0
  %i.lv = load float, ptr %i.kt, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert54 = insertelement <4 x float> poison, float %i.lv, i64 0
  %i.lw = load float, ptr %i.ku, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert52 = insertelement <4 x float> poison, float %i.lw, i64 0
  %broadcast.splat53 = shufflevector <4 x float> %broadcast.splatinsert52, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lx = load float, ptr %i.kv, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert56 = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.ly = load float, ptr %i.kw, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert58 = insertelement <4 x float> poison, float %i.ly, i64 0
  %i.lz = load float, ptr %i.kx, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert60 = insertelement <4 x float> poison, float %i.lz, i64 0
  %i.ma = load float, ptr %i.ky, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert64 = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.mb = load float, ptr %i.kz, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert62 = insertelement <4 x float> poison, float %i.mb, i64 0
  %broadcast.splat63 = shufflevector <4 x float> %broadcast.splatinsert62, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mc = load float, ptr %i.la, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert66 = insertelement <4 x float> poison, float %i.mc, i64 0
  %i.md = load float, ptr %i.lb, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert68 = insertelement <4 x float> poison, float %i.md, i64 0
  %i.me = load float, ptr %i.lc, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert70 = insertelement <4 x float> poison, float %i.me, i64 0
  %i.mf = shufflevector <4 x float> %broadcast.splatinsert40, <4 x float> %broadcast.splatinsert50, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.mg = shufflevector <4 x float> %broadcast.splatinsert38, <4 x float> %broadcast.splatinsert48, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.mh = shufflevector <4 x float> %broadcast.splatinsert36, <4 x float> %broadcast.splatinsert46, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.mi = shufflevector <4 x float> %broadcast.splatinsert34, <4 x float> %broadcast.splatinsert44, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.mj = shufflevector <4 x float> %broadcast.splatinsert60, <4 x float> %broadcast.splatinsert70, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.mk = shufflevector <4 x float> %broadcast.splatinsert58, <4 x float> %broadcast.splatinsert68, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ml = shufflevector <4 x float> %broadcast.splatinsert56, <4 x float> %broadcast.splatinsert66, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.mm = shufflevector <4 x float> %broadcast.splatinsert54, <4 x float> %broadcast.splatinsert64, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mn = shl nuw i64 %index, 2                   ; 17 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  %i.mv = load float, ptr %i.mo, align 4, !tbaa !22, !alias.scope !172
  %i.mw = load float, ptr %i.mq, align 4, !tbaa !22, !alias.scope !172
  %i.mx = load float, ptr %i.ms, align 4, !tbaa !22, !alias.scope !172
  %i.my = load float, ptr %i.mu, align 4, !tbaa !22, !alias.scope !172
  %i.mz = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.na = insertelement <4 x float> %i.mz, float %i.mw, i64 1
  %i.nb = insertelement <4 x float> %i.na, float %i.mx, i64 2
  %i.nc = insertelement <4 x float> %i.nb, float %i.my, i64 3 ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 20
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 36
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 52
  %i.nl = load float, ptr %i.ne, align 4, !tbaa !22, !alias.scope !172
  %i.nm = load float, ptr %i.ng, align 4, !tbaa !22, !alias.scope !172
  %i.nn = load float, ptr %i.ni, align 4, !tbaa !22, !alias.scope !172
  %i.no = load float, ptr %i.nk, align 4, !tbaa !22, !alias.scope !172
  %i.np = insertelement <4 x float> poison, float %i.nl, i64 0
  %i.nq = insertelement <4 x float> %i.np, float %i.nm, i64 1
  %i.nr = insertelement <4 x float> %i.nq, float %i.nn, i64 2
  %i.ns = insertelement <4 x float> %i.nr, float %i.no, i64 3 ; 4 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 40
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 56
  %i.ob = load float, ptr %i.nu, align 4, !tbaa !22, !alias.scope !172
  %i.oc = load float, ptr %i.nw, align 4, !tbaa !22, !alias.scope !172
  %i.od = load float, ptr %i.ny, align 4, !tbaa !22, !alias.scope !172
  %i.oe = load float, ptr %i.oa, align 4, !tbaa !22, !alias.scope !172
  %i.of = insertelement <4 x float> poison, float %i.ob, i64 0
  %i.og = insertelement <4 x float> %i.of, float %i.oc, i64 1
  %i.oh = insertelement <4 x float> %i.og, float %i.od, i64 2
  %i.oi = insertelement <4 x float> %i.oh, float %i.oe, i64 3 ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 12
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 28
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 44
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 60
  %i.or = load float, ptr %i.ok, align 4, !tbaa !22, !alias.scope !172
  %i.os = load float, ptr %i.om, align 4, !tbaa !22, !alias.scope !172
  %i.ot = load float, ptr %i.oo, align 4, !tbaa !22, !alias.scope !172
  %i.ou = load float, ptr %i.oq, align 4, !tbaa !22, !alias.scope !172
  %i.ov = insertelement <4 x float> poison, float %i.or, i64 0
  %i.ow = insertelement <4 x float> %i.ov, float %i.os, i64 1
  %i.ox = insertelement <4 x float> %i.ow, float %i.ot, i64 2
  %i.oy = insertelement <4 x float> %i.ox, float %i.ou, i64 3 ; 2 uses
  %i.oz = fmul <4 x float> %i.ns, %broadcast.splat
  %i.pa = fmul <4 x float> %i.ns, %broadcast.splat43
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.mn
  %i.pc = fmul <4 x float> %i.ns, %broadcast.splat53
  %i.pd = fmul <4 x float> %i.ns, %broadcast.splat63
  %i.pe = shufflevector <4 x float> %i.oy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pf = shufflevector <4 x float> %i.oi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pg = shufflevector <4 x float> %i.nc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ph = shufflevector <4 x float> %i.oz, <4 x float> %i.pa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pi = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.mi, <8 x float> %i.pg, <8 x float> %i.ph)
  %i.pj = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.mh, <8 x float> %i.pf, <8 x float> %i.pi)
  %i.pk = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.mg, <8 x float> %i.pe, <8 x float> %i.pj)
  %i.pl = fadd <8 x float> %i.mf, %i.pk
  %i.pm = shufflevector <4 x float> %i.oy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pn = shufflevector <4 x float> %i.oi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.po = shufflevector <4 x float> %i.nc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pp = shufflevector <4 x float> %i.pc, <4 x float> %i.pd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.mm, <8 x float> %i.po, <8 x float> %i.pp)
  %i.pr = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ml, <8 x float> %i.pn, <8 x float> %i.pq)
  %i.ps = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.mk, <8 x float> %i.pm, <8 x float> %i.pr)
  %i.pt = fadd <8 x float> %i.mj, %i.ps
  %interleaved.vec = shufflevector <8 x float> %i.pl, <8 x float> %i.pt, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.pb, align 4, !tbaa !22, !alias.scope !173, !noalias !174
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pu = icmp eq i64 %index.next, %n.vec
  br i1 %i.pu, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lg, %n.vec
  br i1 %cmp.n, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv231.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.lk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv231.i = phi i64 [ %indvars.iv.next232.i, %scalar.ph ], [ %indvars.iv231.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv231.i
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv231.i
  %6 = load <4 x float>, ptr %i.pv, align 4, !tbaa !22 ; 4 uses
  %i.px = load <8 x float>, ptr %2, align 4, !tbaa !22 ; 5 uses
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %8 = shufflevector <8 x float> %i.px, <8 x float> poison, <2 x i32> <i32 1, i32 6>
  %9 = fmul <2 x float> %7, %8
  %10 = shufflevector <8 x float> %i.px, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %11 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %11, <2 x float> %9)
  %13 = shufflevector <8 x float> %i.px, <8 x float> poison, <2 x i32> <i32 2, i32 7>
  %14 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %14, <2 x float> %12)
  %16 = load <2 x float>, ptr %i.kr, align 4, !tbaa !22 ; 2 uses
  %17 = shufflevector <8 x float> %i.px, <8 x float> poison, <2 x i32> <i32 3, i32 poison>
  %18 = shufflevector <2 x float> %17, <2 x float> %16, <2 x i32> <i32 0, i32 2>
  %19 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.py = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %19, <2 x float> %15)
  %20 = shufflevector <2 x float> %16, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <8 x float> %i.px, <8 x float> %20, <2 x i32> <i32 4, i32 9>
  %22 = fadd <2 x float> %21, %i.py
  store <2 x float> %22, ptr %i.pw, align 4, !tbaa !22
  %23 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv231.i
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.pz = load <8 x float>, ptr %i.kt, align 4, !tbaa !22 ; 5 uses
  %i.qa = shufflevector <8 x float> %i.pz, <8 x float> poison, <2 x i32> <i32 1, i32 6>
  %i.qb = fmul <2 x float> %7, %i.qa
  %i.qc = shufflevector <8 x float> %i.pz, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.qd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qc, <2 x float> %11, <2 x float> %i.qb)
  %i.qe = shufflevector <8 x float> %i.pz, <8 x float> poison, <2 x i32> <i32 2, i32 7>
  %i.qf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qe, <2 x float> %14, <2 x float> %i.qd)
  %i.qg = load <2 x float>, ptr %i.lb, align 4, !tbaa !22 ; 2 uses
  %i.qh = shufflevector <8 x float> %i.pz, <8 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.qi = shufflevector <2 x float> %i.qh, <2 x float> %i.qg, <2 x i32> <i32 0, i32 2>
  %i.qj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qi, <2 x float> %19, <2 x float> %i.qf)
  %i.qk = shufflevector <2 x float> %i.qg, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ql = shufflevector <8 x float> %i.pz, <8 x float> %i.qk, <2 x i32> <i32 4, i32 9>
  %i.qm = fadd <2 x float> %i.ql, %i.qj
  store <2 x float> %i.qm, ptr %24, align 4, !tbaa !22
  %indvars.iv.next232.i = add nuw nsw i64 %indvars.iv231.i, 4 ; 2 uses
  %i.qn = icmp samesign ult i64 %indvars.iv.next232.i, %i.ld
  br i1 %i.qn, label %scalar.ph, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !157

.preheader189.i:                                  ; preds = %.preheader189.i.preheader, %._crit_edge197.split.i
  %.0178199.i = phi ptr [ %i.rm, %._crit_edge197.split.i ], [ %1, %.preheader189.i.preheader ] ; 6 uses
  %.4198.i = phi i32 [ %i.rl, %._crit_edge197.split.i ], [ 0, %.preheader189.i.preheader ]
  br i1 %i.jb, label %.epil.preheader, label %.preheader189.i.new

.preheader189.i.new:                              ; preds = %.preheader189.i, %.preheader189.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader189.i.new ], [ 0, %.preheader189.i ] ; 5 uses
  %.0176194.i = phi ptr [ %i.rg, %.preheader189.i.new ], [ %2, %.preheader189.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader189.i.new ], [ 0, %.preheader189.i ]
  %i.qo = getelementptr inbounds [4 x i8], ptr %.0176194.i, i64 %i.iy ; 2 uses
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !22
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  store float %i.qp, ptr %i.qq, align 4, !tbaa !22
  %i.qr = getelementptr i8, ptr %i.qo, i64 4
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.iy ; 2 uses
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !22
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 4
  store float %i.qt, ptr %i.qv, align 4, !tbaa !22
  %i.qw = getelementptr i8, ptr %i.qs, i64 4
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.iy ; 2 uses
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !22
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  store float %i.qy, ptr %i.ra, align 4, !tbaa !22
  %i.rb = getelementptr i8, ptr %i.qx, i64 4
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.iy ; 2 uses
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !22
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 12
  store float %i.rd, ptr %i.rf, align 4, !tbaa !22
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.rg = getelementptr i8, ptr %i.rc, i64 4      ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge197.split.i.unr-lcssa, label %.preheader189.i.new, !llvm.loop !150

._crit_edge197.split.i.unr-lcssa:                 ; preds = %.preheader189.i.new
  br i1 %lcmp.mod.not, label %._crit_edge197.split.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge197.split.i.unr-lcssa, %.preheader189.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader189.i ], [ %indvars.iv.next.i.3, %._crit_edge197.split.i.unr-lcssa ]
  %.0176194.i.epil.init = phi ptr [ %2, %.preheader189.i ], [ %i.rg, %._crit_edge197.split.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod192)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %.0176194.i.epil = phi ptr [ %.0176194.i.epil.init, %.epil.preheader ], [ %i.rk, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.rh = getelementptr inbounds [4 x i8], ptr %.0176194.i.epil, i64 %i.iy ; 2 uses
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !22
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i.epil
  store float %i.ri, ptr %i.rj, align 4, !tbaa !22
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.rk = getelementptr i8, ptr %i.rh, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge197.split.i, label %bb.f, !llvm.loop !158

._crit_edge197.split.i:                           ; preds = %bb.f, %._crit_edge197.split.i.unr-lcssa
  %i.rl = add nuw nsw i32 %.4198.i, 1             ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %i.iz
  %exitcond219.not.i = icmp eq i32 %i.rl, %3
  br i1 %exitcond219.not.i, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, label %.preheader189.i, !llvm.loop !151

_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit: ; preds = %._crit_edge197.split.i, %._crit_edge197.split.us.us.i, %scalar.ph, %scalar.ph83, %scalar.ph117, %scalar.ph163, %middle.block, %middle.block101, %middle.block149, %middle.block184, %.preheader.i, %.preheader183.i, %.preheader185.i, %.preheader190.i, %.preheader189.lr.ph.i, %.preheader187.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL13transform_64fEPKdPdS2_iii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #7 {
bb.a:
  %i.a = icmp eq i32 %4, 2
  %i.b = icmp eq i32 %5, 2
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph212.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit

.lr.ph212.i:                                      ; preds = %.preheader.i
  %i.d = shl nuw nsw i32 %3, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = zext nneg i32 %i.d to i64                ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr exact i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.k, 6
  br i1 %min.iters.check162, label %scalar.ph161.preheader, label %vector.memcheck150

vector.memcheck150:                               ; preds = %.lr.ph212.i
  %i.n = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %scevgep151 = getelementptr i8, ptr %1, i64 %i.n ; 2 uses
  %scevgep152 = getelementptr i8, ptr %0, i64 %i.n
  %scevgep153 = getelementptr i8, ptr %2, i64 48
  %bound0154 = icmp ult ptr %1, %scevgep152
  %bound1155 = icmp ult ptr %0, %scevgep151
  %found.conflict156 = and i1 %bound0154, %bound1155
  %bound0157 = icmp ult ptr %1, %scevgep153
  %bound1158 = icmp ult ptr %2, %scevgep151
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %found.conflict156, %found.conflict159
  br i1 %conflict.rdx160, label %scalar.ph161.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck150
  %n.vec164 = and i64 %i.m, -2                    ; 3 uses
  %i.o = shl i64 %n.vec164, 1
  %i.p = load double, ptr %2, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert170 = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat171 = shufflevector <2 x double> %broadcast.splatinsert170, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = load double, ptr %i.e, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert168 = insertelement <2 x double> poison, double %i.q, i64 0
  %broadcast.splat169 = shufflevector <2 x double> %broadcast.splatinsert168, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = load double, ptr %i.f, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert172 = insertelement <2 x double> poison, double %i.r, i64 0
  %i.s = load double, ptr %i.g, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert176 = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat177 = shufflevector <2 x double> %broadcast.splatinsert176, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = load double, ptr %i.h, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert174 = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat175 = shufflevector <2 x double> %broadcast.splatinsert174, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = load double, ptr %i.i, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert178 = insertelement <2 x double> poison, double %i.u, i64 0
  %i.v = shufflevector <2 x double> %broadcast.splatinsert172, <2 x double> %broadcast.splatinsert178, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next181, %vector.body165 ] ; 2 uses
  %i.w = shl nuw i64 %index166, 1                 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w
  %wide.vec = load <4 x double>, ptr %i.x, align 8, !tbaa !29, !alias.scope !205 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec167 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.y = fmul <2 x double> %strided.vec167, %broadcast.splat169
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat171, <2 x double> %strided.vec, <2 x double> %i.y)
  %i.aa = fmul <2 x double> %strided.vec167, %broadcast.splat175
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat177, <2 x double> %strided.vec, <2 x double> %i.aa)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.w
  %i.ad = shufflevector <2 x double> %i.z, <2 x double> %i.ab, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec180 = fadd <4 x double> %i.v, %i.ad
  store <4 x double> %interleaved.vec180, ptr %i.ac, align 8, !tbaa !29, !alias.scope !206, !noalias !207
  %index.next181 = add nuw i64 %index166, 2       ; 2 uses
  %i.ae = icmp eq i64 %index.next181, %n.vec164
  br i1 %i.ae, label %middle.block182, label %vector.body165, !llvm.loop !179

middle.block182:                                  ; preds = %vector.body165
  %cmp.n183 = icmp eq i64 %i.m, %n.vec164
  br i1 %cmp.n183, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph161.preheader

scalar.ph161.preheader:                           ; preds = %vector.memcheck150, %.lr.ph212.i, %middle.block182
  %indvars.iv242.i.ph = phi i64 [ 0, %vector.memcheck150 ], [ 0, %.lr.ph212.i ], [ %i.o, %middle.block182 ]
  br label %scalar.ph161

scalar.ph161:                                     ; preds = %scalar.ph161.preheader, %scalar.ph161
  %indvars.iv242.i = phi i64 [ %indvars.iv.next243.i, %scalar.ph161 ], [ %indvars.iv242.i.ph, %scalar.ph161.preheader ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv242.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv242.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv242.i
  %i.aj = load double, ptr %i.ah, align 8, !tbaa !29
  %i.ak = load double, ptr %i.af, align 8, !tbaa !29
  %i.al = load <4 x double>, ptr %2, align 8, !tbaa !29 ; 3 uses
  %i.am = load <2 x double>, ptr %i.h, align 8, !tbaa !29
  %i.an = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = shufflevector <2 x double> %i.am, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aq = shufflevector <4 x double> %i.al, <4 x double> %i.ap, <2 x i32> <i32 1, i32 4>
  %i.ar = fmul <2 x double> %i.ao, %i.aq
  %i.as = shufflevector <4 x double> %i.al, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.at = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.au, <2 x double> %i.ar)
  %i.aw = shufflevector <4 x double> %i.al, <4 x double> %i.ap, <2 x i32> <i32 2, i32 5>
  %i.ax = fadd <2 x double> %i.aw, %i.av
  store <2 x double> %i.ax, ptr %i.ai, align 8, !tbaa !29
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 2 ; 2 uses
  %i.ay = icmp samesign ult i64 %indvars.iv.next243.i, %i.j
  br i1 %i.ay, label %scalar.ph161, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !180

bb.b:                                             ; preds = %bb.a
  %i.az = icmp eq i32 %4, 3                       ; 2 uses
  %i.ba = icmp eq i32 %5, 3
  %or.cond3.i = and i1 %i.az, %i.ba
  br i1 %or.cond3.i, label %.preheader183.i, label %bb.c

.preheader183.i:                                  ; preds = %bb.b
  %i.bb = icmp sgt i32 %3, 0
  br i1 %i.bb, label %.lr.ph210.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit

.lr.ph210.i:                                      ; preds = %.preheader183.i
end_hunk_0
