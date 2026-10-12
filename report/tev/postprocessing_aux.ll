Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  br i1 %cmp.n467, label %._crit_edge312, label %scalar.ph457.preheader

scalar.ph457.preheader:                           ; preds = %vector.scevcheck, %.lr.ph311, %middle.block466
  %indvars.iv365.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph311 ], [ %n.vec460, %middle.block466 ] ; 5 uses
  br i1 %lcmp.mod724.not, label %scalar.ph457.prol.loopexit, label %scalar.ph457.prol

scalar.ph457.prol:                                ; preds = %scalar.ph457.preheader
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv365.ph
  %i.th = load float, ptr %i.tg, align 4, !tbaa !9
  %i.ti = fmul float %i.th, 2.500000e-01
  %i.tj = mul nuw nsw i64 %indvars.iv365.ph, %i.bn
  %i.tk = trunc nuw nsw i64 %i.tj to i32
  %i.tl = add i32 %i.st, %i.tk
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tm
  store float %i.ti, ptr %i.tn, align 4, !tbaa !9
  %indvars.iv.next366.prol = or disjoint i64 %indvars.iv365.ph, 1
  br label %scalar.ph457.prol.loopexit

scalar.ph457.prol.loopexit:                       ; preds = %scalar.ph457.prol, %scalar.ph457.preheader
  %indvars.iv365.unr = phi i64 [ %indvars.iv365.ph, %scalar.ph457.preheader ], [ %indvars.iv.next366.prol, %scalar.ph457.prol ]
  %i.to = icmp eq i64 %indvars.iv365.ph, %i.cl
  br i1 %i.to, label %._crit_edge312, label %scalar.ph457

scalar.ph457:                                     ; preds = %scalar.ph457.prol.loopexit, %scalar.ph457
  %indvars.iv365 = phi i64 [ %indvars.iv.next366.1, %scalar.ph457 ], [ %indvars.iv365.unr, %scalar.ph457.prol.loopexit ] ; 4 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv365
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !9
  %i.tr = fmul float %i.tq, 2.500000e-01
  %i.ts = mul nuw nsw i64 %indvars.iv365, %i.bn
  %i.tt = trunc nuw nsw i64 %i.ts to i32
  %i.tu = add i32 %i.st, %i.tt
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tv
  store float %i.tr, ptr %i.tw, align 4, !tbaa !9
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next366
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !9
  %i.tz = fmul float %i.ty, 2.500000e-01
  %i.ua = mul nuw nsw i64 %indvars.iv.next366, %i.bn
  %i.ub = trunc nuw nsw i64 %i.ua to i32
  %i.uc = add i32 %i.st, %i.ub
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ud
  store float %i.tz, ptr %i.ue, align 4, !tbaa !9
  %indvars.iv.next366.1 = add nuw nsw i64 %indvars.iv365, 2 ; 2 uses
  %exitcond369.not.1 = icmp eq i64 %indvars.iv.next366.1, %wide.trip.count368
  br i1 %exitcond369.not.1, label %._crit_edge312, label %scalar.ph457, !llvm.loop !150

._crit_edge312:                                   ; preds = %scalar.ph457.prol.loopexit, %scalar.ph457, %middle.block466, %_ZN6LibRaw13hat_transformEPfS0_iii.exit278
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond374.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count373
  br i1 %exitcond374.not, label %.lr.ph318, label %bb.h, !llvm.loop !151

.lr.ph318:                                        ; preds = %._crit_edge312, %.preheader291
  %i.uf = load float, ptr %i.au, align 4, !tbaa !185
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw15wavelet_denoiseEvE5noise, i64 %indvars.iv381
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !9
  %i.ui = fmul float %i.uf, %i.uh                 ; 4 uses
  %i.uj = fneg float %i.ui
  %.not252 = icmp eq i32 %.0229321, 0
  %i.uk = sext i32 %i.dx to i64
  %i.ul = sext i32 %.0229321 to i64
  %invariant.gep443.a = getelementptr [4 x i8], ptr %i.al, i64 %i.uk
  %invariant.gep445 = getelementptr [4 x i8], ptr %i.al, i64 %i.ul
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph318, %bb.o
  %indvars.iv375 = phi i64 [ 0, %.lr.ph318 ], [ %indvars.iv.next376, %bb.o ] ; 4 uses
  %gep444.a = getelementptr [4 x i8], ptr %invariant.gep443.a, i64 %indvars.iv375
  %i.um = load float, ptr %gep444.a, align 4, !tbaa !9
  %gep446.a = getelementptr [4 x i8], ptr %invariant.gep445, i64 %indvars.iv375 ; 2 uses
  %i.un = load float, ptr %gep446.a, align 4, !tbaa !9
  %i.uo = fsub float %i.un, %i.um                 ; 4 uses
  %i.up = fcmp olt float %i.uo, %i.uj
  br i1 %i.up, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.uq = fadd float %i.ui, %i.uo
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ur = fcmp ogt float %i.uo, %i.ui
  br i1 %i.ur, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.us = fsub float %i.uo, %i.ui
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.sink = phi float [ %i.us, %bb.l ], [ %i.uq, %bb.j ], [ 0.000000e+00, %bb.k ] ; 2 uses
  store float %.sink, ptr %gep446.a, align 4, !tbaa !9
  br i1 %.not252, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv375 ; 2 uses
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !9
  %i.uv = fadd float %.sink, %i.uu
  store float %i.uv, ptr %i.ut, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count379
  br i1 %exitcond380.not, label %._crit_edge319, label %bb.i, !llvm.loop !152

._crit_edge319:                                   ; preds = %bb.o
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond384.not = icmp eq i64 %indvars.iv.next382, 5
  br i1 %exitcond384.not, label %.lr.ph323, label %bb.f, !llvm.loop !153

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %scalar.ph ], [ %indvars.iv385.ph, %scalar.ph.preheader ] ; 4 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv385
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !9
  %gep448.a = getelementptr [4 x i8], ptr %invariant.gep447.a, i64 %indvars.iv385
  %i.uy = load float, ptr %gep448.a, align 4, !tbaa !9
  %i.uz = fadd float %i.ux, %i.uy                 ; 2 uses
  %i.va = fmul float %i.uz, %i.uz
  %i.vb = fmul float %i.va, f0x37800000
  %i.vc = fptosi float %i.vb to i32
  %i.vd = tail call i32 @llvm.umin.i32(i32 %i.vc, i32 65535)
  %i.ve = trunc nuw i32 %i.vd to i16
  %gep326 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %indvars.iv385
  store i16 %i.ve, ptr %gep326, align 2, !tbaa !77
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next386, %wide.trip.count389
  br i1 %exitcond390.not, label %._crit_edge324, label %scalar.ph, !llvm.loop !154

._crit_edge324:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1 ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next392, %wide.trip.count394
  br i1 %exitcond395.not, label %._crit_edge328, label %.lr.ph, !llvm.loop !155

._crit_edge328:                                   ; preds = %._crit_edge324
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !164 ; 8 uses
  %.not250 = icmp eq i32 %i.vg, 0
  %brmerge = or i1 %i.aq, %.not250
  br i1 %brmerge, label %.loopexit288, label %.preheader290

.preheader290:                                    ; preds = %._crit_edge328
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 3 uses
  %i.vi = lshr i32 %i.vg, 4
  %i.vj = and i32 %i.vi, 2                        ; 2 uses
  %i.vk = zext nneg i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  %i.vn = load float, ptr %i.vm, align 8, !tbaa !9 ; 2 uses
  %i.vo = and i32 %i.vg, 2
  %i.vp = or disjoint i32 %i.vo, 1
  %i.vq = zext nneg i32 %i.vp to i64              ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vq
  %i.vs = load float, ptr %i.vr, align 8, !tbaa !9
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.vq
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !74
  store i32 %i.vu, ptr %i.b, align 4, !tbaa !74
  %i.vv = lshr i32 %i.vg, 8
  %i.vw = and i32 %i.vv, 2
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 4
  %i.wa = load float, ptr %i.vz, align 8, !tbaa !9
  %i.wb = insertelement <2 x float> poison, float %i.vn, i64 0
  %i.wc = insertelement <2 x float> %i.wb, float %i.wa, i64 1
  %i.wd = fmul <2 x float> %i.wc, splat (float 1.250000e-01)
  %i.we = insertelement <2 x float> poison, float %i.vs, i64 0
  %i.wf = insertelement <2 x float> %i.we, float %i.vn, i64 1
  %i.wg = fdiv <2 x float> %i.wd, %i.wf
  store <2 x float> %i.wg, ptr %i.a, align 8, !tbaa !9
  %i.wh = zext nneg i32 %i.vj to i64
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.wh
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !74
  %i.wl = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.wk, ptr %i.wl, align 4, !tbaa !74
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.wo = load i16, ptr %i.wn, align 4, !tbaa !79
  %i.wp = icmp ugt i16 %i.wo, 2
  br i1 %i.wp, label %.preheader.lr.ph, label %.loopexit288

.preheader.lr.ph:                                 ; preds = %.preheader290
  %i.wq = load i16, ptr %i.wm, align 2, !tbaa !80 ; 2 uses
  %i.wr = zext i16 %i.wq to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.wr, 2
  %i.ws = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.wr
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !185
  %i.wx = fmul float %i.ww, f0x3B000000           ; 4 uses
  %i.wy = fneg float %i.wx
  br label %.preheader

.loopexit286:                                     ; preds = %bb.w, %._crit_edge338
  %i.wz = phi i16 [ %i.yp, %._crit_edge338 ], [ %i.abv, %bb.w ]
  %i.xa = load i16, ptr %i.wn, align 4, !tbaa !79
  %i.xb = zext i16 %i.xa to i32
  %i.xc = add nsw i32 %i.xb, -1
  %i.xd = icmp slt i32 %1, %i.xc
  %indvars.iv.next411 = add nuw nsw i32 %indvars.iv410, 1
  br i1 %i.xd, label %.preheader, label %.loopexit288, !llvm.loop !156

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit286
  %i.xe = phi i16 [ %i.wq, %.preheader.lr.ph ], [ %i.wz, %.loopexit286 ] ; 3 uses
  %.sroa.10.0 = phi ptr [ %i.ws, %.preheader.lr.ph ], [ %.sroa.10.2, %.loopexit286 ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.wt, %.preheader.lr.ph ], [ %.sroa.6.2, %.loopexit286 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %.sroa.0.2, %.loopexit286 ] ; 2 uses
  %indvars.iv410 = phi i32 [ 2, %.preheader.lr.ph ], [ %indvars.iv.next411, %.loopexit286 ] ; 3 uses
  %.0343 = phi i32 [ -1, %.preheader.lr.ph ], [ %.1.lcssa, %.loopexit286 ] ; 3 uses
  %.3226342 = phi i32 [ 1, %.preheader.lr.ph ], [ %1, %.loopexit286 ] ; 5 uses
  %.not251335 = icmp sgt i32 %.0343, %.3226342
  br i1 %.not251335, label %._crit_edge338, label %.lr.ph337

.loopexit:                                        ; preds = %bb.p, %.lr.ph337
  %i.xf = phi i16 [ %i.xh, %.lr.ph337 ], [ %i.ym, %bb.p ] ; 2 uses
  %i.xg = phi i16 [ %i.xi, %.lr.ph337 ], [ %i.ym, %bb.p ]
  %exitcond412.not = icmp eq i32 %i.xj, %indvars.iv410
  br i1 %exitcond412.not, label %._crit_edge338, label %.lr.ph337, !llvm.loop !157

.lr.ph337:                                        ; preds = %.preheader, %.loopexit
  %i.xh = phi i16 [ %i.xf, %.loopexit ], [ %i.xe, %.preheader ]
  %i.xi = phi i16 [ %i.xg, %.loopexit ], [ %i.xe, %.preheader ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.10.0, %.preheader ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.10.1, %.loopexit ], [ %.sroa.6.0, %.preheader ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %.1336 = phi i32 [ %i.xj, %.loopexit ], [ %.0343, %.preheader ]
  %i.xj = add nsw i32 %.1336, 1                   ; 4 uses
  %i.xk = shl i32 %i.xj, 1
  %i.xl = and i32 %i.xk, 14                       ; 2 uses
  %i.xm = shl nuw nsw i32 %i.xl, 1
  %i.xn = or disjoint i32 %i.xm, 2
  %i.xo = lshr i32 %i.vg, %i.xn                   ; 2 uses
  %i.xp = and i32 %i.xo, 1                        ; 2 uses
  %i.xq = zext i16 %i.xi to i32
  %i.xr = icmp samesign ult i32 %i.xp, %i.xq
  br i1 %i.xr, label %.lr.ph334, label %.loopexit

.lr.ph334:                                        ; preds = %.lr.ph337
  %i.xs = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.xt = and i32 %i.xo, 1
  %i.xu = zext nneg i32 %i.xt to i64
  %i.xv = or disjoint i32 %i.xp, %i.xl
  %i.xw = shl nuw nsw i32 %i.xv, 1
  %i.xx = lshr i32 %i.vg, %i.xw
  %i.xy = and i32 %i.xx, 3
  %i.xz = zext nneg i32 %i.xy to i64
  %invariant.gep449.a = getelementptr [2 x i8], ptr %i.xs, i64 %i.xz
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph334, %bb.p
  %indvars.iv407 = phi i64 [ %i.xu, %.lr.ph334 ], [ %indvars.iv.next408, %bb.p ] ; 3 uses
  %i.ya = load i16, ptr %i.wu, align 4, !tbaa !81
  %i.yb = zext i16 %i.ya to i32                   ; 2 uses
  %i.yc = ashr i32 %i.xj, %i.yb
  %i.yd = load i16, ptr %i.d, align 2, !tbaa !160
  %i.ye = zext i16 %i.yd to i32
  %i.yf = mul nsw i32 %i.yc, %i.ye
  %i.yg = trunc nuw nsw i64 %indvars.iv407 to i32
  %i.yh = lshr i32 %i.yg, %i.yb
  %i.yi = add nsw i32 %i.yf, %i.yh
  %i.yj = sext i32 %i.yi to i64
  %gep450.a = getelementptr [8 x i8], ptr %invariant.gep449.a, i64 %i.yj
  %i.yk = load i16, ptr %gep450.a, align 2, !tbaa !77
  %i.yl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1, i64 %indvars.iv407
  store i16 %i.yk, ptr %i.yl, align 2, !tbaa !77
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 2 ; 2 uses
  %i.ym = load i16, ptr %i.wm, align 2, !tbaa !80 ; 3 uses
  %i.yn = zext i16 %i.ym to i64
  %i.yo = icmp samesign ult i64 %indvars.iv.next408, %i.yn
  br i1 %i.yo, label %bb.p, label %.loopexit, !llvm.loop !158

._crit_edge338:                                   ; preds = %.loopexit, %.preheader
  %i.yp = phi i16 [ %i.xe, %.preheader ], [ %i.xf, %.loopexit ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %.preheader ], [ %.sroa.0.1, %.loopexit ] ; 3 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.preheader ], [ %.sroa.10.1, %.loopexit ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.6.1, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0343, %.preheader ], [ %indvars.iv410, %.loopexit ]
  %1 = add nuw nsw i32 %.3226342, 1               ; 2 uses
  %i.yq = shl nuw nsw i32 %.3226342, 1
  %i.yr = and i32 %i.yq, 14                       ; 2 uses
  %i.ys = shl nuw nsw i32 %i.yr, 1
  %i.yt = lshr i32 %i.vg, %i.ys                   ; 3 uses
  %i.yu = and i32 %i.yt, 1
  %i.yv = add nuw nsw i32 %i.yu, 1
  %i.yw = zext i16 %i.yp to i32
  %i.yx = add nsw i32 %i.yw, -1
  %i.yy = icmp slt i32 %i.yv, %i.yx
  br i1 %i.yy, label %.lr.ph341, label %.loopexit286

.lr.ph341:                                        ; preds = %._crit_edge338
  %i.yz = and i32 %.3226342, 1                    ; 2 uses
  %i.za = xor i32 %i.yz, 1
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.zb
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !74
  %i.ze = zext nneg i32 %i.yz to i64              ; 2 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ze
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !9
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ze
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !74
  %i.zj = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.zk = and i32 %i.yt, 1
  %i.zl = and i32 %i.yt, 1
  %narrow = add nuw nsw i32 %i.zl, 1
  %i.zm = zext nneg i32 %narrow to i64
  %i.zn = shl i32 %i.zd, 2
  %i.zo = or disjoint i32 %i.zk, %i.yr
  %i.zp = shl nuw nsw i32 %i.zo, 1
  %i.zq = xor i32 %i.zp, 2
  %i.zr = lshr i32 %i.vg, %i.zq
  %i.zs = and i32 %i.zr, 3
  %i.zt = zext nneg i32 %i.zs to i64
  %invariant.gep451 = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %i.zt
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph341, %bb.w
  %indvars.iv413 = phi i64 [ %i.zm, %.lr.ph341 ], [ %indvars.iv.next414, %bb.w ] ; 5 uses
  %i.zu = add nsw i64 %indvars.iv413, -1          ; 2 uses
  %i.zv = getelementptr inbounds [2 x i8], ptr %.sroa.0.2, i64 %i.zu
  %i.zw = load i16, ptr %i.zv, align 2, !tbaa !77
  %i.zx = zext i16 %i.zw to i32
  %i.zy = add nuw nsw i64 %indvars.iv413, 1       ; 2 uses
  %i.zz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.2, i64 %i.zy
  %i.aaa = load i16, ptr %i.zz, align 2, !tbaa !77
  %i.aab = zext i16 %i.aaa to i32
  %i.aac = add nuw nsw i32 %i.aab, %i.zx
  %i.aad = getelementptr inbounds [2 x i8], ptr %.sroa.10.2, i64 %i.zu
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !77
  %i.aaf = zext i16 %i.aae to i32
  %i.aag = add nuw nsw i32 %i.aac, %i.aaf
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.10.2, i64 %i.zy
  %i.aai = load i16, ptr %i.aah, align 2, !tbaa !77
  %i.aaj = zext i16 %i.aai to i32
  %i.aak = add nuw nsw i32 %i.aag, %i.aaj
  %i.aal = sub i32 %i.aak, %i.zn
  %i.aam = sitofp i32 %i.aal to float
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.2, i64 %indvars.iv413
  %i.aao = load i16, ptr %i.aan, align 2, !tbaa !77
  %i.aap = zext i16 %i.aao to i32
  %i.aaq = add nsw i32 %i.zi, %i.aap
  %i.aar = sitofp i32 %i.aaq to float
  %i.aas = fmul nnan float %i.aar, 5.000000e-01
  %i.aat = tail call float @llvm.fmuladd.f32(float %i.aam, float %i.zg, float %i.aas) ; 2 uses
  %i.aau = fcmp olt float %i.aat, 0.000000e+00
  br i1 %i.aau, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aav = tail call noundef float @sqrtf(float noundef %i.aat) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.aaw = phi float [ %i.aav, %bb.r ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %i.aax = load i16, ptr %i.wu, align 4, !tbaa !81
  %i.aay = zext i16 %i.aax to i32                 ; 2 uses
  %i.aaz = lshr i32 %.3226342, %i.aay
  %i.aba = load i16, ptr %i.d, align 2, !tbaa !160
  %i.abb = zext i16 %i.aba to i32
  %i.abc = mul nuw nsw i32 %i.aaz, %i.abb
  %i.abd = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.abe = lshr i32 %i.abd, %i.aay
  %i.abf = add nuw nsw i32 %i.abc, %i.abe
  %i.abg = zext nneg i32 %i.abf to i64
  %gep452 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep451, i64 %i.abg ; 2 uses
  %i.abh = load i16, ptr %gep452, align 2, !tbaa !77
  %i.abi = uitofp i16 %i.abh to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.abi)
  %i.abj = fsub float %sqrt, %i.aaw               ; 4 uses
  %i.abk = fcmp olt float %i.abj, %i.wy
  br i1 %i.abk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.abl = fadd float %i.wx, %i.abj
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.abm = fcmp ogt float %i.abj, %i.wx
  br i1 %i.abm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.abn = fsub float %i.abj, %i.wx
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.0232 = phi float [ %i.abl, %bb.t ], [ %i.abn, %bb.v ], [ 0.000000e+00, %bb.u ]
  %i.abo = fadd float %i.aaw, %.0232              ; 2 uses
  %i.abp = fmul float %i.abo, %i.abo
  %i.abq = fpext float %i.abp to double
  %i.abr = fadd double %i.abq, 5.000000e-01
  %i.abs = fptosi double %i.abr to i32
  %i.abt = tail call i32 @llvm.umin.i32(i32 %i.abs, i32 65535)
  %i.abu = trunc nuw i32 %i.abt to i16
  store i16 %i.abu, ptr %gep452, align 2, !tbaa !77
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 2 ; 2 uses
  %i.abv = load i16, ptr %i.wm, align 2, !tbaa !80 ; 2 uses
  %i.abw = zext i16 %i.abv to i64
  %i.abx = add nsw i64 %i.abw, -1
  %i.aby = icmp slt i64 %indvars.iv.next414, %i.abx
  br i1 %i.aby, label %bb.q, label %.loopexit286, !llvm.loop !159

.loopexit288:                                     ; preds = %.loopexit286, %bb.e, %.preheader290, %._crit_edge328
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.al)
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.b, %.loopexit288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw13median_filterEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [9 x i32], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5484 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !191  ; 2 uses
  %.not79 = icmp slt i32 %i.d, 1
  br i1 %.not79, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %._crit_edge77.1
  %i.j = phi i32 [ %i.d, %.lr.ph82 ], [ %i.hp, %._crit_edge77.1 ]
  %.04880 = phi i32 [ 1, %.lr.ph82 ], [ %i.ho, %._crit_edge77.1 ] ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %.not57 = icmp eq ptr %i.k, null
  br i1 %.not57, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.m = add nsw i32 %.04880, -1
  %i.n = tail call noundef i32 %i.k(ptr noundef %i.l, i32 noundef 8192, i32 noundef %i.m, i32 noundef %i.j)
  %.not58 = icmp eq i32 %i.n, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 6, ptr %i.o, align 16, !tbaa !85
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !76   ; 9 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = load i16, ptr %i.g, align 2, !tbaa !80   ; 2 uses
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = load i16, ptr %i.h, align 4, !tbaa !79   ; 2 uses
  %i.u = zext i16 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, %i.s
  %.not84 = icmp eq i64 %i.v, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.04965 = phi ptr [ %i.y, %.lr.ph ], [ %i.p, %bb.e ] ; 3 uses
  %i.w = load i16, ptr %.04965, align 2, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %.04965, i64 6
  store i16 %i.w, ptr %i.x, align 2, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %.04965, i64 8 ; 2 uses
  %i.z = load i16, ptr %i.g, align 2, !tbaa !80   ; 2 uses
  %i.aa = zext i16 %i.z to i64                    ; 2 uses
  %i.ab = load i16, ptr %i.h, align 4, !tbaa !79  ; 2 uses
  %i.ac = zext i16 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ad
  %i.af = icmp ult ptr %i.y, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !186

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.pre-phi = phi i64 [ %i.s, %bb.e ], [ %i.aa, %.lr.ph ] ; 3 uses
  %i.ag = phi i16 [ %i.t, %bb.e ], [ %i.ab, %.lr.ph ] ; 3 uses
  %i.ah = phi i16 [ %i.r, %bb.e ], [ %i.z, %.lr.ph ] ; 3 uses
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = zext i16 %i.ag to i32
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = mul nsw i32 %i.ak, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %.pre-phi, %i.am
  br i1 %i.an, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre-phi
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph76, %bb.j
  %i.ap = phi i16 [ %i.ag, %.lr.ph76 ], [ %i.df, %bb.j ]
  %i.aq = phi i16 [ %i.ah, %.lr.ph76 ], [ %i.dg, %bb.j ] ; 2 uses
  %i.ar = phi i32 [ %i.ai, %.lr.ph76 ], [ %i.di, %bb.j ] ; 4 uses
  %.15074 = phi ptr [ %i.ao, %.lr.ph76 ], [ %i.dh, %bb.j ] ; 7 uses
  %i.as = ptrtoint ptr %.15074 to i64
  %i.at = sub i64 %i.as, %i.q
  %i.au = ashr exact i64 %i.at, 3
  %i.av = add nsw i64 %i.au, 1
  %i.aw = zext i16 %i.aq to i64
  %i.ax = srem i64 %i.av, %i.aw
  %i.ay = icmp slt i64 %i.ax, 2
  br i1 %i.ay, label %bb.j, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %bb.f
  %i.az = sub nsw i32 0, %i.ar
  %narrow = xor i32 %i.ar, -1
  %i.ba = sext i32 %narrow to i64
  %i.bb = zext nneg i32 %i.ar to i64
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %.lr.ph72
  %indvars.iv = phi i64 [ 0, %.lr.ph72.preheader ], [ %indvars.iv.next95, %.lr.ph72 ] ; 4 uses
  %indvars.iv86 = phi i64 [ %i.ba, %.lr.ph72.preheader ], [ %indvars.iv.next87, %.lr.ph72 ] ; 4 uses
  %.04569 = phi i32 [ %i.az, %.lr.ph72.preheader ], [ %i.cf, %.lr.ph72 ] ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !77
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !77
  %i.bi = zext i16 %i.bh to i32
  %i.bj = sub nsw i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !74
  %i.bl = getelementptr [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 14
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !77
  %i.bo = zext i16 %i.bn to i32
  %i.bp = getelementptr i8, ptr %i.bl, i64 10
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !77
  %i.br = zext i16 %i.bq to i32
  %i.bs = sub nsw i32 %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !74
  %i.bv = getelementptr [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 22
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !77
  %i.by = zext i16 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.bv, i64 18
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !77
  %i.cb = zext i16 %i.ca to i32
  %i.cc = sub nsw i32 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !74
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv, 3
end_hunk_0
