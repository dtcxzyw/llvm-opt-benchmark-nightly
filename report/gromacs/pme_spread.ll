Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a
  %i.te = fsub float 3.000000e+00, %i.sn          ; 2 uses
  %i.tf = fmul float %i.te, %i.sq
  %i.tg = call float @llvm.fmuladd.f32(float %i.sr, float %i.sv, float %i.tf)
  %i.th = fmul float %i.tg, f0x3EAAAAAB           ; 4 uses
  %i.ti = fmul float %i.so, f0x3EAAAAAB
  %i.tj = fmul float %i.ti, %i.sx                 ; 4 uses
  %i.tk = fneg float %i.tj
  store float %i.tk, ptr %i.sh, align 4, !tbaa !134
  %i.tl = fsub float %i.tj, %i.td
  store float %i.tl, ptr %i.si, align 4, !tbaa !134
  %i.tm = fsub float %i.td, %i.th
  store float %i.tm, ptr %i.sj, align 4, !tbaa !134
  %i.tn = fsub float %i.th, %i.sz
  store float %i.tn, ptr %i.sk, align 4, !tbaa !134
  store float %i.sz, ptr %i.sl, align 4, !tbaa !134
  %i.to = fmul float %i.sn, 2.500000e-01
  %i.tp = fmul float %i.to, %i.sz
  %i.tq = fsub float 4.000000e+00, %i.sn
  %i.tr = fmul float %i.tq, %i.sz
  %i.ts = call float @llvm.fmuladd.f32(float %i.sr, float %i.th, float %i.tr)
  %i.tt = fmul float %i.te, %i.th
  %i.tu = call float @llvm.fmuladd.f32(float %i.ta, float %i.td, float %i.tt)
  %i.tv = fadd float %i.sn, 3.000000e+00
  %i.tw = fmul float %i.ss, %i.td
  %i.tx = call float @llvm.fmuladd.f32(float %i.tv, float %i.tj, float %i.tw)
  %i.ty = fmul float %i.so, 2.500000e-01
  %i.tz = insertelement <4 x float> poison, float %i.ty, i64 0
  %i.ua = insertelement <4 x float> %i.tz, float %i.tx, i64 1
  %i.ub = insertelement <4 x float> %i.ua, float %i.tu, i64 2
  %i.uc = insertelement <4 x float> %i.ub, float %i.ts, i64 3
  %i.ud = insertelement <4 x float> <float poison, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>, float %i.tj, i64 0
  %i.ue = fmul <4 x float> %i.uc, %i.ud
  store <4 x float> %i.ue, ptr %scevgep.i.2, align 4, !tbaa !134
  %.sroa.42.0.scevgep.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %scevgep.i.2, i64 16
  store float %i.tp, ptr %.sroa.42.0.scevgep.sroa_idx.i.2, align 4, !tbaa !134
  br label %.loopexit232.us.i

.loopexit232.us.i:                                ; preds = %.preheader231.us.i, %bb.l
  %indvars.iv.next294.i = add nuw nsw i64 %indvars.iv293.i, 1 ; 2 uses
  %exitcond296.not.i = icmp eq i64 %indvars.iv.next294.i, %wide.trip.count.i37
  br i1 %exitcond296.not.i, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit, label %.lr.ph272.split.us274.i, !llvm.loop !271

.lr.ph272.split.i:                                ; preds = %.loopexit.i, %.lr.ph272.split.preheader.i
  %indvars.iv352.i = phi i64 [ 0, %.lr.ph272.split.preheader.i ], [ %indvars.iv.next353.i, %.loopexit.i ] ; 6 uses
  %i.uf = trunc i64 %indvars.iv352.i to i32
  %i.ug = mul i32 %i.he, %i.uf
  %i.uh = zext i32 %i.ug to i64
  %i.ui = shl nuw nsw i64 %i.uh, 2                ; 2 uses
  %i.uj = trunc i64 %indvars.iv352.i to i32
  %i.uk = mul i32 %i.he, %i.uj
  %i.ul = zext i32 %i.uk to i64
  %i.um = shl nuw nsw i64 %i.ul, 2                ; 2 uses
  %i.un = trunc nuw nsw i64 %indvars.iv352.i to i32
  %i.uo = mul i32 %i.he, %i.un
  %i.up = zext i32 %i.uo to i64
  %i.uq = shl nuw nsw i64 %i.up, 2                ; 3 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv352.i
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !105
  %.pre427.i = sext i32 %i.us to i64              ; 2 uses
  br i1 %i.hm, label %.preheader.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph272.split.i
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %.pre427.i
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !134
  %i.uv = fcmp une float %i.uu, 0.000000e+00
  br i1 %i.uv, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.m, %.lr.ph272.split.i
  %i.uw = getelementptr inbounds [12 x i8], ptr %i.hg, i64 %.pre427.i ; 5 uses
  %i.ux = mul nsw i64 %indvars.iv352.i, %i.hw     ; 6 uses
  %i.uy = and i64 %i.ux, 4294967295               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.uz = load float, ptr %i.uw, align 4, !tbaa !134 ; 11 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.uz, ptr %i.p, align 4, !tbaa !134
  %i.va = fsub float 1.000000e+00, %i.uz          ; 5 uses
  store float %i.va, ptr %i.d, align 16, !tbaa !134
  br i1 %i.hr, label %.lr.ph251.preheader.i.preheader, label %._crit_edge256.i

.lr.ph251.preheader.i.preheader:                  ; preds = %.preheader.i
  %broadcast.splatinsert413 = insertelement <8 x float> poison, float %i.uz, i64 0
  %broadcast.splat414 = shufflevector <8 x float> %broadcast.splatinsert413, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph251.preheader.i

._crit_edge256.i:                                 ; preds = %._crit_edge252.i, %.preheader.i
  %i.vb = phi float [ %i.va, %.preheader.i ], [ %i.xo, %._crit_edge252.i ]
  %i.vc = fneg float %i.vb
  %i.vd = load ptr, ptr %i.hb, align 8, !tbaa !328 ; 4 uses
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.vd, i64 %i.ux
  store float %i.vc, ptr %i.ve, align 4, !tbaa !134
  br i1 %i.hs, label %iter.check389, label %._crit_edge264.i

iter.check389:                                    ; preds = %._crit_edge256.i
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.uy ; 11 uses
  br i1 %min.iters.check369, label %.lr.ph259.i.preheader, label %vector.memcheck360

vector.memcheck360:                               ; preds = %iter.check389
  %scevgep361 = getelementptr i8, ptr %i.vd, i64 4
  %scevgep362 = getelementptr i8, ptr %scevgep361, i64 %i.ui
  %scevgep363 = getelementptr i8, ptr %i.vd, i64 %i.iq
  %scevgep364 = getelementptr i8, ptr %scevgep363, i64 %i.ui
  %bound0365 = icmp ult ptr %scevgep362, %scevgep269
  %bound1366 = icmp ult ptr %i.d, %scevgep364
  %found.conflict367 = and i1 %bound0365, %bound1366
  br i1 %found.conflict367, label %.lr.ph259.i.preheader, label %vector.main.loop.iter.check370

vector.main.loop.iter.check370:                   ; preds = %vector.memcheck360
  br i1 %min.iters.check371, label %vec.epilog.ph393, label %vector.body374

vector.body374:                                   ; preds = %vector.main.loop.iter.check370, %vector.body374
  %index375 = phi i64 [ %index.next384, %vector.body374 ], [ 0, %vector.main.loop.iter.check370 ] ; 2 uses
  %i.vf = or disjoint i64 %index375, 1            ; 2 uses
  %i.vg = getelementptr [4 x i8], ptr %i.d, i64 %i.vf ; 8 uses
  %i.vh = getelementptr i8, ptr %i.vg, i64 -4
  %i.vi = getelementptr i8, ptr %i.vg, i64 28
  %i.vj = getelementptr i8, ptr %i.vg, i64 60
  %i.vk = getelementptr i8, ptr %i.vg, i64 92
  %wide.load376 = load <8 x float>, ptr %i.vh, align 16, !tbaa !134, !alias.scope !329
  %wide.load377 = load <8 x float>, ptr %i.vi, align 16, !tbaa !134, !alias.scope !329
  %wide.load378 = load <8 x float>, ptr %i.vj, align 16, !tbaa !134, !alias.scope !329
  %wide.load379 = load <8 x float>, ptr %i.vk, align 16, !tbaa !134, !alias.scope !329
  %i.vl = getelementptr i8, ptr %i.vg, i64 32
  %i.vm = getelementptr i8, ptr %i.vg, i64 64
  %i.vn = getelementptr i8, ptr %i.vg, i64 96
  %wide.load380 = load <8 x float>, ptr %i.vg, align 4, !tbaa !134, !alias.scope !329
  %wide.load381 = load <8 x float>, ptr %i.vl, align 4, !tbaa !134, !alias.scope !329
  %wide.load382 = load <8 x float>, ptr %i.vm, align 4, !tbaa !134, !alias.scope !329
  %wide.load383 = load <8 x float>, ptr %i.vn, align 4, !tbaa !134, !alias.scope !329
  %i.vo = fsub <8 x float> %wide.load376, %wide.load380
  %i.vp = fsub <8 x float> %wide.load377, %wide.load381
  %i.vq = fsub <8 x float> %wide.load378, %wide.load382
  %i.vr = fsub <8 x float> %wide.load379, %wide.load383
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.vf ; 4 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 32
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 64
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vs, i64 96
  store <8 x float> %i.vo, ptr %i.vs, align 4, !tbaa !134, !alias.scope !330, !noalias !329
  store <8 x float> %i.vp, ptr %i.vt, align 4, !tbaa !134, !alias.scope !330, !noalias !329
  store <8 x float> %i.vq, ptr %i.vu, align 4, !tbaa !134, !alias.scope !330, !noalias !329
  store <8 x float> %i.vr, ptr %i.vv, align 4, !tbaa !134, !alias.scope !330, !noalias !329
  %index.next384 = add nuw i64 %index375, 32      ; 2 uses
  %i.vw = icmp eq i64 %index.next384, %n.vec373
  br i1 %i.vw, label %middle.block385, label %vector.body374, !llvm.loop !275

middle.block385:                                  ; preds = %vector.body374
  br i1 %cmp.n386, label %._crit_edge260.i, label %vec.epilog.iter.check391

vec.epilog.iter.check391:                         ; preds = %middle.block385
  br i1 %min.epilog.iters.check392, label %.lr.ph259.i.preheader, label %vec.epilog.ph393, !prof !192

vec.epilog.ph393:                                 ; preds = %vector.main.loop.iter.check370, %vec.epilog.iter.check391
  %vec.epilog.resume.val387 = phi i64 [ %n.vec373, %vec.epilog.iter.check391 ], [ 0, %vector.main.loop.iter.check370 ]
  br label %vec.epilog.vector.body395

vec.epilog.vector.body395:                        ; preds = %vec.epilog.vector.body395, %vec.epilog.ph393
  %index396 = phi i64 [ %vec.epilog.resume.val387, %vec.epilog.ph393 ], [ %index.next399, %vec.epilog.vector.body395 ] ; 2 uses
  %i.vx = or disjoint i64 %index396, 1            ; 2 uses
  %i.vy = getelementptr [4 x i8], ptr %i.d, i64 %i.vx ; 2 uses
  %i.vz = getelementptr i8, ptr %i.vy, i64 -4
  %wide.load397 = load <8 x float>, ptr %i.vz, align 16, !tbaa !134, !alias.scope !329
  %wide.load398 = load <8 x float>, ptr %i.vy, align 4, !tbaa !134, !alias.scope !329
  %i.wa = fsub <8 x float> %wide.load397, %wide.load398
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.vx
  store <8 x float> %i.wa, ptr %i.wb, align 4, !tbaa !134, !alias.scope !330, !noalias !329
  %index.next399 = add nuw i64 %index396, 8       ; 2 uses
  %i.wc = icmp eq i64 %index.next399, %n.vec394
  br i1 %i.wc, label %vec.epilog.middle.block400, label %vec.epilog.vector.body395, !llvm.loop !276

vec.epilog.middle.block400:                       ; preds = %vec.epilog.vector.body395
  br i1 %cmp.n401, label %._crit_edge260.i, label %.lr.ph259.i.preheader

.lr.ph259.i.preheader:                            ; preds = %iter.check389, %vector.memcheck360, %vec.epilog.iter.check391, %vec.epilog.middle.block400
  %indvars.iv334.i.ph = phi i64 [ 1, %iter.check389 ], [ 1, %vector.memcheck360 ], [ %i.is, %vec.epilog.iter.check391 ], [ %i.it, %vec.epilog.middle.block400 ] ; 4 uses
  %i.wd = sub nsw i64 %i.ij, %indvars.iv334.i.ph
  %xtraiter512 = and i64 %i.wd, 7                 ; 2 uses
  %lcmp.mod513.not = icmp eq i64 %xtraiter512, 0
  br i1 %lcmp.mod513.not, label %.lr.ph259.i.prol.loopexit, label %.lr.ph259.i.prol

.lr.ph259.i.prol:                                 ; preds = %.lr.ph259.i.preheader, %.lr.ph259.i.prol
  %indvars.iv334.i.prol = phi i64 [ %indvars.iv.next335.i.prol, %.lr.ph259.i.prol ], [ %indvars.iv334.i.ph, %.lr.ph259.i.preheader ] ; 3 uses
  %prol.iter514 = phi i64 [ %prol.iter514.next, %.lr.ph259.i.prol ], [ 0, %.lr.ph259.i.preheader ]
  %i.we = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.i.prol ; 2 uses
  %i.wf = getelementptr i8, ptr %i.we, i64 -4
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !134
  %i.wh = load float, ptr %i.we, align 4, !tbaa !134
  %i.wi = fsub float %i.wg, %i.wh
  %gep.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv334.i.prol
  store float %i.wi, ptr %gep.i.prol, align 4, !tbaa !134
  %indvars.iv.next335.i.prol = add nuw nsw i64 %indvars.iv334.i.prol, 1 ; 2 uses
  %prol.iter514.next = add i64 %prol.iter514, 1   ; 2 uses
  %prol.iter514.cmp.not = icmp eq i64 %prol.iter514.next, %xtraiter512
  br i1 %prol.iter514.cmp.not, label %.lr.ph259.i.prol.loopexit, label %.lr.ph259.i.prol, !llvm.loop !277

.lr.ph259.i.prol.loopexit:                        ; preds = %.lr.ph259.i.prol, %.lr.ph259.i.preheader
  %indvars.iv334.i.unr = phi i64 [ %indvars.iv334.i.ph, %.lr.ph259.i.preheader ], [ %indvars.iv.next335.i.prol, %.lr.ph259.i.prol ]
  %i.wj = sub nsw i64 %indvars.iv334.i.ph, %i.ij
  %i.wk = icmp ugt i64 %i.wj, -8
  br i1 %i.wk, label %._crit_edge260.i, label %.lr.ph259.i

.lr.ph251.preheader.i:                            ; preds = %.lr.ph251.preheader.i.preheader, %._crit_edge252.i
  %indvar403 = phi i64 [ %indvar.next404, %._crit_edge252.i ], [ 0, %.lr.ph251.preheader.i.preheader ] ; 3 uses
  %indvars.iv327.i = phi i64 [ %indvars.iv.next328.i, %._crit_edge252.i ], [ 3, %.lr.ph251.preheader.i.preheader ] ; 5 uses
  %indvars.iv325.i = phi i64 [ %indvars.iv.next326.i, %._crit_edge252.i ], [ 2, %.lr.ph251.preheader.i.preheader ] ; 2 uses
  %i.wl = add nsw i64 %indvars.iv327.i, -1        ; 2 uses
  %i.wm = trunc nuw nsw i64 %i.wl to i32
  %i.wn = sitofp i32 %i.wm to double
  %i.wo = fdiv double 1.000000e+00, %i.wn
  %i.wp = fptrunc double %i.wo to float           ; 4 uses
  %i.wq = fmul float %i.uz, %i.wp
  %i.wr = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv327.i
  %i.ws = getelementptr i8, ptr %i.wr, i64 -8
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !134
  %i.wu = fmul float %i.wt, %i.wq
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.wl
  store float %i.wu, ptr %i.wv, align 4, !tbaa !134
  %9 = add nuw i64 %indvar403, 1                  ; 2 uses
  %min.iters.check406 = icmp ult i64 %indvar403, 7
  br i1 %min.iters.check406, label %.lr.ph251.i.preheader, label %vector.ph407

vector.ph407:                                     ; preds = %.lr.ph251.preheader.i
  %n.vec408 = and i64 %9, -8                      ; 3 uses
  %i.ww = or disjoint i64 %n.vec408, 1
  %broadcast.splatinsert409 = insertelement <8 x i64> poison, i64 %indvars.iv327.i, i64 0
  %broadcast.splat410 = shufflevector <8 x i64> %broadcast.splatinsert409, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert411 = insertelement <8 x float> poison, float %i.wp, i64 0
  %i.wx = shufflevector <8 x float> %broadcast.splatinsert411, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body415

vector.body415:                                   ; preds = %vector.body415, %vector.ph407
  %index416 = phi i64 [ 0, %vector.ph407 ], [ %index.next424, %vector.body415 ]
  %vec.ind417 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph407 ], [ %vec.ind.next425, %vector.body415 ] ; 2 uses
  %vec.ind418 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph407 ], [ %vec.ind.next426, %vector.body415 ] ; 2 uses
  %i.wy = uitofp nneg <8 x i32> %vec.ind418 to <8 x float>
  %i.wz = fadd <8 x float> %broadcast.splat414, %i.wy
  %i.xa = sub nuw nsw <8 x i64> %broadcast.splat410, %vec.ind417 ; 2 uses
  %i.xb = extractelement <8 x i64> %i.xa, i64 0
  %i.xc = getelementptr [4 x i8], ptr %i.d, i64 %i.xb ; 2 uses
  %i.xd = getelementptr i8, ptr %i.xc, i64 -36
  %wide.load419 = load <8 x float>, ptr %i.xd, align 4, !tbaa !134
  %reverse420 = shufflevector <8 x float> %wide.load419, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.xe = trunc nuw <8 x i64> %i.xa to <8 x i32>
  %i.xf = uitofp nneg <8 x i32> %i.xe to <8 x float>
  %i.xg = fsub <8 x float> %i.xf, %broadcast.splat414
  %i.xh = getelementptr i8, ptr %i.xc, i64 -32    ; 2 uses
  %wide.load421 = load <8 x float>, ptr %i.xh, align 4, !tbaa !134
  %reverse422 = shufflevector <8 x float> %wide.load421, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.xi = fmul <8 x float> %reverse422, %i.xg
  %i.xj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.wz, <8 x float> %reverse420, <8 x float> %i.xi)
  %i.xk = shufflevector <8 x float> %i.xj, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse423 = fmul <8 x float> %i.xk, %i.wx
  store <8 x float> %reverse423, ptr %i.xh, align 4, !tbaa !134
  %index.next424 = add nuw i64 %index416, 8       ; 2 uses
  %vec.ind.next425 = add nuw nsw <8 x i64> %vec.ind417, splat (i64 8)
  %vec.ind.next426 = add <8 x i32> %vec.ind418, splat (i32 8)
  %i.xl = icmp eq i64 %index.next424, %n.vec408
  br i1 %i.xl, label %middle.block427, label %vector.body415, !llvm.loop !278

middle.block427:                                  ; preds = %vector.body415
  %cmp.n428 = icmp eq i64 %9, %n.vec408
  br i1 %cmp.n428, label %._crit_edge252.i, label %.lr.ph251.i.preheader

.lr.ph251.i.preheader:                            ; preds = %.lr.ph251.preheader.i, %middle.block427
  %indvars.iv318.i.ph = phi i64 [ 1, %.lr.ph251.preheader.i ], [ %i.ww, %middle.block427 ]
  br label %.lr.ph251.i

._crit_edge252.i:                                 ; preds = %.lr.ph251.i, %middle.block427
  %i.xm = fmul float %i.va, %i.wp
  %i.xn = load float, ptr %i.d, align 16, !tbaa !134
  %i.xo = fmul float %i.xm, %i.xn                 ; 2 uses
  store float %i.xo, ptr %i.d, align 16, !tbaa !134
  %indvars.iv.next328.i = add nuw nsw i64 %indvars.iv327.i, 1 ; 2 uses
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1
  %exitcond333.not.i = icmp eq i64 %indvars.iv.next328.i, %i.ij
  %indvar.next404 = add i64 %indvar403, 1
  br i1 %exitcond333.not.i, label %._crit_edge256.i, label %.lr.ph251.preheader.i, !llvm.loop !279

.lr.ph251.i:                                      ; preds = %.lr.ph251.i.preheader, %.lr.ph251.i
  %indvars.iv318.i = phi i64 [ %indvars.iv.next319.i, %.lr.ph251.i ], [ %indvars.iv318.i.ph, %.lr.ph251.i.preheader ] ; 3 uses
  %i.xp = trunc nuw nsw i64 %indvars.iv318.i to i32
  %i.xq = uitofp nneg i32 %i.xp to float
  %i.xr = fadd float %i.uz, %i.xq
  %i.xs = sub nuw nsw i64 %indvars.iv327.i, %indvars.iv318.i ; 2 uses
  %i.xt = getelementptr [4 x i8], ptr %i.d, i64 %i.xs ; 2 uses
  %i.xu = getelementptr i8, ptr %i.xt, i64 -8
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !134
  %i.xw = trunc nuw i64 %i.xs to i32
  %i.xx = uitofp nneg i32 %i.xw to float
  %i.xy = fsub float %i.xx, %i.uz
  %i.xz = getelementptr i8, ptr %i.xt, i64 -4     ; 2 uses
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !134
  %i.yb = fmul float %i.ya, %i.xy
  %i.yc = call float @llvm.fmuladd.f32(float %i.xr, float %i.xv, float %i.yb)
  %i.yd = fmul float %i.yc, %i.wp
  store float %i.yd, ptr %i.xz, align 4, !tbaa !134
  %indvars.iv.next319.i = add nuw nsw i64 %indvars.iv318.i, 1 ; 2 uses
  %exitcond324.not.i = icmp eq i64 %indvars.iv.next319.i, %indvars.iv325.i
  br i1 %exitcond324.not.i, label %._crit_edge252.i, label %.lr.ph251.i, !llvm.loop !280

._crit_edge260.i:                                 ; preds = %.lr.ph259.i.prol.loopexit, %.lr.ph259.i, %vec.epilog.middle.block400, %middle.block385
  %i.ye = fmul float %i.uz, %i.hv
  %i.yf = load float, ptr %i.hy, align 4, !tbaa !134
  %i.yg = fmul float %i.ye, %i.yf
  store float %i.yg, ptr %i.hq, align 4, !tbaa !134
  br i1 %i.hz, label %.lr.ph263.i.preheader, label %._crit_edge264.thread.i

.lr.ph263.i.preheader:                            ; preds = %._crit_edge260.i
  br i1 %min.iters.check336, label %.lr.ph263.i.preheader499, label %vector.ph337

vector.ph337:                                     ; preds = %.lr.ph263.i.preheader
  %broadcast.splatinsert339 = insertelement <8 x float> poison, float %i.uz, i64 0
  %broadcast.splat340 = shufflevector <8 x float> %broadcast.splatinsert339, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph337
  %index346 = phi i64 [ 0, %vector.ph337 ], [ %index.next354, %vector.body345 ]
  %vec.ind347 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph337 ], [ %vec.ind.next355, %vector.body345 ] ; 2 uses
  %vec.ind348 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph337 ], [ %vec.ind.next356, %vector.body345 ] ; 2 uses
  %i.yh = uitofp nneg <8 x i32> %vec.ind348 to <8 x float>
  %i.yi = fadd <8 x float> %broadcast.splat340, %i.yh
  %i.yj = sub nuw nsw <8 x i64> %broadcast.splat342, %vec.ind347 ; 2 uses
  %i.yk = extractelement <8 x i64> %i.yj, i64 0
  %i.yl = getelementptr [4 x i8], ptr %i.d, i64 %i.yk ; 2 uses
  %i.ym = getelementptr i8, ptr %i.yl, i64 -36
  %wide.load349 = load <8 x float>, ptr %i.ym, align 4, !tbaa !134
  %reverse350 = shufflevector <8 x float> %wide.load349, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.yn = trunc nuw nsw <8 x i64> %i.yj to <8 x i32>
  %i.yo = uitofp nneg <8 x i32> %i.yn to <8 x float>
  %i.yp = fsub <8 x float> %i.yo, %broadcast.splat340
  %i.yq = getelementptr i8, ptr %i.yl, i64 -32    ; 2 uses
  %wide.load351 = load <8 x float>, ptr %i.yq, align 4, !tbaa !134
  %reverse352 = shufflevector <8 x float> %wide.load351, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.yr = fmul <8 x float> %reverse352, %i.yp
  %i.ys = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.yi, <8 x float> %reverse350, <8 x float> %i.yr)
  %i.yt = shufflevector <8 x float> %i.ys, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse353 = fmul <8 x float> %i.yt, %i.iw
  store <8 x float> %reverse353, ptr %i.yq, align 4, !tbaa !134
  %index.next354 = add nuw i64 %index346, 8       ; 2 uses
  %vec.ind.next355 = add nuw nsw <8 x i64> %vec.ind347, splat (i64 8)
  %vec.ind.next356 = add <8 x i32> %vec.ind348, splat (i32 8)
  %i.yu = icmp eq i64 %index.next354, %n.vec338
  br i1 %i.yu, label %middle.block357, label %vector.body345, !llvm.loop !281

middle.block357:                                  ; preds = %vector.body345
  br i1 %cmp.n358, label %._crit_edge264.thread.i, label %.lr.ph263.i.preheader499

.lr.ph263.i.preheader499:                         ; preds = %.lr.ph263.i.preheader, %middle.block357
  %indvars.iv339.i.ph = phi i64 [ 1, %.lr.ph263.i.preheader ], [ %i.iv, %middle.block357 ]
  br label %.lr.ph263.i

.lr.ph259.i:                                      ; preds = %.lr.ph259.i.prol.loopexit, %.lr.ph259.i
  %indvars.iv334.i = phi i64 [ %indvars.iv.next335.i.7, %.lr.ph259.i ], [ %indvars.iv334.i.unr, %.lr.ph259.i.prol.loopexit ] ; 10 uses
  %i.yv = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.i ; 2 uses
  %i.yw = getelementptr i8, ptr %i.yv, i64 -4
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !134
  %i.yy = load float, ptr %i.yv, align 4, !tbaa !134
  %i.yz = fsub float %i.yx, %i.yy
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv334.i
  store float %i.yz, ptr %gep.i, align 4, !tbaa !134
  %indvars.iv.next335.i = add nuw nsw i64 %indvars.iv334.i, 1 ; 2 uses
  %i.za = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i ; 2 uses
  %i.zb = getelementptr i8, ptr %i.za, i64 -4
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !134
  %i.zd = load float, ptr %i.za, align 4, !tbaa !134
  %i.ze = fsub float %i.zc, %i.zd
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i
  store float %i.ze, ptr %gep.i.1, align 4, !tbaa !134
  %indvars.iv.next335.i.1 = add nuw nsw i64 %indvars.iv334.i, 2 ; 2 uses
  %i.zf = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.1 ; 2 uses
  %i.zg = getelementptr i8, ptr %i.zf, i64 -4
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !134
  %i.zi = load float, ptr %i.zf, align 4, !tbaa !134
  %i.zj = fsub float %i.zh, %i.zi
  %gep.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.1
  store float %i.zj, ptr %gep.i.2, align 4, !tbaa !134
  %indvars.iv.next335.i.2 = add nuw nsw i64 %indvars.iv334.i, 3 ; 2 uses
  %i.zk = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.2 ; 2 uses
  %i.zl = getelementptr i8, ptr %i.zk, i64 -4
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !134
  %i.zn = load float, ptr %i.zk, align 4, !tbaa !134
  %i.zo = fsub float %i.zm, %i.zn
  %gep.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.2
  store float %i.zo, ptr %gep.i.3, align 4, !tbaa !134
  %indvars.iv.next335.i.3 = add nuw nsw i64 %indvars.iv334.i, 4 ; 2 uses
  %i.zp = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.3 ; 2 uses
  %i.zq = getelementptr i8, ptr %i.zp, i64 -4
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !134
  %i.zs = load float, ptr %i.zp, align 4, !tbaa !134
  %i.zt = fsub float %i.zr, %i.zs
  %gep.i.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.3
  store float %i.zt, ptr %gep.i.4, align 4, !tbaa !134
  %indvars.iv.next335.i.4 = add nuw nsw i64 %indvars.iv334.i, 5 ; 2 uses
  %i.zu = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.4 ; 2 uses
  %i.zv = getelementptr i8, ptr %i.zu, i64 -4
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !134
  %i.zx = load float, ptr %i.zu, align 4, !tbaa !134
  %i.zy = fsub float %i.zw, %i.zx
  %gep.i.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.4
  store float %i.zy, ptr %gep.i.5, align 4, !tbaa !134
  %indvars.iv.next335.i.5 = add nuw nsw i64 %indvars.iv334.i, 6 ; 2 uses
  %i.zz = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.5 ; 2 uses
  %i.aaa = getelementptr i8, ptr %i.zz, i64 -4
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !134
  %i.aac = load float, ptr %i.zz, align 4, !tbaa !134
  %i.aad = fsub float %i.aab, %i.aac
  %gep.i.6 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.5
  store float %i.aad, ptr %gep.i.6, align 4, !tbaa !134
  %indvars.iv.next335.i.6 = add nuw nsw i64 %indvars.iv334.i, 7 ; 2 uses
  %i.aae = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.6 ; 2 uses
  %i.aaf = getelementptr i8, ptr %i.aae, i64 -4
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !134
  %i.aah = load float, ptr %i.aae, align 4, !tbaa !134
  %i.aai = fsub float %i.aag, %i.aah
  %gep.i.7 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.6
  store float %i.aai, ptr %gep.i.7, align 4, !tbaa !134
  %indvars.iv.next335.i.7 = add nuw nsw i64 %indvars.iv334.i, 8 ; 2 uses
  %exitcond338.not.i.7 = icmp eq i64 %indvars.iv.next335.i.7, %i.ij
  br i1 %exitcond338.not.i.7, label %._crit_edge260.i, label %.lr.ph259.i, !llvm.loop !282

._crit_edge264.thread.i:                          ; preds = %.lr.ph263.i, %middle.block357, %._crit_edge260.i
  %i.aaj = fmul float %i.va, %i.hv
  %i.aak = load float, ptr %i.d, align 16, !tbaa !134
  %i.aal = fmul float %i.aaj, %i.aak
  store float %i.aal, ptr %i.d, align 16, !tbaa !134
  br label %._crit_edge268.i

._crit_edge264.i:                                 ; preds = %._crit_edge256.i
  %i.aam = fmul float %i.uz, %i.hv
  %i.aan = load float, ptr %i.hy, align 4, !tbaa !134
  %i.aao = fmul float %i.aam, %i.aan
  store float %i.aao, ptr %i.hq, align 4, !tbaa !134
  %i.aap = fmul float %i.va, %i.hv
  %i.aaq = load float, ptr %i.d, align 16, !tbaa !134
  %i.aar = fmul float %i.aap, %i.aaq
  store float %i.aar, ptr %i.d, align 16, !tbaa !134
  br i1 %i.ia, label %._crit_edge268.i, label %._crit_edge256.1.thread.i

._crit_edge256.1.thread.i:                        ; preds = %._crit_edge264.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.aas = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !134 ; 3 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.aat, ptr %i.p, align 4, !tbaa !134
  %i.aau = fsub float 1.000000e+00, %i.aat        ; 3 uses
  store float %i.aau, ptr %i.d, align 16, !tbaa !134
  %i.aav = fneg float %i.aau
  %i.aaw = load ptr, ptr %i.il, align 8, !tbaa !328
  %i.aax = getelementptr inbounds [4 x i8], ptr %i.aaw, i64 %i.ux
  store float %i.aav, ptr %i.aax, align 4, !tbaa !134
  br label %._crit_edge264.1.i

.lr.ph263.i:                                      ; preds = %.lr.ph263.i.preheader499, %.lr.ph263.i
  %indvars.iv339.i = phi i64 [ %indvars.iv.next340.i, %.lr.ph263.i ], [ %indvars.iv339.i.ph, %.lr.ph263.i.preheader499 ] ; 3 uses
  %i.aay = trunc nuw nsw i64 %indvars.iv339.i to i32
  %i.aaz = uitofp nneg i32 %i.aay to float
  %i.aba = fadd float %i.uz, %i.aaz
  %i.abb = sub nuw nsw i64 %i.hw, %indvars.iv339.i ; 2 uses
  %i.abc = getelementptr [4 x i8], ptr %i.d, i64 %i.abb ; 2 uses
  %i.abd = getelementptr i8, ptr %i.abc, i64 -8
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !134
  %i.abf = trunc nuw nsw i64 %i.abb to i32
  %i.abg = uitofp nneg i32 %i.abf to float
  %i.abh = fsub float %i.abg, %i.uz
  %i.abi = getelementptr i8, ptr %i.abc, i64 -4   ; 2 uses
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !134
  %i.abk = fmul float %i.abj, %i.abh
  %i.abl = call float @llvm.fmuladd.f32(float %i.aba, float %i.abe, float %i.abk)
  %i.abm = fmul float %i.abl, %i.hv
  store float %i.abm, ptr %i.abi, align 4, !tbaa !134
  %indvars.iv.next340.i = add nuw nsw i64 %indvars.iv339.i, 1 ; 2 uses
  %exitcond343.not.i = icmp eq i64 %indvars.iv.next340.i, %wide.trip.count342.i
  br i1 %exitcond343.not.i, label %._crit_edge264.thread.i, label %.lr.ph263.i, !llvm.loop !283

._crit_edge268.i:                                 ; preds = %._crit_edge264.i, %._crit_edge264.thread.i
  %i.abn = load ptr, ptr %i.ha, align 8, !tbaa !328
  %scevgep344.i = getelementptr nuw i8, ptr %i.abn, i64 %i.uq
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep344.i, ptr nonnull align 16 %i.d, i64 %i.ik, i1 false), !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.abo = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !134 ; 11 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.abp, ptr %i.p, align 4, !tbaa !134
  %i.abq = fsub float 1.000000e+00, %i.abp        ; 5 uses
  store float %i.abq, ptr %i.d, align 16, !tbaa !134
  br i1 %i.hr, label %.lr.ph251.preheader.1.i.preheader, label %._crit_edge256.1.i

.lr.ph251.preheader.1.i.preheader:                ; preds = %._crit_edge268.i
  %broadcast.splatinsert318 = insertelement <8 x float> poison, float %i.abp, i64 0
  %broadcast.splat319 = shufflevector <8 x float> %broadcast.splatinsert318, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph251.preheader.1.i

.lr.ph251.preheader.1.i:                          ; preds = %.lr.ph251.preheader.1.i.preheader, %._crit_edge252.1.i
  %indvar308 = phi i64 [ %indvar.next309, %._crit_edge252.1.i ], [ 0, %.lr.ph251.preheader.1.i.preheader ] ; 3 uses
  %indvars.iv327.1.i = phi i64 [ %indvars.iv.next328.1.i, %._crit_edge252.1.i ], [ 3, %.lr.ph251.preheader.1.i.preheader ] ; 5 uses
  %indvars.iv325.1.i = phi i64 [ %indvars.iv.next326.1.i, %._crit_edge252.1.i ], [ 2, %.lr.ph251.preheader.1.i.preheader ] ; 2 uses
  %i.abr = add nsw i64 %indvars.iv327.1.i, -1     ; 2 uses
  %i.abs = trunc nuw nsw i64 %i.abr to i32
  %i.abt = sitofp i32 %i.abs to double
  %i.abu = fdiv double 1.000000e+00, %i.abt
  %i.abv = fptrunc double %i.abu to float         ; 4 uses
  %i.abw = fmul float %i.abp, %i.abv
  %i.abx = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv327.1.i
  %i.aby = getelementptr i8, ptr %i.abx, i64 -8
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !134
  %i.aca = fmul float %i.abz, %i.abw
  %i.acb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.abr
  store float %i.aca, ptr %i.acb, align 4, !tbaa !134
  %10 = add nuw i64 %indvar308, 1                 ; 2 uses
  %min.iters.check311 = icmp ult i64 %indvar308, 7
  br i1 %min.iters.check311, label %.lr.ph251.1.i.preheader, label %vector.ph312

vector.ph312:                                     ; preds = %.lr.ph251.preheader.1.i
  %n.vec313 = and i64 %10, -8                     ; 3 uses
  %i.acc = or disjoint i64 %n.vec313, 1
  %broadcast.splatinsert314 = insertelement <8 x i64> poison, i64 %indvars.iv327.1.i, i64 0
  %broadcast.splat315 = shufflevector <8 x i64> %broadcast.splatinsert314, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert316 = insertelement <8 x float> poison, float %i.abv, i64 0
  %i.acd = shufflevector <8 x float> %broadcast.splatinsert316, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph312
  %index321 = phi i64 [ 0, %vector.ph312 ], [ %index.next329, %vector.body320 ]
  %vec.ind322 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph312 ], [ %vec.ind.next330, %vector.body320 ] ; 2 uses
  %vec.ind323 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph312 ], [ %vec.ind.next331, %vector.body320 ] ; 2 uses
  %i.ace = uitofp nneg <8 x i32> %vec.ind323 to <8 x float>
  %i.acf = fadd <8 x float> %broadcast.splat319, %i.ace
  %i.acg = sub nuw nsw <8 x i64> %broadcast.splat315, %vec.ind322 ; 2 uses
  %i.ach = extractelement <8 x i64> %i.acg, i64 0
  %i.aci = getelementptr [4 x i8], ptr %i.d, i64 %i.ach ; 2 uses
  %i.acj = getelementptr i8, ptr %i.aci, i64 -36
  %wide.load324 = load <8 x float>, ptr %i.acj, align 4, !tbaa !134
  %reverse325 = shufflevector <8 x float> %wide.load324, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ack = trunc nuw <8 x i64> %i.acg to <8 x i32>
  %i.acl = uitofp nneg <8 x i32> %i.ack to <8 x float>
  %i.acm = fsub <8 x float> %i.acl, %broadcast.splat319
  %i.acn = getelementptr i8, ptr %i.aci, i64 -32  ; 2 uses
  %wide.load326 = load <8 x float>, ptr %i.acn, align 4, !tbaa !134
  %reverse327 = shufflevector <8 x float> %wide.load326, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aco = fmul <8 x float> %reverse327, %i.acm
  %i.acp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.acf, <8 x float> %reverse325, <8 x float> %i.aco)
  %i.acq = shufflevector <8 x float> %i.acp, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse328 = fmul <8 x float> %i.acq, %i.acd
  store <8 x float> %reverse328, ptr %i.acn, align 4, !tbaa !134
  %index.next329 = add nuw i64 %index321, 8       ; 2 uses
  %vec.ind.next330 = add nuw nsw <8 x i64> %vec.ind322, splat (i64 8)
  %vec.ind.next331 = add <8 x i32> %vec.ind323, splat (i32 8)
  %i.acr = icmp eq i64 %index.next329, %n.vec313
  br i1 %i.acr, label %middle.block332, label %vector.body320, !llvm.loop !284

middle.block332:                                  ; preds = %vector.body320
  %cmp.n333 = icmp eq i64 %10, %n.vec313
  br i1 %cmp.n333, label %._crit_edge252.1.i, label %.lr.ph251.1.i.preheader

.lr.ph251.1.i.preheader:                          ; preds = %.lr.ph251.preheader.1.i, %middle.block332
  %indvars.iv318.1.i.ph = phi i64 [ 1, %.lr.ph251.preheader.1.i ], [ %i.acc, %middle.block332 ]
  br label %.lr.ph251.1.i

.lr.ph251.1.i:                                    ; preds = %.lr.ph251.1.i.preheader, %.lr.ph251.1.i
  %indvars.iv318.1.i = phi i64 [ %indvars.iv.next319.1.i, %.lr.ph251.1.i ], [ %indvars.iv318.1.i.ph, %.lr.ph251.1.i.preheader ] ; 3 uses
  %i.acs = trunc nuw nsw i64 %indvars.iv318.1.i to i32
  %i.act = uitofp nneg i32 %i.acs to float
  %i.acu = fadd float %i.abp, %i.act
  %i.acv = sub nuw nsw i64 %indvars.iv327.1.i, %indvars.iv318.1.i ; 2 uses
  %i.acw = getelementptr [4 x i8], ptr %i.d, i64 %i.acv ; 2 uses
  %i.acx = getelementptr i8, ptr %i.acw, i64 -8
  %i.acy = load float, ptr %i.acx, align 4, !tbaa !134
  %i.acz = trunc nuw i64 %i.acv to i32
  %i.ada = uitofp nneg i32 %i.acz to float
  %i.adb = fsub float %i.ada, %i.abp
  %i.adc = getelementptr i8, ptr %i.acw, i64 -4   ; 2 uses
  %i.add = load float, ptr %i.adc, align 4, !tbaa !134
  %i.ade = fmul float %i.add, %i.adb
  %i.adf = call float @llvm.fmuladd.f32(float %i.acu, float %i.acy, float %i.ade)
  %i.adg = fmul float %i.adf, %i.abv
  store float %i.adg, ptr %i.adc, align 4, !tbaa !134
  %indvars.iv.next319.1.i = add nuw nsw i64 %indvars.iv318.1.i, 1 ; 2 uses
  %exitcond324.1.not.i = icmp eq i64 %indvars.iv.next319.1.i, %indvars.iv325.1.i
  br i1 %exitcond324.1.not.i, label %._crit_edge252.1.i, label %.lr.ph251.1.i, !llvm.loop !285

._crit_edge252.1.i:                               ; preds = %.lr.ph251.1.i, %middle.block332
  %i.adh = fmul float %i.abq, %i.abv
  %i.adi = load float, ptr %i.d, align 16, !tbaa !134
  %i.adj = fmul float %i.adh, %i.adi              ; 2 uses
  store float %i.adj, ptr %i.d, align 16, !tbaa !134
  %indvars.iv.next328.1.i = add nuw nsw i64 %indvars.iv327.1.i, 1 ; 2 uses
  %indvars.iv.next326.1.i = add nuw nsw i64 %indvars.iv325.1.i, 1
  %exitcond333.1.not.i = icmp eq i64 %indvars.iv.next328.1.i, %i.ij
  %indvar.next309 = add i64 %indvar308, 1
  br i1 %exitcond333.1.not.i, label %._crit_edge256.1.i, label %.lr.ph251.preheader.1.i, !llvm.loop !279

._crit_edge256.1.i:                               ; preds = %._crit_edge252.1.i, %._crit_edge268.i
  %i.adk = phi float [ %i.abq, %._crit_edge268.i ], [ %i.adj, %._crit_edge252.1.i ]
  %i.adl = fneg float %i.adk
  %i.adm = load ptr, ptr %i.il, align 8, !tbaa !328 ; 4 uses
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.ux
  store float %i.adl, ptr %i.adn, align 4, !tbaa !134
  br i1 %i.hs, label %iter.check294, label %._crit_edge264.1.i

iter.check294:                                    ; preds = %._crit_edge256.1.i
  %invariant.gep440.i = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %i.uy ; 11 uses
  br i1 %min.iters.check274, label %.lr.ph259.1.i.preheader, label %vector.memcheck264

vector.memcheck264:                               ; preds = %iter.check294
  %scevgep265 = getelementptr i8, ptr %i.adm, i64 4
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.um
  %scevgep267 = getelementptr i8, ptr %i.adm, i64 %i.iq
  %scevgep268 = getelementptr i8, ptr %scevgep267, i64 %i.um
  %bound0270 = icmp ult ptr %scevgep266, %scevgep269
  %bound1271 = icmp ult ptr %i.d, %scevgep268
  %found.conflict272 = and i1 %bound0270, %bound1271
  br i1 %found.conflict272, label %.lr.ph259.1.i.preheader, label %vector.main.loop.iter.check275

vector.main.loop.iter.check275:                   ; preds = %vector.memcheck264
  br i1 %min.iters.check276, label %vec.epilog.ph298, label %vector.body279

vector.body279:                                   ; preds = %vector.main.loop.iter.check275, %vector.body279
  %index280 = phi i64 [ %index.next289, %vector.body279 ], [ 0, %vector.main.loop.iter.check275 ] ; 2 uses
  %i.ado = or disjoint i64 %index280, 1           ; 2 uses
  %i.adp = getelementptr [4 x i8], ptr %i.d, i64 %i.ado ; 8 uses
  %i.adq = getelementptr i8, ptr %i.adp, i64 -4
  %i.adr = getelementptr i8, ptr %i.adp, i64 28
  %i.ads = getelementptr i8, ptr %i.adp, i64 60
  %i.adt = getelementptr i8, ptr %i.adp, i64 92
  %wide.load281 = load <8 x float>, ptr %i.adq, align 16, !tbaa !134, !alias.scope !331
  %wide.load282 = load <8 x float>, ptr %i.adr, align 16, !tbaa !134, !alias.scope !331
  %wide.load283 = load <8 x float>, ptr %i.ads, align 16, !tbaa !134, !alias.scope !331
  %wide.load284 = load <8 x float>, ptr %i.adt, align 16, !tbaa !134, !alias.scope !331
  %i.adu = getelementptr i8, ptr %i.adp, i64 32
  %i.adv = getelementptr i8, ptr %i.adp, i64 64
  %i.adw = getelementptr i8, ptr %i.adp, i64 96
  %wide.load285 = load <8 x float>, ptr %i.adp, align 4, !tbaa !134, !alias.scope !331
  %wide.load286 = load <8 x float>, ptr %i.adu, align 4, !tbaa !134, !alias.scope !331
  %wide.load287 = load <8 x float>, ptr %i.adv, align 4, !tbaa !134, !alias.scope !331
  %wide.load288 = load <8 x float>, ptr %i.adw, align 4, !tbaa !134, !alias.scope !331
  %i.adx = fsub <8 x float> %wide.load281, %wide.load285
  %i.ady = fsub <8 x float> %wide.load282, %wide.load286
  %i.adz = fsub <8 x float> %wide.load283, %wide.load287
  %i.aea = fsub <8 x float> %wide.load284, %wide.load288
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %i.ado ; 4 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 32
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 64
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aeb, i64 96
  store <8 x float> %i.adx, ptr %i.aeb, align 4, !tbaa !134, !alias.scope !332, !noalias !331
  store <8 x float> %i.ady, ptr %i.aec, align 4, !tbaa !134, !alias.scope !332, !noalias !331
  store <8 x float> %i.adz, ptr %i.aed, align 4, !tbaa !134, !alias.scope !332, !noalias !331
  store <8 x float> %i.aea, ptr %i.aee, align 4, !tbaa !134, !alias.scope !332, !noalias !331
  %index.next289 = add nuw i64 %index280, 32      ; 2 uses
  %i.aef = icmp eq i64 %index.next289, %n.vec278
  br i1 %i.aef, label %middle.block290, label %vector.body279, !llvm.loop !289

middle.block290:                                  ; preds = %vector.body279
  br i1 %cmp.n291, label %._crit_edge260.1.i, label %vec.epilog.iter.check296

vec.epilog.iter.check296:                         ; preds = %middle.block290
  br i1 %min.epilog.iters.check297, label %.lr.ph259.1.i.preheader, label %vec.epilog.ph298, !prof !192

vec.epilog.ph298:                                 ; preds = %vector.main.loop.iter.check275, %vec.epilog.iter.check296
  %vec.epilog.resume.val292 = phi i64 [ %n.vec278, %vec.epilog.iter.check296 ], [ 0, %vector.main.loop.iter.check275 ]
  br label %vec.epilog.vector.body300

vec.epilog.vector.body300:                        ; preds = %vec.epilog.vector.body300, %vec.epilog.ph298
  %index301 = phi i64 [ %vec.epilog.resume.val292, %vec.epilog.ph298 ], [ %index.next304, %vec.epilog.vector.body300 ] ; 2 uses
  %i.aeg = or disjoint i64 %index301, 1           ; 2 uses
  %i.aeh = getelementptr [4 x i8], ptr %i.d, i64 %i.aeg ; 2 uses
  %i.aei = getelementptr i8, ptr %i.aeh, i64 -4
  %wide.load302 = load <8 x float>, ptr %i.aei, align 16, !tbaa !134, !alias.scope !331
  %wide.load303 = load <8 x float>, ptr %i.aeh, align 4, !tbaa !134, !alias.scope !331
  %i.aej = fsub <8 x float> %wide.load302, %wide.load303
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %i.aeg
  store <8 x float> %i.aej, ptr %i.aek, align 4, !tbaa !134, !alias.scope !332, !noalias !331
  %index.next304 = add nuw i64 %index301, 8       ; 2 uses
  %i.ael = icmp eq i64 %index.next304, %n.vec299
  br i1 %i.ael, label %vec.epilog.middle.block305, label %vec.epilog.vector.body300, !llvm.loop !290

vec.epilog.middle.block305:                       ; preds = %vec.epilog.vector.body300
  br i1 %cmp.n306, label %._crit_edge260.1.i, label %.lr.ph259.1.i.preheader

.lr.ph259.1.i.preheader:                          ; preds = %iter.check294, %vector.memcheck264, %vec.epilog.iter.check296, %vec.epilog.middle.block305
  %indvars.iv334.1.i.ph = phi i64 [ 1, %iter.check294 ], [ 1, %vector.memcheck264 ], [ %i.iy, %vec.epilog.iter.check296 ], [ %i.iz, %vec.epilog.middle.block305 ] ; 4 uses
  %i.aem = sub nsw i64 %i.ij, %indvars.iv334.1.i.ph
  %xtraiter515 = and i64 %i.aem, 7                ; 2 uses
  %lcmp.mod516.not = icmp eq i64 %xtraiter515, 0
  br i1 %lcmp.mod516.not, label %.lr.ph259.1.i.prol.loopexit, label %.lr.ph259.1.i.prol

.lr.ph259.1.i.prol:                               ; preds = %.lr.ph259.1.i.preheader, %.lr.ph259.1.i.prol
  %indvars.iv334.1.i.prol = phi i64 [ %indvars.iv.next335.1.i.prol, %.lr.ph259.1.i.prol ], [ %indvars.iv334.1.i.ph, %.lr.ph259.1.i.preheader ] ; 3 uses
  %prol.iter517 = phi i64 [ %prol.iter517.next, %.lr.ph259.1.i.prol ], [ 0, %.lr.ph259.1.i.preheader ]
  %i.aen = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.1.i.prol ; 2 uses
  %i.aeo = getelementptr i8, ptr %i.aen, i64 -4
  %i.aep = load float, ptr %i.aeo, align 4, !tbaa !134
  %i.aeq = load float, ptr %i.aen, align 4, !tbaa !134
  %i.aer = fsub float %i.aep, %i.aeq
  %gep441.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv334.1.i.prol
  store float %i.aer, ptr %gep441.i.prol, align 4, !tbaa !134
  %indvars.iv.next335.1.i.prol = add nuw nsw i64 %indvars.iv334.1.i.prol, 1 ; 2 uses
  %prol.iter517.next = add i64 %prol.iter517, 1   ; 2 uses
  %prol.iter517.cmp.not = icmp eq i64 %prol.iter517.next, %xtraiter515
  br i1 %prol.iter517.cmp.not, label %.lr.ph259.1.i.prol.loopexit, label %.lr.ph259.1.i.prol, !llvm.loop !291

.lr.ph259.1.i.prol.loopexit:                      ; preds = %.lr.ph259.1.i.prol, %.lr.ph259.1.i.preheader
  %indvars.iv334.1.i.unr = phi i64 [ %indvars.iv334.1.i.ph, %.lr.ph259.1.i.preheader ], [ %indvars.iv.next335.1.i.prol, %.lr.ph259.1.i.prol ]
  %i.aes = sub nsw i64 %indvars.iv334.1.i.ph, %i.ij
  %i.aet = icmp ugt i64 %i.aes, -8
  br i1 %i.aet, label %._crit_edge260.1.i, label %.lr.ph259.1.i

.lr.ph259.1.i:                                    ; preds = %.lr.ph259.1.i.prol.loopexit, %.lr.ph259.1.i
  %indvars.iv334.1.i = phi i64 [ %indvars.iv.next335.1.i.7, %.lr.ph259.1.i ], [ %indvars.iv334.1.i.unr, %.lr.ph259.1.i.prol.loopexit ] ; 10 uses
  %i.aeu = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.1.i ; 2 uses
  %i.aev = getelementptr i8, ptr %i.aeu, i64 -4
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !134
  %i.aex = load float, ptr %i.aeu, align 4, !tbaa !134
  %i.aey = fsub float %i.aew, %i.aex
  %gep441.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv334.1.i
  store float %i.aey, ptr %gep441.i, align 4, !tbaa !134
  %indvars.iv.next335.1.i = add nuw nsw i64 %indvars.iv334.1.i, 1 ; 2 uses
  %i.aez = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i ; 2 uses
  %i.afa = getelementptr i8, ptr %i.aez, i64 -4
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !134
  %i.afc = load float, ptr %i.aez, align 4, !tbaa !134
  %i.afd = fsub float %i.afb, %i.afc
  %gep441.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i
  store float %i.afd, ptr %gep441.i.1, align 4, !tbaa !134
  %indvars.iv.next335.1.i.1 = add nuw nsw i64 %indvars.iv334.1.i, 2 ; 2 uses
  %i.afe = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.1 ; 2 uses
  %i.aff = getelementptr i8, ptr %i.afe, i64 -4
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !134
  %i.afh = load float, ptr %i.afe, align 4, !tbaa !134
  %i.afi = fsub float %i.afg, %i.afh
  %gep441.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.1
  store float %i.afi, ptr %gep441.i.2, align 4, !tbaa !134
  %indvars.iv.next335.1.i.2 = add nuw nsw i64 %indvars.iv334.1.i, 3 ; 2 uses
  %i.afj = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.2 ; 2 uses
  %i.afk = getelementptr i8, ptr %i.afj, i64 -4
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !134
  %i.afm = load float, ptr %i.afj, align 4, !tbaa !134
  %i.afn = fsub float %i.afl, %i.afm
  %gep441.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.2
  store float %i.afn, ptr %gep441.i.3, align 4, !tbaa !134
  %indvars.iv.next335.1.i.3 = add nuw nsw i64 %indvars.iv334.1.i, 4 ; 2 uses
  %i.afo = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.3 ; 2 uses
  %i.afp = getelementptr i8, ptr %i.afo, i64 -4
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !134
  %i.afr = load float, ptr %i.afo, align 4, !tbaa !134
  %i.afs = fsub float %i.afq, %i.afr
  %gep441.i.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.3
  store float %i.afs, ptr %gep441.i.4, align 4, !tbaa !134
  %indvars.iv.next335.1.i.4 = add nuw nsw i64 %indvars.iv334.1.i, 5 ; 2 uses
  %i.aft = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.4 ; 2 uses
  %i.afu = getelementptr i8, ptr %i.aft, i64 -4
  %i.afv = load float, ptr %i.afu, align 4, !tbaa !134
  %i.afw = load float, ptr %i.aft, align 4, !tbaa !134
  %i.afx = fsub float %i.afv, %i.afw
  %gep441.i.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.4
  store float %i.afx, ptr %gep441.i.5, align 4, !tbaa !134
  %indvars.iv.next335.1.i.5 = add nuw nsw i64 %indvars.iv334.1.i, 6 ; 2 uses
  %i.afy = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.5 ; 2 uses
  %i.afz = getelementptr i8, ptr %i.afy, i64 -4
  %i.aga = load float, ptr %i.afz, align 4, !tbaa !134
  %i.agb = load float, ptr %i.afy, align 4, !tbaa !134
  %i.agc = fsub float %i.aga, %i.agb
  %gep441.i.6 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.5
  store float %i.agc, ptr %gep441.i.6, align 4, !tbaa !134
  %indvars.iv.next335.1.i.6 = add nuw nsw i64 %indvars.iv334.1.i, 7 ; 2 uses
  %i.agd = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.6 ; 2 uses
  %i.age = getelementptr i8, ptr %i.agd, i64 -4
  %i.agf = load float, ptr %i.age, align 4, !tbaa !134
  %i.agg = load float, ptr %i.agd, align 4, !tbaa !134
  %i.agh = fsub float %i.agf, %i.agg
  %gep441.i.7 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.6
  store float %i.agh, ptr %gep441.i.7, align 4, !tbaa !134
  %indvars.iv.next335.1.i.7 = add nuw nsw i64 %indvars.iv334.1.i, 8 ; 2 uses
  %exitcond338.1.not.i.7 = icmp eq i64 %indvars.iv.next335.1.i.7, %i.ij
  br i1 %exitcond338.1.not.i.7, label %._crit_edge260.1.i, label %.lr.ph259.1.i, !llvm.loop !292

._crit_edge260.1.i:                               ; preds = %.lr.ph259.1.i.prol.loopexit, %.lr.ph259.1.i, %vec.epilog.middle.block305, %middle.block290
  %i.agi = fmul float %i.abp, %i.hv
  %i.agj = load float, ptr %i.hy, align 4, !tbaa !134
  %i.agk = fmul float %i.agi, %i.agj
  store float %i.agk, ptr %i.hq, align 4, !tbaa !134
  br i1 %i.hz, label %.lr.ph263.1.i.preheader, label %._crit_edge264.1.thread.i

.lr.ph263.1.i.preheader:                          ; preds = %._crit_edge260.1.i
  br i1 %min.iters.check240, label %.lr.ph263.1.i.preheader498, label %vector.ph241

vector.ph241:                                     ; preds = %.lr.ph263.1.i.preheader
  %broadcast.splatinsert243 = insertelement <8 x float> poison, float %i.abp, i64 0
  %broadcast.splat244 = shufflevector <8 x float> %broadcast.splatinsert243, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph241
  %index250 = phi i64 [ 0, %vector.ph241 ], [ %index.next258, %vector.body249 ]
  %vec.ind251 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph241 ], [ %vec.ind.next259, %vector.body249 ] ; 2 uses
  %vec.ind252 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph241 ], [ %vec.ind.next260, %vector.body249 ] ; 2 uses
  %i.agl = uitofp nneg <8 x i32> %vec.ind252 to <8 x float>
  %i.agm = fadd <8 x float> %broadcast.splat244, %i.agl
  %i.agn = sub nuw nsw <8 x i64> %broadcast.splat246, %vec.ind251 ; 2 uses
  %i.ago = extractelement <8 x i64> %i.agn, i64 0
  %i.agp = getelementptr [4 x i8], ptr %i.d, i64 %i.ago ; 2 uses
  %i.agq = getelementptr i8, ptr %i.agp, i64 -36
  %wide.load253 = load <8 x float>, ptr %i.agq, align 4, !tbaa !134
  %reverse254 = shufflevector <8 x float> %wide.load253, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.agr = trunc nuw nsw <8 x i64> %i.agn to <8 x i32>
  %i.ags = uitofp nneg <8 x i32> %i.agr to <8 x float>
  %i.agt = fsub <8 x float> %i.ags, %broadcast.splat244
  %i.agu = getelementptr i8, ptr %i.agp, i64 -32  ; 2 uses
  %wide.load255 = load <8 x float>, ptr %i.agu, align 4, !tbaa !134
  %reverse256 = shufflevector <8 x float> %wide.load255, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.agv = fmul <8 x float> %reverse256, %i.agt
  %i.agw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.agm, <8 x float> %reverse254, <8 x float> %i.agv)
  %i.agx = shufflevector <8 x float> %i.agw, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse257 = fmul <8 x float> %i.agx, %i.jc
  store <8 x float> %reverse257, ptr %i.agu, align 4, !tbaa !134
  %index.next258 = add nuw i64 %index250, 8       ; 2 uses
  %vec.ind.next259 = add nuw nsw <8 x i64> %vec.ind251, splat (i64 8)
  %vec.ind.next260 = add <8 x i32> %vec.ind252, splat (i32 8)
  %i.agy = icmp eq i64 %index.next258, %n.vec242
  br i1 %i.agy, label %middle.block261, label %vector.body249, !llvm.loop !293

middle.block261:                                  ; preds = %vector.body249
  br i1 %cmp.n262, label %._crit_edge264.1.thread.i, label %.lr.ph263.1.i.preheader498

.lr.ph263.1.i.preheader498:                       ; preds = %.lr.ph263.1.i.preheader, %middle.block261
  %indvars.iv339.1.i.ph = phi i64 [ 1, %.lr.ph263.1.i.preheader ], [ %i.jb, %middle.block261 ]
  br label %.lr.ph263.1.i

.lr.ph263.1.i:                                    ; preds = %.lr.ph263.1.i.preheader498, %.lr.ph263.1.i
  %indvars.iv339.1.i = phi i64 [ %indvars.iv.next340.1.i, %.lr.ph263.1.i ], [ %indvars.iv339.1.i.ph, %.lr.ph263.1.i.preheader498 ] ; 3 uses
  %i.agz = trunc nuw nsw i64 %indvars.iv339.1.i to i32
  %i.aha = uitofp nneg i32 %i.agz to float
  %i.ahb = fadd float %i.abp, %i.aha
  %i.ahc = sub nuw nsw i64 %i.hw, %indvars.iv339.1.i ; 2 uses
  %i.ahd = getelementptr [4 x i8], ptr %i.d, i64 %i.ahc ; 2 uses
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 -8
  %i.ahf = load float, ptr %i.ahe, align 4, !tbaa !134
  %i.ahg = trunc nuw nsw i64 %i.ahc to i32
  %i.ahh = uitofp nneg i32 %i.ahg to float
  %i.ahi = fsub float %i.ahh, %i.abp
  %i.ahj = getelementptr i8, ptr %i.ahd, i64 -4   ; 2 uses
  %i.ahk = load float, ptr %i.ahj, align 4, !tbaa !134
  %i.ahl = fmul float %i.ahk, %i.ahi
  %i.ahm = call float @llvm.fmuladd.f32(float %i.ahb, float %i.ahf, float %i.ahl)
  %i.ahn = fmul float %i.ahm, %i.hv
  store float %i.ahn, ptr %i.ahj, align 4, !tbaa !134
  %indvars.iv.next340.1.i = add nuw nsw i64 %indvars.iv339.1.i, 1 ; 2 uses
  %exitcond343.1.not.i = icmp eq i64 %indvars.iv.next340.1.i, %wide.trip.count342.i
  br i1 %exitcond343.1.not.i, label %._crit_edge264.1.thread.i, label %.lr.ph263.1.i, !llvm.loop !294

._crit_edge264.1.thread.i:                        ; preds = %.lr.ph263.1.i, %middle.block261, %._crit_edge260.1.i
  %i.aho = fmul float %i.abq, %i.hv
  %i.ahp = load float, ptr %i.d, align 16, !tbaa !134
  %i.ahq = fmul float %i.aho, %i.ahp
  store float %i.ahq, ptr %i.d, align 16, !tbaa !134
  br label %._crit_edge268.1.i

._crit_edge264.1.i:                               ; preds = %._crit_edge256.1.i, %._crit_edge256.1.thread.i
  %.ph.i = phi float [ %i.abp, %._crit_edge256.1.i ], [ %i.aat, %._crit_edge256.1.thread.i ]
  %.ph433.i = phi float [ %i.abq, %._crit_edge256.1.i ], [ %i.aau, %._crit_edge256.1.thread.i ]
  %i.ahr = fmul float %.ph.i, %i.hv
  %i.ahs = load float, ptr %i.hy, align 4, !tbaa !134
  %i.aht = fmul float %i.ahr, %i.ahs
  store float %i.aht, ptr %i.hq, align 4, !tbaa !134
  %i.ahu = fmul float %.ph433.i, %i.hv
  %i.ahv = load float, ptr %i.d, align 16, !tbaa !134
  %i.ahw = fmul float %i.ahu, %i.ahv
  store float %i.ahw, ptr %i.d, align 16, !tbaa !134
  br i1 %i.ia, label %._crit_edge268.1.i, label %._crit_edge256.2.thread.i

._crit_edge256.2.thread.i:                        ; preds = %._crit_edge264.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !134 ; 3 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.ahy, ptr %i.p, align 4, !tbaa !134
  %i.ahz = fsub float 1.000000e+00, %i.ahy        ; 3 uses
  store float %i.ahz, ptr %i.d, align 16, !tbaa !134
  %i.aia = fneg float %i.ahz
  %i.aib = load ptr, ptr %i.im, align 8, !tbaa !328
  %i.aic = getelementptr inbounds [4 x i8], ptr %i.aib, i64 %i.ux
  store float %i.aia, ptr %i.aic, align 4, !tbaa !134
  br label %._crit_edge264.2.i

._crit_edge268.1.i:                               ; preds = %._crit_edge264.1.i, %._crit_edge264.1.thread.i
  %i.aid = load ptr, ptr %i.in, align 8, !tbaa !328
  %scevgep344.1.i = getelementptr nuw i8, ptr %i.aid, i64 %i.uq
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep344.1.i, ptr nonnull align 16 %i.d, i64 %i.ik, i1 false), !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.aie = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !134 ; 11 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.aif, ptr %i.p, align 4, !tbaa !134
  %i.aig = fsub float 1.000000e+00, %i.aif        ; 5 uses
  store float %i.aig, ptr %i.d, align 16, !tbaa !134
  br i1 %i.hr, label %.lr.ph251.preheader.2.i.preheader, label %._crit_edge256.2.i

.lr.ph251.preheader.2.i.preheader:                ; preds = %._crit_edge268.1.i
  %broadcast.splatinsert222 = insertelement <8 x float> poison, float %i.aif, i64 0
  %broadcast.splat223 = shufflevector <8 x float> %broadcast.splatinsert222, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph251.preheader.2.i

.lr.ph251.preheader.2.i:                          ; preds = %.lr.ph251.preheader.2.i.preheader, %._crit_edge252.2.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge252.2.i ], [ 0, %.lr.ph251.preheader.2.i.preheader ] ; 3 uses
  %indvars.iv327.2.i = phi i64 [ %indvars.iv.next328.2.i, %._crit_edge252.2.i ], [ 3, %.lr.ph251.preheader.2.i.preheader ] ; 5 uses
  %indvars.iv325.2.i = phi i64 [ %indvars.iv.next326.2.i, %._crit_edge252.2.i ], [ 2, %.lr.ph251.preheader.2.i.preheader ] ; 2 uses
  %i.aih = add nsw i64 %indvars.iv327.2.i, -1     ; 2 uses
  %i.aii = trunc nuw nsw i64 %i.aih to i32
  %i.aij = sitofp i32 %i.aii to double
  %i.aik = fdiv double 1.000000e+00, %i.aij
  %i.ail = fptrunc double %i.aik to float         ; 4 uses
  %i.aim = fmul float %i.aif, %i.ail
  %i.ain = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv327.2.i
  %i.aio = getelementptr i8, ptr %i.ain, i64 -8
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !134
  %i.aiq = fmul float %i.aip, %i.aim
  %i.air = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aih
  store float %i.aiq, ptr %i.air, align 4, !tbaa !134
  %11 = add nuw i64 %indvar, 1                    ; 2 uses
  %min.iters.check215 = icmp ult i64 %indvar, 7
  br i1 %min.iters.check215, label %.lr.ph251.2.i.preheader, label %vector.ph216

vector.ph216:                                     ; preds = %.lr.ph251.preheader.2.i
  %n.vec217 = and i64 %11, -8                     ; 3 uses
  %i.ais = or disjoint i64 %n.vec217, 1
  %broadcast.splatinsert218 = insertelement <8 x i64> poison, i64 %indvars.iv327.2.i, i64 0
  %broadcast.splat219 = shufflevector <8 x i64> %broadcast.splatinsert218, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert220 = insertelement <8 x float> poison, float %i.ail, i64 0
  %i.ait = shufflevector <8 x float> %broadcast.splatinsert220, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph216
  %index225 = phi i64 [ 0, %vector.ph216 ], [ %index.next233, %vector.body224 ]
  %vec.ind226 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph216 ], [ %vec.ind.next234, %vector.body224 ] ; 2 uses
  %vec.ind227 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph216 ], [ %vec.ind.next235, %vector.body224 ] ; 2 uses
  %i.aiu = uitofp nneg <8 x i32> %vec.ind227 to <8 x float>
  %i.aiv = fadd <8 x float> %broadcast.splat223, %i.aiu
  %i.aiw = sub nuw nsw <8 x i64> %broadcast.splat219, %vec.ind226 ; 2 uses
  %i.aix = extractelement <8 x i64> %i.aiw, i64 0
  %i.aiy = getelementptr [4 x i8], ptr %i.d, i64 %i.aix ; 2 uses
  %i.aiz = getelementptr i8, ptr %i.aiy, i64 -36
  %wide.load228 = load <8 x float>, ptr %i.aiz, align 4, !tbaa !134
  %reverse229 = shufflevector <8 x float> %wide.load228, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aja = trunc nuw <8 x i64> %i.aiw to <8 x i32>
  %i.ajb = uitofp nneg <8 x i32> %i.aja to <8 x float>
  %i.ajc = fsub <8 x float> %i.ajb, %broadcast.splat223
  %i.ajd = getelementptr i8, ptr %i.aiy, i64 -32  ; 2 uses
  %wide.load230 = load <8 x float>, ptr %i.ajd, align 4, !tbaa !134
  %reverse231 = shufflevector <8 x float> %wide.load230, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aje = fmul <8 x float> %reverse231, %i.ajc
  %i.ajf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aiv, <8 x float> %reverse229, <8 x float> %i.aje)
  %i.ajg = shufflevector <8 x float> %i.ajf, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse232 = fmul <8 x float> %i.ajg, %i.ait
  store <8 x float> %reverse232, ptr %i.ajd, align 4, !tbaa !134
  %index.next233 = add nuw i64 %index225, 8       ; 2 uses
  %vec.ind.next234 = add nuw nsw <8 x i64> %vec.ind226, splat (i64 8)
  %vec.ind.next235 = add <8 x i32> %vec.ind227, splat (i32 8)
  %i.ajh = icmp eq i64 %index.next233, %n.vec217
  br i1 %i.ajh, label %middle.block236, label %vector.body224, !llvm.loop !295

middle.block236:                                  ; preds = %vector.body224
  %cmp.n237 = icmp eq i64 %11, %n.vec217
  br i1 %cmp.n237, label %._crit_edge252.2.i, label %.lr.ph251.2.i.preheader

.lr.ph251.2.i.preheader:                          ; preds = %.lr.ph251.preheader.2.i, %middle.block236
  %indvars.iv318.2.i.ph = phi i64 [ 1, %.lr.ph251.preheader.2.i ], [ %i.ais, %middle.block236 ]
  br label %.lr.ph251.2.i

.lr.ph251.2.i:                                    ; preds = %.lr.ph251.2.i.preheader, %.lr.ph251.2.i
  %indvars.iv318.2.i = phi i64 [ %indvars.iv.next319.2.i, %.lr.ph251.2.i ], [ %indvars.iv318.2.i.ph, %.lr.ph251.2.i.preheader ] ; 3 uses
  %i.aji = trunc nuw nsw i64 %indvars.iv318.2.i to i32
  %i.ajj = uitofp nneg i32 %i.aji to float
  %i.ajk = fadd float %i.aif, %i.ajj
  %i.ajl = sub nuw nsw i64 %indvars.iv327.2.i, %indvars.iv318.2.i ; 2 uses
  %i.ajm = getelementptr [4 x i8], ptr %i.d, i64 %i.ajl ; 2 uses
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 -8
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !134
  %i.ajp = trunc nuw i64 %i.ajl to i32
  %i.ajq = uitofp nneg i32 %i.ajp to float
  %i.ajr = fsub float %i.ajq, %i.aif
  %i.ajs = getelementptr i8, ptr %i.ajm, i64 -4   ; 2 uses
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !134
  %i.aju = fmul float %i.ajt, %i.ajr
  %i.ajv = call float @llvm.fmuladd.f32(float %i.ajk, float %i.ajo, float %i.aju)
  %i.ajw = fmul float %i.ajv, %i.ail
  store float %i.ajw, ptr %i.ajs, align 4, !tbaa !134
  %indvars.iv.next319.2.i = add nuw nsw i64 %indvars.iv318.2.i, 1 ; 2 uses
  %exitcond324.2.not.i = icmp eq i64 %indvars.iv.next319.2.i, %indvars.iv325.2.i
  br i1 %exitcond324.2.not.i, label %._crit_edge252.2.i, label %.lr.ph251.2.i, !llvm.loop !296

._crit_edge252.2.i:                               ; preds = %.lr.ph251.2.i, %middle.block236
  %i.ajx = fmul float %i.aig, %i.ail
  %i.ajy = load float, ptr %i.d, align 16, !tbaa !134
  %i.ajz = fmul float %i.ajx, %i.ajy              ; 2 uses
  store float %i.ajz, ptr %i.d, align 16, !tbaa !134
  %indvars.iv.next328.2.i = add nuw nsw i64 %indvars.iv327.2.i, 1 ; 2 uses
  %indvars.iv.next326.2.i = add nuw nsw i64 %indvars.iv325.2.i, 1
  %exitcond333.2.not.i = icmp eq i64 %indvars.iv.next328.2.i, %i.ij
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond333.2.not.i, label %._crit_edge256.2.i, label %.lr.ph251.preheader.2.i, !llvm.loop !279

._crit_edge256.2.i:                               ; preds = %._crit_edge252.2.i, %._crit_edge268.1.i
  %i.aka = phi float [ %i.aig, %._crit_edge268.1.i ], [ %i.ajz, %._crit_edge252.2.i ]
  %i.akb = fneg float %i.aka
  %i.akc = load ptr, ptr %i.im, align 8, !tbaa !328 ; 2 uses
  %i.akd = getelementptr inbounds [4 x i8], ptr %i.akc, i64 %i.ux
  store float %i.akb, ptr %i.akd, align 4, !tbaa !134
  br i1 %i.hs, label %iter.check200, label %._crit_edge264.2.i

iter.check200:                                    ; preds = %._crit_edge256.2.i
  %invariant.gep442.i = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.uy ; 3 uses
  br i1 %min.iters.check180, label %.lr.ph259.2.i.preheader, label %vector.main.loop.iter.check181

vector.main.loop.iter.check181:                   ; preds = %iter.check200
  br i1 %min.iters.check182, label %vec.epilog.ph204, label %vector.body185

vector.body185:                                   ; preds = %vector.main.loop.iter.check181, %vector.body185
  %index186 = phi i64 [ %index.next195, %vector.body185 ], [ 0, %vector.main.loop.iter.check181 ] ; 2 uses
  %i.ake = or disjoint i64 %index186, 1           ; 2 uses
  %i.akf = getelementptr [4 x i8], ptr %i.d, i64 %i.ake ; 8 uses
  %i.akg = getelementptr i8, ptr %i.akf, i64 -4
  %i.akh = getelementptr i8, ptr %i.akf, i64 28
  %i.aki = getelementptr i8, ptr %i.akf, i64 60
  %i.akj = getelementptr i8, ptr %i.akf, i64 92
  %wide.load187 = load <8 x float>, ptr %i.akg, align 16, !tbaa !134
  %wide.load188 = load <8 x float>, ptr %i.akh, align 16, !tbaa !134
  %wide.load189 = load <8 x float>, ptr %i.aki, align 16, !tbaa !134
  %wide.load190 = load <8 x float>, ptr %i.akj, align 16, !tbaa !134
  %i.akk = getelementptr i8, ptr %i.akf, i64 32
  %i.akl = getelementptr i8, ptr %i.akf, i64 64
  %i.akm = getelementptr i8, ptr %i.akf, i64 96
  %wide.load191 = load <8 x float>, ptr %i.akf, align 4, !tbaa !134
  %wide.load192 = load <8 x float>, ptr %i.akk, align 4, !tbaa !134
  %wide.load193 = load <8 x float>, ptr %i.akl, align 4, !tbaa !134
  %wide.load194 = load <8 x float>, ptr %i.akm, align 4, !tbaa !134
  %i.akn = fsub <8 x float> %wide.load187, %wide.load191
  %i.ako = fsub <8 x float> %wide.load188, %wide.load192
  %i.akp = fsub <8 x float> %wide.load189, %wide.load193
  %i.akq = fsub <8 x float> %wide.load190, %wide.load194
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %i.ake ; 4 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 32
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akr, i64 64
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akr, i64 96
  store <8 x float> %i.akn, ptr %i.akr, align 4, !tbaa !134
  store <8 x float> %i.ako, ptr %i.aks, align 4, !tbaa !134
  store <8 x float> %i.akp, ptr %i.akt, align 4, !tbaa !134
  store <8 x float> %i.akq, ptr %i.aku, align 4, !tbaa !134
  %index.next195 = add nuw i64 %index186, 32      ; 2 uses
  %i.akv = icmp eq i64 %index.next195, %n.vec184
  br i1 %i.akv, label %middle.block196, label %vector.body185, !llvm.loop !297

middle.block196:                                  ; preds = %vector.body185
  br i1 %cmp.n197, label %._crit_edge260.2.i, label %vec.epilog.iter.check202

vec.epilog.iter.check202:                         ; preds = %middle.block196
  br i1 %min.epilog.iters.check203, label %.lr.ph259.2.i.preheader, label %vec.epilog.ph204, !prof !192

vec.epilog.ph204:                                 ; preds = %vector.main.loop.iter.check181, %vec.epilog.iter.check202
  %vec.epilog.resume.val198 = phi i64 [ %n.vec184, %vec.epilog.iter.check202 ], [ 0, %vector.main.loop.iter.check181 ]
  br label %vec.epilog.vector.body206

vec.epilog.vector.body206:                        ; preds = %vec.epilog.vector.body206, %vec.epilog.ph204
  %index207 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph204 ], [ %index.next210, %vec.epilog.vector.body206 ] ; 2 uses
  %i.akw = or disjoint i64 %index207, 1           ; 2 uses
  %i.akx = getelementptr [4 x i8], ptr %i.d, i64 %i.akw ; 2 uses
  %i.aky = getelementptr i8, ptr %i.akx, i64 -4
  %wide.load208 = load <8 x float>, ptr %i.aky, align 16, !tbaa !134
  %wide.load209 = load <8 x float>, ptr %i.akx, align 4, !tbaa !134
  %i.akz = fsub <8 x float> %wide.load208, %wide.load209
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %i.akw
  store <8 x float> %i.akz, ptr %i.ala, align 4, !tbaa !134
  %index.next210 = add nuw i64 %index207, 8       ; 2 uses
  %i.alb = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.alb, label %vec.epilog.middle.block211, label %vec.epilog.vector.body206, !llvm.loop !298

vec.epilog.middle.block211:                       ; preds = %vec.epilog.vector.body206
  br i1 %cmp.n212, label %._crit_edge260.2.i, label %.lr.ph259.2.i.preheader

.lr.ph259.2.i.preheader:                          ; preds = %iter.check200, %vec.epilog.iter.check202, %vec.epilog.middle.block211
  %indvars.iv334.2.i.ph = phi i64 [ 1, %iter.check200 ], [ %i.je, %vec.epilog.iter.check202 ], [ %i.jf, %vec.epilog.middle.block211 ]
  br label %.lr.ph259.2.i

.lr.ph259.2.i:                                    ; preds = %.lr.ph259.2.i.preheader, %.lr.ph259.2.i
  %indvars.iv334.2.i = phi i64 [ %indvars.iv.next335.2.i, %.lr.ph259.2.i ], [ %indvars.iv334.2.i.ph, %.lr.ph259.2.i.preheader ] ; 3 uses
  %i.alc = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.2.i ; 2 uses
  %i.ald = getelementptr i8, ptr %i.alc, i64 -4
  %i.ale = load float, ptr %i.ald, align 4, !tbaa !134
  %i.alf = load float, ptr %i.alc, align 4, !tbaa !134
  %i.alg = fsub float %i.ale, %i.alf
  %gep443.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv334.2.i
  store float %i.alg, ptr %gep443.i, align 4, !tbaa !134
  %indvars.iv.next335.2.i = add nuw nsw i64 %indvars.iv334.2.i, 1 ; 2 uses
  %exitcond338.2.not.i = icmp eq i64 %indvars.iv.next335.2.i, %i.ij
  br i1 %exitcond338.2.not.i, label %._crit_edge260.2.i, label %.lr.ph259.2.i, !llvm.loop !299

._crit_edge260.2.i:                               ; preds = %.lr.ph259.2.i, %vec.epilog.middle.block211, %middle.block196
  %i.alh = fmul float %i.aif, %i.hv
  %i.ali = load float, ptr %i.hy, align 4, !tbaa !134
  %i.alj = fmul float %i.alh, %i.ali
  store float %i.alj, ptr %i.hq, align 4, !tbaa !134
  br i1 %i.hz, label %.lr.ph263.2.i.preheader, label %._crit_edge264.2.thread.i

.lr.ph263.2.i.preheader:                          ; preds = %._crit_edge260.2.i
  br i1 %min.iters.check158, label %.lr.ph263.2.i.preheader497, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph263.2.i.preheader
  %broadcast.splatinsert161 = insertelement <8 x float> poison, float %i.aif, i64 0
  %broadcast.splat162 = shufflevector <8 x float> %broadcast.splatinsert161, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph159
  %index168 = phi i64 [ 0, %vector.ph159 ], [ %index.next174, %vector.body167 ]
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph159 ], [ %vec.ind.next, %vector.body167 ] ; 2 uses
  %vec.ind169 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph159 ], [ %vec.ind.next175, %vector.body167 ] ; 2 uses
  %i.alk = uitofp nneg <8 x i32> %vec.ind169 to <8 x float>
  %i.all = fadd <8 x float> %broadcast.splat162, %i.alk
  %i.alm = sub nuw nsw <8 x i64> %broadcast.splat164, %vec.ind ; 2 uses
  %i.aln = extractelement <8 x i64> %i.alm, i64 0
  %i.alo = getelementptr [4 x i8], ptr %i.d, i64 %i.aln ; 2 uses
  %i.alp = getelementptr i8, ptr %i.alo, i64 -36
end_hunk_0
