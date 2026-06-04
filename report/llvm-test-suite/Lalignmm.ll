inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@Lalignmm_hmout:bb.a
  %i.tp = fadd float %i.to, %i.tm
  store float %i.tp, ptr %i.tn, align 4, !tbaa !16
  %i.tq = load float, ptr %i.ro, align 4, !tbaa !16
  %indvars.iv.next184.i.1 = add nuw nsw i64 %indvars.iv183.i, 2 ; 3 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next184.i.1
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !16
  %i.tt = fadd float %i.tq, %i.ts
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.next184.i ; 2 uses
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !16
  %i.tw = fadd float %i.tv, %i.tt
  store float %i.tw, ptr %i.tu, align 4, !tbaa !16
  %exitcond187.not.i.1 = icmp eq i64 %indvars.iv.next184.i.1, %i.rn
  br i1 %exitcond187.not.i.1, label %.lr.ph58.i, label %scalar.ph425, !llvm.loop !102

scalar.ph454:                                     ; preds = %scalar.ph454.prol.loopexit, %scalar.ph454
  %indvars.iv188.i = phi i64 [ %indvars.iv.next189.i.1, %scalar.ph454 ], [ %indvars.iv188.i.unr, %scalar.ph454.prol.loopexit ] ; 3 uses
  %i.tx = load float, ptr %i.sl, align 4, !tbaa !16
  %indvars.iv.next189.i = add nuw nsw i64 %indvars.iv188.i, 1 ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next189.i
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !16
  %i.ua = fadd float %i.tx, %i.tz
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %.058846.i, i64 %indvars.iv188.i ; 2 uses
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !16
  %i.ud = fadd float %i.uc, %i.ua
  store float %i.ud, ptr %i.ub, align 4, !tbaa !16
  %i.ue = load float, ptr %i.sl, align 4, !tbaa !16
  %indvars.iv.next189.i.1 = add nuw nsw i64 %indvars.iv188.i, 2 ; 3 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next189.i.1
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !16
  %i.uh = fadd float %i.ue, %i.ug
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %.058846.i, i64 %indvars.iv.next189.i ; 2 uses
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !16
  %i.uk = fadd float %i.uj, %i.uh
  store float %i.uk, ptr %i.ui, align 4, !tbaa !16
  %exitcond193.not.i.1 = icmp eq i64 %indvars.iv.next189.i.1, %i.nu
  br i1 %exitcond193.not.i.1, label %.lr.ph60.i.preheader, label %scalar.ph454, !llvm.loop !103

.lr.ph62.i.unr-lcssa:                             ; preds = %.lr.ph60.i
  %lcmp.mod587.not = icmp eq i64 %xtraiter585, 0
  br i1 %lcmp.mod587.not, label %.lr.ph62.i, label %.lr.ph60.i.epil.preheader

.lr.ph60.i.epil.preheader:                        ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.preheader
  %indvars.iv194.i.epil.init = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %indvars.iv.next195.i.1, %.lr.ph62.i.unr-lcssa ] ; 2 uses
  %lcmp.mod588 = trunc i32 %i.dg to i1
  tail call void @llvm.assume(i1 %lcmp.mod588)
  %i.ul = load float, ptr %i.ro, align 4, !tbaa !16
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv194.i.epil.init
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.uo = load float, ptr %i.un, align 4, !tbaa !16
  %i.up = fadd float %i.ul, %i.uo
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv194.i.epil.init
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !34
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.nu ; 2 uses
  %i.ut = load float, ptr %i.us, align 4, !tbaa !16
  %i.uu = fadd float %i.up, %i.ut
  store float %i.uu, ptr %i.us, align 4, !tbaa !16
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.epil.preheader
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.rn
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !34 ; 7 uses
  %min.iters.check484 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check484, label %scalar.ph483.preheader, label %vector.memcheck471

vector.memcheck471:                               ; preds = %.lr.ph62.i
  %i.ux = shl nuw nsw i64 %i.nu, 2                ; 2 uses
  %scevgep472 = getelementptr i8, ptr %i.uw, i64 %i.ux ; 2 uses
  %i.uy = add nuw nsw i64 %i.ux, 4                ; 2 uses
  %scevgep473 = getelementptr i8, ptr %i.y, i64 %i.uy
  %scevgep474 = getelementptr i8, ptr %i.w, i64 4
  %scevgep475 = getelementptr i8, ptr %i.w, i64 %i.uy
  %bound0476 = icmp ult ptr %i.uw, %scevgep473
  %bound1477 = icmp ult ptr %i.sl, %scevgep472
  %found.conflict478 = and i1 %bound0476, %bound1477
  %bound0479 = icmp ult ptr %i.uw, %scevgep475
  %bound1480 = icmp ult ptr %scevgep474, %scevgep472
  %found.conflict481 = and i1 %bound0479, %bound1480
  %conflict.rdx482 = or i1 %found.conflict478, %found.conflict481
  br i1 %conflict.rdx482, label %scalar.ph483.preheader, label %vector.ph485

vector.ph485:                                     ; preds = %vector.memcheck471
  %n.vec487 = and i64 %i.nu, 2147483640           ; 3 uses
  %i.uz = load float, ptr %i.sl, align 4, !tbaa !16, !alias.scope !104
  %broadcast.splatinsert492 = insertelement <4 x float> poison, float %i.uz, i64 0
  %broadcast.splat493 = shufflevector <4 x float> %broadcast.splatinsert492, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body488

vector.body488:                                   ; preds = %vector.body488, %vector.ph485
  %index489 = phi i64 [ 0, %vector.ph485 ], [ %index.next496, %vector.body488 ] ; 3 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index489 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vc = getelementptr inbounds nuw i8, ptr %i.va, i64 20
  %wide.load490 = load <4 x float>, ptr %i.vb, align 4, !tbaa !16, !alias.scope !107
  %wide.load491 = load <4 x float>, ptr %i.vc, align 4, !tbaa !16, !alias.scope !107
  %i.vd = fadd <4 x float> %broadcast.splat493, %wide.load490
  %i.ve = fadd <4 x float> %broadcast.splat493, %wide.load491
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %index489 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16 ; 2 uses
  %wide.load494 = load <4 x float>, ptr %i.vf, align 4, !tbaa !16, !alias.scope !109, !noalias !111
  %wide.load495 = load <4 x float>, ptr %i.vg, align 4, !tbaa !16, !alias.scope !109, !noalias !111
  %i.vh = fadd <4 x float> %i.vd, %wide.load494
  %i.vi = fadd <4 x float> %i.ve, %wide.load495
  store <4 x float> %i.vh, ptr %i.vf, align 4, !tbaa !16, !alias.scope !109, !noalias !111
  store <4 x float> %i.vi, ptr %i.vg, align 4, !tbaa !16, !alias.scope !109, !noalias !111
  %index.next496 = add nuw i64 %index489, 8       ; 2 uses
  %i.vj = icmp eq i64 %index.next496, %n.vec487
  br i1 %i.vj, label %middle.block497, label %vector.body488, !llvm.loop !112

middle.block497:                                  ; preds = %vector.body488
  %cmp.n498 = icmp eq i64 %n.vec487, %i.nu
  br i1 %cmp.n498, label %.lr.ph64.i, label %scalar.ph483.preheader

scalar.ph483.preheader:                           ; preds = %vector.memcheck471, %.lr.ph62.i, %middle.block497
  %indvars.iv199.i.ph = phi i64 [ 0, %vector.memcheck471 ], [ 0, %.lr.ph62.i ], [ %n.vec487, %middle.block497 ] ; 4 uses
  %xtraiter591.a = and i64 %i.nu, 1
  %lcmp.mod592.not = icmp eq i64 %xtraiter591.a, 0
  br i1 %lcmp.mod592.not, label %scalar.ph483.prol.loopexit, label %scalar.ph483.prol

scalar.ph483.prol:                                ; preds = %scalar.ph483.preheader
  %i.vk = load float, ptr %i.sl, align 4, !tbaa !16
  %indvars.iv.next200.i.prol = or disjoint i64 %indvars.iv199.i.ph, 1 ; 2 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next200.i.prol
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !16
  %i.vn = fadd float %i.vk, %i.vm
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv199.i.ph ; 2 uses
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !16
  %i.vq = fadd float %i.vn, %i.vp
  store float %i.vq, ptr %i.vo, align 4, !tbaa !16
  br label %scalar.ph483.prol.loopexit

scalar.ph483.prol.loopexit:                       ; preds = %scalar.ph483.prol, %scalar.ph483.preheader
  %indvars.iv199.i.unr = phi i64 [ %indvars.iv199.i.ph, %scalar.ph483.preheader ], [ %indvars.iv.next200.i.prol, %scalar.ph483.prol ]
  %i.vr = add nsw i64 %i.nu, -1
  %i.vs = icmp eq i64 %indvars.iv199.i.ph, %i.vr
  br i1 %i.vs, label %.lr.ph64.i, label %scalar.ph483

.lr.ph60.i:                                       ; preds = %.lr.ph60.i, %.lr.ph60.i.preheader.new
  %indvars.iv194.i = phi i64 [ 0, %.lr.ph60.i.preheader.new ], [ %indvars.iv.next195.i.1, %.lr.ph60.i ] ; 3 uses
  %niter590 = phi i64 [ 0, %.lr.ph60.i.preheader.new ], [ %niter590.next.1, %.lr.ph60.i ]
  %i.vt = load float, ptr %i.ro, align 4, !tbaa !16
  %indvars.iv.next195.i = or disjoint i64 %indvars.iv194.i, 1 ; 2 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next195.i
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !16
  %i.vw = fadd float %i.vt, %i.vv
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv194.i
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !34
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %i.nu ; 2 uses
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !16
  %i.wb = fadd float %i.vw, %i.wa
  store float %i.wb, ptr %i.vz, align 4, !tbaa !16
  %i.wc = load float, ptr %i.ro, align 4, !tbaa !16
  %indvars.iv.next195.i.1 = add nuw nsw i64 %indvars.iv194.i, 2 ; 3 uses
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next195.i.1
  %i.we = load float, ptr %i.wd, align 4, !tbaa !16
  %i.wf = fadd float %i.wc, %i.we
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next195.i
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !34
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %i.nu ; 2 uses
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !16
  %i.wk = fadd float %i.wf, %i.wj
  store float %i.wk, ptr %i.wi, align 4, !tbaa !16
  %niter590.next.1 = add i64 %niter590, 2         ; 2 uses
  %niter590.ncmp.1 = icmp eq i64 %niter590.next.1, %unroll_iter589
  br i1 %niter590.ncmp.1, label %.lr.ph62.i.unr-lcssa, label %.lr.ph60.i, !llvm.loop !113

.lr.ph64.i:                                       ; preds = %scalar.ph483.prol.loopexit, %scalar.ph483, %middle.block497
  %i.wl = getelementptr i8, ptr %i.sl, i64 -4     ; 3 uses
  %smin512 = tail call i32 @llvm.smin.i32(i32 %i.dh, i32 1)
  %i.wm = xor i32 %smin512, -1
  %i.wn = add i32 %i.wm, %i.l                     ; 2 uses
  %i.wo = zext i32 %i.wn to i64
  %i.wp = add nuw nsw i64 %i.wo, 1                ; 2 uses
  %min.iters.check514 = icmp ult i32 %i.wn, 19
  br i1 %min.iters.check514, label %scalar.ph513.preheader, label %vector.memcheck500

vector.memcheck500:                               ; preds = %.lr.ph64.i
  %i.wq = shl nuw nsw i64 %i.nu, 2                ; 4 uses
  %i.wr = add nsw i64 %i.wq, -4
  %smin = tail call i32 @llvm.smin.i32(i32 %i.dh, i32 1)
  %i.ws = xor i32 %smin, -1
  %i.wt = add i32 %i.ws, %i.l
  %i.wu = zext i32 %i.wt to i64
  %i.wv = shl nuw nsw i64 %i.wu, 2                ; 2 uses
  %i.ww = sub nsw i64 %i.wr, %i.wv
  %scevgep501 = getelementptr i8, ptr %i.gn, i64 %i.ww ; 2 uses
  %scevgep502 = getelementptr i8, ptr %i.gn, i64 %i.wq ; 2 uses
  %i.wx = sub nsw i64 %i.wq, %i.wv
  %scevgep503 = getelementptr i8, ptr %.058846.i, i64 %i.wx
  %i.wy = getelementptr i8, ptr %.058846.i, i64 %i.wq
  %scevgep504 = getelementptr i8, ptr %i.wy, i64 4
  %bound0505 = icmp ult ptr %scevgep501, %scevgep504
  %bound1506 = icmp ult ptr %scevgep503, %scevgep502
  %found.conflict507 = and i1 %bound0505, %bound1506
  %bound0508 = icmp ult ptr %scevgep501, %i.sl
  %bound1509 = icmp ult ptr %i.wl, %scevgep502
  %found.conflict510 = and i1 %bound0508, %bound1509
  %conflict.rdx511 = or i1 %found.conflict507, %found.conflict510
  br i1 %conflict.rdx511, label %scalar.ph513.preheader, label %vector.ph515

vector.ph515:                                     ; preds = %vector.memcheck500
  %n.vec517 = and i64 %i.wp, 8589934588           ; 3 uses
  %broadcast.splatinsert518 = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %broadcast.splat519 = shufflevector <4 x i32> %broadcast.splatinsert518, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.wz = sub nsw i64 %i.nu, %n.vec517
  %i.xa = load float, ptr %i.wl, align 4, !tbaa !16, !alias.scope !114
  %broadcast.splatinsert526 = insertelement <4 x float> poison, float %i.xa, i64 0
  %i.xb = shufflevector <4 x float> %broadcast.splatinsert526, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body520

vector.body520:                                   ; preds = %vector.body520, %vector.ph515
  %index521 = phi i64 [ 0, %vector.ph515 ], [ %index.next530, %vector.body520 ] ; 2 uses
  %i.xc = sub i64 %i.nu, %index521                ; 3 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %.058846.i, i64 %i.xc
  %i.xe = getelementptr inbounds i8, ptr %i.xd, i64 -12
  %wide.load523 = load <4 x float>, ptr %i.xe, align 4, !tbaa !16, !alias.scope !117
  %i.xf = getelementptr [4 x i8], ptr %i.gn, i64 %i.xc
  %i.xg = getelementptr i8, ptr %i.xf, i64 -16
  %reverse529 = fadd <4 x float> %wide.load523, %i.xb
  store <4 x float> %reverse529, ptr %i.xg, align 4, !tbaa !16, !alias.scope !119, !noalias !121
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.xc
  %i.xi = getelementptr inbounds i8, ptr %i.xh, i64 -12
  store <4 x i32> %broadcast.splat519, ptr %i.xi, align 4, !tbaa !4
  %index.next530 = add nuw i64 %index521, 4       ; 2 uses
  %i.xj = icmp eq i64 %index.next530, %n.vec517
  br i1 %i.xj, label %middle.block531, label %vector.body520, !llvm.loop !122

middle.block531:                                  ; preds = %vector.body520
  %cmp.n532 = icmp eq i64 %i.wp, %n.vec517
  br i1 %cmp.n532, label %.lr.ph104.i, label %scalar.ph513.preheader

scalar.ph513.preheader:                           ; preds = %vector.memcheck500, %.lr.ph64.i, %middle.block531
  %indvars.iv205.i.ph = phi i64 [ %i.nu, %vector.memcheck500 ], [ %i.nu, %.lr.ph64.i ], [ %i.wz, %middle.block531 ]
  br label %scalar.ph513

scalar.ph483:                                     ; preds = %scalar.ph483.prol.loopexit, %scalar.ph483
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i.1, %scalar.ph483 ], [ %indvars.iv199.i.unr, %scalar.ph483.prol.loopexit ] ; 3 uses
  %i.xk = load float, ptr %i.sl, align 4, !tbaa !16
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next200.i
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !16
  %i.xn = fadd float %i.xk, %i.xm
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv199.i ; 2 uses
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !16
  %i.xq = fadd float %i.xn, %i.xp
  store float %i.xq, ptr %i.xo, align 4, !tbaa !16
  %i.xr = load float, ptr %i.sl, align 4, !tbaa !16
  %indvars.iv.next200.i.1 = add nuw nsw i64 %indvars.iv199.i, 2 ; 3 uses
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next200.i.1
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !16
  %i.xu = fadd float %i.xr, %i.xt
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.next200.i ; 2 uses
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !16
  %i.xx = fadd float %i.xu, %i.xw
  store float %i.xx, ptr %i.xv, align 4, !tbaa !16
  %exitcond204.not.i.1 = icmp eq i64 %indvars.iv.next200.i.1, %i.nu
  br i1 %exitcond204.not.i.1, label %.lr.ph64.i, label %scalar.ph483, !llvm.loop !123

.lr.ph104.i:                                      ; preds = %scalar.ph513, %middle.block531
  %i.xy = add i64 %i.k, 4294967294
  %i.xz = and i64 %i.xy, 4294967295               ; 2 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.xz
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.oc
  %i.yc = getelementptr inbounds i8, ptr %i.yb, i64 -8
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.oc
  %i.ye = getelementptr inbounds i8, ptr %i.yd, i64 -8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %smax219.i = tail call i32 @llvm.smax.i32(i32 %i.hy, i32 1) ; 3 uses
  %wide.trip.count220.i = zext nneg i32 %smax219.i to i64 ; 2 uses
  %xtraiter594 = and i64 %i.nu, 1
  %i.yg = icmp eq i32 %i.dh, 3
  %i.yh = and i64 %i.nu, 2147483646
  %i.yi = add nsw i64 %i.yh, -4
  %lcmp.mod596.not = icmp eq i64 %xtraiter594, 0
  %lcmp.mod599 = trunc i32 %i.dh to i1
  %xtraiter602 = and i64 %wide.trip.count220.i, 1
  %i.yj = icmp eq i32 %smax219.i, 1
  %unroll_iter608 = and i64 %wide.trip.count220.i, 2147483646
  %lcmp.mod604.not = icmp eq i64 %xtraiter602, 0
  %lcmp.mod607 = trunc i32 %smax219.i to i1
  br label %.lr.ph74.i

scalar.ph513:                                     ; preds = %scalar.ph513.preheader, %scalar.ph513
  %indvars.iv205.i = phi i64 [ %indvars.iv.next206.i, %scalar.ph513 ], [ %indvars.iv205.i.ph, %scalar.ph513.preheader ] ; 5 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %.058846.i, i64 %indvars.iv205.i
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !16
  %i.ym = load float, ptr %i.wl, align 4, !tbaa !16
  %i.yn = fadd float %i.yl, %i.ym
  %i.yo = getelementptr [4 x i8], ptr %i.gn, i64 %indvars.iv205.i
  %i.yp = getelementptr i8, ptr %i.yo, i64 -4
  store float %i.yn, ptr %i.yp, align 4, !tbaa !16
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv205.i
  store i32 %i.dg, ptr %i.yq, align 4, !tbaa !4
  %indvars.iv.next206.i = add nsw i64 %indvars.iv205.i, -1
  %i.yr = trunc nuw i64 %indvars.iv205.i to i32
  %i.ys = icmp sgt i32 %i.yr, 1
  br i1 %i.ys, label %scalar.ph513, label %.lr.ph104.i, !llvm.loop !124

.preheader2.preheader.i:                          ; preds = %bb.ap
  %wide.trip.count235.i = and i64 %i.h, 2147483647
  %min.iters.check537 = icmp samesign ult i64 %i.oc, 4
  %n.vec540 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert541 = insertelement <4 x float> poison, float %.5597.i, i64 0
  %broadcast.splat542 = shufflevector <4 x float> %broadcast.splatinsert541, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n548 = icmp eq i64 %i.oc, %n.vec540
  %xtraiter610 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod611.not = icmp eq i64 %xtraiter610, 0
  br label %.preheader2.i

.lr.ph74.i:                                       ; preds = %bb.ap, %.lr.ph104.i
  %indvars.iv222.i = phi i64 [ %i.rn, %.lr.ph104.i ], [ %indvars.iv.next223.i, %bb.ap ] ; 6 uses
  %.0102.i = phi i32 [ %i.dg, %.lr.ph104.i ], [ %.1.i, %bb.ap ]
  %.0544101.i = phi float [ -1.000000e+07, %.lr.ph104.i ], [ %.1545.i, %bb.ap ] ; 2 uses
  %.056099.i = phi i32 [ %i.nz, %.lr.ph104.i ], [ %.1561.i, %bb.ap ] ; 4 uses
  %.056698.i = phi i32 [ 0, %.lr.ph104.i ], [ %.6572.i, %bb.ap ]
  %.057397.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3576.i, %bb.ap ]
  %.057796.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3580.i, %bb.ap ] ; 2 uses
  %.158795.i = phi ptr [ %.058846.i, %.lr.ph104.i ], [ %.158994.i, %bb.ap ] ; 3 uses
  %.158994.i = phi ptr [ %.058647.i, %.lr.ph104.i ], [ %.158795.i, %bb.ap ] ; 4 uses
  %.059293.i = phi float [ 0.000000e+00, %.lr.ph104.i ], [ %.5597.i, %bb.ap ]
  %indvars.iv.next223.i = add nsw i64 %indvars.iv222.i, -1 ; 9 uses
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv222.i
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !16
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %.158795.i, i64 %i.nu ; 2 uses
  store float %i.yu, ptr %i.yv, align 4, !tbaa !16
  %i.yw = trunc nuw nsw i64 %indvars.iv.next223.i to i32
  tail call fastcc void @match_calc(ptr noundef %.158994.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef %i.yw, i32 noundef %i.l, ptr noundef %i.gs, ptr noundef %i.gt, i32 noundef 0)
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.next223.i
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !16
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %.158994.i, i64 %i.nu
  store float %i.yy, ptr %i.yz, align 4, !tbaa !16
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %.158795.i, i64 %i.oc
  %.160565.i = getelementptr inbounds i8, ptr %i.za, i64 -4
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %.158994.i, i64 %i.oc
  %i.zc = getelementptr inbounds i8, ptr %i.zb, i64 -8
  %i.zd = load float, ptr %i.yv, align 4, !tbaa !16
  %i.ze = load float, ptr %i.ya, align 4, !tbaa !16
  %i.zf = fadd float %i.zd, %i.ze
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv222.i
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next223.i ; 2 uses
  %i.zi = zext i32 %.057796.i to i64
  %i.zj = icmp eq i64 %indvars.iv.next223.i, %i.zi
  %i.zk = zext i32 %.056099.i to i64              ; 2 uses
  %i.zl = icmp eq i64 %indvars.iv222.i, %i.zk     ; 3 uses
  %or.cond640.i = select i1 %i.zj, i1 true, i1 %i.zl
  %i.zm = icmp eq i64 %indvars.iv.next223.i, %i.zk ; 2 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next223.i
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !34
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next223.i
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !34
  %i.zr = trunc nuw nsw i64 %indvars.iv222.i to i32 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %.lr.ph74.i
  %indvars.iv208.i = phi i64 [ %i.xz, %.lr.ph74.i ], [ %indvars.iv.next209.i, %bb.ad ] ; 10 uses
  %.160572.i = phi ptr [ %.160565.i, %.lr.ph74.i ], [ %.1605.i, %bb.ad ] ; 2 uses
  %.159170.i = phi ptr [ %i.ye, %.lr.ph74.i ], [ %i.abh, %bb.ad ] ; 3 uses
  %.260069.i = phi i32 [ %i.dh, %.lr.ph74.i ], [ %.3601.i, %bb.ad ] ; 2 uses
  %.160368.i = phi ptr [ %i.yc, %.lr.ph74.i ], [ %i.abg, %bb.ad ] ; 4 uses
  %.160767.i = phi ptr [ %i.zc, %.lr.ph74.i ], [ %i.abi, %bb.ad ] ; 4 uses
  %.261066.i = phi float [ %i.zf, %.lr.ph74.i ], [ %.3611.i, %bb.ad ] ; 3 uses
  %i.zs = load float, ptr %.160572.i, align 4, !tbaa !16 ; 4 uses
  %i.zt = add nuw nsw i64 %indvars.iv208.i, 1     ; 3 uses
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.zt
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !16
  %i.zw = fadd float %.261066.i, %i.zv            ; 2 uses
  %i.zx = fcmp ogt float %i.zw, %i.zs             ; 2 uses
  %.2583.i = select i1 %i.zx, float %i.zw, float %i.zs ; 2 uses
  %i.zy = trunc nuw i64 %i.zt to i32              ; 3 uses
  %.0562.i = select i1 %i.zx, i32 %.260069.i, i32 %i.zy
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv208.i
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !16
  %i.aab = fadd float %i.zs, %i.aaa               ; 2 uses
  %i.aac = fcmp ult float %i.aab, %.261066.i      ; 2 uses
  %.3611.i = select i1 %i.aac, float %.261066.i, float %i.aab ; 2 uses
  %.3601.i = select i1 %i.aac, i32 %.260069.i, i32 %i.zy
  %i.aad = load float, ptr %.160368.i, align 4, !tbaa !16 ; 2 uses
  %i.aae = load float, ptr %i.zg, align 4, !tbaa !16
  %i.aaf = fadd float %i.aad, %i.aae              ; 2 uses
  %i.aag = fcmp ogt float %i.aaf, %.2583.i
  br i1 %i.aag, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aah = load i32, ptr %.159170.i, align 4, !tbaa !4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3584.i = phi float [ %i.aaf, %bb.u ], [ %.2583.i, %bb.t ] ; 3 uses
  %.1565.i = phi i32 [ %i.aah, %bb.u ], [ %i.zr, %bb.t ]
  %.1563.i = phi i32 [ %i.zy, %bb.u ], [ %.0562.i, %bb.t ]
  %i.aai = load float, ptr %i.zh, align 4, !tbaa !16
  %i.aaj = fadd float %i.zs, %i.aai               ; 2 uses
  %i.aak = fcmp ult float %i.aaj, %i.aad
  br i1 %i.aak, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store float %i.aaj, ptr %.160368.i, align 4, !tbaa !16
  store i32 %i.zr, ptr %.159170.i, align 4, !tbaa !4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %or.cond640.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv208.i
  store i32 %.1565.i, ptr %i.aal, align 4, !tbaa !4
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv208.i
  store i32 %.1563.i, ptr %i.aam, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.zm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv208.i ; 2 uses
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !16
  %i.aap = fadd float %.3584.i, %i.aao
  store float %i.aap, ptr %i.aan, align 4, !tbaa !16
  %i.aaq = load float, ptr %.160368.i, align 4, !tbaa !16
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.zt ; 2 uses
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !16
  %i.aat = fadd float %i.aaq, %i.aas
  store float %i.aat, ptr %i.aar, align 4, !tbaa !16
  br label %bb.ab
end_hunk_0
begin_hunk_1_@Lalign2m2m_hmout:bb.a
  %i.tp = fadd float %i.to, %i.tm
  store float %i.tp, ptr %i.tn, align 4, !tbaa !16
  %i.tq = load float, ptr %i.ro, align 4, !tbaa !16
  %indvars.iv.next184.i.1 = add nuw nsw i64 %indvars.iv183.i, 2 ; 3 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next184.i.1
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !16
  %i.tt = fadd float %i.tq, %i.ts
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.next184.i ; 2 uses
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !16
  %i.tw = fadd float %i.tv, %i.tt
  store float %i.tw, ptr %i.tu, align 4, !tbaa !16
  %exitcond187.not.i.1 = icmp eq i64 %indvars.iv.next184.i.1, %i.rn
  br i1 %exitcond187.not.i.1, label %.lr.ph58.i, label %scalar.ph429, !llvm.loop !215

scalar.ph458:                                     ; preds = %scalar.ph458.prol.loopexit, %scalar.ph458
  %indvars.iv188.i = phi i64 [ %indvars.iv.next189.i.1, %scalar.ph458 ], [ %indvars.iv188.i.unr, %scalar.ph458.prol.loopexit ] ; 3 uses
  %i.tx = load float, ptr %i.sl, align 4, !tbaa !16
  %indvars.iv.next189.i = add nuw nsw i64 %indvars.iv188.i, 1 ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next189.i
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !16
  %i.ua = fadd float %i.tx, %i.tz
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %.058846.i, i64 %indvars.iv188.i ; 2 uses
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !16
  %i.ud = fadd float %i.uc, %i.ua
  store float %i.ud, ptr %i.ub, align 4, !tbaa !16
  %i.ue = load float, ptr %i.sl, align 4, !tbaa !16
  %indvars.iv.next189.i.1 = add nuw nsw i64 %indvars.iv188.i, 2 ; 3 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next189.i.1
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !16
  %i.uh = fadd float %i.ue, %i.ug
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %.058846.i, i64 %indvars.iv.next189.i ; 2 uses
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !16
  %i.uk = fadd float %i.uj, %i.uh
  store float %i.uk, ptr %i.ui, align 4, !tbaa !16
  %exitcond193.not.i.1 = icmp eq i64 %indvars.iv.next189.i.1, %i.nu
  br i1 %exitcond193.not.i.1, label %.lr.ph60.i.preheader, label %scalar.ph458, !llvm.loop !216

.lr.ph62.i.unr-lcssa:                             ; preds = %.lr.ph60.i
  %lcmp.mod591.not = icmp eq i64 %xtraiter589, 0
  br i1 %lcmp.mod591.not, label %.lr.ph62.i, label %.lr.ph60.i.epil.preheader

.lr.ph60.i.epil.preheader:                        ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.preheader
  %indvars.iv194.i.epil.init = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %indvars.iv.next195.i.1, %.lr.ph62.i.unr-lcssa ] ; 2 uses
  %lcmp.mod592 = trunc i32 %i.dg to i1
  tail call void @llvm.assume(i1 %lcmp.mod592)
  %i.ul = load float, ptr %i.ro, align 4, !tbaa !16
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv194.i.epil.init
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.uo = load float, ptr %i.un, align 4, !tbaa !16
  %i.up = fadd float %i.ul, %i.uo
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv194.i.epil.init
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !34
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.nu ; 2 uses
  %i.ut = load float, ptr %i.us, align 4, !tbaa !16
  %i.uu = fadd float %i.up, %i.ut
  store float %i.uu, ptr %i.us, align 4, !tbaa !16
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.epil.preheader
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.rn
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !34 ; 7 uses
  %min.iters.check488 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check488, label %scalar.ph487.preheader, label %vector.memcheck475

vector.memcheck475:                               ; preds = %.lr.ph62.i
  %i.ux = shl nuw nsw i64 %i.nu, 2                ; 2 uses
  %scevgep476 = getelementptr i8, ptr %i.uw, i64 %i.ux ; 2 uses
  %i.uy = add nuw nsw i64 %i.ux, 4                ; 2 uses
  %scevgep477 = getelementptr i8, ptr %i.y, i64 %i.uy
  %scevgep478 = getelementptr i8, ptr %i.w, i64 4
  %scevgep479 = getelementptr i8, ptr %i.w, i64 %i.uy
  %bound0480 = icmp ult ptr %i.uw, %scevgep477
  %bound1481 = icmp ult ptr %i.sl, %scevgep476
  %found.conflict482 = and i1 %bound0480, %bound1481
  %bound0483 = icmp ult ptr %i.uw, %scevgep479
  %bound1484 = icmp ult ptr %scevgep478, %scevgep476
  %found.conflict485 = and i1 %bound0483, %bound1484
  %conflict.rdx486 = or i1 %found.conflict482, %found.conflict485
  br i1 %conflict.rdx486, label %scalar.ph487.preheader, label %vector.ph489

vector.ph489:                                     ; preds = %vector.memcheck475
  %n.vec491 = and i64 %i.nu, 2147483640           ; 3 uses
  %i.uz = load float, ptr %i.sl, align 4, !tbaa !16, !alias.scope !217
  %broadcast.splatinsert496 = insertelement <4 x float> poison, float %i.uz, i64 0
  %broadcast.splat497 = shufflevector <4 x float> %broadcast.splatinsert496, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body492

vector.body492:                                   ; preds = %vector.body492, %vector.ph489
  %index493 = phi i64 [ 0, %vector.ph489 ], [ %index.next500, %vector.body492 ] ; 3 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index493 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vc = getelementptr inbounds nuw i8, ptr %i.va, i64 20
  %wide.load494 = load <4 x float>, ptr %i.vb, align 4, !tbaa !16, !alias.scope !220
  %wide.load495 = load <4 x float>, ptr %i.vc, align 4, !tbaa !16, !alias.scope !220
  %i.vd = fadd <4 x float> %broadcast.splat497, %wide.load494
  %i.ve = fadd <4 x float> %broadcast.splat497, %wide.load495
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %index493 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16 ; 2 uses
  %wide.load498 = load <4 x float>, ptr %i.vf, align 4, !tbaa !16, !alias.scope !222, !noalias !224
  %wide.load499 = load <4 x float>, ptr %i.vg, align 4, !tbaa !16, !alias.scope !222, !noalias !224
  %i.vh = fadd <4 x float> %i.vd, %wide.load498
  %i.vi = fadd <4 x float> %i.ve, %wide.load499
  store <4 x float> %i.vh, ptr %i.vf, align 4, !tbaa !16, !alias.scope !222, !noalias !224
  store <4 x float> %i.vi, ptr %i.vg, align 4, !tbaa !16, !alias.scope !222, !noalias !224
  %index.next500 = add nuw i64 %index493, 8       ; 2 uses
  %i.vj = icmp eq i64 %index.next500, %n.vec491
  br i1 %i.vj, label %middle.block501, label %vector.body492, !llvm.loop !225

middle.block501:                                  ; preds = %vector.body492
  %cmp.n502 = icmp eq i64 %n.vec491, %i.nu
  br i1 %cmp.n502, label %.lr.ph64.i, label %scalar.ph487.preheader

scalar.ph487.preheader:                           ; preds = %vector.memcheck475, %.lr.ph62.i, %middle.block501
  %indvars.iv199.i.ph = phi i64 [ 0, %vector.memcheck475 ], [ 0, %.lr.ph62.i ], [ %n.vec491, %middle.block501 ] ; 4 uses
  %xtraiter595.a = and i64 %i.nu, 1
  %lcmp.mod596.not = icmp eq i64 %xtraiter595.a, 0
  br i1 %lcmp.mod596.not, label %scalar.ph487.prol.loopexit, label %scalar.ph487.prol

scalar.ph487.prol:                                ; preds = %scalar.ph487.preheader
  %i.vk = load float, ptr %i.sl, align 4, !tbaa !16
  %indvars.iv.next200.i.prol = or disjoint i64 %indvars.iv199.i.ph, 1 ; 2 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next200.i.prol
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !16
  %i.vn = fadd float %i.vk, %i.vm
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv199.i.ph ; 2 uses
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !16
  %i.vq = fadd float %i.vn, %i.vp
  store float %i.vq, ptr %i.vo, align 4, !tbaa !16
  br label %scalar.ph487.prol.loopexit

scalar.ph487.prol.loopexit:                       ; preds = %scalar.ph487.prol, %scalar.ph487.preheader
  %indvars.iv199.i.unr = phi i64 [ %indvars.iv199.i.ph, %scalar.ph487.preheader ], [ %indvars.iv.next200.i.prol, %scalar.ph487.prol ]
  %i.vr = add nsw i64 %i.nu, -1
  %i.vs = icmp eq i64 %indvars.iv199.i.ph, %i.vr
  br i1 %i.vs, label %.lr.ph64.i, label %scalar.ph487

.lr.ph60.i:                                       ; preds = %.lr.ph60.i, %.lr.ph60.i.preheader.new
  %indvars.iv194.i = phi i64 [ 0, %.lr.ph60.i.preheader.new ], [ %indvars.iv.next195.i.1, %.lr.ph60.i ] ; 3 uses
  %niter594 = phi i64 [ 0, %.lr.ph60.i.preheader.new ], [ %niter594.next.1, %.lr.ph60.i ]
  %i.vt = load float, ptr %i.ro, align 4, !tbaa !16
  %indvars.iv.next195.i = or disjoint i64 %indvars.iv194.i, 1 ; 2 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next195.i
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !16
  %i.vw = fadd float %i.vt, %i.vv
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv194.i
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !34
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %i.nu ; 2 uses
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !16
  %i.wb = fadd float %i.vw, %i.wa
  store float %i.wb, ptr %i.vz, align 4, !tbaa !16
  %i.wc = load float, ptr %i.ro, align 4, !tbaa !16
  %indvars.iv.next195.i.1 = add nuw nsw i64 %indvars.iv194.i, 2 ; 3 uses
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next195.i.1
  %i.we = load float, ptr %i.wd, align 4, !tbaa !16
  %i.wf = fadd float %i.wc, %i.we
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next195.i
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !34
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %i.nu ; 2 uses
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !16
  %i.wk = fadd float %i.wf, %i.wj
  store float %i.wk, ptr %i.wi, align 4, !tbaa !16
  %niter594.next.1 = add i64 %niter594, 2         ; 2 uses
  %niter594.ncmp.1 = icmp eq i64 %niter594.next.1, %unroll_iter593
  br i1 %niter594.ncmp.1, label %.lr.ph62.i.unr-lcssa, label %.lr.ph60.i, !llvm.loop !226

.lr.ph64.i:                                       ; preds = %scalar.ph487.prol.loopexit, %scalar.ph487, %middle.block501
  %i.wl = getelementptr i8, ptr %i.sl, i64 -4     ; 3 uses
  %smin516 = tail call i32 @llvm.smin.i32(i32 %i.dh, i32 1)
  %i.wm = xor i32 %smin516, -1
  %i.wn = add i32 %i.wm, %i.l                     ; 2 uses
  %i.wo = zext i32 %i.wn to i64
  %i.wp = add nuw nsw i64 %i.wo, 1                ; 2 uses
  %min.iters.check518 = icmp ult i32 %i.wn, 19
  br i1 %min.iters.check518, label %scalar.ph517.preheader, label %vector.memcheck504

vector.memcheck504:                               ; preds = %.lr.ph64.i
  %i.wq = shl nuw nsw i64 %i.nu, 2                ; 4 uses
  %i.wr = add nsw i64 %i.wq, -4
  %smin = tail call i32 @llvm.smin.i32(i32 %i.dh, i32 1)
  %i.ws = xor i32 %smin, -1
  %i.wt = add i32 %i.ws, %i.l
  %i.wu = zext i32 %i.wt to i64
  %i.wv = shl nuw nsw i64 %i.wu, 2                ; 2 uses
  %i.ww = sub nsw i64 %i.wr, %i.wv
  %scevgep505 = getelementptr i8, ptr %i.gn, i64 %i.ww ; 2 uses
  %scevgep506 = getelementptr i8, ptr %i.gn, i64 %i.wq ; 2 uses
  %i.wx = sub nsw i64 %i.wq, %i.wv
  %scevgep507 = getelementptr i8, ptr %.058846.i, i64 %i.wx
  %i.wy = getelementptr i8, ptr %.058846.i, i64 %i.wq
  %scevgep508 = getelementptr i8, ptr %i.wy, i64 4
  %bound0509 = icmp ult ptr %scevgep505, %scevgep508
  %bound1510 = icmp ult ptr %scevgep507, %scevgep506
  %found.conflict511 = and i1 %bound0509, %bound1510
  %bound0512 = icmp ult ptr %scevgep505, %i.sl
  %bound1513 = icmp ult ptr %i.wl, %scevgep506
  %found.conflict514 = and i1 %bound0512, %bound1513
  %conflict.rdx515 = or i1 %found.conflict511, %found.conflict514
  br i1 %conflict.rdx515, label %scalar.ph517.preheader, label %vector.ph519

vector.ph519:                                     ; preds = %vector.memcheck504
  %n.vec521 = and i64 %i.wp, 8589934588           ; 3 uses
  %broadcast.splatinsert522 = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %broadcast.splat523 = shufflevector <4 x i32> %broadcast.splatinsert522, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.wz = sub nsw i64 %i.nu, %n.vec521
  %i.xa = load float, ptr %i.wl, align 4, !tbaa !16, !alias.scope !227
  %broadcast.splatinsert530 = insertelement <4 x float> poison, float %i.xa, i64 0
  %i.xb = shufflevector <4 x float> %broadcast.splatinsert530, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph519
  %index525 = phi i64 [ 0, %vector.ph519 ], [ %index.next534, %vector.body524 ] ; 2 uses
  %i.xc = sub i64 %i.nu, %index525                ; 3 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %.058846.i, i64 %i.xc
  %i.xe = getelementptr inbounds i8, ptr %i.xd, i64 -12
  %wide.load527 = load <4 x float>, ptr %i.xe, align 4, !tbaa !16, !alias.scope !230
  %i.xf = getelementptr [4 x i8], ptr %i.gn, i64 %i.xc
  %i.xg = getelementptr i8, ptr %i.xf, i64 -16
  %reverse533 = fadd <4 x float> %wide.load527, %i.xb
  store <4 x float> %reverse533, ptr %i.xg, align 4, !tbaa !16, !alias.scope !232, !noalias !234
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.xc
  %i.xi = getelementptr inbounds i8, ptr %i.xh, i64 -12
  store <4 x i32> %broadcast.splat523, ptr %i.xi, align 4, !tbaa !4
  %index.next534 = add nuw i64 %index525, 4       ; 2 uses
  %i.xj = icmp eq i64 %index.next534, %n.vec521
  br i1 %i.xj, label %middle.block535, label %vector.body524, !llvm.loop !235

middle.block535:                                  ; preds = %vector.body524
  %cmp.n536 = icmp eq i64 %i.wp, %n.vec521
  br i1 %cmp.n536, label %.lr.ph104.i, label %scalar.ph517.preheader

scalar.ph517.preheader:                           ; preds = %vector.memcheck504, %.lr.ph64.i, %middle.block535
  %indvars.iv205.i.ph = phi i64 [ %i.nu, %vector.memcheck504 ], [ %i.nu, %.lr.ph64.i ], [ %i.wz, %middle.block535 ]
  br label %scalar.ph517

scalar.ph487:                                     ; preds = %scalar.ph487.prol.loopexit, %scalar.ph487
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i.1, %scalar.ph487 ], [ %indvars.iv199.i.unr, %scalar.ph487.prol.loopexit ] ; 3 uses
  %i.xk = load float, ptr %i.sl, align 4, !tbaa !16
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next200.i
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !16
  %i.xn = fadd float %i.xk, %i.xm
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv199.i ; 2 uses
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !16
  %i.xq = fadd float %i.xn, %i.xp
  store float %i.xq, ptr %i.xo, align 4, !tbaa !16
  %i.xr = load float, ptr %i.sl, align 4, !tbaa !16
  %indvars.iv.next200.i.1 = add nuw nsw i64 %indvars.iv199.i, 2 ; 3 uses
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next200.i.1
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !16
  %i.xu = fadd float %i.xr, %i.xt
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.next200.i ; 2 uses
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !16
  %i.xx = fadd float %i.xu, %i.xw
  store float %i.xx, ptr %i.xv, align 4, !tbaa !16
  %exitcond204.not.i.1 = icmp eq i64 %indvars.iv.next200.i.1, %i.nu
  br i1 %exitcond204.not.i.1, label %.lr.ph64.i, label %scalar.ph487, !llvm.loop !236

.lr.ph104.i:                                      ; preds = %scalar.ph517, %middle.block535
  %i.xy = add i64 %i.k, 4294967294
  %i.xz = and i64 %i.xy, 4294967295               ; 2 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.xz
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.oc
  %i.yc = getelementptr inbounds i8, ptr %i.yb, i64 -8
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.oc
  %i.ye = getelementptr inbounds i8, ptr %i.yd, i64 -8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %smax219.i = tail call i32 @llvm.smax.i32(i32 %i.hy, i32 1) ; 3 uses
  %wide.trip.count220.i = zext nneg i32 %smax219.i to i64 ; 2 uses
  %xtraiter598 = and i64 %i.nu, 1
  %i.yg = icmp eq i32 %i.dh, 3
  %i.yh = and i64 %i.nu, 2147483646
  %i.yi = add nsw i64 %i.yh, -4
  %lcmp.mod600.not = icmp eq i64 %xtraiter598, 0
  %lcmp.mod603 = trunc i32 %i.dh to i1
  %xtraiter606 = and i64 %wide.trip.count220.i, 1
  %i.yj = icmp eq i32 %smax219.i, 1
  %unroll_iter612 = and i64 %wide.trip.count220.i, 2147483646
  %lcmp.mod608.not = icmp eq i64 %xtraiter606, 0
  %lcmp.mod611 = trunc i32 %smax219.i to i1
  br label %.lr.ph74.i

scalar.ph517:                                     ; preds = %scalar.ph517.preheader, %scalar.ph517
  %indvars.iv205.i = phi i64 [ %indvars.iv.next206.i, %scalar.ph517 ], [ %indvars.iv205.i.ph, %scalar.ph517.preheader ] ; 5 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %.058846.i, i64 %indvars.iv205.i
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !16
  %i.ym = load float, ptr %i.wl, align 4, !tbaa !16
  %i.yn = fadd float %i.yl, %i.ym
  %i.yo = getelementptr [4 x i8], ptr %i.gn, i64 %indvars.iv205.i
  %i.yp = getelementptr i8, ptr %i.yo, i64 -4
  store float %i.yn, ptr %i.yp, align 4, !tbaa !16
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv205.i
  store i32 %i.dg, ptr %i.yq, align 4, !tbaa !4
  %indvars.iv.next206.i = add nsw i64 %indvars.iv205.i, -1
  %i.yr = trunc nuw i64 %indvars.iv205.i to i32
  %i.ys = icmp sgt i32 %i.yr, 1
  br i1 %i.ys, label %scalar.ph517, label %.lr.ph104.i, !llvm.loop !237

.preheader2.preheader.i:                          ; preds = %bb.ap
  %wide.trip.count235.i = and i64 %i.h, 2147483647
  %min.iters.check541 = icmp samesign ult i64 %i.oc, 4
  %n.vec544 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert545 = insertelement <4 x float> poison, float %.5597.i, i64 0
  %broadcast.splat546 = shufflevector <4 x float> %broadcast.splatinsert545, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n552 = icmp eq i64 %i.oc, %n.vec544
  %xtraiter614 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod615.not = icmp eq i64 %xtraiter614, 0
  br label %.preheader2.i

.lr.ph74.i:                                       ; preds = %bb.ap, %.lr.ph104.i
  %indvars.iv222.i = phi i64 [ %i.rn, %.lr.ph104.i ], [ %indvars.iv.next223.i, %bb.ap ] ; 6 uses
  %.0102.i = phi i32 [ %i.dg, %.lr.ph104.i ], [ %.1.i, %bb.ap ]
  %.0544101.i = phi float [ -1.000000e+07, %.lr.ph104.i ], [ %.1545.i, %bb.ap ] ; 2 uses
  %.056099.i = phi i32 [ %i.nz, %.lr.ph104.i ], [ %.1561.i, %bb.ap ] ; 4 uses
  %.056698.i = phi i32 [ 0, %.lr.ph104.i ], [ %.6572.i, %bb.ap ]
  %.057397.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3576.i, %bb.ap ]
  %.057796.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3580.i, %bb.ap ] ; 2 uses
  %.158795.i = phi ptr [ %.058846.i, %.lr.ph104.i ], [ %.158994.i, %bb.ap ] ; 3 uses
  %.158994.i = phi ptr [ %.058647.i, %.lr.ph104.i ], [ %.158795.i, %bb.ap ] ; 4 uses
  %.059293.i = phi float [ 0.000000e+00, %.lr.ph104.i ], [ %.5597.i, %bb.ap ]
  %indvars.iv.next223.i = add nsw i64 %indvars.iv222.i, -1 ; 9 uses
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv222.i
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !16
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %.158795.i, i64 %i.nu ; 2 uses
  store float %i.yu, ptr %i.yv, align 4, !tbaa !16
  %i.yw = trunc nuw nsw i64 %indvars.iv.next223.i to i32
  tail call fastcc void @match_ribosum(ptr noundef %.158994.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef %i.yw, i32 noundef %i.l, ptr noundef %i.gs, ptr noundef %i.gt, i32 noundef 0)
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.next223.i
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !16
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %.158994.i, i64 %i.nu
  store float %i.yy, ptr %i.yz, align 4, !tbaa !16
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %.158795.i, i64 %i.oc
  %.160565.i = getelementptr inbounds i8, ptr %i.za, i64 -4
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %.158994.i, i64 %i.oc
  %i.zc = getelementptr inbounds i8, ptr %i.zb, i64 -8
  %i.zd = load float, ptr %i.yv, align 4, !tbaa !16
  %i.ze = load float, ptr %i.ya, align 4, !tbaa !16
  %i.zf = fadd float %i.zd, %i.ze
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv222.i
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next223.i ; 2 uses
  %i.zi = zext i32 %.057796.i to i64
  %i.zj = icmp eq i64 %indvars.iv.next223.i, %i.zi
  %i.zk = zext i32 %.056099.i to i64              ; 2 uses
  %i.zl = icmp eq i64 %indvars.iv222.i, %i.zk     ; 3 uses
  %or.cond640.i = select i1 %i.zj, i1 true, i1 %i.zl
  %i.zm = icmp eq i64 %indvars.iv.next223.i, %i.zk ; 2 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next223.i
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !34
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next223.i
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !34
  %i.zr = trunc nuw nsw i64 %indvars.iv222.i to i32 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %.lr.ph74.i
  %indvars.iv208.i = phi i64 [ %i.xz, %.lr.ph74.i ], [ %indvars.iv.next209.i, %bb.ad ] ; 10 uses
  %.160572.i = phi ptr [ %.160565.i, %.lr.ph74.i ], [ %.1605.i, %bb.ad ] ; 2 uses
  %.159170.i = phi ptr [ %i.ye, %.lr.ph74.i ], [ %i.abh, %bb.ad ] ; 3 uses
  %.260069.i = phi i32 [ %i.dh, %.lr.ph74.i ], [ %.3601.i, %bb.ad ] ; 2 uses
  %.160368.i = phi ptr [ %i.yc, %.lr.ph74.i ], [ %i.abg, %bb.ad ] ; 4 uses
  %.160767.i = phi ptr [ %i.zc, %.lr.ph74.i ], [ %i.abi, %bb.ad ] ; 4 uses
  %.261066.i = phi float [ %i.zf, %.lr.ph74.i ], [ %.3611.i, %bb.ad ] ; 3 uses
  %i.zs = load float, ptr %.160572.i, align 4, !tbaa !16 ; 4 uses
  %i.zt = add nuw nsw i64 %indvars.iv208.i, 1     ; 3 uses
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.zt
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !16
  %i.zw = fadd float %.261066.i, %i.zv            ; 2 uses
  %i.zx = fcmp ogt float %i.zw, %i.zs             ; 2 uses
  %.2583.i = select i1 %i.zx, float %i.zw, float %i.zs ; 2 uses
  %i.zy = trunc nuw i64 %i.zt to i32              ; 3 uses
  %.0562.i = select i1 %i.zx, i32 %.260069.i, i32 %i.zy
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv208.i
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !16
  %i.aab = fadd float %i.zs, %i.aaa               ; 2 uses
  %i.aac = fcmp ult float %i.aab, %.261066.i      ; 2 uses
  %.3611.i = select i1 %i.aac, float %.261066.i, float %i.aab ; 2 uses
  %.3601.i = select i1 %i.aac, i32 %.260069.i, i32 %i.zy
  %i.aad = load float, ptr %.160368.i, align 4, !tbaa !16 ; 2 uses
  %i.aae = load float, ptr %i.zg, align 4, !tbaa !16
  %i.aaf = fadd float %i.aad, %i.aae              ; 2 uses
  %i.aag = fcmp ogt float %i.aaf, %.2583.i
  br i1 %i.aag, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aah = load i32, ptr %.159170.i, align 4, !tbaa !4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3584.i = phi float [ %i.aaf, %bb.u ], [ %.2583.i, %bb.t ] ; 3 uses
  %.1565.i = phi i32 [ %i.aah, %bb.u ], [ %i.zr, %bb.t ]
  %.1563.i = phi i32 [ %i.zy, %bb.u ], [ %.0562.i, %bb.t ]
  %i.aai = load float, ptr %i.zh, align 4, !tbaa !16
  %i.aaj = fadd float %i.zs, %i.aai               ; 2 uses
  %i.aak = fcmp ult float %i.aaj, %i.aad
  br i1 %i.aak, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store float %i.aaj, ptr %.160368.i, align 4, !tbaa !16
  store i32 %i.zr, ptr %.159170.i, align 4, !tbaa !4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %or.cond640.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv208.i
  store i32 %.1565.i, ptr %i.aal, align 4, !tbaa !4
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv208.i
  store i32 %.1563.i, ptr %i.aam, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.zm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv208.i ; 2 uses
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !16
  %i.aap = fadd float %.3584.i, %i.aao
  store float %i.aap, ptr %i.aan, align 4, !tbaa !16
  %i.aaq = load float, ptr %.160368.i, align 4, !tbaa !16
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.zt ; 2 uses
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !16
  %i.aat = fadd float %i.aaq, %i.aas
  store float %i.aat, ptr %i.aar, align 4, !tbaa !16
  br label %bb.ab
end_hunk_1
