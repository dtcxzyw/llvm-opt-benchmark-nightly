inline.NumInlined: 20
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@process:bb.a
  %bound1338 = icmp ult ptr %scevgep120, %scevgep111
  %found.conflict339 = and i1 %bound0337, %bound1338
  %conflict.rdx340 = or i1 %conflict.rdx336, %found.conflict339
  %bound0341 = icmp ult ptr %scevgep112, %scevgep115
  %bound1342 = icmp ult ptr %scevgep114, %scevgep113
  %found.conflict343 = and i1 %bound0341, %bound1342
  %conflict.rdx344 = or i1 %conflict.rdx340, %found.conflict343
  %bound0345 = icmp ult ptr %scevgep112, %scevgep117
  %bound1346 = icmp ult ptr %scevgep116, %scevgep113
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx348 = or i1 %conflict.rdx344, %found.conflict347
  %bound0349 = icmp ult ptr %scevgep112, %scevgep119
  %bound1350 = icmp ult ptr %scevgep118, %scevgep113
  %found.conflict351 = and i1 %bound0349, %bound1350
  %conflict.rdx352 = or i1 %conflict.rdx348, %found.conflict351
  %bound0353 = icmp ult ptr %scevgep112, %scevgep121
  %bound1354 = icmp ult ptr %scevgep120, %scevgep113
  %found.conflict355 = and i1 %bound0353, %bound1354
  %conflict.rdx356 = or i1 %conflict.rdx352, %found.conflict355
  br i1 %conflict.rdx356, label %scalar.ph357.preheader, label %vector.ph359

vector.ph359:                                     ; preds = %vector.memcheck
  %i.hw = and i64 %i.as, 7                        ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 0
  %i.hy = select i1 %i.hx, i64 8, i64 %i.hw
  %n.vec360 = sub i64 %i.as, %i.hy                ; 2 uses
  %broadcast.splatinsert361 = insertelement <8 x i64> poison, i64 %i.gy, i64 0
  %broadcast.splat362 = shufflevector <8 x i64> %broadcast.splatinsert361, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert363 = insertelement <8 x i64> poison, i64 %i.ha, i64 0
  %broadcast.splat364 = shufflevector <8 x i64> %broadcast.splatinsert363, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert365 = insertelement <8 x i64> poison, i64 %i.hd, i64 0
  %broadcast.splat366 = shufflevector <8 x i64> %broadcast.splatinsert365, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body367

vector.body367:                                   ; preds = %vector.body367, %vector.ph359
  %index368 = phi i64 [ 0, %vector.ph359 ], [ %index.next384, %vector.body367 ]
  %vec.ind369 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph359 ], [ %vec.ind.next385, %vector.body367 ] ; 2 uses
  %i.hz = shl <8 x i64> %vec.ind369, splat (i64 2) ; 5 uses
  %i.ia = extractelement <8 x i64> %i.hz, i64 0
  %i.ib = add <8 x i64> %i.hz, %broadcast.splat362 ; 3 uses
  %i.ic = extractelement <8 x i64> %i.ib, i64 0   ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ic
  %wide.vec = load <32 x float>, ptr %i.id, align 4, !tbaa !64, !alias.scope !72, !noalias !78
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ie = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> splat (float f0x358637BD)) ; 6 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.ic
  %wide.vec370 = load <32 x float>, ptr %i.if, align 4, !tbaa !64, !alias.scope !79, !noalias !78
  %strided.vec371 = shufflevector <32 x float> %wide.vec370, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ia ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ha
  %wide.vec372 = load <32 x float>, ptr %i.ih, align 4, !tbaa !64, !alias.scope !72, !noalias !78
  %strided.vec373 = shufflevector <32 x float> %wide.vec372, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ii = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec373, <8 x float> splat (float f0x358637BD))
  %i.ij = fdiv reassoc nsz arcp contract afn <8 x float> %i.ii, %i.ie
  %i.ik = call reassoc nsz arcp contract afn <8 x float> @llvm.log2.v8f32(<8 x float> %i.ij) ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.hd
  %wide.vec374 = load <32 x float>, ptr %i.il, align 4, !tbaa !64, !alias.scope !72, !noalias !78
  %strided.vec375 = shufflevector <32 x float> %wide.vec374, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.im = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec375, <8 x float> splat (float f0x358637BD))
  %i.in = fdiv reassoc nsz arcp contract afn <8 x float> %i.im, %i.ie
  %i.io = call reassoc nsz arcp contract afn <8 x float> @llvm.log2.v8f32(<8 x float> %i.in) ; 3 uses
  %i.ip = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ie, %strided.vec371
  %i.iq = uitofp <8 x i1> %i.ip to <8 x float>
  %i.ir = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.ie, %strided.vec371
  %i.is = uitofp <8 x i1> %i.ir to <8 x float>
  %i.it = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ik)
  %i.iu = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.io)
  %i.iv = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.it, <8 x float> %i.iu) ; 2 uses
  %i.iw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.iv, splat (float 2.000000e+00)
  %i.ix = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.iv
  %i.iy = select nsz <8 x i1> %i.iw, <8 x float> %i.ix, <8 x float> splat (float 1.000000e+00) ; 2 uses
  %i.iz = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, %i.is ; 4 uses
  %i.ja = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, %i.iq ; 4 uses
  %i.jb = fmul reassoc nsz arcp contract afn <8 x float> %i.ja, %i.ik
  %i.jc = or disjoint <8 x i64> %i.hz, %broadcast.splat364 ; 2 uses
  %wide.gep376 = getelementptr inbounds nuw [4 x i8], ptr %i.gq, <8 x i64> %i.jc
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jb, <8 x ptr> align 4 %wide.gep376, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !82, !noalias !84
  %i.jd = fmul reassoc nsz arcp contract afn <8 x float> %i.iz, %i.ik
  %wide.gep377 = getelementptr inbounds nuw [4 x i8], ptr %i.gr, <8 x i64> %i.jc
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jd, <8 x ptr> align 4 %wide.gep377, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !95, !noalias !96
  %i.je = fmul reassoc nsz arcp contract afn <8 x float> %i.ja, %i.io
  %i.jf = or disjoint <8 x i64> %i.hz, %broadcast.splat366 ; 2 uses
  %wide.gep378 = getelementptr inbounds nuw [4 x i8], ptr %i.gq, <8 x i64> %i.jf
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.je, <8 x ptr> align 4 %wide.gep378, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !97, !noalias !98
  %i.jg = fmul reassoc nsz arcp contract afn <8 x float> %i.iz, %i.io
  %wide.gep379 = getelementptr inbounds nuw [4 x i8], ptr %i.gr, <8 x i64> %i.jf
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jg, <8 x ptr> align 4 %wide.gep379, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !99, !noalias !100
  %i.jh = fmul reassoc nsz arcp contract afn <8 x float> %i.ja, %i.ie
  %wide.gep380 = getelementptr inbounds nuw [4 x i8], ptr %i.gq, <8 x i64> %i.ib
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jh, <8 x ptr> align 4 %wide.gep380, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !101, !noalias !102
  %i.ji = fmul reassoc nsz arcp contract afn <8 x float> %i.iz, %i.ie
  %wide.gep381 = getelementptr inbounds nuw [4 x i8], ptr %i.gr, <8 x i64> %i.ib
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ji, <8 x ptr> align 4 %wide.gep381, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !103, !noalias !104
  %i.jj = or disjoint <8 x i64> %i.hz, splat (i64 3) ; 2 uses
  %wide.gep382 = getelementptr inbounds nuw [4 x i8], ptr %i.gq, <8 x i64> %i.jj
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ja, <8 x ptr> align 4 %wide.gep382, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !105, !noalias !106
  %wide.gep383 = getelementptr inbounds nuw [4 x i8], ptr %i.gr, <8 x i64> %i.jj
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.iz, <8 x ptr> align 4 %wide.gep383, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !107, !noalias !108
  %index.next384 = add nuw i64 %index368, 8       ; 2 uses
  %vec.ind.next385 = add nuw <8 x i64> %vec.ind369, splat (i64 8)
  %i.jk = icmp eq i64 %index.next384, %n.vec360
  br i1 %i.jk, label %scalar.ph357.preheader, label %vector.body367, !llvm.loop !109

._crit_edge.i52.i:                                ; preds = %scalar.ph357, %bb.c
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.gx, ptr noundef %i.gq, ptr noundef %i.gs) #18, !noalias !78
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.gx, ptr noundef %i.gr, ptr noundef %i.gt) #18, !noalias !78
  call void @dt_gaussian_free(ptr noundef nonnull %i.gx) #18, !noalias !78
  call fastcc void @normalize_manifolds(ptr noundef %i.gp, ptr noundef %i.gt, ptr noundef %i.gs, i64 noundef %i.ao, i64 noundef %i.ar, i32 noundef %i.ag), !noalias !78
  br i1 %.not.i50.i, label %bb.g, label %bb.d

scalar.ph357:                                     ; preds = %scalar.ph357.preheader, %scalar.ph357
  %.0283308.i.i = phi i64 [ %i.li, %scalar.ph357 ], [ %.0283308.i.i.ph, %scalar.ph357.preheader ] ; 2 uses
  %i.jl = shl i64 %.0283308.i.i, 2                ; 5 uses
  %i.jm = add i64 %i.jl, %i.gy                    ; 4 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !64, !alias.scope !72, !noalias !78
  %i.jp = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jo, float f0x358637BD) ; 5 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.jm
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !64, !noalias !78 ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.jl ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ha
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !64, !alias.scope !72, !noalias !78
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.hd
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !64, !alias.scope !72, !noalias !78
  %i.jx = fcmp reassoc nsz arcp contract afn oge float %i.jp, %i.jr
  %i.jy = uitofp i1 %i.jx to float
  %i.jz = fcmp reassoc nsz arcp contract afn ole float %i.jp, %i.jr
  %i.ka = uitofp i1 %i.jz to float
  %i.kb = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.kc = insertelement <2 x float> %i.kb, float %i.jw, i64 1
  %i.kd = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.kc, <2 x float> splat (float f0x358637BD))
  %i.ke = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kg = fdiv reassoc nsz arcp contract afn <2 x float> %i.kd, %i.kf
  %i.kh = call reassoc nsz arcp contract afn <2 x float> @llvm.log2.v2f32(<2 x float> %i.kg) ; 3 uses
  %i.ki = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.kh) ; 2 uses
  %i.kj = extractelement <2 x float> %i.ki, i64 0
  %i.kk = extractelement <2 x float> %i.ki, i64 1
  %i.kl = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kj, float %i.kk) ; 2 uses
  %i.km = fcmp reassoc nsz arcp contract afn ogt float %i.kl, 2.000000e+00
  %i.kn = fdiv reassoc nsz arcp contract afn float 2.000000e+00, %i.kl
  %i.ko = select nsz i1 %i.km, float %i.kn, float 1.000000e+00 ; 2 uses
  %.0292.i.i = fmul reassoc nsz arcp contract afn float %i.ko, %i.ka ; 4 uses
  %.0291.i.i = fmul reassoc nsz arcp contract afn float %i.ko, %i.jy ; 4 uses
  %i.kp = extractelement <2 x float> %i.kh, i64 0 ; 2 uses
  %i.kq = fmul reassoc nsz arcp contract afn float %.0291.i.i, %i.kp
  %i.kr = or disjoint i64 %i.jl, %i.ha            ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.kr
  store float %i.kq, ptr %i.ks, align 4, !tbaa !64, !noalias !78
  %i.kt = fmul reassoc nsz arcp contract afn float %.0292.i.i, %i.kp
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.kr
  store float %i.kt, ptr %i.ku, align 4, !tbaa !64, !noalias !78
  %i.kv = extractelement <2 x float> %i.kh, i64 1 ; 2 uses
  %i.kw = fmul reassoc nsz arcp contract afn float %.0291.i.i, %i.kv
  %i.kx = or disjoint i64 %i.jl, %i.hd            ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.kx
  store float %i.kw, ptr %i.ky, align 4, !tbaa !64, !noalias !78
  %i.kz = fmul reassoc nsz arcp contract afn float %.0292.i.i, %i.kv
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.kx
  store float %i.kz, ptr %i.la, align 4, !tbaa !64, !noalias !78
  %i.lb = fmul reassoc nsz arcp contract afn float %.0291.i.i, %i.jp
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.jm
  store float %i.lb, ptr %i.lc, align 4, !tbaa !64, !noalias !78
  %i.ld = fmul reassoc nsz arcp contract afn float %.0292.i.i, %i.jp
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.jm
  store float %i.ld, ptr %i.le, align 4, !tbaa !64, !noalias !78
  %i.lf = or disjoint i64 %i.jl, 3                ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.lf
  store float %.0291.i.i, ptr %i.lg, align 4, !tbaa !64, !noalias !78
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.lf
  store float %.0292.i.i, ptr %i.lh, align 4, !tbaa !64, !noalias !78
  %i.li = add nuw i64 %.0283308.i.i, 1            ; 2 uses
  %exitcond.not.i51.i = icmp eq i64 %i.li, %i.as
  br i1 %exitcond.not.i51.i, label %._crit_edge.i52.i, label %scalar.ph357, !llvm.loop !110

bb.d:                                             ; preds = %._crit_edge.i52.i
  %i.lj = call ptr @dt_gaussian_init(i32 noundef %i.gv, i32 noundef %i.gw, i32 noundef 4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, float noundef %i.gn, i32 noundef 0) #18, !noalias !78 ; 5 uses
  %.not303.i.i = icmp eq ptr %i.lj, null
  br i1 %.not303.i.i, label %get_manifolds.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.lj, ptr noundef %i.au, ptr noundef %i.gp) #18, !noalias !78
  br i1 %.not324.i.i, label %._crit_edge320.i.i, label %.lr.ph319.i.i

.lr.ph319.i.i:                                    ; preds = %bb.e
  %i.lk = zext i32 %i.ag to i64                   ; 3 uses
  %i.ll = add nuw nsw i64 %i.lk, 1
  %i.lm = urem i64 %i.ll, 3                       ; 3 uses
  %i.ln = add nuw nsw i64 %i.lk, 2
  %i.lo = urem i64 %i.ln, 3                       ; 3 uses
  br label %bb.f

._crit_edge320.i.i:                               ; preds = %bb.f, %bb.e
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.lj, ptr noundef %i.gq, ptr noundef %i.gs) #18, !noalias !78
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.lj, ptr noundef %i.gr, ptr noundef %i.gt) #18, !noalias !78
  call fastcc void @normalize_manifolds(ptr noundef %i.gp, ptr noundef %i.gt, ptr noundef %i.gs, i64 noundef %i.ao, i64 noundef %i.ar, i32 noundef %i.ag), !noalias !78
  call void @dt_gaussian_free(ptr noundef nonnull %i.lj) #18, !noalias !78
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph319.i.i
  %.0289317.i.i = phi i64 [ 0, %.lr.ph319.i.i ], [ %i.pz, %bb.f ] ; 2 uses
  %i.lp = shl i64 %.0289317.i.i, 2                ; 6 uses
  %i.lq = add i64 %i.lp, %i.lk                    ; 5 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.lq
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !64, !alias.scope !72, !noalias !78 ; 2 uses
  %i.lt = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ls, float f0x358637BD)
  %i.lu = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.lt) ; 7 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.lq
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !64, !noalias !78
  %i.lx = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lw, float f0x358637BD)
  %i.ly = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.lx) ; 3 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.lq
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !64, !noalias !78
  %i.mb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ma, float f0x358637BD)
  %i.mc = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.mb) ; 3 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.lq
  %i.me = load float, ptr %i.md, align 4, !tbaa !64, !noalias !78
  %i.mf = fsub reassoc nsz arcp contract afn float %i.lu, %i.mc ; 2 uses
  %i.mg = fsub reassoc nsz arcp contract afn float %i.lu, %i.ly ; 2 uses
  %i.mh = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.mf)
  %i.mi = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.mg)
  %i.mj = fcmp reassoc nsz arcp contract afn olt float %i.mh, %i.mi ; 5 uses
  %i.mk = or disjoint i64 %i.lp, %i.lm            ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.mk
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !64, !alias.scope !72, !noalias !78
  %i.mn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mm, float f0x358637BD)
  %i.mo = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.mn) ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.mk
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !64, !noalias !78
  %i.mr = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mq, float f0x358637BD)
  %i.ms = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.mr) ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.mk
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !64, !noalias !78
  %i.mv = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mu, float f0x358637BD)
  %i.mw = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.mv) ; 2 uses
  %i.mx = fsub reassoc nsz arcp contract afn float %i.lu, %i.mo ; 2 uses
  %i.my = fsub reassoc nsz arcp contract afn float %i.mx, %i.ly
  %i.mz = fadd reassoc nsz arcp contract afn float %i.my, %i.mw
  %i.na = fsub reassoc nsz arcp contract afn float %i.ms, %i.mc
  %i.nb = fadd reassoc nsz arcp contract afn float %i.na, %i.mx
  %.sink352.i.i.a = select i1 %i.mj, float %i.nb, float %i.mz
  %.sink.i.i = select i1 %i.mj, float %i.mf, float %i.mg ; 2 uses
  %.sink351.i.i = select i1 %i.mj, float %i.mw, float %i.ms
  %i.nc = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.sink352.i.i.a)
  %i.nd = fsub reassoc nsz arcp contract afn float %.sink.i.i, %i.mo
  %i.ne = fadd reassoc nsz arcp contract afn float %i.nd, %.sink351.i.i
  %i.nf = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ne)
  %i.ng = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.nf, float 1.000000e-01)
  %i.nh = fdiv reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ng
  %i.ni = fadd reassoc nnan nsz arcp contract afn float %i.nh, 2.000000e-01
  %i.nj = or disjoint i64 %i.lp, %i.lo            ; 3 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.nj
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !64, !alias.scope !72, !noalias !78
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.nj
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !64, !noalias !78
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.nj
  %i.np = load float, ptr %i.no, align 4, !tbaa !64, !noalias !78
  %i.nq = insertelement <4 x float> poison, float %i.nc, i64 0
  %i.nr = insertelement <4 x float> %i.nq, float %i.nl, i64 1
  %i.ns = insertelement <4 x float> %i.nr, float %i.nn, i64 2
  %i.nt = insertelement <4 x float> %i.ns, float %i.np, i64 3
  %i.nu = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.nt, <4 x float> <float 1.000000e-01, float f0x358637BD, float f0x358637BD, float f0x358637BD>) ; 4 uses
  %i.nv = extractelement <4 x float> %i.nu, i64 0
  %i.nw = fdiv reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.nv
  %i.nx = fadd reassoc nnan nsz arcp contract afn float %i.nw, 2.000000e-01
  %i.ny = extractelement <4 x float> %i.nu, i64 1
  %i.nz = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ny) ; 2 uses
  %i.oa = extractelement <4 x float> %i.nu, i64 2
  %i.ob = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.oa) ; 2 uses
  %i.oc = extractelement <4 x float> %i.nu, i64 3
  %i.od = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.oc) ; 2 uses
  %i.oe = fsub reassoc nsz arcp contract afn float %i.lu, %i.nz ; 2 uses
  %i.of = fsub reassoc nsz arcp contract afn float %i.ob, %i.mc
  %i.og = fadd reassoc nsz arcp contract afn float %i.of, %i.oe
  %i.oh = fsub reassoc nsz arcp contract afn float %i.oe, %i.ly
  %i.oi = fadd reassoc nsz arcp contract afn float %i.oh, %i.od
  %.sink357.i.i = select i1 %i.mj, float %i.og, float %i.oi
  %.sink355.i.i = select i1 %i.mj, float %i.od, float %i.ob
  %i.oj = fsub reassoc nsz arcp contract afn float %.sink.i.i, %i.nz
  %i.ok = fadd reassoc nsz arcp contract afn float %i.oj, %.sink355.i.i
  %i.ol = insertelement <2 x float> poison, float %i.ok, i64 0
  %i.om = insertelement <2 x float> %i.ol, float %.sink357.i.i, i64 1
  %i.on = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.om)
  %i.oo = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.on, <2 x float> splat (float 1.000000e-01))
  %i.op = fdiv reassoc nnan nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.oo
  %i.oq = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.op, splat (float 2.000000e-01) ; 2 uses
  %i.or = extractelement <2 x float> %i.oq, i64 0
  %i.os = fmul reassoc nnan nsz arcp contract afn float %i.or, %i.ni
  %i.ot = extractelement <2 x float> %i.oq, i64 1
  %i.ou = fmul reassoc nnan nsz arcp contract afn float %i.ot, %i.nx
  %i.ov = fdiv reassoc nsz arcp contract afn float %i.os, %i.ou ; 2 uses
  %i.ow = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.me, float f0x358637BD)
  %i.ox = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ow)
  %i.oy = fcmp reassoc nsz arcp contract afn ogt float %i.lu, %i.ox ; 2 uses
  %.sink375.i.i = select i1 %i.oy, ptr %i.gq, ptr %i.gr ; 2 uses
  %scevgep.sink.v.i.i = select i1 %i.oy, ptr %i.gr, ptr %i.gq
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.lp ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.lm
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !64, !alias.scope !72, !noalias !78
  %i.pc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pb, float f0x358637BD)
  %i.pd = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.pc)
  %i.pe = fsub reassoc nsz arcp contract afn float %i.pd, %i.lu ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.lo
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !64, !alias.scope !72, !noalias !78
  %i.ph = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pg, float f0x358637BD)
  %i.pi = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ph)
  %i.pj = fsub reassoc nsz arcp contract afn float %i.pi, %i.lu ; 2 uses
  %i.pk = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.pe)
  %i.pl = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.pj)
  %i.pm = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pk, float %i.pl) ; 2 uses
  %i.pn = fcmp reassoc nsz arcp contract afn ogt float %i.pm, 2.000000e+00
  %i.po = fmul reassoc nsz arcp contract afn float %i.ov, 2.000000e+00
  %i.pp = fdiv reassoc nsz arcp contract afn float %i.po, %i.pm
  %.2.i.i = select nsz i1 %i.pn, float %i.pp, float %i.ov ; 4 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.sink375.i.i, i64 %i.lp ; 3 uses
  %i.pr = fmul reassoc nsz arcp contract afn float %.2.i.i, %i.pe
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.lm
  store float %i.pr, ptr %i.ps, align 4, !tbaa !64, !noalias !78
  %i.pt = fmul reassoc nsz arcp contract afn float %.2.i.i, %i.pj
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.lo
  store float %i.pt, ptr %i.pu, align 4, !tbaa !64, !noalias !78
  %i.pv = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ls, float 0.000000e+00)
  %i.pw = fmul reassoc nsz arcp contract afn float %.2.i.i, %i.pv
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.sink375.i.i, i64 %i.lq
  store float %i.pw, ptr %i.px, align 4, !tbaa !64, !noalias !78
  %i.py = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  store float %.2.i.i, ptr %i.py, align 4, !tbaa !64, !noalias !78
  %6 = getelementptr inbounds nuw [4 x i8], ptr %scevgep.sink.v.i.i, i64 %i.lp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false), !tbaa !64, !noalias !78
  %i.pz = add nuw i64 %.0289317.i.i, 1            ; 2 uses
  %exitcond328.not.i.i = icmp eq i64 %i.pz, %i.as
  br i1 %exitcond328.not.i.i, label %._crit_edge320.i.i, label %bb.f

bb.g:                                             ; preds = %._crit_edge320.i.i, %._crit_edge.i52.i
  call void @free(ptr noundef %i.gr) #18, !noalias !78
  call void @free(ptr noundef %i.gq) #18, !noalias !78
  br i1 %.not324.i.i, label %._crit_edge323.i.i, label %.preheader.i53.i.preheader

.preheader.i53.i.preheader:                       ; preds = %bb.g
  %min.iters.check394 = icmp ult i64 %i.as, 17
  br i1 %min.iters.check394, label %.preheader.i53.i.preheader653, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i53.i.preheader
  %i.qa = add i64 %i.as, -1
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.qa, i64 24) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 6 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.qb = getelementptr i8, ptr %i.aw, i64 %mul.result
  %i.qc = icmp ult ptr %i.qb, %i.aw
  %scevgep388 = getelementptr i8, ptr %i.aw, i64 12 ; 2 uses
  %i.qd = getelementptr i8, ptr %scevgep388, i64 %mul.result
  %i.qe = icmp ult ptr %i.qd, %scevgep388
  %scevgep389 = getelementptr i8, ptr %i.aw, i64 4 ; 2 uses
  %i.qf = getelementptr i8, ptr %scevgep389, i64 %mul.result
  %i.qg = icmp ult ptr %i.qf, %scevgep389
  %scevgep390 = getelementptr i8, ptr %i.aw, i64 16 ; 2 uses
  %i.qh = getelementptr i8, ptr %scevgep390, i64 %mul.result
  %i.qi = icmp ult ptr %i.qh, %scevgep390
  %scevgep391 = getelementptr i8, ptr %i.aw, i64 8 ; 2 uses
  %i.qj = getelementptr i8, ptr %scevgep391, i64 %mul.result
  %i.qk = icmp ult ptr %i.qj, %scevgep391
  %scevgep392 = getelementptr i8, ptr %i.aw, i64 20 ; 2 uses
  %i.ql = getelementptr i8, ptr %scevgep392, i64 %mul.result
  %i.qm = icmp ult ptr %i.ql, %scevgep392
  %op.rdx = or i1 %mul.overflow, %i.qe
  %op.rdx648 = or i1 %i.qc, %i.qg
  %op.rdx649 = or i1 %i.qi, %i.qk
  %op.rdx650 = or i1 %op.rdx, %op.rdx648
  %op.rdx651 = or i1 %op.rdx649, %i.qm
  %op.rdx652 = or i1 %op.rdx650, %op.rdx651
  br i1 %op.rdx652, label %.preheader.i53.i.preheader653, label %vector.ph395

vector.ph395:                                     ; preds = %vector.scevcheck
  %i.qn = and i64 %i.as, 3                        ; 2 uses
  %i.qo = icmp eq i64 %i.qn, 0
  %i.qp = select i1 %i.qo, i64 4, i64 %i.qn
  %n.vec396 = sub i64 %i.as, %i.qp                ; 2 uses
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph395
  %index398 = phi i64 [ 0, %vector.ph395 ], [ %index.next414, %vector.body397 ] ; 2 uses
  %vec.ind399 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph395 ], [ %vec.ind.next415, %vector.body397 ] ; 2 uses
  %i.qq = shl i64 %index398, 2                    ; 2 uses
  %i.qr = mul <4 x i64> %vec.ind399, splat (i64 24)
  %wide.gep400 = getelementptr i8, ptr %i.aw, <4 x i64> %i.qr ; 6 uses
  %wide.gep401 = getelementptr i8, <4 x ptr> %wide.gep400, i64 12
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.qq
  %wide.vec402 = load <16 x float>, ptr %i.qs, align 64, !tbaa !64, !noalias !78 ; 3 uses
  %strided.vec403 = shufflevector <16 x float> %wide.vec402, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec404 = shufflevector <16 x float> %wide.vec402, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec405 = shufflevector <16 x float> %wide.vec402, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec403, <4 x ptr> align 4 %wide.gep400, <4 x i1> splat (i1 true)), !tbaa !64, !alias.scope !75, !noalias !111
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.qq
  %wide.vec406 = load <16 x float>, ptr %i.qt, align 64, !tbaa !64, !noalias !78 ; 3 uses
  %strided.vec407 = shufflevector <16 x float> %wide.vec406, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec408 = shufflevector <16 x float> %wide.vec406, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec409 = shufflevector <16 x float> %wide.vec406, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec407, <4 x ptr> align 4 %wide.gep401, <4 x i1> splat (i1 true)), !tbaa !64, !alias.scope !75, !noalias !111
  %wide.gep410 = getelementptr i8, <4 x ptr> %wide.gep400, i64 4
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec404, <4 x ptr> align 4 %wide.gep410, <4 x i1> splat (i1 true)), !tbaa !64, !alias.scope !75, !noalias !111
  %wide.gep411 = getelementptr i8, <4 x ptr> %wide.gep400, i64 16
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec408, <4 x ptr> align 4 %wide.gep411, <4 x i1> splat (i1 true)), !tbaa !64, !alias.scope !75, !noalias !111
  %wide.gep412 = getelementptr i8, <4 x ptr> %wide.gep400, i64 8
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec405, <4 x ptr> align 4 %wide.gep412, <4 x i1> splat (i1 true)), !tbaa !64, !alias.scope !75, !noalias !111
  %wide.gep413 = getelementptr i8, <4 x ptr> %wide.gep400, i64 20
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec409, <4 x ptr> align 4 %wide.gep413, <4 x i1> splat (i1 true)), !tbaa !64, !alias.scope !75, !noalias !111
  %index.next414 = add nuw i64 %index398, 4       ; 2 uses
  %vec.ind.next415 = add nuw <4 x i64> %vec.ind399, splat (i64 4)
  %i.qu = icmp eq i64 %index.next414, %n.vec396
  br i1 %i.qu, label %.preheader.i53.i.preheader653, label %vector.body397, !llvm.loop !112

.preheader.i53.i.preheader653:                    ; preds = %vector.body397, %vector.scevcheck, %.preheader.i53.i.preheader
  %.0277322.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.i53.i.preheader ], [ %n.vec396, %vector.body397 ] ; 6 uses
  %i.qv = sub i64 %i.as, %.0277322.i.i.ph
  %.neg654 = add i64 %.0277322.i.i.ph, 1
  %xtraiter = and i64 %i.qv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i53.i.prol.loopexit, label %.preheader.i53.i.prol

.preheader.i53.i.prol:                            ; preds = %.preheader.i53.i.preheader653
  %i.qw = shl i64 %.0277322.i.i.ph, 2             ; 4 uses
  %.idx.i.i.prol = mul i64 %.0277322.i.i.ph, 24
  %i.qx = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.prol ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.qw
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.qw
  %i.ra = load float, ptr %i.qz, align 16, !tbaa !64, !noalias !78
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.qw
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %i.rd = getelementptr i8, ptr %i.qx, i64 16
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.qw
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rg = load float, ptr %i.rf, align 8, !tbaa !64, !noalias !78
  %i.rh = load <2 x float>, ptr %i.qy, align 16, !tbaa !64, !noalias !78
  %i.ri = insertelement <4 x float> poison, float %i.rg, i64 2
  %i.rj = insertelement <4 x float> %i.ri, float %i.ra, i64 3
  %i.rk = shufflevector <2 x float> %i.rh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rl = shufflevector <4 x float> %i.rk, <4 x float> %i.rj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.rl, ptr %i.qx, align 8, !tbaa !64, !alias.scope !75, !noalias !111
  %i.rm = load <2 x float>, ptr %i.rc, align 4, !tbaa !64, !noalias !78
  store <2 x float> %i.rm, ptr %i.rd, align 8, !tbaa !64, !alias.scope !75, !noalias !111
  %i.rn = add nuw i64 %.0277322.i.i.ph, 1
  br label %.preheader.i53.i.prol.loopexit

.preheader.i53.i.prol.loopexit:                   ; preds = %.preheader.i53.i.prol, %.preheader.i53.i.preheader653
  %.0277322.i.i.unr = phi i64 [ %.0277322.i.i.ph, %.preheader.i53.i.preheader653 ], [ %i.rn, %.preheader.i53.i.prol ]
  %i.ro = icmp eq i64 %i.as, %.neg654
  br i1 %i.ro, label %._crit_edge323.i.i, label %.preheader.i53.i

.preheader.i53.i:                                 ; preds = %.preheader.i53.i.prol.loopexit, %.preheader.i53.i
  %.0277322.i.i = phi i64 [ %i.sy, %.preheader.i53.i ], [ %.0277322.i.i.unr, %.preheader.i53.i.prol.loopexit ] ; 4 uses
  %i.rp = shl i64 %.0277322.i.i, 2                ; 4 uses
  %.idx.i.i = mul i64 %.0277322.i.i, 24
  %i.rq = getelementptr i8, ptr %i.aw, i64 %.idx.i.i ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.rp
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.rp
  %i.rt = load float, ptr %i.rs, align 16, !tbaa !64, !noalias !78
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.rp
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  %i.rw = getelementptr i8, ptr %i.rq, i64 16
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.rp
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.rz = load float, ptr %i.ry, align 8, !tbaa !64, !noalias !78
  %i.sa = load <2 x float>, ptr %i.rr, align 16, !tbaa !64, !noalias !78
  %i.sb = insertelement <4 x float> poison, float %i.rz, i64 2
  %i.sc = insertelement <4 x float> %i.sb, float %i.rt, i64 3
  %i.sd = shufflevector <2 x float> %i.sa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.se = shufflevector <4 x float> %i.sd, <4 x float> %i.sc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.se, ptr %i.rq, align 8, !tbaa !64, !alias.scope !75, !noalias !111
  %i.sf = load <2 x float>, ptr %i.rv, align 4, !tbaa !64, !noalias !78
  store <2 x float> %i.sf, ptr %i.rw, align 8, !tbaa !64, !alias.scope !75, !noalias !111
  %i.sg = add nuw i64 %.0277322.i.i, 1            ; 2 uses
  %i.sh = shl i64 %i.sg, 2                        ; 4 uses
  %.idx.i.i.1 = mul i64 %i.sg, 24
  %i.si = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.1 ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.sh
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.sh
  %i.sl = load float, ptr %i.sk, align 16, !tbaa !64, !noalias !78
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.sh
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  %i.so = getelementptr i8, ptr %i.si, i64 16
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.sh
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sr = load float, ptr %i.sq, align 8, !tbaa !64, !noalias !78
  %i.ss = load <2 x float>, ptr %i.sj, align 16, !tbaa !64, !noalias !78
  %i.st = insertelement <4 x float> poison, float %i.sr, i64 2
  %i.su = insertelement <4 x float> %i.st, float %i.sl, i64 3
  %i.sv = shufflevector <2 x float> %i.ss, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sw = shufflevector <4 x float> %i.sv, <4 x float> %i.su, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.sw, ptr %i.si, align 8, !tbaa !64, !alias.scope !75, !noalias !111
  %i.sx = load <2 x float>, ptr %i.sn, align 4, !tbaa !64, !noalias !78
  store <2 x float> %i.sx, ptr %i.so, align 8, !tbaa !64, !alias.scope !75, !noalias !111
  %i.sy = add nuw i64 %.0277322.i.i, 2            ; 2 uses
  %exitcond332.not.i.i.1 = icmp eq i64 %i.sy, %i.as
  br i1 %exitcond332.not.i.i.1, label %._crit_edge323.i.i, label %.preheader.i53.i, !llvm.loop !113

._crit_edge323.i.i:                               ; preds = %.preheader.i53.i.prol.loopexit, %.preheader.i53.i, %bb.g
  call void @free(ptr noundef %i.gp) #18, !noalias !78
  call void @free(ptr noundef %i.gt) #18, !noalias !78
  call void @free(ptr noundef %i.gs) #18, !noalias !78
  br label %get_manifolds.exit.i

get_manifolds.exit.i:                             ; preds = %._crit_edge323.i.i, %bb.d, %interpolate_bilinear.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18, !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !77
  call void @free(ptr noundef %i.au) #18, !noalias !58
  %i.sz = mul nsw i64 %i.u, %i.r                  ; 15 uses
  %i.ta = mul i64 %i.sz, 24
  %i.tb = call ptr @dt_alloc_aligned(i64 noundef %i.ta) #18, !noalias !58 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.tb, i64 64) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %.not.i54.i = icmp eq i32 %i.t, 0
  br i1 %.not.i54.i, label %interpolate_bilinear.exit66.thread.i, label %.preheader.lr.ph.i55.i

.preheader.lr.ph.i55.i:                           ; preds = %get_manifolds.exit.i
  %.not91.i56.i = icmp eq i32 %i.q, 0
  %i.tc = add i64 %i.ao, -1                       ; 3 uses
  %i.td = add i64 %i.ar, -1                       ; 2 uses
  br i1 %.not91.i56.i, label %interpolate_bilinear.exit66.thread.i, label %.preheader.lr.ph.split.i57.i

.preheader.lr.ph.split.i57.i:                     ; preds = %.preheader.lr.ph.i55.i
  %i.te = uitofp reassoc nsz arcp contract afn i64 %i.ao to float ; 2 uses
  %i.tf = uitofp reassoc nsz arcp contract afn i64 %i.ar to float
  %i.tg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ap
  %min.iters.check419 = icmp ult i32 %i.q, 8
  %n.vec421 = and i64 %i.r, -8                    ; 3 uses
  %broadcast.splatinsert430 = insertelement <8 x float> poison, float %i.te, i64 0
  %broadcast.splat431 = shufflevector <8 x float> %broadcast.splatinsert430, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert432 = insertelement <8 x float> poison, float %i.am, i64 0
end_hunk_0
