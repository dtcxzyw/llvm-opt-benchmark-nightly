Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86_avx512?download=true
inline.NumInlined: 230
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4ncnnL15convdw3x3s1_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
  %i.bq = getelementptr i8, ptr %i.r, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 36
  %i.bs = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bt = getelementptr i8, ptr %i.bs, i64 36
  %min.iters.check457 = icmp ult i32 %i.s, 4
  %min.iters.check459 = icmp ult i32 %i.s, 16
  %i.bu = and i64 %i.bj, 12
  %n.vec461 = and i64 %i.bj, 2147483632           ; 5 uses
  %i.bv = trunc nuw nsw i64 %n.vec461 to i32
  %i.bw = sub nsw i32 %i.s, %i.bv
  %i.bx = shl nuw nsw i64 %n.vec461, 2            ; 6 uses
  %cmp.n504 = icmp eq i64 %n.vec461, %i.bj
  %min.epilog.iters.check515 = icmp eq i64 %i.bu, 0
  %n.vec517 = and i64 %i.bj, 2147483644           ; 4 uses
  %i.by = trunc nuw nsw i64 %n.vec517 to i32
  %i.bz = sub nsw i32 %i.s, %i.by
  %i.ca = shl nuw nsw i64 %n.vec517, 2            ; 6 uses
  %cmp.n560 = icmp eq i64 %n.vec517, %i.bj
  %min.iters.check = icmp ult i32 %i.s, 4
  %min.iters.check325 = icmp ult i32 %i.s, 16
  %i.cb = and i64 %i.bj, 12
  %n.vec = and i64 %i.bj, 2147483632              ; 5 uses
  %i.cc = trunc nuw nsw i64 %n.vec to i32
  %i.cd = sub nsw i32 %i.s, %i.cc
  %i.ce = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bj
  %min.epilog.iters.check = icmp eq i64 %i.cb, 0
  %n.vec361 = and i64 %i.bj, 2147483644           ; 4 uses
  %i.cf = trunc nuw nsw i64 %n.vec361 to i32
  %i.cg = sub nsw i32 %i.s, %i.cf
  %i.ch = shl nuw nsw i64 %n.vec361, 2            ; 4 uses
  %cmp.n400 = icmp eq i64 %n.vec361, %i.bj
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv278 = phi i64 [ %i.aj, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %indvars.iv275 = phi ptr [ %scevgep274, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep276, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv272 = phi ptr [ %scevgep271, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep273, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv269 = phi ptr [ %scevgep268, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep270, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi ptr [ %scevgep, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep267, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ci = mul nuw nsw i64 %indvar, 36
  %scevgep413 = getelementptr i8, ptr %i.br, i64 %i.ci ; 2 uses
  %i.cj = mul nuw nsw i64 %indvar, 36
  %scevgep313 = getelementptr i8, ptr %i.bt, i64 %i.cj
  %.reass = mul i64 %factor.op.mul, %indvars.iv278
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  br i1 %.not170, label %_ZN4ncnn3MatD2Ev.exit171, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv278
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit171

_ZN4ncnn3MatD2Ev.exit171:                         ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.cn = phi fast float [ %i.cm, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit ] ; 7 uses
  %.idx = mul i64 %indvars.iv278, 36
  %i.co = getelementptr i8, ptr %i.r, i64 %.idx   ; 23 uses
  %.reass249 = mul i64 %factor.op.mul248, %indvars.iv278
  %i.cp = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass249 ; 5 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.aa ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.ac ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 12 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 5 uses
  br i1 %i.ag, label %.lr.ph219, label %.preheader

.lr.ph219:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit171
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 20 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 28 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 3 uses
  br i1 %i.ba, label %.lr.ph.us.preheader, label %.lr.ph219.split.preheader

.lr.ph219.split.preheader:                        ; preds = %.lr.ph219
  %scevgep277 = getelementptr i8, ptr %indvars.iv275, i64 %i.bc
  br label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph219
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.y
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.ae
  %broadcast.splatinsert462 = insertelement <16 x float> poison, float %i.cn, i64 0
  %broadcast.splat463 = shufflevector <16 x float> %broadcast.splatinsert462, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert518 = insertelement <4 x float> poison, float %i.cn, i64 0
  %broadcast.splat519 = shufflevector <4 x float> %broadcast.splatinsert518, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %iter.check512

iter.check512:                                    ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0150218.us = phi i32 [ %i.kr, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0151217.us = phi ptr [ %i.ko, %._crit_edge.us ], [ %i.db, %.lr.ph.us.preheader ] ; 9 uses
  %.0153216.us = phi ptr [ %i.kn, %._crit_edge.us ], [ %i.cr, %.lr.ph.us.preheader ] ; 9 uses
  %.0155215.us = phi ptr [ %i.km, %._crit_edge.us ], [ %i.cq, %.lr.ph.us.preheader ] ; 9 uses
  %.0159214.us = phi ptr [ %i.kl, %._crit_edge.us ], [ %i.cp, %.lr.ph.us.preheader ] ; 9 uses
  %.0163213.us = phi ptr [ %i.kq, %._crit_edge.us ], [ %i.da, %.lr.ph.us.preheader ] ; 13 uses
  %.0165212.us = phi ptr [ %i.kp, %._crit_edge.us ], [ %i.ck, %.lr.ph.us.preheader ] ; 13 uses
  br i1 %min.iters.check457, label %vec.epilog.scalar.ph513.preheader, label %vector.memcheck406

vector.memcheck406:                               ; preds = %iter.check512
  %scevgep407 = getelementptr i8, ptr %.0165212.us, i64 %i.bn ; 6 uses
  %scevgep408 = getelementptr i8, ptr %.0163213.us, i64 %i.bn ; 6 uses
  %scevgep409 = getelementptr i8, ptr %.0151217.us, i64 %i.bo ; 2 uses
  %scevgep410 = getelementptr i8, ptr %.0153216.us, i64 %i.bo ; 2 uses
  %scevgep411 = getelementptr i8, ptr %.0155215.us, i64 %i.bo ; 2 uses
  %scevgep412 = getelementptr i8, ptr %.0159214.us, i64 %i.bo ; 2 uses
  %bound0414 = icmp ult ptr %.0165212.us, %scevgep408
  %bound1415 = icmp ult ptr %.0163213.us, %scevgep407
  %found.conflict416 = and i1 %bound0414, %bound1415
  %bound0417 = icmp ult ptr %.0165212.us, %scevgep409
  %bound1418 = icmp ult ptr %.0151217.us, %scevgep407
  %found.conflict419 = and i1 %bound0417, %bound1418
  %conflict.rdx420 = or i1 %found.conflict416, %found.conflict419
  %bound0421 = icmp ult ptr %.0165212.us, %scevgep410
  %bound1422 = icmp ult ptr %.0153216.us, %scevgep407
  %found.conflict423 = and i1 %bound0421, %bound1422
  %conflict.rdx424 = or i1 %conflict.rdx420, %found.conflict423
  %bound0425 = icmp ult ptr %.0165212.us, %scevgep411
  %bound1426 = icmp ult ptr %.0155215.us, %scevgep407
  %found.conflict427 = and i1 %bound0425, %bound1426
  %conflict.rdx428 = or i1 %conflict.rdx424, %found.conflict427
  %bound0429 = icmp ult ptr %.0165212.us, %scevgep412
  %bound1430 = icmp ult ptr %.0159214.us, %scevgep407
  %found.conflict431 = and i1 %bound0429, %bound1430
  %conflict.rdx432 = or i1 %conflict.rdx428, %found.conflict431
  %bound0433 = icmp ult ptr %.0165212.us, %scevgep413
  %bound1434 = icmp ult ptr %i.co, %scevgep407
  %found.conflict435 = and i1 %bound0433, %bound1434
  %conflict.rdx436 = or i1 %conflict.rdx432, %found.conflict435
  %bound0437 = icmp ult ptr %.0163213.us, %scevgep409
  %bound1438 = icmp ult ptr %.0151217.us, %scevgep408
  %found.conflict439 = and i1 %bound0437, %bound1438
  %conflict.rdx440 = or i1 %conflict.rdx436, %found.conflict439
  %bound0441 = icmp ult ptr %.0163213.us, %scevgep410
  %bound1442 = icmp ult ptr %.0153216.us, %scevgep408
  %found.conflict443 = and i1 %bound0441, %bound1442
  %conflict.rdx444 = or i1 %conflict.rdx440, %found.conflict443
  %bound0445 = icmp ult ptr %.0163213.us, %scevgep411
  %bound1446 = icmp ult ptr %.0155215.us, %scevgep408
  %found.conflict447 = and i1 %bound0445, %bound1446
  %conflict.rdx448 = or i1 %conflict.rdx444, %found.conflict447
  %bound0449 = icmp ult ptr %.0163213.us, %scevgep412
  %bound1450 = icmp ult ptr %.0159214.us, %scevgep408
  %found.conflict451 = and i1 %bound0449, %bound1450
  %conflict.rdx452 = or i1 %conflict.rdx448, %found.conflict451
  %bound0453 = icmp ult ptr %.0163213.us, %scevgep413
  %bound1454 = icmp ult ptr %i.co, %scevgep408
  %found.conflict455 = and i1 %bound0453, %bound1454
  %conflict.rdx456 = or i1 %conflict.rdx452, %found.conflict455
  br i1 %conflict.rdx456, label %vec.epilog.scalar.ph513.preheader, label %vector.main.loop.iter.check458

vector.main.loop.iter.check458:                   ; preds = %vector.memcheck406
  br i1 %min.iters.check459, label %vec.epilog.ph516, label %vector.ph460

vector.ph460:                                     ; preds = %vector.main.loop.iter.check458
  %i.dc = getelementptr i8, ptr %.0151217.us, i64 %i.bx ; 2 uses
  %i.dd = getelementptr i8, ptr %.0153216.us, i64 %i.bx ; 2 uses
  %i.de = getelementptr i8, ptr %.0155215.us, i64 %i.bx ; 2 uses
  %i.df = getelementptr i8, ptr %.0159214.us, i64 %i.bx ; 2 uses
  %i.dg = getelementptr i8, ptr %.0163213.us, i64 %i.bx ; 2 uses
  %i.dh = getelementptr i8, ptr %.0165212.us, i64 %i.bx ; 2 uses
  %i.di = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert473 = insertelement <16 x float> poison, float %i.di, i64 0
  %broadcast.splat474 = shufflevector <16 x float> %broadcast.splatinsert473, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dj = load float, ptr %i.cu, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert476 = insertelement <16 x float> poison, float %i.dj, i64 0
  %broadcast.splat477 = shufflevector <16 x float> %broadcast.splatinsert476, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dk = load float, ptr %i.cv, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert479 = insertelement <16 x float> poison, float %i.dk, i64 0
  %broadcast.splat480 = shufflevector <16 x float> %broadcast.splatinsert479, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dl = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert482 = insertelement <16 x float> poison, float %i.dl, i64 0
  %broadcast.splat483 = shufflevector <16 x float> %broadcast.splatinsert482, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dm = load float, ptr %i.cw, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert485 = insertelement <16 x float> poison, float %i.dm, i64 0
  %broadcast.splat486 = shufflevector <16 x float> %broadcast.splatinsert485, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dn = load float, ptr %i.cx, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert488 = insertelement <16 x float> poison, float %i.dn, i64 0
  %broadcast.splat489 = shufflevector <16 x float> %broadcast.splatinsert488, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.do = load float, ptr %i.ct, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert491 = insertelement <16 x float> poison, float %i.do, i64 0
  %broadcast.splat492 = shufflevector <16 x float> %broadcast.splatinsert491, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dp = load float, ptr %i.cy, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert494 = insertelement <16 x float> poison, float %i.dp, i64 0
  %broadcast.splat495 = shufflevector <16 x float> %broadcast.splatinsert494, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dq = load float, ptr %i.cz, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert497 = insertelement <16 x float> poison, float %i.dq, i64 0
  %broadcast.splat498 = shufflevector <16 x float> %broadcast.splatinsert497, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body464

vector.body464:                                   ; preds = %vector.ph460, %vector.body464
  %index465 = phi i64 [ 0, %vector.ph460 ], [ %index.next502, %vector.body464 ] ; 2 uses
  %i.dr = shl i64 %index465, 2                    ; 6 uses
  %next.gep466 = getelementptr i8, ptr %.0151217.us, i64 %i.dr ; 3 uses
  %next.gep467 = getelementptr i8, ptr %.0153216.us, i64 %i.dr ; 3 uses
  %next.gep468 = getelementptr i8, ptr %.0155215.us, i64 %i.dr ; 3 uses
  %next.gep469 = getelementptr i8, ptr %.0159214.us, i64 %i.dr ; 3 uses
  %next.gep470 = getelementptr i8, ptr %.0163213.us, i64 %i.dr
  %next.gep471 = getelementptr i8, ptr %.0165212.us, i64 %i.dr
  %wide.load472 = load <16 x float>, ptr %next.gep469, align 4, !tbaa !45, !alias.scope !357
  %i.ds = fmul fast <16 x float> %broadcast.splat474, %wide.load472
  %i.dt = fadd fast <16 x float> %broadcast.splat463, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %next.gep469, i64 4
  %wide.load475 = load <16 x float>, ptr %i.du, align 4, !tbaa !45, !alias.scope !357
  %i.dv = fmul fast <16 x float> %broadcast.splat477, %wide.load475
  %i.dw = fadd fast <16 x float> %i.dv, %i.dt
  %i.dx = getelementptr inbounds nuw i8, ptr %next.gep469, i64 8
  %wide.load478 = load <16 x float>, ptr %i.dx, align 4, !tbaa !45, !alias.scope !357
  %i.dy = fmul fast <16 x float> %broadcast.splat480, %wide.load478
  %i.dz = fadd fast <16 x float> %i.dw, %i.dy
  %wide.load481 = load <16 x float>, ptr %next.gep468, align 4, !tbaa !45, !alias.scope !358 ; 2 uses
  %i.ea = fmul fast <16 x float> %broadcast.splat483, %wide.load481
  %i.eb = fadd fast <16 x float> %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %next.gep468, i64 4
  %wide.load484 = load <16 x float>, ptr %i.ec, align 4, !tbaa !45, !alias.scope !358 ; 2 uses
  %i.ed = fmul fast <16 x float> %broadcast.splat486, %wide.load484
  %i.ee = fadd fast <16 x float> %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %next.gep468, i64 8
  %wide.load487 = load <16 x float>, ptr %i.ef, align 4, !tbaa !45, !alias.scope !358 ; 2 uses
  %i.eg = fmul fast <16 x float> %broadcast.splat489, %wide.load487
  %i.eh = fadd fast <16 x float> %i.ee, %i.eg
  %wide.load490 = load <16 x float>, ptr %next.gep467, align 4, !tbaa !45, !alias.scope !359 ; 2 uses
  %i.ei = fmul fast <16 x float> %broadcast.splat492, %wide.load490
  %i.ej = fadd fast <16 x float> %i.eh, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %next.gep467, i64 4
  %wide.load493 = load <16 x float>, ptr %i.ek, align 4, !tbaa !45, !alias.scope !359 ; 2 uses
  %i.el = fmul fast <16 x float> %broadcast.splat495, %wide.load493
  %i.em = fadd fast <16 x float> %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %next.gep467, i64 8
  %wide.load496 = load <16 x float>, ptr %i.en, align 4, !tbaa !45, !alias.scope !359 ; 2 uses
  %i.eo = fmul fast <16 x float> %broadcast.splat498, %wide.load496
  %i.ep = fadd fast <16 x float> %i.em, %i.eo
  %i.eq = fmul fast <16 x float> %wide.load481, %broadcast.splat474
  %i.er = fadd fast <16 x float> %broadcast.splat463, %i.eq
  %i.es = fmul fast <16 x float> %wide.load484, %broadcast.splat477
  %i.et = fadd fast <16 x float> %i.es, %i.er
  %i.eu = fmul fast <16 x float> %wide.load487, %broadcast.splat480
  %i.ev = fadd fast <16 x float> %i.et, %i.eu
  %i.ew = fmul fast <16 x float> %wide.load490, %broadcast.splat483
  %i.ex = fadd fast <16 x float> %i.ev, %i.ew
  %i.ey = fmul fast <16 x float> %wide.load493, %broadcast.splat486
  %i.ez = fadd fast <16 x float> %i.ex, %i.ey
  %i.fa = fmul fast <16 x float> %wide.load496, %broadcast.splat489
  %i.fb = fadd fast <16 x float> %i.ez, %i.fa
  %wide.load499 = load <16 x float>, ptr %next.gep466, align 4, !tbaa !45, !alias.scope !360
  %i.fc = fmul fast <16 x float> %wide.load499, %broadcast.splat492
  %i.fd = fadd fast <16 x float> %i.fb, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %next.gep466, i64 4
  %wide.load500 = load <16 x float>, ptr %i.fe, align 4, !tbaa !45, !alias.scope !360
  %i.ff = fmul fast <16 x float> %wide.load500, %broadcast.splat495
  %i.fg = fadd fast <16 x float> %i.fd, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %next.gep466, i64 8
  %wide.load501 = load <16 x float>, ptr %i.fh, align 4, !tbaa !45, !alias.scope !360
  %i.fi = fmul fast <16 x float> %wide.load501, %broadcast.splat498
  %i.fj = fadd fast <16 x float> %i.fg, %i.fi
  store <16 x float> %i.ep, ptr %next.gep471, align 4, !tbaa !45, !alias.scope !361, !noalias !362
  store <16 x float> %i.fj, ptr %next.gep470, align 4, !tbaa !45, !alias.scope !363, !noalias !364
  %index.next502 = add nuw i64 %index465, 16      ; 2 uses
  %i.fk = icmp eq i64 %index.next502, %n.vec461
  br i1 %i.fk, label %middle.block503, label %vector.body464, !llvm.loop !340

middle.block503:                                  ; preds = %vector.body464
  br i1 %cmp.n504, label %._crit_edge.us, label %vec.epilog.iter.check514

vec.epilog.iter.check514:                         ; preds = %middle.block503
  br i1 %min.epilog.iters.check515, label %vec.epilog.scalar.ph513.preheader, label %vec.epilog.ph516, !prof !100

vec.epilog.ph516:                                 ; preds = %vector.main.loop.iter.check458, %vec.epilog.iter.check514
  %vec.epilog.resume.val505 = phi i64 [ %n.vec461, %vec.epilog.iter.check514 ], [ 0, %vector.main.loop.iter.check458 ]
  %i.fl = getelementptr i8, ptr %.0151217.us, i64 %i.ca ; 2 uses
  %i.fm = getelementptr i8, ptr %.0153216.us, i64 %i.ca ; 2 uses
  %i.fn = getelementptr i8, ptr %.0155215.us, i64 %i.ca ; 2 uses
  %i.fo = getelementptr i8, ptr %.0159214.us, i64 %i.ca ; 2 uses
  %i.fp = getelementptr i8, ptr %.0163213.us, i64 %i.ca ; 2 uses
  %i.fq = getelementptr i8, ptr %.0165212.us, i64 %i.ca ; 2 uses
  %i.fr = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert529 = insertelement <4 x float> poison, float %i.fr, i64 0
  %broadcast.splat530 = shufflevector <4 x float> %broadcast.splatinsert529, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fs = load float, ptr %i.cu, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert532 = insertelement <4 x float> poison, float %i.fs, i64 0
  %broadcast.splat533 = shufflevector <4 x float> %broadcast.splatinsert532, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ft = load float, ptr %i.cv, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert535 = insertelement <4 x float> poison, float %i.ft, i64 0
  %broadcast.splat536 = shufflevector <4 x float> %broadcast.splatinsert535, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fu = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert538 = insertelement <4 x float> poison, float %i.fu, i64 0
  %broadcast.splat539 = shufflevector <4 x float> %broadcast.splatinsert538, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fv = load float, ptr %i.cw, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert541 = insertelement <4 x float> poison, float %i.fv, i64 0
  %broadcast.splat542 = shufflevector <4 x float> %broadcast.splatinsert541, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fw = load float, ptr %i.cx, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert544 = insertelement <4 x float> poison, float %i.fw, i64 0
  %broadcast.splat545 = shufflevector <4 x float> %broadcast.splatinsert544, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fx = load float, ptr %i.ct, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert547 = insertelement <4 x float> poison, float %i.fx, i64 0
  %broadcast.splat548 = shufflevector <4 x float> %broadcast.splatinsert547, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fy = load float, ptr %i.cy, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert550 = insertelement <4 x float> poison, float %i.fy, i64 0
  %broadcast.splat551 = shufflevector <4 x float> %broadcast.splatinsert550, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fz = load float, ptr %i.cz, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert553 = insertelement <4 x float> poison, float %i.fz, i64 0
  %broadcast.splat554 = shufflevector <4 x float> %broadcast.splatinsert553, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body520

vec.epilog.vector.body520:                        ; preds = %vec.epilog.vector.body520, %vec.epilog.ph516
  %index521 = phi i64 [ %vec.epilog.resume.val505, %vec.epilog.ph516 ], [ %index.next558, %vec.epilog.vector.body520 ] ; 2 uses
  %i.ga = shl i64 %index521, 2                    ; 6 uses
  %next.gep522 = getelementptr i8, ptr %.0151217.us, i64 %i.ga ; 3 uses
  %next.gep523 = getelementptr i8, ptr %.0153216.us, i64 %i.ga ; 3 uses
  %next.gep524 = getelementptr i8, ptr %.0155215.us, i64 %i.ga ; 3 uses
  %next.gep525 = getelementptr i8, ptr %.0159214.us, i64 %i.ga ; 3 uses
  %next.gep526 = getelementptr i8, ptr %.0163213.us, i64 %i.ga
  %next.gep527 = getelementptr i8, ptr %.0165212.us, i64 %i.ga
  %wide.load528 = load <4 x float>, ptr %next.gep525, align 4, !tbaa !45, !alias.scope !357
  %i.gb = fmul fast <4 x float> %broadcast.splat530, %wide.load528
  %i.gc = fadd fast <4 x float> %broadcast.splat519, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %next.gep525, i64 4
  %wide.load531 = load <4 x float>, ptr %i.gd, align 4, !tbaa !45, !alias.scope !357
  %i.ge = fmul fast <4 x float> %broadcast.splat533, %wide.load531
  %i.gf = fadd fast <4 x float> %i.ge, %i.gc
  %i.gg = getelementptr inbounds nuw i8, ptr %next.gep525, i64 8
  %wide.load534 = load <4 x float>, ptr %i.gg, align 4, !tbaa !45, !alias.scope !357
  %i.gh = fmul fast <4 x float> %broadcast.splat536, %wide.load534
  %i.gi = fadd fast <4 x float> %i.gf, %i.gh
  %wide.load537 = load <4 x float>, ptr %next.gep524, align 4, !tbaa !45, !alias.scope !358 ; 2 uses
  %i.gj = fmul fast <4 x float> %broadcast.splat539, %wide.load537
  %i.gk = fadd fast <4 x float> %i.gi, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %next.gep524, i64 4
  %wide.load540 = load <4 x float>, ptr %i.gl, align 4, !tbaa !45, !alias.scope !358 ; 2 uses
  %i.gm = fmul fast <4 x float> %broadcast.splat542, %wide.load540
  %i.gn = fadd fast <4 x float> %i.gk, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %next.gep524, i64 8
  %wide.load543 = load <4 x float>, ptr %i.go, align 4, !tbaa !45, !alias.scope !358 ; 2 uses
  %i.gp = fmul fast <4 x float> %broadcast.splat545, %wide.load543
  %i.gq = fadd fast <4 x float> %i.gn, %i.gp
  %wide.load546 = load <4 x float>, ptr %next.gep523, align 4, !tbaa !45, !alias.scope !359 ; 2 uses
  %i.gr = fmul fast <4 x float> %broadcast.splat548, %wide.load546
  %i.gs = fadd fast <4 x float> %i.gq, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %next.gep523, i64 4
  %wide.load549 = load <4 x float>, ptr %i.gt, align 4, !tbaa !45, !alias.scope !359 ; 2 uses
  %i.gu = fmul fast <4 x float> %broadcast.splat551, %wide.load549
  %i.gv = fadd fast <4 x float> %i.gs, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %next.gep523, i64 8
  %wide.load552 = load <4 x float>, ptr %i.gw, align 4, !tbaa !45, !alias.scope !359 ; 2 uses
  %i.gx = fmul fast <4 x float> %broadcast.splat554, %wide.load552
  %i.gy = fadd fast <4 x float> %i.gv, %i.gx
  %i.gz = fmul fast <4 x float> %wide.load537, %broadcast.splat530
  %i.ha = fadd fast <4 x float> %broadcast.splat519, %i.gz
  %i.hb = fmul fast <4 x float> %wide.load540, %broadcast.splat533
  %i.hc = fadd fast <4 x float> %i.hb, %i.ha
  %i.hd = fmul fast <4 x float> %wide.load543, %broadcast.splat536
  %i.he = fadd fast <4 x float> %i.hc, %i.hd
  %i.hf = fmul fast <4 x float> %wide.load546, %broadcast.splat539
  %i.hg = fadd fast <4 x float> %i.he, %i.hf
  %i.hh = fmul fast <4 x float> %wide.load549, %broadcast.splat542
  %i.hi = fadd fast <4 x float> %i.hg, %i.hh
  %i.hj = fmul fast <4 x float> %wide.load552, %broadcast.splat545
  %i.hk = fadd fast <4 x float> %i.hi, %i.hj
  %wide.load555 = load <4 x float>, ptr %next.gep522, align 4, !tbaa !45, !alias.scope !360
  %i.hl = fmul fast <4 x float> %wide.load555, %broadcast.splat548
  %i.hm = fadd fast <4 x float> %i.hk, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %next.gep522, i64 4
  %wide.load556 = load <4 x float>, ptr %i.hn, align 4, !tbaa !45, !alias.scope !360
  %i.ho = fmul fast <4 x float> %wide.load556, %broadcast.splat551
  %i.hp = fadd fast <4 x float> %i.hm, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %next.gep522, i64 8
  %wide.load557 = load <4 x float>, ptr %i.hq, align 4, !tbaa !45, !alias.scope !360
  %i.hr = fmul fast <4 x float> %wide.load557, %broadcast.splat554
  %i.hs = fadd fast <4 x float> %i.hp, %i.hr
  store <4 x float> %i.gy, ptr %next.gep527, align 4, !tbaa !45, !alias.scope !361, !noalias !362
  store <4 x float> %i.hs, ptr %next.gep526, align 4, !tbaa !45, !alias.scope !363, !noalias !364
  %index.next558 = add nuw i64 %index521, 4       ; 2 uses
  %i.ht = icmp eq i64 %index.next558, %n.vec517
  br i1 %i.ht, label %vec.epilog.middle.block559, label %vec.epilog.vector.body520, !llvm.loop !341

vec.epilog.middle.block559:                       ; preds = %vec.epilog.vector.body520
  br i1 %cmp.n560, label %._crit_edge.us, label %vec.epilog.scalar.ph513.preheader

vec.epilog.scalar.ph513.preheader:                ; preds = %iter.check512, %vector.memcheck406, %vec.epilog.iter.check514, %vec.epilog.middle.block559
  %.0149206.us.ph = phi i32 [ %i.s, %iter.check512 ], [ %i.s, %vector.memcheck406 ], [ %i.bw, %vec.epilog.iter.check514 ], [ %i.bz, %vec.epilog.middle.block559 ]
  %.1152205.us.ph = phi ptr [ %.0151217.us, %iter.check512 ], [ %.0151217.us, %vector.memcheck406 ], [ %i.dc, %vec.epilog.iter.check514 ], [ %i.fl, %vec.epilog.middle.block559 ]
  %.1154204.us.ph = phi ptr [ %.0153216.us, %iter.check512 ], [ %.0153216.us, %vector.memcheck406 ], [ %i.dd, %vec.epilog.iter.check514 ], [ %i.fm, %vec.epilog.middle.block559 ]
  %.1156203.us.ph = phi ptr [ %.0155215.us, %iter.check512 ], [ %.0155215.us, %vector.memcheck406 ], [ %i.de, %vec.epilog.iter.check514 ], [ %i.fn, %vec.epilog.middle.block559 ]
  %.1160202.us.ph = phi ptr [ %.0159214.us, %iter.check512 ], [ %.0159214.us, %vector.memcheck406 ], [ %i.df, %vec.epilog.iter.check514 ], [ %i.fo, %vec.epilog.middle.block559 ]
  %.1164201.us.ph = phi ptr [ %.0163213.us, %iter.check512 ], [ %.0163213.us, %vector.memcheck406 ], [ %i.dg, %vec.epilog.iter.check514 ], [ %i.fp, %vec.epilog.middle.block559 ]
  %.1166200.us.ph = phi ptr [ %.0165212.us, %iter.check512 ], [ %.0165212.us, %vector.memcheck406 ], [ %i.dh, %vec.epilog.iter.check514 ], [ %i.fq, %vec.epilog.middle.block559 ]
  br label %vec.epilog.scalar.ph513

vec.epilog.scalar.ph513:                          ; preds = %vec.epilog.scalar.ph513.preheader, %vec.epilog.scalar.ph513
  %.0149206.us = phi i32 [ %i.kj, %vec.epilog.scalar.ph513 ], [ %.0149206.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 2 uses
  %.1152205.us = phi ptr [ %i.jz, %vec.epilog.scalar.ph513 ], [ %.1152205.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 3 uses
  %.1154204.us = phi ptr [ %i.ja, %vec.epilog.scalar.ph513 ], [ %.1154204.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 3 uses
  %.1156203.us = phi ptr [ %i.im, %vec.epilog.scalar.ph513 ], [ %.1156203.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 3 uses
  %.1160202.us = phi ptr [ %i.hy, %vec.epilog.scalar.ph513 ], [ %.1160202.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 3 uses
  %.1164201.us = phi ptr [ %i.ki, %vec.epilog.scalar.ph513 ], [ %.1164201.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 2 uses
  %.1166200.us = phi ptr [ %i.kh, %vec.epilog.scalar.ph513 ], [ %.1166200.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 2 uses
  %i.hu = load float, ptr %.1160202.us, align 4, !tbaa !45
  %i.hv = load float, ptr %i.co, align 4, !tbaa !45 ; 2 uses
  %i.hw = fmul fast float %i.hv, %i.hu
  %i.hx = fadd fast float %i.cn, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 4 ; 3 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !45
  %i.ia = load float, ptr %i.cu, align 4, !tbaa !45 ; 2 uses
  %i.ib = fmul fast float %i.ia, %i.hz
  %i.ic = fadd fast float %i.ib, %i.hx
  %i.id = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !45
  %i.if = load float, ptr %i.cv, align 4, !tbaa !45 ; 2 uses
  %i.ig = fmul fast float %i.if, %i.ie
  %i.ih = fadd fast float %i.ic, %i.ig
  %i.ii = load float, ptr %.1156203.us, align 4, !tbaa !45 ; 2 uses
  %i.ij = load float, ptr %i.cs, align 4, !tbaa !45 ; 2 uses
  %i.ik = fmul fast float %i.ij, %i.ii
  %i.il = fadd fast float %i.ih, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 4 ; 3 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !45 ; 2 uses
  %i.io = load float, ptr %i.cw, align 4, !tbaa !45 ; 2 uses
  %i.ip = fmul fast float %i.io, %i.in
  %i.iq = fadd fast float %i.il, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 8
  %i.is = load float, ptr %i.ir, align 4, !tbaa !45 ; 2 uses
  %i.it = load float, ptr %i.cx, align 4, !tbaa !45 ; 2 uses
  %i.iu = fmul fast float %i.it, %i.is
  %i.iv = fadd fast float %i.iq, %i.iu
  %i.iw = load float, ptr %.1154204.us, align 4, !tbaa !45 ; 2 uses
  %i.ix = load float, ptr %i.ct, align 4, !tbaa !45 ; 2 uses
  %i.iy = fmul fast float %i.ix, %i.iw
  %i.iz = fadd fast float %i.iv, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %.1154204.us, i64 4 ; 3 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !45 ; 2 uses
  %i.jc = load float, ptr %i.cy, align 4, !tbaa !45 ; 2 uses
  %i.jd = fmul fast float %i.jc, %i.jb
  %i.je = fadd fast float %i.iz, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %.1154204.us, i64 8
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !45 ; 2 uses
  %i.jh = load float, ptr %i.cz, align 4, !tbaa !45 ; 2 uses
  %i.ji = fmul fast float %i.jh, %i.jg
  %i.jj = fadd fast float %i.je, %i.ji
  %i.jk = fmul fast float %i.ii, %i.hv
  %i.jl = fadd fast float %i.cn, %i.jk
  %i.jm = fmul fast float %i.in, %i.ia
  %i.jn = fadd fast float %i.jm, %i.jl
  %i.jo = fmul fast float %i.is, %i.if
  %i.jp = fadd fast float %i.jn, %i.jo
  %i.jq = fmul fast float %i.iw, %i.ij
  %i.jr = fadd fast float %i.jp, %i.jq
  %i.js = fmul fast float %i.jb, %i.io
  %i.jt = fadd fast float %i.jr, %i.js
  %i.ju = fmul fast float %i.jg, %i.it
  %i.jv = fadd fast float %i.jt, %i.ju
  %i.jw = load float, ptr %.1152205.us, align 4, !tbaa !45
  %i.jx = fmul fast float %i.jw, %i.ix
  %i.jy = fadd fast float %i.jv, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 4 ; 3 uses
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !45
  %i.kb = fmul fast float %i.ka, %i.jc
  %i.kc = fadd fast float %i.jy, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 8
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !45
  %i.kf = fmul fast float %i.ke, %i.jh
  %i.kg = fadd fast float %i.kc, %i.kf
  store float %i.jj, ptr %.1166200.us, align 4, !tbaa !45
  store float %i.kg, ptr %.1164201.us, align 4, !tbaa !45
  %i.kh = getelementptr inbounds nuw i8, ptr %.1166200.us, i64 4 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.1164201.us, i64 4 ; 2 uses
  %i.kj = add nsw i32 %.0149206.us, -1
  %i.kk = icmp sgt i32 %.0149206.us, 1
  br i1 %i.kk, label %vec.epilog.scalar.ph513, label %._crit_edge.us, !llvm.loop !342

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph513, %vec.epilog.middle.block559, %middle.block503
  %.lcssa303 = phi ptr [ %i.fo, %vec.epilog.middle.block559 ], [ %i.df, %middle.block503 ], [ %i.hy, %vec.epilog.scalar.ph513 ]
  %.lcssa302 = phi ptr [ %i.fn, %vec.epilog.middle.block559 ], [ %i.de, %middle.block503 ], [ %i.im, %vec.epilog.scalar.ph513 ]
  %.lcssa301 = phi ptr [ %i.fm, %vec.epilog.middle.block559 ], [ %i.dd, %middle.block503 ], [ %i.ja, %vec.epilog.scalar.ph513 ]
  %.lcssa300 = phi ptr [ %i.fl, %vec.epilog.middle.block559 ], [ %i.dc, %middle.block503 ], [ %i.jz, %vec.epilog.scalar.ph513 ]
  %.lcssa299 = phi ptr [ %i.fq, %vec.epilog.middle.block559 ], [ %i.dh, %middle.block503 ], [ %i.kh, %vec.epilog.scalar.ph513 ]
  %.lcssa = phi ptr [ %i.fp, %vec.epilog.middle.block559 ], [ %i.dg, %middle.block503 ], [ %i.ki, %vec.epilog.scalar.ph513 ]
  %i.kl = getelementptr inbounds [4 x i8], ptr %.lcssa303, i64 %i.ai ; 2 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %.lcssa302, i64 %i.ai ; 2 uses
  %i.kn = getelementptr inbounds [4 x i8], ptr %.lcssa301, i64 %i.ai ; 2 uses
  %i.ko = getelementptr inbounds [4 x i8], ptr %.lcssa300, i64 %i.ai
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.lcssa299, i64 %i.bb ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.bb
  %i.kr = add nuw nsw i32 %.0150218.us, 2         ; 2 uses
  %i.ks = or disjoint i32 %i.kr, 1
  %i.kt = icmp slt i32 %i.ks, %i.af
  br i1 %i.kt, label %iter.check512, label %.preheader, !llvm.loop !343

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph219.split.preheader, %_ZN4ncnn3MatD2Ev.exit171
  %.0165.lcssa = phi ptr [ %i.ck, %_ZN4ncnn3MatD2Ev.exit171 ], [ %scevgep277, %.lr.ph219.split.preheader ], [ %i.kp, %._crit_edge.us ]
  %.0159.lcssa = phi ptr [ %i.cp, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv, %.lr.ph219.split.preheader ], [ %i.kl, %._crit_edge.us ]
  %.0155.lcssa = phi ptr [ %i.cq, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv269, %.lr.ph219.split.preheader ], [ %i.km, %._crit_edge.us ]
  %.0153.lcssa = phi ptr [ %i.cr, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv272, %.lr.ph219.split.preheader ], [ %i.kn, %._crit_edge.us ]
  %.0150.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit171 ], [ %i.ay, %.lr.ph219.split.preheader ], [ %i.ay, %._crit_edge.us ] ; 2 uses
  %i.ku = icmp slt i32 %.0150.lcssa, %i.af
  br i1 %i.ku, label %.lr.ph244, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph244:                                        ; preds = %.preheader
  %i.kv = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.co, i64 20 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.co, i64 28 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 3 uses
  br i1 %i.bd, label %iter.check.preheader, label %_ZN4ncnn3MatD2Ev.exit

iter.check.preheader:                             ; preds = %.lr.ph244
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.cn, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert362 = insertelement <4 x float> poison, float %i.cn, i64 0
  %broadcast.splat363 = shufflevector <4 x float> %broadcast.splatinsert362, <4 x float> poison, <4 x i32> zeroinitializer
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge
  %.1243 = phi i32 [ %i.pf, %._crit_edge ], [ %.0150.lcssa, %iter.check.preheader ]
  %.2242 = phi ptr [ %i.pe, %._crit_edge ], [ %.0153.lcssa, %iter.check.preheader ] ; 8 uses
  %.2157241 = phi ptr [ %i.pd, %._crit_edge ], [ %.0155.lcssa, %iter.check.preheader ] ; 8 uses
  %.2161240 = phi ptr [ %i.pc, %._crit_edge ], [ %.0159.lcssa, %iter.check.preheader ] ; 8 uses
  %.2167239 = phi ptr [ %.lcssa308, %._crit_edge ], [ %.0165.lcssa, %iter.check.preheader ] ; 11 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.lb = getelementptr i8, ptr %.2167239, i64 %i.bg
  %scevgep309 = getelementptr i8, ptr %i.lb, i64 4 ; 4 uses
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
  %bound1322 = icmp ult ptr %i.co, %scevgep309
  %found.conflict323 = and i1 %bound0321, %bound1322
  %conflict.rdx324 = or i1 %conflict.rdx320, %found.conflict323
  br i1 %conflict.rdx324, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check325, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lc = getelementptr i8, ptr %.2242, i64 %i.ce ; 2 uses
  %i.ld = getelementptr i8, ptr %.2157241, i64 %i.ce ; 2 uses
  %i.le = getelementptr i8, ptr %.2161240, i64 %i.ce ; 2 uses
  %i.lf = getelementptr i8, ptr %.2167239, i64 %i.ce ; 2 uses
  %i.lg = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert329 = insertelement <16 x float> poison, float %i.lg, i64 0
  %broadcast.splat330 = shufflevector <16 x float> %broadcast.splatinsert329, <16 x float> poison, <16 x i32> zeroinitializer
  %i.lh = load float, ptr %i.kv, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert332 = insertelement <16 x float> poison, float %i.lh, i64 0
  %broadcast.splat333 = shufflevector <16 x float> %broadcast.splatinsert332, <16 x float> poison, <16 x i32> zeroinitializer
  %i.li = load float, ptr %i.kw, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert335 = insertelement <16 x float> poison, float %i.li, i64 0
  %broadcast.splat336 = shufflevector <16 x float> %broadcast.splatinsert335, <16 x float> poison, <16 x i32> zeroinitializer
  %i.lj = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert338 = insertelement <16 x float> poison, float %i.lj, i64 0
  %broadcast.splat339 = shufflevector <16 x float> %broadcast.splatinsert338, <16 x float> poison, <16 x i32> zeroinitializer
  %i.lk = load float, ptr %i.kx, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert341 = insertelement <16 x float> poison, float %i.lk, i64 0
  %broadcast.splat342 = shufflevector <16 x float> %broadcast.splatinsert341, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ll = load float, ptr %i.ky, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert344 = insertelement <16 x float> poison, float %i.ll, i64 0
  %broadcast.splat345 = shufflevector <16 x float> %broadcast.splatinsert344, <16 x float> poison, <16 x i32> zeroinitializer
  %i.lm = load float, ptr %i.ct, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert347 = insertelement <16 x float> poison, float %i.lm, i64 0
  %broadcast.splat348 = shufflevector <16 x float> %broadcast.splatinsert347, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ln = load float, ptr %i.kz, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert350 = insertelement <16 x float> poison, float %i.ln, i64 0
  %broadcast.splat351 = shufflevector <16 x float> %broadcast.splatinsert350, <16 x float> poison, <16 x i32> zeroinitializer
  %i.lo = load float, ptr %i.la, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert353 = insertelement <16 x float> poison, float %i.lo, i64 0
  %broadcast.splat354 = shufflevector <16 x float> %broadcast.splatinsert353, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lp = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.2242, i64 %i.lp ; 3 uses
  %next.gep326 = getelementptr i8, ptr %.2157241, i64 %i.lp ; 3 uses
  %next.gep327 = getelementptr i8, ptr %.2161240, i64 %i.lp ; 3 uses
  %next.gep328 = getelementptr i8, ptr %.2167239, i64 %i.lp
  %wide.load = load <16 x float>, ptr %next.gep327, align 4, !tbaa !45, !alias.scope !366
  %i.lq = fmul fast <16 x float> %broadcast.splat330, %wide.load
  %i.lr = fadd fast <16 x float> %broadcast.splat, %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %next.gep327, i64 4
  %wide.load331 = load <16 x float>, ptr %i.ls, align 4, !tbaa !45, !alias.scope !366
  %i.lt = fmul fast <16 x float> %broadcast.splat333, %wide.load331
  %i.lu = fadd fast <16 x float> %i.lt, %i.lr
  %i.lv = getelementptr inbounds nuw i8, ptr %next.gep327, i64 8
  %wide.load334 = load <16 x float>, ptr %i.lv, align 4, !tbaa !45, !alias.scope !366
  %i.lw = fmul fast <16 x float> %broadcast.splat336, %wide.load334
  %i.lx = fadd fast <16 x float> %i.lu, %i.lw
  %wide.load337 = load <16 x float>, ptr %next.gep326, align 4, !tbaa !45, !alias.scope !367
  %i.ly = fmul fast <16 x float> %broadcast.splat339, %wide.load337
  %i.lz = fadd fast <16 x float> %i.lx, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %next.gep326, i64 4
  %wide.load340 = load <16 x float>, ptr %i.ma, align 4, !tbaa !45, !alias.scope !367
  %i.mb = fmul fast <16 x float> %broadcast.splat342, %wide.load340
  %i.mc = fadd fast <16 x float> %i.lz, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %next.gep326, i64 8
  %wide.load343 = load <16 x float>, ptr %i.md, align 4, !tbaa !45, !alias.scope !367
  %i.me = fmul fast <16 x float> %broadcast.splat345, %wide.load343
  %i.mf = fadd fast <16 x float> %i.mc, %i.me
  %wide.load346 = load <16 x float>, ptr %next.gep, align 4, !tbaa !45, !alias.scope !368
  %i.mg = fmul fast <16 x float> %broadcast.splat348, %wide.load346
  %i.mh = fadd fast <16 x float> %i.mf, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %wide.load349 = load <16 x float>, ptr %i.mi, align 4, !tbaa !45, !alias.scope !368
  %i.mj = fmul fast <16 x float> %broadcast.splat351, %wide.load349
  %i.mk = fadd fast <16 x float> %i.mh, %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %wide.load352 = load <16 x float>, ptr %i.ml, align 4, !tbaa !45, !alias.scope !368
  %i.mm = fmul fast <16 x float> %broadcast.splat354, %wide.load352
  %i.mn = fadd fast <16 x float> %i.mk, %i.mm
  store <16 x float> %i.mn, ptr %next.gep328, align 4, !tbaa !45, !alias.scope !369, !noalias !370
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mo = icmp eq i64 %index.next, %n.vec
  br i1 %i.mo, label %middle.block, label %vector.body, !llvm.loop !350

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.lc, i64 -4
  %ind.escape355 = getelementptr i8, ptr %i.ld, i64 -4
  %ind.escape356 = getelementptr i8, ptr %i.le, i64 -4
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !100

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.mp = getelementptr i8, ptr %.2242, i64 %i.ch ; 2 uses
  %i.mq = getelementptr i8, ptr %.2157241, i64 %i.ch ; 2 uses
  %i.mr = getelementptr i8, ptr %.2161240, i64 %i.ch ; 2 uses
  %i.ms = getelementptr i8, ptr %.2167239, i64 %i.ch ; 2 uses
  %i.mt = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert370 = insertelement <4 x float> poison, float %i.mt, i64 0
  %broadcast.splat371 = shufflevector <4 x float> %broadcast.splatinsert370, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mu = load float, ptr %i.kv, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert373 = insertelement <4 x float> poison, float %i.mu, i64 0
  %broadcast.splat374 = shufflevector <4 x float> %broadcast.splatinsert373, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mv = load float, ptr %i.kw, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert376 = insertelement <4 x float> poison, float %i.mv, i64 0
  %broadcast.splat377 = shufflevector <4 x float> %broadcast.splatinsert376, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mw = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert379 = insertelement <4 x float> poison, float %i.mw, i64 0
  %broadcast.splat380 = shufflevector <4 x float> %broadcast.splatinsert379, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mx = load float, ptr %i.kx, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert382 = insertelement <4 x float> poison, float %i.mx, i64 0
  %broadcast.splat383 = shufflevector <4 x float> %broadcast.splatinsert382, <4 x float> poison, <4 x i32> zeroinitializer
  %i.my = load float, ptr %i.ky, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert385 = insertelement <4 x float> poison, float %i.my, i64 0
  %broadcast.splat386 = shufflevector <4 x float> %broadcast.splatinsert385, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mz = load float, ptr %i.ct, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert388 = insertelement <4 x float> poison, float %i.mz, i64 0
  %broadcast.splat389 = shufflevector <4 x float> %broadcast.splatinsert388, <4 x float> poison, <4 x i32> zeroinitializer
  %i.na = load float, ptr %i.kz, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert391 = insertelement <4 x float> poison, float %i.na, i64 0
  %broadcast.splat392 = shufflevector <4 x float> %broadcast.splatinsert391, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nb = load float, ptr %i.la, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert394 = insertelement <4 x float> poison, float %i.nb, i64 0
  %broadcast.splat395 = shufflevector <4 x float> %broadcast.splatinsert394, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index364 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next396, %vec.epilog.vector.body ] ; 2 uses
  %i.nc = shl i64 %index364, 2                    ; 4 uses
  %next.gep365 = getelementptr i8, ptr %.2242, i64 %i.nc ; 3 uses
  %next.gep366 = getelementptr i8, ptr %.2157241, i64 %i.nc ; 3 uses
  %next.gep367 = getelementptr i8, ptr %.2161240, i64 %i.nc ; 3 uses
  %next.gep368 = getelementptr i8, ptr %.2167239, i64 %i.nc
  %wide.load369 = load <4 x float>, ptr %next.gep367, align 4, !tbaa !45, !alias.scope !366
  %i.nd = fmul fast <4 x float> %broadcast.splat371, %wide.load369
  %i.ne = fadd fast <4 x float> %broadcast.splat363, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %next.gep367, i64 4
  %wide.load372 = load <4 x float>, ptr %i.nf, align 4, !tbaa !45, !alias.scope !366
  %i.ng = fmul fast <4 x float> %broadcast.splat374, %wide.load372
  %i.nh = fadd fast <4 x float> %i.ng, %i.ne
  %i.ni = getelementptr inbounds nuw i8, ptr %next.gep367, i64 8
  %wide.load375 = load <4 x float>, ptr %i.ni, align 4, !tbaa !45, !alias.scope !366
  %i.nj = fmul fast <4 x float> %broadcast.splat377, %wide.load375
  %i.nk = fadd fast <4 x float> %i.nh, %i.nj
  %wide.load378 = load <4 x float>, ptr %next.gep366, align 4, !tbaa !45, !alias.scope !367
  %i.nl = fmul fast <4 x float> %broadcast.splat380, %wide.load378
  %i.nm = fadd fast <4 x float> %i.nk, %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %next.gep366, i64 4
  %wide.load381 = load <4 x float>, ptr %i.nn, align 4, !tbaa !45, !alias.scope !367
  %i.no = fmul fast <4 x float> %broadcast.splat383, %wide.load381
  %i.np = fadd fast <4 x float> %i.nm, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %next.gep366, i64 8
  %wide.load384 = load <4 x float>, ptr %i.nq, align 4, !tbaa !45, !alias.scope !367
  %i.nr = fmul fast <4 x float> %broadcast.splat386, %wide.load384
  %i.ns = fadd fast <4 x float> %i.np, %i.nr
  %wide.load387 = load <4 x float>, ptr %next.gep365, align 4, !tbaa !45, !alias.scope !368
  %i.nt = fmul fast <4 x float> %broadcast.splat389, %wide.load387
  %i.nu = fadd fast <4 x float> %i.ns, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %next.gep365, i64 4
  %wide.load390 = load <4 x float>, ptr %i.nv, align 4, !tbaa !45, !alias.scope !368
  %i.nw = fmul fast <4 x float> %broadcast.splat392, %wide.load390
  %i.nx = fadd fast <4 x float> %i.nu, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %next.gep365, i64 8
  %wide.load393 = load <4 x float>, ptr %i.ny, align 4, !tbaa !45, !alias.scope !368
  %i.nz = fmul fast <4 x float> %broadcast.splat395, %wide.load393
  %i.oa = fadd fast <4 x float> %i.nx, %i.nz
  store <4 x float> %i.oa, ptr %next.gep368, align 4, !tbaa !45, !alias.scope !369, !noalias !370
  %index.next396 = add nuw i64 %index364, 4       ; 2 uses
  %i.ob = icmp eq i64 %index.next396, %n.vec361
  br i1 %i.ob, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !351

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape397 = getelementptr i8, ptr %i.mp, i64 -4
  %ind.escape398 = getelementptr i8, ptr %i.mq, i64 -4
  %ind.escape399 = getelementptr i8, ptr %i.mr, i64 -4
  br i1 %cmp.n400, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0148235.ph = phi i32 [ %i.s, %iter.check ], [ %i.s, %vector.memcheck ], [ %i.cd, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  %.3234.ph = phi ptr [ %.2242, %iter.check ], [ %.2242, %vector.memcheck ], [ %i.lc, %vec.epilog.iter.check ], [ %i.mp, %vec.epilog.middle.block ]
  %.3158233.ph = phi ptr [ %.2157241, %iter.check ], [ %.2157241, %vector.memcheck ], [ %i.ld, %vec.epilog.iter.check ], [ %i.mq, %vec.epilog.middle.block ]
  %.3162232.ph = phi ptr [ %.2161240, %iter.check ], [ %.2161240, %vector.memcheck ], [ %i.le, %vec.epilog.iter.check ], [ %i.mr, %vec.epilog.middle.block ]
  %.3168231.ph = phi ptr [ %.2167239, %iter.check ], [ %.2167239, %vector.memcheck ], [ %i.lf, %vec.epilog.iter.check ], [ %i.ms, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0148235 = phi i32 [ %i.pa, %vec.epilog.scalar.ph ], [ %.0148235.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3234 = phi ptr [ %i.oh, %vec.epilog.scalar.ph ], [ %.3234.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %.3158233 = phi ptr [ %i.og, %vec.epilog.scalar.ph ], [ %.3158233.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.3162232 = phi ptr [ %i.oc, %vec.epilog.scalar.ph ], [ %.3162232.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %.3168231 = phi ptr [ %i.oz, %vec.epilog.scalar.ph ], [ %.3168231.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.3162232, i64 4
  %i.od = getelementptr inbounds nuw i8, ptr %.3162232, i64 8
  %i.oe = load float, ptr %i.od, align 4, !tbaa !45
  %i.of = load float, ptr %.3158233, align 4, !tbaa !45
  %i.og = getelementptr inbounds nuw i8, ptr %.3158233, i64 4 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.3234, i64 4
  %i.oi = load <2 x float>, ptr %.3162232, align 4, !tbaa !45
  %i.oj = load <2 x float>, ptr %i.og, align 4, !tbaa !45
  %i.ok = load <2 x float>, ptr %.3234, align 4, !tbaa !45
  %i.ol = load <8 x float>, ptr %i.co, align 4, !tbaa !45
  %i.om = insertelement <8 x float> poison, float %i.oe, i64 2
  %i.on = insertelement <8 x float> %i.om, float %i.of, i64 3
  %i.oo = shufflevector <2 x float> %i.oi, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.op = shufflevector <8 x float> %i.oo, <8 x float> %i.on, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oq = shufflevector <2 x float> %i.oj, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.or = shufflevector <8 x float> %i.op, <8 x float> %i.oq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.os = shufflevector <2 x float> %i.ok, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ot = shufflevector <8 x float> %i.or, <8 x float> %i.os, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ou = fmul fast <8 x float> %i.ol, %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %.3234, i64 8
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !45
  %i.ox = load float, ptr %i.la, align 4, !tbaa !45
  %i.oy = fmul fast float %i.ox, %i.ow
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.oy, <8 x float> %i.ou)
  %op.rdx568 = fadd fast float %op.rdx, %i.cn
  store float %op.rdx568, ptr %.3168231, align 4, !tbaa !45
  %i.oz = getelementptr inbounds nuw i8, ptr %.3168231, i64 4 ; 2 uses
  %i.pa = add nsw i32 %.0148235, -1
  %i.pb = icmp sgt i32 %.0148235, 1
  br i1 %i.pb, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !352

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.3234.lcssa = phi ptr [ %ind.escape397, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.3234, %vec.epilog.scalar.ph ]
  %.3158233.lcssa = phi ptr [ %ind.escape398, %vec.epilog.middle.block ], [ %ind.escape355, %middle.block ], [ %.3158233, %vec.epilog.scalar.ph ]
  %.3162232.lcssa = phi ptr [ %ind.escape399, %vec.epilog.middle.block ], [ %ind.escape356, %middle.block ], [ %.3162232, %vec.epilog.scalar.ph ]
  %.lcssa308 = phi ptr [ %i.ms, %vec.epilog.middle.block ], [ %i.lf, %middle.block ], [ %i.oz, %vec.epilog.scalar.ph ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.3162232.lcssa, i64 12
  %i.pd = getelementptr inbounds nuw i8, ptr %.3158233.lcssa, i64 12
  %i.pe = getelementptr inbounds nuw i8, ptr %.3234.lcssa, i64 12
  %i.pf = add nuw nsw i32 %.1243, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.pf, %i.af
  br i1 %exitcond.not, label %_ZN4ncnn3MatD2Ev.exit, label %iter.check, !llvm.loop !353

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
define internal void @_ZN4ncnnL15convdw3x3s2_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #18 personality ptr @__gxx_personality_v0 {
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
  %i.l = load ptr, ptr %3, align 8, !tbaa !21, !noalias !385
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22, !noalias !385
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !67, !noalias !385
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !97     ; 2 uses
  %.not81 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %5, align 8, !tbaa !97     ; 2 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !21, !noalias !386
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22, !noalias !386
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67, !noalias !386
  %factor.op.mul128 = mul i64 %i.u, %i.w
  %i.x = load i32, ptr %7, align 4, !tbaa !69     ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i32 %i.x, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us, label %._crit_edge127

_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us:       ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph
  %i.ad = load i32, ptr %9, align 4, !tbaa !69    ; 9 uses
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
  %i.ap = zext nneg i32 %i.ad to i64              ; 4 uses
  %i.aq = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.ar = getelementptr i8, ptr %i.aq, i64 36
  %min.iters.check = icmp ult i32 %i.ad, 5
  %min.iters.check164 = icmp ult i32 %i.ad, 17
  %i.as = and i64 %i.ap, 15                       ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = select i1 %i.at, i64 16, i64 %i.as      ; 2 uses
  %n.vec = sub nsw i64 %i.ap, %i.au               ; 5 uses
  %i.av = trunc i64 %n.vec to i32
  %i.aw = sub i32 %i.ad, %i.av
  %i.ax = shl nsw i64 %n.vec, 3                   ; 3 uses
  %i.ay = shl nsw i64 %n.vec, 2
end_hunk_0
