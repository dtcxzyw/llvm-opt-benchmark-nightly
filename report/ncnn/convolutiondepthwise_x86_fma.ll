Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86_fma?download=true
inline.NumInlined: 225
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4ncnnL15convdw3x3s1_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
  %scevgep274 = getelementptr i8, ptr %i.l, i64 %i.aw
  %i.ax = and i32 %i.al, -2
  %i.ay = add nuw i32 %i.ax, 2                    ; 2 uses
  %i.az = add nsw i32 %i.j, 1
  %i.ba = icmp sgt i32 %i.s, 0
  %i.bb = sext i32 %i.s to i64                    ; 3 uses
  %i.bc = mul i64 %i.ap, %i.bb
  %i.bd = icmp sgt i32 %i.s, 0
  %i.be = add i32 %i.s, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2                ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 12               ; 3 uses
  %i.bi = mul nsw i64 %i.aj, 36
  %i.bj = add i32 %i.s, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2                ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, 4                ; 2 uses
  %i.bn = add nuw nsw i64 %i.bl, 12               ; 4 uses
  %i.bo = mul nsw i64 %i.aj, 36
  %i.bp = getelementptr i8, ptr %i.r, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 36
  %i.br = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bs = getelementptr i8, ptr %i.br, i64 36
  %i.bt = zext nneg i32 %i.s to i64               ; 2 uses
  %min.iters.check412 = icmp ult i32 %i.s, 8
  %n.vec414 = and i64 %i.bt, 2147483640           ; 4 uses
  %i.bu = trunc nuw nsw i64 %n.vec414 to i32
  %i.bv = sub nsw i32 %i.s, %i.bu
  %i.bw = shl nuw nsw i64 %n.vec414, 2            ; 6 uses
  %cmp.n457 = icmp eq i64 %n.vec414, %i.bt
  %i.bx = zext nneg i32 %i.s to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  %n.vec = and i64 %i.bx, 2147483640              ; 4 uses
  %i.by = trunc nuw nsw i64 %n.vec to i32
  %i.bz = sub nsw i32 %i.s, %i.by
  %i.ca = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bx
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv278 = phi i64 [ %i.aj, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %indvars.iv275 = phi ptr [ %scevgep274, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep276, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv272 = phi ptr [ %scevgep271, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep273, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv269 = phi ptr [ %scevgep268, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep270, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi ptr [ %scevgep, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep267, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.cb = mul nuw nsw i64 %indvar, 36
  %scevgep367 = getelementptr i8, ptr %i.bq, i64 %i.cb ; 2 uses
  %i.cc = mul nuw nsw i64 %indvar, 36
  %scevgep313 = getelementptr i8, ptr %i.bs, i64 %i.cc
  %.reass = mul i64 %factor.op.mul, %indvars.iv278
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  br i1 %.not170, label %_ZN4ncnn3MatD2Ev.exit171, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv278
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit171

_ZN4ncnn3MatD2Ev.exit171:                         ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.cg = phi fast float [ %i.cf, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit ] ; 5 uses
  %.idx = mul i64 %indvars.iv278, 36
  %i.ch = getelementptr i8, ptr %i.r, i64 %.idx   ; 21 uses
  %.reass249 = mul i64 %factor.op.mul248, %indvars.iv278
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass249 ; 5 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.aa ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ac ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 12 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 3 uses
  br i1 %i.ag, label %.lr.ph219, label %.preheader

.lr.ph219:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit171
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 20 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 28 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 2 uses
  br i1 %i.ba, label %.lr.ph.us.preheader, label %.lr.ph219.split.preheader

.lr.ph219.split.preheader:                        ; preds = %.lr.ph219
  %scevgep277 = getelementptr i8, ptr %indvars.iv275, i64 %i.bc
  br label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph219
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.y
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ae
  %broadcast.splatinsert415 = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splat416 = shufflevector <8 x float> %broadcast.splatinsert415, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0150218.us = phi i32 [ %i.ib, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0151217.us = phi ptr [ %i.hy, %._crit_edge.us ], [ %i.cu, %.lr.ph.us.preheader ] ; 7 uses
  %.0153216.us = phi ptr [ %i.hx, %._crit_edge.us ], [ %i.ck, %.lr.ph.us.preheader ] ; 7 uses
  %.0155215.us = phi ptr [ %i.hw, %._crit_edge.us ], [ %i.cj, %.lr.ph.us.preheader ] ; 7 uses
  %.0159214.us = phi ptr [ %i.hv, %._crit_edge.us ], [ %i.ci, %.lr.ph.us.preheader ] ; 7 uses
  %.0163213.us = phi ptr [ %i.ia, %._crit_edge.us ], [ %i.ct, %.lr.ph.us.preheader ] ; 11 uses
  %.0165212.us = phi ptr [ %i.hz, %._crit_edge.us ], [ %i.cd, %.lr.ph.us.preheader ] ; 11 uses
  br i1 %min.iters.check412, label %scalar.ph411.preheader, label %vector.memcheck360

vector.memcheck360:                               ; preds = %.lr.ph.us
  %scevgep361 = getelementptr i8, ptr %.0165212.us, i64 %i.bm ; 6 uses
  %scevgep362 = getelementptr i8, ptr %.0163213.us, i64 %i.bm ; 6 uses
  %scevgep363 = getelementptr i8, ptr %.0151217.us, i64 %i.bn ; 2 uses
  %scevgep364 = getelementptr i8, ptr %.0153216.us, i64 %i.bn ; 2 uses
  %scevgep365 = getelementptr i8, ptr %.0155215.us, i64 %i.bn ; 2 uses
  %scevgep366 = getelementptr i8, ptr %.0159214.us, i64 %i.bn ; 2 uses
  %bound0368 = icmp ult ptr %.0165212.us, %scevgep362
  %bound1369 = icmp ult ptr %.0163213.us, %scevgep361
  %found.conflict370 = and i1 %bound0368, %bound1369
  %bound0371 = icmp ult ptr %.0165212.us, %scevgep363
  %bound1372 = icmp ult ptr %.0151217.us, %scevgep361
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %found.conflict370, %found.conflict373
  %bound0375 = icmp ult ptr %.0165212.us, %scevgep364
  %bound1376 = icmp ult ptr %.0153216.us, %scevgep361
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx378 = or i1 %conflict.rdx374, %found.conflict377
  %bound0379 = icmp ult ptr %.0165212.us, %scevgep365
  %bound1380 = icmp ult ptr %.0155215.us, %scevgep361
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx382 = or i1 %conflict.rdx378, %found.conflict381
  %bound0383 = icmp ult ptr %.0165212.us, %scevgep366
  %bound1384 = icmp ult ptr %.0159214.us, %scevgep361
  %found.conflict385 = and i1 %bound0383, %bound1384
  %conflict.rdx386 = or i1 %conflict.rdx382, %found.conflict385
  %bound0387 = icmp ult ptr %.0165212.us, %scevgep367
  %bound1388 = icmp ult ptr %i.ch, %scevgep361
  %found.conflict389 = and i1 %bound0387, %bound1388
  %conflict.rdx390 = or i1 %conflict.rdx386, %found.conflict389
  %bound0391 = icmp ult ptr %.0163213.us, %scevgep363
  %bound1392 = icmp ult ptr %.0151217.us, %scevgep362
  %found.conflict393 = and i1 %bound0391, %bound1392
  %conflict.rdx394 = or i1 %conflict.rdx390, %found.conflict393
  %bound0395 = icmp ult ptr %.0163213.us, %scevgep364
  %bound1396 = icmp ult ptr %.0153216.us, %scevgep362
  %found.conflict397 = and i1 %bound0395, %bound1396
  %conflict.rdx398 = or i1 %conflict.rdx394, %found.conflict397
  %bound0399 = icmp ult ptr %.0163213.us, %scevgep365
  %bound1400 = icmp ult ptr %.0155215.us, %scevgep362
  %found.conflict401 = and i1 %bound0399, %bound1400
  %conflict.rdx402 = or i1 %conflict.rdx398, %found.conflict401
  %bound0403 = icmp ult ptr %.0163213.us, %scevgep366
  %bound1404 = icmp ult ptr %.0159214.us, %scevgep362
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx406 = or i1 %conflict.rdx402, %found.conflict405
  %bound0407 = icmp ult ptr %.0163213.us, %scevgep367
  %bound1408 = icmp ult ptr %i.ch, %scevgep362
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %conflict.rdx406, %found.conflict409
  br i1 %conflict.rdx410, label %scalar.ph411.preheader, label %vector.ph413

vector.ph413:                                     ; preds = %vector.memcheck360
  %i.cv = getelementptr i8, ptr %.0151217.us, i64 %i.bw ; 2 uses
  %i.cw = getelementptr i8, ptr %.0153216.us, i64 %i.bw ; 2 uses
  %i.cx = getelementptr i8, ptr %.0155215.us, i64 %i.bw ; 2 uses
  %i.cy = getelementptr i8, ptr %.0159214.us, i64 %i.bw ; 2 uses
  %i.cz = getelementptr i8, ptr %.0163213.us, i64 %i.bw ; 2 uses
  %i.da = getelementptr i8, ptr %.0165212.us, i64 %i.bw ; 2 uses
  %i.db = load float, ptr %i.ch, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert426 = insertelement <8 x float> poison, float %i.db, i64 0
  %broadcast.splat427 = shufflevector <8 x float> %broadcast.splatinsert426, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dc = load float, ptr %i.cn, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert429 = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat430 = shufflevector <8 x float> %broadcast.splatinsert429, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dd = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert432 = insertelement <8 x float> poison, float %i.dd, i64 0
  %broadcast.splat433 = shufflevector <8 x float> %broadcast.splatinsert432, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.de = load float, ptr %i.cl, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert435 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat436 = shufflevector <8 x float> %broadcast.splatinsert435, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.df = load float, ptr %i.cp, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert438 = insertelement <8 x float> poison, float %i.df, i64 0
  %broadcast.splat439 = shufflevector <8 x float> %broadcast.splatinsert438, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dg = load float, ptr %i.cq, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert441 = insertelement <8 x float> poison, float %i.dg, i64 0
  %broadcast.splat442 = shufflevector <8 x float> %broadcast.splatinsert441, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dh = load float, ptr %i.cm, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert444 = insertelement <8 x float> poison, float %i.dh, i64 0
  %broadcast.splat445 = shufflevector <8 x float> %broadcast.splatinsert444, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.di = load float, ptr %i.cr, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert447 = insertelement <8 x float> poison, float %i.di, i64 0
  %broadcast.splat448 = shufflevector <8 x float> %broadcast.splatinsert447, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dj = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert450 = insertelement <8 x float> poison, float %i.dj, i64 0
  %broadcast.splat451 = shufflevector <8 x float> %broadcast.splatinsert450, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph413
  %index418 = phi i64 [ 0, %vector.ph413 ], [ %index.next455, %vector.body417 ] ; 2 uses
  %i.dk = shl i64 %index418, 2                    ; 6 uses
  %next.gep419 = getelementptr i8, ptr %.0151217.us, i64 %i.dk ; 3 uses
  %next.gep420 = getelementptr i8, ptr %.0153216.us, i64 %i.dk ; 3 uses
  %next.gep421 = getelementptr i8, ptr %.0155215.us, i64 %i.dk ; 3 uses
  %next.gep422 = getelementptr i8, ptr %.0159214.us, i64 %i.dk ; 3 uses
  %next.gep423 = getelementptr i8, ptr %.0163213.us, i64 %i.dk
  %next.gep424 = getelementptr i8, ptr %.0165212.us, i64 %i.dk
  %wide.load425 = load <8 x float>, ptr %next.gep422, align 4, !tbaa !45, !alias.scope !303
  %i.dl = fmul fast <8 x float> %broadcast.splat427, %wide.load425
  %i.dm = fadd fast <8 x float> %broadcast.splat416, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %next.gep422, i64 4
  %wide.load428 = load <8 x float>, ptr %i.dn, align 4, !tbaa !45, !alias.scope !303
  %i.do = fmul fast <8 x float> %broadcast.splat430, %wide.load428
  %i.dp = fadd fast <8 x float> %i.do, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %next.gep422, i64 8
  %wide.load431 = load <8 x float>, ptr %i.dq, align 4, !tbaa !45, !alias.scope !303
  %i.dr = fmul fast <8 x float> %broadcast.splat433, %wide.load431
  %i.ds = fadd fast <8 x float> %i.dp, %i.dr
  %wide.load434 = load <8 x float>, ptr %next.gep421, align 4, !tbaa !45, !alias.scope !304 ; 2 uses
  %i.dt = fmul fast <8 x float> %broadcast.splat436, %wide.load434
  %i.du = fadd fast <8 x float> %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %next.gep421, i64 4
  %wide.load437 = load <8 x float>, ptr %i.dv, align 4, !tbaa !45, !alias.scope !304 ; 2 uses
  %i.dw = fmul fast <8 x float> %broadcast.splat439, %wide.load437
  %i.dx = fadd fast <8 x float> %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %next.gep421, i64 8
  %wide.load440 = load <8 x float>, ptr %i.dy, align 4, !tbaa !45, !alias.scope !304 ; 2 uses
  %i.dz = fmul fast <8 x float> %broadcast.splat442, %wide.load440
  %i.ea = fadd fast <8 x float> %i.dx, %i.dz
  %wide.load443 = load <8 x float>, ptr %next.gep420, align 4, !tbaa !45, !alias.scope !305 ; 2 uses
  %i.eb = fmul fast <8 x float> %broadcast.splat445, %wide.load443
  %i.ec = fadd fast <8 x float> %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %next.gep420, i64 4
  %wide.load446 = load <8 x float>, ptr %i.ed, align 4, !tbaa !45, !alias.scope !305 ; 2 uses
  %i.ee = fmul fast <8 x float> %broadcast.splat448, %wide.load446
  %i.ef = fadd fast <8 x float> %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %next.gep420, i64 8
  %wide.load449 = load <8 x float>, ptr %i.eg, align 4, !tbaa !45, !alias.scope !305 ; 2 uses
  %i.eh = fmul fast <8 x float> %broadcast.splat451, %wide.load449
  %i.ei = fadd fast <8 x float> %i.ef, %i.eh
  %i.ej = fmul fast <8 x float> %wide.load434, %broadcast.splat427
  %i.ek = fadd fast <8 x float> %broadcast.splat416, %i.ej
  %i.el = fmul fast <8 x float> %wide.load437, %broadcast.splat430
  %i.em = fadd fast <8 x float> %i.el, %i.ek
  %i.en = fmul fast <8 x float> %wide.load440, %broadcast.splat433
  %i.eo = fadd fast <8 x float> %i.em, %i.en
  %i.ep = fmul fast <8 x float> %wide.load443, %broadcast.splat436
  %i.eq = fadd fast <8 x float> %i.eo, %i.ep
  %i.er = fmul fast <8 x float> %wide.load446, %broadcast.splat439
  %i.es = fadd fast <8 x float> %i.eq, %i.er
  %i.et = fmul fast <8 x float> %wide.load449, %broadcast.splat442
  %i.eu = fadd fast <8 x float> %i.es, %i.et
  %wide.load452 = load <8 x float>, ptr %next.gep419, align 4, !tbaa !45, !alias.scope !306
  %i.ev = fmul fast <8 x float> %wide.load452, %broadcast.splat445
  %i.ew = fadd fast <8 x float> %i.eu, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %next.gep419, i64 4
  %wide.load453 = load <8 x float>, ptr %i.ex, align 4, !tbaa !45, !alias.scope !306
  %i.ey = fmul fast <8 x float> %wide.load453, %broadcast.splat448
  %i.ez = fadd fast <8 x float> %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %next.gep419, i64 8
  %wide.load454 = load <8 x float>, ptr %i.fa, align 4, !tbaa !45, !alias.scope !306
  %i.fb = fmul fast <8 x float> %wide.load454, %broadcast.splat451
  %i.fc = fadd fast <8 x float> %i.ez, %i.fb
  store <8 x float> %i.ei, ptr %next.gep424, align 4, !tbaa !45, !alias.scope !307, !noalias !308
  store <8 x float> %i.fc, ptr %next.gep423, align 4, !tbaa !45, !alias.scope !309, !noalias !310
  %index.next455 = add nuw i64 %index418, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next455, %n.vec414
  br i1 %i.fd, label %middle.block456, label %vector.body417, !llvm.loop !288

middle.block456:                                  ; preds = %vector.body417
  br i1 %cmp.n457, label %._crit_edge.us, label %scalar.ph411.preheader

scalar.ph411.preheader:                           ; preds = %vector.memcheck360, %.lr.ph.us, %middle.block456
  %.0149206.us.ph = phi i32 [ %i.s, %vector.memcheck360 ], [ %i.s, %.lr.ph.us ], [ %i.bv, %middle.block456 ]
  %.1152205.us.ph = phi ptr [ %.0151217.us, %vector.memcheck360 ], [ %.0151217.us, %.lr.ph.us ], [ %i.cv, %middle.block456 ]
  %.1154204.us.ph = phi ptr [ %.0153216.us, %vector.memcheck360 ], [ %.0153216.us, %.lr.ph.us ], [ %i.cw, %middle.block456 ]
  %.1156203.us.ph = phi ptr [ %.0155215.us, %vector.memcheck360 ], [ %.0155215.us, %.lr.ph.us ], [ %i.cx, %middle.block456 ]
  %.1160202.us.ph = phi ptr [ %.0159214.us, %vector.memcheck360 ], [ %.0159214.us, %.lr.ph.us ], [ %i.cy, %middle.block456 ]
  %.1164201.us.ph = phi ptr [ %.0163213.us, %vector.memcheck360 ], [ %.0163213.us, %.lr.ph.us ], [ %i.cz, %middle.block456 ]
  %.1166200.us.ph = phi ptr [ %.0165212.us, %vector.memcheck360 ], [ %.0165212.us, %.lr.ph.us ], [ %i.da, %middle.block456 ]
  br label %scalar.ph411

scalar.ph411:                                     ; preds = %scalar.ph411.preheader, %scalar.ph411
  %.0149206.us = phi i32 [ %i.ht, %scalar.ph411 ], [ %.0149206.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1152205.us = phi ptr [ %i.hj, %scalar.ph411 ], [ %.1152205.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1154204.us = phi ptr [ %i.gk, %scalar.ph411 ], [ %.1154204.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1156203.us = phi ptr [ %i.fw, %scalar.ph411 ], [ %.1156203.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1160202.us = phi ptr [ %i.fi, %scalar.ph411 ], [ %.1160202.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1164201.us = phi ptr [ %i.hs, %scalar.ph411 ], [ %.1164201.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1166200.us = phi ptr [ %i.hr, %scalar.ph411 ], [ %.1166200.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %i.fe = load float, ptr %.1160202.us, align 4, !tbaa !45
  %i.ff = load float, ptr %i.ch, align 4, !tbaa !45 ; 2 uses
  %i.fg = fmul fast float %i.ff, %i.fe
  %i.fh = fadd fast float %i.cg, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 4 ; 3 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !45
  %i.fk = load float, ptr %i.cn, align 4, !tbaa !45 ; 2 uses
  %i.fl = fmul fast float %i.fk, %i.fj
  %i.fm = fadd fast float %i.fl, %i.fh
  %i.fn = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 8
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !45
  %i.fp = load float, ptr %i.co, align 4, !tbaa !45 ; 2 uses
  %i.fq = fmul fast float %i.fp, %i.fo
  %i.fr = fadd fast float %i.fm, %i.fq
  %i.fs = load float, ptr %.1156203.us, align 4, !tbaa !45 ; 2 uses
  %i.ft = load float, ptr %i.cl, align 4, !tbaa !45 ; 2 uses
  %i.fu = fmul fast float %i.ft, %i.fs
  %i.fv = fadd fast float %i.fr, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 4 ; 3 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !45 ; 2 uses
  %i.fy = load float, ptr %i.cp, align 4, !tbaa !45 ; 2 uses
  %i.fz = fmul fast float %i.fy, %i.fx
  %i.ga = fadd fast float %i.fv, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 8
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !45 ; 2 uses
  %i.gd = load float, ptr %i.cq, align 4, !tbaa !45 ; 2 uses
  %i.ge = fmul fast float %i.gd, %i.gc
  %i.gf = fadd fast float %i.ga, %i.ge
  %i.gg = load float, ptr %.1154204.us, align 4, !tbaa !45 ; 2 uses
  %i.gh = load float, ptr %i.cm, align 4, !tbaa !45 ; 2 uses
  %i.gi = fmul fast float %i.gh, %i.gg
  %i.gj = fadd fast float %i.gf, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %.1154204.us, i64 4 ; 3 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !45 ; 2 uses
  %i.gm = load float, ptr %i.cr, align 4, !tbaa !45 ; 2 uses
  %i.gn = fmul fast float %i.gm, %i.gl
  %i.go = fadd fast float %i.gj, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %.1154204.us, i64 8
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !45 ; 2 uses
  %i.gr = load float, ptr %i.cs, align 4, !tbaa !45 ; 2 uses
  %i.gs = fmul fast float %i.gr, %i.gq
  %i.gt = fadd fast float %i.go, %i.gs
  %i.gu = fmul fast float %i.fs, %i.ff
  %i.gv = fadd fast float %i.cg, %i.gu
  %i.gw = fmul fast float %i.fx, %i.fk
  %i.gx = fadd fast float %i.gw, %i.gv
  %i.gy = fmul fast float %i.gc, %i.fp
  %i.gz = fadd fast float %i.gx, %i.gy
  %i.ha = fmul fast float %i.gg, %i.ft
  %i.hb = fadd fast float %i.gz, %i.ha
  %i.hc = fmul fast float %i.gl, %i.fy
  %i.hd = fadd fast float %i.hb, %i.hc
  %i.he = fmul fast float %i.gq, %i.gd
  %i.hf = fadd fast float %i.hd, %i.he
  %i.hg = load float, ptr %.1152205.us, align 4, !tbaa !45
  %i.hh = fmul fast float %i.hg, %i.gh
  %i.hi = fadd fast float %i.hf, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 4 ; 3 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !45
  %i.hl = fmul fast float %i.hk, %i.gm
  %i.hm = fadd fast float %i.hi, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 8
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !45
  %i.hp = fmul fast float %i.ho, %i.gr
  %i.hq = fadd fast float %i.hm, %i.hp
  store float %i.gt, ptr %.1166200.us, align 4, !tbaa !45
  store float %i.hq, ptr %.1164201.us, align 4, !tbaa !45
  %i.hr = getelementptr inbounds nuw i8, ptr %.1166200.us, i64 4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.1164201.us, i64 4 ; 2 uses
  %i.ht = add nsw i32 %.0149206.us, -1
  %i.hu = icmp sgt i32 %.0149206.us, 1
  br i1 %i.hu, label %scalar.ph411, label %._crit_edge.us, !llvm.loop !289

._crit_edge.us:                                   ; preds = %scalar.ph411, %middle.block456
  %.lcssa303 = phi ptr [ %i.cy, %middle.block456 ], [ %i.fi, %scalar.ph411 ]
  %.lcssa302 = phi ptr [ %i.cx, %middle.block456 ], [ %i.fw, %scalar.ph411 ]
  %.lcssa301 = phi ptr [ %i.cw, %middle.block456 ], [ %i.gk, %scalar.ph411 ]
  %.lcssa300 = phi ptr [ %i.cv, %middle.block456 ], [ %i.hj, %scalar.ph411 ]
  %.lcssa299 = phi ptr [ %i.da, %middle.block456 ], [ %i.hr, %scalar.ph411 ]
  %.lcssa = phi ptr [ %i.cz, %middle.block456 ], [ %i.hs, %scalar.ph411 ]
  %i.hv = getelementptr inbounds [4 x i8], ptr %.lcssa303, i64 %i.ai ; 2 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %.lcssa302, i64 %i.ai ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %.lcssa301, i64 %i.ai ; 2 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %.lcssa300, i64 %i.ai
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.lcssa299, i64 %i.bb ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.bb
  %i.ib = add nuw nsw i32 %.0150218.us, 2         ; 2 uses
  %i.ic = or disjoint i32 %i.ib, 1
  %i.id = icmp slt i32 %i.ic, %i.af
  br i1 %i.id, label %.lr.ph.us, label %.preheader, !llvm.loop !290

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph219.split.preheader, %_ZN4ncnn3MatD2Ev.exit171
  %.0165.lcssa = phi ptr [ %i.cd, %_ZN4ncnn3MatD2Ev.exit171 ], [ %scevgep277, %.lr.ph219.split.preheader ], [ %i.hz, %._crit_edge.us ]
  %.0159.lcssa = phi ptr [ %i.ci, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv, %.lr.ph219.split.preheader ], [ %i.hv, %._crit_edge.us ]
  %.0155.lcssa = phi ptr [ %i.cj, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv269, %.lr.ph219.split.preheader ], [ %i.hw, %._crit_edge.us ]
  %.0153.lcssa = phi ptr [ %i.ck, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv272, %.lr.ph219.split.preheader ], [ %i.hx, %._crit_edge.us ]
  %.0150.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit171 ], [ %i.ay, %.lr.ph219.split.preheader ], [ %i.ay, %._crit_edge.us ] ; 2 uses
  %i.ie = icmp slt i32 %.0150.lcssa, %i.af
  br i1 %i.ie, label %.lr.ph244, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph244:                                        ; preds = %.preheader
  %i.if = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 2 uses
  br i1 %i.bd, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph244
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.1243 = phi i32 [ %i.lc, %._crit_edge ], [ %.0150.lcssa, %.lr.ph.preheader ]
  %.2242 = phi ptr [ %i.lb, %._crit_edge ], [ %.0153.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2157241 = phi ptr [ %i.la, %._crit_edge ], [ %.0155.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2161240 = phi ptr [ %i.kz, %._crit_edge ], [ %.0159.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2167239 = phi ptr [ %.lcssa308, %._crit_edge ], [ %.0165.lcssa, %.lr.ph.preheader ] ; 9 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.il = getelementptr i8, ptr %.2167239, i64 %i.bg
  %scevgep309 = getelementptr i8, ptr %i.il, i64 4 ; 4 uses
  %scevgep310 = getelementptr i8, ptr %.2242, i64 %i.bh
  %scevgep311 = getelementptr i8, ptr %.2157241, i64 %i.bh
  %scevgep312 = getelementptr i8, ptr %.2161240, i64 %i.bh
  %bound0 = icmp ult ptr %.2167239, %scevgep310
  %bound1 = icmp ult ptr %.2242, %scevgep309
  %found.conflict = and i1 %bound0, %bound1
  %bound0314 = icmp ult ptr %.2167239, %scevgep311
  %bound1315 = icmp ult ptr %.2157241, %scevgep309
  %found.conflict316 = and i1 %bound0314, %bound1315
  %conflict.rdx = or i1 %found.conflict, %found.conflict316
  %bound0317 = icmp ult ptr %.2167239, %scevgep312
  %bound1318 = icmp ult ptr %.2161240, %scevgep309
  %found.conflict319 = and i1 %bound0317, %bound1318
  %conflict.rdx320 = or i1 %conflict.rdx, %found.conflict319
  %bound0321 = icmp ult ptr %.2167239, %scevgep313
  %bound1322 = icmp ult ptr %i.ch, %scevgep309
  %found.conflict323 = and i1 %bound0321, %bound1322
  %conflict.rdx324 = or i1 %conflict.rdx320, %found.conflict323
  br i1 %conflict.rdx324, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.im = getelementptr i8, ptr %.2242, i64 %i.ca ; 2 uses
  %i.in = getelementptr i8, ptr %.2157241, i64 %i.ca ; 2 uses
  %i.io = getelementptr i8, ptr %.2161240, i64 %i.ca ; 2 uses
  %i.ip = getelementptr i8, ptr %.2167239, i64 %i.ca ; 2 uses
  %i.iq = load float, ptr %i.ch, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert328 = insertelement <8 x float> poison, float %i.iq, i64 0
  %broadcast.splat329 = shufflevector <8 x float> %broadcast.splatinsert328, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ir = load float, ptr %i.if, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert331 = insertelement <8 x float> poison, float %i.ir, i64 0
  %broadcast.splat332 = shufflevector <8 x float> %broadcast.splatinsert331, <8 x float> poison, <8 x i32> zeroinitializer
  %i.is = load float, ptr %i.ig, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert334 = insertelement <8 x float> poison, float %i.is, i64 0
  %broadcast.splat335 = shufflevector <8 x float> %broadcast.splatinsert334, <8 x float> poison, <8 x i32> zeroinitializer
  %i.it = load float, ptr %i.cl, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert337 = insertelement <8 x float> poison, float %i.it, i64 0
  %broadcast.splat338 = shufflevector <8 x float> %broadcast.splatinsert337, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iu = load float, ptr %i.ih, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert340 = insertelement <8 x float> poison, float %i.iu, i64 0
  %broadcast.splat341 = shufflevector <8 x float> %broadcast.splatinsert340, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iv = load float, ptr %i.ii, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert343 = insertelement <8 x float> poison, float %i.iv, i64 0
  %broadcast.splat344 = shufflevector <8 x float> %broadcast.splatinsert343, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iw = load float, ptr %i.cm, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert346 = insertelement <8 x float> poison, float %i.iw, i64 0
  %broadcast.splat347 = shufflevector <8 x float> %broadcast.splatinsert346, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ix = load float, ptr %i.ij, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert349 = insertelement <8 x float> poison, float %i.ix, i64 0
  %broadcast.splat350 = shufflevector <8 x float> %broadcast.splatinsert349, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iy = load float, ptr %i.ik, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert352 = insertelement <8 x float> poison, float %i.iy, i64 0
  %broadcast.splat353 = shufflevector <8 x float> %broadcast.splatinsert352, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iz = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.2242, i64 %i.iz ; 3 uses
  %next.gep325 = getelementptr i8, ptr %.2157241, i64 %i.iz ; 3 uses
  %next.gep326 = getelementptr i8, ptr %.2161240, i64 %i.iz ; 3 uses
  %next.gep327 = getelementptr i8, ptr %.2167239, i64 %i.iz
  %wide.load = load <8 x float>, ptr %next.gep326, align 4, !tbaa !45, !alias.scope !312
  %i.ja = fmul fast <8 x float> %broadcast.splat329, %wide.load
  %i.jb = fadd fast <8 x float> %broadcast.splat, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %next.gep326, i64 4
  %wide.load330 = load <8 x float>, ptr %i.jc, align 4, !tbaa !45, !alias.scope !312
  %i.jd = fmul fast <8 x float> %broadcast.splat332, %wide.load330
  %i.je = fadd fast <8 x float> %i.jd, %i.jb
  %i.jf = getelementptr inbounds nuw i8, ptr %next.gep326, i64 8
  %wide.load333 = load <8 x float>, ptr %i.jf, align 4, !tbaa !45, !alias.scope !312
  %i.jg = fmul fast <8 x float> %broadcast.splat335, %wide.load333
  %i.jh = fadd fast <8 x float> %i.je, %i.jg
  %wide.load336 = load <8 x float>, ptr %next.gep325, align 4, !tbaa !45, !alias.scope !313
  %i.ji = fmul fast <8 x float> %broadcast.splat338, %wide.load336
  %i.jj = fadd fast <8 x float> %i.jh, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %next.gep325, i64 4
  %wide.load339 = load <8 x float>, ptr %i.jk, align 4, !tbaa !45, !alias.scope !313
  %i.jl = fmul fast <8 x float> %broadcast.splat341, %wide.load339
  %i.jm = fadd fast <8 x float> %i.jj, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %next.gep325, i64 8
  %wide.load342 = load <8 x float>, ptr %i.jn, align 4, !tbaa !45, !alias.scope !313
  %i.jo = fmul fast <8 x float> %broadcast.splat344, %wide.load342
  %i.jp = fadd fast <8 x float> %i.jm, %i.jo
  %wide.load345 = load <8 x float>, ptr %next.gep, align 4, !tbaa !45, !alias.scope !314
  %i.jq = fmul fast <8 x float> %broadcast.splat347, %wide.load345
  %i.jr = fadd fast <8 x float> %i.jp, %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %wide.load348 = load <8 x float>, ptr %i.js, align 4, !tbaa !45, !alias.scope !314
  %i.jt = fmul fast <8 x float> %broadcast.splat350, %wide.load348
  %i.ju = fadd fast <8 x float> %i.jr, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %wide.load351 = load <8 x float>, ptr %i.jv, align 4, !tbaa !45, !alias.scope !314
  %i.jw = fmul fast <8 x float> %broadcast.splat353, %wide.load351
  %i.jx = fadd fast <8 x float> %i.ju, %i.jw
  store <8 x float> %i.jx, ptr %next.gep327, align 4, !tbaa !45, !alias.scope !315, !noalias !316
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jy = icmp eq i64 %index.next, %n.vec
  br i1 %i.jy, label %middle.block, label %vector.body, !llvm.loop !297

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.im, i64 -4
  %ind.escape354 = getelementptr i8, ptr %i.in, i64 -4
  %ind.escape355 = getelementptr i8, ptr %i.io, i64 -4
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.0148235.ph = phi i32 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph ], [ %i.bz, %middle.block ]
  %.3234.ph = phi ptr [ %.2242, %vector.memcheck ], [ %.2242, %.lr.ph ], [ %i.im, %middle.block ]
  %.3158233.ph = phi ptr [ %.2157241, %vector.memcheck ], [ %.2157241, %.lr.ph ], [ %i.in, %middle.block ]
  %.3162232.ph = phi ptr [ %.2161240, %vector.memcheck ], [ %.2161240, %.lr.ph ], [ %i.io, %middle.block ]
  %.3168231.ph = phi ptr [ %.2167239, %vector.memcheck ], [ %.2167239, %.lr.ph ], [ %i.ip, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0148235 = phi i32 [ %i.kx, %scalar.ph ], [ %.0148235.ph, %scalar.ph.preheader ] ; 2 uses
  %.3234 = phi ptr [ %i.ke, %scalar.ph ], [ %.3234.ph, %scalar.ph.preheader ] ; 4 uses
  %.3158233 = phi ptr [ %i.kd, %scalar.ph ], [ %.3158233.ph, %scalar.ph.preheader ] ; 3 uses
  %.3162232 = phi ptr [ %i.jz, %scalar.ph ], [ %.3162232.ph, %scalar.ph.preheader ] ; 4 uses
  %.3168231 = phi ptr [ %i.kw, %scalar.ph ], [ %.3168231.ph, %scalar.ph.preheader ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.3162232, i64 4
  %i.ka = getelementptr inbounds nuw i8, ptr %.3162232, i64 8
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !45
  %i.kc = load float, ptr %.3158233, align 4, !tbaa !45
  %i.kd = getelementptr inbounds nuw i8, ptr %.3158233, i64 4 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.3234, i64 4
  %i.kf = load <2 x float>, ptr %.3162232, align 4, !tbaa !45
  %i.kg = load <2 x float>, ptr %i.kd, align 4, !tbaa !45
  %i.kh = load <2 x float>, ptr %.3234, align 4, !tbaa !45
  %i.ki = load <8 x float>, ptr %i.ch, align 4, !tbaa !45
  %i.kj = insertelement <8 x float> poison, float %i.kb, i64 2
  %i.kk = insertelement <8 x float> %i.kj, float %i.kc, i64 3
  %i.kl = shufflevector <2 x float> %i.kf, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.km = shufflevector <8 x float> %i.kl, <8 x float> %i.kk, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kn = shufflevector <2 x float> %i.kg, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ko = shufflevector <8 x float> %i.km, <8 x float> %i.kn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.kp = shufflevector <2 x float> %i.kh, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kq = shufflevector <8 x float> %i.ko, <8 x float> %i.kp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.kr = fmul fast <8 x float> %i.ki, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %.3234, i64 8
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !45
  %i.ku = load float, ptr %i.ik, align 4, !tbaa !45
  %i.kv = fmul fast float %i.ku, %i.kt
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.kv, <8 x float> %i.kr)
  %op.rdx465 = fadd fast float %op.rdx, %i.cg
  store float %op.rdx465, ptr %.3168231, align 4, !tbaa !45
  %i.kw = getelementptr inbounds nuw i8, ptr %.3168231, i64 4 ; 2 uses
  %i.kx = add nsw i32 %.0148235, -1
  %i.ky = icmp sgt i32 %.0148235, 1
  br i1 %i.ky, label %scalar.ph, label %._crit_edge, !llvm.loop !298

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.3234.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.3234, %scalar.ph ]
  %.3158233.lcssa = phi ptr [ %ind.escape354, %middle.block ], [ %.3158233, %scalar.ph ]
  %.3162232.lcssa = phi ptr [ %ind.escape355, %middle.block ], [ %.3162232, %scalar.ph ]
  %.lcssa308 = phi ptr [ %i.ip, %middle.block ], [ %i.kw, %scalar.ph ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.3162232.lcssa, i64 12
  %i.la = getelementptr inbounds nuw i8, ptr %.3158233.lcssa, i64 12
  %i.lb = getelementptr inbounds nuw i8, ptr %.3234.lcssa, i64 12
  %i.lc = add nuw nsw i32 %.1243, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.lc, %i.af
  br i1 %exitcond.not, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph, !llvm.loop !299

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.lr.ph244, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv278, 1 ; 2 uses
  %scevgep267 = getelementptr i8, ptr %indvars.iv, i64 %factor.op.mul248
  %scevgep270 = getelementptr i8, ptr %indvars.iv269, i64 %factor.op.mul248
  %scevgep273 = getelementptr i8, ptr %indvars.iv272, i64 %factor.op.mul248
  %scevgep276 = getelementptr i8, ptr %indvars.iv275, i64 %factor.op.mul
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond280.not = icmp eq i32 %i.az, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond280.not, label %._crit_edge247, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge247:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge247, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL15convdw3x3s2_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not125 = icmp sgt i32 %i.k, %i.j
  br i1 %.not125, label %._crit_edge127, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !21, !noalias !330
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22, !noalias !330
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !67, !noalias !330
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !97     ; 2 uses
  %.not81 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %5, align 8, !tbaa !97     ; 2 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !21, !noalias !331
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22, !noalias !331
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67, !noalias !331
  %factor.op.mul128 = mul i64 %i.u, %i.w
  %i.x = load i32, ptr %7, align 4, !tbaa !69     ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i32 %i.x, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us, label %._crit_edge127

_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us:       ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph
  %i.ad = load i32, ptr %9, align 4, !tbaa !69    ; 7 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = load i32, ptr %10, align 4, !tbaa !69
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  br i1 %i.ae, label %_ZN4ncnn3Mat7channelEi.exit.us.us.preheader, label %._crit_edge127

_ZN4ncnn3Mat7channelEi.exit.us.us.preheader:      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us
  %i.ah = sext i32 %i.k to i64                    ; 2 uses
  %i.ai = add nsw i32 %i.j, 1
  %i.aj = add nsw i32 %i.ad, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = shl nuw nsw i64 %i.ak, 3
  %i.an = add nuw nsw i64 %i.am, 12               ; 3 uses
  %i.ao = mul nsw i64 %i.ah, 36
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 36
  %i.ar = zext nneg i32 %i.ad to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ad, 5
  %i.as = and i64 %i.ar, 3                        ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = select i1 %i.at, i64 4, i64 %i.as
  %n.vec = sub nsw i64 %i.ar, %i.au               ; 4 uses
  %i.av = trunc i64 %n.vec to i32
  %i.aw = sub i32 %i.ad, %i.av
  %i.ax = shl nsw i64 %n.vec, 3                   ; 3 uses
  %i.ay = shl nsw i64 %n.vec, 2
  br label %_ZN4ncnn3Mat7channelEi.exit.us.us
end_hunk_0
