inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@vorbis_synthesis_blockin:bb.a
  store <4 x float> %i.hb, ptr %i.gn, align 4, !alias.scope !243, !noalias !246
  %index.next452 = add nuw i64 %index441, 8       ; 2 uses
  %i.hc = icmp eq i64 %index.next452, %n.vec439
  br i1 %i.hc, label %middle.block453, label %vector.body440, !llvm.loop !253

middle.block453:                                  ; preds = %vector.body440
  br i1 %cmp.n454, label %.loopexit, label %.lr.ph263.preheader496

.lr.ph263.preheader496:                           ; preds = %vector.memcheck419, %.lr.ph263.preheader, %middle.block453
  %indvars.iv280.ph = phi i64 [ 0, %vector.memcheck419 ], [ 0, %.lr.ph263.preheader ], [ %n.vec439, %middle.block453 ] ; 7 uses
  %.neg513 = or disjoint i64 %indvars.iv280.ph, 1
  br i1 %lcmp.mod501.not, label %.lr.ph263.prol.loopexit, label %.lr.ph263.prol

.lr.ph263.prol:                                   ; preds = %.lr.ph263.preheader496
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv280.ph ; 2 uses
  %i.he = load float, ptr %i.hd, align 4
  %i.hf = xor i64 %indvars.iv280.ph, -1
  %i.hg = getelementptr [4 x i8], ptr %i.gl, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4
  %i.hi = fmul float %i.he, %i.hh
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv280.ph
  %i.hk = load float, ptr %i.hj, align 4
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv280.ph
  %i.hm = load float, ptr %i.hl, align 4
  %i.hn = fmul float %i.hk, %i.hm
  %i.ho = fadd float %i.hi, %i.hn
  store float %i.ho, ptr %i.hd, align 4
  %indvars.iv.next281.prol = or disjoint i64 %indvars.iv280.ph, 1
  br label %.lr.ph263.prol.loopexit

.lr.ph263.prol.loopexit:                          ; preds = %.lr.ph263.prol, %.lr.ph263.preheader496
  %indvars.iv280.unr = phi i64 [ %indvars.iv280.ph, %.lr.ph263.preheader496 ], [ %indvars.iv.next281.prol, %.lr.ph263.prol ]
  %i.hp = icmp eq i64 %wide.trip.count283, %.neg513
  br i1 %i.hp, label %.loopexit, label %.lr.ph263

.lr.ph263:                                        ; preds = %.lr.ph263.prol.loopexit, %.lr.ph263
  %indvars.iv280 = phi i64 [ %indvars.iv.next281.1, %.lr.ph263 ], [ %indvars.iv280.unr, %.lr.ph263.prol.loopexit ] ; 7 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv280 ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4
  %i.hs = xor i64 %indvars.iv280, -1
  %i.ht = getelementptr [4 x i8], ptr %i.gl, i64 %i.hs
  %i.hu = load float, ptr %i.ht, align 4
  %i.hv = fmul float %i.hr, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv280
  %i.hx = load float, ptr %i.hw, align 4
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv280
  %i.hz = load float, ptr %i.hy, align 4
  %i.ia = fmul float %i.hx, %i.hz
  %i.ib = fadd float %i.hv, %i.ia
  store float %i.ib, ptr %i.hq, align 4
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next281 ; 2 uses
  %i.id = load float, ptr %i.ic, align 4
  %i.ie = sub i64 -2, %indvars.iv280
  %i.if = getelementptr [4 x i8], ptr %i.gl, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4
  %i.ih = fmul float %i.id, %i.ig
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next281
  %i.ij = load float, ptr %i.ii, align 4
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.next281
  %i.il = load float, ptr %i.ik, align 4
  %i.im = fmul float %i.ij, %i.il
  %i.in = fadd float %i.ih, %i.im
  store float %i.in, ptr %i.ic, align 4
  %indvars.iv.next281.1 = add nuw nsw i64 %indvars.iv280, 2 ; 2 uses
  %exitcond284.not.1 = icmp eq i64 %indvars.iv.next281.1, %wide.trip.count283
  br i1 %exitcond284.not.1, label %.loopexit, label %.lr.ph263, !llvm.loop !254

bb.l:                                             ; preds = %bb.h
  %i.io = load i32, ptr %i.bu, align 8
  %i.ip = sub nsw i32 %i.io, %i.h
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8            ; 16 uses
  %i.it = load ptr, ptr %i.br, align 8
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv309
  %i.iv = load ptr, ptr %i.iu, align 8            ; 4 uses
  %i.iw = ptrtoaddr ptr %i.iv to i64
  %i.ix = getelementptr [4 x i8], ptr %i.iv, i64 %i.bs ; 20 uses
  %i.iy = load ptr, ptr %1, align 8
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv309
  %i.ja = load ptr, ptr %i.iz, align 8            ; 9 uses
  %i.jb = ptrtoaddr ptr %i.ja to i64
  br i1 %.not252, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jc = getelementptr [4 x i8], ptr %i.ja, i64 %i.bw
  %i.jd = getelementptr [4 x i8], ptr %i.jc, i64 %i.ca ; 11 uses
  br i1 %i.by, label %.lr.ph265.preheader, label %.preheader

.lr.ph265.preheader:                              ; preds = %bb.m
  %i.je = getelementptr [4 x i8], ptr %i.is, i64 %i.cf ; 5 uses
  br i1 %min.iters.check399, label %.lr.ph265.preheader495, label %vector.memcheck382

vector.memcheck382:                               ; preds = %.lr.ph265.preheader
  %scevgep383 = getelementptr i8, ptr %i.iv, i64 %i.cu ; 3 uses
  %scevgep384 = getelementptr i8, ptr %i.is, i64 %i.cs
  %scevgep385 = getelementptr i8, ptr %i.is, i64 %i.cw
  %scevgep386 = getelementptr i8, ptr %i.ja, i64 %i.da
  %bound0387 = icmp ult ptr %i.ix, %scevgep384
  %bound1388 = icmp ult ptr %i.is, %scevgep383
  %found.conflict389 = and i1 %bound0387, %bound1388
  %bound0390 = icmp ult ptr %i.ix, %i.je
  %bound1391 = icmp ult ptr %scevgep385, %scevgep383
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx393 = or i1 %found.conflict389, %found.conflict392
  %bound0394 = icmp ult ptr %i.ix, %scevgep386
  %bound1395 = icmp ult ptr %i.jd, %scevgep383
  %found.conflict396 = and i1 %bound0394, %bound1395
  %conflict.rdx397 = or i1 %conflict.rdx393, %found.conflict396
  br i1 %conflict.rdx397, label %.lr.ph265.preheader495, label %vector.body403

vector.body403:                                   ; preds = %vector.memcheck382, %vector.body403
  %index404 = phi i64 [ %index.next415, %vector.body403 ], [ 0, %vector.memcheck382 ] ; 5 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %index404 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %wide.load405 = load <4 x float>, ptr %i.jf, align 4, !alias.scope !255, !noalias !258
  %wide.load406 = load <4 x float>, ptr %i.jg, align 4, !alias.scope !255, !noalias !258
  %i.jh = xor i64 %index404, -1
  %i.ji = getelementptr [4 x i8], ptr %i.je, i64 %i.jh ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 -12
  %i.jk = getelementptr i8, ptr %i.ji, i64 -28
  %wide.load407 = load <4 x float>, ptr %i.jj, align 4, !alias.scope !262
  %wide.load408 = load <4 x float>, ptr %i.jk, align 4, !alias.scope !262
  %reverse409 = shufflevector <4 x float> %wide.load407, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse410 = shufflevector <4 x float> %wide.load408, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.jl = fmul <4 x float> %wide.load405, %reverse409
  %i.jm = fmul <4 x float> %wide.load406, %reverse410
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %index404 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %wide.load411 = load <4 x float>, ptr %i.jn, align 4, !alias.scope !263
  %wide.load412 = load <4 x float>, ptr %i.jo, align 4, !alias.scope !263
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index404 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %wide.load413 = load <4 x float>, ptr %i.jp, align 4, !alias.scope !264
  %wide.load414 = load <4 x float>, ptr %i.jq, align 4, !alias.scope !264
  %i.jr = fmul <4 x float> %wide.load411, %wide.load413
  %i.js = fmul <4 x float> %wide.load412, %wide.load414
  %i.jt = fadd <4 x float> %i.jl, %i.jr
  %i.ju = fadd <4 x float> %i.jm, %i.js
  store <4 x float> %i.jt, ptr %i.jf, align 4, !alias.scope !255, !noalias !258
  store <4 x float> %i.ju, ptr %i.jg, align 4, !alias.scope !255, !noalias !258
  %index.next415 = add nuw i64 %index404, 8       ; 2 uses
  %i.jv = icmp eq i64 %index.next415, %n.vec402
  br i1 %i.jv, label %middle.block416, label %vector.body403, !llvm.loop !265

middle.block416:                                  ; preds = %vector.body403
  br i1 %cmp.n417, label %.preheader, label %.lr.ph265.preheader495

.lr.ph265.preheader495:                           ; preds = %vector.memcheck382, %.lr.ph265.preheader, %middle.block416
  %indvars.iv285.ph = phi i64 [ 0, %vector.memcheck382 ], [ 0, %.lr.ph265.preheader ], [ %n.vec402, %middle.block416 ] ; 7 uses
  %.neg514 = or disjoint i64 %indvars.iv285.ph, 1
  br i1 %lcmp.mod503.not, label %.lr.ph265.prol.loopexit, label %.lr.ph265.prol

.lr.ph265.prol:                                   ; preds = %.lr.ph265.preheader495
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv285.ph ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4
  %i.jy = xor i64 %indvars.iv285.ph, -1
  %i.jz = getelementptr [4 x i8], ptr %i.je, i64 %i.jy
  %i.ka = load float, ptr %i.jz, align 4
  %i.kb = fmul float %i.jx, %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv285.ph
  %i.kd = load float, ptr %i.kc, align 4
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv285.ph
  %i.kf = load float, ptr %i.ke, align 4
  %i.kg = fmul float %i.kd, %i.kf
  %i.kh = fadd float %i.kb, %i.kg
  store float %i.kh, ptr %i.jw, align 4
  %indvars.iv.next286.prol = or disjoint i64 %indvars.iv285.ph, 1
  br label %.lr.ph265.prol.loopexit

.lr.ph265.prol.loopexit:                          ; preds = %.lr.ph265.prol, %.lr.ph265.preheader495
  %indvars.iv285.unr = phi i64 [ %indvars.iv285.ph, %.lr.ph265.preheader495 ], [ %indvars.iv.next286.prol, %.lr.ph265.prol ]
  %i.ki = icmp eq i64 %wide.trip.count283, %.neg514
  br i1 %i.ki, label %.preheader, label %.lr.ph265

.preheader:                                       ; preds = %.lr.ph265.prol.loopexit, %.lr.ph265, %middle.block416, %bb.m
  %.2.lcssa = phi i32 [ 0, %bb.m ], [ %i.ak, %middle.block416 ], [ %i.ak, %.lr.ph265 ], [ %i.ak, %.lr.ph265.prol.loopexit ] ; 2 uses
  %i.kj = icmp slt i32 %.2.lcssa, %i.cb
  br i1 %i.kj, label %.lr.ph267.preheader, label %.loopexit

.lr.ph267.preheader:                              ; preds = %.preheader
  %i.kk = zext nneg i32 %.2.lcssa to i64          ; 5 uses
  %i.kl = sub nsw i64 %wide.trip.count297, %i.kk  ; 3 uses
  %min.iters.check370 = icmp ult i64 %i.kl, 8
  br i1 %min.iters.check370, label %.lr.ph267.preheader493, label %vector.memcheck367

vector.memcheck367:                               ; preds = %.lr.ph267.preheader
  %i.km = add i64 %i.cr, %i.iw
  %i.kn = sub i64 %i.jb, %i.km
  %diff.check368 = icmp ugt i64 %i.kn, -32
  br i1 %diff.check368, label %.lr.ph267.preheader493, label %vector.ph371

vector.ph371:                                     ; preds = %vector.memcheck367
  %n.vec373 = and i64 %i.kl, -8                   ; 3 uses
  %i.ko = add nsw i64 %n.vec373, %i.kk
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph371
  %index375 = phi i64 [ 0, %vector.ph371 ], [ %index.next378, %vector.body374 ] ; 2 uses
  %i.kp = add nuw i64 %index375, %i.kk            ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.kp ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %wide.load376 = load <4 x float>, ptr %i.kq, align 4
  %wide.load377 = load <4 x float>, ptr %i.kr, align 4
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.kp ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store <4 x float> %wide.load376, ptr %i.ks, align 4
  store <4 x float> %wide.load377, ptr %i.kt, align 4
  %index.next378 = add nuw i64 %index375, 8       ; 2 uses
  %i.ku = icmp eq i64 %index.next378, %n.vec373
  br i1 %i.ku, label %middle.block379, label %vector.body374, !llvm.loop !266

middle.block379:                                  ; preds = %vector.body374
  %cmp.n380 = icmp eq i64 %i.kl, %n.vec373
  br i1 %cmp.n380, label %.loopexit, label %.lr.ph267.preheader493

.lr.ph267.preheader493:                           ; preds = %vector.memcheck367, %.lr.ph267.preheader, %middle.block379
  %indvars.iv293.ph = phi i64 [ %i.kk, %vector.memcheck367 ], [ %i.kk, %.lr.ph267.preheader ], [ %i.ko, %middle.block379 ] ; 4 uses
  %i.kv = sub nsw i64 %wide.trip.count297, %indvars.iv293.ph
  %xtraiter504 = and i64 %i.kv, 3                 ; 2 uses
  %lcmp.mod505.not = icmp eq i64 %xtraiter504, 0
  br i1 %lcmp.mod505.not, label %.lr.ph267.prol.loopexit, label %.lr.ph267.prol

.lr.ph267.prol:                                   ; preds = %.lr.ph267.preheader493, %.lr.ph267.prol
  %indvars.iv293.prol = phi i64 [ %indvars.iv.next294.prol, %.lr.ph267.prol ], [ %indvars.iv293.ph, %.lr.ph267.preheader493 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph267.prol ], [ 0, %.lr.ph267.preheader493 ]
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv293.prol
  %i.kx = load float, ptr %i.kw, align 4
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv293.prol
  store float %i.kx, ptr %i.ky, align 4
  %indvars.iv.next294.prol = add nuw nsw i64 %indvars.iv293.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter504
  br i1 %prol.iter.cmp.not, label %.lr.ph267.prol.loopexit, label %.lr.ph267.prol, !llvm.loop !267

.lr.ph267.prol.loopexit:                          ; preds = %.lr.ph267.prol, %.lr.ph267.preheader493
  %indvars.iv293.unr = phi i64 [ %indvars.iv293.ph, %.lr.ph267.preheader493 ], [ %indvars.iv.next294.prol, %.lr.ph267.prol ]
  %i.kz = sub nsw i64 %indvars.iv293.ph, %wide.trip.count297
  %i.la = icmp ugt i64 %i.kz, -4
  br i1 %i.la, label %.loopexit, label %.lr.ph267

.lr.ph265:                                        ; preds = %.lr.ph265.prol.loopexit, %.lr.ph265
  %indvars.iv285 = phi i64 [ %indvars.iv.next286.1, %.lr.ph265 ], [ %indvars.iv285.unr, %.lr.ph265.prol.loopexit ] ; 7 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv285 ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4
  %i.ld = xor i64 %indvars.iv285, -1
  %i.le = getelementptr [4 x i8], ptr %i.je, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4
  %i.lg = fmul float %i.lc, %i.lf
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv285
  %i.li = load float, ptr %i.lh, align 4
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv285
  %i.lk = load float, ptr %i.lj, align 4
  %i.ll = fmul float %i.li, %i.lk
  %i.lm = fadd float %i.lg, %i.ll
  store float %i.lm, ptr %i.lb, align 4
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 3 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next286 ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4
  %i.lp = sub i64 -2, %indvars.iv285
  %i.lq = getelementptr [4 x i8], ptr %i.je, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4
  %i.ls = fmul float %i.lo, %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.next286
  %i.lu = load float, ptr %i.lt, align 4
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next286
  %i.lw = load float, ptr %i.lv, align 4
  %i.lx = fmul float %i.lu, %i.lw
  %i.ly = fadd float %i.ls, %i.lx
  store float %i.ly, ptr %i.ln, align 4
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %exitcond289.not.1 = icmp eq i64 %indvars.iv.next286.1, %wide.trip.count288
  br i1 %exitcond289.not.1, label %.preheader, label %.lr.ph265, !llvm.loop !268

.lr.ph267:                                        ; preds = %.lr.ph267.prol.loopexit, %.lr.ph267
  %indvars.iv293 = phi i64 [ %indvars.iv.next294.3, %.lr.ph267 ], [ %indvars.iv293.unr, %.lr.ph267.prol.loopexit ] ; 6 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv293
  %i.ma = load float, ptr %i.lz, align 4
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv293
  store float %i.ma, ptr %i.mb, align 4
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.next294
  %i.md = load float, ptr %i.mc, align 4
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next294
  store float %i.md, ptr %i.me, align 4
  %indvars.iv.next294.1 = add nuw nsw i64 %indvars.iv293, 2 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.next294.1
  %i.mg = load float, ptr %i.mf, align 4
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next294.1
  store float %i.mg, ptr %i.mh, align 4
  %indvars.iv.next294.2 = add nuw nsw i64 %indvars.iv293, 3 ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.next294.2
  %i.mj = load float, ptr %i.mi, align 4
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next294.2
  store float %i.mj, ptr %i.mk, align 4
  %indvars.iv.next294.3 = add nuw nsw i64 %indvars.iv293, 4 ; 2 uses
  %exitcond298.not.3 = icmp eq i64 %indvars.iv.next294.3, %wide.trip.count297
  br i1 %exitcond298.not.3, label %.loopexit, label %.lr.ph267, !llvm.loop !269

bb.n:                                             ; preds = %bb.l
  br i1 %i.by, label %.lr.ph269.preheader, label %.loopexit

.lr.ph269.preheader:                              ; preds = %bb.n
  %i.ml = getelementptr [4 x i8], ptr %i.is, i64 %i.cf ; 5 uses
  br i1 %min.iters.check348, label %.lr.ph269.preheader492, label %vector.memcheck336

vector.memcheck336:                               ; preds = %.lr.ph269.preheader
  %scevgep = getelementptr i8, ptr %i.iv, i64 %i.cl ; 3 uses
  %scevgep337 = getelementptr i8, ptr %i.is, i64 %i.cj
  %scevgep338 = getelementptr i8, ptr %i.is, i64 %i.cn
  %scevgep339 = getelementptr i8, ptr %i.ja, i64 %i.cj
  %bound0 = icmp ult ptr %i.ix, %scevgep337
  %bound1 = icmp ult ptr %i.is, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0340 = icmp ult ptr %i.ix, %i.ml
  %bound1341 = icmp ult ptr %scevgep338, %scevgep
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx = or i1 %found.conflict, %found.conflict342
  %bound0343 = icmp ult ptr %i.ix, %scevgep339
  %bound1344 = icmp ult ptr %i.ja, %scevgep
  %found.conflict345 = and i1 %bound0343, %bound1344
  %conflict.rdx346 = or i1 %conflict.rdx, %found.conflict345
  br i1 %conflict.rdx346, label %.lr.ph269.preheader492, label %vector.body352

vector.body352:                                   ; preds = %vector.memcheck336, %vector.body352
  %index353 = phi i64 [ %index.next363, %vector.body352 ], [ 0, %vector.memcheck336 ] ; 5 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %index353 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16 ; 2 uses
  %wide.load354 = load <4 x float>, ptr %i.mm, align 4, !alias.scope !270, !noalias !273
  %wide.load355 = load <4 x float>, ptr %i.mn, align 4, !alias.scope !270, !noalias !273
  %i.mo = xor i64 %index353, -1
  %i.mp = getelementptr [4 x i8], ptr %i.ml, i64 %i.mo ; 2 uses
  %i.mq = getelementptr i8, ptr %i.mp, i64 -12
  %i.mr = getelementptr i8, ptr %i.mp, i64 -28
  %wide.load356 = load <4 x float>, ptr %i.mq, align 4, !alias.scope !277
  %wide.load357 = load <4 x float>, ptr %i.mr, align 4, !alias.scope !277
  %reverse = shufflevector <4 x float> %wide.load356, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse358 = shufflevector <4 x float> %wide.load357, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ms = fmul <4 x float> %wide.load354, %reverse
  %i.mt = fmul <4 x float> %wide.load355, %reverse358
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index353 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %wide.load359 = load <4 x float>, ptr %i.mu, align 4, !alias.scope !278
  %wide.load360 = load <4 x float>, ptr %i.mv, align 4, !alias.scope !278
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index353 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %wide.load361 = load <4 x float>, ptr %i.mw, align 4, !alias.scope !279
  %wide.load362 = load <4 x float>, ptr %i.mx, align 4, !alias.scope !279
  %i.my = fmul <4 x float> %wide.load359, %wide.load361
  %i.mz = fmul <4 x float> %wide.load360, %wide.load362
  %i.na = fadd <4 x float> %i.ms, %i.my
  %i.nb = fadd <4 x float> %i.mt, %i.mz
  store <4 x float> %i.na, ptr %i.mm, align 4, !alias.scope !270, !noalias !273
  store <4 x float> %i.nb, ptr %i.mn, align 4, !alias.scope !270, !noalias !273
  %index.next363 = add nuw i64 %index353, 8       ; 2 uses
  %i.nc = icmp eq i64 %index.next363, %n.vec351
  br i1 %i.nc, label %middle.block364, label %vector.body352, !llvm.loop !280

middle.block364:                                  ; preds = %vector.body352
  br i1 %cmp.n365, label %.loopexit, label %.lr.ph269.preheader492

.lr.ph269.preheader492:                           ; preds = %vector.memcheck336, %.lr.ph269.preheader, %middle.block364
  %indvars.iv299.ph = phi i64 [ 0, %vector.memcheck336 ], [ 0, %.lr.ph269.preheader ], [ %n.vec351, %middle.block364 ] ; 7 uses
  %.neg517 = or disjoint i64 %indvars.iv299.ph, 1
  br i1 %lcmp.mod507.not, label %.lr.ph269.prol.loopexit, label %.lr.ph269.prol

.lr.ph269.prol:                                   ; preds = %.lr.ph269.preheader492
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv299.ph ; 2 uses
  %i.ne = load float, ptr %i.nd, align 4
  %i.nf = xor i64 %indvars.iv299.ph, -1
  %i.ng = getelementptr [4 x i8], ptr %i.ml, i64 %i.nf
  %i.nh = load float, ptr %i.ng, align 4
  %i.ni = fmul float %i.ne, %i.nh
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv299.ph
  %i.nk = load float, ptr %i.nj, align 4
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv299.ph
  %i.nm = load float, ptr %i.nl, align 4
  %i.nn = fmul float %i.nk, %i.nm
  %i.no = fadd float %i.ni, %i.nn
  store float %i.no, ptr %i.nd, align 4
  %indvars.iv.next300.prol = or disjoint i64 %indvars.iv299.ph, 1
  br label %.lr.ph269.prol.loopexit

.lr.ph269.prol.loopexit:                          ; preds = %.lr.ph269.prol, %.lr.ph269.preheader492
  %indvars.iv299.unr = phi i64 [ %indvars.iv299.ph, %.lr.ph269.preheader492 ], [ %indvars.iv.next300.prol, %.lr.ph269.prol ]
  %i.np = icmp eq i64 %wide.trip.count283, %.neg517
  br i1 %i.np, label %.loopexit, label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.prol.loopexit, %.lr.ph269
  %indvars.iv299 = phi i64 [ %indvars.iv.next300.1, %.lr.ph269 ], [ %indvars.iv299.unr, %.lr.ph269.prol.loopexit ] ; 7 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv299 ; 2 uses
  %i.nr = load float, ptr %i.nq, align 4
  %i.ns = xor i64 %indvars.iv299, -1
  %i.nt = getelementptr [4 x i8], ptr %i.ml, i64 %i.ns
  %i.nu = load float, ptr %i.nt, align 4
  %i.nv = fmul float %i.nr, %i.nu
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv299
  %i.nx = load float, ptr %i.nw, align 4
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv299
  %i.nz = load float, ptr %i.ny, align 4
end_hunk_0
begin_hunk_1_@mdct_backward:bb.a
  %i.kl = load float, ptr %i.kk, align 4
  %i.km = getelementptr inbounds i8, ptr %.2174, i64 -12
  store float %i.kl, ptr %i.km, align 4
  %i.kn = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.ko = load float, ptr %i.kn, align 4
  %i.kp = getelementptr inbounds i8, ptr %.2174, i64 -8
  store float %i.ko, ptr %i.kp, align 4
  %i.kq = load float, ptr %.2, align 4
  %i.kr = getelementptr inbounds i8, ptr %.2174, i64 -4
  store float %i.kq, ptr %i.kr, align 4
  %i.ks = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.kt = icmp ugt ptr %i.kh, %i.g
  br i1 %i.kt, label %.preheader, label %bb.j, !llvm.loop !495

bb.j:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mdct_butterflies(i32 %.4.val, ptr nofree readonly captures(none) %.8.val, ptr nofree noundef %0, i32 noundef range(i32 -1073741824, 1073741824) %1) unnamed_addr #53 {
bb.a:
  %i.a = icmp sgt i32 %.4.val, 6
  br i1 %i.a, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.d = ashr i32 %1, 1
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.081.i = phi ptr [ %i.g, %bb.b ], [ %i.da, %bb.c ] ; 10 uses
  %.pn.i = phi ptr [ %i.c, %bb.b ], [ %.080.i, %bb.c ] ; 8 uses
  %.0.i = phi ptr [ %.8.val, %bb.b ], [ %i.db, %bb.c ] ; 10 uses
  %.080.i = getelementptr inbounds i8, ptr %.pn.i, i64 -32 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.i = load float, ptr %i.h, align 4            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.081.i, i64 24 ; 2 uses
  %i.k = load float, ptr %i.j, align 4            ; 2 uses
  %i.l = fsub float %i.i, %i.k                    ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 2 uses
  %i.n = load float, ptr %i.m, align 4            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.081.i, i64 28 ; 3 uses
  %i.p = load float, ptr %i.o, align 4
  %i.q = fsub float %i.n, %i.p                    ; 2 uses
  %i.r = fadd float %i.i, %i.k
  store float %i.r, ptr %i.h, align 4
  %i.s = load float, ptr %i.o, align 4
  %i.t = fadd float %i.n, %i.s
  store float %i.t, ptr %i.m, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.v = load float, ptr %i.u, align 4
  %i.w = fmul float %i.q, %i.v
  %i.x = load float, ptr %.0.i, align 4
  %i.y = fmul float %i.l, %i.x
  %i.z = fadd float %i.w, %i.y
  store float %i.z, ptr %i.j, align 4
  %i.aa = load float, ptr %.0.i, align 4
  %i.ab = fmul float %i.q, %i.aa
  %i.ac = load float, ptr %i.u, align 4
  %i.ad = fmul float %i.l, %i.ac
  %i.ae = fsub float %i.ab, %i.ad
  store float %i.ae, ptr %i.o, align 4
  %i.af = getelementptr inbounds i8, ptr %.pn.i, i64 -16 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.081.i, i64 16 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4          ; 2 uses
  %i.aj = fsub float %i.ag, %i.ai                 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.pn.i, i64 -12 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.081.i, i64 20 ; 3 uses
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fsub float %i.al, %i.an                 ; 2 uses
  %i.ap = fadd float %i.ag, %i.ai
  store float %i.ap, ptr %i.af, align 4
  %i.aq = load float, ptr %i.am, align 4
  %i.ar = fadd float %i.al, %i.aq
  store float %i.ar, ptr %i.ak, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 20 ; 2 uses
  %i.at = load float, ptr %i.as, align 4
  %i.au = fmul float %i.ao, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = fmul float %i.aj, %i.aw
  %i.ay = fadd float %i.au, %i.ax
  store float %i.ay, ptr %i.ah, align 4
  %i.az = load float, ptr %i.av, align 4
  %i.ba = fmul float %i.ao, %i.az
  %i.bb = load float, ptr %i.as, align 4
  %i.bc = fmul float %i.aj, %i.bb
  %i.bd = fsub float %i.ba, %i.bc
  store float %i.bd, ptr %i.am, align 4
  %i.be = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4          ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.081.i, i64 8 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4          ; 2 uses
  %i.bi = fsub float %i.bf, %i.bh                 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.pn.i, i64 -20 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.081.i, i64 12 ; 3 uses
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = fsub float %i.bk, %i.bm                 ; 2 uses
  %i.bo = fadd float %i.bf, %i.bh
  store float %i.bo, ptr %i.be, align 4
  %i.bp = load float, ptr %i.bl, align 4
  %i.bq = fadd float %i.bk, %i.bp
  store float %i.bq, ptr %i.bj, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i, i64 36 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = fmul float %i.bn, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = fmul float %i.bi, %i.bv
  %i.bx = fadd float %i.bt, %i.bw
  store float %i.bx, ptr %i.bg, align 4
  %i.by = load float, ptr %i.bu, align 4
  %i.bz = fmul float %i.bn, %i.by
  %i.ca = load float, ptr %i.br, align 4
  %i.cb = fmul float %i.bi, %i.ca
  %i.cc = fsub float %i.bz, %i.cb
  store float %i.cc, ptr %i.bl, align 4
  %i.cd = load float, ptr %.080.i, align 4        ; 2 uses
  %i.ce = load float, ptr %.081.i, align 4        ; 2 uses
  %i.cf = fsub float %i.cd, %i.ce                 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.pn.i, i64 -28 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4          ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.081.i, i64 4 ; 3 uses
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = fsub float %i.ch, %i.cj                 ; 2 uses
  %i.cl = fadd float %i.cd, %i.ce
  store float %i.cl, ptr %.080.i, align 4
  %i.cm = load float, ptr %i.ci, align 4
  %i.cn = fadd float %i.ch, %i.cm
  store float %i.cn, ptr %i.cg, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i, i64 52 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4
  %i.cq = fmul float %i.ck, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4
  %i.ct = fmul float %i.cf, %i.cs
  %i.cu = fadd float %i.cq, %i.ct
  store float %i.cu, ptr %.081.i, align 4
  %i.cv = load float, ptr %i.cr, align 4
  %i.cw = fmul float %i.ck, %i.cv
  %i.cx = load float, ptr %i.co, align 4
  %i.cy = fmul float %i.cf, %i.cx
  %i.cz = fsub float %i.cw, %i.cy
  store float %i.cz, ptr %i.ci, align 4
  %i.da = getelementptr inbounds i8, ptr %.081.i, i64 -32 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %.not.i = icmp ult ptr %i.da, %0
  br i1 %.not.i, label %mdct_butterfly_first.exit, label %bb.c, !llvm.loop !496

mdct_butterfly_first.exit:                        ; preds = %bb.c
  %.not13 = icmp eq i32 %.4.val, 7
  br i1 %.not13, label %.preheader, label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %mdct_butterfly_first.exit
  %i.dc = add nsw i32 %.4.val, -7
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %._crit_edge
  %.0233 = phi i32 [ %i.agl, %._crit_edge ], [ 1, %.preheader1.preheader ] ; 6 uses
  %.not = icmp eq i32 %.0233, 31
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.dd = shl nuw i32 1, %.0233
  %i.de = ashr i32 %1, %.0233                     ; 2 uses
  %i.df = shl i32 4, %.0233
  %i.dg = sext i32 %i.de to i64                   ; 2 uses
  %i.dh = ashr i32 %i.de, 1
  %i.di = sext i32 %i.dh to i64
  %i.dj = sext i32 %i.df to i64                   ; 4 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.d

.preheader:                                       ; preds = %._crit_edge, %bb.a, %mdct_butterfly_first.exit
  %i.dk = icmp sgt i32 %1, 0
  br i1 %i.dk, label %.lr.ph5.preheader, label %._crit_edge6

.lr.ph5.preheader:                                ; preds = %.preheader
  %i.dl = zext nneg i32 %1 to i64                 ; 2 uses
  %i.dm = add nsw i64 %i.dl, -1
  %i.dn = lshr i64 %i.dm, 5
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %1, 97
  br i1 %min.iters.check, label %.lr.ph5.preheader60, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph5.preheader
  %n.vec = and i64 %i.do, 1152921504606846972     ; 3 uses
  %i.dp = shl i64 %n.vec, 5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl nuw i64 %index, 5                   ; 4 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dq ; 33 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dq ; 32 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 128 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dq ; 32 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 256 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dq ; 32 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 384 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 120 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 248 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 376 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 504 ; 2 uses
  %i.ec = load float, ptr %i.dy, align 4
  %i.ed = load float, ptr %i.dz, align 4
  %i.ee = load float, ptr %i.ea, align 4
  %i.ef = load float, ptr %i.eb, align 4
  %i.eg = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.ed, i64 1
  %i.ei = insertelement <4 x float> %i.eh, float %i.ee, i64 2
  %i.ej = insertelement <4 x float> %i.ei, float %i.ef, i64 3 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 56 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 184 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 312 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 440 ; 2 uses
  %i.eo = load float, ptr %i.ek, align 4
  %i.ep = load float, ptr %i.el, align 4
  %i.eq = load float, ptr %i.em, align 4
  %i.er = load float, ptr %i.en, align 4
  %i.es = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.et = insertelement <4 x float> %i.es, float %i.ep, i64 1
  %i.eu = insertelement <4 x float> %i.et, float %i.eq, i64 2
  %i.ev = insertelement <4 x float> %i.eu, float %i.er, i64 3 ; 2 uses
  %i.ew = fsub <4 x float> %i.ej, %i.ev           ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dr, i64 124 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ds, i64 252
  %i.ez = getelementptr inbounds nuw i8, ptr %i.du, i64 380
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dw, i64 508
  %i.fb = load float, ptr %i.ex, align 4
  %i.fc = load float, ptr %i.ey, align 4
  %i.fd = load float, ptr %i.ez, align 4
  %i.fe = load float, ptr %i.fa, align 4
  %i.ff = insertelement <4 x float> poison, float %i.fb, i64 0
  %i.fg = insertelement <4 x float> %i.ff, float %i.fc, i64 1
  %i.fh = insertelement <4 x float> %i.fg, float %i.fd, i64 2
  %i.fi = insertelement <4 x float> %i.fh, float %i.fe, i64 3 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dr, i64 60 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ds, i64 188
  %i.fl = getelementptr inbounds nuw i8, ptr %i.du, i64 316
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dw, i64 444
  %i.fn = load float, ptr %i.fj, align 4
  %i.fo = load float, ptr %i.fk, align 4
  %i.fp = load float, ptr %i.fl, align 4
  %i.fq = load float, ptr %i.fm, align 4
  %i.fr = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.fs = insertelement <4 x float> %i.fr, float %i.fo, i64 1
  %i.ft = insertelement <4 x float> %i.fs, float %i.fp, i64 2
  %i.fu = insertelement <4 x float> %i.ft, float %i.fq, i64 3 ; 2 uses
  %i.fv = fsub <4 x float> %i.fi, %i.fu           ; 2 uses
  %i.fw = fadd <4 x float> %i.ej, %i.ev           ; 2 uses
  %i.fx = fadd <4 x float> %i.fi, %i.fu           ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dr, i64 112 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ds, i64 240 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.du, i64 368 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dw, i64 496 ; 2 uses
  %i.gc = load float, ptr %i.fy, align 4
  %i.gd = load float, ptr %i.fz, align 4
  %i.ge = load float, ptr %i.ga, align 4
  %i.gf = load float, ptr %i.gb, align 4
  %i.gg = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.gh = insertelement <4 x float> %i.gg, float %i.gd, i64 1
  %i.gi = insertelement <4 x float> %i.gh, float %i.ge, i64 2
  %i.gj = insertelement <4 x float> %i.gi, float %i.gf, i64 3 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dr, i64 48 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ds, i64 176 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.du, i64 304 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dw, i64 432 ; 2 uses
  %i.go = load float, ptr %i.gk, align 4
  %i.gp = load float, ptr %i.gl, align 4
  %i.gq = load float, ptr %i.gm, align 4
  %i.gr = load float, ptr %i.gn, align 4
  %i.gs = insertelement <4 x float> poison, float %i.go, i64 0
  %i.gt = insertelement <4 x float> %i.gs, float %i.gp, i64 1
  %i.gu = insertelement <4 x float> %i.gt, float %i.gq, i64 2
  %i.gv = insertelement <4 x float> %i.gu, float %i.gr, i64 3 ; 2 uses
  %i.gw = fsub <4 x float> %i.gj, %i.gv           ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dr, i64 116 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ds, i64 244
  %i.gz = getelementptr inbounds nuw i8, ptr %i.du, i64 372
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dw, i64 500
  %i.hb = load float, ptr %i.gx, align 4
  %i.hc = load float, ptr %i.gy, align 4
  %i.hd = load float, ptr %i.gz, align 4
  %i.he = load float, ptr %i.ha, align 4
  %i.hf = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.hg = insertelement <4 x float> %i.hf, float %i.hc, i64 1
  %i.hh = insertelement <4 x float> %i.hg, float %i.hd, i64 2
  %i.hi = insertelement <4 x float> %i.hh, float %i.he, i64 3 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dr, i64 52 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ds, i64 180
  %i.hl = getelementptr inbounds nuw i8, ptr %i.du, i64 308
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dw, i64 436
  %i.hn = load float, ptr %i.hj, align 4
  %i.ho = load float, ptr %i.hk, align 4
  %i.hp = load float, ptr %i.hl, align 4
  %i.hq = load float, ptr %i.hm, align 4
  %i.hr = insertelement <4 x float> poison, float %i.hn, i64 0
  %i.hs = insertelement <4 x float> %i.hr, float %i.ho, i64 1
  %i.ht = insertelement <4 x float> %i.hs, float %i.hp, i64 2
  %i.hu = insertelement <4 x float> %i.ht, float %i.hq, i64 3 ; 2 uses
  %i.hv = fsub <4 x float> %i.hi, %i.hu           ; 2 uses
  %i.hw = fadd <4 x float> %i.gj, %i.gv           ; 2 uses
  %i.hx = fadd <4 x float> %i.hi, %i.hu           ; 2 uses
  %i.hy = fmul <4 x float> %i.gw, splat (float f0x3F6C835E)
  %i.hz = fmul <4 x float> %i.hv, splat (float f0x3EC3EF15)
  %i.ia = fsub <4 x float> %i.hy, %i.hz           ; 2 uses
  %i.ib = fmul <4 x float> %i.gw, splat (float f0x3EC3EF15)
  %i.ic = fmul <4 x float> %i.hv, splat (float f0x3F6C835E)
  %i.id = fadd <4 x float> %i.ib, %i.ic           ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dr, i64 104 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 232 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.du, i64 360 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.dw, i64 488 ; 2 uses
  %i.ii = load float, ptr %i.ie, align 4
  %i.ij = load float, ptr %i.if, align 4
  %i.ik = load float, ptr %i.ig, align 4
  %i.il = load float, ptr %i.ih, align 4
  %i.im = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.in = insertelement <4 x float> %i.im, float %i.ij, i64 1
  %i.io = insertelement <4 x float> %i.in, float %i.ik, i64 2
  %i.ip = insertelement <4 x float> %i.io, float %i.il, i64 3 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dr, i64 40 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ds, i64 168 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.du, i64 296 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.dw, i64 424 ; 2 uses
  %i.iu = load float, ptr %i.iq, align 4
  %i.iv = load float, ptr %i.ir, align 4
  %i.iw = load float, ptr %i.is, align 4
  %i.ix = load float, ptr %i.it, align 4
  %i.iy = insertelement <4 x float> poison, float %i.iu, i64 0
  %i.iz = insertelement <4 x float> %i.iy, float %i.iv, i64 1
  %i.ja = insertelement <4 x float> %i.iz, float %i.iw, i64 2
  %i.jb = insertelement <4 x float> %i.ja, float %i.ix, i64 3 ; 2 uses
  %i.jc = fsub <4 x float> %i.ip, %i.jb           ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dr, i64 108 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ds, i64 236
  %i.jf = getelementptr inbounds nuw i8, ptr %i.du, i64 364
  %i.jg = getelementptr inbounds nuw i8, ptr %i.dw, i64 492
  %i.jh = load float, ptr %i.jd, align 4
  %i.ji = load float, ptr %i.je, align 4
  %i.jj = load float, ptr %i.jf, align 4
  %i.jk = load float, ptr %i.jg, align 4
  %i.jl = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jm = insertelement <4 x float> %i.jl, float %i.ji, i64 1
  %i.jn = insertelement <4 x float> %i.jm, float %i.jj, i64 2
  %i.jo = insertelement <4 x float> %i.jn, float %i.jk, i64 3 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.dr, i64 44 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ds, i64 172
  %i.jr = getelementptr inbounds nuw i8, ptr %i.du, i64 300
  %i.js = getelementptr inbounds nuw i8, ptr %i.dw, i64 428
  %i.jt = load float, ptr %i.jp, align 4
  %i.ju = load float, ptr %i.jq, align 4
  %i.jv = load float, ptr %i.jr, align 4
  %i.jw = load float, ptr %i.js, align 4
  %i.jx = insertelement <4 x float> poison, float %i.jt, i64 0
  %i.jy = insertelement <4 x float> %i.jx, float %i.ju, i64 1
  %i.jz = insertelement <4 x float> %i.jy, float %i.jv, i64 2
  %i.ka = insertelement <4 x float> %i.jz, float %i.jw, i64 3 ; 2 uses
  %i.kb = fsub <4 x float> %i.jo, %i.ka           ; 2 uses
  %i.kc = fadd <4 x float> %i.ip, %i.jb           ; 2 uses
  %i.kd = fadd <4 x float> %i.jo, %i.ka           ; 2 uses
  %i.ke = fsub <4 x float> %i.jc, %i.kb
  %i.kf = fmul <4 x float> %i.ke, splat (float f0x3F3504F3) ; 2 uses
  %i.kg = fadd <4 x float> %i.jc, %i.kb
  %i.kh = fmul <4 x float> %i.kg, splat (float f0x3F3504F3) ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.dr, i64 96 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ds, i64 224 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.du, i64 352 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.dw, i64 480 ; 2 uses
  %i.km = load float, ptr %i.ki, align 4
  %i.kn = load float, ptr %i.kj, align 4
  %i.ko = load float, ptr %i.kk, align 4
  %i.kp = load float, ptr %i.kl, align 4
  %i.kq = insertelement <4 x float> poison, float %i.km, i64 0
  %i.kr = insertelement <4 x float> %i.kq, float %i.kn, i64 1
  %i.ks = insertelement <4 x float> %i.kr, float %i.ko, i64 2
  %i.kt = insertelement <4 x float> %i.ks, float %i.kp, i64 3 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.dr, i64 32 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ds, i64 160 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.du, i64 288 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dw, i64 416 ; 2 uses
  %i.ky = load float, ptr %i.ku, align 4
  %i.kz = load float, ptr %i.kv, align 4
  %i.la = load float, ptr %i.kw, align 4
  %i.lb = load float, ptr %i.kx, align 4
  %i.lc = insertelement <4 x float> poison, float %i.ky, i64 0
  %i.ld = insertelement <4 x float> %i.lc, float %i.kz, i64 1
  %i.le = insertelement <4 x float> %i.ld, float %i.la, i64 2
  %i.lf = insertelement <4 x float> %i.le, float %i.lb, i64 3 ; 2 uses
  %i.lg = fsub <4 x float> %i.kt, %i.lf           ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.dr, i64 100 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.ds, i64 228
end_hunk_1
begin_hunk_2_@mdct_butterflies:bb.a
  %shift49 = shufflevector <2 x float> %i.ane, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop50 = fsub <2 x float> %shift49, %foldExtExtBinop45 ; 2 uses
  %i.ann = fadd float %i.anm, %i.amw
  store float %i.ann, ptr %i.ahn, align 4
  %i.ano = fsub float %i.anm, %i.amw
  store float %i.ano, ptr %i.ahk, align 4
  %i.anp = insertelement <2 x float> poison, float %i.ank, i64 0
  %i.anq = shufflevector <2 x float> %i.ane, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.anr = shufflevector <2 x float> %i.anp, <2 x float> %foldExtExtBinop45, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ans = fadd <4 x float> %i.anq, %i.anr        ; 2 uses
  %foldExtExtBinop52 = fadd <2 x float> %foldExtExtBinop50, %foldExtExtBinop31
  %i.ant = extractelement <2 x float> %foldExtExtBinop52, i64 0
  store float %i.ant, ptr %i.ahm, align 4
  %foldExtExtBinop54 = fsub <2 x float> %foldExtExtBinop50, %foldExtExtBinop31
  %i.anu = extractelement <2 x float> %foldExtExtBinop54, i64 0
  store float %i.anu, ptr %i.ahp, align 4
  %i.anv = fsub <4 x float> %i.ans, %i.amy
  %i.anw = fadd <4 x float> %i.ans, %i.amy
  %i.anx = shufflevector <4 x float> %i.anv, <4 x float> %i.anw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.anx, ptr %i.ahg, align 4
  %i.any = shufflevector <2 x float> %foldExtExtBinop43, <2 x float> %foldExtExtBinop41, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.anz = fsub <2 x float> %i.anc, %i.any        ; 3 uses
  %i.aoa = insertelement <2 x float> poison, float %i.anl, i64 0
  %i.aob = shufflevector <2 x float> %i.aoa, <2 x float> %foldExtExtBinop47, <2 x i32> <i32 0, i32 2>
  %i.aoc = fsub <2 x float> %i.anh, %i.aob        ; 3 uses
  %foldExtExtBinop56 = fadd <2 x float> %i.aoc, %i.anz
  %i.aod = extractelement <2 x float> %foldExtExtBinop56, i64 1
  store float %i.aod, ptr %i.agx, align 4
  %i.aoe = fadd <2 x float> %i.anc, %i.any
  %i.aof = shufflevector <2 x float> %i.aoe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aog = insertelement <2 x float> %foldExtExtBinop47, float %i.anl, i64 1
  %i.aoh = fadd <2 x float> %i.anf, %i.aog
  %i.aoi = shufflevector <2 x float> %i.aoh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %foldExtExtBinop58 = fadd <2 x float> %i.aoc, %i.anz
  %i.aoj = extractelement <2 x float> %foldExtExtBinop58, i64 0
  store float %i.aoj, ptr %i.agv, align 4
  %i.aok = fsub <2 x float> %i.aoc, %i.anz
  store <2 x float> %i.aok, ptr %i.agz, align 4
  %i.aol = fsub <4 x float> %i.aoi, %i.aof
  %i.aom = fadd <4 x float> %i.aoi, %i.aof
  %i.aon = shufflevector <4 x float> %i.aol, <4 x float> %i.aom, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.aon, ptr %i.agp, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 32 ; 2 uses
  %i.aoo = icmp samesign ult i64 %indvars.iv.next10, %i.dl
  br i1 %i.aoo, label %.lr.ph5, label %._crit_edge6, !llvm.loop !501

._crit_edge6:                                     ; preds = %.lr.ph5, %middle.block, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mdct_forward(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #25 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 4 uses
  %i.b = ashr i32 %i.a, 1                         ; 4 uses
  %i.c = ashr i32 %i.a, 2                         ; 3 uses
  %i.d = ashr i32 %i.a, 3                         ; 4 uses
  %i.e = sext i32 %i.a to i64                     ; 4 uses
  %i.f = shl nsw i64 %i.e, 2
  %i.g = alloca i8, i64 %i.f, align 16            ; 8 uses
  %i.h = sext i32 %i.b to i64                     ; 10 uses
  %i.i = getelementptr [4 x i8], ptr %i.g, i64 %i.h ; 15 uses
  %i.j = getelementptr [4 x i8], ptr %1, i64 %i.h
  %i.k = sext i32 %i.c to i64                     ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %i.j, i64 %i.k ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = getelementptr [4 x i8], ptr %i.n, i64 %i.h ; 7 uses
  %i.p = icmp sgt i32 %i.d, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.l, i64 4        ; 8 uses
  %i.r = zext nneg i32 %i.d to i64                ; 3 uses
  %i.s = add nsw i64 %i.r, -1
  %i.t = lshr i64 %i.s, 1
  %i.u = add nuw i64 %i.t, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 25
  br i1 %min.iters.check, label %.lr.ph.preheader308, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.v = add nsw i64 %i.r, -1
  %i.w = lshr i64 %i.v, 1                         ; 2 uses
  %i.x = shl i64 %i.w, 3                          ; 2 uses
  %i.y = shl nsw i64 %i.h, 2                      ; 4 uses
  %i.z = getelementptr i8, ptr %i.g, i64 %i.x
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.aa, i64 8   ; 3 uses
  %i.ab = shl i64 %i.w, 4                         ; 2 uses
  %i.ac = shl nsw i64 %i.k, 2                     ; 2 uses
  %i.ad = getelementptr i8, ptr %1, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ac
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.y
  %scevgep178 = getelementptr i8, ptr %i.af, i64 16
  %i.ag = add nsw i64 %i.ac, %i.y                 ; 2 uses
  %i.ah = add nsw i64 %i.ag, -16
  %i.ai = sub i64 %i.ah, %i.ab
  %scevgep179 = getelementptr i8, ptr %1, i64 %i.ai
  %i.aj = getelementptr i8, ptr %1, i64 %i.ag
  %scevgep180 = getelementptr i8, ptr %i.aj, i64 -4
  %i.ak = add nsw i64 %i.y, -8
  %i.al = sub i64 %i.ak, %i.x
  %scevgep181 = getelementptr i8, ptr %i.n, i64 %i.al
  %bound0 = icmp ult ptr %i.i, %scevgep178
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0182 = icmp ult ptr %i.i, %scevgep180
  %bound1183 = icmp ult ptr %scevgep179, %scevgep
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx = or i1 %found.conflict, %found.conflict184
  %bound0185 = icmp ult ptr %i.i, %i.o
  %bound1186 = icmp ult ptr %scevgep181, %scevgep
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx, %found.conflict187
  br i1 %conflict.rdx188, label %.lr.ph.preheader308, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.u, 3                     ; 2 uses
  %i.am = icmp eq i64 %n.mod.vf, 0
  %i.an = select i1 %i.am, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.u, %i.an                    ; 5 uses
  %i.ao = shl i64 %n.vec, 1
  %i.ap = mul i64 %n.vec, -8
  %i.aq = getelementptr i8, ptr %i.o, i64 %i.ap
  %i.ar = shl i64 %n.vec, 4
  %i.as = getelementptr i8, ptr %i.q, i64 %i.ar
  %i.at = mul i64 %n.vec, -16
  %i.au = getelementptr i8, ptr %i.l, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.av = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.av
  %i.aw = shl i64 %index, 4                       ; 4 uses
  %next.gep189 = getelementptr i8, ptr %i.q, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %i.q, i64 %i.aw   ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.ax, i64 16
  %i.ay = getelementptr i8, ptr %i.q, i64 %i.aw   ; 2 uses
  %next.gep191 = getelementptr i8, ptr %i.ay, i64 32
  %i.az = getelementptr i8, ptr %i.q, i64 %i.aw   ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.az, i64 48
  %i.ba = mul i64 %index, -16                     ; 4 uses
  %next.gep193 = getelementptr i8, ptr %i.l, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %i.l, i64 %i.ba   ; 2 uses
  %i.bc = getelementptr i8, ptr %i.l, i64 %i.ba   ; 2 uses
  %i.bd = getelementptr i8, ptr %i.l, i64 %i.ba   ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %next.gep193, i64 -16
  %i.bf = getelementptr i8, ptr %i.bb, i64 -32
  %i.bg = getelementptr i8, ptr %i.bc, i64 -48
  %i.bh = getelementptr i8, ptr %i.bd, i64 -64
  %i.bi = getelementptr inbounds i8, ptr %next.gep193, i64 -8
  %i.bj = getelementptr i8, ptr %i.bb, i64 -24
  %i.bk = getelementptr i8, ptr %i.bc, i64 -40
  %i.bl = getelementptr i8, ptr %i.bd, i64 -56
  %i.bm = load float, ptr %i.bi, align 4, !alias.scope !502
  %i.bn = load float, ptr %i.bj, align 4, !alias.scope !502
  %i.bo = load float, ptr %i.bk, align 4, !alias.scope !502
  %i.bp = load float, ptr %i.bl, align 4, !alias.scope !502
  %i.bq = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 2
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 3
  %i.bu = load float, ptr %next.gep189, align 4, !alias.scope !505
  %i.bv = load float, ptr %next.gep190, align 4, !alias.scope !505
  %i.bw = load float, ptr %next.gep191, align 4, !alias.scope !505
  %i.bx = load float, ptr %next.gep192, align 4, !alias.scope !505
  %i.by = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 1
  %i.ca = insertelement <4 x float> %i.bz, float %i.bw, i64 2
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 3
  %i.cc = fadd <4 x float> %i.bt, %i.cb           ; 2 uses
  %i.cd = load float, ptr %i.be, align 4, !alias.scope !502
  %i.ce = load float, ptr %i.bf, align 4, !alias.scope !502
  %i.cf = load float, ptr %i.bg, align 4, !alias.scope !502
  %i.cg = load float, ptr %i.bh, align 4, !alias.scope !502
  %i.ch = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 2
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 3
  %i.cl = getelementptr inbounds nuw i8, ptr %next.gep189, i64 8
  %i.cm = getelementptr i8, ptr %i.ax, i64 24
  %i.cn = getelementptr i8, ptr %i.ay, i64 40
  %i.co = getelementptr i8, ptr %i.az, i64 56
  %i.cp = load float, ptr %i.cl, align 4, !alias.scope !505
  %i.cq = load float, ptr %i.cm, align 4, !alias.scope !505
  %i.cr = load float, ptr %i.cn, align 4, !alias.scope !505
  %i.cs = load float, ptr %i.co, align 4, !alias.scope !505
  %i.ct = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 1
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 2
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 3
  %i.cx = fadd <4 x float> %i.ck, %i.cw           ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.vec = load <8 x float>, ptr %i.cy, align 4, !alias.scope !507 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %reverse198 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.cz = fmul <4 x float> %i.cx, %reverse198
  %i.da = fmul <4 x float> %i.cc, %reverse
  %i.db = fadd <4 x float> %i.cz, %i.da
  %.idx = shl nuw i64 %index, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.dd = fmul <4 x float> %i.cx, %reverse
  %i.de = fmul <4 x float> %i.cc, %reverse198
  %i.df = fsub <4 x float> %i.dd, %i.de
  %interleaved.vec = shufflevector <4 x float> %i.db, <4 x float> %i.df, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.dc, align 4, !alias.scope !509, !noalias !511
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %.lr.ph.preheader308, label %vector.body, !llvm.loop !512

.lr.ph.preheader308:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ao, %vector.body ]
  %.0111128.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.preheader ], [ %i.aq, %vector.body ]
  %.0115127.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.preheader ], [ %i.as, %vector.body ]
  %.0118126.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader ], [ %i.au, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader308, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader308 ] ; 2 uses
  %.0111128 = phi ptr [ %i.di, %.lr.ph ], [ %.0111128.ph, %.lr.ph.preheader308 ]
  %.0115127 = phi ptr [ %i.ed, %.lr.ph ], [ %.0115127.ph, %.lr.ph.preheader308 ] ; 3 uses
  %.0118126 = phi ptr [ %i.dh, %.lr.ph ], [ %.0118126.ph, %.lr.ph.preheader308 ] ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %.0118126, i64 -16 ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %.0111128, i64 -8 ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %.0118126, i64 -8
  %i.dk = load float, ptr %i.dj, align 4
  %i.dl = load float, ptr %.0115127, align 4
  %i.dm = fadd float %i.dk, %i.dl
  %i.dn = load float, ptr %i.dh, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %.0115127, i64 8
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = fadd float %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ds = load <2 x float>, ptr %i.di, align 4    ; 2 uses
  %i.dt = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = fmul <2 x float> %i.du, %i.dv           ; 2 uses
  %i.dx = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dy, %i.ds           ; 2 uses
  %i.ea = fadd <2 x float> %i.dw, %i.dz
  %i.eb = fsub <2 x float> %i.dw, %i.dz
  %i.ec = shufflevector <2 x float> %i.ea, <2 x float> %i.eb, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ec, ptr %i.dr, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %.0115127, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ee = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.ee, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !513

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ef = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0118.lcssa = phi ptr [ %i.l, %bb.a ], [ %i.dh, %._crit_edge.loopexit ] ; 9 uses
  %.0111.lcssa = phi ptr [ %i.o, %bb.a ], [ %i.di, %._crit_edge.loopexit ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ef, %._crit_edge.loopexit ] ; 3 uses
  %i.eg = getelementptr i8, ptr %1, i64 4         ; 9 uses
  %i.eh = sub nsw i32 %i.b, %i.d                  ; 2 uses
  %i.ei = icmp slt i32 %.0.lcssa, %i.eh
  br i1 %i.ei, label %.lr.ph137.preheader, label %._crit_edge138

.lr.ph137.preheader:                              ; preds = %._crit_edge
  %i.ej = zext i32 %.0.lcssa to i64               ; 9 uses
  %i.ek = zext i32 %i.eh to i64                   ; 3 uses
  %i.el = add nuw nsw i64 %i.ej, 2
  %i.em = call i64 @llvm.umax.i64(i64 %i.el, i64 %i.ek)
  %i.en = xor i64 %i.ej, -1
  %i.eo = add nsw i64 %i.em, %i.en                ; 2 uses
  %i.ep = lshr i64 %i.eo, 1
  %i.eq = add nuw i64 %i.ep, 1                    ; 2 uses
  %min.iters.check221 = icmp ult i64 %i.eo, 24
  br i1 %min.iters.check221, label %.lr.ph137.preheader306, label %vector.memcheck202

vector.memcheck202:                               ; preds = %.lr.ph137.preheader
  %i.er = shl nsw i64 %i.h, 2                     ; 2 uses
  %i.es = shl nuw nsw i64 %i.ej, 2                ; 2 uses
  %i.et = getelementptr i8, ptr %i.g, i64 %i.er
  %scevgep203 = getelementptr i8, ptr %i.et, i64 %i.es ; 3 uses
  %i.eu = add nuw nsw i64 %i.ej, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.ek)
  %i.ev = xor i64 %i.ej, -1
  %i.ew = add nsw i64 %umax, %i.ev
  %i.ex = lshr i64 %i.ew, 1                       ; 2 uses
  %i.ey = shl i64 %i.ex, 3                        ; 2 uses
  %i.ez = getelementptr i8, ptr %i.g, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.er
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.es
  %scevgep204 = getelementptr i8, ptr %i.fb, i64 8 ; 3 uses
  %i.fc = shl i64 %i.ex, 4                        ; 2 uses
  %i.fd = getelementptr i8, ptr %1, i64 %i.fc
  %scevgep205 = getelementptr i8, ptr %i.fd, i64 16
  %i.fe = sub nuw nsw i64 -16, %i.fc
  %scevgep206 = getelementptr i8, ptr %.0118.lcssa, i64 %i.fe
  %scevgep207 = getelementptr i8, ptr %.0118.lcssa, i64 -4
  %i.ff = sub nuw nsw i64 -8, %i.ey
  %scevgep208 = getelementptr i8, ptr %.0111.lcssa, i64 %i.ff
  %bound0209 = icmp ult ptr %scevgep203, %scevgep205
  %bound1210 = icmp ult ptr %i.eg, %scevgep204
  %found.conflict211 = and i1 %bound0209, %bound1210
  %bound0212 = icmp ult ptr %scevgep203, %scevgep207
  %bound1213 = icmp ult ptr %scevgep206, %scevgep204
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %found.conflict211, %found.conflict214
  %bound0216 = icmp ult ptr %scevgep203, %.0111.lcssa
  %bound1217 = icmp ult ptr %scevgep208, %scevgep204
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %conflict.rdx215, %found.conflict218
  br i1 %conflict.rdx219, label %.lr.ph137.preheader306, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck202
  %n.mod.vf223 = and i64 %i.eq, 3                 ; 2 uses
  %i.fg = icmp eq i64 %n.mod.vf223, 0
  %i.fh = select i1 %i.fg, i64 4, i64 %n.mod.vf223
  %n.vec224 = sub i64 %i.eq, %i.fh                ; 5 uses
  %i.fi = shl i64 %n.vec224, 1
  %i.fj = add i64 %i.fi, %i.ej
  %i.fk = mul i64 %n.vec224, -8
  %i.fl = getelementptr i8, ptr %.0111.lcssa, i64 %i.fk
  %i.fm = shl i64 %n.vec224, 4
  %i.fn = getelementptr i8, ptr %i.eg, i64 %i.fm
  %i.fo = mul i64 %n.vec224, -16
  %i.fp = getelementptr i8, ptr %.0118.lcssa, i64 %i.fo
  %invariant.gep = getelementptr [4 x i8], ptr %i.i, i64 %i.ej
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph222
  %index226 = phi i64 [ 0, %vector.ph222 ], [ %index.next242, %vector.body225 ] ; 5 uses
  %i.fq = mul i64 %index226, -8
  %next.gep227 = getelementptr i8, ptr %.0111.lcssa, i64 %i.fq
  %i.fr = shl i64 %index226, 4                    ; 4 uses
  %next.gep228 = getelementptr i8, ptr %i.eg, i64 %i.fr ; 2 uses
  %i.fs = getelementptr i8, ptr %i.eg, i64 %i.fr  ; 2 uses
  %next.gep229 = getelementptr i8, ptr %i.fs, i64 16
  %i.ft = getelementptr i8, ptr %i.eg, i64 %i.fr  ; 2 uses
  %next.gep230 = getelementptr i8, ptr %i.ft, i64 32
  %i.fu = getelementptr i8, ptr %i.eg, i64 %i.fr  ; 2 uses
  %next.gep231 = getelementptr i8, ptr %i.fu, i64 48
  %i.fv = mul i64 %index226, -16                  ; 4 uses
  %next.gep232 = getelementptr i8, ptr %.0118.lcssa, i64 %i.fv ; 2 uses
  %i.fw = getelementptr i8, ptr %.0118.lcssa, i64 %i.fv ; 2 uses
  %i.fx = getelementptr i8, ptr %.0118.lcssa, i64 %i.fv ; 2 uses
  %i.fy = getelementptr i8, ptr %.0118.lcssa, i64 %i.fv ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %next.gep232, i64 -16
  %i.ga = getelementptr i8, ptr %i.fw, i64 -32
  %i.gb = getelementptr i8, ptr %i.fx, i64 -48
  %i.gc = getelementptr i8, ptr %i.fy, i64 -64
  %i.gd = getelementptr inbounds i8, ptr %next.gep232, i64 -8
  %i.ge = getelementptr i8, ptr %i.fw, i64 -24
  %i.gf = getelementptr i8, ptr %i.fx, i64 -40
  %i.gg = getelementptr i8, ptr %i.fy, i64 -56
  %i.gh = load float, ptr %i.gd, align 4, !alias.scope !514
  %i.gi = load float, ptr %i.ge, align 4, !alias.scope !514
  %i.gj = load float, ptr %i.gf, align 4, !alias.scope !514
  %i.gk = load float, ptr %i.gg, align 4, !alias.scope !514
  %i.gl = insertelement <4 x float> poison, float %i.gh, i64 0
  %i.gm = insertelement <4 x float> %i.gl, float %i.gi, i64 1
  %i.gn = insertelement <4 x float> %i.gm, float %i.gj, i64 2
  %i.go = insertelement <4 x float> %i.gn, float %i.gk, i64 3
  %i.gp = load float, ptr %next.gep228, align 4, !alias.scope !517
  %i.gq = load float, ptr %next.gep229, align 4, !alias.scope !517
  %i.gr = load float, ptr %next.gep230, align 4, !alias.scope !517
  %i.gs = load float, ptr %next.gep231, align 4, !alias.scope !517
  %i.gt = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gu = insertelement <4 x float> %i.gt, float %i.gq, i64 1
  %i.gv = insertelement <4 x float> %i.gu, float %i.gr, i64 2
  %i.gw = insertelement <4 x float> %i.gv, float %i.gs, i64 3
  %i.gx = fsub <4 x float> %i.go, %i.gw           ; 2 uses
  %i.gy = load float, ptr %i.fz, align 4, !alias.scope !514
  %i.gz = load float, ptr %i.ga, align 4, !alias.scope !514
  %i.ha = load float, ptr %i.gb, align 4, !alias.scope !514
  %i.hb = load float, ptr %i.gc, align 4, !alias.scope !514
  %i.hc = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.hd = insertelement <4 x float> %i.hc, float %i.gz, i64 1
  %i.he = insertelement <4 x float> %i.hd, float %i.ha, i64 2
  %i.hf = insertelement <4 x float> %i.he, float %i.hb, i64 3
  %i.hg = getelementptr inbounds nuw i8, ptr %next.gep228, i64 8
  %i.hh = getelementptr i8, ptr %i.fs, i64 24
  %i.hi = getelementptr i8, ptr %i.ft, i64 40
  %i.hj = getelementptr i8, ptr %i.fu, i64 56
  %i.hk = load float, ptr %i.hg, align 4, !alias.scope !517
  %i.hl = load float, ptr %i.hh, align 4, !alias.scope !517
  %i.hm = load float, ptr %i.hi, align 4, !alias.scope !517
  %i.hn = load float, ptr %i.hj, align 4, !alias.scope !517
  %i.ho = insertelement <4 x float> poison, float %i.hk, i64 0
  %i.hp = insertelement <4 x float> %i.ho, float %i.hl, i64 1
  %i.hq = insertelement <4 x float> %i.hp, float %i.hm, i64 2
  %i.hr = insertelement <4 x float> %i.hq, float %i.hn, i64 3
  %i.hs = fsub <4 x float> %i.hf, %i.hr           ; 2 uses
  %i.ht = getelementptr inbounds i8, ptr %next.gep227, i64 -32
  %wide.vec236 = load <8 x float>, ptr %i.ht, align 4, !alias.scope !519 ; 2 uses
  %reverse238 = shufflevector <8 x float> %wide.vec236, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %reverse240 = shufflevector <8 x float> %wide.vec236, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.hu = fmul <4 x float> %i.hs, %reverse240
  %i.hv = fmul <4 x float> %i.gx, %reverse238
  %i.hw = fadd <4 x float> %i.hu, %i.hv
  %.idx299 = shl nuw i64 %index226, 3
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx299
  %i.hx = fmul <4 x float> %i.hs, %reverse238
  %i.hy = fmul <4 x float> %i.gx, %reverse240
  %i.hz = fsub <4 x float> %i.hx, %i.hy
  %interleaved.vec241 = shufflevector <4 x float> %i.hw, <4 x float> %i.hz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec241, ptr %gep, align 4, !alias.scope !521, !noalias !523
  %index.next242 = add nuw i64 %index226, 4       ; 2 uses
  %i.ia = icmp eq i64 %index.next242, %n.vec224
  br i1 %i.ia, label %.lr.ph137.preheader306, label %vector.body225, !llvm.loop !524

.lr.ph137.preheader306:                           ; preds = %vector.body225, %vector.memcheck202, %.lr.ph137.preheader
  %indvars.iv161.ph = phi i64 [ %i.ej, %vector.memcheck202 ], [ %i.ej, %.lr.ph137.preheader ], [ %i.fj, %vector.body225 ]
  %.1112134.ph = phi ptr [ %.0111.lcssa, %vector.memcheck202 ], [ %.0111.lcssa, %.lr.ph137.preheader ], [ %i.fl, %vector.body225 ]
  %.1116133.ph = phi ptr [ %i.eg, %vector.memcheck202 ], [ %i.eg, %.lr.ph137.preheader ], [ %i.fn, %vector.body225 ]
  %.1119132.ph = phi ptr [ %.0118.lcssa, %vector.memcheck202 ], [ %.0118.lcssa, %.lr.ph137.preheader ], [ %i.fp, %vector.body225 ]
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader306, %.lr.ph137
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %.lr.ph137 ], [ %indvars.iv161.ph, %.lr.ph137.preheader306 ] ; 2 uses
  %.1112134 = phi ptr [ %i.ib, %.lr.ph137 ], [ %.1112134.ph, %.lr.ph137.preheader306 ]
  %.1116133 = phi ptr [ %i.ix, %.lr.ph137 ], [ %.1116133.ph, %.lr.ph137.preheader306 ] ; 3 uses
  %.1119132 = phi ptr [ %i.ic, %.lr.ph137 ], [ %.1119132.ph, %.lr.ph137.preheader306 ] ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %.1112134, i64 -8 ; 3 uses
  %i.ic = getelementptr inbounds i8, ptr %.1119132, i64 -16 ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %.1119132, i64 -8
  %i.ie = load float, ptr %i.id, align 4
  %i.if = load float, ptr %.1116133, align 4
  %i.ig = fsub float %i.ie, %i.if
  %i.ih = load float, ptr %i.ic, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %.1116133, i64 8
  %i.ij = load float, ptr %i.ii, align 4
  %i.ik = fsub float %i.ih, %i.ij
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv161
  %i.im = load <2 x float>, ptr %i.ib, align 4    ; 2 uses
  %i.in = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iq = fmul <2 x float> %i.io, %i.ip           ; 2 uses
  %i.ir = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fmul <2 x float> %i.is, %i.im           ; 2 uses
  %i.iu = fadd <2 x float> %i.iq, %i.it
  %i.iv = fsub <2 x float> %i.iq, %i.it
  %i.iw = shufflevector <2 x float> %i.iu, <2 x float> %i.iv, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.iw, ptr %i.il, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %.1116133, i64 16 ; 2 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 2 ; 3 uses
  %i.iy = icmp samesign ult i64 %indvars.iv.next162, %i.ek
  br i1 %i.iy, label %.lr.ph137, label %._crit_edge138.loopexit, !llvm.loop !525

._crit_edge138.loopexit:                          ; preds = %.lr.ph137
  %i.iz = trunc nuw nsw i64 %indvars.iv.next162 to i32
  br label %._crit_edge138

._crit_edge138:                                   ; preds = %._crit_edge138.loopexit, %._crit_edge
  %.1116.lcssa = phi ptr [ %i.eg, %._crit_edge ], [ %i.ix, %._crit_edge138.loopexit ] ; 9 uses
  %.1112.lcssa = phi ptr [ %.0111.lcssa, %._crit_edge ], [ %i.ib, %._crit_edge138.loopexit ] ; 6 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %._crit_edge ], [ %i.iz, %._crit_edge138.loopexit ] ; 2 uses
  %i.ja = icmp slt i32 %.1.lcssa, %i.b
  br i1 %i.ja, label %.lr.ph147.preheader, label %._crit_edge148

.lr.ph147.preheader:                              ; preds = %._crit_edge138
  %i.jb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.e ; 7 uses
  %i.jc = zext i32 %.1.lcssa to i64               ; 9 uses
  %i.jd = add nuw nsw i64 %i.jc, 2
  %i.je = call i64 @llvm.smax.i64(i64 %i.jd, i64 %i.h)
  %i.jf = xor i64 %i.jc, -1
  %i.jg = add nsw i64 %i.je, %i.jf                ; 2 uses
  %i.jh = lshr i64 %i.jg, 1
  %i.ji = add nuw i64 %i.jh, 1                    ; 2 uses
  %min.iters.check267 = icmp ult i64 %i.jg, 24
  br i1 %min.iters.check267, label %.lr.ph147.preheader305, label %vector.memcheck248

vector.memcheck248:                               ; preds = %.lr.ph147.preheader
  %i.jj = shl nsw i64 %i.h, 2                     ; 2 uses
  %i.jk = shl nuw nsw i64 %i.jc, 2                ; 2 uses
  %i.jl = getelementptr i8, ptr %i.g, i64 %i.jj
  %scevgep249 = getelementptr i8, ptr %i.jl, i64 %i.jk ; 3 uses
  %i.jm = add nuw nsw i64 %i.jc, 2
  %smax = call i64 @llvm.smax.i64(i64 %i.jm, i64 %i.h)
  %i.jn = xor i64 %i.jc, -1
  %i.jo = add nsw i64 %smax, %i.jn
  %i.jp = lshr i64 %i.jo, 1                       ; 2 uses
  %i.jq = shl i64 %i.jp, 3                        ; 2 uses
  %i.jr = getelementptr i8, ptr %i.g, i64 %i.jq
  %i.js = getelementptr i8, ptr %i.jr, i64 %i.jj
  %i.jt = getelementptr i8, ptr %i.js, i64 %i.jk
  %scevgep250 = getelementptr i8, ptr %i.jt, i64 8 ; 3 uses
  %i.ju = shl i64 %i.jp, 4                        ; 2 uses
  %i.jv = getelementptr i8, ptr %.1116.lcssa, i64 %i.ju
  %scevgep251 = getelementptr i8, ptr %i.jv, i64 12
  %i.jw = shl nsw i64 %i.e, 2                     ; 2 uses
  %i.jx = add nsw i64 %i.jw, -16
  %i.jy = sub i64 %i.jx, %i.ju
  %scevgep252 = getelementptr i8, ptr %1, i64 %i.jy
  %i.jz = getelementptr i8, ptr %1, i64 %i.jw
  %scevgep253 = getelementptr i8, ptr %i.jz, i64 -4
  %i.ka = sub nuw nsw i64 -8, %i.jq
  %scevgep254 = getelementptr i8, ptr %.1112.lcssa, i64 %i.ka
  %bound0255 = icmp ult ptr %scevgep249, %scevgep251
  %bound1256 = icmp ult ptr %.1116.lcssa, %scevgep250
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0258 = icmp ult ptr %scevgep249, %scevgep253
  %bound1259 = icmp ult ptr %scevgep252, %scevgep250
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %found.conflict257, %found.conflict260
  %bound0262 = icmp ult ptr %scevgep249, %.1112.lcssa
  %bound1263 = icmp ult ptr %scevgep254, %scevgep250
  %found.conflict264 = and i1 %bound0262, %bound1263
  %conflict.rdx265 = or i1 %conflict.rdx261, %found.conflict264
  br i1 %conflict.rdx265, label %.lr.ph147.preheader305, label %vector.ph268

vector.ph268:                                     ; preds = %vector.memcheck248
  %n.mod.vf269 = and i64 %i.ji, 3                 ; 2 uses
  %i.kb = icmp eq i64 %n.mod.vf269, 0
  %i.kc = select i1 %i.kb, i64 4, i64 %n.mod.vf269
  %n.vec270 = sub i64 %i.ji, %i.kc                ; 5 uses
  %i.kd = shl i64 %n.vec270, 1
  %i.ke = add i64 %i.kd, %i.jc
  %i.kf = mul i64 %n.vec270, -8
  %i.kg = getelementptr i8, ptr %.1112.lcssa, i64 %i.kf
  %i.kh = shl i64 %n.vec270, 4
  %i.ki = getelementptr i8, ptr %.1116.lcssa, i64 %i.kh
  %i.kj = mul i64 %n.vec270, -16
  %i.kk = getelementptr i8, ptr %i.jb, i64 %i.kj
  %invariant.gep314 = getelementptr [4 x i8], ptr %i.i, i64 %i.jc
  br label %vector.body271

vector.body271:                                   ; preds = %vector.body271, %vector.ph268
  %index272 = phi i64 [ 0, %vector.ph268 ], [ %index.next293, %vector.body271 ] ; 5 uses
  %i.kl = mul i64 %index272, -8
  %next.gep273 = getelementptr i8, ptr %.1112.lcssa, i64 %i.kl
  %i.km = shl i64 %index272, 4                    ; 4 uses
  %next.gep274 = getelementptr i8, ptr %.1116.lcssa, i64 %i.km ; 2 uses
  %i.kn = getelementptr i8, ptr %.1116.lcssa, i64 %i.km ; 2 uses
  %next.gep275 = getelementptr i8, ptr %i.kn, i64 16
  %i.ko = getelementptr i8, ptr %.1116.lcssa, i64 %i.km ; 2 uses
  %next.gep276 = getelementptr i8, ptr %i.ko, i64 32
  %i.kp = getelementptr i8, ptr %.1116.lcssa, i64 %i.km ; 2 uses
  %next.gep277 = getelementptr i8, ptr %i.kp, i64 48
  %i.kq = mul i64 %index272, -16                  ; 4 uses
  %next.gep278 = getelementptr i8, ptr %i.jb, i64 %i.kq ; 2 uses
  %i.kr = getelementptr i8, ptr %i.jb, i64 %i.kq  ; 2 uses
  %i.ks = getelementptr i8, ptr %i.jb, i64 %i.kq  ; 2 uses
  %i.kt = getelementptr i8, ptr %i.jb, i64 %i.kq  ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %next.gep278, i64 -16
  %i.kv = getelementptr i8, ptr %i.kr, i64 -32
  %i.kw = getelementptr i8, ptr %i.ks, i64 -48
  %i.kx = getelementptr i8, ptr %i.kt, i64 -64
  %i.ky = getelementptr inbounds i8, ptr %next.gep278, i64 -8
  %i.kz = getelementptr i8, ptr %i.kr, i64 -24
  %i.la = getelementptr i8, ptr %i.ks, i64 -40
  %i.lb = getelementptr i8, ptr %i.kt, i64 -56
  %i.lc = load float, ptr %i.ky, align 4, !alias.scope !526
  %i.ld = load float, ptr %i.kz, align 4, !alias.scope !526
  %i.le = load float, ptr %i.la, align 4, !alias.scope !526
  %i.lf = load float, ptr %i.lb, align 4, !alias.scope !526
  %i.lg = insertelement <4 x float> poison, float %i.lc, i64 0
  %i.lh = insertelement <4 x float> %i.lg, float %i.ld, i64 1
  %i.li = insertelement <4 x float> %i.lh, float %i.le, i64 2
  %i.lj = insertelement <4 x float> %i.li, float %i.lf, i64 3
  %i.lk = fneg <4 x float> %i.lj
  %i.ll = load float, ptr %next.gep274, align 4, !alias.scope !529
  %i.lm = load float, ptr %next.gep275, align 4, !alias.scope !529
  %i.ln = load float, ptr %next.gep276, align 4, !alias.scope !529
  %i.lo = load float, ptr %next.gep277, align 4, !alias.scope !529
  %i.lp = insertelement <4 x float> poison, float %i.ll, i64 0
  %i.lq = insertelement <4 x float> %i.lp, float %i.lm, i64 1
  %i.lr = insertelement <4 x float> %i.lq, float %i.ln, i64 2
  %i.ls = insertelement <4 x float> %i.lr, float %i.lo, i64 3
  %i.lt = fsub <4 x float> %i.lk, %i.ls           ; 2 uses
  %i.lu = load float, ptr %i.ku, align 4, !alias.scope !526
  %i.lv = load float, ptr %i.kv, align 4, !alias.scope !526
  %i.lw = load float, ptr %i.kw, align 4, !alias.scope !526
  %i.lx = load float, ptr %i.kx, align 4, !alias.scope !526
  %i.ly = insertelement <4 x float> poison, float %i.lu, i64 0
  %i.lz = insertelement <4 x float> %i.ly, float %i.lv, i64 1
  %i.ma = insertelement <4 x float> %i.lz, float %i.lw, i64 2
  %i.mb = insertelement <4 x float> %i.ma, float %i.lx, i64 3
  %i.mc = fneg <4 x float> %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %next.gep274, i64 8
  %i.me = getelementptr i8, ptr %i.kn, i64 24
  %i.mf = getelementptr i8, ptr %i.ko, i64 40
  %i.mg = getelementptr i8, ptr %i.kp, i64 56
  %i.mh = load float, ptr %i.md, align 4, !alias.scope !529
  %i.mi = load float, ptr %i.me, align 4, !alias.scope !529
  %i.mj = load float, ptr %i.mf, align 4, !alias.scope !529
  %i.mk = load float, ptr %i.mg, align 4, !alias.scope !529
  %i.ml = insertelement <4 x float> poison, float %i.mh, i64 0
  %i.mm = insertelement <4 x float> %i.ml, float %i.mi, i64 1
  %i.mn = insertelement <4 x float> %i.mm, float %i.mj, i64 2
  %i.mo = insertelement <4 x float> %i.mn, float %i.mk, i64 3
  %i.mp = fsub <4 x float> %i.mc, %i.mo           ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %next.gep273, i64 -32 ; 2 uses
  %wide.vec282 = load <8 x float>, ptr %i.mq, align 4, !alias.scope !531 ; 2 uses
  %reverse284 = shufflevector <8 x float> %wide.vec282, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse286 = shufflevector <8 x float> %wide.vec282, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.mr = fmul <4 x float> %i.mp, %reverse286
  %i.ms = fmul <4 x float> %i.lt, %reverse284
  %i.mt = fadd <4 x float> %i.mr, %i.ms
  %.idx300 = shl nuw i64 %index272, 3
  %gep315 = getelementptr i8, ptr %invariant.gep314, i64 %.idx300
  %wide.vec287 = load <8 x float>, ptr %i.mq, align 4, !alias.scope !531 ; 2 uses
  %reverse289 = shufflevector <8 x float> %wide.vec287, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse291 = shufflevector <8 x float> %wide.vec287, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.mu = fmul <4 x float> %i.mp, %reverse289
  %i.mv = fmul <4 x float> %i.lt, %reverse291
  %i.mw = fsub <4 x float> %i.mu, %i.mv
  %interleaved.vec292 = shufflevector <4 x float> %i.mt, <4 x float> %i.mw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec292, ptr %gep315, align 4, !alias.scope !533, !noalias !535
  %index.next293 = add nuw i64 %index272, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next293, %n.vec270
  br i1 %i.mx, label %.lr.ph147.preheader305, label %vector.body271, !llvm.loop !536

.lr.ph147.preheader305:                           ; preds = %vector.body271, %vector.memcheck248, %.lr.ph147.preheader
  %indvars.iv164.ph = phi i64 [ %i.jc, %vector.memcheck248 ], [ %i.jc, %.lr.ph147.preheader ], [ %i.ke, %vector.body271 ]
  %.2113144.ph = phi ptr [ %.1112.lcssa, %vector.memcheck248 ], [ %.1112.lcssa, %.lr.ph147.preheader ], [ %i.kg, %vector.body271 ]
  %.2117143.ph = phi ptr [ %.1116.lcssa, %vector.memcheck248 ], [ %.1116.lcssa, %.lr.ph147.preheader ], [ %i.ki, %vector.body271 ]
  %.2120142.ph = phi ptr [ %i.jb, %vector.memcheck248 ], [ %i.jb, %.lr.ph147.preheader ], [ %i.kk, %vector.body271 ]
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader305, %.lr.ph147
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %.lr.ph147 ], [ %indvars.iv164.ph, %.lr.ph147.preheader305 ] ; 2 uses
  %.2113144 = phi ptr [ %i.my, %.lr.ph147 ], [ %.2113144.ph, %.lr.ph147.preheader305 ] ; 2 uses
  %.2117143 = phi ptr [ %i.nx, %.lr.ph147 ], [ %.2117143.ph, %.lr.ph147.preheader305 ] ; 3 uses
  %.2120142 = phi ptr [ %i.mz, %.lr.ph147 ], [ %.2120142.ph, %.lr.ph147.preheader305 ] ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %.2113144, i64 -8 ; 3 uses
  %i.mz = getelementptr inbounds i8, ptr %.2120142, i64 -16 ; 2 uses
  %i.na = getelementptr inbounds i8, ptr %.2120142, i64 -8
  %i.nb = load float, ptr %i.na, align 4
  %i.nc = fneg float %i.nb
  %i.nd = load float, ptr %.2117143, align 4
  %i.ne = fsub float %i.nc, %i.nd                 ; 2 uses
  %i.nf = load float, ptr %i.mz, align 4
  %i.ng = fneg float %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %.2117143, i64 8
  %i.ni = load float, ptr %i.nh, align 4
  %i.nj = fsub float %i.ng, %i.ni                 ; 2 uses
  %i.nk = getelementptr inbounds i8, ptr %.2113144, i64 -4 ; 2 uses
  %i.nl = load float, ptr %i.nk, align 4
  %i.nm = fmul float %i.nj, %i.nl
  %i.nn = load float, ptr %i.my, align 4
  %i.no = fmul float %i.ne, %i.nn
  %i.np = fadd float %i.nm, %i.no
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv164 ; 2 uses
  store float %i.np, ptr %i.nq, align 4
  %i.nr = load float, ptr %i.my, align 4
  %i.ns = fmul float %i.nj, %i.nr
  %i.nt = load float, ptr %i.nk, align 4
  %i.nu = fmul float %i.ne, %i.nt
  %i.nv = fsub float %i.ns, %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  store float %i.nv, ptr %i.nw, align 4
  %i.nx = getelementptr inbounds nuw i8, ptr %.2117143, i64 16
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 2 ; 2 uses
  %i.ny = icmp slt i64 %indvars.iv.next165, %i.h
  br i1 %i.ny, label %.lr.ph147, label %._crit_edge148, !llvm.loop !537

._crit_edge148:                                   ; preds = %.lr.ph147, %._crit_edge138
  %i.nz = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.nz, align 4
  call fastcc void @mdct_butterflies(i32 %.val, ptr %i.n, ptr noundef nonnull %i.i, i32 noundef %i.b)
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge148
  %.078.i = phi ptr [ %i.oc, %._crit_edge148 ], [ %i.qy, %bb.b ] ; 5 uses
  %.077.i = phi ptr [ %i.i, %._crit_edge148 ], [ %i.pb, %bb.b ] ; 4 uses
  %.076.i = phi ptr [ %i.g, %._crit_edge148 ], [ %i.ra, %bb.b ] ; 5 uses
  %.0.i = phi ptr [ %i.ob, %._crit_edge148 ], [ %i.qz, %bb.b ] ; 5 uses
  %i.od = load i32, ptr %.0.i, align 4
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.oe ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.oh = load i32, ptr %i.og, align 4
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.oi ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.ol = load float, ptr %i.ok, align 4          ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.on = load float, ptr %i.om, align 4          ; 2 uses
  %i.oo = fsub float %i.ol, %i.on                 ; 2 uses
  %i.op = load float, ptr %i.of, align 4          ; 2 uses
  %i.oq = load float, ptr %i.oj, align 4          ; 2 uses
  %i.or = fadd float %i.op, %i.oq                 ; 2 uses
  %i.os = load float, ptr %.078.i, align 4        ; 2 uses
  %i.ot = fmul float %i.or, %i.os
  %i.ou = getelementptr inbounds nuw i8, ptr %.078.i, i64 4
  %i.ov = load float, ptr %i.ou, align 4          ; 2 uses
  %i.ow = fmul float %i.oo, %i.ov
  %i.ox = fadd float %i.ot, %i.ow                 ; 2 uses
  %i.oy = fmul float %i.or, %i.ov
  %i.oz = fmul float %i.oo, %i.os
  %i.pa = fsub float %i.oy, %i.oz                 ; 2 uses
  %i.pb = getelementptr inbounds i8, ptr %.077.i, i64 -16 ; 3 uses
  %i.pc = fadd float %i.ol, %i.on
  %i.pd = fmul float %i.pc, 5.000000e-01          ; 2 uses
  %i.pe = fsub float %i.op, %i.oq
  %i.pf = fmul float %i.pe, 5.000000e-01          ; 2 uses
  %i.pg = fadd float %i.pd, %i.ox
  store float %i.pg, ptr %.076.i, align 4
  %i.ph = fsub float %i.pd, %i.ox
  %i.pi = getelementptr inbounds i8, ptr %.077.i, i64 -8
  store float %i.ph, ptr %i.pi, align 4
  %i.pj = fadd float %i.pf, %i.pa
  %i.pk = getelementptr inbounds nuw i8, ptr %.076.i, i64 4
  store float %i.pj, ptr %i.pk, align 4
  %i.pl = fsub float %i.pa, %i.pf
  %i.pm = getelementptr inbounds i8, ptr %.077.i, i64 -4
  store float %i.pl, ptr %i.pm, align 4
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.po = load i32, ptr %i.pn, align 4
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.pp ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.ps = load i32, ptr %i.pr, align 4
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.pt ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.pw = load float, ptr %i.pv, align 4          ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.py = load float, ptr %i.px, align 4          ; 2 uses
  %i.pz = fsub float %i.pw, %i.py                 ; 2 uses
  %i.qa = load float, ptr %i.pq, align 4          ; 2 uses
  %i.qb = load float, ptr %i.pu, align 4          ; 2 uses
  %i.qc = fadd float %i.qa, %i.qb                 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.078.i, i64 8
  %i.qe = load float, ptr %i.qd, align 4          ; 2 uses
  %i.qf = fmul float %i.qc, %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %.078.i, i64 12
  %i.qh = load float, ptr %i.qg, align 4          ; 2 uses
  %i.qi = fmul float %i.pz, %i.qh
  %i.qj = fadd float %i.qf, %i.qi                 ; 2 uses
  %i.qk = fmul float %i.qc, %i.qh
  %i.ql = fmul float %i.pz, %i.qe
  %i.qm = fsub float %i.qk, %i.ql                 ; 2 uses
  %i.qn = fadd float %i.pw, %i.py
  %i.qo = fmul float %i.qn, 5.000000e-01          ; 2 uses
  %i.qp = fsub float %i.qa, %i.qb
  %i.qq = fmul float %i.qp, 5.000000e-01          ; 2 uses
  %i.qr = fadd float %i.qo, %i.qj
  %i.qs = getelementptr inbounds nuw i8, ptr %.076.i, i64 8
  store float %i.qr, ptr %i.qs, align 4
  %i.qt = fsub float %i.qo, %i.qj
  store float %i.qt, ptr %i.pb, align 4
  %i.qu = fadd float %i.qq, %i.qm
  %i.qv = getelementptr inbounds nuw i8, ptr %.076.i, i64 12
  store float %i.qu, ptr %i.qv, align 4
  %i.qw = fsub float %i.qm, %i.qq
  %i.qx = getelementptr inbounds i8, ptr %.077.i, i64 -12
  store float %i.qw, ptr %i.qx, align 4
  %i.qy = getelementptr inbounds nuw i8, ptr %.078.i, i64 16
  %i.qz = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ra = getelementptr inbounds nuw i8, ptr %.076.i, i64 16 ; 2 uses
  %i.rb = icmp ult ptr %i.ra, %i.pb
  br i1 %i.rb, label %bb.b, label %mdct_bitreverse.exit, !llvm.loop !492

mdct_bitreverse.exit:                             ; preds = %bb.b
  %i.rc = icmp sgt i32 %i.c, 0
  br i1 %i.rc, label %.lr.ph153, label %._crit_edge154

.lr.ph153:                                        ; preds = %mdct_bitreverse.exit
  %i.rd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.h
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph153, %bb.c
  %indvars.iv167 = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next168, %bb.c ] ; 2 uses
  %.3114151 = phi ptr [ %i.o, %.lr.ph153 ], [ %i.ru, %bb.c ] ; 3 uses
  %.3121150 = phi ptr [ %i.rd, %.lr.ph153 ], [ %i.rf, %bb.c ]
  %.0122149 = phi ptr [ %i.g, %.lr.ph153 ], [ %i.rt, %bb.c ] ; 2 uses
  %i.rf = getelementptr inbounds i8, ptr %.3121150, i64 -4 ; 2 uses
  %i.rg = load <2 x float>, ptr %.0122149, align 4 ; 2 uses
  %i.rh = load <2 x float>, ptr %.3114151, align 4
  %i.ri = fmul <2 x float> %i.rg, %i.rh           ; 2 uses
  %shift = shufflevector <2 x float> %i.ri, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ri, %shift
  %i.rj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.rk = load float, ptr %i.re, align 8
  %i.rl = fmul float %i.rk, %i.rj
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv167
  store float %i.rl, ptr %i.rm, align 4
  %i.rn = load <2 x float>, ptr %.3114151, align 4
  %i.ro = shufflevector <2 x float> %i.rn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rp = fmul <2 x float> %i.rg, %i.ro           ; 2 uses
  %shift302 = shufflevector <2 x float> %i.rp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop303 = fsub <2 x float> %i.rp, %shift302
  %i.rq = extractelement <2 x float> %foldExtExtBinop303, i64 0
  %i.rr = load float, ptr %i.re, align 8
  %i.rs = fmul float %i.rr, %i.rq
  store float %i.rs, ptr %i.rf, align 4
  %i.rt = getelementptr inbounds nuw i8, ptr %.0122149, i64 8
  %i.ru = getelementptr inbounds nuw i8, ptr %.3114151, i64 8
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge154, label %bb.c, !llvm.loop !538

._crit_edge154:                                   ; preds = %bb.c, %mdct_bitreverse.exit
end_hunk_2
begin_hunk_3_@_ve_amp:bb.a
  %i.dp = load float, ptr %gep, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.2154199
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = fmul float %i.dp, %i.dr
  %i.dt = fadd float %.0161198, %i.ds
  %i.du = or disjoint i64 %.2154199, 1            ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.du
  %i.dv = load float, ptr %gep.1, align 4
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.du
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = fmul float %i.dv, %i.dx
  %i.dz = fadd float %i.dt, %i.dy
  %i.ea = or disjoint i64 %.2154199, 2            ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ea
  %i.eb = load float, ptr %gep.2, align 4
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ea
  %i.ed = load float, ptr %i.ec, align 4
  %i.ee = fmul float %i.eb, %i.ed
  %i.ef = fadd float %i.dz, %i.ee
  %i.eg = or disjoint i64 %.2154199, 3            ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.eg
  %i.eh = load float, ptr %gep.3, align 4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.eg
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = fmul float %i.eh, %i.ej
  %i.el = fadd float %i.ef, %i.ek                 ; 3 uses
  %i.em = add nuw nsw i64 %.2154199, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph208.preheader.loopexit.unr-lcssa, label %bb.e, !llvm.loop !632

.lr.ph208.preheader.loopexit.unr-lcssa:           ; preds = %bb.e
  %i.en = and i32 %i.dh, 3
  %lcmp.mod.not = icmp eq i32 %i.en, 0
  br i1 %lcmp.mod.not, label %.lr.ph208.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph208.preheader.loopexit.unr-lcssa, %.lr.ph200
  %.2154199.epil.init = phi i64 [ 0, %.lr.ph200 ], [ %i.em, %.lr.ph208.preheader.loopexit.unr-lcssa ]
  %.0161198.epil.init = phi float [ 0.000000e+00, %.lr.ph200 ], [ %i.el, %.lr.ph208.preheader.loopexit.unr-lcssa ]
  %i.eo = and i32 %i.dh, 3
  %lcmp.mod10 = icmp ne i32 %i.eo, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.2154199.epil = phi i64 [ %.2154199.epil.init, %.epil.preheader ], [ %i.eu, %bb.f ] ; 3 uses
  %.0161198.epil = phi float [ %.0161198.epil.init, %.epil.preheader ], [ %i.et, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %.2154199.epil
  %i.ep = load float, ptr %gep.epil, align 4
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.2154199.epil
  %i.er = load float, ptr %i.eq, align 4
  %i.es = fmul float %i.ep, %i.er
  %i.et = fadd float %.0161198.epil, %i.es        ; 2 uses
  %i.eu = add nuw nsw i64 %.2154199.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph208.preheader, label %bb.f, !llvm.loop !633

.lr.ph208.preheader:                              ; preds = %.lr.ph208.preheader.loopexit.unr-lcssa, %bb.f, %.preheader
  %.0161.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.el, %.lr.ph208.preheader.loopexit.unr-lcssa ], [ %i.et, %bb.f ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.ew = load float, ptr %i.ev, align 8
  %i.ex = fmul float %.0161.lcssa, %i.ew          ; 5 uses
  %i.ey = getelementptr inbounds nuw [144 x i8], ptr %4, i64 %.0155212 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 68 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 4            ; 3 uses
  %i.fb = icmp slt i32 %i.fa, 1
  %spec.select179.v = select i1 %i.fb, i32 16, i32 -1
  %spec.select179 = add nsw i32 %spec.select179.v, %i.fa ; 2 uses
  %i.fc = sext i32 %spec.select179 to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fc
  %i.fe = load float, ptr %i.fd, align 4          ; 4 uses
  %i.ff = fcmp olt float %i.ex, %i.fe
  %i.fg = select i1 %i.ff, float %i.fe, float %i.ex
  %i.fh = fcmp ogt float %i.ex, %i.fe
  %i.fi = select i1 %i.fh, float %i.fe, float %i.ex
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208.preheader, %.lr.ph208
  %.0206 = phi float [ %i.fq, %.lr.ph208 ], [ 9.999900e+04, %.lr.ph208.preheader ] ; 2 uses
  %.0150205 = phi float [ %i.fo, %.lr.ph208 ], [ -9.999900e+04, %.lr.ph208.preheader ] ; 2 uses
  %.3204 = phi i64 [ %i.fr, %.lr.ph208 ], [ 0, %.lr.ph208.preheader ]
  %.1157203 = phi i32 [ %spec.select180, %.lr.ph208 ], [ %spec.select179, %.lr.ph208.preheader ] ; 2 uses
  %i.fj = icmp slt i32 %.1157203, 1
  %spec.select180.v = select i1 %i.fj, i32 16, i32 -1
  %spec.select180 = add nsw i32 %spec.select180.v, %.1157203 ; 2 uses
  %i.fk = sext i32 %spec.select180 to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4          ; 4 uses
  %i.fn = fcmp olt float %.0150205, %i.fm
  %i.fo = select i1 %i.fn, float %i.fm, float %.0150205 ; 2 uses
  %i.fp = fcmp ogt float %.0206, %i.fm
  %i.fq = select i1 %i.fp, float %i.fm, float %.0206 ; 2 uses
  %i.fr = add nuw nsw i64 %.3204, 1               ; 2 uses
  %exitcond217.not = icmp eq i64 %i.fr, %i.k
  br i1 %exitcond217.not, label %._crit_edge209, label %.lr.ph208, !llvm.loop !634

._crit_edge209:                                   ; preds = %.lr.ph208
  %i.fs = fsub float %i.fi, %i.fq
  %i.ft = fsub float %i.fg, %i.fo
  %i.fu = sext i32 %i.fa to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fu
  store float %i.ex, ptr %i.fv, align 4
  %i.fw = load i32, ptr %i.ez, align 4            ; 2 uses
  %i.fx = add nsw i32 %i.fw, 1
  %i.fy = icmp sgt i32 %i.fw, 15
  %spec.select181 = select i1 %i.fy, i32 0, i32 %i.fx
  store i32 %spec.select181, ptr %i.ez, align 4
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0155212
  %i.ga = load float, ptr %i.fz, align 4
  %i.gb = fadd float %.1160, %i.ga
  %i.gc = fcmp ogt float %i.ft, %i.gb
  %i.gd = or i32 %.0151213, 5
  %.1 = select i1 %i.gc, i32 %i.gd, i32 %.0151213 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.0155212
  %i.gf = load float, ptr %i.ge, align 4
  %i.gg = fsub float %i.gf, %.1160
  %i.gh = fcmp olt float %i.fs, %i.gg
  %i.gi = or i32 %.1, 2
  %.2 = select i1 %i.gh, i32 %i.gi, i32 %.1       ; 2 uses
  %i.gj = add nuw nsw i64 %.0155212, 1            ; 2 uses
  %exitcond218.not = icmp eq i64 %i.gj, 7
  br i1 %exitcond218.not, label %bb.g, label %.preheader, !llvm.loop !635

bb.g:                                             ; preds = %._crit_edge209
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_vorbis_apply_window(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #32 {
bb.a:
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  %i.a = select i1 %.not, i32 0, i32 %3
  %i.b = select i1 %.not, i32 0, i32 %5
  %i.c = sext i32 %i.a to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = sext i32 %i.b to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %1, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = sext i32 %4 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %2, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8              ; 5 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sdiv i64 %i.q, 4                         ; 5 uses
  %.neg = sdiv i64 %i.s, -4                       ; 2 uses
  %i.w = add nsw i64 %.neg, %i.v                  ; 4 uses
  %i.x = sdiv i64 %i.s, 2                         ; 2 uses
  %i.y = add i64 %i.w, %i.x                       ; 3 uses
  %i.z = sdiv i64 %i.q, 2                         ; 3 uses
  %i.aa = add nsw i64 %i.z, %i.v
  %.neg56 = sdiv i64 %i.u, -4                     ; 3 uses
  %i.ab = add i64 %i.aa, %.neg56                  ; 3 uses
  %i.ac = sdiv i64 %i.u, 2                        ; 6 uses
  %i.ad = add i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp sgt i64 %i.w, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %.preheader57

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.af = shl nuw i64 %i.w, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.af, i1 false)
  br label %.preheader57

.preheader57:                                     ; preds = %.lr.ph.preheader, %bb.a
  %.050.lcssa = phi i64 [ 0, %bb.a ], [ %i.w, %.lr.ph.preheader ] ; 7 uses
  %i.ag = icmp sgt i64 %i.y, %.050.lcssa
  br i1 %i.ag, label %.lr.ph61.preheader, label %._crit_edge

.lr.ph61.preheader:                               ; preds = %.preheader57
  %i.ah = add nsw i64 %i.v, %.neg
  %i.ai = add i64 %i.ah, %i.x
  %i.aj = sub i64 %i.ai, %.050.lcssa              ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check, label %.lr.ph61.preheader136, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph61.preheader
  %i.ak = shl i64 %.050.lcssa, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.ak
  %i.al = shl i64 %i.y, 2                         ; 2 uses
  %scevgep90 = getelementptr i8, ptr %0, i64 %i.al
  %i.am = sub i64 %i.al, %i.ak
  %scevgep91 = getelementptr i8, ptr %i.h, i64 %i.am
  %bound0 = icmp ult ptr %scevgep, %scevgep91
  %bound1 = icmp ult ptr %i.h, %scevgep90
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph61.preheader136, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, -8                      ; 4 uses
  %i.an = add i64 %.050.lcssa, %n.vec
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.050.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x float>, ptr %i.ap, align 4, !alias.scope !636
  %wide.load92 = load <4 x float>, ptr %i.aq, align 4, !alias.scope !636
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load93 = load <4 x float>, ptr %i.ar, align 4, !alias.scope !639, !noalias !636
  %wide.load94 = load <4 x float>, ptr %i.as, align 4, !alias.scope !639, !noalias !636
  %i.at = fmul <4 x float> %wide.load, %wide.load93
  %i.au = fmul <4 x float> %wide.load92, %wide.load94
  store <4 x float> %i.at, ptr %i.ar, align 4, !alias.scope !639, !noalias !636
  store <4 x float> %i.au, ptr %i.as, align 4, !alias.scope !639, !noalias !636
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !641

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph61.preheader136

.lr.ph61.preheader136:                            ; preds = %vector.memcheck, %.lr.ph61.preheader, %middle.block
  %indvars.iv72.ph = phi i64 [ %.050.lcssa, %vector.memcheck ], [ %.050.lcssa, %.lr.ph61.preheader ], [ %i.an, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph61.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader136, %.lr.ph61
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.lr.ph61 ], [ %indvars.iv72.ph, %.lr.ph61.preheader136 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph61 ], [ %indvars.iv.ph, %.lr.ph61.preheader136 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv72 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fmul float %i.ax, %i.az
  store float %i.ba, ptr %i.ay, align 4
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bb = icmp sgt i64 %i.y, %indvars.iv.next73
  br i1 %i.bb, label %.lr.ph61, label %._crit_edge, !llvm.loop !642

._crit_edge:                                      ; preds = %.lr.ph61, %middle.block, %.preheader57
  %sext = shl i64 %i.ab, 32                       ; 2 uses
  %i.bc = ashr exact i64 %sext, 32                ; 9 uses
  %i.bd = icmp sgt i64 %i.ad, %i.bc
  br i1 %i.bd, label %.lr.ph65.preheader, label %.preheader

.lr.ph65.preheader:                               ; preds = %._crit_edge
  %i.be = trunc i64 %i.ac to i32                  ; 5 uses
  %i.bf = add nsw i64 %i.z, %i.v
  %i.bg = add i64 %i.bf, %.neg56
  %i.bh = add i64 %i.bg, %i.ac
  %i.bi = sub i64 %i.bh, %i.bc                    ; 3 uses
  %min.iters.check105 = icmp ult i64 %i.bi, 28
  br i1 %min.iters.check105, label %.lr.ph65.preheader135, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph65.preheader
  %i.bj = add nsw i64 %i.z, %i.v
  %i.bk = add i64 %i.bj, %.neg56
  %i.bl = add i64 %i.bk, %i.ac
  %i.bm = xor i64 %i.bc, -1
  %i.bn = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = add i32 %i.be, -1                       ; 2 uses
  %i.bp = trunc i64 %i.bn to i32
  %i.bq = sub i32 %i.bo, %i.bp
  %i.br = icmp sgt i32 %i.bq, %i.bo
  %i.bs = icmp ugt i64 %i.bn, 4294967295
  %i.bt = or i1 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph65.preheader135, label %vector.memcheck96

vector.memcheck96:                                ; preds = %vector.scevcheck
  %i.bu = ashr exact i64 %sext, 30
  %scevgep97 = getelementptr i8, ptr %0, i64 %i.bu
  %i.bv = shl i64 %i.ad, 2                        ; 2 uses
  %scevgep98 = getelementptr i8, ptr %0, i64 %i.bv
  %i.bw = shl i64 %i.ac, 32
  %sext132 = add i64 %i.bw, -4294967296           ; 2 uses
  %i.bx = ashr exact i64 %sext132, 32
  %i.by = add nsw i64 %i.bx, %i.bc
  %i.bz = shl nsw i64 %i.by, 2
  %i.ca = add nsw i64 %i.bz, 4
  %i.cb = sub i64 %i.ca, %i.bv
  %scevgep99 = getelementptr i8, ptr %i.n, i64 %i.cb
  %i.cc = ashr exact i64 %sext132, 30
  %i.cd = getelementptr i8, ptr %i.n, i64 %i.cc
  %scevgep100 = getelementptr i8, ptr %i.cd, i64 4
  %bound0101 = icmp ult ptr %scevgep97, %scevgep100
  %bound1102 = icmp ult ptr %scevgep99, %scevgep98
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.lr.ph65.preheader135, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck96
  %n.vec108 = and i64 %i.bi, -8                   ; 4 uses
  %i.ce = add i64 %i.bc, %n.vec108                ; 2 uses
  %i.cf = trunc i64 %n.vec108 to i32
  %i.cg = sub i32 %i.be, %i.cf
  %i.ch = getelementptr [4 x i8], ptr %0, i64 %i.bc
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next116, %vector.body109 ] ; 3 uses
  %i.ci = xor i64 %index110, -1
  %i.cj = add i64 %i.ac, %i.ci
  %sext133 = shl i64 %i.cj, 32
  %i.ck = ashr exact i64 %sext133, 30
  %i.cl = getelementptr inbounds i8, ptr %i.n, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -12
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -28
  %wide.load111 = load <4 x float>, ptr %i.cm, align 4, !alias.scope !643
  %wide.load112 = load <4 x float>, ptr %i.cn, align 4, !alias.scope !643
  %reverse = shufflevector <4 x float> %wide.load111, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse113 = shufflevector <4 x float> %wide.load112, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.co = getelementptr [4 x i8], ptr %i.ch, i64 %index110 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load114 = load <4 x float>, ptr %i.co, align 4, !alias.scope !646, !noalias !643
  %wide.load115 = load <4 x float>, ptr %i.cp, align 4, !alias.scope !646, !noalias !643
  %i.cq = fmul <4 x float> %reverse, %wide.load114
  %i.cr = fmul <4 x float> %reverse113, %wide.load115
  store <4 x float> %i.cq, ptr %i.co, align 4, !alias.scope !646, !noalias !643
  store <4 x float> %i.cr, ptr %i.cp, align 4, !alias.scope !646, !noalias !643
  %index.next116 = add nuw i64 %index110, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next116, %n.vec108
  br i1 %i.cs, label %middle.block117, label %vector.body109, !llvm.loop !648

middle.block117:                                  ; preds = %vector.body109
  %cmp.n118 = icmp eq i64 %i.bi, %n.vec108
  br i1 %cmp.n118, label %.preheader, label %.lr.ph65.preheader135

.lr.ph65.preheader135:                            ; preds = %vector.memcheck96, %vector.scevcheck, %.lr.ph65.preheader, %middle.block117
  %indvars.iv77.ph = phi i64 [ %i.bc, %vector.memcheck96 ], [ %i.bc, %vector.scevcheck ], [ %i.bc, %.lr.ph65.preheader ], [ %i.ce, %middle.block117 ]
  %.1.in63.ph = phi i32 [ %i.be, %vector.memcheck96 ], [ %i.be, %vector.scevcheck ], [ %i.be, %.lr.ph65.preheader ], [ %i.cg, %middle.block117 ]
  br label %.lr.ph65

.preheader:                                       ; preds = %.lr.ph65, %middle.block117, %._crit_edge
  %.2.lcssa.in = phi i64 [ %i.ab, %._crit_edge ], [ %i.ce, %middle.block117 ], [ %indvars.iv.next78, %.lr.ph65 ]
  %sext89 = shl i64 %.2.lcssa.in, 32
  %i.ct = ashr exact i64 %sext89, 32              ; 5 uses
  %i.cu = icmp sgt i64 %i.q, %i.ct
  br i1 %i.cu, label %.lr.ph68.preheader, label %._crit_edge69

.lr.ph68.preheader:                               ; preds = %.preheader
  %i.cv = sub i64 %i.q, %i.ct                     ; 3 uses
  %min.iters.check122 = icmp ult i64 %i.cv, 8
  br i1 %min.iters.check122, label %.lr.ph68.preheader134, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph68.preheader
  %n.vec125 = and i64 %i.cv, -8                   ; 3 uses
  %i.cw = add i64 %i.ct, %n.vec125
  %i.cx = getelementptr [4 x i8], ptr %0, i64 %i.ct
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph123
  %index127 = phi i64 [ 0, %vector.ph123 ], [ %index.next128, %vector.body126 ] ; 2 uses
  %i.cy = getelementptr [4 x i8], ptr %i.cx, i64 %index127 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <4 x float> zeroinitializer, ptr %i.cy, align 4
  store <4 x float> zeroinitializer, ptr %i.cz, align 4
  %index.next128 = add nuw i64 %index127, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next128, %n.vec125
  br i1 %i.da, label %middle.block129, label %vector.body126, !llvm.loop !649

middle.block129:                                  ; preds = %vector.body126
  %cmp.n130 = icmp eq i64 %i.cv, %n.vec125
  br i1 %cmp.n130, label %._crit_edge69, label %.lr.ph68.preheader134

.lr.ph68.preheader134:                            ; preds = %.lr.ph68.preheader, %middle.block129
  %indvars.iv80.ph = phi i64 [ %i.ct, %.lr.ph68.preheader ], [ %i.cw, %middle.block129 ]
  br label %.lr.ph68

.lr.ph65:                                         ; preds = %.lr.ph65.preheader135, %.lr.ph65
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph65 ], [ %indvars.iv77.ph, %.lr.ph65.preheader135 ] ; 2 uses
  %.1.in63 = phi i32 [ %.1, %.lr.ph65 ], [ %.1.in63.ph, %.lr.ph65.preheader135 ]
  %.1 = add i32 %.1.in63, -1                      ; 2 uses
  %i.db = sext i32 %.1 to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv77 ; 2 uses
  %i.df = load float, ptr %i.de, align 4
  %i.dg = fmul float %i.dd, %i.df
  store float %i.dg, ptr %i.de, align 4
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1 ; 3 uses
  %i.dh = icmp sgt i64 %i.ad, %indvars.iv.next78
  br i1 %i.dh, label %.lr.ph65, label %.preheader, !llvm.loop !650

.lr.ph68:                                         ; preds = %.lr.ph68.preheader134, %.lr.ph68
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph68 ], [ %indvars.iv80.ph, %.lr.ph68.preheader134 ] ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv80
  store float 0.000000e+00, ptr %i.di, align 4
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.dj = icmp sgt i64 %i.q, %indvars.iv.next81
  br i1 %i.dj, label %.lr.ph68, label %._crit_edge69, !llvm.loop !651

._crit_edge69:                                    ; preds = %.lr.ph68, %middle.block129, %.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal noalias noundef ptr @floor0_unpack(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noalias dereferenceable_or_null(112) ptr @malloc(i64 noundef 112) #69 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8              ; 11 uses
  %i.f = add nsw i32 %i.e, 8                      ; 2 uses
  %i.g = load i64, ptr %1, align 8                ; 3 uses
  %i.h = add nsw i64 %i.g, 4
end_hunk_3
begin_hunk_4_@frexp

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -1, 1) i32 @vorbis_lpc_to_lsp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = add nsw i32 %2, 1
  %i.b = ashr i32 %i.a, 1                         ; 14 uses
  %i.c = add nsw i32 %i.b, 1                      ; 4 uses
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 4 uses
  %i.f = alloca i8, i64 %i.e, align 16            ; 16 uses
  %i.g = alloca i8, i64 %i.e, align 16            ; 19 uses
  %i.h = alloca i8, i64 %i.e, align 16            ; 6 uses
  %i.i = alloca i8, i64 %i.e, align 16            ; 6 uses
  %i.j = ashr i32 %2, 1                           ; 19 uses
  %i.k = sext i32 %i.b to i64                     ; 10 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.k
  store float 1.000000e+00, ptr %i.l, align 4
  %.not123 = icmp slt i32 %i.b, 1                 ; 2 uses
  br i1 %.not123, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.m = sext i32 %2 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %i.n = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 9
  br i1 %min.iters.check, label %.lr.ph.preheader269, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.n, -8                       ; 3 uses
  %i.o = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = or disjoint i64 %index, 1                ; 3 uses
  %i.q = getelementptr [4 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %i.s = getelementptr i8, ptr %i.q, i64 12
  %wide.load = load <4 x float>, ptr %i.r, align 4
  %wide.load180 = load <4 x float>, ptr %i.s, align 4
  %i.t = sub nsw i64 %i.m, %i.p
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load181 = load <4 x float>, ptr %i.v, align 4
  %wide.load182 = load <4 x float>, ptr %i.w, align 4
  %i.x = sub nsw i64 %i.k, %i.p
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -12
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -28
  %i.ab = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse184 = fadd <4 x float> %i.ab, %wide.load181
  %i.ac = shufflevector <4 x float> %wide.load180, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse185 = fadd <4 x float> %i.ac, %wide.load182
  store <4 x float> %reverse184, ptr %i.z, align 4
  store <4 x float> %reverse185, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !662

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader269

.lr.ph.preheader269:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader269, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader269 ] ; 4 uses
  %i.ae = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = sub nsw i64 %i.m, %indvars.iv
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fadd float %i.ag, %i.aj
  %i.al = sub nsw i64 %i.k, %indvars.iv
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.al
  store float %i.ak, ptr %i.am, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !663

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.an = sext i32 %i.j to i64                    ; 13 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.an
  store float 1.000000e+00, ptr %i.ao, align 4
  %.not101125 = icmp slt i32 %i.j, 1              ; 2 uses
  br i1 %.not101125, label %._crit_edge129, label %.lr.ph128.preheader

.lr.ph128.preheader:                              ; preds = %._crit_edge
  %i.ap = zext nneg i32 %2 to i64                 ; 2 uses
  %i.aq = add nuw nsw i32 %i.j, 1
  %wide.trip.count149 = zext nneg i32 %i.aq to i64
  %i.ar = zext nneg i32 %i.j to i64               ; 2 uses
  %min.iters.check187 = icmp ult i32 %i.j, 8
  br i1 %min.iters.check187, label %.lr.ph128.preheader268, label %vector.ph188

vector.ph188:                                     ; preds = %.lr.ph128.preheader
  %n.vec190 = and i64 %i.ar, 2147483640           ; 3 uses
  %i.as = or disjoint i64 %n.vec190, 1
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph188
  %index192 = phi i64 [ 0, %vector.ph188 ], [ %index.next201, %vector.body191 ] ; 2 uses
  %i.at = or disjoint i64 %index192, 1            ; 3 uses
  %i.au = getelementptr [4 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %i.aw = getelementptr i8, ptr %i.au, i64 12
  %wide.load193 = load <4 x float>, ptr %i.av, align 4
  %wide.load194 = load <4 x float>, ptr %i.aw, align 4
  %i.ax = sub nsw i64 %i.ap, %i.at
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -12
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -28
  %wide.load195 = load <4 x float>, ptr %i.az, align 4
  %wide.load196 = load <4 x float>, ptr %i.ba, align 4
  %i.bb = sub nsw i64 %i.an, %i.at
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -12
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -28
  %i.bf = shufflevector <4 x float> %wide.load193, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse199 = fsub <4 x float> %i.bf, %wide.load195
  %i.bg = shufflevector <4 x float> %wide.load194, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse200 = fsub <4 x float> %i.bg, %wide.load196
  store <4 x float> %reverse199, ptr %i.bd, align 4
  store <4 x float> %reverse200, ptr %i.be, align 4
  %index.next201 = add nuw i64 %index192, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next201, %n.vec190
  br i1 %i.bh, label %middle.block202, label %vector.body191, !llvm.loop !664

middle.block202:                                  ; preds = %vector.body191
  %cmp.n203 = icmp eq i64 %n.vec190, %i.ar
  br i1 %cmp.n203, label %._crit_edge129, label %.lr.ph128.preheader268

.lr.ph128.preheader268:                           ; preds = %.lr.ph128.preheader, %middle.block202
  %indvars.iv146.ph = phi i64 [ 1, %.lr.ph128.preheader ], [ %i.as, %middle.block202 ]
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.preheader268, %.lr.ph128
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %.lr.ph128 ], [ %indvars.iv146.ph, %.lr.ph128.preheader268 ] ; 4 uses
  %i.bi = getelementptr [4 x i8], ptr %0, i64 %indvars.iv146
  %i.bj = getelementptr i8, ptr %i.bi, i64 -4
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = sub nsw i64 %i.ap, %indvars.iv146
  %i.bm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4
  %i.bo = fsub float %i.bk, %i.bn
  %i.bp = sub nsw i64 %i.an, %indvars.iv146
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bp
  store float %i.bo, ptr %i.bq, align 4
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge129, label %.lr.ph128, !llvm.loop !665

._crit_edge129:                                   ; preds = %.lr.ph128, %middle.block202, %._crit_edge
  %i.br = icmp sgt i32 %i.b, %i.j
  br i1 %i.br, label %.preheader118, label %.preheader122

.preheader122:                                    ; preds = %._crit_edge129
  br i1 %.not123, label %.preheader120, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %.preheader122
  %i.bs = shl nuw nsw i64 %i.k, 2
  %scevgep260 = getelementptr i8, ptr %i.f, i64 %i.bs
  %load_initial261 = load float, ptr %scevgep260, align 4 ; 2 uses
  %i.bt = zext nneg i32 %i.b to i64               ; 2 uses
  %xtraiter = and i64 %i.bt, 3                    ; 3 uses
  %i.bu = icmp ult i32 %i.b, 4
  br i1 %i.bu, label %.lr.ph132.epil.preheader, label %.lr.ph132.preheader.new

.lr.ph132.preheader.new:                          ; preds = %.lr.ph132.preheader
  %unroll_iter = and i64 %i.bt, 2147483644
  %invariant.gep = getelementptr [4 x i8], ptr %i.f, i64 %i.k
  br label %.lr.ph132

.preheader118:                                    ; preds = %._crit_edge129
  %.not104136 = icmp slt i32 %i.j, 2
  br i1 %.not104136, label %.loopexit119, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %.preheader118
  %i.bv = add nuw nsw i32 %i.j, 1
  %wide.trip.count164 = zext nneg i32 %i.bv to i64 ; 2 uses
  %i.bw = add nsw i64 %wide.trip.count164, -2     ; 3 uses
  %min.iters.check206 = icmp ult i64 %i.bw, 2
  br i1 %min.iters.check206, label %.lr.ph138.preheader266, label %vector.ph207

vector.ph207:                                     ; preds = %.lr.ph138.preheader
  %n.vec209 = and i64 %i.bw, -2                   ; 3 uses
  %i.bx = add nsw i64 %n.vec209, 2
  %i.by = shl nuw nsw i64 %i.an, 2
  %i.bz = getelementptr i8, ptr %i.g, i64 %i.by
  %scevgep263 = getelementptr i8, ptr %i.bz, i64 -4
  %load_initial264 = load <2 x float>, ptr %scevgep263, align 4
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph207
  %store_forwarded265 = phi <2 x float> [ %load_initial264, %vector.ph207 ], [ %i.ce, %vector.body210 ]
  %index211 = phi i64 [ 0, %vector.ph207 ], [ %index.next214, %vector.body210 ] ; 2 uses
  %i.ca = add nuw i64 %index211, 2
  %i.cb = sub nsw i64 %i.an, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %wide.load213 = load <2 x float>, ptr %i.cd, align 4
  %i.ce = fadd <2 x float> %store_forwarded265, %wide.load213 ; 2 uses
  store <2 x float> %i.ce, ptr %i.cd, align 4
  %index.next214 = add nuw i64 %index211, 2       ; 2 uses
  %i.cf = icmp eq i64 %index.next214, %n.vec209
  br i1 %i.cf, label %middle.block215, label %vector.body210, !llvm.loop !666

middle.block215:                                  ; preds = %vector.body210
  %cmp.n216 = icmp eq i64 %i.bw, %n.vec209
  br i1 %cmp.n216, label %.loopexit119, label %.lr.ph138.preheader266

.lr.ph138.preheader266:                           ; preds = %.lr.ph138.preheader, %middle.block215
  %indvars.iv161.ph = phi i64 [ 2, %.lr.ph138.preheader ], [ %i.bx, %middle.block215 ]
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader266, %.lr.ph138
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %.lr.ph138 ], [ %indvars.iv161.ph, %.lr.ph138.preheader266 ] ; 2 uses
  %i.cg = sub nsw i64 %i.an, %indvars.iv161
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cg ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = load float, ptr %i.ch, align 4
  %i.cl = fadd float %i.cj, %i.ck
  store float %i.cl, ptr %i.ch, align 4
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %.loopexit119, label %.lr.ph138, !llvm.loop !667

.preheader120.loopexit.unr-lcssa:                 ; preds = %.lr.ph132
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader120, label %.lr.ph132.epil.preheader

.lr.ph132.epil.preheader:                         ; preds = %.preheader120.loopexit.unr-lcssa, %.lr.ph132.preheader
  %store_forwarded262.epil.init = phi float [ %load_initial261, %.lr.ph132.preheader ], [ %i.dg, %.preheader120.loopexit.unr-lcssa ]
  %indvars.iv151.epil.init = phi i64 [ 1, %.lr.ph132.preheader ], [ %indvars.iv.next152.3, %.preheader120.loopexit.unr-lcssa ]
  %lcmp.mod270 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod270)
  br label %.lr.ph132.epil

.lr.ph132.epil:                                   ; preds = %.lr.ph132.epil, %.lr.ph132.epil.preheader
  %store_forwarded262.epil = phi float [ %store_forwarded262.epil.init, %.lr.ph132.epil.preheader ], [ %i.cp, %.lr.ph132.epil ]
  %indvars.iv151.epil = phi i64 [ %indvars.iv151.epil.init, %.lr.ph132.epil.preheader ], [ %indvars.iv.next152.epil, %.lr.ph132.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph132.epil.preheader ], [ %epil.iter.next, %.lr.ph132.epil ]
  %i.cm = sub nsw i64 %i.k, %indvars.iv151.epil
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cm ; 2 uses
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = fsub float %i.co, %store_forwarded262.epil ; 2 uses
  store float %i.cp, ptr %i.cn, align 4
  %indvars.iv.next152.epil = add nuw nsw i64 %indvars.iv151.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader120, label %.lr.ph132.epil, !llvm.loop !668

.preheader120:                                    ; preds = %.preheader120.loopexit.unr-lcssa, %.lr.ph132.epil, %.preheader122
  br i1 %.not101125, label %.loopexit119, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %.preheader120
  %i.cq = shl nuw nsw i64 %i.an, 2
  %scevgep257 = getelementptr i8, ptr %i.g, i64 %i.cq
  %load_initial258 = load float, ptr %scevgep257, align 4 ; 2 uses
  %i.cr = zext nneg i32 %i.j to i64               ; 2 uses
  %xtraiter271 = and i64 %i.cr, 3                 ; 3 uses
  %i.cs = icmp ult i32 %i.j, 4
  br i1 %i.cs, label %.lr.ph135.epil.preheader, label %.lr.ph135.preheader.new

.lr.ph135.preheader.new:                          ; preds = %.lr.ph135.preheader
  %unroll_iter275 = and i64 %i.cr, 2147483644
  %invariant.gep290 = getelementptr [4 x i8], ptr %i.g, i64 %i.an
  br label %.lr.ph135

.lr.ph132:                                        ; preds = %.lr.ph132, %.lr.ph132.preheader.new
  %store_forwarded262 = phi float [ %load_initial261, %.lr.ph132.preheader.new ], [ %i.dg, %.lr.ph132 ]
  %indvars.iv151 = phi i64 [ 1, %.lr.ph132.preheader.new ], [ %indvars.iv.next152.3, %.lr.ph132 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph132.preheader.new ], [ %niter.next.3, %.lr.ph132 ]
  %i.ct = sub nsw i64 %i.k, %indvars.iv151
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ct ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = fsub float %i.cv, %store_forwarded262   ; 2 uses
  store float %i.cw, ptr %i.cu, align 4
  %indvars.iv.next152.neg = xor i64 %indvars.iv151, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next152.neg ; 2 uses
  %i.cx = load float, ptr %gep, align 4
  %i.cy = fsub float %i.cx, %i.cw                 ; 2 uses
  store float %i.cy, ptr %gep, align 4
  %indvars.iv.next152.1 = add nuw nsw i64 %indvars.iv151, 2
  %i.cz = sub nsw i64 %i.k, %indvars.iv.next152.1
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cz ; 2 uses
  %i.db = load float, ptr %i.da, align 4
  %i.dc = fsub float %i.db, %i.cy                 ; 2 uses
  store float %i.dc, ptr %i.da, align 4
  %indvars.iv.next152.2 = add nuw nsw i64 %indvars.iv151, 3
  %i.dd = sub nsw i64 %i.k, %indvars.iv.next152.2
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dd ; 2 uses
  %i.df = load float, ptr %i.de, align 4
  %i.dg = fsub float %i.df, %i.dc                 ; 3 uses
  store float %i.dg, ptr %i.de, align 4
  %indvars.iv.next152.3 = add nuw nsw i64 %indvars.iv151, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader120.loopexit.unr-lcssa, label %.lr.ph132, !llvm.loop !669

.lr.ph135:                                        ; preds = %.lr.ph135, %.lr.ph135.preheader.new
  %store_forwarded259 = phi float [ %load_initial258, %.lr.ph135.preheader.new ], [ %i.du, %.lr.ph135 ]
  %indvars.iv156 = phi i64 [ 1, %.lr.ph135.preheader.new ], [ %indvars.iv.next157.3, %.lr.ph135 ] ; 5 uses
  %niter276 = phi i64 [ 0, %.lr.ph135.preheader.new ], [ %niter276.next.3, %.lr.ph135 ]
  %i.dh = sub nsw i64 %i.an, %indvars.iv156
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dh ; 2 uses
  %i.dj = load float, ptr %i.di, align 4
  %i.dk = fadd float %store_forwarded259, %i.dj   ; 2 uses
  store float %i.dk, ptr %i.di, align 4
  %indvars.iv.next157.neg = xor i64 %indvars.iv156, -1
  %gep291 = getelementptr [4 x i8], ptr %invariant.gep290, i64 %indvars.iv.next157.neg ; 2 uses
  %i.dl = load float, ptr %gep291, align 4
  %i.dm = fadd float %i.dk, %i.dl                 ; 2 uses
  store float %i.dm, ptr %gep291, align 4
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2
  %i.dn = sub nsw i64 %i.an, %indvars.iv.next157.1
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dn ; 2 uses
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = fadd float %i.dm, %i.dp                 ; 2 uses
  store float %i.dq, ptr %i.do, align 4
  %indvars.iv.next157.2 = add nuw nsw i64 %indvars.iv156, 3
  %i.dr = sub nsw i64 %i.an, %indvars.iv.next157.2
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dr ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = fadd float %i.dq, %i.dt                 ; 3 uses
  store float %i.du, ptr %i.ds, align 4
  %indvars.iv.next157.3 = add nuw nsw i64 %indvars.iv156, 4 ; 2 uses
  %niter276.next.3 = add nuw i64 %niter276, 4     ; 2 uses
  %niter276.ncmp.3 = icmp eq i64 %niter276.next.3, %unroll_iter275
  br i1 %niter276.ncmp.3, label %.loopexit119.loopexit267.unr-lcssa, label %.lr.ph135, !llvm.loop !670

.loopexit119.loopexit267.unr-lcssa:               ; preds = %.lr.ph135
  %lcmp.mod273.not = icmp eq i64 %xtraiter271, 0
  br i1 %lcmp.mod273.not, label %.loopexit119, label %.lr.ph135.epil.preheader

.lr.ph135.epil.preheader:                         ; preds = %.loopexit119.loopexit267.unr-lcssa, %.lr.ph135.preheader
  %store_forwarded259.epil.init = phi float [ %load_initial258, %.lr.ph135.preheader ], [ %i.du, %.loopexit119.loopexit267.unr-lcssa ]
  %indvars.iv156.epil.init = phi i64 [ 1, %.lr.ph135.preheader ], [ %indvars.iv.next157.3, %.loopexit119.loopexit267.unr-lcssa ]
  %lcmp.mod274 = icmp ne i64 %xtraiter271, 0
  tail call void @llvm.assume(i1 %lcmp.mod274)
  br label %.lr.ph135.epil

.lr.ph135.epil:                                   ; preds = %.lr.ph135.epil, %.lr.ph135.epil.preheader
  %store_forwarded259.epil = phi float [ %store_forwarded259.epil.init, %.lr.ph135.epil.preheader ], [ %i.dy, %.lr.ph135.epil ]
  %indvars.iv156.epil = phi i64 [ %indvars.iv156.epil.init, %.lr.ph135.epil.preheader ], [ %indvars.iv.next157.epil, %.lr.ph135.epil ] ; 2 uses
  %epil.iter272 = phi i64 [ 0, %.lr.ph135.epil.preheader ], [ %epil.iter272.next, %.lr.ph135.epil ]
  %i.dv = sub nsw i64 %i.an, %indvars.iv156.epil
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dv ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = fadd float %store_forwarded259.epil, %i.dx ; 2 uses
  store float %i.dy, ptr %i.dw, align 4
  %indvars.iv.next157.epil = add nuw nsw i64 %indvars.iv156.epil, 1
  %epil.iter272.next = add i64 %epil.iter272, 1   ; 2 uses
  %epil.iter272.cmp.not = icmp eq i64 %epil.iter272.next, %xtraiter271
  br i1 %epil.iter272.cmp.not, label %.loopexit119, label %.lr.ph135.epil, !llvm.loop !671

.loopexit119:                                     ; preds = %.loopexit119.loopexit267.unr-lcssa, %.lr.ph135.epil, %.lr.ph138, %middle.block215, %.preheader120, %.preheader118
  %i.dz = load float, ptr %i.f, align 16
  %i.ea = fmul float %i.dz, 5.000000e-01
  store float %i.ea, ptr %i.f, align 16
  %.not19.i = icmp slt i32 %i.b, 2
  br i1 %.not19.i, label %cheby.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.loopexit119
  %i.eb = zext nneg i32 %i.b to i64               ; 7 uses
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  %i.ec = shl nuw nsw i64 %i.eb, 2
  %i.ed = getelementptr i8, ptr %i.f, i64 %i.ec
  %scevgep254 = getelementptr i8, ptr %i.ed, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit253, %.preheader.preheader.i
  %indvars.iv22.i = phi i64 [ 2, %.preheader.preheader.i ], [ %indvars.iv.next23.i, %.loopexit253 ] ; 4 uses
  %i.ee = tail call i64 @llvm.smin.i64(i64 %indvars.iv22.i, i64 %i.eb)
  %i.ef = sub nsw i64 %i.eb, %i.ee
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check219.not = icmp samesign ult i64 %indvars.iv22.i, %i.eb
  br i1 %min.iters.check219.not, label %vector.ph220, label %scalar.ph218.preheader

vector.ph220:                                     ; preds = %.preheader.i
  %n.vec222 = and i64 %i.eg, 9223372036854775806  ; 3 uses
  %i.eh = sub nsw i64 %i.eb, %n.vec222
  %load_initial255 = load <2 x float>, ptr %scevgep254, align 4
  %i.ei = shufflevector <2 x float> %load_initial255, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph220
  %store_forwarded256 = phi <2 x float> [ %i.ei, %vector.ph220 ], [ %i.en, %vector.body223 ] ; 3 uses
  %index224 = phi i64 [ 0, %vector.ph220 ], [ %index.next231, %vector.body223 ] ; 2 uses
  %i.ej = sub i64 %i.eb, %index224
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -4
  %i.em = getelementptr i8, ptr %i.ek, i64 -12    ; 2 uses
  %wide.load227 = load <2 x float>, ptr %i.em, align 4
  %reverse228 = shufflevector <2 x float> %wide.load227, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.en = fsub <2 x float> %reverse228, %store_forwarded256 ; 2 uses
end_hunk_4
begin_hunk_5_@res2_class:bb.a
  %i.fs = load ptr, ptr %i.at, align 8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.05886.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i64 0, ptr %i.fu, align 8
  %i.fv = load ptr, ptr %i.at, align 8
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.05886.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store i64 0, ptr %i.fx, align 8
  %i.fy = add nuw nsw i64 %.05886.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_2class.exit.loopexit57.unr-lcssa, label %.preheader69.i, !llvm.loop !819

_2class.exit.loopexit53.unr-lcssa:                ; preds = %.preheader69.us.i
  %i.fz = and i32 %i.z, 3
  %lcmp.mod72.not = icmp eq i32 %i.fz, 0
  br i1 %lcmp.mod72.not, label %_2class.exit, label %.preheader69.us.i.epil.preheader

.preheader69.us.i.epil.preheader:                 ; preds = %_2class.exit.loopexit53.unr-lcssa, %.preheader69.us.i.preheader
  %.05886.us.i.epil.init = phi i64 [ 0, %.preheader69.us.i.preheader ], [ %i.fb, %_2class.exit.loopexit53.unr-lcssa ]
  %i.ga = and i32 %i.z, 3
  %lcmp.mod73 = icmp ne i32 %i.ga, 0
  tail call void @llvm.assume(i1 %lcmp.mod73)
  br label %.preheader69.us.i.epil

.preheader69.us.i.epil:                           ; preds = %.preheader69.us.i.epil, %.preheader69.us.i.epil.preheader
  %.05886.us.i.epil = phi i64 [ %i.gd, %.preheader69.us.i.epil ], [ %.05886.us.i.epil.init, %.preheader69.us.i.epil.preheader ] ; 2 uses
  %epil.iter71 = phi i64 [ %epil.iter71.next, %.preheader69.us.i.epil ], [ 0, %.preheader69.us.i.epil.preheader ]
  %i.gb = load ptr, ptr %i.at, align 8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.05886.us.i.epil
  store i64 0, ptr %i.gc, align 8
  %i.gd = add nuw nsw i64 %.05886.us.i.epil, 1
  %epil.iter71.next = add i64 %epil.iter71, 1     ; 2 uses
  %epil.iter71.cmp.not = icmp eq i64 %epil.iter71.next, %xtraiter70
  br i1 %epil.iter71.cmp.not, label %_2class.exit, label %.preheader69.us.i.epil, !llvm.loop !823

_2class.exit.loopexit57.unr-lcssa:                ; preds = %.preheader69.i
  %i.ge = and i32 %i.z, 3
  %lcmp.mod.not = icmp eq i32 %i.ge, 0
  br i1 %lcmp.mod.not, label %_2class.exit, label %.preheader69.i.epil.preheader

.preheader69.i.epil.preheader:                    ; preds = %_2class.exit.loopexit57.unr-lcssa, %.preheader69.i.preheader
  %.05886.i.epil.init = phi i64 [ 0, %.preheader69.i.preheader ], [ %i.fy, %_2class.exit.loopexit57.unr-lcssa ]
  %i.gf = and i32 %i.z, 3
  %lcmp.mod62 = icmp ne i32 %i.gf, 0
  tail call void @llvm.assume(i1 %lcmp.mod62)
  br label %.preheader69.i.epil

.preheader69.i.epil:                              ; preds = %.preheader69.i.epil, %.preheader69.i.epil.preheader
  %.05886.i.epil = phi i64 [ %i.gi, %.preheader69.i.epil ], [ %.05886.i.epil.init, %.preheader69.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader69.i.epil ], [ 0, %.preheader69.i.epil.preheader ]
  %i.gg = load ptr, ptr %i.at, align 8
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.05886.i.epil
  store i64 0, ptr %i.gh, align 8
  %i.gi = add nuw nsw i64 %.05886.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_2class.exit, label %.preheader69.i.epil, !llvm.loop !824

_2class.exit:                                     ; preds = %_2class.exit.loopexit57.unr-lcssa, %.preheader69.i.epil, %._crit_edge.us.i, %._crit_edge.us97.us.i, %_2class.exit.loopexit53.unr-lcssa, %.preheader69.us.i.epil, %._crit_edge.us97.us111.i, %_vorbis_block_alloc.exit68.i
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = add nsw i64 %i.gk, 1
  store i64 %i.gl, ptr %i.gj, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %_2class.exit
  %.012 = phi ptr [ %i.at, %_2class.exit ], [ null, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.012
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @res2_forward(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #14 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  %i.d = sdiv i32 %i.c, 2                         ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.f = sext i32 %5 to i64                       ; 14 uses
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  %i.h = mul i64 %i.g, %i.e
  %i.i = add nsw i64 %i.h, 4
  %i.j = and i64 %i.i, -8                         ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = add nsw i64 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp sgt i64 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  br i1 %i.p, label %bb.b, label %_vorbis_block_alloc.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add nsw i64 %i.u, %i.l
  store i64 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store ptr %i.r, ptr %i.s, align 8
  store ptr %i.s, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.j, ptr %i.n, align 8
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.j) #69 ; 2 uses
  store ptr %i.z, ptr %i.q, align 8
  br label %_vorbis_block_alloc.exit

_vorbis_block_alloc.exit:                         ; preds = %bb.a, %bb.d
  %i.aa = phi i64 [ 0, %bb.d ], [ %i.l, %bb.a ]   ; 4 uses
  %i.ab = phi ptr [ %i.z, %bb.d ], [ %i.r, %bb.a ] ; 3 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.ab, i64 %i.aa  ; 12 uses
  %i.ae = add nsw i64 %i.aa, %i.j
  store i64 %i.ae, ptr %i.k, align 8
  store ptr %i.ad, ptr %i.a, align 8
  %i.af = icmp sgt i32 %5, 0
  br i1 %i.af, label %.lr.ph61, label %.loopexit

.lr.ph61:                                         ; preds = %_vorbis_block_alloc.exit
  %i.ag = icmp sgt i32 %i.c, 1
  br i1 %i.ag, label %.lr.ph.us.preheader, label %.lr.ph61.split.preheader

.lr.ph61.split.preheader:                         ; preds = %.lr.ph61
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %.lr.ph61.split.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph61.split.preheader
  %n.vec = and i64 %i.f, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi80 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %wide.load = load <2 x i32>, ptr %i.ah, align 4
  %wide.load81 = load <2 x i32>, ptr %i.ai, align 4
  %i.aj = icmp ne <2 x i32> %wide.load, zeroinitializer
  %i.ak = icmp ne <2 x i32> %wide.load81, zeroinitializer
  %i.al = zext <2 x i1> %i.aj to <2 x i64>
  %i.am = zext <2 x i1> %i.ak to <2 x i64>
  %i.an = add <2 x i64> %vec.phi, %i.al           ; 2 uses
  %i.ao = add <2 x i64> %vec.phi80, %i.am         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !825

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ao, %i.an
  %i.aq = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge62, label %.lr.ph61.split.preheader125

.lr.ph61.split.preheader125:                      ; preds = %.lr.ph61.split.preheader, %middle.block
  %.04560.ph = phi i64 [ 0, %.lr.ph61.split.preheader ], [ %n.vec, %middle.block ]
  %.05059.ph = phi i64 [ 0, %.lr.ph61.split.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph61.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph61
  %i.ar = add i64 %i.aa, %i.ac
  %min.iters.check83 = icmp ult i32 %i.c, 16
  %ident.check.not = icmp ne i32 %5, 1
  %or.cond.not124 = or i1 %min.iters.check83, %ident.check.not
  %n.vec86 = and i64 %i.e, 1073741816             ; 4 uses
  %cmp.n93 = icmp eq i64 %n.vec86, %i.e
  %xtraiter = and i64 %i.e, 3
  %i.as = and i32 %i.d, 3
  %lcmp.mod.not = icmp eq i32 %i.as, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04560.us = phi i64 [ %i.ck, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %.05059.us = phi i64 [ %spec.select.us, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %i.at = shl nuw nsw i64 %.04560.us, 2
  %i.au = add i64 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04560.us
  %i.aw = load ptr, ptr %i.av, align 8            ; 7 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.04560.us
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = sub i64 %i.ax, %i.au
  %diff.check = icmp ugt i64 %i.ba, -32
  %or.cond122 = select i1 %or.cond.not124, i1 true, i1 %diff.check
  br i1 %or.cond122, label %scalar.ph82.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %.lr.ph.us
  %i.bb = add nuw i64 %.04560.us, %n.vec86
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.04560.us
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph84
  %index88 = phi i64 [ 0, %vector.ph84 ], [ %index.next91, %vector.body87 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index88 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load89 = load <4 x float>, ptr %i.bd, align 4
  %wide.load90 = load <4 x float>, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index88 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <4 x float> %wide.load89, ptr %i.bf, align 4
  store <4 x float> %wide.load90, ptr %i.bg, align 4
  %index.next91 = add nuw i64 %index88, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next91, %n.vec86
  br i1 %i.bh, label %middle.block92, label %vector.body87, !llvm.loop !826

middle.block92:                                   ; preds = %vector.body87
  br i1 %cmp.n93, label %._crit_edge.us, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %.lr.ph.us, %middle.block92
  %.04658.us.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec86, %middle.block92 ] ; 3 uses
  %.04857.us.ph = phi i64 [ %.04560.us, %.lr.ph.us ], [ %i.bb, %middle.block92 ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol

scalar.ph82.prol:                                 ; preds = %scalar.ph82.preheader, %scalar.ph82.prol
  %.04658.us.prol = phi i64 [ %i.bl, %scalar.ph82.prol ], [ %.04658.us.ph, %scalar.ph82.preheader ] ; 2 uses
  %.04857.us.prol = phi i64 [ %i.bm, %scalar.ph82.prol ], [ %.04857.us.ph, %scalar.ph82.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph82.prol ], [ 0, %scalar.ph82.preheader ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.04658.us.prol
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.04857.us.prol
  store float %i.bj, ptr %i.bk, align 4
  %i.bl = add nuw nsw i64 %.04658.us.prol, 1      ; 2 uses
  %i.bm = add nuw nsw i64 %.04857.us.prol, %i.f   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol, !llvm.loop !827

scalar.ph82.prol.loopexit:                        ; preds = %scalar.ph82.prol, %scalar.ph82.preheader
  %.04658.us.unr = phi i64 [ %.04658.us.ph, %scalar.ph82.preheader ], [ %i.bl, %scalar.ph82.prol ]
  %.04857.us.unr = phi i64 [ %.04857.us.ph, %scalar.ph82.preheader ], [ %i.bm, %scalar.ph82.prol ]
  %i.bn = sub nsw i64 %.04658.us.ph, %i.e
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge.us, label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %.04658.us = phi i64 [ %i.ch, %scalar.ph82 ], [ %.04658.us.unr, %scalar.ph82.prol.loopexit ] ; 5 uses
  %.04857.us = phi i64 [ %i.ci, %scalar.ph82 ], [ %.04857.us.unr, %scalar.ph82.prol.loopexit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.04658.us
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.04857.us
  store float %i.bq, ptr %i.br, align 4
  %i.bs = add nuw nsw i64 %.04857.us, %i.f        ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.04658.us
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bs
  store float %i.bv, ptr %i.bw, align 4
  %i.bx = add nuw nsw i64 %i.bs, %i.f             ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.04658.us
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bx
  store float %i.ca, ptr %i.cb, align 4
  %i.cc = add nuw nsw i64 %i.bx, %i.f             ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.04658.us
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cc
  store float %i.cf, ptr %i.cg, align 4
  %i.ch = add nuw nsw i64 %.04658.us, 4           ; 2 uses
  %i.ci = add nuw nsw i64 %i.cc, %i.f
  %exitcond69.not.3 = icmp eq i64 %i.ch, %i.e
  br i1 %exitcond69.not.3, label %._crit_edge.us, label %scalar.ph82, !llvm.loop !828

._crit_edge.us:                                   ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82, %middle.block92
  %.not56.us = icmp ne i32 %i.az, 0
  %i.cj = zext i1 %.not56.us to i64
  %spec.select.us = add nuw nsw i64 %.05059.us, %i.cj ; 2 uses
  %i.ck = add nuw nsw i64 %.04560.us, 1           ; 2 uses
  %exitcond70.not = icmp eq i64 %i.ck, %i.f
  br i1 %exitcond70.not, label %._crit_edge62, label %.lr.ph.us, !llvm.loop !829

.lr.ph61.split:                                   ; preds = %.lr.ph61.split.preheader125, %.lr.ph61.split
  %.04560 = phi i64 [ %i.co, %.lr.ph61.split ], [ %.04560.ph, %.lr.ph61.split.preheader125 ] ; 2 uses
  %.05059 = phi i64 [ %spec.select, %.lr.ph61.split ], [ %.05059.ph, %.lr.ph61.split.preheader125 ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.04560
  %i.cm = load i32, ptr %i.cl, align 4
  %.not56 = icmp ne i32 %i.cm, 0
  %i.cn = zext i1 %.not56 to i64
  %spec.select = add nuw nsw i64 %.05059, %i.cn   ; 2 uses
  %i.co = add nuw nsw i64 %.04560, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.co, %i.f
  br i1 %exitcond.not, label %._crit_edge62, label %.lr.ph61.split, !llvm.loop !830

._crit_edge62:                                    ; preds = %.lr.ph61.split, %._crit_edge.us, %middle.block
  %.050.lcssa = phi i64 [ %spec.select.us, %._crit_edge.us ], [ %i.aq, %middle.block ], [ %spec.select, %.lr.ph61.split ]
  %.not = icmp eq i64 %.050.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge62
  call fastcc void @_01forward(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %6)
  %.not55 = icmp ne ptr %3, null
  %i.cp = icmp sgt i32 %i.c, 1
  %i.cq = and i1 %.not55, %i.cp
  br i1 %i.cq, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.cr = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.cs = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.g
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.cr
  %scevgep100 = getelementptr i8, ptr %i.cu, i64 -4
  %min.iters.check105 = icmp ugt i32 %i.c, 15
  %ident.check97.not = icmp eq i32 %5, 1
  %or.cond123 = and i1 %min.iters.check105, %ident.check97.not
  %n.vec108 = and i64 %i.e, 1073741816            ; 4 uses
  %cmp.n119 = icmp eq i64 %n.vec108, %i.e
  %i.cv = and i32 %i.d, 1
  %lcmp.mod129.not = icmp eq i32 %i.cv, 0
  %i.cw = add nsw i64 %i.e, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.165 = phi i64 [ %i.et, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.165
  %i.cy = load ptr, ptr %i.cx, align 8            ; 6 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.165
  %i.da = load ptr, ptr %i.cz, align 8            ; 7 uses
  br i1 %or.cond123, label %vector.memcheck98, label %scalar.ph104.preheader

vector.memcheck98:                                ; preds = %.lr.ph
  %scevgep = getelementptr i8, ptr %i.da, i64 %i.cr ; 2 uses
  %scevgep99 = getelementptr i8, ptr %i.cy, i64 %i.cr
  %bound0 = icmp ult ptr %i.da, %scevgep99
  %bound1 = icmp ult ptr %i.cy, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0101 = icmp ult ptr %i.da, %scevgep100
  %bound1102 = icmp ult ptr %i.ad, %scevgep
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx = or i1 %found.conflict, %found.conflict103
  br i1 %conflict.rdx, label %scalar.ph104.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck98
  %i.db = add nuw i64 %.165, %n.vec108
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.165
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next117, %vector.body109 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index110 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load111 = load <4 x float>, ptr %i.dd, align 4, !alias.scope !831
  %wide.load112 = load <4 x float>, ptr %i.de, align 4, !alias.scope !831
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %index110 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load113 = load <4 x float>, ptr %i.df, align 4, !alias.scope !834
  %wide.load114 = load <4 x float>, ptr %i.dg, align 4, !alias.scope !834
  %i.dh = fsub <4 x float> %wide.load111, %wide.load113
  %i.di = fsub <4 x float> %wide.load112, %wide.load114
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index110 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load115 = load <4 x float>, ptr %i.dj, align 4, !alias.scope !836, !noalias !838
  %wide.load116 = load <4 x float>, ptr %i.dk, align 4, !alias.scope !836, !noalias !838
  %i.dl = fadd <4 x float> %wide.load115, %i.dh
  %i.dm = fadd <4 x float> %wide.load116, %i.di
  store <4 x float> %i.dl, ptr %i.dj, align 4, !alias.scope !836, !noalias !838
  store <4 x float> %i.dm, ptr %i.dk, align 4, !alias.scope !836, !noalias !838
  %index.next117 = add nuw i64 %index110, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next117, %n.vec108
  br i1 %i.dn, label %middle.block118, label %vector.body109, !llvm.loop !839

middle.block118:                                  ; preds = %vector.body109
  br i1 %cmp.n119, label %._crit_edge, label %scalar.ph104.preheader

scalar.ph104.preheader:                           ; preds = %vector.memcheck98, %.lr.ph, %middle.block118
  %.14764.ph = phi i64 [ 0, %vector.memcheck98 ], [ 0, %.lr.ph ], [ %n.vec108, %middle.block118 ] ; 5 uses
  %.14963.ph = phi i64 [ %.165, %vector.memcheck98 ], [ %.165, %.lr.ph ], [ %i.db, %middle.block118 ] ; 3 uses
  br i1 %lcmp.mod129.not, label %scalar.ph104.prol.loopexit, label %scalar.ph104.prol

scalar.ph104.prol:                                ; preds = %scalar.ph104.preheader
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.14764.ph
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.14963.ph
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = fsub float %i.dp, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.14764.ph ; 2 uses
  %i.du = load float, ptr %i.dt, align 4
  %i.dv = fadd float %i.du, %i.ds
  store float %i.dv, ptr %i.dt, align 4
  %i.dw = or disjoint i64 %.14764.ph, 1
  %i.dx = add nuw nsw i64 %.14963.ph, %i.f
  br label %scalar.ph104.prol.loopexit

scalar.ph104.prol.loopexit:                       ; preds = %scalar.ph104.prol, %scalar.ph104.preheader
  %.14764.unr = phi i64 [ %.14764.ph, %scalar.ph104.preheader ], [ %i.dw, %scalar.ph104.prol ]
  %.14963.unr = phi i64 [ %.14963.ph, %scalar.ph104.preheader ], [ %i.dx, %scalar.ph104.prol ]
  %i.dy = icmp eq i64 %.14764.ph, %i.cw
  br i1 %i.dy, label %._crit_edge, label %scalar.ph104

scalar.ph104:                                     ; preds = %scalar.ph104.prol.loopexit, %scalar.ph104
  %.14764 = phi i64 [ %i.er, %scalar.ph104 ], [ %.14764.unr, %scalar.ph104.prol.loopexit ] ; 4 uses
  %.14963 = phi i64 [ %i.es, %scalar.ph104 ], [ %.14963.unr, %scalar.ph104.prol.loopexit ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.14764
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.14963
  %i.ec = load float, ptr %i.eb, align 4
  %i.ed = fsub float %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.14764 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4
  %i.eg = fadd float %i.ef, %i.ed
  store float %i.eg, ptr %i.ee, align 4
  %i.eh = add nuw nsw i64 %.14764, 1              ; 2 uses
  %i.ei = add nuw nsw i64 %.14963, %i.f           ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.eh
  %i.ek = load float, ptr %i.ej, align 4
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ei
  %i.em = load float, ptr %i.el, align 4
  %i.en = fsub float %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.eh ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4
  %i.eq = fadd float %i.ep, %i.en
  store float %i.eq, ptr %i.eo, align 4
  %i.er = add nuw nsw i64 %.14764, 2              ; 2 uses
  %i.es = add nuw nsw i64 %i.ei, %i.f
  %exitcond71.not.1 = icmp eq i64 %i.er, %i.e
  br i1 %exitcond71.not.1, label %._crit_edge, label %scalar.ph104, !llvm.loop !840

._crit_edge:                                      ; preds = %scalar.ph104.prol.loopexit, %scalar.ph104, %middle.block118
  %i.et = add nuw nsw i64 %.165, 1                ; 2 uses
  %exitcond72.not = icmp eq i64 %i.et, %i.f
  br i1 %exitcond72.not, label %.loopexit, label %.lr.ph, !llvm.loop !841

.loopexit:                                        ; preds = %._crit_edge, %_vorbis_block_alloc.exit, %._crit_edge62, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  ret i32 0
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @res2_inverse(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #27 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i64, ptr %i.e, align 8
  %.fr = freeze i64 %i.f                          ; 2 uses
  %i.g = trunc i64 %.fr to i32                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = load i64, ptr %i.a, align 8
  %i.k = sub nsw i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %i.m = sdiv i32 %i.l, %i.c
  %.fr128 = freeze i32 %i.m                       ; 3 uses
  %i.n = add i32 %i.g, -1
  %i.o = add i32 %i.n, %.fr128
  %i.p = sdiv i32 %i.o, %i.g
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3                      ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = add nsw i64 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp sgt i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  br i1 %i.x, label %bb.b, label %_vorbis_block_alloc.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add nsw i64 %i.ac, %i.t
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  store ptr %i.z, ptr %i.aa, align 8
  store ptr %i.aa, ptr %i.ae, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.r, ptr %i.v, align 8
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.r) #69 ; 2 uses
  store ptr %i.ah, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit

_vorbis_block_alloc.exit:                         ; preds = %bb.a, %bb.d
  %i.ai = phi i64 [ 0, %bb.d ], [ %i.t, %bb.a ]   ; 2 uses
  %i.aj = phi ptr [ %i.ah, %bb.d ], [ %i.z, %bb.a ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ai ; 3 uses
  %i.al = add nsw i64 %i.ai, %i.r
  store i64 %i.al, ptr %i.s, align 8
  %i.am = sext i32 %4 to i64                      ; 4 uses
  %i.an = icmp sgt i32 %4, 0
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_vorbis_block_alloc.exit, %bb.e
  %.06388 = phi i64 [ %i.aq, %bb.e ], [ 0, %_vorbis_block_alloc.exit ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.06388
  %i.ap = load i32, ptr %i.ao, align 4
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph
  %i.aq = add nuw nsw i64 %.06388, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.am
  br i1 %exitcond.not, label %vorbis_book_decodevv_add.exit, label %.lr.ph, !llvm.loop !842

._crit_edge:                                      ; preds = %.lr.ph, %_vorbis_block_alloc.exit
  %.063.lcssa = phi i64 [ 0, %_vorbis_block_alloc.exit ], [ %.06388, %.lr.ph ]
  %i.ar = icmp eq i64 %.063.lcssa, %i.am
  br i1 %i.ar, label %vorbis_book_decodevv_add.exit, label %.preheader85

.preheader85:                                     ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.preheader.lr.ph, label %vorbis_book_decodevv_add.exit

.preheader.lr.ph:                                 ; preds = %.preheader85
  %i.av = sext i32 %.fr128 to i64                 ; 3 uses
  %i.aw = icmp sgt i32 %.fr128, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %sext71 = shl i64 %.fr, 32
  %i.az = ashr exact i64 %sext71, 32              ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = sext i32 %i.c to i64                    ; 2 uses
  br i1 %i.aw, label %.preheader.lr.ph.split, label %vorbis_book_decodevv_add.exit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bd = icmp sgt i64 %i.az, 0
  br i1 %i.bd, label %.preheader.us, label %.lr.ph101.split.us.split.us.split.us.preheader

.lr.ph101.split.us.split.us.split.us.preheader:   ; preds = %.preheader.lr.ph.split
  %i.be = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bf = tail call fastcc i64 @decode_packed_entry_number(ptr noundef readonly %i.be, ptr noundef nonnull %i.ax) ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  br i1 %i.bg, label %vorbis_book_decode.exit.us.us.us, label %vorbis_book_decodevv_add.exit

.preheader.us:                                    ; preds = %.preheader.lr.ph.split, %._crit_edge102.split.us117
  %.068114.us = phi i64 [ %i.dz, %._crit_edge102.split.us117 ], [ 0, %.preheader.lr.ph.split ] ; 4 uses
  %i.bh = icmp eq i64 %.068114.us, 0
  %i.bi = trunc i64 %.068114.us to i32
  %i.bj = shl nuw i32 1, %i.bi
end_hunk_5
begin_hunk_6_@mapping0_forward:bb.a
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bp, ptr %i.bq, align 8
  store ptr %i.bc, ptr %i.bk, align 8
  store ptr %i.bk, ptr %i.bo, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i64 %i.bh, ptr %i.v, align 8
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bh) #69 ; 2 uses
  store ptr %i.br, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit373

_vorbis_block_alloc.exit373:                      ; preds = %_vorbis_block_alloc.exit371, %bb.j
  %i.bs = phi i64 [ %i.bh, %bb.j ], [ %i.ba, %_vorbis_block_alloc.exit371 ]
  %i.bt = phi i64 [ 0, %bb.j ], [ %i.be, %_vorbis_block_alloc.exit371 ] ; 2 uses
  %i.bu = phi ptr [ %i.br, %bb.j ], [ %i.bc, %_vorbis_block_alloc.exit371 ] ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bt ; 2 uses
  %i.bw = add nsw i64 %i.bt, %i.bh                ; 2 uses
  store i64 %i.bw, ptr %i.s, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.by = load float, ptr %i.bx, align 8          ; 2 uses
  %i.bz = load i32, ptr %i.m, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 2
  %i.cc = alloca i8, i64 %i.cb, align 16          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.cg = load i64, ptr %i.cf, align 8            ; 3 uses
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 808
  %sext = shl i64 %i.cg, 32
  %i.cj = ashr exact i64 %sext, 32                ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8            ; 11 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = sext i32 %i.ce to i64
  %i.cp = getelementptr inbounds [88 x i8], ptr %i.cn, i64 %i.co
  %.not = icmp eq i64 %i.cg, 0
  %i.cq = select i1 %.not, i64 0, i64 2
  %i.cr = getelementptr inbounds nuw [88 x i8], ptr %i.cp, i64 %i.cq ; 14 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store i32 %i.ch, ptr %i.cs, align 4
  %i.ct = load i32, ptr %i.m, align 4
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph462, label %_vorbis_block_alloc.exit373.._crit_edge463_crit_edge

_vorbis_block_alloc.exit373.._crit_edge463_crit_edge: ; preds = %_vorbis_block_alloc.exit373
  %.pre543 = sdiv i32 %i.l, 2                     ; 2 uses
  %.pre545 = sext i32 %.pre543 to i64             ; 2 uses
  %.pre547 = shl nsw i64 %.pre545, 2
  %.pre549 = add nsw i64 %.pre547, 4
  %.pre551 = and i64 %.pre549, -8
  br label %._crit_edge463

.lr.ph462:                                        ; preds = %_vorbis_block_alloc.exit373
  %i.cv = sitofp i32 %i.l to float
  %i.cw = fdiv float 4.000000e+00, %i.cv
  %i.cx = sdiv i32 %i.l, 2                        ; 2 uses
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = shl nsw i64 %i.cy, 2
  %i.da = add nsw i64 %i.cz, 4
  %i.db = and i64 %i.da, -8                       ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.de = tail call float @llvm.fabs.f32(float %i.cw)
  %i.df = bitcast float %i.de to i32
  %i.dg = uitofp nneg i32 %i.df to float
  %i.dh = fmul nnan float %i.dg, f0x3540A8C1
  %i.di = fadd float %i.dh, f0xC43F115B           ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.do = add nsw i32 %i.l, -1
  %i.dp = icmp sgt i32 %i.l, 2
  %i.dq = sext i32 %i.do to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph462, %bb.q
  %indvars.iv500 = phi i64 [ 0, %.lr.ph462 ], [ %indvars.iv.next501, %bb.q ] ; 4 uses
  %.0346460 = phi float [ %i.by, %.lr.ph462 ], [ %.1347, %bb.q ] ; 2 uses
  %i.dr = load ptr, ptr %0, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv500
  %i.dt = load ptr, ptr %i.ds, align 8            ; 16 uses
  %i.du = load i64, ptr %i.s, align 8             ; 3 uses
  %i.dv = add nsw i64 %i.du, %i.db
  %i.dw = load i64, ptr %i.v, align 8
  %i.dx = icmp sgt i64 %i.dv, %i.dw
  %i.dy = load ptr, ptr %i.y, align 8             ; 3 uses
  br i1 %i.dx, label %bb.l, label %_vorbis_block_alloc.exit375

bb.l:                                             ; preds = %bb.k
  %.not.i374 = icmp eq ptr %i.dy, null
  br i1 %.not.i374, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.ea = load i64, ptr %i.dc, align 8
  %i.eb = add nsw i64 %i.ea, %i.du
  store i64 %i.eb, ptr %i.dc, align 8
  %i.ec = load ptr, ptr %i.dd, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.ec, ptr %i.ed, align 8
  store ptr %i.dy, ptr %i.dz, align 8
  store ptr %i.dz, ptr %i.dd, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 %i.db, ptr %i.v, align 8
  %i.ee = tail call noalias ptr @malloc(i64 noundef %i.db) #69 ; 2 uses
  store ptr %i.ee, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit375

_vorbis_block_alloc.exit375:                      ; preds = %bb.k, %bb.n
  %i.ef = phi i64 [ 0, %bb.n ], [ %i.du, %bb.k ]  ; 2 uses
  %i.eg = phi ptr [ %i.ee, %bb.n ], [ %i.dy, %bb.k ]
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.ef
  %i.ei = add nsw i64 %i.ef, %i.db
  store i64 %i.ei, ptr %i.s, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv500 ; 2 uses
  store ptr %i.eh, ptr %i.ej, align 8
  %i.ek = load i64, ptr %i.dk, align 8
  %i.el = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.em = load i64, ptr %i.dl, align 8
  %i.en = and i64 %i.el, 4294967295
  %.not.i376 = icmp eq i64 %i.en, 0               ; 2 uses
  %i.eo = shl i64 %i.ek, 32
  %i.ep = ashr exact i64 %i.eo, 32
  %i.eq = select i1 %.not.i376, i64 0, i64 %i.ep  ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8            ; 4 uses
  %i.ew = shl i64 %i.em, 32
  %i.ex = ashr exact i64 %i.ew, 32
  %i.ey = select i1 %.not.i376, i64 0, i64 %i.ex  ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8            ; 4 uses
  %sext447 = shl i64 %i.el, 32
  %i.fe = ashr exact i64 %sext447, 29
  %i.ff = getelementptr inbounds i8, ptr %i.f, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8            ; 4 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.eq
  %i.fi = load i64, ptr %i.fh, align 8            ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ey
  %i.fk = load i64, ptr %i.fj, align 8            ; 2 uses
  %i.fl = sdiv i64 %i.fg, 4                       ; 5 uses
  %.neg.i = sdiv i64 %i.fi, -4                    ; 2 uses
  %i.fm = add nsw i64 %.neg.i, %i.fl              ; 4 uses
  %i.fn = sdiv i64 %i.fi, 2                       ; 2 uses
  %i.fo = add i64 %i.fm, %i.fn                    ; 3 uses
  %i.fp = sdiv i64 %i.fg, 2                       ; 3 uses
  %i.fq = add nsw i64 %i.fp, %i.fl
  %.neg56.i = sdiv i64 %i.fk, -4                  ; 3 uses
  %i.fr = add i64 %i.fq, %.neg56.i                ; 2 uses
  %i.fs = sdiv i64 %i.fk, 2                       ; 6 uses
  %i.ft = add i64 %i.fr, %i.fs                    ; 4 uses
  %i.fu = icmp sgt i64 %i.fm, 0
  br i1 %i.fu, label %.lr.ph.preheader.i, label %.preheader57.i

.lr.ph.preheader.i:                               ; preds = %_vorbis_block_alloc.exit375
  %i.fv = shl nuw i64 %i.fm, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dt, i8 0, i64 %i.fv, i1 false)
  br label %.preheader57.i

.preheader57.i:                                   ; preds = %.lr.ph.preheader.i, %_vorbis_block_alloc.exit375
  %.050.lcssa.i = phi i64 [ 0, %_vorbis_block_alloc.exit375 ], [ %i.fm, %.lr.ph.preheader.i ] ; 7 uses
  %i.fw = icmp sgt i64 %i.fo, %.050.lcssa.i
  br i1 %i.fw, label %.lr.ph61.i.preheader, label %._crit_edge.i

.lr.ph61.i.preheader:                             ; preds = %.preheader57.i
  %i.fx = add nsw i64 %i.fl, %.neg.i
  %i.fy = add i64 %i.fx, %i.fn
  %i.fz = sub i64 %i.fy, %.050.lcssa.i            ; 3 uses
  %min.iters.check628 = icmp ult i64 %i.fz, 8
  br i1 %min.iters.check628, label %.lr.ph61.i.preheader770, label %vector.memcheck620

vector.memcheck620:                               ; preds = %.lr.ph61.i.preheader
  %i.ga = shl i64 %.050.lcssa.i, 2                ; 2 uses
  %scevgep621 = getelementptr i8, ptr %i.dt, i64 %i.ga
  %i.gb = shl i64 %i.fo, 2                        ; 2 uses
  %scevgep622 = getelementptr i8, ptr %i.dt, i64 %i.gb
  %i.gc = sub i64 %i.gb, %i.ga
  %scevgep623 = getelementptr i8, ptr %i.ev, i64 %i.gc
  %bound0624 = icmp ult ptr %scevgep621, %scevgep623
  %bound1625 = icmp ult ptr %i.ev, %scevgep622
  %found.conflict626 = and i1 %bound0624, %bound1625
  br i1 %found.conflict626, label %.lr.ph61.i.preheader770, label %vector.ph629

vector.ph629:                                     ; preds = %vector.memcheck620
  %n.vec631 = and i64 %i.fz, -8                   ; 4 uses
  %i.gd = add i64 %.050.lcssa.i, %n.vec631
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.050.lcssa.i
  br label %vector.body632

vector.body632:                                   ; preds = %vector.body632, %vector.ph629
  %index633 = phi i64 [ 0, %vector.ph629 ], [ %index.next638, %vector.body632 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index633 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load634 = load <4 x float>, ptr %i.gf, align 4, !alias.scope !852
  %wide.load635 = load <4 x float>, ptr %i.gg, align 4, !alias.scope !852
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index633 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %wide.load636 = load <4 x float>, ptr %i.gh, align 4, !alias.scope !855, !noalias !852
  %wide.load637 = load <4 x float>, ptr %i.gi, align 4, !alias.scope !855, !noalias !852
  %i.gj = fmul <4 x float> %wide.load634, %wide.load636
  %i.gk = fmul <4 x float> %wide.load635, %wide.load637
  store <4 x float> %i.gj, ptr %i.gh, align 4, !alias.scope !855, !noalias !852
  store <4 x float> %i.gk, ptr %i.gi, align 4, !alias.scope !855, !noalias !852
  %index.next638 = add nuw i64 %index633, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next638, %n.vec631
  br i1 %i.gl, label %middle.block639, label %vector.body632, !llvm.loop !857

middle.block639:                                  ; preds = %vector.body632
  %cmp.n640 = icmp eq i64 %i.fz, %n.vec631
  br i1 %cmp.n640, label %._crit_edge.i, label %.lr.ph61.i.preheader770

.lr.ph61.i.preheader770:                          ; preds = %vector.memcheck620, %.lr.ph61.i.preheader, %middle.block639
  %indvars.iv72.i.ph = phi i64 [ %.050.lcssa.i, %vector.memcheck620 ], [ %.050.lcssa.i, %.lr.ph61.i.preheader ], [ %i.gd, %middle.block639 ]
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck620 ], [ 0, %.lr.ph61.i.preheader ], [ %n.vec631, %middle.block639 ]
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader770, %.lr.ph61.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %.lr.ph61.i ], [ %indvars.iv72.i.ph, %.lr.ph61.i.preheader770 ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph61.i ], [ %indvars.iv.i.ph, %.lr.ph61.i.preheader770 ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.i
  %i.gn = load float, ptr %i.gm, align 4
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv72.i ; 2 uses
  %i.gp = load float, ptr %i.go, align 4
  %i.gq = fmul float %i.gn, %i.gp
  store float %i.gq, ptr %i.go, align 4
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.gr = icmp sgt i64 %i.fo, %indvars.iv.next73.i
  br i1 %i.gr, label %.lr.ph61.i, label %._crit_edge.i, !llvm.loop !858

._crit_edge.i:                                    ; preds = %.lr.ph61.i, %middle.block639, %.preheader57.i
  %sext.i = shl i64 %i.fr, 32                     ; 2 uses
  %i.gs = ashr exact i64 %sext.i, 32              ; 10 uses
  %i.gt = icmp sgt i64 %i.ft, %i.gs
  br i1 %i.gt, label %.lr.ph65.preheader.i, label %.preheader.i

.lr.ph65.preheader.i:                             ; preds = %._crit_edge.i
  %i.gu = trunc i64 %i.fs to i32                  ; 5 uses
  %i.gv = add nsw i64 %i.fp, %i.fl
  %i.gw = add i64 %i.gv, %.neg56.i
  %i.gx = add i64 %i.gw, %i.fs
  %i.gy = sub i64 %i.gx, %i.gs                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.gy, 20
  br i1 %min.iters.check, label %.lr.ph65.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph65.preheader.i
  %i.gz = add nsw i64 %i.fp, -1
  %i.ha = add i64 %i.gz, %i.fl
  %i.hb = add i64 %i.ha, %.neg56.i
  %i.hc = add i64 %i.hb, %i.fs
  %i.hd = sub i64 %i.hc, %i.gs                    ; 2 uses
  %i.he = add i32 %i.gu, -1                       ; 2 uses
  %i.hf = trunc i64 %i.hd to i32
  %i.hg = sub i32 %i.he, %i.hf
  %i.hh = icmp sgt i32 %i.hg, %i.he
  %i.hi = icmp ugt i64 %i.hd, 4294967295
  %i.hj = or i1 %i.hh, %i.hi
  br i1 %i.hj, label %.lr.ph65.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.hk = ashr exact i64 %sext.i, 30
  %scevgep609 = getelementptr i8, ptr %i.dt, i64 %i.hk
  %i.hl = shl i64 %i.ft, 2
  %scevgep610 = getelementptr i8, ptr %i.dt, i64 %i.hl
  %scevgep611 = getelementptr i8, ptr %i.fd, i64 4
  %i.hm = shl i64 %i.fs, 32
  %sext756 = add i64 %i.hm, -4294967296           ; 2 uses
  %i.hn = ashr exact i64 %sext756, 32
  %i.ho = add nsw i64 %i.hn, %i.gs
  %i.hp = sub i64 %i.ho, %i.ft
  %i.hq = shl i64 %i.hp, 2
  %scevgep612 = getelementptr i8, ptr %scevgep611, i64 %i.hq
  %scevgep613 = getelementptr i8, ptr %i.fd, i64 4
  %i.hr = ashr exact i64 %sext756, 30
  %scevgep614 = getelementptr i8, ptr %scevgep613, i64 %i.hr
  %bound0 = icmp ult ptr %scevgep609, %scevgep614
  %bound1 = icmp ult ptr %scevgep612, %scevgep610
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph65.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gy, -8                      ; 4 uses
  %i.hs = add i64 %i.gs, %n.vec                   ; 2 uses
  %i.ht = trunc i64 %n.vec to i32
  %i.hu = sub i32 %i.gu, %i.ht
  %i.hv = getelementptr [4 x i8], ptr %i.dt, i64 %i.gs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hw = xor i64 %index, -1
  %i.hx = add i64 %i.fs, %i.hw
  %sext757 = shl i64 %i.hx, 32
  %i.hy = ashr exact i64 %sext757, 30
  %i.hz = getelementptr inbounds i8, ptr %i.fd, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 -12
  %i.ib = getelementptr inbounds i8, ptr %i.hz, i64 -28
  %wide.load = load <4 x float>, ptr %i.ia, align 4, !alias.scope !859
  %wide.load615 = load <4 x float>, ptr %i.ib, align 4, !alias.scope !859
  %reverse = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse616 = shufflevector <4 x float> %wide.load615, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ic = getelementptr [4 x i8], ptr %i.hv, i64 %index ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %wide.load617 = load <4 x float>, ptr %i.ic, align 4, !alias.scope !862, !noalias !859
  %wide.load618 = load <4 x float>, ptr %i.id, align 4, !alias.scope !862, !noalias !859
  %i.ie = fmul <4 x float> %reverse, %wide.load617
  %i.if = fmul <4 x float> %reverse616, %wide.load618
  store <4 x float> %i.ie, ptr %i.ic, align 4, !alias.scope !862, !noalias !859
  store <4 x float> %i.if, ptr %i.id, align 4, !alias.scope !862, !noalias !859
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ig = icmp eq i64 %index.next, %n.vec
  br i1 %i.ig, label %middle.block, label %vector.body, !llvm.loop !864

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gy, %n.vec
  br i1 %cmp.n, label %.preheader.i.loopexit, label %.lr.ph65.i.preheader

.lr.ph65.i.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph65.preheader.i, %middle.block
  %indvars.iv77.i.ph = phi i64 [ %i.gs, %vector.memcheck ], [ %i.gs, %vector.scevcheck ], [ %i.gs, %.lr.ph65.preheader.i ], [ %i.hs, %middle.block ]
  %.1.in63.i.ph = phi i32 [ %i.gu, %vector.memcheck ], [ %i.gu, %vector.scevcheck ], [ %i.gu, %.lr.ph65.preheader.i ], [ %i.hu, %middle.block ]
  br label %.lr.ph65.i

.preheader.i.loopexit:                            ; preds = %.lr.ph65.i, %middle.block
  %indvars.iv.next78.i.lcssa = phi i64 [ %i.hs, %middle.block ], [ %indvars.iv.next78.i, %.lr.ph65.i ]
  %.pre537 = shl i64 %indvars.iv.next78.i.lcssa, 32
  %.pre538 = ashr exact i64 %.pre537, 32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit, %._crit_edge.i
  %.pre-phi = phi i64 [ %.pre538, %.preheader.i.loopexit ], [ %i.gs, %._crit_edge.i ] ; 3 uses
  %i.ih = icmp sgt i64 %i.fg, %.pre-phi
  br i1 %i.ih, label %.lr.ph68.i.preheader, label %_vorbis_apply_window.exit

.lr.ph68.i.preheader:                             ; preds = %.preheader.i
  %i.ii = shl nsw i64 %.pre-phi, 2
  %scevgep = getelementptr i8, ptr %i.dt, i64 %i.ii
  %i.ij = sub i64 %i.fg, %.pre-phi
  %i.ik = shl i64 %i.ij, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ik, i1 false)
  br label %_vorbis_apply_window.exit

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader, %.lr.ph65.i
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %.lr.ph65.i ], [ %indvars.iv77.i.ph, %.lr.ph65.i.preheader ] ; 2 uses
  %.1.in63.i = phi i32 [ %.1.i, %.lr.ph65.i ], [ %.1.in63.i.ph, %.lr.ph65.i.preheader ]
  %.1.i = add i32 %.1.in63.i, -1                  ; 2 uses
  %i.il = sext i32 %.1.i to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.il
  %i.in = load float, ptr %i.im, align 4
  %i.io = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %indvars.iv77.i ; 2 uses
  %i.ip = load float, ptr %i.io, align 4
  %i.iq = fmul float %i.in, %i.ip
  store float %i.iq, ptr %i.io, align 4
  %indvars.iv.next78.i = add nsw i64 %indvars.iv77.i, 1 ; 3 uses
  %i.ir = icmp sgt i64 %i.ft, %indvars.iv.next78.i
  br i1 %i.ir, label %.lr.ph65.i, label %.preheader.i.loopexit, !llvm.loop !865

_vorbis_apply_window.exit:                        ; preds = %.lr.ph68.i.preheader, %.preheader.i
  %i.is = load i64, ptr %i.cf, align 8
  %i.it = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.is
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = load ptr, ptr %i.ej, align 8
  tail call void @mdct_forward(ptr noundef %i.iv, ptr noundef %i.dt, ptr noundef %i.iw)
  %i.ix = load i64, ptr %i.cf, align 8
  %i.iy = getelementptr inbounds [24 x i8], ptr %i.dn, i64 %i.ix
  tail call void @drft_forward(ptr noundef nonnull %i.iy, ptr noundef %i.dt)
  %.val368 = load i32, ptr %i.dt, align 4
  %i.iz = and i32 %.val368, 2147483647
  %i.ja = uitofp nneg i32 %i.iz to float
  %i.jb = fmul nnan float %i.ja, f0x3540A8C1
  %i.jc = fadd float %i.jb, f0xC43F115B
  %i.jd = fadd float %i.di, %i.jc                 ; 4 uses
  store float %i.jd, ptr %i.dt, align 4
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv500 ; 3 uses
  store float %i.jd, ptr %i.je, align 4
  br i1 %i.dp, label %.lr.ph, label %bb.o

.lr.ph:                                           ; preds = %_vorbis_apply_window.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %_vorbis_apply_window.exit ] ; 3 uses
  %i.jf = phi float [ %i.jv, %.lr.ph ], [ %i.jd, %_vorbis_apply_window.exit ] ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv
  %i.jh = add nuw nsw i64 %indvars.iv, 1
  %i.ji = load <2 x float>, ptr %i.jg, align 4    ; 2 uses
  %i.jj = fmul <2 x float> %i.ji, %i.ji           ; 2 uses
  %shift = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.jj, %shift
  %i.jk = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.jl = tail call float @llvm.fabs.f32(float %i.jk)
  %i.jm = bitcast float %i.jl to i32
  %i.jn = uitofp nneg i32 %i.jm to float
  %i.jo = fmul nnan float %i.jn, f0x3540A8C1
  %i.jp = fadd nnan float %i.jo, f0xC43F115B
  %i.jq = fmul nnan float %i.jp, 5.000000e-01
  %i.jr = fadd float %i.di, %i.jq                 ; 3 uses
  %i.js = lshr i64 %i.jh, 1
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.js
end_hunk_6
begin_hunk_7_@dradf4:bb.a
  %found.conflict537 = and i1 %bound0535, %bound1536
  %bound0539 = icmp ult ptr %scevgep386, %scevgep404
  %bound1540 = icmp ult ptr %scevgep402, %scevgep388
  %found.conflict541 = and i1 %bound0539, %bound1540
  %bound0543 = icmp ult ptr %scevgep386, %scevgep408
  %bound1544 = icmp ult ptr %scevgep406, %scevgep388
  %found.conflict545 = and i1 %bound0543, %bound1544
  %i.gw = insertelement <4 x ptr> poison, ptr %scevgep386, i64 0
  %i.gx = shufflevector <4 x ptr> %i.gw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gy = icmp ult <4 x ptr> %i.gx, %i.el
  %i.gz = insertelement <4 x ptr> poison, ptr %scevgep388, i64 0
  %i.ha = shufflevector <4 x ptr> %i.gz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hb = icmp ult <4 x ptr> %i.ep, %i.ha
  %i.hc = and <4 x i1> %i.gy, %i.hb
  %bound0563 = icmp ult ptr %scevgep386, %scevgep415
  %bound1564 = icmp ult ptr %scevgep414, %scevgep388
  %found.conflict565 = and i1 %bound0563, %bound1564
  %bound0567 = icmp ult ptr %scevgep386, %scevgep417
  %bound1568 = icmp ult ptr %scevgep416, %scevgep388
  %found.conflict569 = and i1 %bound0567, %bound1568
  %bound0571 = icmp ult ptr %scevgep386, %scevgep419
  %bound1572 = icmp ult ptr %scevgep418, %scevgep388
  %found.conflict573 = and i1 %bound0571, %bound1572
  %bound0575 = icmp ult ptr %scevgep390, %scevgep396
  %bound1576 = icmp ult ptr %scevgep394, %scevgep392
  %found.conflict577 = and i1 %bound0575, %bound1576
  %bound0579 = icmp ult ptr %scevgep390, %scevgep400
  %bound1580 = icmp ult ptr %scevgep398, %scevgep392
  %found.conflict581 = and i1 %bound0579, %bound1580
  %bound0583 = icmp ult ptr %scevgep390, %scevgep404
  %bound1584 = icmp ult ptr %scevgep402, %scevgep392
  %found.conflict585 = and i1 %bound0583, %bound1584
  %bound0587 = icmp ult ptr %scevgep390, %scevgep408
  %bound1588 = icmp ult ptr %scevgep406, %scevgep392
  %found.conflict589 = and i1 %bound0587, %bound1588
  %i.hd = insertelement <4 x ptr> poison, ptr %scevgep390, i64 0
  %i.he = shufflevector <4 x ptr> %i.hd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hf = icmp ult <4 x ptr> %i.he, %i.el
  %i.hg = insertelement <4 x ptr> poison, ptr %scevgep392, i64 0
  %i.hh = shufflevector <4 x ptr> %i.hg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hi = icmp ult <4 x ptr> %i.ep, %i.hh
  %i.hj = and <4 x i1> %i.hf, %i.hi
  %bound0607 = icmp ult ptr %scevgep390, %scevgep415
  %bound1608 = icmp ult ptr %scevgep414, %scevgep392
  %found.conflict609 = and i1 %bound0607, %bound1608
  %bound0611 = icmp ult ptr %scevgep390, %scevgep417
  %bound1612 = icmp ult ptr %scevgep416, %scevgep392
  %found.conflict613 = and i1 %bound0611, %bound1612
  %bound0615 = icmp ult ptr %scevgep390, %scevgep419
  %bound1616 = icmp ult ptr %scevgep418, %scevgep392
  %found.conflict617 = and i1 %bound0615, %bound1616
  %bound0619 = icmp ult ptr %scevgep394, %scevgep400
  %bound1620 = icmp ult ptr %scevgep398, %scevgep396
  %found.conflict621 = and i1 %bound0619, %bound1620
  %bound0623 = icmp ult ptr %scevgep394, %scevgep404
  %bound1624 = icmp ult ptr %scevgep402, %scevgep396
  %found.conflict625 = and i1 %bound0623, %bound1624
  %bound0627 = icmp ult ptr %scevgep394, %scevgep408
  %bound1628 = icmp ult ptr %scevgep406, %scevgep396
  %found.conflict629 = and i1 %bound0627, %bound1628
  %i.hk = insertelement <4 x ptr> poison, ptr %scevgep394, i64 0
  %i.hl = shufflevector <4 x ptr> %i.hk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hm = icmp ult <4 x ptr> %i.hl, %i.el
  %i.hn = insertelement <4 x ptr> poison, ptr %scevgep396, i64 0
  %i.ho = shufflevector <4 x ptr> %i.hn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hp = icmp ult <4 x ptr> %i.ep, %i.ho
  %i.hq = and <4 x i1> %i.hm, %i.hp
  %bound0647 = icmp ult ptr %scevgep394, %scevgep415
  %bound1648 = icmp ult ptr %scevgep414, %scevgep396
  %found.conflict649 = and i1 %bound0647, %bound1648
  %bound0651 = icmp ult ptr %scevgep394, %scevgep417
  %bound1652 = icmp ult ptr %scevgep416, %scevgep396
  %found.conflict653 = and i1 %bound0651, %bound1652
  %bound0655 = icmp ult ptr %scevgep394, %scevgep419
  %bound1656 = icmp ult ptr %scevgep418, %scevgep396
  %found.conflict657 = and i1 %bound0655, %bound1656
  %bound0659 = icmp ult ptr %scevgep398, %scevgep404
  %bound1660 = icmp ult ptr %scevgep402, %scevgep400
  %found.conflict661 = and i1 %bound0659, %bound1660
  %bound0663 = icmp ult ptr %scevgep398, %scevgep408
  %bound1664 = icmp ult ptr %scevgep406, %scevgep400
  %found.conflict665 = and i1 %bound0663, %bound1664
  %i.hr = insertelement <4 x ptr> poison, ptr %scevgep398, i64 0
  %i.hs = shufflevector <4 x ptr> %i.hr, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ht = icmp ult <4 x ptr> %i.hs, %i.el
  %i.hu = insertelement <4 x ptr> poison, ptr %scevgep400, i64 0
  %i.hv = shufflevector <4 x ptr> %i.hu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hw = icmp ult <4 x ptr> %i.ep, %i.hv
  %i.hx = and <4 x i1> %i.ht, %i.hw
  %bound0683 = icmp ult ptr %scevgep398, %scevgep415
  %bound1684 = icmp ult ptr %scevgep414, %scevgep400
  %found.conflict685 = and i1 %bound0683, %bound1684
  %bound0687 = icmp ult ptr %scevgep398, %scevgep417
  %bound1688 = icmp ult ptr %scevgep416, %scevgep400
  %found.conflict689 = and i1 %bound0687, %bound1688
  %bound0691 = icmp ult ptr %scevgep398, %scevgep419
  %bound1692 = icmp ult ptr %scevgep418, %scevgep400
  %found.conflict693 = and i1 %bound0691, %bound1692
  %bound0695 = icmp ult ptr %scevgep402, %scevgep408
  %bound1696 = icmp ult ptr %scevgep406, %scevgep404
  %found.conflict697 = and i1 %bound0695, %bound1696
  %i.hy = insertelement <4 x ptr> poison, ptr %scevgep402, i64 0
  %i.hz = shufflevector <4 x ptr> %i.hy, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ia = icmp ult <4 x ptr> %i.hz, %i.el
  %i.ib = insertelement <4 x ptr> poison, ptr %scevgep404, i64 0
  %i.ic = shufflevector <4 x ptr> %i.ib, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.id = icmp ult <4 x ptr> %i.ep, %i.ic
  %i.ie = and <4 x i1> %i.ia, %i.id
  %bound0715 = icmp ult ptr %scevgep402, %scevgep415
  %bound1716 = icmp ult ptr %scevgep414, %scevgep404
  %found.conflict717 = and i1 %bound0715, %bound1716
  %bound0719 = icmp ult ptr %scevgep402, %scevgep417
  %bound1720 = icmp ult ptr %scevgep416, %scevgep404
  %found.conflict721 = and i1 %bound0719, %bound1720
  %bound0723 = icmp ult ptr %scevgep402, %scevgep419
  %bound1724 = icmp ult ptr %scevgep418, %scevgep404
  %found.conflict725 = and i1 %bound0723, %bound1724
  %i.if = insertelement <4 x ptr> poison, ptr %scevgep406, i64 0
  %i.ig = shufflevector <4 x ptr> %i.if, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ih = icmp ult <4 x ptr> %i.ig, %i.el
  %i.ii = insertelement <4 x ptr> poison, ptr %scevgep408, i64 0
  %i.ij = shufflevector <4 x ptr> %i.ii, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ik = icmp ult <4 x ptr> %i.ep, %i.ij
  %i.il = and <4 x i1> %i.ih, %i.ik
  %bound0743 = icmp ult ptr %scevgep406, %scevgep415
  %bound1744 = icmp ult ptr %scevgep414, %scevgep408
  %found.conflict745 = and i1 %bound0743, %bound1744
  %bound0747 = icmp ult ptr %scevgep406, %scevgep417
  %bound1748 = icmp ult ptr %scevgep416, %scevgep408
  %found.conflict749 = and i1 %bound0747, %bound1748
  %bound0751 = icmp ult ptr %scevgep406, %scevgep419
  %bound1752 = icmp ult ptr %scevgep418, %scevgep408
  %found.conflict753 = and i1 %bound0751, %bound1752
  %rdx.op = or <4 x i1> %i.go, %i.gv
  %rdx.op858 = or <4 x i1> %rdx.op, %i.hc
  %rdx.op859 = or <4 x i1> %rdx.op858, %i.hj
  %rdx.op860 = or <4 x i1> %rdx.op859, %i.hq
  %rdx.op861 = or <4 x i1> %rdx.op860, %i.hx
  %rdx.op862 = or <4 x i1> %rdx.op861, %i.ie
  %rdx.op863 = or <4 x i1> %rdx.op862, %i.il
  %i.im = bitcast <4 x i1> %rdx.op863 to i4
  %i.in = icmp ne i4 %i.im, 0
  %op.rdx = or i1 %i.in, %found.conflict422
  %op.rdx864 = or i1 %found.conflict425, %found.conflict429
  %op.rdx865 = or i1 %found.conflict433, %found.conflict437
  %op.rdx866 = or i1 %found.conflict441, %found.conflict445
  %op.rdx867 = or i1 %found.conflict465, %found.conflict469
  %op.rdx868 = or i1 %found.conflict473, %found.conflict477
  %op.rdx869 = or i1 %found.conflict481, %found.conflict485
  %op.rdx870 = or i1 %found.conflict489, %found.conflict493
  %op.rdx871 = or i1 %found.conflict497, %found.conflict517
  %op.rdx872 = or i1 %found.conflict521, %found.conflict525
  %op.rdx873 = or i1 %found.conflict529, %found.conflict533
  %op.rdx874 = or i1 %found.conflict537, %found.conflict541
  %op.rdx875 = or i1 %found.conflict545, %found.conflict565
  %op.rdx876 = or i1 %found.conflict569, %found.conflict573
  %op.rdx877 = or i1 %found.conflict577, %found.conflict581
  %op.rdx878 = or i1 %found.conflict585, %found.conflict589
  %op.rdx879 = or i1 %found.conflict609, %found.conflict613
  %op.rdx880 = or i1 %found.conflict617, %found.conflict621
  %op.rdx881 = or i1 %found.conflict625, %found.conflict629
  %op.rdx882 = or i1 %found.conflict649, %found.conflict653
  %op.rdx883 = or i1 %found.conflict657, %found.conflict661
  %op.rdx884 = or i1 %found.conflict665, %found.conflict685
  %op.rdx885 = or i1 %found.conflict689, %found.conflict693
  %op.rdx886 = or i1 %found.conflict697, %found.conflict717
  %op.rdx887 = or i1 %found.conflict721, %found.conflict725
  %op.rdx888 = or i1 %found.conflict745, %found.conflict749
  %op.rdx889 = or i1 %op.rdx, %op.rdx864
  %op.rdx890 = or i1 %op.rdx865, %op.rdx866
  %op.rdx891 = or i1 %op.rdx867, %op.rdx868
  %op.rdx892 = or i1 %op.rdx869, %op.rdx870
  %op.rdx893 = or i1 %op.rdx871, %op.rdx872
  %op.rdx894 = or i1 %op.rdx873, %op.rdx874
  %op.rdx895 = or i1 %op.rdx875, %op.rdx876
  %op.rdx896 = or i1 %op.rdx877, %op.rdx878
  %op.rdx897 = or i1 %op.rdx879, %op.rdx880
  %op.rdx898 = or i1 %op.rdx881, %op.rdx882
  %op.rdx899 = or i1 %op.rdx883, %op.rdx884
  %op.rdx900 = or i1 %op.rdx885, %op.rdx886
  %op.rdx901 = or i1 %op.rdx887, %op.rdx888
  %op.rdx902 = or i1 %op.rdx889, %op.rdx890
  %op.rdx903 = or i1 %op.rdx891, %op.rdx892
  %op.rdx904 = or i1 %op.rdx893, %op.rdx894
  %op.rdx905 = or i1 %op.rdx895, %op.rdx896
  %op.rdx906 = or i1 %op.rdx897, %op.rdx898
  %op.rdx907 = or i1 %op.rdx899, %op.rdx900
  %op.rdx908 = or i1 %op.rdx901, %found.conflict753
  %op.rdx909 = or i1 %op.rdx902, %op.rdx903
  %op.rdx910 = or i1 %op.rdx904, %op.rdx905
  %op.rdx911 = or i1 %op.rdx906, %op.rdx907
  %op.rdx912 = or i1 %op.rdx909, %op.rdx910
  %op.rdx913 = or i1 %op.rdx911, %op.rdx908
  %op.rdx914 = or i1 %op.rdx912, %op.rdx913
  br i1 %op.rdx914, label %scalar.ph755.preheader, label %vector.ph757

vector.ph757:                                     ; preds = %vector.memcheck375
  %i.io = sub i64 %i.fo, %i.fg
  %i.ip = add i64 %i.fh, %i.fn
  %i.iq = add i64 %indvars.iv273, %i.fh
  %invariant.op = add nuw i64 %indvars.iv273, 2
  br label %vector.body760

vector.body760:                                   ; preds = %vector.body760, %vector.ph757
  %index761 = phi i64 [ 0, %vector.ph757 ], [ %index.next788, %vector.body760 ] ; 3 uses
  %i.ir = shl i64 %index761, 1
  %i.is = sub i64 %i.fo, %i.ir                    ; 2 uses
  %i.it = shl i64 %index761, 1                    ; 5 uses
  %i.iu = add i64 %i.it, %i.fn                    ; 2 uses
  %.reass = add nuw i64 %i.it, %invariant.op      ; 2 uses
  %i.iv = add nuw nsw i64 %.reass, %i.cl          ; 2 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.it
  %wide.vec = load <8 x float>, ptr %i.iw, align 4, !alias.scope !940 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec762 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ix = getelementptr [4 x i8], ptr %2, i64 %i.iv
  %i.iy = getelementptr i8, ptr %i.ix, i64 -4
  %wide.vec763 = load <8 x float>, ptr %i.iy, align 4, !alias.scope !943 ; 2 uses
  %strided.vec764 = shufflevector <8 x float> %wide.vec763, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec765 = shufflevector <8 x float> %wide.vec763, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.iz = fmul <4 x float> %strided.vec, %strided.vec764
  %i.ja = fmul <4 x float> %strided.vec762, %strided.vec765
  %i.jb = fadd <4 x float> %i.iz, %i.ja           ; 2 uses
  %i.jc = fmul <4 x float> %strided.vec, %strided.vec765
  %i.jd = fmul <4 x float> %strided.vec764, %strided.vec762
  %i.je = fsub <4 x float> %i.jc, %i.jd           ; 2 uses
  %i.jf = add nuw nsw i64 %i.iv, %i.cl            ; 2 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %5, i64 %i.it
  %wide.vec766 = load <8 x float>, ptr %i.jg, align 4, !alias.scope !945 ; 2 uses
  %strided.vec767 = shufflevector <8 x float> %wide.vec766, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec768 = shufflevector <8 x float> %wide.vec766, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.jh = getelementptr [4 x i8], ptr %2, i64 %i.jf
  %i.ji = getelementptr i8, ptr %i.jh, i64 -4
  %wide.vec769 = load <8 x float>, ptr %i.ji, align 4, !alias.scope !947 ; 2 uses
  %strided.vec770 = shufflevector <8 x float> %wide.vec769, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec771 = shufflevector <8 x float> %wide.vec769, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.jj = fmul <4 x float> %strided.vec767, %strided.vec770
  %i.jk = fmul <4 x float> %strided.vec768, %strided.vec771
  %i.jl = fadd <4 x float> %i.jj, %i.jk           ; 2 uses
  %i.jm = fmul <4 x float> %strided.vec767, %strided.vec771
  %i.jn = fmul <4 x float> %strided.vec770, %strided.vec768
  %i.jo = fsub <4 x float> %i.jm, %i.jn           ; 2 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %6, i64 %i.it
  %wide.vec772 = load <8 x float>, ptr %i.jp, align 4, !alias.scope !949 ; 2 uses
  %strided.vec773 = shufflevector <8 x float> %wide.vec772, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec774 = shufflevector <8 x float> %wide.vec772, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.jq = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jf
  %i.jr = getelementptr i8, ptr %i.jq, i64 -4
  %wide.vec775 = load <8 x float>, ptr %i.jr, align 4, !alias.scope !951 ; 2 uses
  %strided.vec776 = shufflevector <8 x float> %wide.vec775, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec777 = shufflevector <8 x float> %wide.vec775, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.js = fmul <4 x float> %strided.vec773, %strided.vec776
  %i.jt = fmul <4 x float> %strided.vec774, %strided.vec777
  %i.ju = fadd <4 x float> %i.js, %i.jt           ; 2 uses
  %i.jv = fmul <4 x float> %strided.vec773, %strided.vec777
  %i.jw = fmul <4 x float> %strided.vec776, %strided.vec774
  %i.jx = fsub <4 x float> %i.jv, %i.jw           ; 2 uses
  %i.jy = fadd <4 x float> %i.jb, %i.ju           ; 2 uses
  %i.jz = fsub <4 x float> %i.ju, %i.jb           ; 2 uses
  %i.ka = fadd <4 x float> %i.je, %i.jx           ; 2 uses
  %i.kb = fsub <4 x float> %i.je, %i.jx           ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -4
  %wide.vec778 = load <8 x float>, ptr %i.kd, align 4, !alias.scope !953 ; 2 uses
  %strided.vec779 = shufflevector <8 x float> %wide.vec778, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec780 = shufflevector <8 x float> %wide.vec778, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ke = fadd <4 x float> %i.jo, %strided.vec780 ; 2 uses
  %i.kf = fsub <4 x float> %strided.vec780, %i.jo ; 2 uses
  %i.kg = fadd <4 x float> %i.jl, %strided.vec779 ; 2 uses
  %i.kh = fsub <4 x float> %strided.vec779, %i.jl ; 2 uses
  %i.ki = fadd <4 x float> %i.jy, %i.kg
  %i.kj = getelementptr [4 x i8], ptr %3, i64 %i.iu
  %i.kk = getelementptr i8, ptr %i.kj, i64 4
  %i.kl = fadd <4 x float> %i.ke, %i.ka
  %interleaved.vec781 = shufflevector <4 x float> %i.ki, <4 x float> %i.kl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec781, ptr %i.kk, align 4
  %i.km = fsub <4 x float> %i.kh, %i.kb
  %i.kn = getelementptr [4 x i8], ptr %3, i64 %i.is
  %i.ko = fsub <4 x float> %i.jz, %i.kf
  %i.kp = getelementptr i8, ptr %i.kn, i64 -36
  %interleaved.vec783 = shufflevector <4 x float> %i.km, <4 x float> %i.ko, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec783, ptr %i.kp, align 4
  %i.kq = fadd <4 x float> %i.kb, %i.kh
  %i.kr = getelementptr [4 x i8], ptr %invariant.gep313, i64 %i.iu
  %i.ks = getelementptr i8, ptr %i.kr, i64 4
  %i.kt = fadd <4 x float> %i.kf, %i.jz
  %interleaved.vec784 = shufflevector <4 x float> %i.kq, <4 x float> %i.kt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec784, ptr %i.ks, align 4
  %i.ku = fsub <4 x float> %i.kg, %i.jy
  %i.kv = getelementptr [4 x i8], ptr %invariant.gep315, i64 %i.is
  %i.kw = fsub <4 x float> %i.ka, %i.ke
  %i.kx = getelementptr i8, ptr %i.kv, i64 -36
  %interleaved.vec787 = shufflevector <4 x float> %i.ku, <4 x float> %i.kw, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec787, ptr %i.kx, align 4
  %index.next788 = add nuw i64 %index761, 4       ; 2 uses
  %i.ky = icmp eq i64 %index.next788, %n.vec759
  br i1 %i.ky, label %middle.block789, label %vector.body760, !llvm.loop !955

middle.block789:                                  ; preds = %vector.body760
  br i1 %cmp.n790, label %._crit_edge250, label %scalar.ph755.preheader

scalar.ph755.preheader:                           ; preds = %vector.memcheck375, %vector.scevcheck350, %.lr.ph249, %middle.block789
  %indvars.iv283.ph = phi i64 [ %i.fo, %vector.memcheck375 ], [ %i.fo, %vector.scevcheck350 ], [ %i.fo, %.lr.ph249 ], [ %i.io, %middle.block789 ]
  %indvars.iv279.ph = phi i64 [ %i.fn, %vector.memcheck375 ], [ %i.fn, %vector.scevcheck350 ], [ %i.fn, %.lr.ph249 ], [ %i.ip, %middle.block789 ]
  %indvars.iv275.ph = phi i64 [ %indvars.iv273, %vector.memcheck375 ], [ %indvars.iv273, %vector.scevcheck350 ], [ %indvars.iv273, %.lr.ph249 ], [ %i.iq, %middle.block789 ]
  %indvars.iv271.ph = phi i64 [ 2, %vector.memcheck375 ], [ 2, %vector.scevcheck350 ], [ 2, %.lr.ph249 ], [ %i.fi, %middle.block789 ]
  br label %scalar.ph755

scalar.ph755:                                     ; preds = %scalar.ph755.preheader, %scalar.ph755
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %scalar.ph755 ], [ %indvars.iv283.ph, %scalar.ph755.preheader ] ; 2 uses
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %scalar.ph755 ], [ %indvars.iv279.ph, %scalar.ph755.preheader ] ; 2 uses
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %scalar.ph755 ], [ %indvars.iv275.ph, %scalar.ph755.preheader ] ; 2 uses
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %scalar.ph755 ], [ %indvars.iv271.ph, %scalar.ph755.preheader ] ; 3 uses
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 2 ; 3 uses
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, 2 ; 3 uses
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, -2 ; 3 uses
  %i.kz = add nuw nsw i64 %indvars.iv.next276, %i.cl ; 2 uses
  %i.la = add nsw i64 %indvars.iv271, -2          ; 3 uses
  %i.lb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.la
  %i.lc = load float, ptr %i.lb, align 4          ; 2 uses
  %i.ld = getelementptr [4 x i8], ptr %2, i64 %i.kz ; 2 uses
  %i.le = getelementptr i8, ptr %i.ld, i64 -4
  %i.lf = load float, ptr %i.le, align 4          ; 2 uses
  %i.lg = fmul float %i.lc, %i.lf
  %i.lh = add nsw i64 %indvars.iv271, -1          ; 3 uses
  %i.li = getelementptr inbounds [4 x i8], ptr %4, i64 %i.lh
  %i.lj = load float, ptr %i.li, align 4          ; 2 uses
  %i.lk = load float, ptr %i.ld, align 4          ; 2 uses
  %i.ll = fmul float %i.lj, %i.lk
  %i.lm = fadd float %i.lg, %i.ll                 ; 2 uses
  %i.ln = fmul float %i.lc, %i.lk
  %i.lo = fmul float %i.lf, %i.lj
  %i.lp = fsub float %i.ln, %i.lo                 ; 2 uses
  %i.lq = add nuw nsw i64 %i.kz, %i.cl            ; 2 uses
  %i.lr = getelementptr inbounds [4 x i8], ptr %5, i64 %i.la
  %i.ls = load float, ptr %i.lr, align 4          ; 2 uses
  %i.lt = getelementptr [4 x i8], ptr %2, i64 %i.lq ; 2 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 -4
  %i.lv = load float, ptr %i.lu, align 4          ; 2 uses
  %i.lw = fmul float %i.ls, %i.lv
  %i.lx = getelementptr inbounds [4 x i8], ptr %5, i64 %i.lh
  %i.ly = load float, ptr %i.lx, align 4          ; 2 uses
  %i.lz = load float, ptr %i.lt, align 4          ; 2 uses
  %i.ma = fmul float %i.ly, %i.lz
  %i.mb = fadd float %i.lw, %i.ma                 ; 2 uses
  %i.mc = fmul float %i.ls, %i.lz
  %i.md = fmul float %i.lv, %i.ly
  %i.me = fsub float %i.mc, %i.md                 ; 2 uses
  %i.mf = getelementptr inbounds [4 x i8], ptr %6, i64 %i.la
  %i.mg = load float, ptr %i.mf, align 4          ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.lq ; 2 uses
  %i.mh = getelementptr i8, ptr %gep, i64 -4
  %i.mi = load float, ptr %i.mh, align 4          ; 2 uses
  %i.mj = fmul float %i.mg, %i.mi
  %i.mk = getelementptr inbounds [4 x i8], ptr %6, i64 %i.lh
  %i.ml = load float, ptr %i.mk, align 4          ; 2 uses
  %i.mm = load float, ptr %gep, align 4           ; 2 uses
  %i.mn = fmul float %i.ml, %i.mm
  %i.mo = fadd float %i.mj, %i.mn                 ; 2 uses
  %i.mp = fmul float %i.mg, %i.mm
  %i.mq = fmul float %i.mi, %i.ml
  %i.mr = fsub float %i.mp, %i.mq                 ; 2 uses
  %i.ms = fadd float %i.lm, %i.mo                 ; 2 uses
  %i.mt = fsub float %i.mo, %i.lm                 ; 2 uses
  %i.mu = fadd float %i.lp, %i.mr                 ; 2 uses
  %i.mv = fsub float %i.lp, %i.mr                 ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next276
  %i.mx = load float, ptr %i.mw, align 4          ; 2 uses
  %i.my = fadd float %i.me, %i.mx                 ; 2 uses
  %i.mz = fsub float %i.mx, %i.me                 ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv275
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.nc = load float, ptr %i.nb, align 4          ; 2 uses
  %i.nd = fadd float %i.mb, %i.nc                 ; 2 uses
  %i.ne = fsub float %i.nc, %i.mb                 ; 2 uses
  %i.nf = fadd float %i.ms, %i.nd
  %i.ng = getelementptr [4 x i8], ptr %3, i64 %indvars.iv279
  %i.nh = getelementptr i8, ptr %i.ng, i64 4
  store float %i.nf, ptr %i.nh, align 4
  %i.ni = fadd float %i.my, %i.mu
  %i.nj = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next280
  store float %i.ni, ptr %i.nj, align 4
  %i.nk = fsub float %i.ne, %i.mv
  %i.nl = getelementptr [4 x i8], ptr %3, i64 %indvars.iv283
  %i.nm = getelementptr i8, ptr %i.nl, i64 -12
  store float %i.nk, ptr %i.nm, align 4
  %i.nn = fsub float %i.mt, %i.mz
  %i.no = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next284
  store float %i.nn, ptr %i.no, align 4
  %i.np = fadd float %i.mv, %i.ne
  %gep314 = getelementptr [4 x i8], ptr %invariant.gep313, i64 %indvars.iv.next280 ; 2 uses
  %i.nq = getelementptr i8, ptr %gep314, i64 -4
  store float %i.np, ptr %i.nq, align 4
  %i.nr = fadd float %i.mz, %i.mt
  store float %i.nr, ptr %gep314, align 4
  %i.ns = fsub float %i.nd, %i.ms
  %gep316 = getelementptr [4 x i8], ptr %invariant.gep315, i64 %indvars.iv.next284 ; 2 uses
  %i.nt = getelementptr i8, ptr %gep316, i64 -4
  store float %i.ns, ptr %i.nt, align 4
  %i.nu = fsub float %i.mu, %i.my
  store float %i.nu, ptr %gep316, align 4
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 2 ; 2 uses
  %i.nv = icmp samesign ult i64 %indvars.iv.next272, %i.ck
  br i1 %i.nv, label %scalar.ph755, label %._crit_edge250, !llvm.loop !956

._crit_edge250:                                   ; preds = %scalar.ph755, %middle.block789
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, %i.ck
  %i.nw = add nuw nsw i32 %.1252, 1               ; 2 uses
  %indvars.iv.next278 = add i32 %indvars.iv277, %i.cm
  %indvars.iv.next282 = add i32 %indvars.iv281, %i.cm
end_hunk_7
begin_hunk_8_@dradfg:bb.a
  %scevgep1273 = getelementptr i8, ptr %5, i64 %i.fp
  %scevgep1275 = getelementptr i8, ptr %7, i64 4
  %scevgep1277 = getelementptr i8, ptr %7, i64 %i.fp
  %scevgep1279 = getelementptr i8, ptr %7, i64 4
  %scevgep1281 = getelementptr i8, ptr %7, i64 %i.fp
  %i.fq = add nsw i32 %0, -3                      ; 2 uses
  %i.fr = lshr i32 %i.fq, 1
  %narrow1569 = add nuw i32 %i.fr, 1
  %i.fs = zext i32 %narrow1569 to i64             ; 2 uses
  %min.iters.check1339 = icmp ult i32 %i.fq, 22
  %n.vec1342 = and i64 %i.fs, 4294967292          ; 4 uses
  %i.ft = shl nuw nsw i64 %n.vec1342, 1           ; 2 uses
  %i.fu = trunc nuw i64 %n.vec1342 to i32
  %i.fv = shl i32 %i.fu, 1
  %i.fw = or disjoint i32 %i.fv, 2
  %cmp.n1361 = icmp eq i64 %n.vec1342, %i.fs
  br label %.preheader671.lr.ph

.preheader669:                                    ; preds = %.loopexit675
  br i1 %i.ez, label %.lr.ph749, label %.loopexit670

.lr.ph749:                                        ; preds = %.preheader669
  %i.fx = icmp slt i32 %0, 3
  %i.fy = icmp slt i32 %2, 1
  %brmerge879 = or i1 %i.fx, %i.fy
  br i1 %brmerge879, label %.loopexit670, label %.lr.ph744.preheader

.lr.ph744.preheader:                              ; preds = %.lr.ph749
  %i.fz = add i32 %1, -1
  %i.ga = mul i32 %2, %i.fz
  %i.gb = add i32 %i.ga, -1
  %i.gc = mul i32 %0, %i.gb
  %i.gd = add i32 %i.gc, 2
  %i.ge = zext nneg i32 %0 to i64                 ; 2 uses
  %i.gf = add nsw i32 %2, -1
  %i.gg = mul i32 %0, %i.gf
  %i.gh = add i32 %i.gg, 2
  br label %.lr.ph744

.lr.ph744:                                        ; preds = %.lr.ph744.preheader, %._crit_edge745
  %indvars.iv961 = phi i32 [ %i.gh, %.lr.ph744.preheader ], [ %indvars.iv.next962, %._crit_edge745 ] ; 2 uses
  %indvars.iv955 = phi i32 [ %i.gd, %.lr.ph744.preheader ], [ %indvars.iv.next956, %._crit_edge745 ] ; 2 uses
  %.3553748 = phi i32 [ 1, %.lr.ph744.preheader ], [ %i.hj, %._crit_edge745 ]
  br label %.lr.ph738

.lr.ph738:                                        ; preds = %.lr.ph744, %._crit_edge739
  %indvars.iv963 = phi i32 [ %indvars.iv961, %.lr.ph744 ], [ %indvars.iv.next964, %._crit_edge739 ] ; 2 uses
  %indvars.iv957 = phi i32 [ %indvars.iv955, %.lr.ph744 ], [ %indvars.iv.next958, %._crit_edge739 ] ; 2 uses
  %.2742 = phi i32 [ 2, %.lr.ph744 ], [ %i.hh, %._crit_edge739 ]
  %i.gi = sext i32 %indvars.iv957 to i64
  %i.gj = sext i32 %indvars.iv963 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph738, %bb.d
  %indvars.iv965 = phi i64 [ %i.gj, %.lr.ph738 ], [ %indvars.iv.next966, %bb.d ]
  %indvars.iv959 = phi i64 [ %i.gi, %.lr.ph738 ], [ %indvars.iv.next960, %bb.d ]
  %.3561736 = phi i32 [ 0, %.lr.ph738 ], [ %i.hg, %bb.d ]
  %indvars.iv.next966 = add nsw i64 %indvars.iv965, %i.ge ; 4 uses
  %indvars.iv.next960 = add nsw i64 %indvars.iv959, %i.ge ; 4 uses
  %i.gk = add nsw i64 %indvars.iv.next966, -1     ; 2 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %7, i64 %i.gk ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4
  %i.gn = add nsw i64 %indvars.iv.next960, -1     ; 2 uses
  %i.go = getelementptr inbounds [4 x i8], ptr %7, i64 %i.gn ; 2 uses
  %i.gp = load float, ptr %i.go, align 4
  %i.gq = fadd float %i.gm, %i.gp
  %i.gr = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gk
  store float %i.gq, ptr %i.gr, align 4
  %i.gs = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next966 ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4
  %i.gu = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next960 ; 2 uses
  %i.gv = load float, ptr %i.gu, align 4
  %i.gw = fsub float %i.gt, %i.gv
  %i.gx = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gn
  store float %i.gw, ptr %i.gx, align 4
  %i.gy = load float, ptr %i.gs, align 4
  %i.gz = load float, ptr %i.gu, align 4
  %i.ha = fadd float %i.gy, %i.gz
  %i.hb = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next966
  store float %i.ha, ptr %i.hb, align 4
  %i.hc = load float, ptr %i.go, align 4
  %i.hd = load float, ptr %i.gl, align 4
  %i.he = fsub float %i.hc, %i.hd
  %i.hf = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next960
  store float %i.he, ptr %i.hf, align 4
  %i.hg = add nuw nsw i32 %.3561736, 1            ; 2 uses
  %exitcond970.not = icmp eq i32 %i.hg, %2
  br i1 %exitcond970.not, label %._crit_edge739, label %bb.d, !llvm.loop !992

._crit_edge739:                                   ; preds = %bb.d
  %i.hh = add nuw nsw i32 %.2742, 2               ; 2 uses
  %i.hi = icmp slt i32 %i.hh, %0
  %indvars.iv.next958 = add i32 %indvars.iv957, 2
  %indvars.iv.next964 = add i32 %indvars.iv963, 2
  br i1 %i.hi, label %.lr.ph738, label %._crit_edge745, !llvm.loop !993

._crit_edge745:                                   ; preds = %._crit_edge739
  %i.hj = add nuw nsw i32 %.3553748, 1            ; 2 uses
  %indvars.iv.next956 = sub i32 %indvars.iv955, %i.n
  %indvars.iv.next962 = add i32 %indvars.iv961, %i.n
  %exitcond971.not = icmp eq i32 %i.hj, %i.k
  br i1 %exitcond971.not, label %.loopexit670, label %.lr.ph744, !llvm.loop !994

.preheader671.lr.ph:                              ; preds = %.preheader671.lr.ph.preheader, %._crit_edge728
  %indvars.iv941 = phi i32 [ %i.n, %.preheader671.lr.ph.preheader ], [ %indvars.iv.next942, %._crit_edge728 ] ; 3 uses
  %indvars.iv935 = phi i32 [ %i.fd, %.preheader671.lr.ph.preheader ], [ %indvars.iv.next936, %._crit_edge728 ] ; 3 uses
  %.4554731 = phi i32 [ 1, %.preheader671.lr.ph.preheader ], [ %i.kn, %._crit_edge728 ]
  %i.hk = sext i32 %indvars.iv941 to i64
  %i.hl = shl nsw i64 %i.hk, 2                    ; 6 uses
  %scevgep1260 = getelementptr i8, ptr %scevgep1259, i64 %i.hl ; 5 uses
  %scevgep1262 = getelementptr i8, ptr %scevgep1261, i64 %i.hl ; 5 uses
  %i.hm = sext i32 %indvars.iv935 to i64
  %i.hn = shl nsw i64 %i.hm, 2                    ; 6 uses
  %scevgep1264 = getelementptr i8, ptr %scevgep1263, i64 %i.hn ; 5 uses
  %scevgep1266 = getelementptr i8, ptr %scevgep1265, i64 %i.hn ; 5 uses
  %scevgep1268 = getelementptr i8, ptr %scevgep1267, i64 %i.hl ; 5 uses
  %scevgep1270 = getelementptr i8, ptr %scevgep1269, i64 %i.hl ; 5 uses
  %scevgep1272 = getelementptr i8, ptr %scevgep1271, i64 %i.hn ; 5 uses
  %scevgep1274 = getelementptr i8, ptr %scevgep1273, i64 %i.hn ; 5 uses
  %scevgep1276 = getelementptr i8, ptr %scevgep1275, i64 %i.hn ; 3 uses
  %scevgep1278 = getelementptr i8, ptr %scevgep1277, i64 %i.hn ; 3 uses
  %scevgep1280 = getelementptr i8, ptr %scevgep1279, i64 %i.hl ; 4 uses
  %scevgep1282 = getelementptr i8, ptr %scevgep1281, i64 %i.hl ; 4 uses
  %i.ho = sext i32 %indvars.iv935 to i64
  %i.hp = sext i32 %indvars.iv941 to i64
  %i.hq = insertelement <4 x ptr> poison, ptr %scevgep1276, i64 0 ; 2 uses
  %i.hr = insertelement <4 x ptr> %i.hq, ptr %scevgep1260, i64 1
  %i.hs = insertelement <4 x ptr> %i.hr, ptr %scevgep1268, i64 2
  %i.ht = insertelement <4 x ptr> %i.hs, ptr %scevgep1264, i64 3
  %i.hu = insertelement <4 x ptr> poison, ptr %scevgep1262, i64 0
  %i.hv = insertelement <4 x ptr> %i.hu, ptr %scevgep1282, i64 1
  %i.hw = insertelement <4 x ptr> %i.hv, ptr %scevgep1266, i64 2
  %i.hx = insertelement <4 x ptr> %i.hw, ptr %scevgep1274, i64 3
  %i.hy = insertelement <4 x ptr> poison, ptr %scevgep1260, i64 0
  %i.hz = insertelement <4 x ptr> %i.hy, ptr %scevgep1280, i64 1
  %i.ia = insertelement <4 x ptr> %i.hz, ptr %scevgep1264, i64 2
  %i.ib = insertelement <4 x ptr> %i.ia, ptr %scevgep1272, i64 3
  %i.ic = insertelement <4 x ptr> poison, ptr %scevgep1278, i64 0 ; 2 uses
  %i.id = insertelement <4 x ptr> %i.ic, ptr %scevgep1262, i64 1
  %i.ie = insertelement <4 x ptr> %i.id, ptr %scevgep1270, i64 2
  %i.if = insertelement <4 x ptr> %i.ie, ptr %scevgep1266, i64 3
  %i.ig = insertelement <4 x ptr> %i.hq, ptr %scevgep1264, i64 1
  %i.ih = insertelement <4 x ptr> %i.ig, ptr %scevgep1272, i64 2
  %i.ii = insertelement <4 x ptr> %i.ih, ptr %scevgep1268, i64 3
  %i.ij = insertelement <4 x ptr> poison, ptr %scevgep1266, i64 0
  %i.ik = insertelement <4 x ptr> %i.ij, ptr %scevgep1282, i64 1
  %i.il = insertelement <4 x ptr> %i.ik, ptr %scevgep1270, i64 2
  %i.im = insertelement <4 x ptr> %i.il, ptr %scevgep1278, i64 3
  %i.in = insertelement <4 x ptr> poison, ptr %scevgep1264, i64 0
  %i.io = insertelement <4 x ptr> %i.in, ptr %scevgep1280, i64 1
  %i.ip = insertelement <4 x ptr> %i.io, ptr %scevgep1268, i64 2
  %i.iq = insertelement <4 x ptr> %i.ip, ptr %scevgep1276, i64 3
  %i.ir = insertelement <4 x ptr> %i.ic, ptr %scevgep1266, i64 1
  %i.is = insertelement <4 x ptr> %i.ir, ptr %scevgep1274, i64 2
  %i.it = insertelement <4 x ptr> %i.is, ptr %scevgep1270, i64 3
  %bound01283 = icmp ult ptr %scevgep1260, %scevgep1266
  %bound11284 = icmp ult ptr %scevgep1264, %scevgep1262
  %found.conflict1285 = and i1 %bound01283, %bound11284
  %bound01286 = icmp ult ptr %scevgep1260, %scevgep1270
  %bound11287 = icmp ult ptr %scevgep1268, %scevgep1262
  %found.conflict1288 = and i1 %bound01286, %bound11287
  %bound01290 = icmp ult ptr %scevgep1260, %scevgep1274
  %bound11291 = icmp ult ptr %scevgep1272, %scevgep1262
  %found.conflict1292 = and i1 %bound01290, %bound11291
  %i.iu = icmp ult <4 x ptr> %i.ib, %i.if
  %i.iv = icmp ult <4 x ptr> %i.ht, %i.hx
  %i.iw = and <4 x i1> %i.iv, %i.iu
  %i.ix = icmp ult <4 x ptr> %i.iq, %i.it
  %i.iy = icmp ult <4 x ptr> %i.ii, %i.im
  %i.iz = and <4 x i1> %i.iy, %i.ix
  %bound01326 = icmp ult ptr %scevgep1268, %scevgep1282
  %bound11327 = icmp ult ptr %scevgep1280, %scevgep1270
  %found.conflict1328 = and i1 %bound01326, %bound11327
  %bound01330 = icmp ult ptr %scevgep1272, %scevgep1278
  %bound11331 = icmp ult ptr %scevgep1276, %scevgep1274
  %found.conflict1332 = and i1 %bound01330, %bound11331
  %bound01334 = icmp ult ptr %scevgep1272, %scevgep1282
  %bound11335 = icmp ult ptr %scevgep1280, %scevgep1274
  %found.conflict1336 = and i1 %bound01334, %bound11335
  %rdx.op = or <4 x i1> %i.iw, %i.iz
  %i.ja = bitcast <4 x i1> %rdx.op to i4
  %i.jb = icmp ne i4 %i.ja, 0
  %op.rdx = or i1 %i.jb, %found.conflict1285
  %op.rdx1573 = or i1 %found.conflict1288, %found.conflict1292
  %op.rdx1574 = or i1 %found.conflict1328, %found.conflict1332
  %op.rdx1575 = or i1 %op.rdx, %op.rdx1573
  %op.rdx1576 = or i1 %op.rdx1574, %found.conflict1336
  %op.rdx1577 = or i1 %op.rdx1575, %op.rdx1576
  br label %.preheader671

.preheader671:                                    ; preds = %.preheader671.lr.ph, %._crit_edge724
  %indvars.iv943 = phi i64 [ %i.hp, %.preheader671.lr.ph ], [ %indvars.iv.next944, %._crit_edge724 ] ; 4 uses
  %indvars.iv937 = phi i64 [ %i.ho, %.preheader671.lr.ph ], [ %indvars.iv.next938, %._crit_edge724 ] ; 4 uses
  %.4562727 = phi i32 [ 0, %.preheader671.lr.ph ], [ %i.km, %._crit_edge724 ]
  %brmerge1654 = select i1 %min.iters.check1339, i1 true, i1 %op.rdx1577
  br i1 %brmerge1654, label %scalar.ph1338.preheader, label %vector.ph1340

vector.ph1340:                                    ; preds = %.preheader671
  %i.jc = add i64 %indvars.iv943, %i.ft
  %i.jd = add i64 %indvars.iv937, %i.ft
  %invariant.op1616 = add nuw i64 %indvars.iv943, 1
  %invariant.op1618 = add i64 %indvars.iv937, 1
  br label %vector.body1343

vector.body1343:                                  ; preds = %vector.body1343, %vector.ph1340
  %index1344 = phi i64 [ 0, %vector.ph1340 ], [ %index.next1359, %vector.body1343 ] ; 2 uses
  %i.je = shl i64 %index1344, 1                   ; 2 uses
  %.reass1617 = add nuw i64 %i.je, %invariant.op1616 ; 2 uses
  %i.jf = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1617 ; 2 uses
  %wide.vec1345 = load <8 x float>, ptr %i.jf, align 4, !alias.scope !995 ; 2 uses
  %strided.vec1346 = shufflevector <8 x float> %wide.vec1345, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1347 = shufflevector <8 x float> %wide.vec1345, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %.reass1619 = add i64 %i.je, %invariant.op1618  ; 2 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1619 ; 2 uses
  %wide.vec1348 = load <8 x float>, ptr %i.jg, align 4, !alias.scope !998 ; 2 uses
  %strided.vec1349 = shufflevector <8 x float> %wide.vec1348, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1350 = shufflevector <8 x float> %wide.vec1348, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.jh = fadd <4 x float> %strided.vec1346, %strided.vec1349
  %i.ji = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1617
  %i.jj = fsub <4 x float> %strided.vec1347, %strided.vec1350
  %i.jk = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1619
  %wide.vec1351 = load <8 x float>, ptr %i.jf, align 4, !alias.scope !995 ; 2 uses
  %strided.vec1352 = shufflevector <8 x float> %wide.vec1351, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1353 = shufflevector <8 x float> %wide.vec1351, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1354 = load <8 x float>, ptr %i.jg, align 4, !alias.scope !998 ; 2 uses
  %strided.vec1355 = shufflevector <8 x float> %wide.vec1354, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1356 = shufflevector <8 x float> %wide.vec1354, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.jl = fadd <4 x float> %strided.vec1353, %strided.vec1356
  %interleaved.vec1357 = shufflevector <4 x float> %i.jh, <4 x float> %i.jl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1357, ptr %i.ji, align 4
  %i.jm = fsub <4 x float> %strided.vec1355, %strided.vec1352
  %interleaved.vec1358 = shufflevector <4 x float> %i.jj, <4 x float> %i.jm, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1358, ptr %i.jk, align 4
  %index.next1359 = add nuw i64 %index1344, 4     ; 2 uses
  %i.jn = icmp eq i64 %index.next1359, %n.vec1342
  br i1 %i.jn, label %middle.block1360, label %vector.body1343, !llvm.loop !1000

middle.block1360:                                 ; preds = %vector.body1343
  br i1 %cmp.n1361, label %._crit_edge724, label %scalar.ph1338.preheader

scalar.ph1338.preheader:                          ; preds = %.preheader671, %middle.block1360
  %indvars.iv945.ph = phi i64 [ %i.jc, %middle.block1360 ], [ %indvars.iv943, %.preheader671 ]
  %indvars.iv939.ph = phi i64 [ %i.jd, %middle.block1360 ], [ %indvars.iv937, %.preheader671 ]
  %.3722.ph = phi i32 [ %i.fw, %middle.block1360 ], [ 2, %.preheader671 ]
  br label %scalar.ph1338

scalar.ph1338:                                    ; preds = %scalar.ph1338.preheader, %scalar.ph1338
  %indvars.iv945 = phi i64 [ %indvars.iv.next946, %scalar.ph1338 ], [ %indvars.iv945.ph, %scalar.ph1338.preheader ] ; 2 uses
  %indvars.iv939 = phi i64 [ %indvars.iv.next940, %scalar.ph1338 ], [ %indvars.iv939.ph, %scalar.ph1338.preheader ] ; 2 uses
  %.3722 = phi i32 [ %i.kk, %scalar.ph1338 ], [ %.3722.ph, %scalar.ph1338.preheader ]
  %indvars.iv.next946 = add nuw nsw i64 %indvars.iv945, 2 ; 3 uses
  %indvars.iv.next940 = add nsw i64 %indvars.iv939, 2 ; 3 uses
  %i.jo = add nuw nsw i64 %indvars.iv945, 1       ; 2 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %7, i64 %i.jo ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4
  %i.jr = add nsw i64 %indvars.iv939, 1           ; 2 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %7, i64 %i.jr ; 2 uses
  %i.jt = load float, ptr %i.js, align 4
  %i.ju = fadd float %i.jq, %i.jt
  %i.jv = getelementptr inbounds [4 x i8], ptr %5, i64 %i.jo
  store float %i.ju, ptr %i.jv, align 4
  %i.jw = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next946 ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4
  %i.jy = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next940 ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4
  %i.ka = fsub float %i.jx, %i.jz
  %i.kb = getelementptr inbounds [4 x i8], ptr %5, i64 %i.jr
  store float %i.ka, ptr %i.kb, align 4
  %i.kc = load float, ptr %i.jw, align 4
  %i.kd = load float, ptr %i.jy, align 4
  %i.ke = fadd float %i.kc, %i.kd
  %i.kf = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next946
  store float %i.ke, ptr %i.kf, align 4
  %i.kg = load float, ptr %i.js, align 4
  %i.kh = load float, ptr %i.jp, align 4
  %i.ki = fsub float %i.kg, %i.kh
  %i.kj = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next940
  store float %i.ki, ptr %i.kj, align 4
  %i.kk = add nuw nsw i32 %.3722, 2               ; 2 uses
  %i.kl = icmp slt i32 %i.kk, %0
  br i1 %i.kl, label %scalar.ph1338, label %._crit_edge724, !llvm.loop !1001

._crit_edge724:                                   ; preds = %scalar.ph1338, %middle.block1360
  %indvars.iv.next944 = add i64 %indvars.iv943, %i.fe
  %indvars.iv.next938 = add i64 %indvars.iv937, %i.fe
  %i.km = add nuw nsw i32 %.4562727, 1            ; 2 uses
  %exitcond953.not = icmp eq i32 %i.km, %2
  br i1 %exitcond953.not, label %._crit_edge728, label %.preheader671, !llvm.loop !1002

._crit_edge728:                                   ; preds = %._crit_edge724
  %i.kn = add nuw nsw i32 %.4554731, 1            ; 2 uses
  %indvars.iv.next936 = sub i32 %indvars.iv935, %i.n
  %indvars.iv.next942 = add i32 %indvars.iv941, %i.n
  %exitcond954.not = icmp eq i32 %i.kn, %i.k
  br i1 %exitcond954.not, label %.loopexit670, label %.preheader671.lr.ph, !llvm.loop !1003

.loopexit670:                                     ; preds = %._crit_edge728, %._crit_edge745, %.lr.ph749, %.lr.ph732, %.preheader672, %.preheader669, %bb.a
  %i.ko = icmp sgt i32 %3, 0                      ; 3 uses
  br i1 %i.ko, label %.lr.ph753.preheader, label %._crit_edge754

.lr.ph753.preheader:                              ; preds = %.loopexit670
  %wide.trip.count975 = zext nneg i32 %3 to i64   ; 5 uses
  %min.iters.check1368 = icmp ult i32 %3, 8
  %i.kp = sub i64 %i.b, %i.a
  %diff.check1366 = icmp ugt i64 %i.kp, -32
  %or.cond1571 = or i1 %min.iters.check1368, %diff.check1366
  br i1 %or.cond1571, label %.lr.ph753.preheader1581, label %vector.ph1369

vector.ph1369:                                    ; preds = %.lr.ph753.preheader
  %n.vec1371 = and i64 %wide.trip.count975, 2147483640 ; 3 uses
  br label %vector.body1372

vector.body1372:                                  ; preds = %vector.body1372, %vector.ph1369
  %index1373 = phi i64 [ 0, %vector.ph1369 ], [ %index.next1376, %vector.body1372 ] ; 3 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index1373 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %wide.load1374 = load <4 x float>, ptr %i.kq, align 4
  %wide.load1375 = load <4 x float>, ptr %i.kr, align 4
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index1373 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store <4 x float> %wide.load1374, ptr %i.ks, align 4
  store <4 x float> %wide.load1375, ptr %i.kt, align 4
  %index.next1376 = add nuw i64 %index1373, 8     ; 2 uses
  %i.ku = icmp eq i64 %index.next1376, %n.vec1371
  br i1 %i.ku, label %middle.block1377, label %vector.body1372, !llvm.loop !1004

middle.block1377:                                 ; preds = %vector.body1372
  %cmp.n1378 = icmp eq i64 %n.vec1371, %wide.trip.count975
  br i1 %cmp.n1378, label %._crit_edge754, label %.lr.ph753.preheader1581

.lr.ph753.preheader1581:                          ; preds = %.lr.ph753.preheader, %middle.block1377
  %indvars.iv972.ph = phi i64 [ 0, %.lr.ph753.preheader ], [ %n.vec1371, %middle.block1377 ] ; 3 uses
  %xtraiter1588 = and i64 %wide.trip.count975, 3  ; 2 uses
  %lcmp.mod1589.not = icmp eq i64 %xtraiter1588, 0
  br i1 %lcmp.mod1589.not, label %.lr.ph753.prol.loopexit, label %.lr.ph753.prol

.lr.ph753.prol:                                   ; preds = %.lr.ph753.preheader1581, %.lr.ph753.prol
  %indvars.iv972.prol = phi i64 [ %indvars.iv.next973.prol, %.lr.ph753.prol ], [ %indvars.iv972.ph, %.lr.ph753.preheader1581 ] ; 3 uses
  %prol.iter1590 = phi i64 [ %prol.iter1590.next, %.lr.ph753.prol ], [ 0, %.lr.ph753.preheader1581 ]
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv972.prol
  %i.kw = load float, ptr %i.kv, align 4
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv972.prol
  store float %i.kw, ptr %i.kx, align 4
  %indvars.iv.next973.prol = add nuw nsw i64 %indvars.iv972.prol, 1 ; 2 uses
  %prol.iter1590.next = add i64 %prol.iter1590, 1 ; 2 uses
  %prol.iter1590.cmp.not = icmp eq i64 %prol.iter1590.next, %xtraiter1588
  br i1 %prol.iter1590.cmp.not, label %.lr.ph753.prol.loopexit, label %.lr.ph753.prol, !llvm.loop !1005

.lr.ph753.prol.loopexit:                          ; preds = %.lr.ph753.prol, %.lr.ph753.preheader1581
  %indvars.iv972.unr = phi i64 [ %indvars.iv972.ph, %.lr.ph753.preheader1581 ], [ %indvars.iv.next973.prol, %.lr.ph753.prol ]
  %i.ky = sub nsw i64 %indvars.iv972.ph, %wide.trip.count975
  %i.kz = icmp ugt i64 %i.ky, -4
  br i1 %i.kz, label %._crit_edge754, label %.lr.ph753

.lr.ph753:                                        ; preds = %.lr.ph753.prol.loopexit, %.lr.ph753
  %indvars.iv972 = phi i64 [ %indvars.iv.next973.3, %.lr.ph753 ], [ %indvars.iv972.unr, %.lr.ph753.prol.loopexit ] ; 6 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv972
  %i.lb = load float, ptr %i.la, align 4
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv972
  store float %i.lb, ptr %i.lc, align 4
  %indvars.iv.next973 = add nuw nsw i64 %indvars.iv972, 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next973
  %i.le = load float, ptr %i.ld, align 4
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next973
  store float %i.le, ptr %i.lf, align 4
  %indvars.iv.next973.1 = add nuw nsw i64 %indvars.iv972, 2 ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next973.1
  %i.lh = load float, ptr %i.lg, align 4
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next973.1
  store float %i.lh, ptr %i.li, align 4
  %indvars.iv.next973.2 = add nuw nsw i64 %indvars.iv972, 3 ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next973.2
  %i.lk = load float, ptr %i.lj, align 4
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next973.2
  store float %i.lk, ptr %i.ll, align 4
  %indvars.iv.next973.3 = add nuw nsw i64 %indvars.iv972, 4 ; 2 uses
  %exitcond976.not.3 = icmp eq i64 %indvars.iv.next973.3, %wide.trip.count975
  br i1 %exitcond976.not.3, label %._crit_edge754, label %.lr.ph753, !llvm.loop !1006

._crit_edge754:                                   ; preds = %.lr.ph753.prol.loopexit, %.lr.ph753, %middle.block1377, %.loopexit670
  %i.lm = icmp sgt i32 %i.k, 1                    ; 4 uses
  %i.ln = icmp sgt i32 %2, 0                      ; 2 uses
  %or.cond880 = and i1 %i.lm, %i.ln               ; 2 uses
  br i1 %or.cond880, label %.lr.ph759.preheader, label %._crit_edge766.split

.lr.ph759.preheader:                              ; preds = %._crit_edge754
  %i.lo = mul i32 %3, %1                          ; 2 uses
  %i.lp = add nsw i32 %2, -1                      ; 3 uses
  %i.lq = mul i32 %0, %i.lp
  %i.lr = sext i32 %0 to i64                      ; 6 uses
  %i.ls = xor i32 %2, -1
  %i.lt = mul i32 %0, %i.ls
  %i.lu = add i32 %i.lo, %i.lt
  %scevgep1383 = getelementptr i8, ptr %5, i64 4
  %i.lv = zext i32 %i.lp to i64
  %i.lw = shl nuw nsw i64 %i.lv, 2
  %i.lx = add nuw nsw i64 %i.lw, 8                ; 4 uses
  %scevgep1385 = getelementptr i8, ptr %5, i64 %i.lx
  %scevgep1387 = getelementptr i8, ptr %5, i64 4
  %i.ly = xor i32 %2, -1
  %i.lz = add i32 %i.lo, %i.ly
  %scevgep1389 = getelementptr i8, ptr %5, i64 %i.lx
  %scevgep1391 = getelementptr i8, ptr %7, i64 4
  %scevgep1393 = getelementptr i8, ptr %7, i64 %i.lx
  %scevgep1395 = getelementptr i8, ptr %7, i64 4
  %scevgep1397 = getelementptr i8, ptr %7, i64 %i.lx
  %i.ma = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check1419 = icmp ugt i32 %2, 7
end_hunk_8
begin_hunk_9_@dradfg:bb.a
  %indvars.iv1023.ph = phi i64 [ %i.pt, %vector.memcheck1435 ], [ %i.pt, %.lr.ph780 ], [ %i.qo, %middle.block1481 ]
  %indvars.iv1021.ph = phi i64 [ %i.rb, %vector.memcheck1435 ], [ %i.rb, %.lr.ph780 ], [ %i.rm, %middle.block1481 ]
  %indvars.iv1017.ph = phi i64 [ %i.ra, %vector.memcheck1435 ], [ %i.ra, %.lr.ph780 ], [ %i.rn, %middle.block1481 ]
  %.3573778.ph = phi i32 [ 0, %vector.memcheck1435 ], [ 0, %.lr.ph780 ], [ %i.ph, %middle.block1481 ]
  br label %scalar.ph1467

scalar.ph1467:                                    ; preds = %scalar.ph1467.preheader, %scalar.ph1467
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %scalar.ph1467 ], [ %indvars.iv1025.ph, %scalar.ph1467.preheader ] ; 2 uses
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %scalar.ph1467 ], [ %indvars.iv1023.ph, %scalar.ph1467.preheader ] ; 2 uses
  %indvars.iv1021 = phi i64 [ %indvars.iv.next1022, %scalar.ph1467 ], [ %indvars.iv1021.ph, %scalar.ph1467.preheader ] ; 2 uses
  %indvars.iv1017 = phi i64 [ %indvars.iv.next1018, %scalar.ph1467 ], [ %indvars.iv1017.ph, %scalar.ph1467.preheader ] ; 2 uses
  %.3573778 = phi i32 [ %i.sf, %scalar.ph1467 ], [ %.3573778.ph, %scalar.ph1467.preheader ]
  %indvars.iv.next1022 = add nsw i64 %indvars.iv1021, 1
  %i.rt = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1021
  %i.ru = load float, ptr %i.rt, align 4
  %i.rv = fmul float %i.re, %i.ru
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, 1
  %i.rw = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1025 ; 2 uses
  %i.rx = load float, ptr %i.rw, align 4
  %i.ry = fadd float %i.rx, %i.rv
  store float %i.ry, ptr %i.rw, align 4
  %indvars.iv.next1018 = add nsw i64 %indvars.iv1017, 1
  %i.rz = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1017
  %i.sa = load float, ptr %i.rz, align 4
  %i.sb = fmul float %i.rh, %i.sa
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, 1
  %i.sc = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1023 ; 2 uses
  %i.sd = load float, ptr %i.sc, align 4
  %i.se = fadd float %i.sd, %i.sb
  store float %i.se, ptr %i.sc, align 4
  %i.sf = add nuw nsw i32 %.3573778, 1            ; 2 uses
  %exitcond1034.not = icmp eq i32 %i.sf, %3
  br i1 %exitcond1034.not, label %._crit_edge781, label %scalar.ph1467, !llvm.loop !1035

._crit_edge781:                                   ; preds = %scalar.ph1467, %middle.block1481
  %i.sg = add nuw nsw i32 %.6556786, 1            ; 2 uses
  %indvars.iv.next1016 = sub i32 %indvars.iv1015, %3
  %indvars.iv.next1020 = add i32 %indvars.iv1019, %3
  %exitcond1035.not = icmp eq i32 %i.sg, %i.k
  br i1 %exitcond1035.not, label %._crit_edge788.split, label %.lr.ph780, !llvm.loop !1036

._crit_edge788.split:                             ; preds = %._crit_edge781, %bb.e, %.preheader668
  %i.sh = add nuw nsw i32 %.0569793, 1            ; 2 uses
  %indvars.iv.next993 = add i32 %indvars.iv992, %3
  %indvars.iv.next1001 = sub i32 %indvars.iv1000, %3
  %exitcond1036.not = icmp eq i32 %i.sh, %i.k
  br i1 %exitcond1036.not, label %.preheader667, label %bb.e, !llvm.loop !1037

.lr.ph799:                                        ; preds = %.lr.ph799.preheader, %._crit_edge800
  %indvars.iv1039 = phi i32 [ %3, %.lr.ph799.preheader ], [ %indvars.iv.next1040, %._crit_edge800 ] ; 3 uses
  %.7557802 = phi i32 [ 1, %.lr.ph799.preheader ], [ %i.tk, %._crit_edge800 ]
  %i.si = zext i32 %indvars.iv1039 to i64         ; 4 uses
  br i1 %min.iters.check1533, label %scalar.ph1532.preheader, label %vector.memcheck1524

vector.memcheck1524:                              ; preds = %.lr.ph799
  %i.sj = zext i32 %indvars.iv1039 to i64
  %i.sk = shl nuw nsw i64 %i.sj, 2                ; 2 uses
  %scevgep1528 = getelementptr i8, ptr %scevgep1527, i64 %i.sk
  %scevgep1526 = getelementptr nuw i8, ptr %6, i64 %i.sk
  %bound01529 = icmp ult ptr %8, %scevgep1528
  %bound11530 = icmp ult ptr %scevgep1526, %scevgep1525
  %found.conflict1531 = and i1 %bound01529, %bound11530
  br i1 %found.conflict1531, label %scalar.ph1532.preheader, label %vector.ph1534

vector.ph1534:                                    ; preds = %vector.memcheck1524
  %i.sl = add nuw nsw i64 %n.vec1536, %i.si
  %invariant.gep1652 = getelementptr [4 x i8], ptr %6, i64 %i.si
  br label %vector.body1537

vector.body1537:                                  ; preds = %vector.body1537, %vector.ph1534
  %index1538 = phi i64 [ 0, %vector.ph1534 ], [ %index.next1543, %vector.body1537 ] ; 3 uses
  %gep1653 = getelementptr [4 x i8], ptr %invariant.gep1652, i64 %index1538 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %gep1653, i64 16
  %wide.load1539 = load <4 x float>, ptr %gep1653, align 4, !alias.scope !1038
  %wide.load1540 = load <4 x float>, ptr %i.sm, align 4, !alias.scope !1038
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index1538 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 16 ; 2 uses
  %wide.load1541 = load <4 x float>, ptr %i.sn, align 4, !alias.scope !1041, !noalias !1038
  %wide.load1542 = load <4 x float>, ptr %i.so, align 4, !alias.scope !1041, !noalias !1038
  %i.sp = fadd <4 x float> %wide.load1539, %wide.load1541
  %i.sq = fadd <4 x float> %wide.load1540, %wide.load1542
  store <4 x float> %i.sp, ptr %i.sn, align 4, !alias.scope !1041, !noalias !1038
  store <4 x float> %i.sq, ptr %i.so, align 4, !alias.scope !1041, !noalias !1038
  %index.next1543 = add nuw i64 %index1538, 8     ; 2 uses
  %i.sr = icmp eq i64 %index.next1543, %n.vec1536
  br i1 %i.sr, label %middle.block1544, label %vector.body1537, !llvm.loop !1043

middle.block1544:                                 ; preds = %vector.body1537
  br i1 %cmp.n1545, label %._crit_edge800, label %scalar.ph1532.preheader

scalar.ph1532.preheader:                          ; preds = %vector.memcheck1524, %.lr.ph799, %middle.block1544
  %indvars.iv1041.ph = phi i64 [ %i.si, %vector.memcheck1524 ], [ %i.si, %.lr.ph799 ], [ %i.sl, %middle.block1544 ] ; 3 uses
  %indvars.iv1037.ph = phi i64 [ 0, %vector.memcheck1524 ], [ 0, %.lr.ph799 ], [ %n.vec1536, %middle.block1544 ] ; 4 uses
  br i1 %lcmp.mod1595.not, label %scalar.ph1532.prol.loopexit, label %scalar.ph1532.prol

scalar.ph1532.prol:                               ; preds = %scalar.ph1532.preheader
  %indvars.iv.next1042.prol = add nuw nsw i64 %indvars.iv1041.ph, 1
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1041.ph
  %i.st = load float, ptr %i.ss, align 4
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1037.ph ; 2 uses
  %i.sv = load float, ptr %i.su, align 4
  %i.sw = fadd float %i.st, %i.sv
  store float %i.sw, ptr %i.su, align 4
  %indvars.iv.next1038.prol = or disjoint i64 %indvars.iv1037.ph, 1
  br label %scalar.ph1532.prol.loopexit

scalar.ph1532.prol.loopexit:                      ; preds = %scalar.ph1532.prol, %scalar.ph1532.preheader
  %indvars.iv1041.unr = phi i64 [ %indvars.iv1041.ph, %scalar.ph1532.preheader ], [ %indvars.iv.next1042.prol, %scalar.ph1532.prol ]
  %indvars.iv1037.unr = phi i64 [ %indvars.iv1037.ph, %scalar.ph1532.preheader ], [ %indvars.iv.next1038.prol, %scalar.ph1532.prol ]
  %i.sx = icmp eq i64 %indvars.iv1037.ph, %i.pj
  br i1 %i.sx, label %._crit_edge800, label %scalar.ph1532

scalar.ph1532:                                    ; preds = %scalar.ph1532.prol.loopexit, %scalar.ph1532
  %indvars.iv1041 = phi i64 [ %indvars.iv.next1042.1, %scalar.ph1532 ], [ %indvars.iv1041.unr, %scalar.ph1532.prol.loopexit ] ; 3 uses
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038.1, %scalar.ph1532 ], [ %indvars.iv1037.unr, %scalar.ph1532.prol.loopexit ] ; 3 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1041
  %i.sz = load float, ptr %i.sy, align 4
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1037 ; 2 uses
  %i.tb = load float, ptr %i.ta, align 4
  %i.tc = fadd float %i.sz, %i.tb
  store float %i.tc, ptr %i.ta, align 4
  %indvars.iv.next1042.1 = add nuw nsw i64 %indvars.iv1041, 2
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1041
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %i.tf = load float, ptr %i.te, align 4
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1037
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 4 ; 2 uses
  %i.ti = load float, ptr %i.th, align 4
  %i.tj = fadd float %i.tf, %i.ti
  store float %i.tj, ptr %i.th, align 4
  %indvars.iv.next1038.1 = add nuw nsw i64 %indvars.iv1037, 2 ; 2 uses
  %exitcond1047.not.1 = icmp eq i64 %indvars.iv.next1038.1, %wide.trip.count1046
  br i1 %exitcond1047.not.1, label %._crit_edge800, label %scalar.ph1532, !llvm.loop !1044

._crit_edge800:                                   ; preds = %scalar.ph1532.prol.loopexit, %scalar.ph1532, %middle.block1544
  %i.tk = add nuw nsw i32 %.7557802, 1            ; 2 uses
  %indvars.iv.next1040 = add i32 %indvars.iv1039, %3
  %exitcond1048.not = icmp eq i32 %i.tk, %i.k
  br i1 %exitcond1048.not, label %._crit_edge804.split, label %.lr.ph799, !llvm.loop !1045

._crit_edge804.split:                             ; preds = %._crit_edge800, %._crit_edge766.split, %.preheader667
  %i.tl = icmp slt i32 %0, %2
  %i.tm = icmp sgt i32 %0, 0
  %or.cond886 = and i1 %i.tm, %i.ln               ; 2 uses
  br i1 %i.tl, label %.preheader662, label %.preheader665

.preheader665:                                    ; preds = %._crit_edge804.split
  br i1 %or.cond886, label %.preheader664.preheader, label %.loopexit663

.preheader664.preheader:                          ; preds = %.preheader665
  %i.tn = zext nneg i32 %0 to i64                 ; 4 uses
  %i.to = sext i32 %i.o to i64                    ; 2 uses
  %i.tp = add nsw i32 %2, -1
  %i.tq = zext i32 %i.tp to i64                   ; 2 uses
  %i.tr = mul nsw i64 %i.to, %i.tq
  %i.ts = zext i32 %i.l to i64                    ; 2 uses
  %i.tt = add i64 %i.tr, %i.ts
  %i.tu = shl i64 %i.tt, 2
  %i.tv = getelementptr i8, ptr %4, i64 %i.tu
  %scevgep1549 = getelementptr i8, ptr %i.tv, i64 4
  %i.tw = mul nuw nsw i64 %i.tn, %i.tq
  %i.tx = add nuw i64 %i.tw, %i.ts
  %i.ty = shl i64 %i.tx, 2
  %i.tz = getelementptr i8, ptr %7, i64 %i.ty
  %scevgep1550 = getelementptr i8, ptr %i.tz, i64 4
  %min.iters.check1555 = icmp ult i32 %0, 8
  %bound01551 = icmp ult ptr %4, %scevgep1550
  %bound11552 = icmp ult ptr %7, %scevgep1549
  %found.conflict1553 = and i1 %bound01551, %bound11552
  %stride.check = icmp slt i32 %i.o, 0
  %i.ua = or i1 %found.conflict1553, %stride.check
  %n.vec1558 = and i64 %i.tn, 2147483640          ; 5 uses
  %i.ub = trunc nuw nsw i64 %n.vec1558 to i32
  %cmp.n1565 = icmp eq i64 %n.vec1558, %i.tn
  br label %.preheader664

.preheader662:                                    ; preds = %._crit_edge804.split
  br i1 %or.cond886, label %.preheader661.preheader, label %.loopexit663

.preheader661.preheader:                          ; preds = %.preheader662
  %i.uc = zext nneg i32 %0 to i64                 ; 6 uses
  %i.ud = sext i32 %i.o to i64                    ; 5 uses
  %i.ue = add nsw i32 %2, -1
  %xtraiter1601 = and i32 %2, 3                   ; 3 uses
  %i.uf = icmp ult i32 %i.ue, 3
  %unroll_iter1605 = and i32 %2, 2147483644
  %lcmp.mod1603.not = icmp eq i32 %xtraiter1601, 0
  %lcmp.mod1604 = icmp ne i32 %xtraiter1601, 0
  br label %.preheader661

.preheader664:                                    ; preds = %.preheader664.preheader, %._crit_edge809
  %indvars.iv1054 = phi i64 [ 0, %.preheader664.preheader ], [ %indvars.iv.next1055, %._crit_edge809 ] ; 4 uses
  %indvars.iv1050 = phi i64 [ 0, %.preheader664.preheader ], [ %indvars.iv.next1051, %._crit_edge809 ] ; 4 uses
  %.6564812 = phi i32 [ 0, %.preheader664.preheader ], [ %i.vp, %._crit_edge809 ]
  %brmerge1655 = select i1 %min.iters.check1555, i1 true, i1 %i.ua
  br i1 %brmerge1655, label %scalar.ph1554.preheader, label %vector.ph1556

vector.ph1556:                                    ; preds = %.preheader664
  %i.ug = add i64 %indvars.iv1054, %n.vec1558
  %i.uh = add nuw i64 %indvars.iv1050, %n.vec1558
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1050
  %i.uj = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1054
  br label %vector.body1559

vector.body1559:                                  ; preds = %vector.body1559, %vector.ph1556
  %index1560 = phi i64 [ 0, %vector.ph1556 ], [ %index.next1563, %vector.body1559 ] ; 3 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %index1560 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %wide.load1561 = load <4 x float>, ptr %i.uk, align 4, !alias.scope !1046
  %wide.load1562 = load <4 x float>, ptr %i.ul, align 4, !alias.scope !1046
  %i.um = getelementptr [4 x i8], ptr %i.uj, i64 %index1560 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  store <4 x float> %wide.load1561, ptr %i.um, align 4, !alias.scope !1049, !noalias !1046
  store <4 x float> %wide.load1562, ptr %i.un, align 4, !alias.scope !1049, !noalias !1046
  %index.next1563 = add nuw i64 %index1560, 8     ; 2 uses
  %i.uo = icmp eq i64 %index.next1563, %n.vec1558
  br i1 %i.uo, label %middle.block1564, label %vector.body1559, !llvm.loop !1051

middle.block1564:                                 ; preds = %vector.body1559
  br i1 %cmp.n1565, label %._crit_edge809, label %scalar.ph1554.preheader

scalar.ph1554.preheader:                          ; preds = %.preheader664, %middle.block1564
  %indvars.iv1056.ph = phi i64 [ %i.ug, %middle.block1564 ], [ %indvars.iv1054, %.preheader664 ] ; 2 uses
  %indvars.iv1052.ph = phi i64 [ %i.uh, %middle.block1564 ], [ %indvars.iv1050, %.preheader664 ] ; 2 uses
  %.4807.ph = phi i32 [ %i.ub, %middle.block1564 ], [ 0, %.preheader664 ] ; 4 uses
  %i.up = sub i32 %0, %.4807.ph
  %xtraiter1597 = and i32 %i.up, 3                ; 2 uses
  %lcmp.mod1598.not = icmp eq i32 %xtraiter1597, 0
  br i1 %lcmp.mod1598.not, label %scalar.ph1554.prol.loopexit, label %scalar.ph1554.prol

scalar.ph1554.prol:                               ; preds = %scalar.ph1554.preheader, %scalar.ph1554.prol
  %indvars.iv1056.prol = phi i64 [ %indvars.iv.next1057.prol, %scalar.ph1554.prol ], [ %indvars.iv1056.ph, %scalar.ph1554.preheader ] ; 2 uses
  %indvars.iv1052.prol = phi i64 [ %indvars.iv.next1053.prol, %scalar.ph1554.prol ], [ %indvars.iv1052.ph, %scalar.ph1554.preheader ] ; 2 uses
  %.4807.prol = phi i32 [ %i.ut, %scalar.ph1554.prol ], [ %.4807.ph, %scalar.ph1554.preheader ]
  %prol.iter1599 = phi i32 [ %prol.iter1599.next, %scalar.ph1554.prol ], [ 0, %scalar.ph1554.preheader ]
  %indvars.iv.next1053.prol = add nuw nsw i64 %indvars.iv1052.prol, 1 ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052.prol
  %i.ur = load float, ptr %i.uq, align 4
  %indvars.iv.next1057.prol = add nsw i64 %indvars.iv1056.prol, 1 ; 2 uses
  %i.us = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1056.prol
  store float %i.ur, ptr %i.us, align 4
  %i.ut = add nuw nsw i32 %.4807.prol, 1          ; 2 uses
  %prol.iter1599.next = add i32 %prol.iter1599, 1 ; 2 uses
  %prol.iter1599.cmp.not = icmp eq i32 %prol.iter1599.next, %xtraiter1597
  br i1 %prol.iter1599.cmp.not, label %scalar.ph1554.prol.loopexit, label %scalar.ph1554.prol, !llvm.loop !1052

scalar.ph1554.prol.loopexit:                      ; preds = %scalar.ph1554.prol, %scalar.ph1554.preheader
  %indvars.iv1056.unr = phi i64 [ %indvars.iv1056.ph, %scalar.ph1554.preheader ], [ %indvars.iv.next1057.prol, %scalar.ph1554.prol ]
  %indvars.iv1052.unr = phi i64 [ %indvars.iv1052.ph, %scalar.ph1554.preheader ], [ %indvars.iv.next1053.prol, %scalar.ph1554.prol ]
  %.4807.unr = phi i32 [ %.4807.ph, %scalar.ph1554.preheader ], [ %i.ut, %scalar.ph1554.prol ]
  %i.uu = sub i32 %.4807.ph, %0
  %i.uv = icmp ugt i32 %i.uu, -4
  br i1 %i.uv, label %._crit_edge809, label %scalar.ph1554

scalar.ph1554:                                    ; preds = %scalar.ph1554.prol.loopexit, %scalar.ph1554
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057.3, %scalar.ph1554 ], [ %indvars.iv1056.unr, %scalar.ph1554.prol.loopexit ] ; 5 uses
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053.3, %scalar.ph1554 ], [ %indvars.iv1052.unr, %scalar.ph1554.prol.loopexit ] ; 5 uses
  %.4807 = phi i32 [ %i.vo, %scalar.ph1554 ], [ %.4807.unr, %scalar.ph1554.prol.loopexit ]
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.ux = load float, ptr %i.uw, align 4
  %i.uy = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1056
  store float %i.ux, ptr %i.uy, align 4
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %i.vb = load float, ptr %i.va, align 4
  %i.vc = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.vd = getelementptr i8, ptr %i.vc, i64 4
  store float %i.vb, ptr %i.vd, align 4
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vg = load float, ptr %i.vf, align 4
  %i.vh = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.vi = getelementptr i8, ptr %i.vh, i64 8
  store float %i.vg, ptr %i.vi, align 4
  %indvars.iv.next1053.3 = add nuw nsw i64 %indvars.iv1052, 4
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 12
  %i.vl = load float, ptr %i.vk, align 4
  %indvars.iv.next1057.3 = add nsw i64 %indvars.iv1056, 4
  %i.vm = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.vn = getelementptr i8, ptr %i.vm, i64 12
  store float %i.vl, ptr %i.vn, align 4
  %i.vo = add nuw nsw i32 %.4807, 4               ; 2 uses
  %exitcond1061.not.3 = icmp eq i32 %i.vo, %0
  br i1 %exitcond1061.not.3, label %._crit_edge809, label %scalar.ph1554, !llvm.loop !1053

._crit_edge809:                                   ; preds = %scalar.ph1554.prol.loopexit, %scalar.ph1554, %middle.block1564
  %indvars.iv.next1051 = add nuw nsw i64 %indvars.iv1050, %i.tn
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, %i.to
  %i.vp = add nuw nsw i32 %.6564812, 1            ; 2 uses
  %exitcond1065.not = icmp eq i32 %i.vp, %2
  br i1 %exitcond1065.not, label %.loopexit663, label %.preheader664, !llvm.loop !1054

.preheader661:                                    ; preds = %.preheader661.preheader, %._crit_edge817
  %indvars.iv1066 = phi i64 [ 0, %.preheader661.preheader ], [ %indvars.iv.next1067, %._crit_edge817 ] ; 5 uses
  br i1 %i.uf, label %.epil.preheader1600, label %.preheader661.new

.preheader661.new:                                ; preds = %.preheader661, %.preheader661.new
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071.3, %.preheader661.new ], [ %indvars.iv1066, %.preheader661 ] ; 2 uses
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069.3, %.preheader661.new ], [ %indvars.iv1066, %.preheader661 ] ; 2 uses
  %niter1606 = phi i32 [ %niter1606.next.3, %.preheader661.new ], [ 0, %.preheader661 ]
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1068
  %i.vr = load float, ptr %i.vq, align 4
  %i.vs = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1070
  store float %i.vr, ptr %i.vs, align 4
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, %i.uc ; 2 uses
  %indvars.iv.next1071 = add nsw i64 %indvars.iv1070, %i.ud ; 2 uses
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069
  %i.vu = load float, ptr %i.vt, align 4
  %i.vv = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071
  store float %i.vu, ptr %i.vv, align 4
  %indvars.iv.next1069.1 = add nuw nsw i64 %indvars.iv.next1069, %i.uc ; 2 uses
  %indvars.iv.next1071.1 = add nsw i64 %indvars.iv.next1071, %i.ud ; 2 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069.1
  %i.vx = load float, ptr %i.vw, align 4
  %i.vy = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071.1
  store float %i.vx, ptr %i.vy, align 4
  %indvars.iv.next1069.2 = add nuw nsw i64 %indvars.iv.next1069.1, %i.uc ; 2 uses
  %indvars.iv.next1071.2 = add nsw i64 %indvars.iv.next1071.1, %i.ud ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069.2
  %i.wa = load float, ptr %i.vz, align 4
  %i.wb = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071.2
  store float %i.wa, ptr %i.wb, align 4
  %indvars.iv.next1069.3 = add nuw nsw i64 %indvars.iv.next1069.2, %i.uc ; 2 uses
  %indvars.iv.next1071.3 = add nsw i64 %indvars.iv.next1071.2, %i.ud ; 2 uses
  %niter1606.next.3 = add nuw nsw i32 %niter1606, 4 ; 2 uses
  %niter1606.ncmp.3 = icmp eq i32 %niter1606.next.3, %unroll_iter1605
  br i1 %niter1606.ncmp.3, label %._crit_edge817.unr-lcssa, label %.preheader661.new, !llvm.loop !1055

._crit_edge817.unr-lcssa:                         ; preds = %.preheader661.new
  br i1 %lcmp.mod1603.not, label %._crit_edge817, label %.epil.preheader1600

.epil.preheader1600:                              ; preds = %._crit_edge817.unr-lcssa, %.preheader661
  %indvars.iv1070.epil.init = phi i64 [ %indvars.iv1066, %.preheader661 ], [ %indvars.iv.next1071.3, %._crit_edge817.unr-lcssa ]
  %indvars.iv1068.epil.init = phi i64 [ %indvars.iv1066, %.preheader661 ], [ %indvars.iv.next1069.3, %._crit_edge817.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1604)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader1600
  %indvars.iv1070.epil = phi i64 [ %indvars.iv1070.epil.init, %.epil.preheader1600 ], [ %indvars.iv.next1071.epil, %bb.f ] ; 2 uses
  %indvars.iv1068.epil = phi i64 [ %indvars.iv1068.epil.init, %.epil.preheader1600 ], [ %indvars.iv.next1069.epil, %bb.f ] ; 2 uses
  %epil.iter1602 = phi i32 [ 0, %.epil.preheader1600 ], [ %epil.iter1602.next, %bb.f ]
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1068.epil
  %i.wd = load float, ptr %i.wc, align 4
  %i.we = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1070.epil
  store float %i.wd, ptr %i.we, align 4
  %indvars.iv.next1069.epil = add nuw nsw i64 %indvars.iv1068.epil, %i.uc
  %indvars.iv.next1071.epil = add nsw i64 %indvars.iv1070.epil, %i.ud
  %epil.iter1602.next = add i32 %epil.iter1602, 1 ; 2 uses
  %epil.iter1602.cmp.not = icmp eq i32 %epil.iter1602.next, %xtraiter1601
  br i1 %epil.iter1602.cmp.not, label %._crit_edge817, label %bb.f, !llvm.loop !1056

._crit_edge817:                                   ; preds = %bb.f, %._crit_edge817.unr-lcssa
  %indvars.iv.next1067 = add nuw nsw i64 %indvars.iv1066, 1 ; 2 uses
  %exitcond1078.not = icmp eq i64 %indvars.iv.next1067, %i.uc
  br i1 %exitcond1078.not, label %.loopexit663, label %.preheader661, !llvm.loop !1057

.loopexit663:                                     ; preds = %._crit_edge809, %._crit_edge817, %.preheader665, %.preheader662
  %i.wf = shl i32 %0, 1                           ; 9 uses
  br i1 %or.cond880, label %.lr.ph824.preheader, label %._crit_edge832.split

.lr.ph824.preheader:                              ; preds = %.loopexit663
  %i.wg = mul i32 %i.n, %i.oe
  %i.wh = sext i32 %0 to i64                      ; 4 uses
  %i.wi = sext i32 %i.o to i64                    ; 2 uses
  %xtraiter1608 = and i32 %2, 1
  %i.wj = icmp eq i32 %2, 1
  %unroll_iter1612 = and i32 %2, 2147483646
  %lcmp.mod1610.not = icmp eq i32 %xtraiter1608, 0
  %lcmp.mod1611 = trunc i32 %2 to i1
  br label %.lr.ph824

.lr.ph824:                                        ; preds = %.lr.ph824.preheader, %._crit_edge825
  %indvars.iv1087 = phi i32 [ %i.wf, %.lr.ph824.preheader ], [ %indvars.iv.next1088, %._crit_edge825 ] ; 2 uses
  %indvars.iv1083 = phi i32 [ %i.n, %.lr.ph824.preheader ], [ %indvars.iv.next1084, %._crit_edge825 ] ; 2 uses
  %indvars.iv1079 = phi i32 [ %i.wg, %.lr.ph824.preheader ], [ %indvars.iv.next1080, %._crit_edge825 ] ; 2 uses
  %.8829 = phi i32 [ 1, %.lr.ph824.preheader ], [ %i.xf, %._crit_edge825 ]
  %i.wk = sext i32 %indvars.iv1079 to i64         ; 2 uses
  %i.wl = sext i32 %indvars.iv1083 to i64         ; 2 uses
  %i.wm = sext i32 %indvars.iv1087 to i64         ; 2 uses
  br i1 %i.wj, label %.epil.preheader1607, label %.lr.ph824.new

.lr.ph824.new:                                    ; preds = %.lr.ph824, %.lr.ph824.new
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090.1, %.lr.ph824.new ], [ %i.wm, %.lr.ph824 ] ; 2 uses
  %indvars.iv1085 = phi i64 [ %indvars.iv.next1086.1, %.lr.ph824.new ], [ %i.wl, %.lr.ph824 ] ; 2 uses
  %indvars.iv1081 = phi i64 [ %indvars.iv.next1082.1, %.lr.ph824.new ], [ %i.wk, %.lr.ph824 ] ; 2 uses
  %niter1613 = phi i32 [ %niter1613.next.1, %.lr.ph824.new ], [ 0, %.lr.ph824 ]
  %i.wn = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1085
  %i.wo = load float, ptr %i.wn, align 4
  %i.wp = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1089 ; 2 uses
  %i.wq = getelementptr i8, ptr %i.wp, i64 -4
  store float %i.wo, ptr %i.wq, align 4
  %i.wr = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1081
  %i.ws = load float, ptr %i.wr, align 4
  store float %i.ws, ptr %i.wp, align 4
  %indvars.iv.next1090 = add nsw i64 %indvars.iv1089, %i.wi ; 2 uses
  %indvars.iv.next1086 = add nsw i64 %indvars.iv1085, %i.wh ; 2 uses
  %indvars.iv.next1082 = add nsw i64 %indvars.iv1081, %i.wh ; 2 uses
  %i.wt = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1086
  %i.wu = load float, ptr %i.wt, align 4
  %i.wv = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.next1090 ; 2 uses
  %i.ww = getelementptr i8, ptr %i.wv, i64 -4
  store float %i.wu, ptr %i.ww, align 4
  %i.wx = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1082
  %i.wy = load float, ptr %i.wx, align 4
  store float %i.wy, ptr %i.wv, align 4
  %indvars.iv.next1090.1 = add nsw i64 %indvars.iv.next1090, %i.wi ; 2 uses
end_hunk_9
begin_hunk_10_@dradb4:bb.a
  %i.lw = or <2 x i1> %i.lu, %i.lv
  %op.rdx927 = or i1 %op.rdx924, %found.conflict766
  %n.vec772 = and i64 %i.jx, 9223372036854775804  ; 4 uses
  %i.lx = shl nuw i64 %n.vec772, 1                ; 4 uses
  %i.ly = mul i64 %n.vec772, -2                   ; 2 uses
  %i.lz = or disjoint i64 %i.lx, 2
  %invariant.op = add nuw nsw i64 2, %i.el
  %cmp.n811 = icmp eq i64 %i.jx, %n.vec772
  br label %.lr.ph246

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %._crit_edge247
  %indvar = phi i64 [ 0, %.lr.ph246.preheader ], [ %indvar.next, %._crit_edge247 ] ; 2 uses
  %indvars.iv279 = phi i64 [ 0, %.lr.ph246.preheader ], [ %indvars.iv.next280, %._crit_edge247 ] ; 6 uses
  %indvars.iv275 = phi i32 [ %i.b, %.lr.ph246.preheader ], [ %indvars.iv.next276, %._crit_edge247 ] ; 3 uses
  %indvars.iv269 = phi i32 [ %i.c, %.lr.ph246.preheader ], [ %indvars.iv.next270, %._crit_edge247 ] ; 3 uses
  %indvars.iv265 = phi i32 [ 0, %.lr.ph246.preheader ], [ %indvars.iv.next266, %._crit_edge247 ] ; 3 uses
  %.1249 = phi i32 [ 0, %.lr.ph246.preheader ], [ %i.wp, %._crit_edge247 ]
  %i.ma = sext i32 %indvars.iv269 to i64
  %i.mb = shl nsw i64 %i.ma, 2                    ; 4 uses
  %scevgep403 = getelementptr i8, ptr %scevgep402, i64 %i.mb ; 2 uses
  %scevgep405 = getelementptr i8, ptr %scevgep404, i64 %i.mb ; 2 uses
  %scevgep407 = getelementptr i8, ptr %scevgep406, i64 %i.mb ; 3 uses
  %scevgep409 = getelementptr i8, ptr %scevgep408, i64 %i.mb ; 3 uses
  %i.mc = sext i32 %indvars.iv275 to i64
  %i.md = shl nsw i64 %i.mc, 2                    ; 2 uses
  %scevgep411 = getelementptr i8, ptr %scevgep410, i64 %i.md ; 3 uses
  %scevgep413 = getelementptr i8, ptr %scevgep412, i64 %i.md ; 3 uses
  %i.me = sext i32 %indvars.iv265 to i64
  %i.mf = shl nsw i64 %i.me, 2                    ; 2 uses
  %scevgep415 = getelementptr i8, ptr %scevgep414, i64 %i.mf ; 4 uses
  %scevgep417 = getelementptr i8, ptr %scevgep416, i64 %i.mf ; 4 uses
  %i.mg = sext i32 %indvars.iv265 to i64          ; 5 uses
  %i.mh = sext i32 %indvars.iv269 to i64          ; 10 uses
  %i.mi = sext i32 %indvars.iv275 to i64          ; 5 uses
  br i1 %min.iters.check769, label %scalar.ph768.preheader, label %vector.scevcheck371

vector.scevcheck371:                              ; preds = %.lr.ph246
  %i.mj = mul i64 %i.ep, %indvar                  ; 6 uses
  %scevgep392 = getelementptr i8, ptr %i.jz, i64 %i.mj ; 2 uses
  %scevgep388 = getelementptr i8, ptr %i.kb, i64 %i.mj ; 2 uses
  %scevgep384 = getelementptr i8, ptr %i.kd, i64 %i.mj ; 2 uses
  %scevgep380 = getelementptr i8, ptr %i.kf, i64 %i.mj ; 2 uses
  %scevgep376 = getelementptr i8, ptr %i.kh, i64 %i.mj ; 2 uses
  %scevgep372 = getelementptr i8, ptr %i.kj, i64 %i.mj ; 2 uses
  %i.mk = getelementptr i8, ptr %scevgep372, i64 %mul.result374
  %i.ml = icmp ult ptr %i.mk, %scevgep372
  %i.mm = getelementptr i8, ptr %scevgep376, i64 %mul.result378
  %i.mn = icmp ult ptr %i.mm, %scevgep376
  %i.mo = or i1 %i.mn, %mul.overflow379
  %i.mp = getelementptr i8, ptr %scevgep380, i64 %mul.result382
  %i.mq = icmp ult ptr %i.mp, %scevgep380
  %i.mr = getelementptr i8, ptr %scevgep384, i64 %mul.result386
  %i.ms = icmp ult ptr %i.mr, %scevgep384
  %i.mt = getelementptr i8, ptr %scevgep388, i64 %mul.result390
  %i.mu = icmp ult ptr %i.mt, %scevgep388
  %i.mv = getelementptr i8, ptr %scevgep392, i64 %mul.result394
  %i.mw = icmp ult ptr %i.mv, %scevgep392
  %i.mx = or i1 %i.ml, %i.mo
  %i.my = or i1 %i.mq, %i.mx
  %i.mz = or i1 %i.ms, %i.my
  %i.na = or i1 %i.mu, %i.mz
  %i.nb = or i1 %i.mw, %i.na
  br i1 %i.nb, label %scalar.ph768.preheader, label %vector.memcheck396

vector.memcheck396:                               ; preds = %vector.scevcheck371
  %i.nc = insertelement <2 x ptr> %i.kk, ptr %scevgep415, i64 0 ; 2 uses
  %i.nd = icmp ult <2 x ptr> %i.nc, %i.ii
  %i.ne = insertelement <2 x ptr> %i.kl, ptr %scevgep417, i64 0 ; 2 uses
  %i.nf = icmp ult <2 x ptr> %i.hw, %i.ne
  %i.ng = insertelement <4 x ptr> poison, ptr %scevgep405, i64 0 ; 2 uses
  %i.nh = insertelement <4 x ptr> %i.ng, ptr %scevgep409, i64 1
  %i.ni = insertelement <4 x ptr> %i.nh, ptr %scevgep413, i64 2
  %i.nj = insertelement <4 x ptr> %i.ni, ptr %scevgep417, i64 3 ; 2 uses
  %i.nk = icmp ult <4 x ptr> %i.in, %i.nj
  %i.nl = insertelement <4 x ptr> poison, ptr %scevgep403, i64 0 ; 2 uses
  %i.nm = insertelement <4 x ptr> %i.nl, ptr %scevgep407, i64 1
  %i.nn = insertelement <4 x ptr> %i.nm, ptr %scevgep411, i64 2
  %i.no = insertelement <4 x ptr> %i.nn, ptr %scevgep415, i64 3 ; 2 uses
  %i.np = icmp ult <4 x ptr> %i.no, %i.ip
  %i.nq = and <4 x i1> %i.nk, %i.np
  %i.nr = insertelement <2 x ptr> %i.nc, ptr %scevgep411, i64 0 ; 4 uses
  %i.ns = icmp ult <2 x ptr> %i.nr, %i.hl
  %i.nt = insertelement <2 x ptr> %i.ne, ptr %scevgep413, i64 0 ; 4 uses
  %i.nu = icmp ult <2 x ptr> %i.hb, %i.nt
  %i.nv = icmp ult <2 x ptr> %i.nr, %i.ih
  %i.nw = icmp ult <2 x ptr> %i.hv, %i.nt
  %i.nx = insertelement <2 x ptr> %i.nr, ptr %4, i64 0 ; 2 uses
  %i.ny = icmp ult <2 x ptr> %i.nx, %i.hm
  %i.nz = insertelement <2 x ptr> %i.nt, ptr %scevgep418, i64 0 ; 2 uses
  %i.oa = icmp ult <2 x ptr> %i.hc, %i.nz
  %i.ob = icmp ult <2 x ptr> %i.nx, %i.ij
  %i.oc = icmp ult <2 x ptr> %i.hx, %i.nz
  %i.od = insertelement <2 x ptr> %i.nr, ptr %5, i64 0
  %i.oe = icmp ult <2 x ptr> %i.od, %i.ji
  %i.of = insertelement <2 x ptr> %i.nt, ptr %scevgep419, i64 0
  %i.og = icmp ult <2 x ptr> %i.jj, %i.of
  %i.oh = icmp ult <4 x ptr> %i.kp, %i.nj
  %i.oi = icmp ult <4 x ptr> %i.no, %i.kq
  %i.oj = and <4 x i1> %i.oh, %i.oi
  %i.ok = shufflevector <4 x ptr> %i.nl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ol = icmp ult <4 x ptr> %i.ok, %i.go
  %i.om = shufflevector <4 x ptr> %i.ng, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.on = icmp ult <4 x ptr> %i.gc, %i.om
  %i.oo = and <4 x i1> %i.ol, %i.on
  %i.op = insertelement <2 x ptr> %i.jq, ptr %scevgep403, i64 0 ; 2 uses
  %i.oq = icmp ult <2 x ptr> %i.op, %i.hm
  %i.or = insertelement <2 x ptr> %i.jr, ptr %scevgep405, i64 0 ; 2 uses
  %i.os = icmp ult <2 x ptr> %i.hc, %i.or
  %i.ot = shufflevector <2 x ptr> %i.op, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.ou = icmp ult <2 x ptr> %i.ot, %i.ji
  %i.ov = shufflevector <2 x ptr> %i.or, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.ow = icmp ult <2 x ptr> %i.jj, %i.ov
  %i.ox = insertelement <4 x ptr> poison, ptr %scevgep407, i64 0
  %i.oy = shufflevector <4 x ptr> %i.ox, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.oz = icmp ult <4 x ptr> %i.oy, %i.gp
  %i.pa = insertelement <4 x ptr> poison, ptr %scevgep409, i64 0
  %i.pb = shufflevector <4 x ptr> %i.pa, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.pc = icmp ult <4 x ptr> %i.gd, %i.pb
  %i.pd = and <4 x i1> %i.oz, %i.pc
  %i.pe = insertelement <2 x ptr> %i.fj, ptr %scevgep407, i64 1 ; 2 uses
  %i.pf = icmp ult <2 x ptr> %i.pe, %i.js
  %i.pg = insertelement <2 x ptr> %i.fp, ptr %scevgep409, i64 1 ; 2 uses
  %i.ph = icmp ult <2 x ptr> %i.jt, %i.pg
  %i.pi = shufflevector <2 x ptr> %i.hb, <2 x ptr> %i.pe, <2 x i32> <i32 1, i32 3>
  %i.pj = icmp ult <2 x ptr> %i.pi, %i.jo
  %i.pk = shufflevector <2 x ptr> %i.hl, <2 x ptr> %i.pg, <2 x i32> <i32 1, i32 3>
  %i.pl = icmp ult <2 x ptr> %i.jp, %i.pk
  %i.pm = insertelement <4 x ptr> poison, ptr %scevgep411, i64 0
  %i.pn = shufflevector <4 x ptr> %i.pm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.po = icmp ult <4 x ptr> %i.pn, %i.gq
  %i.pp = insertelement <4 x ptr> poison, ptr %scevgep413, i64 0
  %i.pq = shufflevector <4 x ptr> %i.pp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.pr = icmp ult <4 x ptr> %i.ge, %i.pq
  %i.ps = and <4 x i1> %i.po, %i.pr
  %i.pt = insertelement <4 x ptr> poison, ptr %scevgep415, i64 0
  %i.pu = shufflevector <4 x ptr> %i.pt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.pv = icmp ult <4 x ptr> %i.pu, %i.gr
  %i.pw = insertelement <4 x ptr> poison, ptr %scevgep417, i64 0
  %i.px = shufflevector <4 x ptr> %i.pw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.py = icmp ult <4 x ptr> %i.gf, %i.px
  %i.pz = and <4 x i1> %i.pv, %i.py
  %bound0628 = icmp ult ptr %scevgep415, %scevgep430
  %bound1629 = icmp ult ptr %scevgep429, %scevgep417
  %found.conflict630 = and i1 %bound0628, %bound1629
  %rdx.op = or <4 x i1> %i.nq, %i.ko
  %rdx.op882 = or <4 x i1> %rdx.op, %i.oj
  %rdx.op883 = or <4 x i1> %rdx.op882, %i.kt
  %rdx.op884 = or <4 x i1> %rdx.op883, %i.oo
  %rdx.op885 = or <4 x i1> %rdx.op884, %i.pd
  %rdx.op886 = or <4 x i1> %rdx.op885, %i.ps
  %rdx.op887 = or <4 x i1> %rdx.op886, %i.pz
  %rdx.op890.reass = or <4 x i1> %rdx.op887, %invariant.op941
  %i.qa = bitcast <4 x i1> %rdx.op890.reass to i4
  %i.qb = icmp ne i4 %i.qa, 0
  %i.qc = and <2 x i1> %i.ns, %i.nu
  %i.qd = and <2 x i1> %i.nv, %i.nw
  %i.qe = and <2 x i1> %i.nd, %i.nf
  %i.qf = and <2 x i1> %i.ny, %i.oa
  %i.qg = and <2 x i1> %i.ob, %i.oc
  %i.qh = and <2 x i1> %i.oe, %i.og
  %i.qi = and <2 x i1> %i.oq, %i.os
  %i.qj = shufflevector <2 x i1> %i.qi, <2 x i1> poison, <2 x i32> <i32 1, i32 0>
  %i.qk = and <2 x i1> %i.ou, %i.ow
  %i.ql = and <2 x i1> %i.pf, %i.ph
  %i.qm = and <2 x i1> %i.pj, %i.pl
  %i.qn = or <2 x i1> %i.qc, %i.qd
  %i.qo = insertelement <2 x i1> poison, i1 %found.conflict630, i64 0
  %i.qp = insertelement <2 x i1> %i.qo, i1 %i.qb, i64 1
  %i.qq = or <2 x i1> %i.qp, %i.qe
  %i.qr = or <2 x i1> %i.qf, %i.qg
  %i.qs = or <2 x i1> %i.qh, %i.lp
  %i.qt = or <2 x i1> %i.qj, %i.qk
  %i.qu = or <2 x i1> %i.ql, %i.qm
  %i.qv = or <2 x i1> %i.qn, %i.qq
  %i.qw = or <2 x i1> %i.qr, %i.qs
  %i.qx = or <2 x i1> %i.qt, %i.qu
  %i.qy = or <2 x i1> %i.qv, %i.qw
  %i.qz = or <2 x i1> %i.lw, %i.qx
  %i.ra = or <2 x i1> %i.qy, %i.qz                ; 2 uses
  %shift = shufflevector <2 x i1> %i.ra, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i1> %shift, %i.ra
  %op.rdx928 = extractelement <2 x i1> %foldExtExtBinop, i64 0
  %op.rdx929 = or i1 %op.rdx928, %op.rdx927
  br i1 %op.rdx929, label %scalar.ph768.preheader, label %vector.ph770

vector.ph770:                                     ; preds = %vector.memcheck396
  %i.rb = add i64 %indvars.iv279, %i.lx
  %i.rc = add i64 %i.ly, %i.mi
  %i.rd = add i64 %i.ly, %i.mh
  %i.re = add i64 %i.lx, %i.mh
  %i.rf = add i64 %i.lx, %i.mg
  %invariant.gep932 = getelementptr [4 x i8], ptr %2, i64 %i.mg
  %invariant.gep934 = getelementptr [4 x i8], ptr %2, i64 %i.mi
  %invariant.gep936 = getelementptr [4 x i8], ptr %2, i64 %i.mh
  %invariant.gep938 = getelementptr [4 x i8], ptr %2, i64 %i.mh
  br label %vector.body773

vector.body773:                                   ; preds = %vector.body773, %vector.ph770
  %index774 = phi i64 [ 0, %vector.ph770 ], [ %index.next809, %vector.body773 ] ; 3 uses
  %i.rg = shl i64 %index774, 1                    ; 6 uses
  %i.rh = add nuw i64 %indvars.iv279, %i.rg       ; 2 uses
  %i.ri = mul i64 %index774, -2                   ; 2 uses
  %gep933 = getelementptr [4 x i8], ptr %invariant.gep932, i64 %i.rg
  %i.rj = getelementptr i8, ptr %gep933, i64 4
  %wide.vec = load <8 x float>, ptr %i.rj, align 4, !alias.scope !1082, !noalias !1085 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec775 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %gep935 = getelementptr [4 x i8], ptr %invariant.gep934, i64 %i.ri
  %i.rk = getelementptr i8, ptr %gep935, i64 -36
  %wide.vec776 = load <8 x float>, ptr %i.rk, align 4, !alias.scope !1092, !noalias !1085 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec776, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %reverse779 = shufflevector <8 x float> %wide.vec776, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.rl = fadd <4 x float> %strided.vec775, %reverse779 ; 2 uses
  %i.rm = fsub <4 x float> %strided.vec775, %reverse779 ; 2 uses
  %gep937 = getelementptr [4 x i8], ptr %invariant.gep936, i64 %i.rg
  %i.rn = getelementptr i8, ptr %gep937, i64 4
  %wide.vec780 = load <8 x float>, ptr %i.rn, align 4, !alias.scope !1094, !noalias !1085 ; 2 uses
  %strided.vec781 = shufflevector <8 x float> %wide.vec780, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec782 = shufflevector <8 x float> %wide.vec780, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %gep939 = getelementptr [4 x i8], ptr %invariant.gep938, i64 %i.ri
  %i.ro = getelementptr i8, ptr %gep939, i64 -36
  %wide.vec783 = load <8 x float>, ptr %i.ro, align 4, !alias.scope !1096, !noalias !1085 ; 2 uses
  %reverse785 = shufflevector <8 x float> %wide.vec783, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %reverse787 = shufflevector <8 x float> %wide.vec783, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.rp = fsub <4 x float> %strided.vec782, %reverse787 ; 2 uses
  %i.rq = fadd <4 x float> %strided.vec782, %reverse787 ; 2 uses
  %i.rr = fsub <4 x float> %strided.vec, %reverse ; 2 uses
  %i.rs = fadd <4 x float> %strided.vec, %reverse ; 2 uses
  %i.rt = fsub <4 x float> %strided.vec781, %reverse785 ; 2 uses
  %i.ru = fadd <4 x float> %strided.vec781, %reverse785 ; 2 uses
  %i.rv = fadd <4 x float> %i.rs, %i.ru
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rh
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  %i.ry = fsub <4 x float> %i.rs, %i.ru           ; 2 uses
  %i.rz = fadd <4 x float> %i.rm, %i.rp
  %interleaved.vec = shufflevector <4 x float> %i.rv, <4 x float> %i.rz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.rx, align 4
  %i.sa = fsub <4 x float> %i.rm, %i.rp           ; 2 uses
  %i.sb = fsub <4 x float> %i.rr, %i.rq           ; 2 uses
  %i.sc = fadd <4 x float> %i.rq, %i.rr           ; 2 uses
  %i.sd = fadd <4 x float> %i.rl, %i.rt           ; 2 uses
  %i.se = fsub <4 x float> %i.rl, %i.rt           ; 2 uses
  %i.sf = getelementptr inbounds [4 x i8], ptr %4, i64 %i.rg ; 2 uses
  %wide.vec788 = load <8 x float>, ptr %i.sf, align 4, !alias.scope !1098, !noalias !1085 ; 2 uses
  %strided.vec789 = shufflevector <8 x float> %wide.vec788, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec790 = shufflevector <8 x float> %wide.vec788, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.sg = fmul <4 x float> %i.sb, %strided.vec789
  %i.sh = fmul <4 x float> %i.sd, %strided.vec790
  %i.si = fsub <4 x float> %i.sg, %i.sh
  %.reass = add nuw nsw i64 %i.rh, %invariant.op  ; 2 uses
  %i.sj = getelementptr [4 x i8], ptr %3, i64 %.reass
  %i.sk = getelementptr i8, ptr %i.sj, i64 -4
  %wide.vec791 = load <8 x float>, ptr %i.sf, align 4, !alias.scope !1098, !noalias !1085 ; 2 uses
  %strided.vec792 = shufflevector <8 x float> %wide.vec791, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec793 = shufflevector <8 x float> %wide.vec791, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.sl = fmul <4 x float> %i.sd, %strided.vec792
  %i.sm = fmul <4 x float> %i.sb, %strided.vec793
  %i.sn = fadd <4 x float> %i.sl, %i.sm
  %interleaved.vec794 = shufflevector <4 x float> %i.si, <4 x float> %i.sn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec794, ptr %i.sk, align 4
  %i.so = getelementptr inbounds [4 x i8], ptr %5, i64 %i.rg ; 2 uses
  %wide.vec795 = load <8 x float>, ptr %i.so, align 4, !alias.scope !1100, !noalias !1085 ; 2 uses
  %strided.vec796 = shufflevector <8 x float> %wide.vec795, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec797 = shufflevector <8 x float> %wide.vec795, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.sp = fmul <4 x float> %i.ry, %strided.vec796
  %i.sq = fmul <4 x float> %i.sa, %strided.vec797
  %i.sr = fsub <4 x float> %i.sp, %i.sq
  %i.ss = add nuw nsw i64 %.reass, %i.el          ; 2 uses
  %i.st = getelementptr [4 x i8], ptr %3, i64 %i.ss
  %i.su = getelementptr i8, ptr %i.st, i64 -4
  %wide.vec798 = load <8 x float>, ptr %i.so, align 4, !alias.scope !1100, !noalias !1085 ; 2 uses
  %strided.vec799 = shufflevector <8 x float> %wide.vec798, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec800 = shufflevector <8 x float> %wide.vec798, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.sv = fmul <4 x float> %i.sa, %strided.vec799
  %i.sw = fmul <4 x float> %i.ry, %strided.vec800
  %i.sx = fadd <4 x float> %i.sv, %i.sw
  %interleaved.vec801 = shufflevector <4 x float> %i.sr, <4 x float> %i.sx, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec801, ptr %i.su, align 4
  %i.sy = getelementptr inbounds [4 x i8], ptr %6, i64 %i.rg ; 2 uses
  %wide.vec802 = load <8 x float>, ptr %i.sy, align 4, !alias.scope !1102, !noalias !1085 ; 2 uses
  %strided.vec803 = shufflevector <8 x float> %wide.vec802, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec804 = shufflevector <8 x float> %wide.vec802, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.sz = fmul <4 x float> %i.sc, %strided.vec803
  %i.ta = fmul <4 x float> %i.se, %strided.vec804
  %i.tb = fsub <4 x float> %i.sz, %i.ta
  %i.tc = getelementptr [4 x i8], ptr %invariant.gep313, i64 %i.ss
  %i.td = getelementptr i8, ptr %i.tc, i64 -4
  %wide.vec805 = load <8 x float>, ptr %i.sy, align 4, !alias.scope !1102, !noalias !1085 ; 2 uses
  %strided.vec806 = shufflevector <8 x float> %wide.vec805, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec807 = shufflevector <8 x float> %wide.vec805, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.te = fmul <4 x float> %i.se, %strided.vec806
  %i.tf = fmul <4 x float> %i.sc, %strided.vec807
  %i.tg = fadd <4 x float> %i.te, %i.tf
  %interleaved.vec808 = shufflevector <4 x float> %i.tb, <4 x float> %i.tg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec808, ptr %i.td, align 4
  %index.next809 = add nuw i64 %index774, 4       ; 2 uses
  %i.th = icmp eq i64 %index.next809, %n.vec772
  br i1 %i.th, label %middle.block810, label %vector.body773, !llvm.loop !1104

middle.block810:                                  ; preds = %vector.body773
  br i1 %cmp.n811, label %._crit_edge247, label %scalar.ph768.preheader

scalar.ph768.preheader:                           ; preds = %vector.memcheck396, %vector.scevcheck371, %.lr.ph246, %middle.block810
  %indvars.iv281.ph = phi i64 [ %indvars.iv279, %vector.memcheck396 ], [ %indvars.iv279, %vector.scevcheck371 ], [ %indvars.iv279, %.lr.ph246 ], [ %i.rb, %middle.block810 ]
  %indvars.iv277.ph = phi i64 [ %i.mi, %vector.memcheck396 ], [ %i.mi, %vector.scevcheck371 ], [ %i.mi, %.lr.ph246 ], [ %i.rc, %middle.block810 ]
  %indvars.iv273.ph = phi i64 [ %i.mh, %vector.memcheck396 ], [ %i.mh, %vector.scevcheck371 ], [ %i.mh, %.lr.ph246 ], [ %i.rd, %middle.block810 ]
  %indvars.iv271.ph = phi i64 [ %i.mh, %vector.memcheck396 ], [ %i.mh, %vector.scevcheck371 ], [ %i.mh, %.lr.ph246 ], [ %i.re, %middle.block810 ]
  %indvars.iv267.ph = phi i64 [ %i.mg, %vector.memcheck396 ], [ %i.mg, %vector.scevcheck371 ], [ %i.mg, %.lr.ph246 ], [ %i.rf, %middle.block810 ]
  %indvars.iv263.ph = phi i64 [ 2, %vector.memcheck396 ], [ 2, %vector.scevcheck371 ], [ 2, %.lr.ph246 ], [ %i.lz, %middle.block810 ]
  br label %scalar.ph768

scalar.ph768:                                     ; preds = %scalar.ph768.preheader, %scalar.ph768
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %scalar.ph768 ], [ %indvars.iv281.ph, %scalar.ph768.preheader ] ; 2 uses
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %scalar.ph768 ], [ %indvars.iv277.ph, %scalar.ph768.preheader ] ; 2 uses
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %scalar.ph768 ], [ %indvars.iv273.ph, %scalar.ph768.preheader ] ; 2 uses
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %scalar.ph768 ], [ %indvars.iv271.ph, %scalar.ph768.preheader ] ; 2 uses
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %scalar.ph768 ], [ %indvars.iv267.ph, %scalar.ph768.preheader ] ; 2 uses
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %scalar.ph768 ], [ %indvars.iv263.ph, %scalar.ph768.preheader ] ; 3 uses
  %indvars.iv.next268 = add nsw i64 %indvars.iv267, 2 ; 2 uses
  %indvars.iv.next272 = add nsw i64 %indvars.iv271, 2 ; 2 uses
  %indvars.iv.next274 = add nsw i64 %indvars.iv273, -2 ; 2 uses
  %indvars.iv.next278 = add nsw i64 %indvars.iv277, -2 ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 2 ; 3 uses
  %i.ti = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next268
  %i.tj = load float, ptr %i.ti, align 4          ; 2 uses
  %i.tk = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next278
  %i.tl = load float, ptr %i.tk, align 4          ; 2 uses
  %i.tm = fadd float %i.tj, %i.tl                 ; 2 uses
  %i.tn = fsub float %i.tj, %i.tl                 ; 2 uses
  %i.to = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next272
  %i.tp = load float, ptr %i.to, align 4          ; 2 uses
  %i.tq = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next274
  %i.tr = load float, ptr %i.tq, align 4          ; 2 uses
  %i.ts = fsub float %i.tp, %i.tr                 ; 2 uses
  %i.tt = fadd float %i.tp, %i.tr                 ; 2 uses
  %i.tu = getelementptr [4 x i8], ptr %2, i64 %indvars.iv267
  %i.tv = getelementptr i8, ptr %i.tu, i64 4
  %i.tw = load float, ptr %i.tv, align 4          ; 2 uses
  %i.tx = getelementptr [4 x i8], ptr %2, i64 %indvars.iv277
  %i.ty = getelementptr i8, ptr %i.tx, i64 -12
  %i.tz = load float, ptr %i.ty, align 4          ; 2 uses
  %i.ua = fsub float %i.tw, %i.tz                 ; 2 uses
  %i.ub = fadd float %i.tw, %i.tz                 ; 2 uses
  %i.uc = getelementptr [4 x i8], ptr %2, i64 %indvars.iv271
  %i.ud = getelementptr i8, ptr %i.uc, i64 4
  %i.ue = load float, ptr %i.ud, align 4          ; 2 uses
  %i.uf = getelementptr [4 x i8], ptr %2, i64 %indvars.iv273
  %i.ug = getelementptr i8, ptr %i.uf, i64 -12
  %i.uh = load float, ptr %i.ug, align 4          ; 2 uses
  %i.ui = fsub float %i.ue, %i.uh                 ; 2 uses
  %i.uj = fadd float %i.ue, %i.uh                 ; 2 uses
  %i.uk = fadd float %i.ub, %i.uj
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv281
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  store float %i.uk, ptr %i.um, align 4
  %i.un = fsub float %i.ub, %i.uj                 ; 2 uses
  %i.uo = fadd float %i.tn, %i.ts
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next282
  store float %i.uo, ptr %i.up, align 4
  %i.uq = fsub float %i.tn, %i.ts                 ; 2 uses
  %i.ur = fsub float %i.ua, %i.tt                 ; 2 uses
  %i.us = fadd float %i.tt, %i.ua                 ; 2 uses
  %i.ut = fadd float %i.tm, %i.ui                 ; 2 uses
  %i.uu = fsub float %i.tm, %i.ui                 ; 2 uses
  %i.uv = add nsw i64 %indvars.iv263, -2          ; 3 uses
  %i.uw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.uv ; 2 uses
  %i.ux = load float, ptr %i.uw, align 4
  %i.uy = fmul float %i.ur, %i.ux
  %i.uz = add nsw i64 %indvars.iv263, -1          ; 3 uses
  %i.va = getelementptr inbounds [4 x i8], ptr %4, i64 %i.uz ; 2 uses
  %i.vb = load float, ptr %i.va, align 4
  %i.vc = fmul float %i.ut, %i.vb
  %i.vd = fsub float %i.uy, %i.vc
  %i.ve = add nuw nsw i64 %indvars.iv.next282, %i.el ; 2 uses
  %i.vf = getelementptr [4 x i8], ptr %3, i64 %i.ve ; 2 uses
  %i.vg = getelementptr i8, ptr %i.vf, i64 -4
  store float %i.vd, ptr %i.vg, align 4
  %i.vh = load float, ptr %i.uw, align 4
  %i.vi = fmul float %i.ut, %i.vh
  %i.vj = load float, ptr %i.va, align 4
  %i.vk = fmul float %i.ur, %i.vj
  %i.vl = fadd float %i.vi, %i.vk
  store float %i.vl, ptr %i.vf, align 4
  %i.vm = getelementptr inbounds [4 x i8], ptr %5, i64 %i.uv ; 2 uses
  %i.vn = load float, ptr %i.vm, align 4
  %i.vo = fmul float %i.un, %i.vn
  %i.vp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.uz ; 2 uses
  %i.vq = load float, ptr %i.vp, align 4
  %i.vr = fmul float %i.uq, %i.vq
  %i.vs = fsub float %i.vo, %i.vr
  %i.vt = add nuw nsw i64 %i.ve, %i.el            ; 2 uses
  %i.vu = getelementptr [4 x i8], ptr %3, i64 %i.vt ; 2 uses
  %i.vv = getelementptr i8, ptr %i.vu, i64 -4
  store float %i.vs, ptr %i.vv, align 4
  %i.vw = load float, ptr %i.vm, align 4
  %i.vx = fmul float %i.uq, %i.vw
  %i.vy = load float, ptr %i.vp, align 4
  %i.vz = fmul float %i.un, %i.vy
  %i.wa = fadd float %i.vx, %i.vz
  store float %i.wa, ptr %i.vu, align 4
  %i.wb = getelementptr inbounds [4 x i8], ptr %6, i64 %i.uv ; 2 uses
end_hunk_10
begin_hunk_11_@dradb2:bb.a
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 1
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 2
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 3
  %i.bd = fsub <4 x float> %strided.vec187, %i.bc
  %i.be = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.bd, ptr %i.be, align 4, !alias.scope !1113, !noalias !1108
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %.lr.ph.preheader355, label %vector.body, !llvm.loop !1115

.lr.ph.preheader355:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.0100115.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.w, %vector.body ]
  %.0105114.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.x, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader355, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader355 ] ; 3 uses
  %.0100115 = phi i32 [ %i.bu, %.lr.ph ], [ %.0100115.ph, %.lr.ph.preheader355 ]
  %.0105114 = phi i32 [ %i.bt, %.lr.ph ], [ %.0105114.ph, %.lr.ph.preheader355 ] ; 2 uses
  %i.bg = sext i32 %.0105114 to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bg ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4
  %i.bj = add nsw i32 %i.c, %.0105114
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bk ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = fadd float %i.bi, %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.bn, ptr %i.bo, align 4
  %i.bp = load float, ptr %i.bh, align 4
  %i.bq = load float, ptr %i.bl, align 4
  %i.br = fsub float %i.bp, %i.bq
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.br, ptr %gep, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.e ; 2 uses
  %i.bs = trunc nsw i64 %indvars.iv.next to i32
  %i.bt = shl i32 %i.bs, 1
  %i.bu = add nuw nsw i32 %.0100115, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bu, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1116

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bv = icmp slt i32 %0, 2
  br i1 %i.bv, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bw = icmp eq i32 %0, 2
  br i1 %i.bw, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.d, label %.lr.ph122.preheader, label %.loopexit

.lr.ph122.preheader:                              ; preds = %.preheader
  %i.bx = zext nneg i32 %0 to i64                 ; 4 uses
  %i.by = zext nneg i32 %0 to i64
  %scevgep191 = getelementptr i8, ptr %3, i64 4   ; 6 uses
  %i.bz = add nsw i32 %1, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = mul nuw nsw i64 %i.bx, %i.ca
  %i.cc = shl i64 %i.cb, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 4)
  %i.cd = shl nuw nsw i64 %umax, 2
  %i.ce = add nsw i64 %i.cd, -12
  %i.cf = and i64 %i.ce, -8                       ; 4 uses
  %i.cg = add i64 %i.cc, %i.cf                    ; 2 uses
  %i.ch = getelementptr i8, ptr %3, i64 %i.cg
  %scevgep192 = getelementptr i8, ptr %i.ch, i64 8 ; 6 uses
  %scevgep193 = getelementptr i8, ptr %3, i64 8   ; 6 uses
  %i.ci = getelementptr i8, ptr %3, i64 %i.cg
  %scevgep194 = getelementptr i8, ptr %i.ci, i64 12 ; 6 uses
  %scevgep195 = getelementptr i8, ptr %3, i64 4
  %i.cj = add nuw nsw i64 %i.cf, 8                ; 2 uses
  %scevgep197 = getelementptr i8, ptr %3, i64 %i.cj
  %scevgep199 = getelementptr i8, ptr %3, i64 8
  %i.ck = add nuw nsw i64 %i.cf, 12               ; 2 uses
  %scevgep201 = getelementptr i8, ptr %3, i64 %i.ck
  %i.cl = sub nsw i64 -12, %i.cf
  %scevgep203 = getelementptr i8, ptr %2, i64 %i.cl
  %scevgep205 = getelementptr i8, ptr %2, i64 -4
  %scevgep207 = getelementptr i8, ptr %2, i64 4
  %scevgep209 = getelementptr i8, ptr %2, i64 %i.ck
  %scevgep211 = getelementptr i8, ptr %4, i64 %i.cj ; 4 uses
  %i.cm = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 4)
  %i.cn = add nsw i64 %i.cm, -3                   ; 2 uses
  %i.co = lshr i64 %i.cn, 1
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check284 = icmp ult i64 %i.cn, 22
  %bound0212 = icmp ult ptr %scevgep191, %scevgep194
  %bound1213 = icmp ult ptr %scevgep193, %scevgep192
  %found.conflict214 = and i1 %bound0212, %bound1213
  %bound0231 = icmp ult ptr %scevgep191, %scevgep211
  %bound1232 = icmp ult ptr %4, %scevgep192
  %found.conflict233 = and i1 %bound0231, %bound1232
  %bound0251 = icmp ult ptr %scevgep193, %scevgep211
  %bound1252 = icmp ult ptr %4, %scevgep194
  %found.conflict253 = and i1 %bound0251, %bound1252
  %n.vec287 = and i64 %i.cp, 9223372036854775804  ; 4 uses
  %i.cq = shl nuw i64 %n.vec287, 1                ; 4 uses
  %i.cr = shl nuw i64 %n.vec287, 1
  %i.cs = or disjoint i64 %i.cq, 2
  %cmp.n = icmp eq i64 %i.cp, %n.vec287
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %._crit_edge123
  %indvars.iv151 = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next152, %._crit_edge123 ] ; 5 uses
  %indvars.iv147 = phi i32 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next148, %._crit_edge123 ] ; 3 uses
  %indvars.iv143 = phi i32 [ %i.b, %.lr.ph122.preheader ], [ %indvars.iv.next144, %._crit_edge123 ] ; 3 uses
  %indvars.iv139 = phi i32 [ %i.a, %.lr.ph122.preheader ], [ %indvars.iv.next140, %._crit_edge123 ] ; 3 uses
  %.1126 = phi i32 [ 0, %.lr.ph122.preheader ], [ %i.fo, %._crit_edge123 ]
  %i.ct = zext i32 %indvars.iv139 to i64          ; 4 uses
  %i.cu = sext i32 %indvars.iv143 to i64          ; 4 uses
  %i.cv = sext i32 %indvars.iv147 to i64          ; 4 uses
  br i1 %min.iters.check284, label %scalar.ph283.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %.lr.ph122
  %i.cw = sext i32 %indvars.iv147 to i64
  %i.cx = shl nsw i64 %i.cw, 2                    ; 2 uses
  %scevgep210 = getelementptr i8, ptr %scevgep209, i64 %i.cx ; 4 uses
  %scevgep208 = getelementptr i8, ptr %scevgep207, i64 %i.cx ; 4 uses
  %i.cy = sext i32 %indvars.iv143 to i64
  %i.cz = shl nsw i64 %i.cy, 2                    ; 2 uses
  %scevgep206 = getelementptr i8, ptr %scevgep205, i64 %i.cz ; 4 uses
  %scevgep204 = getelementptr i8, ptr %scevgep203, i64 %i.cz ; 4 uses
  %i.da = zext i32 %indvars.iv139 to i64
  %i.db = shl nuw nsw i64 %i.da, 2                ; 4 uses
  %scevgep202 = getelementptr i8, ptr %scevgep201, i64 %i.db ; 6 uses
  %scevgep200 = getelementptr i8, ptr %scevgep199, i64 %i.db ; 6 uses
  %scevgep198 = getelementptr i8, ptr %scevgep197, i64 %i.db ; 6 uses
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.db ; 6 uses
  %bound0215 = icmp ult ptr %scevgep191, %scevgep198
  %bound1216 = icmp ult ptr %scevgep196, %scevgep192
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %found.conflict214, %found.conflict217
  %bound0219 = icmp ult ptr %scevgep191, %scevgep202
  %bound1220 = icmp ult ptr %scevgep200, %scevgep192
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx222 = or i1 %conflict.rdx218, %found.conflict221
  %bound0223 = icmp ult ptr %scevgep191, %scevgep206
  %bound1224 = icmp ult ptr %scevgep204, %scevgep192
  %found.conflict225 = and i1 %bound0223, %bound1224
  %conflict.rdx226 = or i1 %conflict.rdx222, %found.conflict225
  %bound0227 = icmp ult ptr %scevgep191, %scevgep210
  %bound1228 = icmp ult ptr %scevgep208, %scevgep192
  %found.conflict229 = and i1 %bound0227, %bound1228
  %conflict.rdx230 = or i1 %conflict.rdx226, %found.conflict229
  %conflict.rdx234 = or i1 %conflict.rdx230, %found.conflict233
  %bound0235 = icmp ult ptr %scevgep193, %scevgep198
  %bound1236 = icmp ult ptr %scevgep196, %scevgep194
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %conflict.rdx234, %found.conflict237
  %bound0239 = icmp ult ptr %scevgep193, %scevgep202
  %bound1240 = icmp ult ptr %scevgep200, %scevgep194
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %conflict.rdx238, %found.conflict241
  %bound0243 = icmp ult ptr %scevgep193, %scevgep206
  %bound1244 = icmp ult ptr %scevgep204, %scevgep194
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx246 = or i1 %conflict.rdx242, %found.conflict245
  %bound0247 = icmp ult ptr %scevgep193, %scevgep210
  %bound1248 = icmp ult ptr %scevgep208, %scevgep194
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %conflict.rdx246, %found.conflict249
  %conflict.rdx254 = or i1 %conflict.rdx250, %found.conflict253
  %bound0255 = icmp ult ptr %scevgep196, %scevgep202
  %bound1256 = icmp ult ptr %scevgep200, %scevgep198
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx258 = or i1 %conflict.rdx254, %found.conflict257
  %bound0259 = icmp ult ptr %scevgep196, %scevgep206
  %bound1260 = icmp ult ptr %scevgep204, %scevgep198
  %found.conflict261 = and i1 %bound0259, %bound1260
  %conflict.rdx262 = or i1 %conflict.rdx258, %found.conflict261
  %bound0263 = icmp ult ptr %scevgep196, %scevgep210
  %bound1264 = icmp ult ptr %scevgep208, %scevgep198
  %found.conflict265 = and i1 %bound0263, %bound1264
  %conflict.rdx266 = or i1 %conflict.rdx262, %found.conflict265
  %bound0267 = icmp ult ptr %scevgep196, %scevgep211
  %bound1268 = icmp ult ptr %4, %scevgep198
  %found.conflict269 = and i1 %bound0267, %bound1268
  %conflict.rdx270 = or i1 %conflict.rdx266, %found.conflict269
  %bound0271 = icmp ult ptr %scevgep200, %scevgep206
  %bound1272 = icmp ult ptr %scevgep204, %scevgep202
  %found.conflict273 = and i1 %bound0271, %bound1272
  %conflict.rdx274 = or i1 %conflict.rdx270, %found.conflict273
  %bound0275 = icmp ult ptr %scevgep200, %scevgep210
  %bound1276 = icmp ult ptr %scevgep208, %scevgep202
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %conflict.rdx274, %found.conflict277
  %bound0279 = icmp ult ptr %scevgep200, %scevgep211
  %bound1280 = icmp ult ptr %4, %scevgep202
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx282 = or i1 %conflict.rdx278, %found.conflict281
  br i1 %conflict.rdx282, label %scalar.ph283.preheader, label %vector.ph285

vector.ph285:                                     ; preds = %vector.memcheck190
  %i.dc = add i64 %indvars.iv151, %i.cq
  %i.dd = add i64 %i.cq, %i.cv
  %i.de = sub i64 %i.cu, %i.cr
  %i.df = add i64 %i.cq, %i.ct
  %invariant.gep361 = getelementptr [4 x i8], ptr %2, i64 %i.cv
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv151
  %invariant.gep363 = getelementptr [4 x i8], ptr %3, i64 %i.ct
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph285
  %index289 = phi i64 [ 0, %vector.ph285 ], [ %index.next312, %vector.body288 ] ; 3 uses
  %i.dh = shl i64 %index289, 1                    ; 4 uses
  %i.di = shl i64 %index289, 1
  %i.dj = sub i64 %i.cu, %i.di
  %gep362 = getelementptr [4 x i8], ptr %invariant.gep361, i64 %i.dh
  %i.dk = getelementptr i8, ptr %gep362, i64 4    ; 2 uses
  %wide.vec290 = load <8 x float>, ptr %i.dk, align 4, !alias.scope !1117 ; 2 uses
  %strided.vec291 = shufflevector <8 x float> %wide.vec290, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec292 = shufflevector <8 x float> %wide.vec290, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dl = getelementptr [4 x i8], ptr %2, i64 %i.dj
  %i.dm = getelementptr i8, ptr %i.dl, i64 -36    ; 2 uses
  %wide.vec293 = load <8 x float>, ptr %i.dm, align 4, !alias.scope !1120 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec293, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse296 = shufflevector <8 x float> %wide.vec293, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.dn = fadd <4 x float> %strided.vec291, %reverse
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dh
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %wide.vec297 = load <8 x float>, ptr %i.dk, align 4, !alias.scope !1117 ; 2 uses
  %strided.vec298 = shufflevector <8 x float> %wide.vec297, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec299 = shufflevector <8 x float> %wide.vec297, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec300 = load <8 x float>, ptr %i.dm, align 4, !alias.scope !1120 ; 2 uses
  %reverse302 = shufflevector <8 x float> %wide.vec300, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse304 = shufflevector <8 x float> %wide.vec300, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.dq = fsub <4 x float> %strided.vec298, %reverse302 ; 2 uses
  %i.dr = fsub <4 x float> %strided.vec292, %reverse296
  %interleaved.vec = shufflevector <4 x float> %i.dn, <4 x float> %i.dr, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.dp, align 4
  %i.ds = fadd <4 x float> %strided.vec299, %reverse304 ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %4, i64 %i.dh ; 2 uses
  %wide.vec305 = load <8 x float>, ptr %i.dt, align 4, !alias.scope !1122 ; 2 uses
  %strided.vec306 = shufflevector <8 x float> %wide.vec305, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec307 = shufflevector <8 x float> %wide.vec305, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.du = fmul <4 x float> %i.dq, %strided.vec306
  %i.dv = fmul <4 x float> %i.ds, %strided.vec307
  %i.dw = fsub <4 x float> %i.du, %i.dv
  %gep364 = getelementptr [4 x i8], ptr %invariant.gep363, i64 %i.dh
  %i.dx = getelementptr i8, ptr %gep364, i64 4
  %wide.vec308 = load <8 x float>, ptr %i.dt, align 4, !alias.scope !1122 ; 2 uses
  %strided.vec309 = shufflevector <8 x float> %wide.vec308, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec310 = shufflevector <8 x float> %wide.vec308, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dy = fmul <4 x float> %i.ds, %strided.vec309
  %i.dz = fmul <4 x float> %i.dq, %strided.vec310
  %i.ea = fadd <4 x float> %i.dy, %i.dz
  %interleaved.vec311 = shufflevector <4 x float> %i.dw, <4 x float> %i.ea, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec311, ptr %i.dx, align 4
  %index.next312 = add nuw i64 %index289, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next312, %n.vec287
  br i1 %i.eb, label %middle.block313, label %vector.body288, !llvm.loop !1124

middle.block313:                                  ; preds = %vector.body288
  br i1 %cmp.n, label %._crit_edge123, label %scalar.ph283.preheader

scalar.ph283.preheader:                           ; preds = %vector.memcheck190, %.lr.ph122, %middle.block313
  %indvars.iv153.ph = phi i64 [ %indvars.iv151, %vector.memcheck190 ], [ %indvars.iv151, %.lr.ph122 ], [ %i.dc, %middle.block313 ]
  %indvars.iv149.ph = phi i64 [ %i.cv, %vector.memcheck190 ], [ %i.cv, %.lr.ph122 ], [ %i.dd, %middle.block313 ]
  %indvars.iv145.ph = phi i64 [ %i.cu, %vector.memcheck190 ], [ %i.cu, %.lr.ph122 ], [ %i.de, %middle.block313 ]
  %indvars.iv141.ph = phi i64 [ %i.ct, %vector.memcheck190 ], [ %i.ct, %.lr.ph122 ], [ %i.df, %middle.block313 ]
  %indvars.iv137.ph = phi i64 [ 2, %vector.memcheck190 ], [ 2, %.lr.ph122 ], [ %i.cs, %middle.block313 ]
  br label %scalar.ph283

scalar.ph283:                                     ; preds = %scalar.ph283.preheader, %scalar.ph283
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %scalar.ph283 ], [ %indvars.iv153.ph, %scalar.ph283.preheader ] ; 2 uses
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph283 ], [ %indvars.iv149.ph, %scalar.ph283.preheader ] ; 2 uses
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %scalar.ph283 ], [ %indvars.iv145.ph, %scalar.ph283.preheader ] ; 2 uses
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph283 ], [ %indvars.iv141.ph, %scalar.ph283.preheader ] ; 2 uses
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %scalar.ph283 ], [ %indvars.iv137.ph, %scalar.ph283.preheader ] ; 2 uses
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 2 ; 2 uses
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 2 ; 2 uses
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, -2 ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %2, i64 %indvars.iv149
  %i.ed = getelementptr i8, ptr %i.ec, i64 4      ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4
  %i.ef = getelementptr [4 x i8], ptr %2, i64 %indvars.iv145
  %i.eg = getelementptr i8, ptr %i.ef, i64 -12    ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4
  %i.ei = fadd float %i.ee, %i.eh
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv153
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store float %i.ei, ptr %i.ek, align 4
  %i.el = load float, ptr %i.ed, align 4
  %i.em = load float, ptr %i.eg, align 4
  %i.en = fsub float %i.el, %i.em                 ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next150 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4
  %i.eq = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next146 ; 2 uses
  %i.er = load float, ptr %i.eq, align 4
  %i.es = fsub float %i.ep, %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next154
  store float %i.es, ptr %i.et, align 4
  %i.eu = load float, ptr %i.eo, align 4
  %i.ev = load float, ptr %i.eq, align 4
  %i.ew = fadd float %i.eu, %i.ev                 ; 2 uses
  %i.ex = getelementptr [4 x i8], ptr %4, i64 %indvars.iv137 ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 -8     ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4
  %i.fa = fmul float %i.en, %i.ez
  %i.fb = getelementptr i8, ptr %i.ex, i64 -4     ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4
  %i.fd = fmul float %i.ew, %i.fc
  %i.fe = fsub float %i.fa, %i.fd
  %i.ff = getelementptr [4 x i8], ptr %3, i64 %indvars.iv141
  %i.fg = getelementptr i8, ptr %i.ff, i64 4
  store float %i.fe, ptr %i.fg, align 4
  %i.fh = load float, ptr %i.ey, align 4
  %i.fi = fmul float %i.ew, %i.fh
  %i.fj = load float, ptr %i.fb, align 4
  %i.fk = fmul float %i.en, %i.fj
  %i.fl = fadd float %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next142
  store float %i.fl, ptr %i.fm, align 4
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 2 ; 2 uses
  %i.fn = icmp samesign ult i64 %indvars.iv.next138, %i.bx
  br i1 %i.fn, label %scalar.ph283, label %._crit_edge123, !llvm.loop !1125

._crit_edge123:                                   ; preds = %scalar.ph283, %middle.block313
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, %i.by
  %i.fo = add nuw nsw i32 %.1126, 1               ; 2 uses
  %indvars.iv.next140 = add i32 %indvars.iv139, %0
  %indvars.iv.next144 = add i32 %indvars.iv143, %i.b
  %indvars.iv.next148 = add i32 %indvars.iv147, %i.b
  %exitcond165.not = icmp eq i32 %i.fo, %1
  br i1 %exitcond165.not, label %._crit_edge128.split, label %.lr.ph122, !llvm.loop !1126

._crit_edge128.split:                             ; preds = %._crit_edge123
  %i.fp = and i32 %0, 1
  %.not = icmp eq i32 %i.fp, 0
  %i.fq = add nsw i32 %0, -1
  br i1 %.not, label %.lr.ph133.preheader, label %.loopexit

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %.lr.ph133.preheader, label %.loopexit

.lr.ph133.preheader:                              ; preds = %bb.c, %._crit_edge128.split
  %.2110129.ph = phi i32 [ %i.fq, %._crit_edge128.split ], [ 1, %bb.c ]
  %i.fr = zext i32 %.2110129.ph to i64            ; 4 uses
  %i.fs = sext i32 %i.b to i64                    ; 2 uses
  %i.ft = zext nneg i32 %0 to i64                 ; 2 uses
  %i.fu = sext i32 %i.a to i64
  %invariant.gep178 = getelementptr [4 x i8], ptr %3, i64 %i.fu ; 3 uses
  %xtraiter = and i32 %1, 1
  %i.fv = icmp eq i32 %1, 1
  br i1 %i.fv, label %.lr.ph133.epil.preheader, label %.lr.ph133.preheader.new

.lr.ph133.preheader.new:                          ; preds = %.lr.ph133.preheader
  %unroll_iter = and i32 %1, -2
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133, %.lr.ph133.preheader.new
  %indvars.iv168 = phi i64 [ %i.fr, %.lr.ph133.preheader.new ], [ %indvars.iv.next169.1, %.lr.ph133 ] ; 3 uses
  %indvars.iv166 = phi i64 [ %i.fr, %.lr.ph133.preheader.new ], [ %indvars.iv.next167.1, %.lr.ph133 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph133.preheader.new ], [ %niter.next.1, %.lr.ph133 ]
  %i.fw = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv166 ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4          ; 2 uses
  %i.fy = fadd float %i.fx, %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv168
  store float %i.fy, ptr %i.fz, align 4
  %i.ga = getelementptr i8, ptr %i.fw, i64 4
  %i.gb = load float, ptr %i.ga, align 4          ; 2 uses
  %i.gc = fadd float %i.gb, %i.gb
  %i.gd = fneg float %i.gc
  %gep179 = getelementptr [4 x i8], ptr %invariant.gep178, i64 %indvars.iv168
  store float %i.gd, ptr %gep179, align 4
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, %i.ft ; 3 uses
  %indvars.iv.next167 = add nsw i64 %indvars.iv166, %i.fs ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next167 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4          ; 2 uses
  %i.gg = fadd float %i.gf, %i.gf
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next169
  store float %i.gg, ptr %i.gh, align 4
  %i.gi = getelementptr i8, ptr %i.ge, i64 4
  %i.gj = load float, ptr %i.gi, align 4          ; 2 uses
  %i.gk = fadd float %i.gj, %i.gj
  %i.gl = fneg float %i.gk
  %gep179.1 = getelementptr [4 x i8], ptr %invariant.gep178, i64 %indvars.iv.next169
  store float %i.gl, ptr %gep179.1, align 4
  %indvars.iv.next169.1 = add nuw nsw i64 %indvars.iv.next169, %i.ft ; 2 uses
  %indvars.iv.next167.1 = add nsw i64 %indvars.iv.next167, %i.fs ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph133, !llvm.loop !1127

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph133
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph133.epil.preheader

.lr.ph133.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph133.preheader
  %indvars.iv168.epil.init = phi i64 [ %i.fr, %.lr.ph133.preheader ], [ %indvars.iv.next169.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv166.epil.init = phi i64 [ %i.fr, %.lr.ph133.preheader ], [ %indvars.iv.next167.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod356 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod356)
  %i.gm = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv166.epil.init ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4          ; 2 uses
  %i.go = fadd float %i.gn, %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv168.epil.init
  store float %i.go, ptr %i.gp, align 4
  %i.gq = getelementptr i8, ptr %i.gm, i64 4
  %i.gr = load float, ptr %i.gq, align 4          ; 2 uses
  %i.gs = fadd float %i.gr, %i.gr
  %i.gt = fneg float %i.gs
  %gep179.epil = getelementptr [4 x i8], ptr %invariant.gep178, i64 %indvars.iv168.epil.init
  store float %i.gt, ptr %gep179.epil, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph133.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.c, %._crit_edge128.split, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @dradb3(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #43 {
bb.a:
  %i.a = mul i32 %1, %0                           ; 3 uses
  %i.b = shl i32 %i.a, 1                          ; 2 uses
  %i.c = shl i32 %0, 1                            ; 2 uses
  %i.d = mul i32 %0, 3                            ; 3 uses
  %i.e = icmp sgt i32 %1, 0
end_hunk_11
begin_hunk_12_@dradb3:bb.a
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %scalar.ph472 ], [ %indvars.iv180.ph, %scalar.ph472.preheader ] ; 2 uses
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %scalar.ph472 ], [ %indvars.iv176.ph, %scalar.ph472.preheader ] ; 3 uses
  %indvars.iv.next181 = add nsw i64 %indvars.iv180, 2 ; 2 uses
  %indvars.iv.next183 = add nsw i64 %indvars.iv182, -2 ; 2 uses
  %indvars.iv.next187 = add nsw i64 %indvars.iv186, 2 ; 2 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 2 ; 2 uses
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 2 ; 2 uses
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 2 ; 2 uses
  %i.hm = getelementptr [4 x i8], ptr %2, i64 %indvars.iv180
  %i.hn = getelementptr i8, ptr %i.hm, i64 4      ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4
  %i.hp = getelementptr [4 x i8], ptr %2, i64 %indvars.iv182
  %i.hq = getelementptr i8, ptr %i.hp, i64 -12    ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4
  %i.hs = fadd float %i.ho, %i.hr                 ; 2 uses
  %i.ht = getelementptr [4 x i8], ptr %2, i64 %indvars.iv186
  %i.hu = getelementptr i8, ptr %i.ht, i64 4
  %i.hv = load float, ptr %i.hu, align 4          ; 2 uses
  %i.hw = fmul float %i.hs, 5.000000e-01
  %i.hx = fsub float %i.hv, %i.hw                 ; 2 uses
  %i.hy = fadd float %i.hv, %i.hs
  %i.hz = getelementptr [4 x i8], ptr %3, i64 %indvars.iv198
  %i.ia = getelementptr i8, ptr %i.hz, i64 4
  store float %i.hy, ptr %i.ia, align 4
  %i.ib = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next181 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4
  %i.id = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next183 ; 2 uses
  %i.ie = load float, ptr %i.id, align 4
  %i.if = fsub float %i.ic, %i.ie                 ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next187
  %i.ih = load float, ptr %i.ig, align 4          ; 2 uses
  %i.ii = fmul float %i.if, 5.000000e-01
  %i.ij = fsub float %i.ih, %i.ii                 ; 2 uses
  %i.ik = fadd float %i.ih, %i.if
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next199
  store float %i.ik, ptr %i.il, align 4
  %i.im = load float, ptr %i.hn, align 4
  %i.in = load float, ptr %i.hq, align 4
  %i.io = fsub float %i.im, %i.in
  %i.ip = fmul float %i.io, f0x3F5DB3D7           ; 2 uses
  %i.iq = load float, ptr %i.ib, align 4
  %i.ir = load float, ptr %i.id, align 4
  %i.is = fadd float %i.iq, %i.ir
  %i.it = fmul float %i.is, f0x3F5DB3D7           ; 2 uses
  %i.iu = fsub float %i.hx, %i.it                 ; 2 uses
  %i.iv = fadd float %i.hx, %i.it                 ; 2 uses
  %i.iw = fadd float %i.ij, %i.ip                 ; 2 uses
  %i.ix = fsub float %i.ij, %i.ip                 ; 2 uses
  %i.iy = add nsw i64 %indvars.iv176, -2          ; 2 uses
  %i.iz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.iy ; 2 uses
  %i.ja = load float, ptr %i.iz, align 4
  %i.jb = fmul float %i.ja, %i.iu
  %i.jc = add nsw i64 %indvars.iv176, -1          ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %4, i64 %i.jc ; 2 uses
  %i.je = load float, ptr %i.jd, align 4
  %i.jf = fmul float %i.iw, %i.je
  %i.jg = fsub float %i.jb, %i.jf
  %i.jh = getelementptr [4 x i8], ptr %3, i64 %indvars.iv194
  %i.ji = getelementptr i8, ptr %i.jh, i64 4
  store float %i.jg, ptr %i.ji, align 4
  %i.jj = load float, ptr %i.iz, align 4
  %i.jk = fmul float %i.iw, %i.jj
  %i.jl = load float, ptr %i.jd, align 4
  %i.jm = fmul float %i.iu, %i.jl
  %i.jn = fadd float %i.jk, %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next195
  store float %i.jn, ptr %i.jo, align 4
  %i.jp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.iy ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4
  %i.jr = fmul float %i.iv, %i.jq
  %i.js = getelementptr inbounds [4 x i8], ptr %5, i64 %i.jc ; 2 uses
  %i.jt = load float, ptr %i.js, align 4
  %i.ju = fmul float %i.ix, %i.jt
  %i.jv = fsub float %i.jr, %i.ju
  %i.jw = getelementptr [4 x i8], ptr %3, i64 %indvars.iv190
  %i.jx = getelementptr i8, ptr %i.jw, i64 4
  store float %i.jv, ptr %i.jx, align 4
  %i.jy = load float, ptr %i.jp, align 4
  %i.jz = fmul float %i.ix, %i.jy
  %i.ka = load float, ptr %i.js, align 4
  %i.kb = fmul float %i.iv, %i.ka
  %i.kc = fadd float %i.jz, %i.kb
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next191
  store float %i.kc, ptr %i.kd, align 4
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.ke = icmp samesign ult i64 %indvars.iv.next177, %i.dh
  br i1 %i.ke, label %scalar.ph472, label %._crit_edge162, !llvm.loop !1155

._crit_edge162:                                   ; preds = %scalar.ph472, %middle.block510
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, %i.di
  %i.kf = add nuw nsw i32 %.1164, 1               ; 2 uses
  %indvars.iv.next179 = add i32 %indvars.iv178, %i.d
  %indvars.iv.next185 = add i32 %indvars.iv184, %i.d
  %indvars.iv.next189 = add i32 %indvars.iv188, %0
  %indvars.iv.next193 = add i32 %indvars.iv192, %0
  %exitcond214.not = icmp eq i32 %i.kf, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond214.not, label %.loopexit, label %.lr.ph161, !llvm.loop !1156

.loopexit:                                        ; preds = %._crit_edge162, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @dradbg(i32 noundef %0, i32 noundef range(i32 5, 3) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readonly captures(none) %9) unnamed_addr #56 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 7 uses
  %i.b = ptrtoaddr ptr %8 to i64                  ; 7 uses
  %i.c = mul i32 %1, %0                           ; 7 uses
  %i.d = mul i32 %2, %0                           ; 30 uses
  %i.e = sitofp i32 %1 to float
  %i.f = fdiv float f0x40C90FDB, %i.e
  %i.g = fpext float %i.f to double               ; 2 uses
  %i.h = tail call double @cos(double noundef %i.g) #62
  %i.i = fptrunc double %i.h to float
  %i.j = tail call double @sin(double noundef %i.g) #62
  %i.k = fptrunc double %i.j to float
  %i.l = add i32 %0, -1                           ; 2 uses
  %i.m = ashr i32 %i.l, 1                         ; 3 uses
  %i.n = add nsw i32 %1, 1
  %i.o = ashr i32 %i.n, 1                         ; 11 uses
  %i.p = icmp slt i32 %0, %2
  br i1 %i.p, label %.preheader666, label %.preheader669

.preheader669:                                    ; preds = %bb.a
  %i.q = icmp sgt i32 %2, 0
  %i.r = icmp sgt i32 %0, 0
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %.preheader668.preheader, label %.loopexit667

.preheader668.preheader:                          ; preds = %.preheader669
  %i.s = zext nneg i32 %0 to i64                  ; 4 uses
  %i.t = sext i32 %i.c to i64                     ; 2 uses
  %i.u = add nsw i32 %2, -1
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = mul nuw nsw i64 %i.s, %i.v
  %i.x = zext i32 %i.l to i64                     ; 2 uses
  %i.y = add nuw i64 %i.w, %i.x
  %i.z = shl i64 %i.y, 2
  %i.aa = getelementptr i8, ptr %7, i64 %i.z
  %scevgep = getelementptr i8, ptr %i.aa, i64 4
  %i.ab = mul nsw i64 %i.t, %i.v
  %i.ac = add i64 %i.ab, %i.x
  %i.ad = shl i64 %i.ac, 2
  %i.ae = getelementptr i8, ptr %4, i64 %i.ad
  %scevgep1203 = getelementptr i8, ptr %i.ae, i64 4
  %min.iters.check = icmp ult i32 %0, 8
  %bound0 = icmp ult ptr %7, %scevgep1203
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.c, 0
  %i.af = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.s, 2147483640               ; 5 uses
  %i.ag = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.s
  br label %.preheader668

.preheader666:                                    ; preds = %bb.a
  %i.ah = icmp sgt i32 %0, 0
  %i.ai = icmp sgt i32 %2, 0
  %or.cond861 = and i1 %i.ah, %i.ai
  br i1 %or.cond861, label %.preheader665.preheader, label %.loopexit667

.preheader665.preheader:                          ; preds = %.preheader666
  %i.aj = zext nneg i32 %0 to i64                 ; 7 uses
  %i.ak = sext i32 %i.c to i64                    ; 5 uses
  %i.al = add nsw i32 %2, -1
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = add nuw nsw i64 %i.aj, %i.am
  %i.ao = shl nuw nsw i64 %i.an, 2
  %scevgep1208 = getelementptr i8, ptr %7, i64 %i.ao
  %i.ap = sext i32 %1 to i64
  %i.aq = mul nsw i64 %i.ap, %i.am
  %i.ar = sext i32 %1 to i64                      ; 5 uses
  %i.as = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check1216 = icmp ugt i32 %2, 3
  %ident.check.not = icmp eq i32 %0, 1
  %or.cond1768 = and i1 %min.iters.check1216, %ident.check.not
  %n.vec1219 = and i64 %i.as, 2147483644          ; 5 uses
  %i.at = mul nsw i64 %n.vec1219, %i.ar
  %i.au = trunc nuw nsw i64 %n.vec1219 to i32
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.ar
  %.idx = shl nsw i64 %i.ar, 3
  %invariant.gep1820 = getelementptr i8, ptr %4, i64 %.idx
  %.idx1763 = mul nsw i64 %i.ar, 12
  %invariant.gep1822 = getelementptr i8, ptr %4, i64 %.idx1763
  %cmp.n1224 = icmp eq i64 %n.vec1219, %i.as
  br label %.preheader665

.preheader668:                                    ; preds = %.preheader668.preheader, %._crit_edge
  %indvars.iv892 = phi i64 [ 0, %.preheader668.preheader ], [ %indvars.iv.next893, %._crit_edge ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader668.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.0543676 = phi i32 [ 0, %.preheader668.preheader ], [ %i.ce, %._crit_edge ]
  %brmerge1870 = select i1 %min.iters.check, i1 true, i1 %i.af
  br i1 %brmerge1870, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader668
  %i.av = add i64 %indvars.iv892, %n.vec
  %i.aw = add nuw i64 %indvars.iv, %n.vec
  %i.ax = getelementptr [4 x i8], ptr %4, i64 %indvars.iv892
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr [4 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x float>, ptr %i.az, align 4, !alias.scope !1157
  %wide.load1204 = load <4 x float>, ptr %i.ba, align 4, !alias.scope !1157
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x float> %wide.load, ptr %i.bb, align 4, !alias.scope !1160, !noalias !1157
  store <4 x float> %wide.load1204, ptr %i.bc, align 4, !alias.scope !1160, !noalias !1157
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1162

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader668, %middle.block
  %indvars.iv894.ph = phi i64 [ %i.av, %middle.block ], [ %indvars.iv892, %.preheader668 ] ; 2 uses
  %indvars.iv890.ph = phi i64 [ %i.aw, %middle.block ], [ %indvars.iv, %.preheader668 ] ; 2 uses
  %.0533673.ph = phi i32 [ %i.ag, %middle.block ], [ 0, %.preheader668 ] ; 4 uses
  %i.be = sub i32 %0, %.0533673.ph
  %xtraiter = and i32 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv894.prol = phi i64 [ %indvars.iv.next895.prol, %scalar.ph.prol ], [ %indvars.iv894.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv890.prol = phi i64 [ %indvars.iv.next891.prol, %scalar.ph.prol ], [ %indvars.iv890.ph, %scalar.ph.preheader ] ; 2 uses
  %.0533673.prol = phi i32 [ %i.bi, %scalar.ph.prol ], [ %.0533673.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv894.prol
  %i.bg = load float, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890.prol
  store float %i.bg, ptr %i.bh, align 4
  %indvars.iv.next891.prol = add nuw nsw i64 %indvars.iv890.prol, 1 ; 2 uses
  %indvars.iv.next895.prol = add nsw i64 %indvars.iv894.prol, 1 ; 2 uses
  %i.bi = add nuw nsw i32 %.0533673.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1163

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv894.unr = phi i64 [ %indvars.iv894.ph, %scalar.ph.preheader ], [ %indvars.iv.next895.prol, %scalar.ph.prol ]
  %indvars.iv890.unr = phi i64 [ %indvars.iv890.ph, %scalar.ph.preheader ], [ %indvars.iv.next891.prol, %scalar.ph.prol ]
  %.0533673.unr = phi i32 [ %.0533673.ph, %scalar.ph.preheader ], [ %i.bi, %scalar.ph.prol ]
  %i.bj = sub i32 %.0533673.ph, %0
  %i.bk = icmp ugt i32 %i.bj, -4
  br i1 %i.bk, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv894 = phi i64 [ %indvars.iv.next895.3, %scalar.ph ], [ %indvars.iv894.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv890 = phi i64 [ %indvars.iv.next891.3, %scalar.ph ], [ %indvars.iv890.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0533673 = phi i32 [ %i.cd, %scalar.ph ], [ %.0533673.unr, %scalar.ph.prol.loopexit ]
  %i.bl = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  store float %i.bm, ptr %i.bn, align 4
  %i.bo = getelementptr [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store float %i.bq, ptr %i.bs, align 4
  %i.bt = getelementptr [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store float %i.bv, ptr %i.bx, align 4
  %i.by = getelementptr [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bz = getelementptr i8, ptr %i.by, i64 12
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store float %i.ca, ptr %i.cc, align 4
  %indvars.iv.next891.3 = add nuw nsw i64 %indvars.iv890, 4
  %indvars.iv.next895.3 = add nsw i64 %indvars.iv894, 4
  %i.cd = add nuw nsw i32 %.0533673, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.cd, %0
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1164

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.s
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, %i.t
  %i.ce = add nuw nsw i32 %.0543676, 1            ; 2 uses
  %exitcond902.not = icmp eq i32 %i.ce, %2
  br i1 %exitcond902.not, label %.loopexit667, label %.preheader668, !llvm.loop !1165

.preheader665:                                    ; preds = %.preheader665.preheader, %._crit_edge680
  %indvars.iv903 = phi i64 [ 0, %.preheader665.preheader ], [ %indvars.iv.next904, %._crit_edge680 ] ; 11 uses
  br i1 %or.cond1768, label %vector.memcheck1207, label %scalar.ph1215.preheader

vector.memcheck1207:                              ; preds = %.preheader665
  %i.cf = shl nuw nsw i64 %indvars.iv903, 2
  %scevgep1209 = getelementptr i8, ptr %4, i64 %i.cf ; 4 uses
  %i.cg = add i64 %i.aq, %indvars.iv903
  %i.ch = shl i64 %i.cg, 2
  %scevgep1210 = getelementptr i8, ptr %4, i64 %i.ch ; 4 uses
  %i.ci = icmp ugt ptr %scevgep1209, %scevgep1210
  %umax = select i1 %i.ci, ptr %scevgep1209, ptr %scevgep1210
  %scevgep1211 = getelementptr i8, ptr %umax, i64 4
  %i.cj = icmp ult ptr %scevgep1209, %scevgep1210
  %umin = select i1 %i.cj, ptr %scevgep1209, ptr %scevgep1210
  %bound01212 = icmp ult ptr %7, %scevgep1211
  %bound11213 = icmp ult ptr %umin, %scevgep1208
  %found.conflict1214 = and i1 %bound01212, %bound11213
  br i1 %found.conflict1214, label %scalar.ph1215.preheader, label %vector.ph1217

vector.ph1217:                                    ; preds = %vector.memcheck1207
  %i.ck = add i64 %indvars.iv903, %i.at
  %i.cl = add nuw i64 %indvars.iv903, %n.vec1219
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv903
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %vector.ph1217
  %index1221 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1222, %vector.body1220 ] ; 3 uses
  %i.cn = mul i64 %index1221, %i.ar
  %i.co = add i64 %indvars.iv903, %i.cn           ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.co
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %gep1821 = getelementptr [4 x i8], ptr %invariant.gep1820, i64 %i.co
  %gep1823 = getelementptr [4 x i8], ptr %invariant.gep1822, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !alias.scope !1166
  %i.cr = load float, ptr %gep, align 4, !alias.scope !1166
  %i.cs = load float, ptr %gep1821, align 4, !alias.scope !1166
  %i.ct = load float, ptr %gep1823, align 4, !alias.scope !1166
  %i.cu = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 1
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 2
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 3
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index1221
  store <4 x float> %i.cx, ptr %i.cy, align 4, !alias.scope !1169, !noalias !1166
  %index.next1222 = add nuw i64 %index1221, 4     ; 2 uses
  %i.cz = icmp eq i64 %index.next1222, %n.vec1219
  br i1 %i.cz, label %middle.block1223, label %vector.body1220, !llvm.loop !1171

middle.block1223:                                 ; preds = %vector.body1220
  br i1 %cmp.n1224, label %._crit_edge680, label %scalar.ph1215.preheader

scalar.ph1215.preheader:                          ; preds = %vector.memcheck1207, %.preheader665, %middle.block1223
  %indvars.iv907.ph = phi i64 [ %indvars.iv903, %vector.memcheck1207 ], [ %indvars.iv903, %.preheader665 ], [ %i.ck, %middle.block1223 ] ; 2 uses
  %indvars.iv905.ph = phi i64 [ %indvars.iv903, %vector.memcheck1207 ], [ %indvars.iv903, %.preheader665 ], [ %i.cl, %middle.block1223 ] ; 2 uses
  %.1544679.ph = phi i32 [ 0, %vector.memcheck1207 ], [ 0, %.preheader665 ], [ %i.au, %middle.block1223 ] ; 4 uses
  %i.da = sub i32 %2, %.1544679.ph
  %xtraiter1803 = and i32 %i.da, 3                ; 2 uses
  %lcmp.mod1804.not = icmp eq i32 %xtraiter1803, 0
  br i1 %lcmp.mod1804.not, label %scalar.ph1215.prol.loopexit, label %scalar.ph1215.prol

scalar.ph1215.prol:                               ; preds = %scalar.ph1215.preheader, %scalar.ph1215.prol
  %indvars.iv907.prol = phi i64 [ %indvars.iv.next908.prol, %scalar.ph1215.prol ], [ %indvars.iv907.ph, %scalar.ph1215.preheader ] ; 2 uses
  %indvars.iv905.prol = phi i64 [ %indvars.iv.next906.prol, %scalar.ph1215.prol ], [ %indvars.iv905.ph, %scalar.ph1215.preheader ] ; 2 uses
  %.1544679.prol = phi i32 [ %i.de, %scalar.ph1215.prol ], [ %.1544679.ph, %scalar.ph1215.preheader ]
  %prol.iter1805 = phi i32 [ %prol.iter1805.next, %scalar.ph1215.prol ], [ 0, %scalar.ph1215.preheader ]
  %i.db = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv907.prol
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv905.prol
  store float %i.dc, ptr %i.dd, align 4
  %indvars.iv.next906.prol = add nuw nsw i64 %indvars.iv905.prol, %i.aj ; 2 uses
  %indvars.iv.next908.prol = add nsw i64 %indvars.iv907.prol, %i.ak ; 2 uses
  %i.de = add nuw nsw i32 %.1544679.prol, 1       ; 2 uses
  %prol.iter1805.next = add i32 %prol.iter1805, 1 ; 2 uses
  %prol.iter1805.cmp.not = icmp eq i32 %prol.iter1805.next, %xtraiter1803
  br i1 %prol.iter1805.cmp.not, label %scalar.ph1215.prol.loopexit, label %scalar.ph1215.prol, !llvm.loop !1172

scalar.ph1215.prol.loopexit:                      ; preds = %scalar.ph1215.prol, %scalar.ph1215.preheader
  %indvars.iv907.unr = phi i64 [ %indvars.iv907.ph, %scalar.ph1215.preheader ], [ %indvars.iv.next908.prol, %scalar.ph1215.prol ]
  %indvars.iv905.unr = phi i64 [ %indvars.iv905.ph, %scalar.ph1215.preheader ], [ %indvars.iv.next906.prol, %scalar.ph1215.prol ]
  %.1544679.unr = phi i32 [ %.1544679.ph, %scalar.ph1215.preheader ], [ %i.de, %scalar.ph1215.prol ]
  %i.df = sub i32 %.1544679.ph, %2
  %i.dg = icmp ugt i32 %i.df, -4
  br i1 %i.dg, label %._crit_edge680, label %scalar.ph1215

scalar.ph1215:                                    ; preds = %scalar.ph1215.prol.loopexit, %scalar.ph1215
  %indvars.iv907 = phi i64 [ %indvars.iv.next908.3, %scalar.ph1215 ], [ %indvars.iv907.unr, %scalar.ph1215.prol.loopexit ] ; 2 uses
  %indvars.iv905 = phi i64 [ %indvars.iv.next906.3, %scalar.ph1215 ], [ %indvars.iv905.unr, %scalar.ph1215.prol.loopexit ] ; 2 uses
  %.1544679 = phi i32 [ %i.dt, %scalar.ph1215 ], [ %.1544679.unr, %scalar.ph1215.prol.loopexit ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv907
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv905
  store float %i.di, ptr %i.dj, align 4
  %indvars.iv.next906 = add nuw nsw i64 %indvars.iv905, %i.aj ; 2 uses
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, %i.ak ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next908
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next906
  store float %i.dl, ptr %i.dm, align 4
  %indvars.iv.next906.1 = add nuw nsw i64 %indvars.iv.next906, %i.aj ; 2 uses
  %indvars.iv.next908.1 = add nsw i64 %indvars.iv.next908, %i.ak ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next908.1
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next906.1
  store float %i.do, ptr %i.dp, align 4
  %indvars.iv.next906.2 = add nuw nsw i64 %indvars.iv.next906.1, %i.aj ; 2 uses
  %indvars.iv.next908.2 = add nsw i64 %indvars.iv.next908.1, %i.ak ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next908.2
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next906.2
  store float %i.dr, ptr %i.ds, align 4
  %indvars.iv.next906.3 = add nuw nsw i64 %indvars.iv.next906.2, %i.aj
  %indvars.iv.next908.3 = add nsw i64 %indvars.iv.next908.2, %i.ak
  %i.dt = add nuw nsw i32 %.1544679, 4            ; 2 uses
  %exitcond912.not.3 = icmp eq i32 %i.dt, %2
  br i1 %exitcond912.not.3, label %._crit_edge680, label %scalar.ph1215, !llvm.loop !1173

._crit_edge680:                                   ; preds = %scalar.ph1215.prol.loopexit, %scalar.ph1215, %middle.block1223
  %indvars.iv.next904 = add nuw nsw i64 %indvars.iv903, 1 ; 2 uses
  %exitcond916.not = icmp eq i64 %indvars.iv.next904, %i.aj
  br i1 %exitcond916.not, label %.loopexit667, label %.preheader665, !llvm.loop !1174

.loopexit667:                                     ; preds = %._crit_edge, %._crit_edge680, %.preheader669, %.preheader666
  %i.du = shl i32 %0, 1                           ; 7 uses
  %i.dv = icmp sgt i32 %i.o, 1                    ; 7 uses
  %i.dw = icmp sgt i32 %2, 0                      ; 2 uses
  %or.cond862 = and i1 %i.dv, %i.dw               ; 2 uses
  br i1 %or.cond862, label %.lr.ph.preheader, label %._crit_edge695.split

.lr.ph.preheader:                                 ; preds = %.loopexit667
  %i.dx = sext i32 %0 to i64                      ; 6 uses
  %i.dy = sext i32 %i.du to i64                   ; 2 uses
  %i.dz = sext i32 %i.c to i64                    ; 3 uses
  %i.ea = add i32 %1, -1                          ; 2 uses
  %i.eb = mul i32 %i.d, %i.ea
  %i.ec = add nsw i32 %2, -1                      ; 3 uses
  %i.ed = sext i32 %1 to i64                      ; 2 uses
  %i.ee = shl nsw i64 %i.ed, 2                    ; 2 uses
  %i.ef = mul nsw i64 %i.ed, -4                   ; 2 uses
  %i.eg = zext i32 %i.ec to i64                   ; 2 uses
  %i.eh = shl nuw nsw i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 4                ; 2 uses
  %scevgep1237 = getelementptr i8, ptr %7, i64 %i.ei
  %scevgep1240 = getelementptr i8, ptr %7, i64 %i.ei
  %i.ej = sext i32 %1 to i64
  %i.ek = mul nsw i64 %i.ej, %i.eg
  %i.el = shl i64 %i.ek, 2                        ; 2 uses
  %i.em = getelementptr i8, ptr %4, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %i.eo = getelementptr i8, ptr %4, i64 %i.el
  %i.ep = getelementptr i8, ptr %i.eo, i64 4
  %i.eq = sext i32 %1 to i64                      ; 5 uses
  %i.er = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check1271 = icmp ult i32 %2, 36
  %ident.check1229 = icmp ne i32 %0, 1
  %i.es = icmp slt i32 %1, 0                      ; 2 uses
  %i.et = select i1 %i.es, i64 %i.ef, i64 %i.ee
  %i.eu = zext i32 %i.ec to i64
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.et, i64 %i.eu) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.ev = sub i64 0, %mul.result
  %i.ew = icmp slt i32 %1, 0                      ; 2 uses
  %i.ex = select i1 %i.ew, i64 %i.ef, i64 %i.ee
  %i.ey = zext i32 %i.ec to i64
  %mul1232 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ex, i64 %i.ey) ; 2 uses
  %mul.result1233 = extractvalue { i64, i1 } %mul1232, 0 ; 2 uses
  %mul.overflow1234 = extractvalue { i64, i1 } %mul1232, 1
  %i.ez = sub i64 0, %mul.result1233
  %invariant.op = or i1 %mul.overflow, %ident.check1229
  %n.vec1274 = and i64 %i.er, 2147483644          ; 6 uses
  %i.fa = mul nsw i64 %n.vec1274, %i.eq
  %i.fb = trunc nuw nsw i64 %n.vec1274 to i32
  %invariant.gep1824 = getelementptr [4 x i8], ptr %4, i64 %i.eq
  %.idx1764 = shl nsw i64 %i.eq, 3
  %invariant.gep1826 = getelementptr i8, ptr %4, i64 %.idx1764
  %.idx1765 = mul nsw i64 %i.eq, 12
  %invariant.gep1828 = getelementptr i8, ptr %4, i64 %.idx1765
  %cmp.n1279 = icmp eq i64 %n.vec1274, %i.er
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge688
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge688 ] ; 5 uses
  %indvars.iv925 = phi i32 [ %i.eb, %.lr.ph.preheader ], [ %indvars.iv.next926, %._crit_edge688 ] ; 2 uses
  %indvars.iv921 = phi i64 [ %i.dy, %.lr.ph.preheader ], [ %indvars.iv.next922, %._crit_edge688 ] ; 6 uses
  %indvars.iv917 = phi i32 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next918, %._crit_edge688 ] ; 2 uses
  %.0535692 = phi i32 [ 1, %.lr.ph.preheader ], [ %i.ip, %._crit_edge688 ]
  %i.fc = trunc i64 %indvar to i32
  %i.fd = add i32 %i.fc, 1
  %i.fe = mul i32 %i.fd, %2
  %i.ff = sext i32 %i.fe to i64
  %i.fg = shl nsw i64 %i.ff, 2                    ; 2 uses
  %scevgep1236 = getelementptr i8, ptr %7, i64 %i.fg ; 3 uses
  %scevgep1238 = getelementptr i8, ptr %scevgep1237, i64 %i.fg ; 3 uses
  %i.fh = trunc i64 %indvar to i32
  %i.fi = sub i32 %i.ea, %i.fh
  %i.fj = mul i32 %2, %i.fi
  %i.fk = sext i32 %i.fj to i64
  %i.fl = shl nsw i64 %i.fk, 2                    ; 2 uses
  %scevgep1239 = getelementptr i8, ptr %7, i64 %i.fl ; 3 uses
  %scevgep1241 = getelementptr i8, ptr %scevgep1240, i64 %i.fl ; 3 uses
  %i.fm = shl nuw nsw i64 %indvar, 3              ; 4 uses
  %scevgep1242 = getelementptr i8, ptr %i.en, i64 %i.fm ; 4 uses
  %i.fn = getelementptr i8, ptr %4, i64 %i.fm
  %scevgep1243 = getelementptr i8, ptr %i.fn, i64 8 ; 4 uses
  %i.fo = icmp ult ptr %scevgep1242, %scevgep1243
  %umin1244 = select i1 %i.fo, ptr %scevgep1242, ptr %scevgep1243 ; 2 uses
  %i.fp = icmp ugt ptr %scevgep1242, %scevgep1243
  %umax1245 = select i1 %i.fp, ptr %scevgep1242, ptr %scevgep1243
  %scevgep1246 = getelementptr i8, ptr %umax1245, i64 4 ; 2 uses
  %scevgep1247 = getelementptr i8, ptr %i.ep, i64 %i.fm ; 4 uses
  %i.fq = getelementptr i8, ptr %4, i64 %i.fm
  %scevgep1248 = getelementptr i8, ptr %i.fq, i64 4 ; 4 uses
  %i.fr = icmp ult ptr %scevgep1247, %scevgep1248
  %umin1249 = select i1 %i.fr, ptr %scevgep1247, ptr %scevgep1248 ; 2 uses
  %i.fs = icmp ugt ptr %scevgep1247, %scevgep1248
  %umax1250 = select i1 %i.fs, ptr %scevgep1247, ptr %scevgep1248
  %scevgep1251 = getelementptr i8, ptr %umax1250, i64 4 ; 2 uses
  %i.ft = sext i32 %indvars.iv917 to i64          ; 5 uses
  %i.fu = sext i32 %indvars.iv925 to i64          ; 5 uses
  br i1 %min.iters.check1271, label %scalar.ph1270.preheader, label %vector.scevcheck1228

vector.scevcheck1228:                             ; preds = %.lr.ph
  %i.fv = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %i.fw = getelementptr i8, ptr %4, i64 %i.fv
  %scevgep1231 = getelementptr i8, ptr %i.fw, i64 8 ; 4 uses
  %i.fx = getelementptr i8, ptr %4, i64 %i.fv
  %scevgep1230 = getelementptr i8, ptr %i.fx, i64 4 ; 4 uses
  %i.fy = getelementptr i8, ptr %scevgep1230, i64 %mul.result
  %i.fz = getelementptr i8, ptr %scevgep1230, i64 %i.ev
  %i.ga = icmp ult ptr %i.fy, %scevgep1230
  %i.gb = icmp ugt ptr %i.fz, %scevgep1230
  %i.gc = select i1 %i.es, i1 %i.gb, i1 %i.ga
  %i.gd = getelementptr i8, ptr %scevgep1231, i64 %mul.result1233
  %i.ge = getelementptr i8, ptr %scevgep1231, i64 %i.ez
  %i.gf = icmp ult ptr %i.gd, %scevgep1231
  %i.gg = icmp ugt ptr %i.ge, %scevgep1231
  %i.gh = select i1 %i.ew, i1 %i.gg, i1 %i.gf
  %i.gi = or i1 %i.gh, %mul.overflow1234
  %.reass = or i1 %i.gc, %invariant.op
  %i.gj = or i1 %.reass, %i.gi
  br i1 %i.gj, label %scalar.ph1270.preheader, label %vector.memcheck1235

vector.memcheck1235:                              ; preds = %vector.scevcheck1228
end_hunk_12
begin_hunk_13_@dradbg:bb.a
  %i.xk = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1071
  store float %i.xj, ptr %i.xk, align 4
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, %i.ux ; 3 uses
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, %i.ux ; 3 uses
  %i.xl = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1068 ; 2 uses
  %i.xm = load float, ptr %i.xl, align 4
  %i.xn = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1072 ; 2 uses
  %i.xo = load float, ptr %i.xn, align 4
  %i.xp = fsub float %i.xm, %i.xo
  %i.xq = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1068
  store float %i.xp, ptr %i.xq, align 4
  %i.xr = load float, ptr %i.xl, align 4
  %i.xs = load float, ptr %i.xn, align 4
  %i.xt = fadd float %i.xr, %i.xs
  %i.xu = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1072
  store float %i.xt, ptr %i.xu, align 4
  %indvars.iv.next1068.1 = add nsw i64 %indvars.iv.next1068, %i.ux
  %indvars.iv.next1072.1 = add nsw i64 %indvars.iv.next1072, %i.ux
  %i.xv = add nuw nsw i32 %.5548778, 2            ; 2 uses
  %exitcond1076.not.1 = icmp eq i32 %i.xv, %2
  br i1 %exitcond1076.not.1, label %._crit_edge781, label %scalar.ph1560, !llvm.loop !1236

._crit_edge781:                                   ; preds = %scalar.ph1560.prol.loopexit, %scalar.ph1560, %middle.block1572
  %i.xw = add nuw nsw i32 %.5540784, 1            ; 2 uses
  %indvars.iv.next1066 = add i32 %indvars.iv1065, %i.d
  %indvars.iv.next1070 = sub i32 %indvars.iv1069, %i.d
  %exitcond1077.not = icmp eq i32 %i.xw, %i.o
  %indvar.next1528 = add i32 %indvar1527, 1
  br i1 %exitcond1077.not, label %._crit_edge786.split, label %.lr.ph780, !llvm.loop !1237

._crit_edge786.split:                             ; preds = %._crit_edge781, %.preheader658.thread, %.preheader658
  %i.xx = phi i32 [ %.ph, %.preheader658.thread ], [ %i.qs, %.preheader658 ], [ %i.qs, %._crit_edge781 ] ; 2 uses
  %i.xy = phi i1 [ %i.rx, %.preheader658.thread ], [ %i.ry, %.preheader658 ], [ %i.ry, %._crit_edge781 ]
  br i1 %i.iq, label %.critedge, label %bb.e

bb.e:                                             ; preds = %._crit_edge786.split
  %i.xz = icmp slt i32 %i.m, %2
  br i1 %i.xz, label %.preheader654, label %.preheader656

.preheader656:                                    ; preds = %bb.e
  br i1 %i.dv, label %.lr.ph799, label %.loopexit

.lr.ph799:                                        ; preds = %.preheader656
  %i.ya = icmp slt i32 %2, 1
  %i.yb = icmp slt i32 %0, 3
  %brmerge874 = or i1 %i.ya, %i.yb
  br i1 %brmerge874, label %.loopexit, label %.preheader655.lr.ph.preheader

.preheader655.lr.ph.preheader:                    ; preds = %.lr.ph799
  %i.yc = mul i32 %i.d, %i.xx
  %i.yd = zext nneg i32 %0 to i64                 ; 3 uses
  %scevgep1578 = getelementptr i8, ptr %7, i64 4
  %i.ye = add nsw i32 %2, -1
  %i.yf = zext i32 %i.ye to i64
  %i.yg = mul nuw nsw i64 %i.yd, %i.yf
  %i.yh = shl i64 %i.yg, 2
  %i.yi = add nsw i32 %0, -3
  %i.yj = lshr i32 %i.yi, 1
  %i.yk = zext nneg i32 %i.yj to i64
  %i.yl = shl nuw nsw i64 %i.yk, 3
  %i.ym = add i64 %i.yh, %i.yl                    ; 2 uses
  %i.yn = add i64 %i.ym, 8                        ; 2 uses
  %scevgep1580 = getelementptr i8, ptr %7, i64 %i.yn
  %scevgep1582 = getelementptr i8, ptr %7, i64 4
  %scevgep1584 = getelementptr i8, ptr %7, i64 %i.yn
  %scevgep1586 = getelementptr i8, ptr %7, i64 8
  %i.yo = add i64 %i.ym, 12                       ; 4 uses
  %scevgep1588 = getelementptr i8, ptr %7, i64 %i.yo
  %scevgep1590 = getelementptr i8, ptr %7, i64 8
  %scevgep1592 = getelementptr i8, ptr %7, i64 %i.yo
  %scevgep1594 = getelementptr i8, ptr %5, i64 4
  %scevgep1596 = getelementptr i8, ptr %5, i64 %i.yo
  %scevgep1598 = getelementptr i8, ptr %5, i64 4
  %scevgep1600 = getelementptr i8, ptr %5, i64 %i.yo
  %i.yp = add nsw i32 %0, -3                      ; 2 uses
  %i.yq = lshr i32 %i.yp, 1
  %narrow1766 = add nuw i32 %i.yq, 1
  %i.yr = zext i32 %narrow1766 to i64             ; 2 uses
  %min.iters.check1658 = icmp ult i32 %i.yp, 22
  %n.vec1661 = and i64 %i.yr, 4294967292          ; 4 uses
  %i.ys = shl nuw nsw i64 %n.vec1661, 1           ; 2 uses
  %i.yt = trunc nuw i64 %n.vec1661 to i32
  %i.yu = shl i32 %i.yt, 1
  %i.yv = or disjoint i32 %i.yu, 2
  %cmp.n1680 = icmp eq i64 %n.vec1661, %i.yr
  br label %.preheader655.lr.ph

.preheader654:                                    ; preds = %bb.e
  br i1 %i.dv, label %.lr.ph816, label %.loopexit

.lr.ph816:                                        ; preds = %.preheader654
  %i.yw = icmp slt i32 %0, 3
  %i.yx = icmp slt i32 %2, 1
  %brmerge877 = or i1 %i.yw, %i.yx
  br i1 %brmerge877, label %.loopexit, label %.lr.ph811.preheader

.lr.ph811.preheader:                              ; preds = %.lr.ph816
  %i.yy = mul i32 %i.d, %i.xx
  %i.yz = add i32 %i.yy, 2
  %i.za = zext nneg i32 %0 to i64                 ; 2 uses
  %i.zb = add i32 %i.d, 2
  br label %.lr.ph811

.preheader655.lr.ph:                              ; preds = %.preheader655.lr.ph.preheader, %._crit_edge795
  %indvars.iv1084 = phi i32 [ %i.d, %.preheader655.lr.ph.preheader ], [ %indvars.iv.next1085, %._crit_edge795 ] ; 3 uses
  %indvars.iv1078 = phi i32 [ %i.yc, %.preheader655.lr.ph.preheader ], [ %indvars.iv.next1079, %._crit_edge795 ] ; 3 uses
  %.6541798 = phi i32 [ 1, %.preheader655.lr.ph.preheader ], [ %i.aci, %._crit_edge795 ]
  %i.zc = sext i32 %indvars.iv1084 to i64
  %i.zd = shl nsw i64 %i.zc, 2                    ; 6 uses
  %scevgep1579 = getelementptr i8, ptr %scevgep1578, i64 %i.zd ; 5 uses
  %scevgep1581 = getelementptr i8, ptr %scevgep1580, i64 %i.zd ; 5 uses
  %i.ze = sext i32 %indvars.iv1078 to i64
  %i.zf = shl nsw i64 %i.ze, 2                    ; 6 uses
  %scevgep1583 = getelementptr i8, ptr %scevgep1582, i64 %i.zf ; 5 uses
  %scevgep1585 = getelementptr i8, ptr %scevgep1584, i64 %i.zf ; 5 uses
  %scevgep1587 = getelementptr i8, ptr %scevgep1586, i64 %i.zd ; 5 uses
  %scevgep1589 = getelementptr i8, ptr %scevgep1588, i64 %i.zd ; 5 uses
  %scevgep1591 = getelementptr i8, ptr %scevgep1590, i64 %i.zf ; 5 uses
  %scevgep1593 = getelementptr i8, ptr %scevgep1592, i64 %i.zf ; 5 uses
  %scevgep1595 = getelementptr i8, ptr %scevgep1594, i64 %i.zf ; 3 uses
  %scevgep1597 = getelementptr i8, ptr %scevgep1596, i64 %i.zf ; 3 uses
  %scevgep1599 = getelementptr i8, ptr %scevgep1598, i64 %i.zd ; 4 uses
  %scevgep1601 = getelementptr i8, ptr %scevgep1600, i64 %i.zd ; 4 uses
  %i.zg = sext i32 %indvars.iv1078 to i64
  %i.zh = sext i32 %indvars.iv1084 to i64
  %i.zi = insertelement <4 x ptr> poison, ptr %scevgep1595, i64 0 ; 2 uses
  %i.zj = insertelement <4 x ptr> %i.zi, ptr %scevgep1579, i64 1
  %i.zk = insertelement <4 x ptr> %i.zj, ptr %scevgep1587, i64 2
  %i.zl = insertelement <4 x ptr> %i.zk, ptr %scevgep1583, i64 3
  %i.zm = insertelement <4 x ptr> poison, ptr %scevgep1581, i64 0
  %i.zn = insertelement <4 x ptr> %i.zm, ptr %scevgep1601, i64 1
  %i.zo = insertelement <4 x ptr> %i.zn, ptr %scevgep1585, i64 2
  %i.zp = insertelement <4 x ptr> %i.zo, ptr %scevgep1593, i64 3
  %i.zq = insertelement <4 x ptr> poison, ptr %scevgep1579, i64 0
  %i.zr = insertelement <4 x ptr> %i.zq, ptr %scevgep1599, i64 1
  %i.zs = insertelement <4 x ptr> %i.zr, ptr %scevgep1583, i64 2
  %i.zt = insertelement <4 x ptr> %i.zs, ptr %scevgep1591, i64 3
  %i.zu = insertelement <4 x ptr> poison, ptr %scevgep1597, i64 0 ; 2 uses
  %i.zv = insertelement <4 x ptr> %i.zu, ptr %scevgep1581, i64 1
  %i.zw = insertelement <4 x ptr> %i.zv, ptr %scevgep1589, i64 2
  %i.zx = insertelement <4 x ptr> %i.zw, ptr %scevgep1585, i64 3
  %i.zy = insertelement <4 x ptr> %i.zi, ptr %scevgep1583, i64 1
  %i.zz = insertelement <4 x ptr> %i.zy, ptr %scevgep1591, i64 2
  %i.aaa = insertelement <4 x ptr> %i.zz, ptr %scevgep1587, i64 3
  %i.aab = insertelement <4 x ptr> poison, ptr %scevgep1585, i64 0
  %i.aac = insertelement <4 x ptr> %i.aab, ptr %scevgep1601, i64 1
  %i.aad = insertelement <4 x ptr> %i.aac, ptr %scevgep1589, i64 2
  %i.aae = insertelement <4 x ptr> %i.aad, ptr %scevgep1597, i64 3
  %i.aaf = insertelement <4 x ptr> poison, ptr %scevgep1583, i64 0
  %i.aag = insertelement <4 x ptr> %i.aaf, ptr %scevgep1599, i64 1
  %i.aah = insertelement <4 x ptr> %i.aag, ptr %scevgep1587, i64 2
  %i.aai = insertelement <4 x ptr> %i.aah, ptr %scevgep1595, i64 3
  %i.aaj = insertelement <4 x ptr> %i.zu, ptr %scevgep1585, i64 1
  %i.aak = insertelement <4 x ptr> %i.aaj, ptr %scevgep1593, i64 2
  %i.aal = insertelement <4 x ptr> %i.aak, ptr %scevgep1589, i64 3
  %bound01602 = icmp ult ptr %scevgep1579, %scevgep1585
  %bound11603 = icmp ult ptr %scevgep1583, %scevgep1581
  %found.conflict1604 = and i1 %bound01602, %bound11603
  %bound01605 = icmp ult ptr %scevgep1579, %scevgep1589
  %bound11606 = icmp ult ptr %scevgep1587, %scevgep1581
  %found.conflict1607 = and i1 %bound01605, %bound11606
  %bound01609 = icmp ult ptr %scevgep1579, %scevgep1593
  %bound11610 = icmp ult ptr %scevgep1591, %scevgep1581
  %found.conflict1611 = and i1 %bound01609, %bound11610
  %i.aam = icmp ult <4 x ptr> %i.zt, %i.zx
  %i.aan = icmp ult <4 x ptr> %i.zl, %i.zp
  %i.aao = and <4 x i1> %i.aan, %i.aam
  %i.aap = icmp ult <4 x ptr> %i.aai, %i.aal
  %i.aaq = icmp ult <4 x ptr> %i.aaa, %i.aae
  %i.aar = and <4 x i1> %i.aaq, %i.aap
  %bound01645 = icmp ult ptr %scevgep1587, %scevgep1601
  %bound11646 = icmp ult ptr %scevgep1599, %scevgep1589
  %found.conflict1647 = and i1 %bound01645, %bound11646
  %bound01649 = icmp ult ptr %scevgep1591, %scevgep1597
  %bound11650 = icmp ult ptr %scevgep1595, %scevgep1593
  %found.conflict1651 = and i1 %bound01649, %bound11650
  %bound01653 = icmp ult ptr %scevgep1591, %scevgep1601
  %bound11654 = icmp ult ptr %scevgep1599, %scevgep1593
  %found.conflict1655 = and i1 %bound01653, %bound11654
  %rdx.op = or <4 x i1> %i.aao, %i.aar
  %i.aas = bitcast <4 x i1> %rdx.op to i4
  %i.aat = icmp ne i4 %i.aas, 0
  %op.rdx = or i1 %i.aat, %found.conflict1604
  %op.rdx1771 = or i1 %found.conflict1607, %found.conflict1611
  %op.rdx1772 = or i1 %found.conflict1647, %found.conflict1651
  %op.rdx1773 = or i1 %op.rdx, %op.rdx1771
  %op.rdx1774 = or i1 %op.rdx1772, %found.conflict1655
  %op.rdx1775 = or i1 %op.rdx1773, %op.rdx1774
  br label %.preheader655

.preheader655:                                    ; preds = %.preheader655.lr.ph, %._crit_edge791
  %indvars.iv1086 = phi i64 [ %i.zh, %.preheader655.lr.ph ], [ %indvars.iv.next1087, %._crit_edge791 ] ; 4 uses
  %indvars.iv1080 = phi i64 [ %i.zg, %.preheader655.lr.ph ], [ %indvars.iv.next1081, %._crit_edge791 ] ; 4 uses
  %.6549794 = phi i32 [ 0, %.preheader655.lr.ph ], [ %i.ach, %._crit_edge791 ]
  %brmerge1871 = select i1 %min.iters.check1658, i1 true, i1 %op.rdx1775
  br i1 %brmerge1871, label %scalar.ph1657.preheader, label %vector.ph1659

vector.ph1659:                                    ; preds = %.preheader655
  %i.aau = add i64 %indvars.iv1086, %i.ys
  %i.aav = add i64 %indvars.iv1080, %i.ys
  %invariant.op1864 = add nuw i64 %indvars.iv1086, 1
  br label %vector.body1662

vector.body1662:                                  ; preds = %vector.body1662, %vector.ph1659
  %index1663 = phi i64 [ 0, %vector.ph1659 ], [ %index.next1678, %vector.body1662 ] ; 2 uses
  %i.aaw = shl i64 %index1663, 1                  ; 2 uses
  %i.aax = add i64 %indvars.iv1080, %i.aaw        ; 2 uses
  %.reass1865 = add nuw i64 %i.aaw, %invariant.op1864 ; 2 uses
  %i.aay = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1865 ; 2 uses
  %wide.vec1664 = load <8 x float>, ptr %i.aay, align 4, !alias.scope !1238 ; 2 uses
  %strided.vec1665 = shufflevector <8 x float> %wide.vec1664, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1666 = shufflevector <8 x float> %wide.vec1664, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aaz = getelementptr [4 x i8], ptr %5, i64 %i.aax
  %i.aba = getelementptr i8, ptr %i.aaz, i64 4    ; 2 uses
  %wide.vec1667 = load <8 x float>, ptr %i.aba, align 4, !alias.scope !1241 ; 2 uses
  %strided.vec1668 = shufflevector <8 x float> %wide.vec1667, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1669 = shufflevector <8 x float> %wide.vec1667, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.abb = fsub <4 x float> %strided.vec1665, %strided.vec1669
  %i.abc = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1865
  %wide.vec1670 = load <8 x float>, ptr %i.aay, align 4, !alias.scope !1238 ; 2 uses
  %strided.vec1671 = shufflevector <8 x float> %wide.vec1670, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1672 = shufflevector <8 x float> %wide.vec1670, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1673 = load <8 x float>, ptr %i.aba, align 4, !alias.scope !1241 ; 2 uses
  %strided.vec1674 = shufflevector <8 x float> %wide.vec1673, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1675 = shufflevector <8 x float> %wide.vec1673, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.abd = fadd <4 x float> %strided.vec1671, %strided.vec1675
  %i.abe = getelementptr [4 x i8], ptr %7, i64 %i.aax
  %i.abf = getelementptr i8, ptr %i.abe, i64 4
  %i.abg = fadd <4 x float> %strided.vec1666, %strided.vec1668
  %interleaved.vec1676 = shufflevector <4 x float> %i.abb, <4 x float> %i.abg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1676, ptr %i.abc, align 4
  %i.abh = fsub <4 x float> %strided.vec1672, %strided.vec1674
  %interleaved.vec1677 = shufflevector <4 x float> %i.abd, <4 x float> %i.abh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1677, ptr %i.abf, align 4
  %index.next1678 = add nuw i64 %index1663, 4     ; 2 uses
  %i.abi = icmp eq i64 %index.next1678, %n.vec1661
  br i1 %i.abi, label %middle.block1679, label %vector.body1662, !llvm.loop !1243

middle.block1679:                                 ; preds = %vector.body1662
  br i1 %cmp.n1680, label %._crit_edge791, label %scalar.ph1657.preheader

scalar.ph1657.preheader:                          ; preds = %.preheader655, %middle.block1679
  %indvars.iv1088.ph = phi i64 [ %i.aau, %middle.block1679 ], [ %indvars.iv1086, %.preheader655 ]
  %indvars.iv1082.ph = phi i64 [ %i.aav, %middle.block1679 ], [ %indvars.iv1080, %.preheader655 ]
  %.4789.ph = phi i32 [ %i.yv, %middle.block1679 ], [ 2, %.preheader655 ]
  br label %scalar.ph1657

scalar.ph1657:                                    ; preds = %scalar.ph1657.preheader, %scalar.ph1657
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %scalar.ph1657 ], [ %indvars.iv1088.ph, %scalar.ph1657.preheader ] ; 2 uses
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %scalar.ph1657 ], [ %indvars.iv1082.ph, %scalar.ph1657.preheader ] ; 2 uses
  %.4789 = phi i32 [ %i.acf, %scalar.ph1657 ], [ %.4789.ph, %scalar.ph1657.preheader ]
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 2 ; 3 uses
  %indvars.iv.next1083 = add nsw i64 %indvars.iv1082, 2 ; 3 uses
  %i.abj = add nuw nsw i64 %indvars.iv1088, 1     ; 2 uses
  %i.abk = getelementptr inbounds [4 x i8], ptr %5, i64 %i.abj ; 2 uses
  %i.abl = load float, ptr %i.abk, align 4
  %i.abm = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1083 ; 2 uses
  %i.abn = load float, ptr %i.abm, align 4
  %i.abo = fsub float %i.abl, %i.abn
  %i.abp = getelementptr inbounds [4 x i8], ptr %7, i64 %i.abj
  store float %i.abo, ptr %i.abp, align 4
  %i.abq = load float, ptr %i.abk, align 4
  %i.abr = load float, ptr %i.abm, align 4
  %i.abs = fadd float %i.abq, %i.abr
  %i.abt = add nsw i64 %indvars.iv1082, 1         ; 2 uses
  %i.abu = getelementptr inbounds [4 x i8], ptr %7, i64 %i.abt
  store float %i.abs, ptr %i.abu, align 4
  %i.abv = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1089 ; 2 uses
  %i.abw = load float, ptr %i.abv, align 4
  %i.abx = getelementptr inbounds [4 x i8], ptr %5, i64 %i.abt ; 2 uses
  %i.aby = load float, ptr %i.abx, align 4
  %i.abz = fadd float %i.abw, %i.aby
  %i.aca = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1089
  store float %i.abz, ptr %i.aca, align 4
  %i.acb = load float, ptr %i.abv, align 4
  %i.acc = load float, ptr %i.abx, align 4
  %i.acd = fsub float %i.acb, %i.acc
  %i.ace = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1083
  store float %i.acd, ptr %i.ace, align 4
  %i.acf = add nuw nsw i32 %.4789, 2              ; 2 uses
  %i.acg = icmp slt i32 %i.acf, %0
  br i1 %i.acg, label %scalar.ph1657, label %._crit_edge791, !llvm.loop !1244

._crit_edge791:                                   ; preds = %scalar.ph1657, %middle.block1679
  %indvars.iv.next1087 = add i64 %indvars.iv1086, %i.yd
  %indvars.iv.next1081 = add i64 %indvars.iv1080, %i.yd
  %i.ach = add nuw nsw i32 %.6549794, 1           ; 2 uses
  %exitcond1096.not = icmp eq i32 %i.ach, %2
  br i1 %exitcond1096.not, label %._crit_edge795, label %.preheader655, !llvm.loop !1245

._crit_edge795:                                   ; preds = %._crit_edge791
  %i.aci = add nuw nsw i32 %.6541798, 1           ; 2 uses
  %indvars.iv.next1079 = sub i32 %indvars.iv1078, %i.d
  %indvars.iv.next1085 = add i32 %indvars.iv1084, %i.d
  %exitcond1097.not = icmp eq i32 %i.aci, %i.o
  br i1 %exitcond1097.not, label %.loopexit, label %.preheader655.lr.ph, !llvm.loop !1246

.lr.ph811:                                        ; preds = %.lr.ph811.preheader, %._crit_edge812
  %indvars.iv1104 = phi i32 [ %i.zb, %.lr.ph811.preheader ], [ %indvars.iv.next1105, %._crit_edge812 ] ; 2 uses
  %indvars.iv1098 = phi i32 [ %i.yz, %.lr.ph811.preheader ], [ %indvars.iv.next1099, %._crit_edge812 ] ; 2 uses
  %.7542815 = phi i32 [ 1, %.lr.ph811.preheader ], [ %i.adk, %._crit_edge812 ]
  br label %.lr.ph805

.lr.ph805:                                        ; preds = %.lr.ph811, %._crit_edge806
  %indvars.iv1106 = phi i32 [ %indvars.iv1104, %.lr.ph811 ], [ %indvars.iv.next1107, %._crit_edge806 ] ; 2 uses
  %indvars.iv1100 = phi i32 [ %indvars.iv1098, %.lr.ph811 ], [ %indvars.iv.next1101, %._crit_edge806 ] ; 2 uses
  %.5809 = phi i32 [ 2, %.lr.ph811 ], [ %i.adi, %._crit_edge806 ]
  %i.acj = sext i32 %indvars.iv1100 to i64
  %i.ack = sext i32 %indvars.iv1106 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph805, %bb.f
  %indvars.iv1108 = phi i64 [ %i.ack, %.lr.ph805 ], [ %indvars.iv.next1109, %bb.f ] ; 4 uses
  %indvars.iv1102 = phi i64 [ %i.acj, %.lr.ph805 ], [ %indvars.iv.next1103, %bb.f ] ; 4 uses
  %.7550803 = phi i32 [ 0, %.lr.ph805 ], [ %i.adh, %bb.f ]
  %i.acl = add nsw i64 %indvars.iv1108, -1        ; 2 uses
  %i.acm = getelementptr inbounds [4 x i8], ptr %5, i64 %i.acl ; 2 uses
  %i.acn = load float, ptr %i.acm, align 4
  %i.aco = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1102 ; 2 uses
  %i.acp = load float, ptr %i.aco, align 4
  %i.acq = fsub float %i.acn, %i.acp
  %i.acr = getelementptr inbounds [4 x i8], ptr %7, i64 %i.acl
  store float %i.acq, ptr %i.acr, align 4
  %i.acs = load float, ptr %i.acm, align 4
  %i.act = load float, ptr %i.aco, align 4
  %i.acu = fadd float %i.acs, %i.act
  %i.acv = add nsw i64 %indvars.iv1102, -1        ; 2 uses
  %i.acw = getelementptr inbounds [4 x i8], ptr %7, i64 %i.acv
  store float %i.acu, ptr %i.acw, align 4
  %i.acx = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1108 ; 2 uses
  %i.acy = load float, ptr %i.acx, align 4
  %i.acz = getelementptr inbounds [4 x i8], ptr %5, i64 %i.acv ; 2 uses
  %i.ada = load float, ptr %i.acz, align 4
  %i.adb = fadd float %i.acy, %i.ada
  %i.adc = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1108
  store float %i.adb, ptr %i.adc, align 4
  %i.add = load float, ptr %i.acx, align 4
  %i.ade = load float, ptr %i.acz, align 4
  %i.adf = fsub float %i.add, %i.ade
  %i.adg = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1102
  store float %i.adf, ptr %i.adg, align 4
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, %i.za
  %indvars.iv.next1103 = add nsw i64 %indvars.iv1102, %i.za
  %i.adh = add nuw nsw i32 %.7550803, 1           ; 2 uses
  %exitcond1113.not = icmp eq i32 %i.adh, %2
  br i1 %exitcond1113.not, label %._crit_edge806, label %bb.f, !llvm.loop !1247

._crit_edge806:                                   ; preds = %bb.f
  %i.adi = add nuw nsw i32 %.5809, 2              ; 2 uses
  %i.adj = icmp slt i32 %i.adi, %0
  %indvars.iv.next1101 = add i32 %indvars.iv1100, 2
  %indvars.iv.next1107 = add i32 %indvars.iv1106, 2
  br i1 %i.adj, label %.lr.ph805, label %._crit_edge812, !llvm.loop !1248

._crit_edge812:                                   ; preds = %._crit_edge806
  %i.adk = add nuw nsw i32 %.7542815, 1           ; 2 uses
  %indvars.iv.next1099 = sub i32 %indvars.iv1098, %i.d
  %indvars.iv.next1105 = add i32 %indvars.iv1104, %i.d
  %exitcond1114.not = icmp eq i32 %i.adk, %i.o
  br i1 %exitcond1114.not, label %.loopexit, label %.lr.ph811, !llvm.loop !1249

.loopexit:                                        ; preds = %._crit_edge795, %._crit_edge812, %.lr.ph816, %.lr.ph799, %.preheader656, %.preheader654
  br i1 %i.xy, label %.lr.ph820.preheader, label %.preheader653

.lr.ph820.preheader:                              ; preds = %.loopexit
  %wide.trip.count1118 = zext i32 %3 to i64       ; 5 uses
  %min.iters.check1687 = icmp ult i32 %3, 8
  %i.adl = sub i64 %i.b, %i.a
  %diff.check1685 = icmp ugt i64 %i.adl, -32
  %or.cond1770 = or i1 %min.iters.check1687, %diff.check1685
  br i1 %or.cond1770, label %.lr.ph820.preheader1798, label %vector.ph1688

vector.ph1688:                                    ; preds = %.lr.ph820.preheader
  %n.vec1690 = and i64 %wide.trip.count1118, 2147483640 ; 3 uses
  br label %vector.body1691

vector.body1691:                                  ; preds = %vector.body1691, %vector.ph1688
  %index1692 = phi i64 [ 0, %vector.ph1688 ], [ %index.next1695, %vector.body1691 ] ; 3 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index1692 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  %wide.load1693 = load <4 x float>, ptr %i.adm, align 4
  %wide.load1694 = load <4 x float>, ptr %i.adn, align 4
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index1692 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 16
  store <4 x float> %wide.load1693, ptr %i.ado, align 4
  store <4 x float> %wide.load1694, ptr %i.adp, align 4
  %index.next1695 = add nuw i64 %index1692, 8     ; 2 uses
  %i.adq = icmp eq i64 %index.next1695, %n.vec1690
  br i1 %i.adq, label %middle.block1696, label %vector.body1691, !llvm.loop !1250

middle.block1696:                                 ; preds = %vector.body1691
  %cmp.n1697 = icmp eq i64 %n.vec1690, %wide.trip.count1118
  br i1 %cmp.n1697, label %.preheader653, label %.lr.ph820.preheader1798

.lr.ph820.preheader1798:                          ; preds = %.lr.ph820.preheader, %middle.block1696
  %indvars.iv1115.ph = phi i64 [ 0, %.lr.ph820.preheader ], [ %n.vec1690, %middle.block1696 ] ; 3 uses
  %xtraiter1812 = and i64 %wide.trip.count1118, 3 ; 2 uses
  %lcmp.mod1813.not = icmp eq i64 %xtraiter1812, 0
  br i1 %lcmp.mod1813.not, label %.lr.ph820.prol.loopexit, label %.lr.ph820.prol

.lr.ph820.prol:                                   ; preds = %.lr.ph820.preheader1798, %.lr.ph820.prol
  %indvars.iv1115.prol = phi i64 [ %indvars.iv.next1116.prol, %.lr.ph820.prol ], [ %indvars.iv1115.ph, %.lr.ph820.preheader1798 ] ; 3 uses
  %prol.iter1814 = phi i64 [ %prol.iter1814.next, %.lr.ph820.prol ], [ 0, %.lr.ph820.preheader1798 ]
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1115.prol
  %i.ads = load float, ptr %i.adr, align 4
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1115.prol
  store float %i.ads, ptr %i.adt, align 4
  %indvars.iv.next1116.prol = add nuw nsw i64 %indvars.iv1115.prol, 1 ; 2 uses
end_hunk_13
begin_hunk_14_@dradbg:bb.a
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, %i.adx ; 3 uses
  %i.aeq = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1123
  %i.aer = load float, ptr %i.aeq, align 4
  %i.aes = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1123
  store float %i.aer, ptr %i.aes, align 4
  %indvars.iv.next1123.1 = add nsw i64 %indvars.iv.next1123, %i.adx ; 3 uses
  %i.aet = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1123.1
  %i.aeu = load float, ptr %i.aet, align 4
  %i.aev = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1123.1
  store float %i.aeu, ptr %i.aev, align 4
  %indvars.iv.next1123.2 = add nsw i64 %indvars.iv.next1123.1, %i.adx ; 3 uses
  %i.aew = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1123.2
  %i.aex = load float, ptr %i.aew, align 4
  %i.aey = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1123.2
  store float %i.aex, ptr %i.aey, align 4
  %indvars.iv.next1123.3 = add nsw i64 %indvars.iv.next1123.2, %i.adx ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge825.unr-lcssa, label %.lr.ph824.new, !llvm.loop !1253

._crit_edge825.unr-lcssa:                         ; preds = %.lr.ph824.new
  br i1 %lcmp.mod1816.not, label %._crit_edge825, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge825.unr-lcssa, %.lr.ph824
  %indvars.iv1122.epil.init = phi i64 [ %i.aem, %.lr.ph824 ], [ %indvars.iv.next1123.3, %._crit_edge825.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1817)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv1122.epil = phi i64 [ %indvars.iv1122.epil.init, %.epil.preheader ], [ %indvars.iv.next1123.epil, %bb.g ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.aez = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1122.epil
  %i.afa = load float, ptr %i.aez, align 4
  %i.afb = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1122.epil
  store float %i.afa, ptr %i.afb, align 4
  %indvars.iv.next1123.epil = add nsw i64 %indvars.iv1122.epil, %i.adx
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1815
  br i1 %epil.iter.cmp.not, label %._crit_edge825, label %bb.g, !llvm.loop !1254

._crit_edge825:                                   ; preds = %bb.g, %._crit_edge825.unr-lcssa
  %i.afc = add nuw nsw i32 %.8827, 1              ; 2 uses
  %indvars.iv.next1121 = add i32 %indvars.iv1120, %i.d
  %exitcond1126.not = icmp eq i32 %i.afc, %1
  br i1 %exitcond1126.not, label %._crit_edge829.split, label %.lr.ph824, !llvm.loop !1255

._crit_edge829.split:                             ; preds = %._crit_edge825, %.preheader653
  %i.afd = icmp sgt i32 %i.m, %2
  br i1 %i.afd, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge829.split
  br i1 %i.adw, label %.lr.ph845, label %.critedge

.lr.ph845:                                        ; preds = %bb.h
  %i.afe = icmp slt i32 %0, 3
  %i.aff = icmp slt i32 %2, 1
  %brmerge881 = or i1 %i.afe, %i.aff
  br i1 %brmerge881, label %.critedge, label %.lr.ph839.preheader

.lr.ph839.preheader:                              ; preds = %.lr.ph845
  %i.afg = add i32 %i.d, 2
  %i.afh = zext nneg i32 %0 to i64
  br label %.lr.ph839

.lr.ph839:                                        ; preds = %.lr.ph839.preheader, %._crit_edge840
  %indvars.iv1135 = phi i32 [ -1, %.lr.ph839.preheader ], [ %indvars.iv.next1136, %._crit_edge840 ] ; 2 uses
  %indvars.iv1127 = phi i32 [ %i.afg, %.lr.ph839.preheader ], [ %indvars.iv.next1128, %._crit_edge840 ] ; 2 uses
  %.9843 = phi i32 [ 1, %.lr.ph839.preheader ], [ %i.agj, %._crit_edge840 ]
  %i.afi = sext i32 %indvars.iv1135 to i64
  br label %.lr.ph833

.lr.ph833:                                        ; preds = %.lr.ph839, %._crit_edge834
  %indvars.iv1137 = phi i64 [ %i.afi, %.lr.ph839 ], [ %indvars.iv.next1138, %._crit_edge834 ] ; 2 uses
  %indvars.iv1129 = phi i32 [ %indvars.iv1127, %.lr.ph839 ], [ %indvars.iv.next1130, %._crit_edge834 ] ; 2 uses
  %.6836 = phi i32 [ 2, %.lr.ph839 ], [ %i.agh, %._crit_edge834 ]
  %i.afj = sext i32 %indvars.iv1129 to i64
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, 2 ; 2 uses
  %i.afk = getelementptr [4 x i8], ptr %9, i64 %indvars.iv1137
  %i.afl = getelementptr i8, ptr %i.afk, i64 4    ; 2 uses
  %i.afm = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next1138 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph833, %bb.i
  %indvars.iv1131 = phi i64 [ %i.afj, %.lr.ph833 ], [ %indvars.iv.next1132, %bb.i ] ; 4 uses
  %.9552831 = phi i32 [ 0, %.lr.ph833 ], [ %i.agg, %bb.i ]
  %i.afn = load float, ptr %i.afl, align 4
  %i.afo = add nsw i64 %indvars.iv1131, -1        ; 2 uses
  %i.afp = getelementptr inbounds [4 x i8], ptr %7, i64 %i.afo ; 2 uses
  %i.afq = load float, ptr %i.afp, align 4
  %i.afr = fmul float %i.afn, %i.afq
  %i.afs = load float, ptr %i.afm, align 4
  %i.aft = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1131 ; 2 uses
  %i.afu = load float, ptr %i.aft, align 4
  %i.afv = fmul float %i.afs, %i.afu
  %i.afw = fsub float %i.afr, %i.afv
  %i.afx = getelementptr inbounds [4 x i8], ptr %5, i64 %i.afo
  store float %i.afw, ptr %i.afx, align 4
  %i.afy = load float, ptr %i.afl, align 4
  %i.afz = load float, ptr %i.aft, align 4
  %i.aga = fmul float %i.afy, %i.afz
  %i.agb = load float, ptr %i.afm, align 4
  %i.agc = load float, ptr %i.afp, align 4
  %i.agd = fmul float %i.agb, %i.agc
  %i.age = fadd float %i.aga, %i.agd
  %i.agf = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1131
  store float %i.age, ptr %i.agf, align 4
  %indvars.iv.next1132 = add nsw i64 %indvars.iv1131, %i.afh
  %i.agg = add nuw nsw i32 %.9552831, 1           ; 2 uses
  %exitcond1134.not = icmp eq i32 %i.agg, %2
  br i1 %exitcond1134.not, label %._crit_edge834, label %bb.i, !llvm.loop !1256

._crit_edge834:                                   ; preds = %bb.i
  %i.agh = add nuw nsw i32 %.6836, 2              ; 2 uses
  %i.agi = icmp slt i32 %i.agh, %0
  %indvars.iv.next1130 = add i32 %indvars.iv1129, 2
  br i1 %i.agi, label %.lr.ph833, label %._crit_edge840, !llvm.loop !1257

._crit_edge840:                                   ; preds = %._crit_edge834
  %i.agj = add nuw nsw i32 %.9843, 1              ; 2 uses
  %indvars.iv.next1128 = add i32 %indvars.iv1127, %i.d
  %indvars.iv.next1136 = add i32 %indvars.iv1135, %0
  %exitcond1140.not = icmp eq i32 %i.agj, %1
  br i1 %exitcond1140.not, label %.critedge, label %.lr.ph839, !llvm.loop !1258

bb.j:                                             ; preds = %._crit_edge829.split
  br i1 %i.adw, label %.lr.ph859, label %.critedge

.lr.ph859:                                        ; preds = %bb.j
  %i.agk = icmp slt i32 %2, 1
  %i.agl = icmp slt i32 %0, 3
  %brmerge884 = or i1 %i.agk, %i.agl
  br i1 %brmerge884, label %.critedge, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph859
  %i.agm = zext nneg i32 %0 to i64                ; 2 uses
  %scevgep1718 = getelementptr i8, ptr %5, i64 4
  %i.agn = add nsw i32 %2, -1
  %i.ago = zext i32 %i.agn to i64
  %i.agp = mul nuw nsw i64 %i.agm, %i.ago
  %i.agq = shl i64 %i.agp, 2
  %i.agr = add nsw i32 %0, -3
  %i.ags = lshr i32 %i.agr, 1
  %i.agt = zext nneg i32 %i.ags to i64
  %i.agu = shl nuw nsw i64 %i.agt, 3              ; 2 uses
  %i.agv = add i64 %i.agq, %i.agu
  %i.agw = add i64 %i.agv, 12                     ; 2 uses
  %scevgep1720 = getelementptr i8, ptr %5, i64 %i.agw
  %scevgep1722 = getelementptr i8, ptr %9, i64 4
  %i.agx = getelementptr i8, ptr %9, i64 %i.agu
  %scevgep1724 = getelementptr i8, ptr %i.agx, i64 12
  %scevgep1726 = getelementptr i8, ptr %7, i64 4
  %scevgep1728 = getelementptr i8, ptr %7, i64 %i.agw
  %i.agy = add nsw i32 %0, -3                     ; 2 uses
  %i.agz = lshr i32 %i.agy, 1
  %narrow1767 = add nuw i32 %i.agz, 1
  %i.aha = zext i32 %narrow1767 to i64            ; 2 uses
  %min.iters.check1738 = icmp ult i32 %i.agy, 6
  %n.vec1741 = and i64 %i.aha, 4294967292         ; 4 uses
  %i.ahb = shl nuw nsw i64 %n.vec1741, 1          ; 2 uses
  %i.ahc = trunc nuw i64 %n.vec1741 to i32
  %i.ahd = shl i32 %i.ahc, 1
  %i.ahe = or disjoint i32 %i.ahd, 2
  %cmp.n1759 = icmp eq i64 %n.vec1741, %i.aha
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge854
  %indvars.iv1145 = phi i32 [ %i.d, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1146, %._crit_edge854 ] ; 3 uses
  %indvars.iv1141 = phi i32 [ -1, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1142, %._crit_edge854 ] ; 3 uses
  %.10857 = phi i32 [ 1, %.preheader.lr.ph.preheader ], [ %i.aix, %._crit_edge854 ]
  %i.ahf = sext i32 %indvars.iv1145 to i64
  %i.ahg = shl nsw i64 %i.ahf, 2                  ; 4 uses
  %scevgep1719 = getelementptr i8, ptr %scevgep1718, i64 %i.ahg ; 2 uses
  %scevgep1721 = getelementptr i8, ptr %scevgep1720, i64 %i.ahg ; 2 uses
  %i.ahh = sext i32 %indvars.iv1141 to i64
  %i.ahi = shl nsw i64 %i.ahh, 2                  ; 2 uses
  %scevgep1723 = getelementptr i8, ptr %scevgep1722, i64 %i.ahi
  %scevgep1725 = getelementptr i8, ptr %scevgep1724, i64 %i.ahi
  %scevgep1727 = getelementptr i8, ptr %scevgep1726, i64 %i.ahg
  %scevgep1729 = getelementptr i8, ptr %scevgep1728, i64 %i.ahg
  %i.ahj = sext i32 %indvars.iv1141 to i64        ; 3 uses
  %i.ahk = sext i32 %indvars.iv1145 to i64
  %bound01730 = icmp ult ptr %scevgep1719, %scevgep1725
  %bound11731 = icmp ult ptr %scevgep1723, %scevgep1721
  %found.conflict1732 = and i1 %bound01730, %bound11731
  %bound01733 = icmp ult ptr %scevgep1719, %scevgep1729
  %bound11734 = icmp ult ptr %scevgep1727, %scevgep1721
  %found.conflict1735 = and i1 %bound01733, %bound11734
  %conflict.rdx1736 = or i1 %found.conflict1732, %found.conflict1735
  %i.ahl = add nsw i64 %i.ahb, %i.ahj
  %invariant.gep1866 = getelementptr [4 x i8], ptr %9, i64 %i.ahj
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge851
  %indvars.iv1147 = phi i64 [ %i.ahk, %.preheader.lr.ph ], [ %indvars.iv.next1148, %._crit_edge851 ] ; 4 uses
  %.10553853 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.aiw, %._crit_edge851 ]
  %brmerge1872 = select i1 %min.iters.check1738, i1 true, i1 %conflict.rdx1736
  br i1 %brmerge1872, label %scalar.ph1737.preheader, label %vector.ph1739

vector.ph1739:                                    ; preds = %.preheader
  %i.ahm = add i64 %indvars.iv1147, %i.ahb
  %invariant.op1868 = add nuw i64 %indvars.iv1147, 1
  br label %vector.body1742

vector.body1742:                                  ; preds = %vector.body1742, %vector.ph1739
  %index1743 = phi i64 [ 0, %vector.ph1739 ], [ %index.next1757, %vector.body1742 ] ; 2 uses
  %i.ahn = shl i64 %index1743, 1                  ; 2 uses
  %gep1867 = getelementptr [4 x i8], ptr %invariant.gep1866, i64 %i.ahn
  %i.aho = getelementptr i8, ptr %gep1867, i64 4  ; 2 uses
  %wide.vec1744 = load <8 x float>, ptr %i.aho, align 4, !alias.scope !1259 ; 2 uses
  %strided.vec1745 = shufflevector <8 x float> %wide.vec1744, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1746 = shufflevector <8 x float> %wide.vec1744, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %.reass1869 = add nuw i64 %i.ahn, %invariant.op1868 ; 2 uses
  %i.ahp = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1869 ; 2 uses
  %wide.vec1747 = load <8 x float>, ptr %i.ahp, align 4, !alias.scope !1262 ; 2 uses
  %strided.vec1748 = shufflevector <8 x float> %wide.vec1747, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1749 = shufflevector <8 x float> %wide.vec1747, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ahq = fmul <4 x float> %strided.vec1745, %strided.vec1748
  %i.ahr = fmul <4 x float> %strided.vec1746, %strided.vec1749
  %i.ahs = fsub <4 x float> %i.ahq, %i.ahr
  %i.aht = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1869
  %wide.vec1750 = load <8 x float>, ptr %i.aho, align 4, !alias.scope !1259 ; 2 uses
  %strided.vec1751 = shufflevector <8 x float> %wide.vec1750, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1752 = shufflevector <8 x float> %wide.vec1750, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1753 = load <8 x float>, ptr %i.ahp, align 4, !alias.scope !1262 ; 2 uses
  %strided.vec1754 = shufflevector <8 x float> %wide.vec1753, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1755 = shufflevector <8 x float> %wide.vec1753, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ahu = fmul <4 x float> %strided.vec1751, %strided.vec1755
  %i.ahv = fmul <4 x float> %strided.vec1752, %strided.vec1754
  %i.ahw = fadd <4 x float> %i.ahu, %i.ahv
  %interleaved.vec1756 = shufflevector <4 x float> %i.ahs, <4 x float> %i.ahw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1756, ptr %i.aht, align 4, !alias.scope !1264, !noalias !1266
  %index.next1757 = add nuw i64 %index1743, 4     ; 2 uses
  %i.ahx = icmp eq i64 %index.next1757, %n.vec1741
  br i1 %i.ahx, label %middle.block1758, label %vector.body1742, !llvm.loop !1267

middle.block1758:                                 ; preds = %vector.body1742
  br i1 %cmp.n1759, label %._crit_edge851, label %scalar.ph1737.preheader

scalar.ph1737.preheader:                          ; preds = %.preheader, %middle.block1758
  %indvars.iv1149.ph = phi i64 [ %i.ahm, %middle.block1758 ], [ %indvars.iv1147, %.preheader ]
  %indvars.iv1143.ph = phi i64 [ %i.ahl, %middle.block1758 ], [ %i.ahj, %.preheader ]
  %.7848.ph = phi i32 [ %i.ahe, %middle.block1758 ], [ 2, %.preheader ]
  br label %scalar.ph1737

scalar.ph1737:                                    ; preds = %scalar.ph1737.preheader, %scalar.ph1737
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %scalar.ph1737 ], [ %indvars.iv1149.ph, %scalar.ph1737.preheader ] ; 2 uses
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %scalar.ph1737 ], [ %indvars.iv1143.ph, %scalar.ph1737.preheader ] ; 2 uses
  %.7848 = phi i32 [ %i.aiu, %scalar.ph1737 ], [ %.7848.ph, %scalar.ph1737.preheader ]
  %indvars.iv.next1144 = add nsw i64 %indvars.iv1143, 2 ; 2 uses
  %indvars.iv.next1150 = add nuw nsw i64 %indvars.iv1149, 2 ; 3 uses
  %i.ahy = getelementptr [4 x i8], ptr %9, i64 %indvars.iv1143
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 4    ; 2 uses
  %i.aia = load float, ptr %i.ahz, align 4
  %i.aib = add nuw nsw i64 %indvars.iv1149, 1     ; 2 uses
  %i.aic = getelementptr inbounds [4 x i8], ptr %7, i64 %i.aib ; 2 uses
  %i.aid = load float, ptr %i.aic, align 4
  %i.aie = fmul float %i.aia, %i.aid
  %i.aif = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next1144 ; 2 uses
  %i.aig = load float, ptr %i.aif, align 4
  %i.aih = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1150 ; 2 uses
  %i.aii = load float, ptr %i.aih, align 4
  %i.aij = fmul float %i.aig, %i.aii
  %i.aik = fsub float %i.aie, %i.aij
  %i.ail = getelementptr inbounds [4 x i8], ptr %5, i64 %i.aib
  store float %i.aik, ptr %i.ail, align 4
  %i.aim = load float, ptr %i.ahz, align 4
  %i.ain = load float, ptr %i.aih, align 4
  %i.aio = fmul float %i.aim, %i.ain
  %i.aip = load float, ptr %i.aif, align 4
  %i.aiq = load float, ptr %i.aic, align 4
  %i.air = fmul float %i.aip, %i.aiq
  %i.ais = fadd float %i.aio, %i.air
  %i.ait = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1150
  store float %i.ais, ptr %i.ait, align 4
  %i.aiu = add nuw nsw i32 %.7848, 2              ; 2 uses
  %i.aiv = icmp slt i32 %i.aiu, %0
  br i1 %i.aiv, label %scalar.ph1737, label %._crit_edge851, !llvm.loop !1268

._crit_edge851:                                   ; preds = %scalar.ph1737, %middle.block1758
  %indvars.iv.next1148 = add i64 %indvars.iv1147, %i.agm
  %i.aiw = add nuw nsw i32 %.10553853, 1          ; 2 uses
  %exitcond1155.not = icmp eq i32 %i.aiw, %2
  br i1 %exitcond1155.not, label %._crit_edge854, label %.preheader, !llvm.loop !1269

._crit_edge854:                                   ; preds = %._crit_edge851
  %i.aix = add nuw nsw i32 %.10857, 1             ; 2 uses
  %indvars.iv.next1142 = add i32 %indvars.iv1141, %0
  %indvars.iv.next1146 = add i32 %indvars.iv1145, %i.d
  %exitcond1156.not = icmp eq i32 %i.aix, %1
  br i1 %exitcond1156.not, label %.critedge, label %.preheader.lr.ph, !llvm.loop !1270

.critedge:                                        ; preds = %._crit_edge840, %._crit_edge854, %.lr.ph859, %.lr.ph845, %bb.h, %bb.j, %._crit_edge786.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @icomp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #29 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load i32, ptr %i.a, align 4
  %i.c = load ptr, ptr %1, align 8
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 %i.b, %i.d
  ret i32 %i.e
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptosi.sat.i8.f64(double) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fptosi.sat.i16.f64(double) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #61

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.bitreverse.v2i32(<2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.rint.v4f32(<4 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #30

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_14
