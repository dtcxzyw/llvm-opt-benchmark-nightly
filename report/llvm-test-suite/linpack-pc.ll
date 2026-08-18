inline.NumInlined: 42
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 50
begin_hunk_0_@dmxpy:bb.a
  %i.v = add nsw i64 %wide.trip.count, -1
  %i.w = icmp eq i64 %indvars.iv.ph, %i.v
  br i1 %i.w, label %.loopexit245, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !11
  %i.z = load float, ptr %4, align 4, !tbaa !11
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !11
  %i.ac = fmul float %i.z, %i.ab
  %i.ad = fadd float %i.y, %i.ac
  store float %i.ad, ptr %i.x, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !11
  %i.ag = load float, ptr %4, align 4, !tbaa !11
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !11
  %i.aj = fmul float %i.ag, %i.ai
  %i.ak = fadd float %i.af, %i.aj
  store float %i.ak, ptr %i.ae, align 4, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit245, label %.lr.ph, !llvm.loop !105

.loopexit245:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.al = srem i32 %2, 4                          ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.b, label %.loopexit243

bb.b:                                             ; preds = %.loopexit245
  br i1 %i.c, label %.lr.ph248, label %.loopexit242

.lr.ph248:                                        ; preds = %bb.b
  %i.an = add nsw i32 %i.al, -1                   ; 2 uses
  %i.ao = add nsw i32 %i.al, -2                   ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ap ; 5 uses
  %i.ar = mul nuw nsw i32 %i.ao, %3
  %i.as = zext nneg i32 %i.an to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.as ; 5 uses
  %i.au = mul nsw i32 %i.an, %3
  %i.av = sext i32 %i.ar to i64                   ; 2 uses
  %i.aw = sext i32 %i.au to i64                   ; 2 uses
  %wide.trip.count262 = zext nneg i32 %0 to i64   ; 8 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %i.av ; 5 uses
  %invariant.gep289 = getelementptr [4 x i8], ptr %5, i64 %i.aw ; 5 uses
  %min.iters.check378 = icmp ult i32 %0, 16
  br i1 %min.iters.check378, label %scalar.ph377.preheader, label %vector.memcheck356

vector.memcheck356:                               ; preds = %.lr.ph248
  %i.ax = shl nuw nsw i64 %wide.trip.count262, 2
  %scevgep357 = getelementptr i8, ptr %1, i64 %i.ax ; 4 uses
  %i.ay = shl nuw nsw i64 %i.as, 2
  %i.az = getelementptr i8, ptr %4, i64 %i.ay
  %scevgep358 = getelementptr i8, ptr %i.az, i64 4
  %i.ba = shl nuw nsw i64 %i.ap, 2
  %i.bb = getelementptr i8, ptr %4, i64 %i.ba
  %scevgep359 = getelementptr i8, ptr %i.bb, i64 4
  %i.bc = add nsw i64 %i.aw, %wide.trip.count262
  %i.bd = shl nsw i64 %i.bc, 2
  %scevgep360 = getelementptr i8, ptr %5, i64 %i.bd
  %i.be = add nsw i64 %i.av, %wide.trip.count262
  %i.bf = shl nsw i64 %i.be, 2
  %scevgep361 = getelementptr i8, ptr %5, i64 %i.bf
  %bound0362 = icmp ult ptr %1, %scevgep358
  %bound1363 = icmp ult ptr %i.at, %scevgep357
  %found.conflict364 = and i1 %bound0362, %bound1363
  %bound0365 = icmp ult ptr %1, %scevgep359
  %bound1366 = icmp ult ptr %i.aq, %scevgep357
  %found.conflict367 = and i1 %bound0365, %bound1366
  %conflict.rdx368 = or i1 %found.conflict364, %found.conflict367
  %bound0369 = icmp ult ptr %1, %scevgep360
  %bound1370 = icmp ult ptr %invariant.gep289, %scevgep357
  %found.conflict371 = and i1 %bound0369, %bound1370
  %conflict.rdx372 = or i1 %conflict.rdx368, %found.conflict371
  %bound0373 = icmp ult ptr %1, %scevgep361
  %bound1374 = icmp ult ptr %invariant.gep, %scevgep357
  %found.conflict375 = and i1 %bound0373, %bound1374
  %conflict.rdx376 = or i1 %conflict.rdx372, %found.conflict375
  br i1 %conflict.rdx376, label %scalar.ph377.preheader, label %vector.ph379

vector.ph379:                                     ; preds = %vector.memcheck356
  %n.vec380 = and i64 %wide.trip.count262, 2147483640 ; 3 uses
  %i.bg = load float, ptr %i.aq, align 4, !tbaa !11, !alias.scope !106
  %broadcast.splatinsert387 = insertelement <4 x float> poison, float %i.bg, i64 0
  %broadcast.splat388 = shufflevector <4 x float> %broadcast.splatinsert387, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bh = load float, ptr %i.at, align 4, !tbaa !11, !alias.scope !109
  %broadcast.splatinsert391 = insertelement <4 x float> poison, float %i.bh, i64 0
  %broadcast.splat392 = shufflevector <4 x float> %broadcast.splatinsert391, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body381

vector.body381:                                   ; preds = %vector.body381, %vector.ph379
  %index382 = phi i64 [ 0, %vector.ph379 ], [ %index.next393, %vector.body381 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index382 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %wide.load383 = load <4 x float>, ptr %i.bi, align 4, !tbaa !11, !alias.scope !111, !noalias !113
  %wide.load384 = load <4 x float>, ptr %i.bj, align 4, !tbaa !11, !alias.scope !111, !noalias !113
  %i.bk = getelementptr [4 x i8], ptr %invariant.gep, i64 %index382 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %wide.load385 = load <4 x float>, ptr %i.bk, align 4, !tbaa !11, !alias.scope !116
  %wide.load386 = load <4 x float>, ptr %i.bl, align 4, !tbaa !11, !alias.scope !116
  %i.bm = fmul <4 x float> %broadcast.splat388, %wide.load385
  %i.bn = fmul <4 x float> %broadcast.splat388, %wide.load386
  %i.bo = fadd <4 x float> %wide.load383, %i.bm
  %i.bp = fadd <4 x float> %wide.load384, %i.bn
  %i.bq = getelementptr [4 x i8], ptr %invariant.gep289, i64 %index382 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %wide.load389 = load <4 x float>, ptr %i.bq, align 4, !tbaa !11, !alias.scope !117
  %wide.load390 = load <4 x float>, ptr %i.br, align 4, !tbaa !11, !alias.scope !117
  %i.bs = fmul <4 x float> %broadcast.splat392, %wide.load389
  %i.bt = fmul <4 x float> %broadcast.splat392, %wide.load390
  %i.bu = fadd <4 x float> %i.bo, %i.bs
  %i.bv = fadd <4 x float> %i.bp, %i.bt
  store <4 x float> %i.bu, ptr %i.bi, align 4, !tbaa !11, !alias.scope !111, !noalias !113
  store <4 x float> %i.bv, ptr %i.bj, align 4, !tbaa !11, !alias.scope !111, !noalias !113
  %index.next393 = add nuw i64 %index382, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next393, %n.vec380
  br i1 %i.bw, label %middle.block394, label %vector.body381, !llvm.loop !118

middle.block394:                                  ; preds = %vector.body381
  %cmp.n395 = icmp eq i64 %n.vec380, %wide.trip.count262
  br i1 %cmp.n395, label %.loopexit243.thread286, label %scalar.ph377.preheader

scalar.ph377.preheader:                           ; preds = %vector.memcheck356, %.lr.ph248, %middle.block394
  %indvars.iv259.ph = phi i64 [ 0, %vector.memcheck356 ], [ 0, %.lr.ph248 ], [ %n.vec380, %middle.block394 ] ; 6 uses
  %xtraiter758 = and i64 %wide.trip.count262, 1
  %lcmp.mod759.not = icmp eq i64 %xtraiter758, 0
  br i1 %lcmp.mod759.not, label %scalar.ph377.prol.loopexit, label %scalar.ph377.prol

scalar.ph377.prol:                                ; preds = %scalar.ph377.preheader
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv259.ph ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !11
  %i.bz = load float, ptr %i.aq, align 4, !tbaa !11
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv259.ph
  %i.ca = load float, ptr %gep.prol, align 4, !tbaa !11
  %i.cb = fmul float %i.bz, %i.ca
  %i.cc = fadd float %i.by, %i.cb
  %i.cd = load float, ptr %i.at, align 4, !tbaa !11
  %gep290.prol = getelementptr [4 x i8], ptr %invariant.gep289, i64 %indvars.iv259.ph
  %i.ce = load float, ptr %gep290.prol, align 4, !tbaa !11
  %i.cf = fmul float %i.cd, %i.ce
  %i.cg = fadd float %i.cc, %i.cf
  store float %i.cg, ptr %i.bx, align 4, !tbaa !11
  %indvars.iv.next260.prol = or disjoint i64 %indvars.iv259.ph, 1
  br label %scalar.ph377.prol.loopexit

scalar.ph377.prol.loopexit:                       ; preds = %scalar.ph377.prol, %scalar.ph377.preheader
  %indvars.iv259.unr = phi i64 [ %indvars.iv259.ph, %scalar.ph377.preheader ], [ %indvars.iv.next260.prol, %scalar.ph377.prol ]
  %i.ch = add nsw i64 %wide.trip.count262, -1
  %i.ci = icmp eq i64 %indvars.iv259.ph, %i.ch
  br i1 %i.ci, label %.loopexit243.thread286, label %scalar.ph377

scalar.ph377:                                     ; preds = %scalar.ph377.prol.loopexit, %scalar.ph377
  %indvars.iv259 = phi i64 [ %indvars.iv.next260.1, %scalar.ph377 ], [ %indvars.iv259.unr, %scalar.ph377.prol.loopexit ] ; 5 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv259 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !11
  %i.cl = load float, ptr %i.aq, align 4, !tbaa !11
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv259
  %i.cm = load float, ptr %gep, align 4, !tbaa !11
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = fadd float %i.ck, %i.cn
  %i.cp = load float, ptr %i.at, align 4, !tbaa !11
  %gep290 = getelementptr [4 x i8], ptr %invariant.gep289, i64 %indvars.iv259
  %i.cq = load float, ptr %gep290, align 4, !tbaa !11
  %i.cr = fmul float %i.cp, %i.cq
  %i.cs = fadd float %i.co, %i.cr
  store float %i.cs, ptr %i.cj, align 4, !tbaa !11
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next260 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !11
  %i.cv = load float, ptr %i.aq, align 4, !tbaa !11
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next260
  %i.cw = load float, ptr %gep.1, align 4, !tbaa !11
  %i.cx = fmul float %i.cv, %i.cw
  %i.cy = fadd float %i.cu, %i.cx
  %i.cz = load float, ptr %i.at, align 4, !tbaa !11
  %gep290.1 = getelementptr [4 x i8], ptr %invariant.gep289, i64 %indvars.iv.next260
  %i.da = load float, ptr %gep290.1, align 4, !tbaa !11
  %i.db = fmul float %i.cz, %i.da
  %i.dc = fadd float %i.cy, %i.db
  store float %i.dc, ptr %i.ct, align 4, !tbaa !11
  %indvars.iv.next260.1 = add nuw nsw i64 %indvars.iv259, 2 ; 2 uses
  %exitcond263.not.1 = icmp eq i64 %indvars.iv.next260.1, %wide.trip.count262
  br i1 %exitcond263.not.1, label %.loopexit243.thread286, label %scalar.ph377, !llvm.loop !119

.loopexit243:                                     ; preds = %.loopexit245
  %i.dd = srem i32 %2, 8                          ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 3
  %brmerge.not = and i1 %i.de, %i.c
  br i1 %brmerge.not, label %.lr.ph250, label %.loopexit242

.loopexit243.thread286:                           ; preds = %scalar.ph377.prol.loopexit, %scalar.ph377, %middle.block394
  %i.df = srem i32 %2, 8                          ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 3
  br i1 %i.dg, label %.lr.ph250, label %.loopexit242

.lr.ph250:                                        ; preds = %.loopexit243, %.loopexit243.thread286
  %i.dh = phi i32 [ %i.dd, %.loopexit243 ], [ %i.df, %.loopexit243.thread286 ] ; 5 uses
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  %i.dj = add nsw i32 %i.dh, -4                   ; 2 uses
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dk ; 3 uses
  %i.dm = mul nsw i32 %i.dj, %3
  %i.dn = add nsw i32 %i.dh, -3                   ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.do ; 2 uses
  %i.dq = mul nsw i32 %i.dn, %3
  %i.dr = add nsw i32 %i.dh, -2                   ; 2 uses
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ds ; 2 uses
  %i.du = mul nsw i32 %i.dr, %3
  %i.dv = zext nneg i32 %i.di to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dv ; 2 uses
  %i.dx = mul i32 %i.di, %3
  %i.dy = sext i32 %i.dm to i64                   ; 2 uses
  %i.dz = sext i32 %i.dq to i64                   ; 2 uses
  %i.ea = sext i32 %i.du to i64                   ; 2 uses
  %i.eb = sext i32 %i.dx to i64                   ; 2 uses
  %wide.trip.count267 = zext i32 %0 to i64        ; 8 uses
  %invariant.gep291 = getelementptr [4 x i8], ptr %5, i64 %i.dy ; 3 uses
  %invariant.gep293 = getelementptr [4 x i8], ptr %5, i64 %i.dz ; 3 uses
  %invariant.gep295 = getelementptr [4 x i8], ptr %5, i64 %i.ea ; 3 uses
  %invariant.gep297 = getelementptr [4 x i8], ptr %5, i64 %i.eb ; 3 uses
  %min.iters.check439 = icmp ult i32 %0, 12
  br i1 %min.iters.check439, label %scalar.ph438.preheader, label %vector.memcheck397

vector.memcheck397:                               ; preds = %.lr.ph250
  %i.ec = shl nuw nsw i64 %wide.trip.count267, 2
  %i.ed = getelementptr i8, ptr %1, i64 %i.ec     ; 5 uses
  %6 = sext i32 %i.dh to i64
  %i.ee = shl nsw i64 %6, 2
  %i.ef = getelementptr i8, ptr %4, i64 %i.ee
  %i.eg = add nsw i64 %i.eb, %wide.trip.count267
  %i.eh = shl nsw i64 %i.eg, 2
  %scevgep403.a = getelementptr i8, ptr %5, i64 %i.eh
  %i.ei = add nsw i64 %i.ea, %wide.trip.count267
  %i.ej = shl nsw i64 %i.ei, 2
  %scevgep404 = getelementptr i8, ptr %5, i64 %i.ej
  %i.ek = add nsw i64 %i.dz, %wide.trip.count267
  %i.el = shl nsw i64 %i.ek, 2
  %scevgep405 = getelementptr i8, ptr %5, i64 %i.el
  %i.em = add nsw i64 %i.dy, %wide.trip.count267
  %i.en = shl nsw i64 %i.em, 2
  %scevgep406 = getelementptr i8, ptr %5, i64 %i.en
  %bound0404 = icmp ult ptr %1, %i.ef
  %bound1405 = icmp ult ptr %i.dl, %i.ed
  %found.conflict406 = and i1 %bound0404, %bound1405
  %bound0407 = icmp ult ptr %1, %scevgep403.a
  %bound1408 = icmp ult ptr %invariant.gep297, %i.ed
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %found.conflict406, %found.conflict409
  %bound0411 = icmp ult ptr %1, %scevgep404
  %bound1412 = icmp ult ptr %invariant.gep295, %i.ed
  %found.conflict413 = and i1 %bound0411, %bound1412
  %conflict.rdx414 = or i1 %conflict.rdx410, %found.conflict413
  %bound0415 = icmp ult ptr %1, %scevgep405
  %bound1416 = icmp ult ptr %invariant.gep293, %i.ed
  %found.conflict417 = and i1 %bound0415, %bound1416
  %conflict.rdx418 = or i1 %conflict.rdx414, %found.conflict417
  %bound0419 = icmp ult ptr %1, %scevgep406
  %bound1420 = icmp ult ptr %invariant.gep291, %i.ed
  %found.conflict421 = and i1 %bound0419, %bound1420
  %conflict.rdx422 = or i1 %conflict.rdx418, %found.conflict421
  br i1 %conflict.rdx422, label %scalar.ph438.preheader, label %vector.ph440

vector.ph440:                                     ; preds = %vector.memcheck397
  %n.vec441 = and i64 %wide.trip.count267, 4294967292 ; 3 uses
  %i.eo = load float, ptr %i.dl, align 4, !tbaa !11, !alias.scope !120
  %broadcast.splatinsert446 = insertelement <4 x float> poison, float %i.eo, i64 0
  %broadcast.splat447 = shufflevector <4 x float> %broadcast.splatinsert446, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = load float, ptr %i.dp, align 4, !tbaa !11, !alias.scope !120
  %broadcast.splatinsert449 = insertelement <4 x float> poison, float %i.ep, i64 0
  %broadcast.splat450 = shufflevector <4 x float> %broadcast.splatinsert449, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = load float, ptr %i.dt, align 4, !tbaa !11, !alias.scope !120
  %broadcast.splatinsert452 = insertelement <4 x float> poison, float %i.eq, i64 0
  %broadcast.splat453 = shufflevector <4 x float> %broadcast.splatinsert452, <4 x float> poison, <4 x i32> zeroinitializer
  %i.er = load float, ptr %i.dw, align 4, !tbaa !11, !alias.scope !120
  %broadcast.splatinsert455 = insertelement <4 x float> poison, float %i.er, i64 0
  %broadcast.splat456 = shufflevector <4 x float> %broadcast.splatinsert455, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body442

vector.body442:                                   ; preds = %vector.body442, %vector.ph440
  %index443 = phi i64 [ 0, %vector.ph440 ], [ %index.next457, %vector.body442 ] ; 6 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index443 ; 2 uses
  %wide.load444 = load <4 x float>, ptr %i.es, align 4, !tbaa !11, !alias.scope !123, !noalias !125
  %i.et = getelementptr [4 x i8], ptr %invariant.gep291, i64 %index443
  %wide.load445 = load <4 x float>, ptr %i.et, align 4, !tbaa !11, !alias.scope !130
  %i.eu = fmul <4 x float> %broadcast.splat447, %wide.load445
  %i.ev = fadd <4 x float> %wide.load444, %i.eu
  %i.ew = getelementptr [4 x i8], ptr %invariant.gep293, i64 %index443
  %wide.load448 = load <4 x float>, ptr %i.ew, align 4, !tbaa !11, !alias.scope !131
  %i.ex = fmul <4 x float> %broadcast.splat450, %wide.load448
  %i.ey = fadd <4 x float> %i.ev, %i.ex
  %i.ez = getelementptr [4 x i8], ptr %invariant.gep295, i64 %index443
  %wide.load451 = load <4 x float>, ptr %i.ez, align 4, !tbaa !11, !alias.scope !132
  %i.fa = fmul <4 x float> %broadcast.splat453, %wide.load451
  %i.fb = fadd <4 x float> %i.ey, %i.fa
  %i.fc = getelementptr [4 x i8], ptr %invariant.gep297, i64 %index443
  %wide.load454 = load <4 x float>, ptr %i.fc, align 4, !tbaa !11, !alias.scope !133
  %i.fd = fmul <4 x float> %broadcast.splat456, %wide.load454
  %i.fe = fadd <4 x float> %i.fb, %i.fd
  store <4 x float> %i.fe, ptr %i.es, align 4, !tbaa !11, !alias.scope !123, !noalias !125
  %index.next457 = add nuw i64 %index443, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next457, %n.vec441
  br i1 %i.ff, label %middle.block458, label %vector.body442, !llvm.loop !134

middle.block458:                                  ; preds = %vector.body442
  %cmp.n459 = icmp eq i64 %n.vec441, %wide.trip.count267
  br i1 %cmp.n459, label %.loopexit242, label %scalar.ph438.preheader

scalar.ph438.preheader:                           ; preds = %vector.memcheck397, %.lr.ph250, %middle.block458
  %indvars.iv264.ph = phi i64 [ 0, %vector.memcheck397 ], [ 0, %.lr.ph250 ], [ %n.vec441, %middle.block458 ]
  br label %scalar.ph438

scalar.ph438:                                     ; preds = %scalar.ph438.preheader, %scalar.ph438
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %scalar.ph438 ], [ %indvars.iv264.ph, %scalar.ph438.preheader ] ; 6 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv264 ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !11
  %i.fi = load float, ptr %i.dl, align 4, !tbaa !11
  %gep292 = getelementptr [4 x i8], ptr %invariant.gep291, i64 %indvars.iv264
  %i.fj = load float, ptr %gep292, align 4, !tbaa !11
  %i.fk = fmul float %i.fi, %i.fj
  %i.fl = fadd float %i.fh, %i.fk
  %i.fm = load float, ptr %i.dp, align 4, !tbaa !11
  %gep294 = getelementptr [4 x i8], ptr %invariant.gep293, i64 %indvars.iv264
  %i.fn = load float, ptr %gep294, align 4, !tbaa !11
  %i.fo = fmul float %i.fm, %i.fn
  %i.fp = fadd float %i.fl, %i.fo
  %i.fq = load float, ptr %i.dt, align 4, !tbaa !11
  %gep296 = getelementptr [4 x i8], ptr %invariant.gep295, i64 %indvars.iv264
  %i.fr = load float, ptr %gep296, align 4, !tbaa !11
  %i.fs = fmul float %i.fq, %i.fr
  %i.ft = fadd float %i.fp, %i.fs
  %i.fu = load float, ptr %i.dw, align 4, !tbaa !11
  %gep298 = getelementptr [4 x i8], ptr %invariant.gep297, i64 %indvars.iv264
  %i.fv = load float, ptr %gep298, align 4, !tbaa !11
  %i.fw = fmul float %i.fu, %i.fv
  %i.fx = fadd float %i.ft, %i.fw
  store float %i.fx, ptr %i.fg, align 4, !tbaa !11
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  br i1 %exitcond268.not, label %.loopexit242, label %scalar.ph438, !llvm.loop !135

.loopexit242:                                     ; preds = %scalar.ph438, %middle.block458, %.loopexit243, %bb.b, %.loopexit243.thread286
  %i.fy = srem i32 %2, 16                         ; 11 uses
  %i.fz = icmp sgt i32 %i.fy, 7
  br i1 %i.fz, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.loopexit242
  br i1 %i.c, label %.lr.ph252, label %._crit_edge256.split

.lr.ph252:                                        ; preds = %bb.c
  %i.ga = add nsw i32 %i.fy, -1                   ; 2 uses
  %i.gb = add nsw i32 %i.fy, -8                   ; 2 uses
  %i.gc = zext i32 %i.gb to i64                   ; 2 uses
  %i.gd = getelementptr [4 x i8], ptr %4, i64 %i.gc ; 3 uses
  %i.ge = mul i32 %i.gb, %3
  %i.gf = add nsw i32 %i.fy, -7                   ; 2 uses
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr [4 x i8], ptr %4, i64 %i.gg ; 3 uses
  %i.gi = mul i32 %i.gf, %3
  %i.gj = add nsw i32 %i.fy, -6                   ; 2 uses
  %i.gk = zext i32 %i.gj to i64                   ; 2 uses
  %i.gl = getelementptr [4 x i8], ptr %4, i64 %i.gk ; 3 uses
  %i.gm = mul i32 %i.gj, %3
  %i.gn = add nsw i32 %i.fy, -5                   ; 2 uses
  %i.go = zext i32 %i.gn to i64                   ; 2 uses
  %i.gp = getelementptr [4 x i8], ptr %4, i64 %i.go ; 3 uses
  %i.gq = mul i32 %i.gn, %3
  %i.gr = add nsw i32 %i.fy, -4                   ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr [4 x i8], ptr %4, i64 %i.gs ; 3 uses
  %i.gu = mul i32 %i.gr, %3
  %i.gv = add nsw i32 %i.fy, -3                   ; 2 uses
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr [4 x i8], ptr %4, i64 %i.gw ; 3 uses
  %i.gy = mul i32 %i.gv, %3
  %i.gz = add nsw i32 %i.fy, -2                   ; 2 uses
  %i.ha = zext i32 %i.gz to i64                   ; 2 uses
  %i.hb = getelementptr [4 x i8], ptr %4, i64 %i.ha ; 3 uses
  %i.hc = mul i32 %i.gz, %3
  %i.hd = zext i32 %i.ga to i64                   ; 2 uses
  %i.he = getelementptr [4 x i8], ptr %4, i64 %i.hd ; 3 uses
  %i.hf = mul i32 %i.ga, %3
  %i.hg = sext i32 %i.ge to i64                   ; 2 uses
  %i.hh = sext i32 %i.gi to i64                   ; 2 uses
  %i.hi = sext i32 %i.gm to i64                   ; 2 uses
  %i.hj = sext i32 %i.gq to i64                   ; 2 uses
  %i.hk = sext i32 %i.gu to i64                   ; 2 uses
  %i.hl = sext i32 %i.gy to i64                   ; 2 uses
  %i.hm = sext i32 %i.hc to i64                   ; 2 uses
  %i.hn = sext i32 %i.hf to i64                   ; 2 uses
  %wide.trip.count272 = zext nneg i32 %0 to i64   ; 12 uses
  %invariant.gep299 = getelementptr [4 x i8], ptr %5, i64 %i.hg ; 3 uses
  %invariant.gep301 = getelementptr [4 x i8], ptr %5, i64 %i.hh ; 3 uses
  %invariant.gep303 = getelementptr [4 x i8], ptr %5, i64 %i.hi ; 3 uses
  %invariant.gep305 = getelementptr [4 x i8], ptr %5, i64 %i.hj ; 3 uses
  %invariant.gep307 = getelementptr [4 x i8], ptr %5, i64 %i.hk ; 3 uses
  %invariant.gep309 = getelementptr [4 x i8], ptr %5, i64 %i.hl ; 3 uses
  %invariant.gep311 = getelementptr [4 x i8], ptr %5, i64 %i.hm ; 3 uses
  %invariant.gep313 = getelementptr [4 x i8], ptr %5, i64 %i.hn ; 3 uses
  %min.iters.check543 = icmp ult i32 %0, 20
  br i1 %min.iters.check543, label %scalar.ph542.preheader, label %vector.memcheck461

vector.memcheck461:                               ; preds = %.lr.ph252
  %i.ho = shl nuw nsw i64 %wide.trip.count272, 2
  %scevgep462.a = getelementptr i8, ptr %1, i64 %i.ho
  %i.hp = shl nuw nsw i64 %i.hd, 2
  %i.hq = getelementptr i8, ptr %4, i64 %i.hp
  %i.hr = shl nuw nsw i64 %i.ha, 2
  %i.hs = getelementptr i8, ptr %4, i64 %i.hr
  %i.ht = shl nuw nsw i64 %i.gw, 2
  %i.hu = getelementptr i8, ptr %4, i64 %i.ht
  %i.hv = shl nuw nsw i64 %i.gs, 2
  %i.hw = getelementptr i8, ptr %4, i64 %i.hv
  %i.hx = shl nuw nsw i64 %i.go, 2
  %i.hy = getelementptr i8, ptr %4, i64 %i.hx
  %i.hz = shl nuw nsw i64 %i.gk, 2
  %i.ia = getelementptr i8, ptr %4, i64 %i.hz
  %i.ib = shl nuw nsw i64 %i.gg, 2
  %i.ic = getelementptr i8, ptr %4, i64 %i.ib
  %i.id = shl nuw nsw i64 %i.gc, 2
  %i.ie = getelementptr i8, ptr %4, i64 %i.id
  %i.if = insertelement <8 x ptr> poison, ptr %i.hq, i64 0
  %i.ig = insertelement <8 x ptr> %i.if, ptr %i.hs, i64 1
  %i.ih = insertelement <8 x ptr> %i.ig, ptr %i.hu, i64 2
  %i.ii = insertelement <8 x ptr> %i.ih, ptr %i.hw, i64 3
  %i.ij = insertelement <8 x ptr> %i.ii, ptr %i.hy, i64 4
  %i.ik = insertelement <8 x ptr> %i.ij, ptr %i.ia, i64 5
  %i.il = insertelement <8 x ptr> %i.ik, ptr %i.ic, i64 6
  %i.im = insertelement <8 x ptr> %i.il, ptr %i.ie, i64 7
  %i.in = getelementptr i8, <8 x ptr> %i.im, i64 4
  %i.io = add nsw i64 %i.hn, %wide.trip.count272
  %i.ip = shl nsw i64 %i.io, 2
  %scevgep471 = getelementptr i8, ptr %5, i64 %i.ip
  %i.iq = add nsw i64 %i.hm, %wide.trip.count272
  %i.ir = shl nsw i64 %i.iq, 2
  %scevgep472 = getelementptr i8, ptr %5, i64 %i.ir
  %i.is = add nsw i64 %i.hl, %wide.trip.count272
  %i.it = shl nsw i64 %i.is, 2
  %scevgep473 = getelementptr i8, ptr %5, i64 %i.it
  %i.iu = add nsw i64 %i.hk, %wide.trip.count272
  %i.iv = shl nsw i64 %i.iu, 2
  %scevgep474 = getelementptr i8, ptr %5, i64 %i.iv
  %i.iw = add nsw i64 %i.hj, %wide.trip.count272
  %i.ix = shl nsw i64 %i.iw, 2
  %scevgep475 = getelementptr i8, ptr %5, i64 %i.ix
  %i.iy = add nsw i64 %i.hi, %wide.trip.count272
  %i.iz = shl nsw i64 %i.iy, 2
  %scevgep476 = getelementptr i8, ptr %5, i64 %i.iz
  %i.ja = add nsw i64 %i.hh, %wide.trip.count272
  %i.jb = shl nsw i64 %i.ja, 2
  %scevgep477 = getelementptr i8, ptr %5, i64 %i.jb
  %i.jc = add nsw i64 %i.hg, %wide.trip.count272
  %i.jd = shl nsw i64 %i.jc, 2
  %scevgep478 = getelementptr i8, ptr %5, i64 %i.jd
  %i.je = insertelement <16 x ptr> poison, ptr %1, i64 0
  %i.jf = shufflevector <16 x ptr> %i.je, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.jg = shufflevector <8 x ptr> %i.in, <8 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jh = insertelement <16 x ptr> %i.jg, ptr %scevgep471, i64 8
  %i.ji = insertelement <16 x ptr> %i.jh, ptr %scevgep472, i64 9
  %i.jj = insertelement <16 x ptr> %i.ji, ptr %scevgep473, i64 10
  %i.jk = insertelement <16 x ptr> %i.jj, ptr %scevgep474, i64 11
  %i.jl = insertelement <16 x ptr> %i.jk, ptr %scevgep475, i64 12
  %i.jm = insertelement <16 x ptr> %i.jl, ptr %scevgep476, i64 13
  %i.jn = insertelement <16 x ptr> %i.jm, ptr %scevgep477, i64 14
  %i.jo = insertelement <16 x ptr> %i.jn, ptr %scevgep478, i64 15
  %i.jp = icmp ult <16 x ptr> %i.jf, %i.jo
  %i.jq = insertelement <16 x ptr> poison, ptr %i.he, i64 0
  %i.jr = insertelement <16 x ptr> %i.jq, ptr %i.hb, i64 1
  %i.js = insertelement <16 x ptr> %i.jr, ptr %i.gx, i64 2
  %i.jt = insertelement <16 x ptr> %i.js, ptr %i.gt, i64 3
  %i.ju = insertelement <16 x ptr> %i.jt, ptr %i.gp, i64 4
  %i.jv = insertelement <16 x ptr> %i.ju, ptr %i.gl, i64 5
  %i.jw = insertelement <16 x ptr> %i.jv, ptr %i.gh, i64 6
  %i.jx = insertelement <16 x ptr> %i.jw, ptr %i.gd, i64 7
  %i.jy = insertelement <16 x ptr> %i.jx, ptr %invariant.gep313, i64 8
  %i.jz = insertelement <16 x ptr> %i.jy, ptr %invariant.gep311, i64 9
  %i.ka = insertelement <16 x ptr> %i.jz, ptr %invariant.gep309, i64 10
  %i.kb = insertelement <16 x ptr> %i.ka, ptr %invariant.gep307, i64 11
  %i.kc = insertelement <16 x ptr> %i.kb, ptr %invariant.gep305, i64 12
  %i.kd = insertelement <16 x ptr> %i.kc, ptr %invariant.gep303, i64 13
  %i.ke = insertelement <16 x ptr> %i.kd, ptr %invariant.gep301, i64 14
  %i.kf = insertelement <16 x ptr> %i.ke, ptr %invariant.gep299, i64 15
  %i.kg = insertelement <16 x ptr> poison, ptr %scevgep462.a, i64 0
  %i.kh = shufflevector <16 x ptr> %i.kg, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.ki = icmp ult <16 x ptr> %i.kf, %i.kh
  %i.kj = and <16 x i1> %i.jp, %i.ki
  %i.kk = bitcast <16 x i1> %i.kj to i16
  %.not756 = icmp eq i16 %i.kk, 0
  br i1 %.not756, label %vector.ph544, label %scalar.ph542.preheader

vector.ph544:                                     ; preds = %vector.memcheck461
  %n.vec545 = and i64 %wide.trip.count272, 2147483644 ; 3 uses
  %i.kl = load float, ptr %i.gd, align 4, !tbaa !11, !alias.scope !136
  %broadcast.splatinsert550.a = insertelement <4 x float> poison, float %i.kl, i64 0
  %broadcast.splat551.a = shufflevector <4 x float> %broadcast.splatinsert550.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.km = load float, ptr %i.gh, align 4, !tbaa !11, !alias.scope !139
  %broadcast.splatinsert553.a = insertelement <4 x float> poison, float %i.km, i64 0
  %broadcast.splat554.a = shufflevector <4 x float> %broadcast.splatinsert553.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kn = load float, ptr %i.gl, align 4, !tbaa !11, !alias.scope !141
  %broadcast.splatinsert556.a = insertelement <4 x float> poison, float %i.kn, i64 0
  %broadcast.splat557.a = shufflevector <4 x float> %broadcast.splatinsert556.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ko = load float, ptr %i.gp, align 4, !tbaa !11, !alias.scope !143
  %broadcast.splatinsert559 = insertelement <4 x float> poison, float %i.ko, i64 0
  %broadcast.splat560 = shufflevector <4 x float> %broadcast.splatinsert559, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kp = load float, ptr %i.gt, align 4, !tbaa !11, !alias.scope !145
  %broadcast.splatinsert562 = insertelement <4 x float> poison, float %i.kp, i64 0
  %broadcast.splat563 = shufflevector <4 x float> %broadcast.splatinsert562, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kq = load float, ptr %i.gx, align 4, !tbaa !11, !alias.scope !147
  %broadcast.splatinsert565 = insertelement <4 x float> poison, float %i.kq, i64 0
  %broadcast.splat566 = shufflevector <4 x float> %broadcast.splatinsert565, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kr = load float, ptr %i.hb, align 4, !tbaa !11, !alias.scope !149
  %broadcast.splatinsert568 = insertelement <4 x float> poison, float %i.kr, i64 0
  %broadcast.splat569 = shufflevector <4 x float> %broadcast.splatinsert568, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ks = load float, ptr %i.he, align 4, !tbaa !11, !alias.scope !151
  %broadcast.splatinsert571 = insertelement <4 x float> poison, float %i.ks, i64 0
  %broadcast.splat572 = shufflevector <4 x float> %broadcast.splatinsert571, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph544
  %index547 = phi i64 [ 0, %vector.ph544 ], [ %index.next573, %vector.body546 ] ; 10 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index547 ; 2 uses
  %wide.load548 = load <4 x float>, ptr %i.kt, align 4, !tbaa !11, !alias.scope !153, !noalias !155
  %i.ku = getelementptr [4 x i8], ptr %invariant.gep299, i64 %index547
  %wide.load549.a = load <4 x float>, ptr %i.ku, align 4, !tbaa !11, !alias.scope !164
  %i.kv = fmul <4 x float> %broadcast.splat551.a, %wide.load549.a
  %i.kw = fadd <4 x float> %wide.load548, %i.kv
  %i.kx = getelementptr [4 x i8], ptr %invariant.gep301, i64 %index547
  %wide.load552.a = load <4 x float>, ptr %i.kx, align 4, !tbaa !11, !alias.scope !165
  %i.ky = fmul <4 x float> %broadcast.splat554.a, %wide.load552.a
  %i.kz = fadd <4 x float> %i.kw, %i.ky
  %i.la = getelementptr [4 x i8], ptr %invariant.gep303, i64 %index547
  %wide.load555.a = load <4 x float>, ptr %i.la, align 4, !tbaa !11, !alias.scope !166
  %i.lb = fmul <4 x float> %broadcast.splat557.a, %wide.load555.a
  %i.lc = fadd <4 x float> %i.kz, %i.lb
  %i.ld = getelementptr [4 x i8], ptr %invariant.gep305, i64 %index547
  %wide.load558 = load <4 x float>, ptr %i.ld, align 4, !tbaa !11, !alias.scope !167
  %i.le = fmul <4 x float> %broadcast.splat560, %wide.load558
  %i.lf = fadd <4 x float> %i.lc, %i.le
  %i.lg = getelementptr [4 x i8], ptr %invariant.gep307, i64 %index547
  %wide.load561 = load <4 x float>, ptr %i.lg, align 4, !tbaa !11, !alias.scope !168
  %i.lh = fmul <4 x float> %broadcast.splat563, %wide.load561
  %i.li = fadd <4 x float> %i.lf, %i.lh
  %i.lj = getelementptr [4 x i8], ptr %invariant.gep309, i64 %index547
  %wide.load564 = load <4 x float>, ptr %i.lj, align 4, !tbaa !11, !alias.scope !169
  %i.lk = fmul <4 x float> %broadcast.splat566, %wide.load564
  %i.ll = fadd <4 x float> %i.li, %i.lk
  %i.lm = getelementptr [4 x i8], ptr %invariant.gep311, i64 %index547
  %wide.load567 = load <4 x float>, ptr %i.lm, align 4, !tbaa !11, !alias.scope !170
  %i.ln = fmul <4 x float> %broadcast.splat569, %wide.load567
  %i.lo = fadd <4 x float> %i.ll, %i.ln
  %i.lp = getelementptr [4 x i8], ptr %invariant.gep313, i64 %index547
  %wide.load570 = load <4 x float>, ptr %i.lp, align 4, !tbaa !11, !alias.scope !171
  %i.lq = fmul <4 x float> %broadcast.splat572, %wide.load570
  %i.lr = fadd <4 x float> %i.lo, %i.lq
  store <4 x float> %i.lr, ptr %i.kt, align 4, !tbaa !11, !alias.scope !153, !noalias !155
  %index.next573 = add nuw i64 %index547, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next573, %n.vec545
  br i1 %i.ls, label %middle.block574, label %vector.body546, !llvm.loop !172

middle.block574:                                  ; preds = %vector.body546
  %cmp.n575 = icmp eq i64 %n.vec545, %wide.trip.count272
  br i1 %cmp.n575, label %.loopexit, label %scalar.ph542.preheader

scalar.ph542.preheader:                           ; preds = %vector.memcheck461, %.lr.ph252, %middle.block574
  %indvars.iv269.ph = phi i64 [ 0, %vector.memcheck461 ], [ 0, %.lr.ph252 ], [ %n.vec545, %middle.block574 ]
  br label %scalar.ph542

scalar.ph542:                                     ; preds = %scalar.ph542.preheader, %scalar.ph542
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %scalar.ph542 ], [ %indvars.iv269.ph, %scalar.ph542.preheader ] ; 10 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv269 ; 2 uses
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !11
  %i.lv = load float, ptr %i.gd, align 4, !tbaa !11
  %gep300 = getelementptr [4 x i8], ptr %invariant.gep299, i64 %indvars.iv269
  %i.lw = load float, ptr %gep300, align 4, !tbaa !11
  %i.lx = fmul float %i.lv, %i.lw
  %i.ly = fadd float %i.lu, %i.lx
  %i.lz = load float, ptr %i.gh, align 4, !tbaa !11
  %gep302 = getelementptr [4 x i8], ptr %invariant.gep301, i64 %indvars.iv269
  %i.ma = load float, ptr %gep302, align 4, !tbaa !11
  %i.mb = fmul float %i.lz, %i.ma
  %i.mc = fadd float %i.ly, %i.mb
  %i.md = load float, ptr %i.gl, align 4, !tbaa !11
  %gep304 = getelementptr [4 x i8], ptr %invariant.gep303, i64 %indvars.iv269
  %i.me = load float, ptr %gep304, align 4, !tbaa !11
  %i.mf = fmul float %i.md, %i.me
  %i.mg = fadd float %i.mc, %i.mf
  %i.mh = load float, ptr %i.gp, align 4, !tbaa !11
  %gep306 = getelementptr [4 x i8], ptr %invariant.gep305, i64 %indvars.iv269
  %i.mi = load float, ptr %gep306, align 4, !tbaa !11
  %i.mj = fmul float %i.mh, %i.mi
  %i.mk = fadd float %i.mg, %i.mj
  %i.ml = load float, ptr %i.gt, align 4, !tbaa !11
  %gep308 = getelementptr [4 x i8], ptr %invariant.gep307, i64 %indvars.iv269
  %i.mm = load float, ptr %gep308, align 4, !tbaa !11
  %i.mn = fmul float %i.ml, %i.mm
  %i.mo = fadd float %i.mk, %i.mn
  %i.mp = load float, ptr %i.gx, align 4, !tbaa !11
  %gep310 = getelementptr [4 x i8], ptr %invariant.gep309, i64 %indvars.iv269
  %i.mq = load float, ptr %gep310, align 4, !tbaa !11
  %i.mr = fmul float %i.mp, %i.mq
  %i.ms = fadd float %i.mo, %i.mr
  %i.mt = load float, ptr %i.hb, align 4, !tbaa !11
  %gep312 = getelementptr [4 x i8], ptr %invariant.gep311, i64 %indvars.iv269
  %i.mu = load float, ptr %gep312, align 4, !tbaa !11
  %i.mv = fmul float %i.mt, %i.mu
  %i.mw = fadd float %i.ms, %i.mv
  %i.mx = load float, ptr %i.he, align 4, !tbaa !11
  %gep314 = getelementptr [4 x i8], ptr %invariant.gep313, i64 %indvars.iv269
  %i.my = load float, ptr %gep314, align 4, !tbaa !11
  %i.mz = fmul float %i.mx, %i.my
  %i.na = fadd float %i.mw, %i.mz
  store float %i.na, ptr %i.lt, align 4, !tbaa !11
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count272
  br i1 %exitcond273.not, label %.loopexit, label %scalar.ph542, !llvm.loop !173

.loopexit:                                        ; preds = %scalar.ph542, %middle.block574, %.loopexit242
  %i.nb = add nsw i32 %i.fy, 15
  %i.nc = icmp slt i32 %i.nb, %2
  %or.cond257 = and i1 %i.nc, %i.c
  br i1 %or.cond257, label %.preheader.preheader, label %._crit_edge256.split

.preheader.preheader:                             ; preds = %.loopexit
  %narrow = add nsw i32 %i.fy, 15
  %i.nd = zext i32 %narrow to i64                 ; 20 uses
  %i.ne = sext i32 %3 to i64                      ; 48 uses
  %i.nf = zext i32 %2 to i64                      ; 2 uses
  %wide.trip.count277 = zext nneg i32 %0 to i64   ; 4 uses
  %i.ng = shl nuw nsw i64 %wide.trip.count277, 2  ; 17 uses
  %scevgep578.a = getelementptr i8, ptr %1, i64 %i.ng ; 2 uses
  %i.nh = shl nuw nsw i64 %i.nd, 2                ; 17 uses
  %i.ni = getelementptr i8, ptr %4, i64 %i.nh
  %scevgep579.a = getelementptr i8, ptr %i.ni, i64 -60
  %i.nj = add nuw nsw i64 %i.nd, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %i.nj, i64 %i.nf)
  %i.nk = xor i64 %i.nd, -1
  %i.nl = add nsw i64 %umax, %i.nk
  %i.nm = shl nsw i64 %i.nl, 2
  %i.nn = and i64 %i.nm, -64                      ; 16 uses
  %i.no = add nsw i64 %i.nn, %i.nh                ; 2 uses
  %i.np = getelementptr i8, ptr %4, i64 %i.no
  %scevgep580.a = getelementptr i8, ptr %i.np, i64 4
  %i.nq = mul nsw i64 %i.ne, %i.nd
  %i.nr = shl i64 %i.nq, 2
  %scevgep581.a = getelementptr i8, ptr %5, i64 %i.nr
  %i.ns = mul i64 %i.no, %i.ne
  %i.nt = getelementptr i8, ptr %5, i64 %i.ns
  %scevgep582.a = getelementptr i8, ptr %i.nt, i64 %i.ng
  %i.nu = add nuw nsw i64 %i.nd, 4611686018427387903
  %i.nv = mul i64 %i.nu, %i.ne
  %i.nw = shl i64 %i.nv, 2
  %scevgep583.a = getelementptr i8, ptr %5, i64 %i.nw
  %i.nx = add nsw i64 %i.nn, %i.nh
  %i.ny = add i64 %i.nx, -4
  %i.nz = mul i64 %i.ny, %i.ne
  %i.oa = getelementptr i8, ptr %5, i64 %i.nz
  %scevgep584.a = getelementptr i8, ptr %i.oa, i64 %i.ng
  %i.ob = add nuw nsw i64 %i.nd, 4611686018427387902
  %i.oc = mul i64 %i.ob, %i.ne
  %i.od = shl i64 %i.oc, 2
  %scevgep585.a = getelementptr i8, ptr %5, i64 %i.od
  %i.oe = add nsw i64 %i.nn, %i.nh
  %i.of = add i64 %i.oe, -8
  %i.og = mul i64 %i.of, %i.ne
  %i.oh = getelementptr i8, ptr %5, i64 %i.og
  %scevgep586.a = getelementptr i8, ptr %i.oh, i64 %i.ng
  %i.oi = add nuw nsw i64 %i.nd, 4611686018427387901
  %i.oj = mul i64 %i.oi, %i.ne
  %i.ok = shl i64 %i.oj, 2
  %scevgep587.a = getelementptr i8, ptr %5, i64 %i.ok
  %i.ol = add nsw i64 %i.nn, %i.nh
  %i.om = add i64 %i.ol, -12
  %i.on = mul i64 %i.om, %i.ne
  %i.oo = getelementptr i8, ptr %5, i64 %i.on
  %scevgep588.a = getelementptr i8, ptr %i.oo, i64 %i.ng
  %i.op = add nuw nsw i64 %i.nd, 4611686018427387900
  %i.oq = mul i64 %i.op, %i.ne
  %i.or = shl i64 %i.oq, 2
  %scevgep589.a = getelementptr i8, ptr %5, i64 %i.or
  %i.os = add nsw i64 %i.nn, %i.nh
  %i.ot = add i64 %i.os, -16
  %i.ou = mul i64 %i.ot, %i.ne
  %i.ov = getelementptr i8, ptr %5, i64 %i.ou
  %scevgep590.a = getelementptr i8, ptr %i.ov, i64 %i.ng
  %i.ow = add nuw nsw i64 %i.nd, 4611686018427387899
  %i.ox = mul i64 %i.ow, %i.ne
  %i.oy = shl i64 %i.ox, 2
  %scevgep591.a = getelementptr i8, ptr %5, i64 %i.oy
  %i.oz = add nsw i64 %i.nn, %i.nh
  %i.pa = add i64 %i.oz, -20
  %i.pb = mul i64 %i.pa, %i.ne
  %i.pc = getelementptr i8, ptr %5, i64 %i.pb
  %scevgep592.a = getelementptr i8, ptr %i.pc, i64 %i.ng
  %i.pd = add nuw nsw i64 %i.nd, 4611686018427387898
  %i.pe = mul i64 %i.pd, %i.ne
  %i.pf = shl i64 %i.pe, 2
  %scevgep593.a = getelementptr i8, ptr %5, i64 %i.pf
  %i.pg = add nsw i64 %i.nn, %i.nh
  %i.ph = add i64 %i.pg, -24
  %i.pi = mul i64 %i.ph, %i.ne
  %i.pj = getelementptr i8, ptr %5, i64 %i.pi
  %scevgep594.a = getelementptr i8, ptr %i.pj, i64 %i.ng
  %i.pk = add nuw nsw i64 %i.nd, 4611686018427387897
  %i.pl = mul i64 %i.pk, %i.ne
  %i.pm = shl i64 %i.pl, 2
  %scevgep595.a = getelementptr i8, ptr %5, i64 %i.pm
  %i.pn = add nsw i64 %i.nn, %i.nh
  %i.po = add i64 %i.pn, -28
  %i.pp = mul i64 %i.po, %i.ne
  %i.pq = getelementptr i8, ptr %5, i64 %i.pp
  %scevgep596.a = getelementptr i8, ptr %i.pq, i64 %i.ng
  %i.pr = add nuw nsw i64 %i.nd, 4611686018427387896
  %i.ps = mul i64 %i.pr, %i.ne
  %i.pt = shl i64 %i.ps, 2
  %scevgep597.a = getelementptr i8, ptr %5, i64 %i.pt
  %i.pu = add nsw i64 %i.nn, %i.nh
  %i.pv = add i64 %i.pu, -32
  %i.pw = mul i64 %i.pv, %i.ne
  %i.px = getelementptr i8, ptr %5, i64 %i.pw
  %scevgep598 = getelementptr i8, ptr %i.px, i64 %i.ng
  %i.py = add nuw nsw i64 %i.nd, 4611686018427387895
  %i.pz = mul i64 %i.py, %i.ne
  %i.qa = shl i64 %i.pz, 2
  %scevgep599 = getelementptr i8, ptr %5, i64 %i.qa
  %i.qb = add nsw i64 %i.nn, %i.nh
  %i.qc = add i64 %i.qb, -36
  %i.qd = mul i64 %i.qc, %i.ne
  %i.qe = getelementptr i8, ptr %5, i64 %i.qd
  %scevgep600 = getelementptr i8, ptr %i.qe, i64 %i.ng
  %i.qf = add nuw nsw i64 %i.nd, 4611686018427387894
  %i.qg = mul i64 %i.qf, %i.ne
  %i.qh = shl i64 %i.qg, 2
  %scevgep601 = getelementptr i8, ptr %5, i64 %i.qh
  %i.qi = add nsw i64 %i.nn, %i.nh
  %i.qj = add i64 %i.qi, -40
  %i.qk = mul i64 %i.qj, %i.ne
  %i.ql = getelementptr i8, ptr %5, i64 %i.qk
  %scevgep602 = getelementptr i8, ptr %i.ql, i64 %i.ng
  %i.qm = add nuw nsw i64 %i.nd, 4611686018427387893
  %i.qn = mul i64 %i.qm, %i.ne
  %i.qo = shl i64 %i.qn, 2
  %scevgep603 = getelementptr i8, ptr %5, i64 %i.qo
  %i.qp = add nsw i64 %i.nn, %i.nh
  %i.qq = add i64 %i.qp, -44
  %i.qr = mul i64 %i.qq, %i.ne
  %i.qs = getelementptr i8, ptr %5, i64 %i.qr
  %scevgep604 = getelementptr i8, ptr %i.qs, i64 %i.ng
  %i.qt = add nuw nsw i64 %i.nd, 4611686018427387892
  %i.qu = mul i64 %i.qt, %i.ne
  %i.qv = shl i64 %i.qu, 2
  %scevgep605 = getelementptr i8, ptr %5, i64 %i.qv
  %i.qw = add nsw i64 %i.nn, %i.nh
  %i.qx = add i64 %i.qw, -48
  %i.qy = mul i64 %i.qx, %i.ne
  %i.qz = getelementptr i8, ptr %5, i64 %i.qy
  %scevgep606 = getelementptr i8, ptr %i.qz, i64 %i.ng
  %i.ra = add nuw nsw i64 %i.nd, 4611686018427387891
  %i.rb = mul i64 %i.ra, %i.ne
  %i.rc = shl i64 %i.rb, 2
  %scevgep607 = getelementptr i8, ptr %5, i64 %i.rc
  %i.rd = add nsw i64 %i.nn, %i.nh
  %i.re = add i64 %i.rd, -52
  %i.rf = mul i64 %i.re, %i.ne
  %i.rg = getelementptr i8, ptr %5, i64 %i.rf
  %scevgep608 = getelementptr i8, ptr %i.rg, i64 %i.ng
  %i.rh = add nuw nsw i64 %i.nd, 4611686018427387890
  %i.ri = mul i64 %i.rh, %i.ne
  %i.rj = shl i64 %i.ri, 2
  %scevgep609 = getelementptr i8, ptr %5, i64 %i.rj
  %i.rk = add nsw i64 %i.nn, %i.nh
  %i.rl = add i64 %i.rk, -56
  %i.rm = mul i64 %i.rl, %i.ne
  %i.rn = getelementptr i8, ptr %5, i64 %i.rm
  %scevgep610 = getelementptr i8, ptr %i.rn, i64 %i.ng
  %i.ro = add nuw nsw i64 %i.nd, 4611686018427387889
  %i.rp = mul i64 %i.ro, %i.ne
  %i.rq = shl i64 %i.rp, 2
  %scevgep611 = getelementptr i8, ptr %5, i64 %i.rq
  %i.rr = add nsw i64 %i.nn, %i.nh
  %i.rs = add i64 %i.rr, -60
  %i.rt = mul i64 %i.rs, %i.ne
  %i.ru = getelementptr i8, ptr %5, i64 %i.rt
  %scevgep612 = getelementptr i8, ptr %i.ru, i64 %i.ng
  %i.rv = insertelement <16 x ptr> poison, ptr %1, i64 0
  %i.rw = shufflevector <16 x ptr> %i.rv, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.rx = insertelement <16 x ptr> poison, ptr %scevgep582.a, i64 0
  %i.ry = insertelement <16 x ptr> %i.rx, ptr %scevgep580.a, i64 1
  %i.rz = insertelement <16 x ptr> %i.ry, ptr %scevgep584.a, i64 2
  %i.sa = insertelement <16 x ptr> %i.rz, ptr %scevgep586.a, i64 3
  %i.sb = insertelement <16 x ptr> %i.sa, ptr %scevgep588.a, i64 4
  %i.sc = insertelement <16 x ptr> %i.sb, ptr %scevgep590.a, i64 5
  %i.sd = insertelement <16 x ptr> %i.sc, ptr %scevgep592.a, i64 6
  %i.se = insertelement <16 x ptr> %i.sd, ptr %scevgep594.a, i64 7
  %i.sf = insertelement <16 x ptr> %i.se, ptr %scevgep596.a, i64 8
  %i.sg = insertelement <16 x ptr> %i.sf, ptr %scevgep598, i64 9
  %i.sh = insertelement <16 x ptr> %i.sg, ptr %scevgep600, i64 10
  %i.si = insertelement <16 x ptr> %i.sh, ptr %scevgep602, i64 11
  %i.sj = insertelement <16 x ptr> %i.si, ptr %scevgep604, i64 12
  %i.sk = insertelement <16 x ptr> %i.sj, ptr %scevgep606, i64 13
  %i.sl = insertelement <16 x ptr> %i.sk, ptr %scevgep608, i64 14
  %i.sm = insertelement <16 x ptr> %i.sl, ptr %scevgep610, i64 15
  %i.sn = insertelement <16 x ptr> poison, ptr %scevgep581.a, i64 0
  %i.so = insertelement <16 x ptr> %i.sn, ptr %scevgep579.a, i64 1
  %i.sp = insertelement <16 x ptr> %i.so, ptr %scevgep583.a, i64 2
  %i.sq = insertelement <16 x ptr> %i.sp, ptr %scevgep585.a, i64 3
  %i.sr = insertelement <16 x ptr> %i.sq, ptr %scevgep587.a, i64 4
  %i.ss = insertelement <16 x ptr> %i.sr, ptr %scevgep589.a, i64 5
  %i.st = insertelement <16 x ptr> %i.ss, ptr %scevgep591.a, i64 6
  %i.su = insertelement <16 x ptr> %i.st, ptr %scevgep593.a, i64 7
  %i.sv = insertelement <16 x ptr> %i.su, ptr %scevgep595.a, i64 8
  %i.sw = insertelement <16 x ptr> %i.sv, ptr %scevgep597.a, i64 9
  %i.sx = insertelement <16 x ptr> %i.sw, ptr %scevgep599, i64 10
  %i.sy = insertelement <16 x ptr> %i.sx, ptr %scevgep601, i64 11
  %i.sz = insertelement <16 x ptr> %i.sy, ptr %scevgep603, i64 12
  %i.ta = insertelement <16 x ptr> %i.sz, ptr %scevgep605, i64 13
  %i.tb = insertelement <16 x ptr> %i.ta, ptr %scevgep607, i64 14
  %i.tc = insertelement <16 x ptr> %i.tb, ptr %scevgep609, i64 15
  %i.td = insertelement <16 x ptr> poison, ptr %scevgep578.a, i64 0
  %i.te = shufflevector <16 x ptr> %i.td, <16 x ptr> poison, <16 x i32> zeroinitializer
  %min.iters.check696 = icmp ult i32 %0, 8
  %i.tf = icmp ult <16 x ptr> %i.rw, %i.sm
  %i.tg = icmp ult <16 x ptr> %i.tc, %i.te
  %stride.check = icmp slt i32 %3, 0
  %i.th = and <16 x i1> %i.tf, %i.tg
  %bound0690 = icmp ult ptr %1, %scevgep612
  %bound1691 = icmp ult ptr %scevgep611, %scevgep578.a
  %found.conflict692 = and i1 %bound0690, %bound1691
  %i.ti = bitcast <16 x i1> %i.th to i16
  %i.tj = icmp ne i16 %i.ti, 0
  %op.rdx = or i1 %i.tj, %found.conflict692
  %op.rdx755 = or i1 %op.rdx, %stride.check
  %n.vec698 = and i64 %wide.trip.count277, 2147483644 ; 3 uses
  %cmp.n752 = icmp eq i64 %n.vec698, %wide.trip.count277
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv279 = phi i64 [ %i.nd, %.preheader.preheader ], [ %indvars.iv.next280, %._crit_edge ] ; 18 uses
  %i.tk = add nsw i64 %indvars.iv279, -15         ; 2 uses
  %i.tl = getelementptr inbounds [4 x i8], ptr %4, i64 %i.tk ; 2 uses
  %i.tm = mul nsw i64 %i.tk, %i.ne
  %i.tn = add nsw i64 %indvars.iv279, -14         ; 2 uses
  %i.to = getelementptr inbounds [4 x i8], ptr %4, i64 %i.tn
  %i.tp = mul nsw i64 %i.tn, %i.ne
  %i.tq = add nsw i64 %indvars.iv279, -13         ; 2 uses
  %i.tr = getelementptr inbounds [4 x i8], ptr %4, i64 %i.tq
  %i.ts = mul nsw i64 %i.tq, %i.ne
  %i.tt = add nsw i64 %indvars.iv279, -12         ; 2 uses
  %i.tu = getelementptr inbounds [4 x i8], ptr %4, i64 %i.tt
  %i.tv = mul nsw i64 %i.tt, %i.ne
  %i.tw = add nsw i64 %indvars.iv279, -11         ; 2 uses
  %i.tx = getelementptr inbounds [4 x i8], ptr %4, i64 %i.tw
  %i.ty = mul nsw i64 %i.tw, %i.ne
  %i.tz = add nsw i64 %indvars.iv279, -10         ; 2 uses
  %i.ua = getelementptr inbounds [4 x i8], ptr %4, i64 %i.tz
  %i.ub = mul nsw i64 %i.tz, %i.ne
  %i.uc = add nsw i64 %indvars.iv279, -9          ; 2 uses
  %i.ud = getelementptr inbounds [4 x i8], ptr %4, i64 %i.uc
  %i.ue = mul nsw i64 %i.uc, %i.ne
  %i.uf = add nsw i64 %indvars.iv279, -8          ; 2 uses
  %i.ug = getelementptr inbounds [4 x i8], ptr %4, i64 %i.uf
  %i.uh = mul nsw i64 %i.uf, %i.ne
  %i.ui = add nsw i64 %indvars.iv279, -7          ; 2 uses
  %i.uj = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ui
  %i.uk = mul nsw i64 %i.ui, %i.ne
  %i.ul = add nsw i64 %indvars.iv279, -6          ; 2 uses
  %i.um = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ul
  %i.un = mul nsw i64 %i.ul, %i.ne
  %i.uo = add nsw i64 %indvars.iv279, -5          ; 2 uses
  %i.up = getelementptr inbounds [4 x i8], ptr %4, i64 %i.uo
  %i.uq = mul nsw i64 %i.uo, %i.ne
  %i.ur = add nsw i64 %indvars.iv279, -4          ; 2 uses
  %i.us = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ur
  %i.ut = mul nsw i64 %i.ur, %i.ne
  %i.uu = add nsw i64 %indvars.iv279, -3          ; 2 uses
  %i.uv = getelementptr inbounds [4 x i8], ptr %4, i64 %i.uu
  %i.uw = mul nsw i64 %i.uu, %i.ne
  %i.ux = add nsw i64 %indvars.iv279, -2          ; 2 uses
  %i.uy = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ux
  %i.uz = mul nsw i64 %i.ux, %i.ne
  %i.va = add nsw i64 %indvars.iv279, -1          ; 2 uses
  %i.vb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.va
  %i.vc = mul nsw i64 %i.va, %i.ne
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv279
  %i.ve = mul nsw i64 %indvars.iv279, %i.ne
  %invariant.gep315 = getelementptr [4 x i8], ptr %5, i64 %i.tm ; 2 uses
  %invariant.gep317 = getelementptr [4 x i8], ptr %5, i64 %i.tp ; 2 uses
  %invariant.gep319 = getelementptr [4 x i8], ptr %5, i64 %i.ts ; 2 uses
  %invariant.gep321 = getelementptr [4 x i8], ptr %5, i64 %i.tv ; 2 uses
  %invariant.gep323 = getelementptr [4 x i8], ptr %5, i64 %i.ty ; 2 uses
  %invariant.gep325 = getelementptr [4 x i8], ptr %5, i64 %i.ub ; 2 uses
  %invariant.gep327 = getelementptr [4 x i8], ptr %5, i64 %i.ue ; 2 uses
  %invariant.gep329 = getelementptr [4 x i8], ptr %5, i64 %i.uh ; 2 uses
  %invariant.gep331 = getelementptr [4 x i8], ptr %5, i64 %i.uk ; 2 uses
  %invariant.gep333 = getelementptr [4 x i8], ptr %5, i64 %i.un ; 2 uses
  %invariant.gep335 = getelementptr [4 x i8], ptr %5, i64 %i.uq ; 2 uses
  %invariant.gep337 = getelementptr [4 x i8], ptr %5, i64 %i.ut ; 2 uses
  %invariant.gep339 = getelementptr [4 x i8], ptr %5, i64 %i.uw ; 2 uses
  %invariant.gep341 = getelementptr [4 x i8], ptr %5, i64 %i.uz ; 2 uses
  %invariant.gep343 = getelementptr [4 x i8], ptr %5, i64 %i.vc ; 2 uses
  %invariant.gep345 = getelementptr [4 x i8], ptr %5, i64 %i.ve ; 2 uses
  %brmerge = select i1 %min.iters.check696, i1 true, i1 %op.rdx755
  br i1 %brmerge, label %scalar.ph695.preheader, label %vector.ph697

vector.ph697:                                     ; preds = %.preheader
  %i.vf = load float, ptr %i.tl, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert703.a = insertelement <4 x float> poison, float %i.vf, i64 0
  %broadcast.splat704.a = shufflevector <4 x float> %broadcast.splatinsert703.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vg = load float, ptr %i.to, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert706.a = insertelement <4 x float> poison, float %i.vg, i64 0
  %broadcast.splat707.a = shufflevector <4 x float> %broadcast.splatinsert706.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vh = load float, ptr %i.tr, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert709.a = insertelement <4 x float> poison, float %i.vh, i64 0
  %broadcast.splat710.a = shufflevector <4 x float> %broadcast.splatinsert709.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vi = load float, ptr %i.tu, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert712.a = insertelement <4 x float> poison, float %i.vi, i64 0
  %broadcast.splat713.a = shufflevector <4 x float> %broadcast.splatinsert712.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vj = load float, ptr %i.tx, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert715.a = insertelement <4 x float> poison, float %i.vj, i64 0
  %broadcast.splat716.a = shufflevector <4 x float> %broadcast.splatinsert715.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vk = load float, ptr %i.ua, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert718.a = insertelement <4 x float> poison, float %i.vk, i64 0
  %broadcast.splat719.a = shufflevector <4 x float> %broadcast.splatinsert718.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vl = load float, ptr %i.ud, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert721.a = insertelement <4 x float> poison, float %i.vl, i64 0
  %broadcast.splat722.a = shufflevector <4 x float> %broadcast.splatinsert721.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vm = load float, ptr %i.ug, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert724.a = insertelement <4 x float> poison, float %i.vm, i64 0
  %broadcast.splat725.a = shufflevector <4 x float> %broadcast.splatinsert724.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vn = load float, ptr %i.uj, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert727.a = insertelement <4 x float> poison, float %i.vn, i64 0
  %broadcast.splat728.a = shufflevector <4 x float> %broadcast.splatinsert727.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vo = load float, ptr %i.um, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert730.a = insertelement <4 x float> poison, float %i.vo, i64 0
  %broadcast.splat731.a = shufflevector <4 x float> %broadcast.splatinsert730.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vp = load float, ptr %i.up, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert733.a = insertelement <4 x float> poison, float %i.vp, i64 0
  %broadcast.splat734.a = shufflevector <4 x float> %broadcast.splatinsert733.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vq = load float, ptr %i.us, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert736 = insertelement <4 x float> poison, float %i.vq, i64 0
  %broadcast.splat737 = shufflevector <4 x float> %broadcast.splatinsert736, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vr = load float, ptr %i.uv, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert739 = insertelement <4 x float> poison, float %i.vr, i64 0
  %broadcast.splat740 = shufflevector <4 x float> %broadcast.splatinsert739, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vs = load float, ptr %i.uy, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert742 = insertelement <4 x float> poison, float %i.vs, i64 0
  %broadcast.splat743 = shufflevector <4 x float> %broadcast.splatinsert742, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vt = load float, ptr %i.vb, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert745 = insertelement <4 x float> poison, float %i.vt, i64 0
  %broadcast.splat746 = shufflevector <4 x float> %broadcast.splatinsert745, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vu = load float, ptr %i.vd, align 4, !tbaa !11, !alias.scope !174
  %broadcast.splatinsert748 = insertelement <4 x float> poison, float %i.vu, i64 0
  %broadcast.splat749 = shufflevector <4 x float> %broadcast.splatinsert748, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body699

vector.body699:                                   ; preds = %vector.body699, %vector.ph697
  %index700 = phi i64 [ 0, %vector.ph697 ], [ %index.next750, %vector.body699 ] ; 18 uses
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index700 ; 2 uses
  %wide.load701 = load <4 x float>, ptr %i.vv, align 4, !tbaa !11, !alias.scope !177, !noalias !179
  %i.vw = getelementptr [4 x i8], ptr %invariant.gep315, i64 %index700
  %wide.load702.a = load <4 x float>, ptr %i.vw, align 4, !tbaa !11, !alias.scope !196
  %i.vx = fmul <4 x float> %broadcast.splat704.a, %wide.load702.a
  %i.vy = fadd <4 x float> %wide.load701, %i.vx
  %i.vz = getelementptr [4 x i8], ptr %invariant.gep317, i64 %index700
  %wide.load705.a = load <4 x float>, ptr %i.vz, align 4, !tbaa !11, !alias.scope !197
  %i.wa = fmul <4 x float> %broadcast.splat707.a, %wide.load705.a
  %i.wb = fadd <4 x float> %i.vy, %i.wa
  %i.wc = getelementptr [4 x i8], ptr %invariant.gep319, i64 %index700
  %wide.load708.a = load <4 x float>, ptr %i.wc, align 4, !tbaa !11, !alias.scope !198
  %i.wd = fmul <4 x float> %broadcast.splat710.a, %wide.load708.a
  %i.we = fadd <4 x float> %i.wb, %i.wd
  %i.wf = getelementptr [4 x i8], ptr %invariant.gep321, i64 %index700
  %wide.load711.a = load <4 x float>, ptr %i.wf, align 4, !tbaa !11, !alias.scope !199
  %i.wg = fmul <4 x float> %broadcast.splat713.a, %wide.load711.a
  %i.wh = fadd <4 x float> %i.we, %i.wg
  %i.wi = getelementptr [4 x i8], ptr %invariant.gep323, i64 %index700
  %wide.load714.a = load <4 x float>, ptr %i.wi, align 4, !tbaa !11, !alias.scope !200
  %i.wj = fmul <4 x float> %broadcast.splat716.a, %wide.load714.a
  %i.wk = fadd <4 x float> %i.wh, %i.wj
  %i.wl = getelementptr [4 x i8], ptr %invariant.gep325, i64 %index700
  %wide.load717.a = load <4 x float>, ptr %i.wl, align 4, !tbaa !11, !alias.scope !201
  %i.wm = fmul <4 x float> %broadcast.splat719.a, %wide.load717.a
  %i.wn = fadd <4 x float> %i.wk, %i.wm
  %i.wo = getelementptr [4 x i8], ptr %invariant.gep327, i64 %index700
  %wide.load720.a = load <4 x float>, ptr %i.wo, align 4, !tbaa !11, !alias.scope !202
  %i.wp = fmul <4 x float> %broadcast.splat722.a, %wide.load720.a
  %i.wq = fadd <4 x float> %i.wn, %i.wp
  %i.wr = getelementptr [4 x i8], ptr %invariant.gep329, i64 %index700
  %wide.load723.a = load <4 x float>, ptr %i.wr, align 4, !tbaa !11, !alias.scope !203
  %i.ws = fmul <4 x float> %broadcast.splat725.a, %wide.load723.a
  %i.wt = fadd <4 x float> %i.wq, %i.ws
  %i.wu = getelementptr [4 x i8], ptr %invariant.gep331, i64 %index700
  %wide.load726.a = load <4 x float>, ptr %i.wu, align 4, !tbaa !11, !alias.scope !204
  %i.wv = fmul <4 x float> %broadcast.splat728.a, %wide.load726.a
  %i.ww = fadd <4 x float> %i.wt, %i.wv
  %i.wx = getelementptr [4 x i8], ptr %invariant.gep333, i64 %index700
  %wide.load729.a = load <4 x float>, ptr %i.wx, align 4, !tbaa !11, !alias.scope !205
  %i.wy = fmul <4 x float> %broadcast.splat731.a, %wide.load729.a
  %i.wz = fadd <4 x float> %i.ww, %i.wy
  %i.xa = getelementptr [4 x i8], ptr %invariant.gep335, i64 %index700
  %wide.load732.a = load <4 x float>, ptr %i.xa, align 4, !tbaa !11, !alias.scope !206
  %i.xb = fmul <4 x float> %broadcast.splat734.a, %wide.load732.a
  %i.xc = fadd <4 x float> %i.wz, %i.xb
  %i.xd = getelementptr [4 x i8], ptr %invariant.gep337, i64 %index700
  %wide.load735 = load <4 x float>, ptr %i.xd, align 4, !tbaa !11, !alias.scope !207
  %i.xe = fmul <4 x float> %broadcast.splat737, %wide.load735
  %i.xf = fadd <4 x float> %i.xc, %i.xe
  %i.xg = getelementptr [4 x i8], ptr %invariant.gep339, i64 %index700
  %wide.load738 = load <4 x float>, ptr %i.xg, align 4, !tbaa !11, !alias.scope !208
  %i.xh = fmul <4 x float> %broadcast.splat740, %wide.load738
  %i.xi = fadd <4 x float> %i.xf, %i.xh
  %i.xj = getelementptr [4 x i8], ptr %invariant.gep341, i64 %index700
  %wide.load741 = load <4 x float>, ptr %i.xj, align 4, !tbaa !11, !alias.scope !209
  %i.xk = fmul <4 x float> %broadcast.splat743, %wide.load741
  %i.xl = fadd <4 x float> %i.xi, %i.xk
  %i.xm = getelementptr [4 x i8], ptr %invariant.gep343, i64 %index700
  %wide.load744 = load <4 x float>, ptr %i.xm, align 4, !tbaa !11, !alias.scope !210
  %i.xn = fmul <4 x float> %broadcast.splat746, %wide.load744
  %i.xo = fadd <4 x float> %i.xl, %i.xn
  %i.xp = getelementptr [4 x i8], ptr %invariant.gep345, i64 %index700
  %wide.load747 = load <4 x float>, ptr %i.xp, align 4, !tbaa !11, !alias.scope !211
  %i.xq = fmul <4 x float> %broadcast.splat749, %wide.load747
  %i.xr = fadd <4 x float> %i.xo, %i.xq
  store <4 x float> %i.xr, ptr %i.vv, align 4, !tbaa !11, !alias.scope !177, !noalias !179
  %index.next750 = add nuw i64 %index700, 4       ; 2 uses
  %i.xs = icmp eq i64 %index.next750, %n.vec698
  br i1 %i.xs, label %middle.block751, label %vector.body699, !llvm.loop !212

middle.block751:                                  ; preds = %vector.body699
  br i1 %cmp.n752, label %._crit_edge, label %scalar.ph695.preheader

scalar.ph695.preheader:                           ; preds = %.preheader, %middle.block751
  %indvars.iv274.ph = phi i64 [ %n.vec698, %middle.block751 ], [ 0, %.preheader ]
  br label %scalar.ph695

scalar.ph695:                                     ; preds = %scalar.ph695.preheader, %scalar.ph695
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %scalar.ph695 ], [ %indvars.iv274.ph, %scalar.ph695.preheader ] ; 18 uses
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv274 ; 2 uses
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !11
  %gep316 = getelementptr [4 x i8], ptr %invariant.gep315, i64 %indvars.iv274
  %i.xv = load float, ptr %gep316, align 4, !tbaa !11
  %gep318 = getelementptr [4 x i8], ptr %invariant.gep317, i64 %indvars.iv274
  %i.xw = load float, ptr %gep318, align 4, !tbaa !11
  %gep320 = getelementptr [4 x i8], ptr %invariant.gep319, i64 %indvars.iv274
  %i.xx = load float, ptr %gep320, align 4, !tbaa !11
  %gep322 = getelementptr [4 x i8], ptr %invariant.gep321, i64 %indvars.iv274
  %i.xy = load float, ptr %gep322, align 4, !tbaa !11
  %gep324 = getelementptr [4 x i8], ptr %invariant.gep323, i64 %indvars.iv274
  %i.xz = load float, ptr %gep324, align 4, !tbaa !11
  %gep326 = getelementptr [4 x i8], ptr %invariant.gep325, i64 %indvars.iv274
  %i.ya = load float, ptr %gep326, align 4, !tbaa !11
  %gep328 = getelementptr [4 x i8], ptr %invariant.gep327, i64 %indvars.iv274
  %i.yb = load float, ptr %gep328, align 4, !tbaa !11
  %gep330 = getelementptr [4 x i8], ptr %invariant.gep329, i64 %indvars.iv274
  %i.yc = load float, ptr %gep330, align 4, !tbaa !11
  %gep332 = getelementptr [4 x i8], ptr %invariant.gep331, i64 %indvars.iv274
  %i.yd = load float, ptr %gep332, align 4, !tbaa !11
  %gep334 = getelementptr [4 x i8], ptr %invariant.gep333, i64 %indvars.iv274
  %i.ye = load float, ptr %gep334, align 4, !tbaa !11
  %gep336 = getelementptr [4 x i8], ptr %invariant.gep335, i64 %indvars.iv274
  %i.yf = load float, ptr %gep336, align 4, !tbaa !11
  %gep338 = getelementptr [4 x i8], ptr %invariant.gep337, i64 %indvars.iv274
  %i.yg = load float, ptr %gep338, align 4, !tbaa !11
  %gep340 = getelementptr [4 x i8], ptr %invariant.gep339, i64 %indvars.iv274
  %i.yh = load float, ptr %gep340, align 4, !tbaa !11
  %gep342 = getelementptr [4 x i8], ptr %invariant.gep341, i64 %indvars.iv274
  %i.yi = load float, ptr %gep342, align 4, !tbaa !11
  %gep344 = getelementptr [4 x i8], ptr %invariant.gep343, i64 %indvars.iv274
  %i.yj = load float, ptr %gep344, align 4, !tbaa !11
  %gep346 = getelementptr [4 x i8], ptr %invariant.gep345, i64 %indvars.iv274
  %i.yk = load float, ptr %gep346, align 4, !tbaa !11
  %i.yl = load <16 x float>, ptr %i.tl, align 4, !tbaa !11
  %i.ym = insertelement <16 x float> poison, float %i.xv, i64 0
  %i.yn = insertelement <16 x float> %i.ym, float %i.xw, i64 1
  %i.yo = insertelement <16 x float> %i.yn, float %i.xx, i64 2
  %i.yp = insertelement <16 x float> %i.yo, float %i.xy, i64 3
  %i.yq = insertelement <16 x float> %i.yp, float %i.xz, i64 4
  %i.yr = insertelement <16 x float> %i.yq, float %i.ya, i64 5
  %i.ys = insertelement <16 x float> %i.yr, float %i.yb, i64 6
  %i.yt = insertelement <16 x float> %i.ys, float %i.yc, i64 7
  %i.yu = insertelement <16 x float> %i.yt, float %i.yd, i64 8
  %i.yv = insertelement <16 x float> %i.yu, float %i.ye, i64 9
  %i.yw = insertelement <16 x float> %i.yv, float %i.yf, i64 10
  %i.yx = insertelement <16 x float> %i.yw, float %i.yg, i64 11
  %i.yy = insertelement <16 x float> %i.yx, float %i.yh, i64 12
  %i.yz = insertelement <16 x float> %i.yy, float %i.yi, i64 13
  %i.za = insertelement <16 x float> %i.yz, float %i.yj, i64 14
  %i.zb = insertelement <16 x float> %i.za, float %i.yk, i64 15
  %i.zc = fmul <16 x float> %i.yl, %i.zb          ; 16 uses
  %i.zd = extractelement <16 x float> %i.zc, i64 0
  %i.ze = fadd float %i.xu, %i.zd
  %i.zf = extractelement <16 x float> %i.zc, i64 1
  %i.zg = fadd float %i.ze, %i.zf
  %i.zh = extractelement <16 x float> %i.zc, i64 2
  %i.zi = fadd float %i.zg, %i.zh
  %i.zj = extractelement <16 x float> %i.zc, i64 3
  %i.zk = fadd float %i.zi, %i.zj
  %i.zl = extractelement <16 x float> %i.zc, i64 4
  %i.zm = fadd float %i.zk, %i.zl
  %i.zn = extractelement <16 x float> %i.zc, i64 5
  %i.zo = fadd float %i.zm, %i.zn
  %i.zp = extractelement <16 x float> %i.zc, i64 6
  %i.zq = fadd float %i.zo, %i.zp
  %i.zr = extractelement <16 x float> %i.zc, i64 7
  %i.zs = fadd float %i.zq, %i.zr
  %i.zt = extractelement <16 x float> %i.zc, i64 8
  %i.zu = fadd float %i.zs, %i.zt
  %i.zv = extractelement <16 x float> %i.zc, i64 9
  %i.zw = fadd float %i.zu, %i.zv
  %i.zx = extractelement <16 x float> %i.zc, i64 10
  %i.zy = fadd float %i.zw, %i.zx
  %i.zz = extractelement <16 x float> %i.zc, i64 11
  %i.aaa = fadd float %i.zy, %i.zz
  %i.aab = extractelement <16 x float> %i.zc, i64 12
  %i.aac = fadd float %i.aaa, %i.aab
  %i.aad = extractelement <16 x float> %i.zc, i64 13
  %i.aae = fadd float %i.aac, %i.aad
  %i.aaf = extractelement <16 x float> %i.zc, i64 14
  %i.aag = fadd float %i.aae, %i.aaf
  %i.aah = extractelement <16 x float> %i.zc, i64 15
  %i.aai = fadd float %i.aag, %i.aah
  store float %i.aai, ptr %i.xt, align 4, !tbaa !11
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count277
  br i1 %exitcond278.not, label %._crit_edge, label %scalar.ph695, !llvm.loop !213

._crit_edge:                                      ; preds = %scalar.ph695, %middle.block751
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 16 ; 2 uses
  %i.aaj = icmp samesign ult i64 %indvars.iv.next280, %i.nf
  br i1 %i.aaj, label %.preheader, label %._crit_edge256.split, !llvm.loop !214

._crit_edge256.split:                             ; preds = %._crit_edge, %bb.c, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @epslon(float noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %0)
  %i.b = fmul float %i.a, f0x34000000
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @print_time(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %.lr.ph48.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = add i32 %2, 1
  %i.d = load float, ptr %1, align 4, !tbaa !11
  %i.e = tail call float @llvm.fabs.f32(float %i.d) ; 2 uses
  %i.f = sext i32 %i.c to i64                     ; 2 uses
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = add nsw i32 %0, -1                       ; 3 uses
  %xtraiter = and i32 %i.h, 1
  %i.i = icmp eq i32 %0, 2
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.h, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 2 uses
  %.044 = phi i32 [ undef, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ]
  %.02942 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ] ; 3 uses
  %.03141 = phi float [ %i.e, %.lr.ph.preheader.new ], [ %.132.1, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.j = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !11
  %i.l = tail call float @llvm.fabs.f32(float %i.k) ; 2 uses
  %i.m = fcmp ogt float %i.l, %.03141             ; 2 uses
  %.132 = select i1 %i.m, float %i.l, float %.03141 ; 2 uses
  %.1 = select i1 %i.m, i32 %.02942, i32 %.044
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.g ; 2 uses
  %i.n = add nuw nsw i32 %.02942, 1
  %i.o = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.p = load float, ptr %i.o, align 4, !tbaa !11
  %i.q = tail call float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.r = fcmp ogt float %i.q, %.132               ; 2 uses
  %.132.1 = select i1 %i.r, float %i.q, float %.132 ; 2 uses
  %.1.1 = select i1 %i.r, i32 %i.n, i32 %.1       ; 3 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.g ; 2 uses
  %i.s = add nuw nsw i32 %.02942, 2               ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit60.unr-lcssa, label %.lr.ph, !llvm.loop !215

.lr.ph48.preheader:                               ; preds = %bb.c
  %i.t = load float, ptr %1, align 4, !tbaa !11
  %i.u = tail call float @llvm.fabs.f32(float %i.t) ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  %i.v = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter63 = and i64 %i.v, 1
  %i.w = icmp eq i32 %0, 2
  br i1 %i.w, label %.lr.ph48.epil.preheader, label %.lr.ph48.preheader.new

.lr.ph48.preheader.new:                           ; preds = %.lr.ph48.preheader
  %unroll_iter67 = and i64 %i.v, -2
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48, %.lr.ph48.preheader.new
  %indvars.iv52 = phi i64 [ 1, %.lr.ph48.preheader.new ], [ %indvars.iv.next53.1, %.lr.ph48 ] ; 4 uses
  %.247 = phi i32 [ 0, %.lr.ph48.preheader.new ], [ %.3.1, %.lr.ph48 ]
  %.23345 = phi float [ %i.u, %.lr.ph48.preheader.new ], [ %.334.1, %.lr.ph48 ] ; 2 uses
  %niter68 = phi i64 [ 0, %.lr.ph48.preheader.new ], [ %niter68.next.1, %.lr.ph48 ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv52
  %i.y = load float, ptr %i.x, align 4, !tbaa !11
  %i.z = tail call float @llvm.fabs.f32(float %i.y) ; 2 uses
  %i.aa = fcmp ogt float %i.z, %.23345            ; 2 uses
  %.334 = select i1 %i.aa, float %i.z, float %.23345 ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv52 to i32
  %.3 = select i1 %i.aa, i32 %i.ab, i32 %.247
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next53
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !11
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad) ; 2 uses
  %i.af = fcmp ogt float %i.ae, %.334             ; 2 uses
  %.334.1 = select i1 %i.af, float %i.ae, float %.334 ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.next53 to i32
  %.3.1 = select i1 %i.af, i32 %i.ag, i32 %.3     ; 3 uses
  %indvars.iv.next53.1 = add nuw nsw i64 %indvars.iv52, 2 ; 2 uses
  %niter68.next.1 = add nuw i64 %niter68, 2       ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph48, !llvm.loop !27

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph48
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %.loopexit, label %.lr.ph48.epil.preheader

.lr.ph48.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph48.preheader
  %indvars.iv52.epil.init = phi i64 [ 1, %.lr.ph48.preheader ], [ %indvars.iv.next53.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.247.epil.init = phi i32 [ 0, %.lr.ph48.preheader ], [ %.3.1, %.loopexit.loopexit.unr-lcssa ]
  %.23345.epil.init = phi float [ %i.u, %.lr.ph48.preheader ], [ %.334.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod66 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv52.epil.init
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !11
  %i.aj = tail call float @llvm.fabs.f32(float %i.ai)
  %i.ak = fcmp ogt float %i.aj, %.23345.epil.init
  %i.al = trunc nuw nsw i64 %indvars.iv52.epil.init to i32
  %.3.epil = select i1 %i.ak, i32 %i.al, i32 %.247.epil.init
  br label %.loopexit

.loopexit.loopexit60.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit60.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit60.unr-lcssa ]
  %.044.epil.init = phi i32 [ undef, %.lr.ph.preheader ], [ %.1.1, %.loopexit.loopexit60.unr-lcssa ]
  %.02942.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.s, %.loopexit.loopexit60.unr-lcssa ]
  %.03141.epil.init = phi float [ %i.e, %.lr.ph.preheader ], [ %.132.1, %.loopexit.loopexit60.unr-lcssa ]
  %lcmp.mod62 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.am = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.an = load float, ptr %i.am, align 4, !tbaa !11
  %i.ao = tail call float @llvm.fabs.f32(float %i.an)
  %i.ap = fcmp ogt float %i.ao, %.03141.epil.init
  %.1.epil = select i1 %i.ap, i32 %.02942.epil.init, i32 %.044.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit60.unr-lcssa, %.lr.ph48.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.035 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ %.3.epil, %.lr.ph48.epil.preheader ], [ %.3.1, %.loopexit.loopexit.unr-lcssa ], [ %.1.1, %.loopexit.loopexit60.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ]
  ret i32 %.035
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dscal(i32 noundef %0, float noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %.lr.ph25.preheader, label %bb.c

.lr.ph25.preheader:                               ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check37 = icmp ult i32 %0, 8
  br i1 %min.iters.check37, label %.lr.ph25.preheader50, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph25.preheader
  %n.vec39 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert40 = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat41 = shufflevector <4 x float> %broadcast.splatinsert40, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph38
  %index43 = phi i64 [ 0, %vector.ph38 ], [ %index.next46, %vector.body42 ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index43 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load44 = load <4 x float>, ptr %i.b, align 4, !tbaa !11
  %wide.load45 = load <4 x float>, ptr %i.c, align 4, !tbaa !11
  %i.d = fmul <4 x float> %broadcast.splat41, %wide.load44
  %i.e = fmul <4 x float> %broadcast.splat41, %wide.load45
  store <4 x float> %i.d, ptr %i.b, align 4, !tbaa !11
  store <4 x float> %i.e, ptr %i.c, align 4, !tbaa !11
  %index.next46 = add nuw i64 %index43, 8         ; 2 uses
  %i.f = icmp eq i64 %index.next46, %n.vec39
  br i1 %i.f, label %middle.block47, label %vector.body42, !llvm.loop !216

middle.block47:                                   ; preds = %vector.body42
  %cmp.n48 = icmp eq i64 %n.vec39, %wide.trip.count
  br i1 %cmp.n48, label %.loopexit, label %.lr.ph25.preheader50

.lr.ph25.preheader50:                             ; preds = %.lr.ph25.preheader, %middle.block47
  %indvars.iv28.ph = phi i64 [ 0, %.lr.ph25.preheader ], [ %n.vec39, %middle.block47 ]
  br label %.lr.ph25

bb.c:                                             ; preds = %bb.b
  %i.g = mul nsw i32 %3, %0                       ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = sext i32 %3 to i64
  %i.j = zext nneg i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !11
  %i.m = fmul float %1, %i.l
  store float %i.m, ptr %i.k, align 4, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.i ; 2 uses
  %i.n = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.n, label %.lr.ph, label %.loopexit, !llvm.loop !217

.lr.ph25:                                         ; preds = %.lr.ph25.preheader50, %.lr.ph25
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %.lr.ph25 ], [ %indvars.iv28.ph, %.lr.ph25.preheader50 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv28 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !11
  %i.q = fmul float %1, %i.p
  store float %i.q, ptr %i.o, align 4, !tbaa !11
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph25, !llvm.loop !218

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph25, %middle.block47, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @daxpy(i32 noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  %i.b = fcmp oeq float %1, 0.000000e+00
  %or.cond41 = or i1 %i.a, %i.b
  br i1 %or.cond41, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %3, 1
  %i.d = icmp ne i32 %5, 1
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.lr.ph47.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %0 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader94, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.e = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.e
  %scevgep62 = getelementptr i8, ptr %2, i64 %i.e
  %bound0 = icmp ult ptr %4, %scevgep62
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader94, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.f, align 4, !tbaa !11, !alias.scope !219, !noalias !222
  %wide.load63 = load <4 x float>, ptr %i.g, align 4, !tbaa !11, !alias.scope !219, !noalias !222
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load64 = load <4 x float>, ptr %i.h, align 4, !tbaa !11, !alias.scope !222
  %wide.load65 = load <4 x float>, ptr %i.i, align 4, !tbaa !11, !alias.scope !222
  %i.j = fmul <4 x float> %broadcast.splat, %wide.load64
  %i.k = fmul <4 x float> %broadcast.splat, %wide.load65
  %i.l = fadd <4 x float> %wide.load, %i.j
  %i.m = fadd <4 x float> %wide.load63, %i.k
  store <4 x float> %i.l, ptr %i.f, align 4, !tbaa !11, !alias.scope !219, !noalias !222
  store <4 x float> %i.m, ptr %i.g, align 4, !tbaa !11, !alias.scope !219, !noalias !222
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader94

.lr.ph.preheader94:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader94
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.ph ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !11
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  %i.r = load float, ptr %i.q, align 4, !tbaa !11
  %i.s = fmul float %1, %i.r
  %i.t = fadd float %i.p, %i.s
  store float %i.t, ptr %i.o, align 4, !tbaa !11
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader94
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader94 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.u = add nsw i64 %wide.trip.count, -1
  %i.v = icmp eq i64 %indvars.iv.ph, %i.u
  br i1 %i.v, label %.loopexit, label %.lr.ph

.lr.ph47.preheader:                               ; preds = %bb.b
  %i.w = icmp slt i32 %5, 0
  %i.x = sub nsw i32 1, %0                        ; 2 uses
  %i.y = mul nsw i32 %5, %i.x
  %.0 = select i1 %i.w, i32 %i.y, i32 0
  %i.z = icmp slt i32 %3, 0
  %i.aa = mul nsw i32 %3, %i.x
  %.034 = select i1 %i.z, i32 %i.aa, i32 0
  %i.ab = sext i32 %.0 to i64                     ; 6 uses
  %i.ac = sext i32 %5 to i64                      ; 3 uses
  %i.ad = sext i32 %.034 to i64                   ; 6 uses
  %i.ae = sext i32 %3 to i64                      ; 3 uses
  %i.af = zext nneg i32 %0 to i64                 ; 2 uses
  %min.iters.check76 = icmp ult i32 %0, 16
  br i1 %min.iters.check76, label %.lr.ph47.preheader93, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph47.preheader
  %ident.check = icmp ne i32 %5, 1
  %ident.check66 = icmp ne i32 %3, 1
  %i.ag = or i1 %ident.check, %ident.check66
  br i1 %i.ag, label %.lr.ph47.preheader93, label %vector.memcheck67

vector.memcheck67:                                ; preds = %vector.scevcheck
  %i.ah = shl nsw i64 %i.ab, 2                    ; 2 uses
  %scevgep68 = getelementptr i8, ptr %4, i64 %i.ah
  %i.ai = add nsw i32 %0, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.al = getelementptr i8, ptr %4, i64 %i.ah
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  %scevgep69 = getelementptr i8, ptr %i.am, i64 4
  %i.an = shl nsw i64 %i.ad, 2                    ; 2 uses
  %scevgep70 = getelementptr i8, ptr %2, i64 %i.an
  %i.ao = getelementptr i8, ptr %2, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.ak
  %scevgep71 = getelementptr i8, ptr %i.ap, i64 4
  %bound072 = icmp ult ptr %scevgep68, %scevgep71
  %bound173 = icmp ult ptr %scevgep70, %scevgep69
  %found.conflict74 = and i1 %bound072, %bound173
  br i1 %found.conflict74, label %.lr.ph47.preheader93, label %vector.ph77

vector.ph77:                                      ; preds = %vector.memcheck67
  %n.vec78 = and i64 %i.af, 2147483640            ; 5 uses
  %i.aq = add nsw i64 %n.vec78, %i.ad
  %i.ar = add nsw i64 %n.vec78, %i.ab
  %i.as = trunc nuw nsw i64 %n.vec78 to i32
  %broadcast.splatinsert79 = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat80 = shufflevector <4 x float> %broadcast.splatinsert79, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.ab
  %invariant.gep98 = getelementptr [4 x i8], ptr %2, i64 %i.ad
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph77
  %index82 = phi i64 [ 0, %vector.ph77 ], [ %index.next87, %vector.body81 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index82 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load83 = load <4 x float>, ptr %gep, align 4, !tbaa !11, !alias.scope !225, !noalias !228
  %wide.load84 = load <4 x float>, ptr %i.at, align 4, !tbaa !11, !alias.scope !225, !noalias !228
  %gep99 = getelementptr [4 x i8], ptr %invariant.gep98, i64 %index82 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %gep99, i64 16
  %wide.load85 = load <4 x float>, ptr %gep99, align 4, !tbaa !11, !alias.scope !228
  %wide.load86 = load <4 x float>, ptr %i.au, align 4, !tbaa !11, !alias.scope !228
  %i.av = fmul <4 x float> %broadcast.splat80, %wide.load85
  %i.aw = fmul <4 x float> %broadcast.splat80, %wide.load86
  %i.ax = fadd <4 x float> %wide.load83, %i.av
  %i.ay = fadd <4 x float> %wide.load84, %i.aw
  store <4 x float> %i.ax, ptr %gep, align 4, !tbaa !11, !alias.scope !225, !noalias !228
  store <4 x float> %i.ay, ptr %i.at, align 4, !tbaa !11, !alias.scope !225, !noalias !228
  %index.next87 = add nuw i64 %index82, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next87, %n.vec78
  br i1 %i.az, label %middle.block88, label %vector.body81, !llvm.loop !230

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %n.vec78, %i.af
  br i1 %cmp.n89, label %.loopexit, label %.lr.ph47.preheader93

.lr.ph47.preheader93:                             ; preds = %vector.memcheck67, %vector.scevcheck, %.lr.ph47.preheader, %middle.block88
  %indvars.iv52.ph = phi i64 [ %i.ad, %vector.memcheck67 ], [ %i.ad, %vector.scevcheck ], [ %i.ad, %.lr.ph47.preheader ], [ %i.aq, %middle.block88 ] ; 3 uses
  %indvars.iv50.ph = phi i64 [ %i.ab, %vector.memcheck67 ], [ %i.ab, %vector.scevcheck ], [ %i.ab, %.lr.ph47.preheader ], [ %i.ar, %middle.block88 ] ; 3 uses
  %.03644.ph = phi i32 [ 0, %vector.memcheck67 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph47.preheader ], [ %i.as, %middle.block88 ] ; 4 uses
  %i.ba = sub i32 %0, %.03644.ph
  %.neg = add i32 %.03644.ph, 1
  %xtraiter96 = and i32 %i.ba, 1
  %lcmp.mod97.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.lr.ph47.prol.loopexit, label %.lr.ph47.prol

.lr.ph47.prol:                                    ; preds = %.lr.ph47.preheader93
  %i.bb = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv50.ph ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !11
  %i.bd = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv52.ph
  %i.be = load float, ptr %i.bd, align 4, !tbaa !11
  %i.bf = fmul float %1, %i.be
  %i.bg = fadd float %i.bc, %i.bf
  store float %i.bg, ptr %i.bb, align 4, !tbaa !11
  %indvars.iv.next53.prol = add nsw i64 %indvars.iv52.ph, %i.ae
  %indvars.iv.next51.prol = add nsw i64 %indvars.iv50.ph, %i.ac
  %i.bh = add nuw nsw i32 %.03644.ph, 1
  br label %.lr.ph47.prol.loopexit

.lr.ph47.prol.loopexit:                           ; preds = %.lr.ph47.prol, %.lr.ph47.preheader93
  %indvars.iv52.unr = phi i64 [ %indvars.iv52.ph, %.lr.ph47.preheader93 ], [ %indvars.iv.next53.prol, %.lr.ph47.prol ]
  %indvars.iv50.unr = phi i64 [ %indvars.iv50.ph, %.lr.ph47.preheader93 ], [ %indvars.iv.next51.prol, %.lr.ph47.prol ]
  %.03644.unr = phi i32 [ %.03644.ph, %.lr.ph47.preheader93 ], [ %i.bh, %.lr.ph47.prol ]
  %i.bi = icmp eq i32 %0, %.neg
  br i1 %i.bi, label %.loopexit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47.prol.loopexit, %.lr.ph47
  %indvars.iv52 = phi i64 [ %indvars.iv.next53.1, %.lr.ph47 ], [ %indvars.iv52.unr, %.lr.ph47.prol.loopexit ] ; 2 uses
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph47 ], [ %indvars.iv50.unr, %.lr.ph47.prol.loopexit ] ; 2 uses
  %.03644 = phi i32 [ %i.bv, %.lr.ph47 ], [ %.03644.unr, %.lr.ph47.prol.loopexit ]
  %i.bj = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv50 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !11
  %i.bl = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv52
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !11
  %i.bn = fmul float %1, %i.bm
  %i.bo = fadd float %i.bk, %i.bn
  store float %i.bo, ptr %i.bj, align 4, !tbaa !11
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, %i.ae ; 2 uses
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, %i.ac ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next51 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !11
  %i.br = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next53
  %i.bs = load float, ptr %i.br, align 4, !tbaa !11
  %i.bt = fmul float %1, %i.bs
  %i.bu = fadd float %i.bq, %i.bt
  store float %i.bu, ptr %i.bp, align 4, !tbaa !11
  %indvars.iv.next53.1 = add nsw i64 %indvars.iv.next53, %i.ae
  %indvars.iv.next51.1 = add nsw i64 %indvars.iv.next51, %i.ac
  %i.bv = add nuw nsw i32 %.03644, 2              ; 2 uses
  %exitcond57.not.1 = icmp eq i32 %i.bv, %0
  br i1 %exitcond57.not.1, label %.loopexit, label %.lr.ph47, !llvm.loop !231

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !11
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.bz = load float, ptr %i.by, align 4, !tbaa !11
  %i.ca = fmul float %1, %i.bz
  %i.cb = fadd float %i.bx, %i.ca
  store float %i.cb, ptr %i.bw, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !11
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !11
  %i.cg = fmul float %1, %i.cf
  %i.ch = fadd float %i.cd, %i.cg
  store float %i.ch, ptr %i.cc, align 4, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !232

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph47.prol.loopexit, %.lr.ph47, %middle.block, %middle.block88, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @ddot(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %2, 1
  %i.c = icmp ne i32 %4, 1
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %.lr.ph49.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %0, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph49.preheader:                               ; preds = %bb.b
  %i.e = icmp slt i32 %4, 0
  %i.f = sub nsw i32 1, %0                        ; 2 uses
  %i.g = mul nsw i32 %4, %i.f
  %.0 = select i1 %i.e, i32 %i.g, i32 0
  %i.h = icmp slt i32 %2, 0
  %i.i = mul nsw i32 %2, %i.f
  %.032 = select i1 %i.h, i32 %i.i, i32 0
  %i.j = sext i32 %.0 to i64                      ; 2 uses
  %i.k = sext i32 %4 to i64                       ; 2 uses
  %i.l = sext i32 %.032 to i64                    ; 2 uses
  %i.m = sext i32 %2 to i64                       ; 2 uses
  %xtraiter71 = and i32 %0, 1
  %i.n = icmp eq i32 %0, 1
  br i1 %i.n, label %.lr.ph49.epil.preheader, label %.lr.ph49.preheader.new

.lr.ph49.preheader.new:                           ; preds = %.lr.ph49.preheader
  %unroll_iter76 = and i32 %0, 2147483646
  br label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49, %.lr.ph49.preheader.new
  %indvars.iv56 = phi i64 [ %i.l, %.lr.ph49.preheader.new ], [ %indvars.iv.next57.1, %.lr.ph49 ] ; 2 uses
  %indvars.iv54 = phi i64 [ %i.j, %.lr.ph49.preheader.new ], [ %indvars.iv.next55.1, %.lr.ph49 ] ; 2 uses
  %.03645 = phi float [ 0.000000e+00, %.lr.ph49.preheader.new ], [ %i.z, %.lr.ph49 ]
  %niter77 = phi i32 [ 0, %.lr.ph49.preheader.new ], [ %niter77.next.1, %.lr.ph49 ]
  %i.o = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv56
  %i.p = load float, ptr %i.o, align 4, !tbaa !11
  %i.q = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv54
  %i.r = load float, ptr %i.q, align 4, !tbaa !11
  %i.s = fmul float %i.p, %i.r
  %i.t = fadd float %.03645, %i.s
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, %i.m ; 2 uses
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, %i.k ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next57
  %i.v = load float, ptr %i.u, align 4, !tbaa !11
  %i.w = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next55
  %i.x = load float, ptr %i.w, align 4, !tbaa !11
  %i.y = fmul float %i.v, %i.x
  %i.z = fadd float %i.t, %i.y                    ; 3 uses
  %indvars.iv.next57.1 = add nsw i64 %indvars.iv.next57, %i.m ; 2 uses
  %indvars.iv.next55.1 = add nsw i64 %indvars.iv.next55, %i.k ; 2 uses
  %niter77.next.1 = add nuw nsw i32 %niter77, 2   ; 2 uses
  %niter77.ncmp.1 = icmp eq i32 %niter77.next.1, %unroll_iter76
  br i1 %niter77.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph49, !llvm.loop !233

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.13743 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !11
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !11
  %i.ae = fmul float %i.ab, %i.ad
  %i.af = fadd float %.13743, %i.ae
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !11
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !11
  %i.ak = fmul float %i.ah, %i.aj
  %i.al = fadd float %i.af, %i.ak
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.an = load float, ptr %i.am, align 4, !tbaa !11
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !11
  %i.aq = fmul float %i.an, %i.ap
  %i.ar = fadd float %i.al, %i.aq
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.at = load float, ptr %i.as, align 4, !tbaa !11
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.av = load float, ptr %i.au, align 4, !tbaa !11
  %i.aw = fmul float %i.at, %i.av
  %i.ax = fadd float %i.ar, %i.aw                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit67.unr-lcssa, label %.lr.ph, !llvm.loop !91

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph49
  %lcmp.mod73.not = icmp eq i32 %xtraiter71, 0
  br i1 %lcmp.mod73.not, label %.loopexit, label %.lr.ph49.epil.preheader

.lr.ph49.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph49.preheader
  %indvars.iv56.epil.init = phi i64 [ %i.l, %.lr.ph49.preheader ], [ %indvars.iv.next57.1, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv54.epil.init = phi i64 [ %i.j, %.lr.ph49.preheader ], [ %indvars.iv.next55.1, %.loopexit.loopexit.unr-lcssa ]
  %.03645.epil.init = phi float [ 0.000000e+00, %.lr.ph49.preheader ], [ %i.z, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod75 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %i.ay = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv56.epil.init
  %i.az = load float, ptr %i.ay, align 4, !tbaa !11
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv54.epil.init
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !11
  %i.bc = fmul float %i.az, %i.bb
  %i.bd = fadd float %.03645.epil.init, %i.bc
  br label %.loopexit

.loopexit.loopexit67.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit67.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit67.unr-lcssa ]
  %.13743.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ax, %.loopexit.loopexit67.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.13743.epil = phi float [ %.13743.epil.init, %.lr.ph.epil.preheader ], [ %i.bj, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.bf = load float, ptr %i.be, align 4, !tbaa !11
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !11
  %i.bi = fmul float %i.bf, %i.bh
  %i.bj = fadd float %.13743.epil, %i.bi          ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !234

.loopexit:                                        ; preds = %.loopexit.loopexit67.unr-lcssa, %.lr.ph.epil, %.lr.ph49.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.a
  %.038 = phi float [ %i.bd, %.lr.ph49.epil.preheader ], [ 0.000000e+00, %bb.a ], [ %i.z, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.loopexit.loopexit67.unr-lcssa ], [ %i.bj, %.lr.ph.epil ]
  ret float %.038
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !14, !19, !18}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14, !18, !19}
!23 = distinct !{!23, !14, !19, !18}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14, !18, !19}
!29 = distinct !{!29, !14, !19, !18}
!30 = distinct !{!30, !14, !18, !19}
!31 = distinct !{!31, !14, !19, !18}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14, !18, !19}
!37 = distinct !{!37, !14, !19, !18}
!38 = distinct !{!38, !14, !18, !19}
!39 = distinct !{!39, !14, !19, !18}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14, !18, !19}
!42 = distinct !{!42, !14, !19, !18}
!43 = distinct !{!43, !14, !18, !19}
!44 = distinct !{!44, !14, !19, !18}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14, !18, !19}
!49 = distinct !{!49, !14, !19, !18}
!50 = distinct !{!50, !14, !18, !19}
!51 = distinct !{!51, !14, !19, !18}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14, !18, !19}
!54 = distinct !{!54, !14, !19, !18}
!55 = distinct !{!55, !14, !18, !19}
!56 = distinct !{!56, !14, !19, !18}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = !{!60}
!60 = distinct !{!60, !61}
!61 = distinct !{!61, !"LVerDomain"}
!62 = !{!63}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !14, !18, !19}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = distinct !{!67, !14, !18}
!68 = distinct !{!68, !14, !18, !19}
!69 = distinct !{!69, !14, !19, !18}
!70 = !{!71}
!71 = distinct !{!71, !72}
!72 = distinct !{!72, !"LVerDomain"}
!73 = !{!74}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !14, !18, !19}
!76 = distinct !{!76, !14, !18}
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!81}
!81 = distinct !{!81, !79}
!82 = distinct !{!82, !14, !18, !19}
!83 = distinct !{!83, !14, !18}
!84 = !{!85}
!85 = distinct !{!85, !86}
!86 = distinct !{!86, !"LVerDomain"}
!87 = !{!88}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !14, !18, !19}
!90 = distinct !{!90, !14, !18}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !66}
!93 = distinct !{!93, !14}
!94 = distinct !{!94, !66}
!95 = distinct !{!95, !14}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!100}
!100 = distinct !{!100, !98}
!101 = !{!97, !102}
!102 = distinct !{!102, !98}
!103 = !{!102}
!104 = distinct !{!104, !14, !18, !19}
!105 = distinct !{!105, !14, !18}
!106 = !{!107}
!107 = distinct !{!107, !108}
!108 = distinct !{!108, !"LVerDomain"}
!109 = !{!110}
!110 = distinct !{!110, !108}
!111 = !{!112}
!112 = distinct !{!112, !108}
!113 = !{!110, !107, !114, !115}
!114 = distinct !{!114, !108}
!115 = distinct !{!115, !108}
!116 = !{!115}
!117 = !{!114}
!118 = distinct !{!118, !14, !18, !19}
!119 = distinct !{!119, !14, !18}
!120 = !{!121}
!121 = distinct !{!121, !122}
!122 = distinct !{!122, !"LVerDomain"}
!123 = !{!124}
!124 = distinct !{!124, !122}
!125 = !{!121, !126, !127, !128, !129}
!126 = distinct !{!126, !122}
!127 = distinct !{!127, !122}
!128 = distinct !{!128, !122}
!129 = distinct !{!129, !122}
!130 = !{!129}
!131 = !{!128}
!132 = !{!127}
!133 = !{!126}
!134 = distinct !{!134, !14, !18, !19}
!135 = distinct !{!135, !14, !18}
!136 = !{!137}
!137 = distinct !{!137, !138}
!138 = distinct !{!138, !"LVerDomain"}
!139 = !{!140}
!140 = distinct !{!140, !138}
!141 = !{!142}
!142 = distinct !{!142, !138}
!143 = !{!144}
!144 = distinct !{!144, !138}
!145 = !{!146}
!146 = distinct !{!146, !138}
!147 = !{!148}
!148 = distinct !{!148, !138}
!149 = !{!150}
!150 = distinct !{!150, !138}
!151 = !{!152}
!152 = distinct !{!152, !138}
!153 = !{!154}
!154 = distinct !{!154, !138}
!155 = !{!152, !150, !148, !146, !144, !142, !140, !137, !156, !157, !158, !159, !160, !161, !162, !163}
!156 = distinct !{!156, !138}
!157 = distinct !{!157, !138}
!158 = distinct !{!158, !138}
!159 = distinct !{!159, !138}
!160 = distinct !{!160, !138}
!161 = distinct !{!161, !138}
!162 = distinct !{!162, !138}
!163 = distinct !{!163, !138}
!164 = !{!163}
!165 = !{!162}
!166 = !{!161}
!167 = !{!160}
!168 = !{!159}
!169 = !{!158}
!170 = !{!157}
!171 = !{!156}
!172 = distinct !{!172, !14, !18, !19}
!173 = distinct !{!173, !14, !18}
!174 = !{!175}
!175 = distinct !{!175, !176}
!176 = distinct !{!176, !"LVerDomain"}
!177 = !{!178}
!178 = distinct !{!178, !176}
!179 = !{!175, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!180 = distinct !{!180, !176}
!181 = distinct !{!181, !176}
!182 = distinct !{!182, !176}
!183 = distinct !{!183, !176}
!184 = distinct !{!184, !176}
!185 = distinct !{!185, !176}
!186 = distinct !{!186, !176}
!187 = distinct !{!187, !176}
!188 = distinct !{!188, !176}
!189 = distinct !{!189, !176}
!190 = distinct !{!190, !176}
!191 = distinct !{!191, !176}
!192 = distinct !{!192, !176}
!193 = distinct !{!193, !176}
!194 = distinct !{!194, !176}
!195 = distinct !{!195, !176}
!196 = !{!195}
!197 = !{!194}
!198 = !{!193}
!199 = !{!192}
!200 = !{!191}
!201 = !{!190}
!202 = !{!189}
!203 = !{!188}
!204 = !{!187}
!205 = !{!186}
!206 = !{!185}
!207 = !{!184}
!208 = !{!183}
!209 = !{!182}
!210 = !{!181}
!211 = !{!180}
!212 = distinct !{!212, !14, !18, !19}
!213 = distinct !{!213, !14, !18}
!214 = distinct !{!214, !14}
!215 = distinct !{!215, !14}
!216 = distinct !{!216, !14, !18, !19}
!217 = distinct !{!217, !14, !18}
!218 = distinct !{!218, !14, !19, !18}
!219 = !{!220}
!220 = distinct !{!220, !221}
!221 = distinct !{!221, !"LVerDomain"}
!222 = !{!223}
!223 = distinct !{!223, !221}
!224 = distinct !{!224, !14, !18, !19}
!225 = !{!226}
!226 = distinct !{!226, !227}
!227 = distinct !{!227, !"LVerDomain"}
!228 = !{!229}
!229 = distinct !{!229, !227}
!230 = distinct !{!230, !14, !18, !19}
!231 = distinct !{!231, !14, !18}
!232 = distinct !{!232, !14, !18}
!233 = distinct !{!233, !14}
!234 = distinct !{!234, !66}
end_hunk_0
