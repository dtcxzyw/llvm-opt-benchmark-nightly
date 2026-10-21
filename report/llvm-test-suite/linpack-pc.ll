Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/linpack-pc?download=true
inline.NumInlined: 42
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 50
begin_hunk_0_@dmxpy:bb.a
  %i.aq = add nsw i32 %i.ao, -1                   ; 2 uses
  %i.ar = add nsw i32 %i.ao, -2                   ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.as ; 5 uses
  %i.au = mul nuw nsw i32 %i.ar, %3
  %i.av = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.av ; 5 uses
  %i.ax = mul nsw i32 %i.aq, %3
  %i.ay = sext i32 %i.au to i64                   ; 2 uses
  %i.az = sext i32 %i.ax to i64                   ; 2 uses
  %wide.trip.count262 = zext nneg i32 %0 to i64   ; 8 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %i.ay ; 5 uses
  %invariant.gep289 = getelementptr [4 x i8], ptr %5, i64 %i.az ; 5 uses
  %min.iters.check380 = icmp ult i32 %0, 16
  br i1 %min.iters.check380, label %scalar.ph379.preheader, label %vector.memcheck381

vector.memcheck381:                               ; preds = %.lr.ph248
  %i.ba = shl nuw nsw i64 %wide.trip.count262, 2
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba     ; 4 uses
  %i.bc = shl nuw nsw i64 %i.av, 2
  %i.bd = getelementptr i8, ptr %4, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %i.bf = shl nuw nsw i64 %i.as, 2
  %i.bg = getelementptr i8, ptr %4, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %i.bi = add nsw i64 %i.az, %wide.trip.count262
  %i.bj = shl nsw i64 %i.bi, 2
  %i.bk = getelementptr i8, ptr %5, i64 %i.bj
  %i.bl = add nsw i64 %i.ay, %wide.trip.count262
  %i.bm = shl nsw i64 %i.bl, 2
  %i.bn = getelementptr i8, ptr %5, i64 %i.bm
  %bound0382 = icmp ult ptr %1, %i.be
  %bound1383 = icmp ult ptr %i.aw, %i.bb
  %found.conflict384 = and i1 %bound0382, %bound1383
  %bound0385 = icmp ult ptr %1, %i.bh
  %bound1386 = icmp ult ptr %i.at, %i.bb
  %found.conflict387 = and i1 %bound0385, %bound1386
  %conflict.rdx388 = or i1 %found.conflict384, %found.conflict387
  %bound0389 = icmp ult ptr %1, %i.bk
  %bound1390 = icmp ult ptr %invariant.gep289, %i.bb
  %found.conflict391 = and i1 %bound0389, %bound1390
  %conflict.rdx392 = or i1 %conflict.rdx388, %found.conflict391
  %bound0393 = icmp ult ptr %1, %i.bn
  %bound1394 = icmp ult ptr %invariant.gep, %i.bb
  %found.conflict395 = and i1 %bound0393, %bound1394
  %conflict.rdx396 = or i1 %conflict.rdx392, %found.conflict395
  br i1 %conflict.rdx396, label %scalar.ph379.preheader, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck381
  %n.vec398 = and i64 %wide.trip.count262, 2147483640 ; 3 uses
  %i.bo = load float, ptr %i.at, align 4, !tbaa !18, !alias.scope !168
  %broadcast.splatinsert405 = insertelement <4 x float> poison, float %i.bo, i64 0
  %broadcast.splat406 = shufflevector <4 x float> %broadcast.splatinsert405, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bp = load float, ptr %i.aw, align 4, !tbaa !18, !alias.scope !169
  %broadcast.splatinsert409 = insertelement <4 x float> poison, float %i.bp, i64 0
  %broadcast.splat410 = shufflevector <4 x float> %broadcast.splatinsert409, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph397
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next411, %vector.body399 ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index400 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load401 = load <4 x float>, ptr %i.bq, align 4, !tbaa !18, !alias.scope !170, !noalias !171
  %wide.load402 = load <4 x float>, ptr %i.br, align 4, !tbaa !18, !alias.scope !170, !noalias !171
  %i.bs = getelementptr [4 x i8], ptr %invariant.gep, i64 %index400 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %wide.load403 = load <4 x float>, ptr %i.bs, align 4, !tbaa !18, !alias.scope !172
  %wide.load404 = load <4 x float>, ptr %i.bt, align 4, !tbaa !18, !alias.scope !172
  %i.bu = fmul <4 x float> %broadcast.splat406, %wide.load403
  %i.bv = fmul <4 x float> %broadcast.splat406, %wide.load404
  %i.bw = fadd <4 x float> %wide.load401, %i.bu
  %i.bx = fadd <4 x float> %wide.load402, %i.bv
  %i.by = getelementptr [4 x i8], ptr %invariant.gep289, i64 %index400 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %wide.load407 = load <4 x float>, ptr %i.by, align 4, !tbaa !18, !alias.scope !173
  %wide.load408 = load <4 x float>, ptr %i.bz, align 4, !tbaa !18, !alias.scope !173
  %i.ca = fmul <4 x float> %broadcast.splat410, %wide.load407
  %i.cb = fmul <4 x float> %broadcast.splat410, %wide.load408
  %i.cc = fadd <4 x float> %i.bw, %i.ca
  %i.cd = fadd <4 x float> %i.bx, %i.cb
  store <4 x float> %i.cc, ptr %i.bq, align 4, !tbaa !18, !alias.scope !170, !noalias !171
  store <4 x float> %i.cd, ptr %i.br, align 4, !tbaa !18, !alias.scope !170, !noalias !171
  %index.next411 = add nuw i64 %index400, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next411, %n.vec398
  br i1 %i.ce, label %middle.block412, label %vector.body399, !llvm.loop !108

middle.block412:                                  ; preds = %vector.body399
  %cmp.n413 = icmp eq i64 %n.vec398, %wide.trip.count262
  br i1 %cmp.n413, label %.loopexit243.thread286, label %scalar.ph379.preheader

scalar.ph379.preheader:                           ; preds = %vector.memcheck381, %.lr.ph248, %middle.block412
  %indvars.iv259.ph = phi i64 [ 0, %vector.memcheck381 ], [ 0, %.lr.ph248 ], [ %n.vec398, %middle.block412 ] ; 6 uses
  %xtraiter853 = and i64 %wide.trip.count262, 1
  %lcmp.mod854.not = icmp eq i64 %xtraiter853, 0
  br i1 %lcmp.mod854.not, label %scalar.ph379.prol.loopexit, label %scalar.ph379.prol

scalar.ph379.prol:                                ; preds = %scalar.ph379.preheader
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv259.ph ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !18
  %i.ch = load float, ptr %i.at, align 4, !tbaa !18
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv259.ph
  %i.ci = load float, ptr %gep.prol, align 4, !tbaa !18
  %i.cj = fmul float %i.ch, %i.ci
  %i.ck = fadd float %i.cg, %i.cj
  %i.cl = load float, ptr %i.aw, align 4, !tbaa !18
  %gep290.prol = getelementptr [4 x i8], ptr %invariant.gep289, i64 %indvars.iv259.ph
  %i.cm = load float, ptr %gep290.prol, align 4, !tbaa !18
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = fadd float %i.ck, %i.cn
  store float %i.co, ptr %i.cf, align 4, !tbaa !18
  %indvars.iv.next260.prol = or disjoint i64 %indvars.iv259.ph, 1
  br label %scalar.ph379.prol.loopexit

scalar.ph379.prol.loopexit:                       ; preds = %scalar.ph379.prol, %scalar.ph379.preheader
  %indvars.iv259.unr = phi i64 [ %indvars.iv259.ph, %scalar.ph379.preheader ], [ %indvars.iv.next260.prol, %scalar.ph379.prol ]
  %i.cp = add nsw i64 %wide.trip.count262, -1
  %i.cq = icmp eq i64 %indvars.iv259.ph, %i.cp
  br i1 %i.cq, label %.loopexit243.thread286, label %scalar.ph379

scalar.ph379:                                     ; preds = %scalar.ph379.prol.loopexit, %scalar.ph379
  %indvars.iv259 = phi i64 [ %indvars.iv.next260.1, %scalar.ph379 ], [ %indvars.iv259.unr, %scalar.ph379.prol.loopexit ] ; 5 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv259 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !18
  %i.ct = load float, ptr %i.at, align 4, !tbaa !18
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv259
  %i.cu = load float, ptr %gep, align 4, !tbaa !18
  %i.cv = fmul float %i.ct, %i.cu
  %i.cw = fadd float %i.cs, %i.cv
  %i.cx = load float, ptr %i.aw, align 4, !tbaa !18
  %gep290 = getelementptr [4 x i8], ptr %invariant.gep289, i64 %indvars.iv259
  %i.cy = load float, ptr %gep290, align 4, !tbaa !18
  %i.cz = fmul float %i.cx, %i.cy
  %i.da = fadd float %i.cw, %i.cz
  store float %i.da, ptr %i.cr, align 4, !tbaa !18
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next260 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !18
  %i.dd = load float, ptr %i.at, align 4, !tbaa !18
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next260
  %i.de = load float, ptr %gep.1, align 4, !tbaa !18
  %i.df = fmul float %i.dd, %i.de
  %i.dg = fadd float %i.dc, %i.df
  %i.dh = load float, ptr %i.aw, align 4, !tbaa !18
  %gep290.1 = getelementptr [4 x i8], ptr %invariant.gep289, i64 %indvars.iv.next260
  %i.di = load float, ptr %gep290.1, align 4, !tbaa !18
  %i.dj = fmul float %i.dh, %i.di
  %i.dk = fadd float %i.dg, %i.dj
  store float %i.dk, ptr %i.db, align 4, !tbaa !18
  %indvars.iv.next260.1 = add nuw nsw i64 %indvars.iv259, 2 ; 2 uses
  %exitcond263.not.1 = icmp eq i64 %indvars.iv.next260.1, %wide.trip.count262
  br i1 %exitcond263.not.1, label %.loopexit243.thread286, label %scalar.ph379, !llvm.loop !109

.loopexit243:                                     ; preds = %.loopexit245
  %i.dl = srem i32 %2, 8                          ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 3
  %brmerge.not = and i1 %i.dm, %i.c
  br i1 %brmerge.not, label %.lr.ph250, label %.loopexit242

.loopexit243.thread286:                           ; preds = %scalar.ph379.prol.loopexit, %scalar.ph379, %middle.block412
  %i.dn = srem i32 %2, 8                          ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 3
  br i1 %i.do, label %.lr.ph250, label %.loopexit242

.lr.ph250:                                        ; preds = %.loopexit243, %.loopexit243.thread286
  %i.dp = phi i32 [ %i.dl, %.loopexit243 ], [ %i.dn, %.loopexit243.thread286 ] ; 4 uses
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  %i.dr = add nsw i32 %i.dp, -4                   ; 2 uses
  %i.ds = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ds ; 3 uses
  %i.du = mul nsw i32 %i.dr, %3
  %i.dv = add nsw i32 %i.dp, -3                   ; 2 uses
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dw ; 3 uses
  %i.dy = mul nsw i32 %i.dv, %3
  %i.dz = add nsw i32 %i.dp, -2                   ; 2 uses
  %i.ea = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ea ; 3 uses
  %i.ec = mul nsw i32 %i.dz, %3
  %i.ed = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ed ; 3 uses
  %i.ef = mul nsw i32 %i.dq, %3
  %i.eg = sext i32 %i.du to i64                   ; 2 uses
  %i.eh = sext i32 %i.dy to i64                   ; 2 uses
  %i.ei = sext i32 %i.ec to i64                   ; 2 uses
  %i.ej = sext i32 %i.ef to i64                   ; 2 uses
  %wide.trip.count267 = zext nneg i32 %0 to i64   ; 8 uses
  %invariant.gep291 = getelementptr [4 x i8], ptr %5, i64 %i.eg ; 3 uses
  %invariant.gep293 = getelementptr [4 x i8], ptr %5, i64 %i.eh ; 3 uses
  %invariant.gep295 = getelementptr [4 x i8], ptr %5, i64 %i.ei ; 3 uses
  %invariant.gep297 = getelementptr [4 x i8], ptr %5, i64 %i.ej ; 3 uses
  %min.iters.check456 = icmp ult i32 %0, 20
  br i1 %min.iters.check456, label %scalar.ph455.preheader, label %vector.memcheck457

vector.memcheck457:                               ; preds = %.lr.ph250
  %i.ek = shl nuw nsw i64 %wide.trip.count267, 2
  %i.el = getelementptr i8, ptr %1, i64 %i.ek
  %i.em = shl nuw nsw i64 %i.ed, 2
  %i.en = getelementptr i8, ptr %4, i64 %i.em
  %i.eo = shl nuw nsw i64 %i.ea, 2
  %i.ep = getelementptr i8, ptr %4, i64 %i.eo
  %6 = insertelement <2 x ptr> poison, ptr %i.en, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.ep, i64 1
  %8 = getelementptr i8, <2 x ptr> %7, i64 4
  %i.eq = shl nuw nsw i64 %i.dw, 2
  %i.er = getelementptr i8, ptr %4, i64 %i.eq
  %9 = shl nuw nsw i64 %i.ds, 2
  %10 = getelementptr i8, ptr %4, i64 %9
  %11 = insertelement <2 x ptr> poison, ptr %i.er, i64 0
  %12 = insertelement <2 x ptr> %11, ptr %10, i64 1
  %13 = getelementptr i8, <2 x ptr> %12, i64 4
  %i.es = add nsw i64 %i.ej, %wide.trip.count267
  %i.et = shl nsw i64 %i.es, 2
  %i.eu = getelementptr i8, ptr %5, i64 %i.et
  %i.ev = add nsw i64 %i.ei, %wide.trip.count267
  %i.ew = shl nsw i64 %i.ev, 2
  %i.ex = getelementptr i8, ptr %5, i64 %i.ew
  %i.ey = add nsw i64 %i.eh, %wide.trip.count267
  %i.ez = shl nsw i64 %i.ey, 2
  %i.fa = getelementptr i8, ptr %5, i64 %i.ez
  %i.fb = add nsw i64 %i.eg, %wide.trip.count267
  %i.fc = shl nsw i64 %i.fb, 2
  %i.fd = getelementptr i8, ptr %5, i64 %i.fc
  %i.fe = insertelement <8 x ptr> poison, ptr %1, i64 0
  %i.ff = shufflevector <8 x ptr> %i.fe, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.fg = shufflevector <2 x ptr> %8, <2 x ptr> %13, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fh = insertelement <8 x ptr> %i.fg, ptr %i.eu, i64 4
  %i.fi = insertelement <8 x ptr> %i.fh, ptr %i.ex, i64 5
  %i.fj = insertelement <8 x ptr> %i.fi, ptr %i.fa, i64 6
  %i.fk = insertelement <8 x ptr> %i.fj, ptr %i.fd, i64 7
  %i.fl = icmp ult <8 x ptr> %i.ff, %i.fk
  %i.fm = insertelement <8 x ptr> poison, ptr %i.ee, i64 0
  %i.fn = insertelement <8 x ptr> %i.fm, ptr %i.eb, i64 1
  %i.fo = insertelement <8 x ptr> %i.fn, ptr %i.dx, i64 2
  %i.fp = insertelement <8 x ptr> %i.fo, ptr %i.dt, i64 3
  %i.fq = insertelement <8 x ptr> %i.fp, ptr %invariant.gep297, i64 4
  %i.fr = insertelement <8 x ptr> %i.fq, ptr %invariant.gep295, i64 5
  %i.fs = insertelement <8 x ptr> %i.fr, ptr %invariant.gep293, i64 6
  %i.ft = insertelement <8 x ptr> %i.fs, ptr %invariant.gep291, i64 7
  %i.fu = insertelement <8 x ptr> poison, ptr %i.el, i64 0
  %i.fv = shufflevector <8 x ptr> %i.fu, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.fw = icmp ult <8 x ptr> %i.ft, %i.fv
  %i.fx = and <8 x i1> %i.fl, %i.fw
  %i.fy = bitcast <8 x i1> %i.fx to i8
  %.not = icmp eq i8 %i.fy, 0
  br i1 %.not, label %vector.ph489, label %scalar.ph455.preheader

vector.ph489:                                     ; preds = %vector.memcheck457
  %n.vec490 = and i64 %wide.trip.count267, 2147483644 ; 3 uses
  %i.fz = load float, ptr %i.dt, align 4, !tbaa !18, !alias.scope !174
  %broadcast.splatinsert495 = insertelement <4 x float> poison, float %i.fz, i64 0
  %broadcast.splat496 = shufflevector <4 x float> %broadcast.splatinsert495, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ga = load float, ptr %i.dx, align 4, !tbaa !18, !alias.scope !175
  %broadcast.splatinsert498 = insertelement <4 x float> poison, float %i.ga, i64 0
  %broadcast.splat499 = shufflevector <4 x float> %broadcast.splatinsert498, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gb = load float, ptr %i.eb, align 4, !tbaa !18, !alias.scope !176
  %broadcast.splatinsert501 = insertelement <4 x float> poison, float %i.gb, i64 0
  %broadcast.splat502 = shufflevector <4 x float> %broadcast.splatinsert501, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gc = load float, ptr %i.ee, align 4, !tbaa !18, !alias.scope !177
  %broadcast.splatinsert504 = insertelement <4 x float> poison, float %i.gc, i64 0
  %broadcast.splat505 = shufflevector <4 x float> %broadcast.splatinsert504, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph489
  %index492 = phi i64 [ 0, %vector.ph489 ], [ %index.next506, %vector.body491 ] ; 6 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index492 ; 2 uses
  %wide.load493 = load <4 x float>, ptr %i.gd, align 4, !tbaa !18, !alias.scope !178, !noalias !179
  %i.ge = getelementptr [4 x i8], ptr %invariant.gep291, i64 %index492
  %wide.load494 = load <4 x float>, ptr %i.ge, align 4, !tbaa !18, !alias.scope !180
  %i.gf = fmul <4 x float> %broadcast.splat496, %wide.load494
  %i.gg = fadd <4 x float> %wide.load493, %i.gf
  %i.gh = getelementptr [4 x i8], ptr %invariant.gep293, i64 %index492
  %wide.load497 = load <4 x float>, ptr %i.gh, align 4, !tbaa !18, !alias.scope !181
  %i.gi = fmul <4 x float> %broadcast.splat499, %wide.load497
  %i.gj = fadd <4 x float> %i.gg, %i.gi
  %i.gk = getelementptr [4 x i8], ptr %invariant.gep295, i64 %index492
  %wide.load500 = load <4 x float>, ptr %i.gk, align 4, !tbaa !18, !alias.scope !182
  %i.gl = fmul <4 x float> %broadcast.splat502, %wide.load500
  %i.gm = fadd <4 x float> %i.gj, %i.gl
  %i.gn = getelementptr [4 x i8], ptr %invariant.gep297, i64 %index492
  %wide.load503 = load <4 x float>, ptr %i.gn, align 4, !tbaa !18, !alias.scope !183
  %i.go = fmul <4 x float> %broadcast.splat505, %wide.load503
  %i.gp = fadd <4 x float> %i.gm, %i.go
  store <4 x float> %i.gp, ptr %i.gd, align 4, !tbaa !18, !alias.scope !178, !noalias !179
  %index.next506 = add nuw i64 %index492, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next506, %n.vec490
  br i1 %i.gq, label %middle.block507, label %vector.body491, !llvm.loop !120

middle.block507:                                  ; preds = %vector.body491
  %cmp.n508 = icmp eq i64 %n.vec490, %wide.trip.count267
  br i1 %cmp.n508, label %.loopexit242, label %scalar.ph455.preheader

scalar.ph455.preheader:                           ; preds = %vector.memcheck457, %.lr.ph250, %middle.block507
  %indvars.iv264.ph = phi i64 [ 0, %vector.memcheck457 ], [ 0, %.lr.ph250 ], [ %n.vec490, %middle.block507 ]
  br label %scalar.ph455

scalar.ph455:                                     ; preds = %scalar.ph455.preheader, %scalar.ph455
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %scalar.ph455 ], [ %indvars.iv264.ph, %scalar.ph455.preheader ] ; 6 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv264 ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !18
  %i.gt = load float, ptr %i.dt, align 4, !tbaa !18
  %gep292 = getelementptr [4 x i8], ptr %invariant.gep291, i64 %indvars.iv264
  %i.gu = load float, ptr %gep292, align 4, !tbaa !18
  %i.gv = fmul float %i.gt, %i.gu
  %i.gw = fadd float %i.gs, %i.gv
  %i.gx = load float, ptr %i.dx, align 4, !tbaa !18
  %gep294 = getelementptr [4 x i8], ptr %invariant.gep293, i64 %indvars.iv264
  %i.gy = load float, ptr %gep294, align 4, !tbaa !18
  %i.gz = fmul float %i.gx, %i.gy
  %i.ha = fadd float %i.gw, %i.gz
  %i.hb = load float, ptr %i.eb, align 4, !tbaa !18
  %gep296 = getelementptr [4 x i8], ptr %invariant.gep295, i64 %indvars.iv264
  %i.hc = load float, ptr %gep296, align 4, !tbaa !18
  %i.hd = fmul float %i.hb, %i.hc
  %i.he = fadd float %i.ha, %i.hd
  %i.hf = load float, ptr %i.ee, align 4, !tbaa !18
  %gep298 = getelementptr [4 x i8], ptr %invariant.gep297, i64 %indvars.iv264
  %i.hg = load float, ptr %gep298, align 4, !tbaa !18
  %i.hh = fmul float %i.hf, %i.hg
  %i.hi = fadd float %i.he, %i.hh
  store float %i.hi, ptr %i.gr, align 4, !tbaa !18
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  br i1 %exitcond268.not, label %.loopexit242, label %scalar.ph455, !llvm.loop !121

.loopexit242:                                     ; preds = %scalar.ph455, %middle.block507, %.loopexit243, %bb.b, %.loopexit243.thread286
  %i.hj = srem i32 %2, 16                         ; 11 uses
  %i.hk = icmp sgt i32 %i.hj, 7
  br i1 %i.hk, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.loopexit242
  br i1 %i.c, label %.lr.ph252, label %._crit_edge256.split

.lr.ph252:                                        ; preds = %bb.c
  %i.hl = add nsw i32 %i.hj, -1                   ; 2 uses
  %i.hm = add nsw i32 %i.hj, -8                   ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  %i.ho = getelementptr [4 x i8], ptr %4, i64 %i.hn ; 3 uses
  %i.hp = mul nsw i32 %i.hm, %3
  %i.hq = add nsw i32 %i.hj, -7                   ; 2 uses
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %i.hs = getelementptr [4 x i8], ptr %4, i64 %i.hr ; 3 uses
  %i.ht = mul nsw i32 %i.hq, %3
  %i.hu = add nsw i32 %i.hj, -6                   ; 2 uses
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = getelementptr [4 x i8], ptr %4, i64 %i.hv ; 3 uses
  %i.hx = mul nsw i32 %i.hu, %3
  %i.hy = add nsw i32 %i.hj, -5                   ; 2 uses
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = getelementptr [4 x i8], ptr %4, i64 %i.hz ; 3 uses
  %i.ib = mul i32 %i.hy, %3
  %i.ic = add nsw i32 %i.hj, -4                   ; 2 uses
  %i.id = zext i32 %i.ic to i64                   ; 2 uses
  %i.ie = getelementptr [4 x i8], ptr %4, i64 %i.id ; 3 uses
  %i.if = mul i32 %i.ic, %3
  %i.ig = add nsw i32 %i.hj, -3                   ; 2 uses
  %i.ih = zext i32 %i.ig to i64                   ; 2 uses
  %i.ii = getelementptr [4 x i8], ptr %4, i64 %i.ih ; 3 uses
  %i.ij = mul i32 %i.ig, %3
  %i.ik = add nsw i32 %i.hj, -2                   ; 2 uses
  %i.il = zext i32 %i.ik to i64                   ; 2 uses
  %i.im = getelementptr [4 x i8], ptr %4, i64 %i.il ; 3 uses
  %i.in = mul i32 %i.ik, %3
  %i.io = zext i32 %i.hl to i64                   ; 2 uses
  %i.ip = getelementptr [4 x i8], ptr %4, i64 %i.io ; 3 uses
  %i.iq = mul i32 %i.hl, %3
  %i.ir = sext i32 %i.hp to i64                   ; 2 uses
  %i.is = sext i32 %i.ht to i64                   ; 2 uses
  %i.it = sext i32 %i.hx to i64                   ; 2 uses
  %i.iu = sext i32 %i.ib to i64                   ; 2 uses
  %i.iv = sext i32 %i.if to i64                   ; 2 uses
  %i.iw = sext i32 %i.ij to i64                   ; 2 uses
  %i.ix = sext i32 %i.in to i64                   ; 2 uses
  %i.iy = sext i32 %i.iq to i64                   ; 2 uses
  %wide.trip.count272 = zext nneg i32 %0 to i64   ; 12 uses
  %invariant.gep299 = getelementptr [4 x i8], ptr %5, i64 %i.ir ; 3 uses
  %invariant.gep301 = getelementptr [4 x i8], ptr %5, i64 %i.is ; 3 uses
  %invariant.gep303 = getelementptr [4 x i8], ptr %5, i64 %i.it ; 3 uses
  %invariant.gep305 = getelementptr [4 x i8], ptr %5, i64 %i.iu ; 3 uses
  %invariant.gep307 = getelementptr [4 x i8], ptr %5, i64 %i.iv ; 3 uses
  %invariant.gep309 = getelementptr [4 x i8], ptr %5, i64 %i.iw ; 3 uses
  %invariant.gep311 = getelementptr [4 x i8], ptr %5, i64 %i.ix ; 3 uses
  %invariant.gep313 = getelementptr [4 x i8], ptr %5, i64 %i.iy ; 3 uses
  %min.iters.check591 = icmp ult i32 %0, 20
  br i1 %min.iters.check591, label %scalar.ph590.preheader, label %vector.memcheck592

vector.memcheck592:                               ; preds = %.lr.ph252
  %i.iz = shl nuw nsw i64 %wide.trip.count272, 2
  %i.ja = getelementptr i8, ptr %1, i64 %i.iz
  %i.jb = shl nuw nsw i64 %i.io, 2
  %i.jc = getelementptr i8, ptr %4, i64 %i.jb
  %i.jd = shl nuw nsw i64 %i.il, 2
  %i.je = getelementptr i8, ptr %4, i64 %i.jd
  %i.jf = shl nuw nsw i64 %i.ih, 2
  %i.jg = getelementptr i8, ptr %4, i64 %i.jf
  %i.jh = shl nuw nsw i64 %i.id, 2
  %i.ji = getelementptr i8, ptr %4, i64 %i.jh
  %14 = insertelement <4 x ptr> poison, ptr %i.jc, i64 0
  %15 = insertelement <4 x ptr> %14, ptr %i.je, i64 1
  %16 = insertelement <4 x ptr> %15, ptr %i.jg, i64 2
  %17 = insertelement <4 x ptr> %16, ptr %i.ji, i64 3
  %18 = getelementptr i8, <4 x ptr> %17, i64 4
  %i.jj = shl nuw nsw i64 %i.hz, 2
  %i.jk = getelementptr i8, ptr %4, i64 %i.jj
  %i.jl = shl nuw nsw i64 %i.hv, 2
  %i.jm = getelementptr i8, ptr %4, i64 %i.jl
  %19 = shl nuw nsw i64 %i.hr, 2
  %20 = getelementptr i8, ptr %4, i64 %19
  %21 = shl nuw nsw i64 %i.hn, 2
  %22 = getelementptr i8, ptr %4, i64 %21
  %23 = insertelement <4 x ptr> poison, ptr %i.jk, i64 0
  %24 = insertelement <4 x ptr> %23, ptr %i.jm, i64 1
  %25 = insertelement <4 x ptr> %24, ptr %20, i64 2
  %26 = insertelement <4 x ptr> %25, ptr %22, i64 3
  %27 = getelementptr i8, <4 x ptr> %26, i64 4
  %i.jn = add nsw i64 %i.iy, %wide.trip.count272
  %i.jo = shl nsw i64 %i.jn, 2
  %i.jp = getelementptr i8, ptr %5, i64 %i.jo
  %i.jq = add nsw i64 %i.ix, %wide.trip.count272
  %i.jr = shl nsw i64 %i.jq, 2
  %i.js = getelementptr i8, ptr %5, i64 %i.jr
  %i.jt = add nsw i64 %i.iw, %wide.trip.count272
  %i.ju = shl nsw i64 %i.jt, 2
  %i.jv = getelementptr i8, ptr %5, i64 %i.ju
  %i.jw = add nsw i64 %i.iv, %wide.trip.count272
  %i.jx = shl nsw i64 %i.jw, 2
  %i.jy = getelementptr i8, ptr %5, i64 %i.jx
  %i.jz = add nsw i64 %i.iu, %wide.trip.count272
  %i.ka = shl nsw i64 %i.jz, 2
  %i.kb = getelementptr i8, ptr %5, i64 %i.ka
  %i.kc = add nsw i64 %i.it, %wide.trip.count272
  %i.kd = shl nsw i64 %i.kc, 2
  %i.ke = getelementptr i8, ptr %5, i64 %i.kd
  %i.kf = add nsw i64 %i.is, %wide.trip.count272
  %i.kg = shl nsw i64 %i.kf, 2
  %i.kh = getelementptr i8, ptr %5, i64 %i.kg
  %i.ki = add nsw i64 %i.ir, %wide.trip.count272
  %i.kj = shl nsw i64 %i.ki, 2
  %i.kk = getelementptr i8, ptr %5, i64 %i.kj
  %i.kl = insertelement <16 x ptr> poison, ptr %1, i64 0
  %i.km = shufflevector <16 x ptr> %i.kl, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.kn = shufflevector <4 x ptr> %18, <4 x ptr> %27, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ko = insertelement <16 x ptr> %i.kn, ptr %i.jp, i64 8
  %i.kp = insertelement <16 x ptr> %i.ko, ptr %i.js, i64 9
  %i.kq = insertelement <16 x ptr> %i.kp, ptr %i.jv, i64 10
  %i.kr = insertelement <16 x ptr> %i.kq, ptr %i.jy, i64 11
  %i.ks = insertelement <16 x ptr> %i.kr, ptr %i.kb, i64 12
  %i.kt = insertelement <16 x ptr> %i.ks, ptr %i.ke, i64 13
  %i.ku = insertelement <16 x ptr> %i.kt, ptr %i.kh, i64 14
  %i.kv = insertelement <16 x ptr> %i.ku, ptr %i.kk, i64 15
  %i.kw = icmp ult <16 x ptr> %i.km, %i.kv
  %i.kx = insertelement <16 x ptr> poison, ptr %i.ip, i64 0
  %i.ky = insertelement <16 x ptr> %i.kx, ptr %i.im, i64 1
  %i.kz = insertelement <16 x ptr> %i.ky, ptr %i.ii, i64 2
  %i.la = insertelement <16 x ptr> %i.kz, ptr %i.ie, i64 3
  %i.lb = insertelement <16 x ptr> %i.la, ptr %i.ia, i64 4
  %i.lc = insertelement <16 x ptr> %i.lb, ptr %i.hw, i64 5
  %i.ld = insertelement <16 x ptr> %i.lc, ptr %i.hs, i64 6
  %i.le = insertelement <16 x ptr> %i.ld, ptr %i.ho, i64 7
  %i.lf = insertelement <16 x ptr> %i.le, ptr %invariant.gep313, i64 8
  %i.lg = insertelement <16 x ptr> %i.lf, ptr %invariant.gep311, i64 9
  %i.lh = insertelement <16 x ptr> %i.lg, ptr %invariant.gep309, i64 10
  %i.li = insertelement <16 x ptr> %i.lh, ptr %invariant.gep307, i64 11
  %i.lj = insertelement <16 x ptr> %i.li, ptr %invariant.gep305, i64 12
  %i.lk = insertelement <16 x ptr> %i.lj, ptr %invariant.gep303, i64 13
  %i.ll = insertelement <16 x ptr> %i.lk, ptr %invariant.gep301, i64 14
  %i.lm = insertelement <16 x ptr> %i.ll, ptr %invariant.gep299, i64 15
  %i.ln = insertelement <16 x ptr> poison, ptr %i.ja, i64 0
  %i.lo = shufflevector <16 x ptr> %i.ln, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.lp = icmp ult <16 x ptr> %i.lm, %i.lo
  %i.lq = and <16 x i1> %i.kw, %i.lp
  %i.lr = bitcast <16 x i1> %i.lq to i16
  %.not851 = icmp eq i16 %i.lr, 0
  br i1 %.not851, label %vector.ph656, label %scalar.ph590.preheader

vector.ph656:                                     ; preds = %vector.memcheck592
  %n.vec657 = and i64 %wide.trip.count272, 2147483644 ; 3 uses
  %i.ls = load float, ptr %i.ho, align 4, !tbaa !18, !alias.scope !184
  %broadcast.splatinsert662 = insertelement <4 x float> poison, float %i.ls, i64 0
  %broadcast.splat663 = shufflevector <4 x float> %broadcast.splatinsert662, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lt = load float, ptr %i.hs, align 4, !tbaa !18, !alias.scope !185
  %broadcast.splatinsert665 = insertelement <4 x float> poison, float %i.lt, i64 0
  %broadcast.splat666 = shufflevector <4 x float> %broadcast.splatinsert665, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lu = load float, ptr %i.hw, align 4, !tbaa !18, !alias.scope !186
  %broadcast.splatinsert668 = insertelement <4 x float> poison, float %i.lu, i64 0
  %broadcast.splat669 = shufflevector <4 x float> %broadcast.splatinsert668, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lv = load float, ptr %i.ia, align 4, !tbaa !18, !alias.scope !187
  %broadcast.splatinsert671 = insertelement <4 x float> poison, float %i.lv, i64 0
  %broadcast.splat672 = shufflevector <4 x float> %broadcast.splatinsert671, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lw = load float, ptr %i.ie, align 4, !tbaa !18, !alias.scope !188
  %broadcast.splatinsert674 = insertelement <4 x float> poison, float %i.lw, i64 0
  %broadcast.splat675 = shufflevector <4 x float> %broadcast.splatinsert674, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lx = load float, ptr %i.ii, align 4, !tbaa !18, !alias.scope !189
  %broadcast.splatinsert677 = insertelement <4 x float> poison, float %i.lx, i64 0
  %broadcast.splat678 = shufflevector <4 x float> %broadcast.splatinsert677, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ly = load float, ptr %i.im, align 4, !tbaa !18, !alias.scope !190
  %broadcast.splatinsert680 = insertelement <4 x float> poison, float %i.ly, i64 0
  %broadcast.splat681 = shufflevector <4 x float> %broadcast.splatinsert680, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lz = load float, ptr %i.ip, align 4, !tbaa !18, !alias.scope !191
  %broadcast.splatinsert683 = insertelement <4 x float> poison, float %i.lz, i64 0
  %broadcast.splat684 = shufflevector <4 x float> %broadcast.splatinsert683, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body658

vector.body658:                                   ; preds = %vector.body658, %vector.ph656
  %index659 = phi i64 [ 0, %vector.ph656 ], [ %index.next685, %vector.body658 ] ; 10 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index659 ; 2 uses
  %wide.load660 = load <4 x float>, ptr %i.ma, align 4, !tbaa !18, !alias.scope !192, !noalias !193
  %i.mb = getelementptr [4 x i8], ptr %invariant.gep299, i64 %index659
  %wide.load661 = load <4 x float>, ptr %i.mb, align 4, !tbaa !18, !alias.scope !194
  %i.mc = fmul <4 x float> %broadcast.splat663, %wide.load661
  %i.md = fadd <4 x float> %wide.load660, %i.mc
  %i.me = getelementptr [4 x i8], ptr %invariant.gep301, i64 %index659
  %wide.load664 = load <4 x float>, ptr %i.me, align 4, !tbaa !18, !alias.scope !195
  %i.mf = fmul <4 x float> %broadcast.splat666, %wide.load664
  %i.mg = fadd <4 x float> %i.md, %i.mf
  %i.mh = getelementptr [4 x i8], ptr %invariant.gep303, i64 %index659
  %wide.load667 = load <4 x float>, ptr %i.mh, align 4, !tbaa !18, !alias.scope !196
  %i.mi = fmul <4 x float> %broadcast.splat669, %wide.load667
  %i.mj = fadd <4 x float> %i.mg, %i.mi
  %i.mk = getelementptr [4 x i8], ptr %invariant.gep305, i64 %index659
  %wide.load670 = load <4 x float>, ptr %i.mk, align 4, !tbaa !18, !alias.scope !197
  %i.ml = fmul <4 x float> %broadcast.splat672, %wide.load670
  %i.mm = fadd <4 x float> %i.mj, %i.ml
  %i.mn = getelementptr [4 x i8], ptr %invariant.gep307, i64 %index659
  %wide.load673 = load <4 x float>, ptr %i.mn, align 4, !tbaa !18, !alias.scope !198
  %i.mo = fmul <4 x float> %broadcast.splat675, %wide.load673
  %i.mp = fadd <4 x float> %i.mm, %i.mo
  %i.mq = getelementptr [4 x i8], ptr %invariant.gep309, i64 %index659
  %wide.load676 = load <4 x float>, ptr %i.mq, align 4, !tbaa !18, !alias.scope !199
  %i.mr = fmul <4 x float> %broadcast.splat678, %wide.load676
  %i.ms = fadd <4 x float> %i.mp, %i.mr
  %i.mt = getelementptr [4 x i8], ptr %invariant.gep311, i64 %index659
  %wide.load679 = load <4 x float>, ptr %i.mt, align 4, !tbaa !18, !alias.scope !200
  %i.mu = fmul <4 x float> %broadcast.splat681, %wide.load679
  %i.mv = fadd <4 x float> %i.ms, %i.mu
  %i.mw = getelementptr [4 x i8], ptr %invariant.gep313, i64 %index659
  %wide.load682 = load <4 x float>, ptr %i.mw, align 4, !tbaa !18, !alias.scope !201
  %i.mx = fmul <4 x float> %broadcast.splat684, %wide.load682
  %i.my = fadd <4 x float> %i.mv, %i.mx
  store <4 x float> %i.my, ptr %i.ma, align 4, !tbaa !18, !alias.scope !192, !noalias !193
  %index.next685 = add nuw i64 %index659, 4       ; 2 uses
  %i.mz = icmp eq i64 %index.next685, %n.vec657
  br i1 %i.mz, label %middle.block686, label %vector.body658, !llvm.loop !140

middle.block686:                                  ; preds = %vector.body658
  %cmp.n687 = icmp eq i64 %n.vec657, %wide.trip.count272
  br i1 %cmp.n687, label %.loopexit, label %scalar.ph590.preheader

scalar.ph590.preheader:                           ; preds = %vector.memcheck592, %.lr.ph252, %middle.block686
  %indvars.iv269.ph = phi i64 [ 0, %vector.memcheck592 ], [ 0, %.lr.ph252 ], [ %n.vec657, %middle.block686 ]
  br label %scalar.ph590

scalar.ph590:                                     ; preds = %scalar.ph590.preheader, %scalar.ph590
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %scalar.ph590 ], [ %indvars.iv269.ph, %scalar.ph590.preheader ] ; 10 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv269 ; 2 uses
  %i.nb = load float, ptr %i.na, align 4, !tbaa !18
  %i.nc = load float, ptr %i.ho, align 4, !tbaa !18
  %gep300 = getelementptr [4 x i8], ptr %invariant.gep299, i64 %indvars.iv269
  %i.nd = load float, ptr %gep300, align 4, !tbaa !18
  %i.ne = fmul float %i.nc, %i.nd
  %i.nf = fadd float %i.nb, %i.ne
  %i.ng = load float, ptr %i.hs, align 4, !tbaa !18
  %gep302 = getelementptr [4 x i8], ptr %invariant.gep301, i64 %indvars.iv269
  %i.nh = load float, ptr %gep302, align 4, !tbaa !18
  %i.ni = fmul float %i.ng, %i.nh
  %i.nj = fadd float %i.nf, %i.ni
  %i.nk = load float, ptr %i.hw, align 4, !tbaa !18
  %gep304 = getelementptr [4 x i8], ptr %invariant.gep303, i64 %indvars.iv269
  %i.nl = load float, ptr %gep304, align 4, !tbaa !18
  %i.nm = fmul float %i.nk, %i.nl
  %i.nn = fadd float %i.nj, %i.nm
  %i.no = load float, ptr %i.ia, align 4, !tbaa !18
  %gep306 = getelementptr [4 x i8], ptr %invariant.gep305, i64 %indvars.iv269
  %i.np = load float, ptr %gep306, align 4, !tbaa !18
  %i.nq = fmul float %i.no, %i.np
  %i.nr = fadd float %i.nn, %i.nq
  %i.ns = load float, ptr %i.ie, align 4, !tbaa !18
  %gep308 = getelementptr [4 x i8], ptr %invariant.gep307, i64 %indvars.iv269
  %i.nt = load float, ptr %gep308, align 4, !tbaa !18
  %i.nu = fmul float %i.ns, %i.nt
  %i.nv = fadd float %i.nr, %i.nu
  %i.nw = load float, ptr %i.ii, align 4, !tbaa !18
  %gep310 = getelementptr [4 x i8], ptr %invariant.gep309, i64 %indvars.iv269
  %i.nx = load float, ptr %gep310, align 4, !tbaa !18
  %i.ny = fmul float %i.nw, %i.nx
  %i.nz = fadd float %i.nv, %i.ny
  %i.oa = load float, ptr %i.im, align 4, !tbaa !18
  %gep312 = getelementptr [4 x i8], ptr %invariant.gep311, i64 %indvars.iv269
  %i.ob = load float, ptr %gep312, align 4, !tbaa !18
  %i.oc = fmul float %i.oa, %i.ob
  %i.od = fadd float %i.nz, %i.oc
  %i.oe = load float, ptr %i.ip, align 4, !tbaa !18
  %gep314 = getelementptr [4 x i8], ptr %invariant.gep313, i64 %indvars.iv269
  %i.of = load float, ptr %gep314, align 4, !tbaa !18
  %i.og = fmul float %i.oe, %i.of
  %i.oh = fadd float %i.od, %i.og
  store float %i.oh, ptr %i.na, align 4, !tbaa !18
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count272
  br i1 %exitcond273.not, label %.loopexit, label %scalar.ph590, !llvm.loop !141

.loopexit:                                        ; preds = %scalar.ph590, %middle.block686, %.loopexit242
  %i.oi = add nsw i32 %i.hj, 15
  %i.oj = icmp slt i32 %i.oi, %2
  %or.cond257 = and i1 %i.oj, %i.c
  br i1 %or.cond257, label %.preheader.preheader, label %._crit_edge256.split

.preheader.preheader:                             ; preds = %.loopexit
  %narrow = add nsw i32 %i.hj, 15
  %i.ok = zext i32 %narrow to i64                 ; 20 uses
  %i.ol = sext i32 %3 to i64                      ; 48 uses
  %i.om = zext i32 %2 to i64                      ; 2 uses
  %wide.trip.count277 = zext nneg i32 %0 to i64   ; 4 uses
  %i.on = shl nuw nsw i64 %wide.trip.count277, 2  ; 17 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.on  ; 2 uses
  %i.oo = shl nuw nsw i64 %i.ok, 2                ; 17 uses
  %i.op = getelementptr i8, ptr %4, i64 %i.oo
  %scevgep690 = getelementptr i8, ptr %i.op, i64 -60
  %i.oq = add nuw nsw i64 %i.ok, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %i.oq, i64 %i.om)
  %i.or = xor i64 %i.ok, -1
  %i.os = add nsw i64 %umax, %i.or
  %i.ot = shl nsw i64 %i.os, 2
  %i.ou = and i64 %i.ot, -64                      ; 16 uses
  %i.ov = add nsw i64 %i.ou, %i.oo                ; 2 uses
  %i.ow = getelementptr i8, ptr %4, i64 %i.ov
  %scevgep691 = getelementptr i8, ptr %i.ow, i64 4
  %i.ox = mul nsw i64 %i.ol, %i.ok
  %i.oy = shl i64 %i.ox, 2
  %scevgep692 = getelementptr i8, ptr %5, i64 %i.oy
  %i.oz = mul i64 %i.ov, %i.ol
  %i.pa = getelementptr i8, ptr %5, i64 %i.oz
  %scevgep693 = getelementptr i8, ptr %i.pa, i64 %i.on
  %i.pb = add nuw nsw i64 %i.ok, 4611686018427387903
  %i.pc = mul i64 %i.pb, %i.ol
  %i.pd = shl i64 %i.pc, 2
  %scevgep694 = getelementptr i8, ptr %5, i64 %i.pd
  %i.pe = add nsw i64 %i.ou, %i.oo
  %i.pf = add i64 %i.pe, -4
  %i.pg = mul i64 %i.pf, %i.ol
  %i.ph = getelementptr i8, ptr %5, i64 %i.pg
  %scevgep695 = getelementptr i8, ptr %i.ph, i64 %i.on
end_hunk_0
