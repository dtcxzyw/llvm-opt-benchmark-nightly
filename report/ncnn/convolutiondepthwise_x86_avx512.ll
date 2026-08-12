inline.NumInlined: 230
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4ncnnL15convdw3x3s1_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
  %i.bu = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bv = getelementptr i8, ptr %i.bu, i64 36
  %min.iters.check459 = icmp ult i32 %i.s, 4
  %min.iters.check461 = icmp ult i32 %i.s, 16
  %i.bw = and i64 %i.bj, 12
  %n.vec463 = and i64 %i.bj, 2147483632           ; 5 uses
  %i.bx = shl nuw nsw i64 %n.vec463, 2            ; 6 uses
  %i.by = trunc nuw nsw i64 %n.vec463 to i32
  %i.bz = sub nsw i32 %i.s, %i.by
  %cmp.n506 = icmp eq i64 %n.vec463, %i.bj
  %min.epilog.iters.check517 = icmp eq i64 %i.bw, 0
  %n.vec519 = and i64 %i.bj, 2147483644           ; 4 uses
  %i.ca = shl nuw nsw i64 %n.vec519, 2            ; 6 uses
  %i.cb = trunc nuw nsw i64 %n.vec519 to i32
  %i.cc = sub nsw i32 %i.s, %i.cb
  %cmp.n562 = icmp eq i64 %n.vec519, %i.bj
  %min.iters.check = icmp ult i32 %i.s, 4
  %min.iters.check326 = icmp ult i32 %i.s, 16
  %i.cd = and i64 %i.bj, 12
  %n.vec = and i64 %i.bj, 2147483632              ; 5 uses
  %i.ce = trunc nuw nsw i64 %n.vec to i32
  %i.cf = sub nsw i32 %i.s, %i.ce
  %i.cg = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bj
  %min.epilog.iters.check = icmp eq i64 %i.cd, 0
  %n.vec362 = and i64 %i.bj, 2147483644           ; 4 uses
  %i.ch = trunc nuw nsw i64 %n.vec362 to i32
  %i.ci = sub nsw i32 %i.s, %i.ch
  %i.cj = shl nuw nsw i64 %n.vec362, 2            ; 4 uses
  %cmp.n401 = icmp eq i64 %n.vec362, %i.bj
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv278 = phi i64 [ %i.aj, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %indvars.iv275 = phi ptr [ %scevgep274, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep276, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv272 = phi ptr [ %scevgep271, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep273, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv269 = phi ptr [ %scevgep268, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep270, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi ptr [ %scevgep, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep267, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ck = mul nuw nsw i64 %indvar, 36             ; 2 uses
  %scevgep414 = getelementptr i8, ptr %i.bq, i64 %i.ck ; 2 uses
  %scevgep415 = getelementptr i8, ptr %i.bs, i64 %i.ck ; 2 uses
  %i.cl = mul nuw nsw i64 %indvar, 36             ; 2 uses
  %scevgep313 = getelementptr i8, ptr %i.bt, i64 %i.cl
  %scevgep314 = getelementptr i8, ptr %i.bv, i64 %i.cl
  %.reass = mul i64 %factor.op.mul, %indvars.iv278
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  br i1 %.not170, label %_ZN4ncnn3MatD2Ev.exit171, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv278
  %i.co = load float, ptr %i.cn, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit171

_ZN4ncnn3MatD2Ev.exit171:                         ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.cp = phi fast float [ %i.co, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit ] ; 7 uses
  %.idx = mul nsw i64 %indvars.iv278, 36
  %i.cq = getelementptr inbounds i8, ptr %i.r, i64 %.idx ; 20 uses
  %.reass249 = mul i64 %factor.op.mul248, %indvars.iv278
  %i.cr = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass249 ; 5 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.aa ; 2 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ac ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 12 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 4 uses
  br i1 %i.ag, label %.lr.ph219, label %.preheader

.lr.ph219:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit171
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 20 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 28 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 3 uses
  br i1 %i.ba, label %.lr.ph.us.preheader, label %.lr.ph219.split.preheader

.lr.ph219.split.preheader:                        ; preds = %.lr.ph219
  %scevgep277 = getelementptr i8, ptr %indvars.iv275, i64 %i.bc
  br label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph219
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.y
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ae
  %broadcast.splatinsert464 = insertelement <16 x float> poison, float %i.cp, i64 0
  %broadcast.splat465 = shufflevector <16 x float> %broadcast.splatinsert464, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert520 = insertelement <4 x float> poison, float %i.cp, i64 0
  %broadcast.splat521 = shufflevector <4 x float> %broadcast.splatinsert520, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %iter.check514

iter.check514:                                    ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0149218.us = phi ptr [ %i.jr, %._crit_edge.us ], [ %i.cm, %.lr.ph.us.preheader ] ; 13 uses
  %.0150217.us = phi ptr [ %i.js, %._crit_edge.us ], [ %i.dc, %.lr.ph.us.preheader ] ; 13 uses
  %.0153216.us = phi i32 [ %i.jt, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0155215.us = phi ptr [ %i.jn, %._crit_edge.us ], [ %i.cr, %.lr.ph.us.preheader ] ; 9 uses
  %.0159214.us = phi ptr [ %i.jo, %._crit_edge.us ], [ %i.cs, %.lr.ph.us.preheader ] ; 9 uses
  %.0163213.us = phi ptr [ %i.jp, %._crit_edge.us ], [ %i.ct, %.lr.ph.us.preheader ] ; 9 uses
  %.0167212.us = phi ptr [ %i.jq, %._crit_edge.us ], [ %i.dd, %.lr.ph.us.preheader ] ; 9 uses
  br i1 %min.iters.check459, label %vec.epilog.scalar.ph515.preheader, label %vector.memcheck407

vector.memcheck407:                               ; preds = %iter.check514
  %scevgep408 = getelementptr i8, ptr %.0149218.us, i64 %i.bn ; 6 uses
  %scevgep409 = getelementptr i8, ptr %.0150217.us, i64 %i.bn ; 6 uses
  %scevgep410 = getelementptr i8, ptr %.0167212.us, i64 %i.bo ; 2 uses
  %scevgep411 = getelementptr i8, ptr %.0163213.us, i64 %i.bo ; 2 uses
  %scevgep412 = getelementptr i8, ptr %.0159214.us, i64 %i.bo ; 2 uses
  %scevgep413 = getelementptr i8, ptr %.0155215.us, i64 %i.bo ; 2 uses
  %bound0416 = icmp ult ptr %.0149218.us, %scevgep409
  %bound1417 = icmp ult ptr %.0150217.us, %scevgep408
  %found.conflict418 = and i1 %bound0416, %bound1417
  %bound0419 = icmp ult ptr %.0149218.us, %scevgep410
  %bound1420 = icmp ult ptr %.0167212.us, %scevgep408
  %found.conflict421 = and i1 %bound0419, %bound1420
  %conflict.rdx422 = or i1 %found.conflict418, %found.conflict421
  %bound0423 = icmp ult ptr %.0149218.us, %scevgep411
  %bound1424 = icmp ult ptr %.0163213.us, %scevgep408
  %found.conflict425 = and i1 %bound0423, %bound1424
  %conflict.rdx426 = or i1 %conflict.rdx422, %found.conflict425
  %bound0427 = icmp ult ptr %.0149218.us, %scevgep412
  %bound1428 = icmp ult ptr %.0159214.us, %scevgep408
  %found.conflict429 = and i1 %bound0427, %bound1428
  %conflict.rdx430 = or i1 %conflict.rdx426, %found.conflict429
  %bound0431 = icmp ult ptr %.0149218.us, %scevgep413
  %bound1432 = icmp ult ptr %.0155215.us, %scevgep408
  %found.conflict433 = and i1 %bound0431, %bound1432
  %conflict.rdx434 = or i1 %conflict.rdx430, %found.conflict433
  %bound0435 = icmp ult ptr %.0149218.us, %scevgep415
  %bound1436 = icmp ult ptr %scevgep414, %scevgep408
  %found.conflict437 = and i1 %bound0435, %bound1436
  %conflict.rdx438 = or i1 %conflict.rdx434, %found.conflict437
  %bound0439 = icmp ult ptr %.0150217.us, %scevgep410
  %bound1440 = icmp ult ptr %.0167212.us, %scevgep409
  %found.conflict441 = and i1 %bound0439, %bound1440
  %conflict.rdx442 = or i1 %conflict.rdx438, %found.conflict441
  %bound0443 = icmp ult ptr %.0150217.us, %scevgep411
  %bound1444 = icmp ult ptr %.0163213.us, %scevgep409
  %found.conflict445 = and i1 %bound0443, %bound1444
  %conflict.rdx446 = or i1 %conflict.rdx442, %found.conflict445
  %bound0447 = icmp ult ptr %.0150217.us, %scevgep412
  %bound1448 = icmp ult ptr %.0159214.us, %scevgep409
  %found.conflict449 = and i1 %bound0447, %bound1448
  %conflict.rdx450 = or i1 %conflict.rdx446, %found.conflict449
  %bound0451 = icmp ult ptr %.0150217.us, %scevgep413
  %bound1452 = icmp ult ptr %.0155215.us, %scevgep409
  %found.conflict453 = and i1 %bound0451, %bound1452
  %conflict.rdx454 = or i1 %conflict.rdx450, %found.conflict453
  %bound0455 = icmp ult ptr %.0150217.us, %scevgep415
  %bound1456 = icmp ult ptr %scevgep414, %scevgep409
  %found.conflict457 = and i1 %bound0455, %bound1456
  %conflict.rdx458 = or i1 %conflict.rdx454, %found.conflict457
  br i1 %conflict.rdx458, label %vec.epilog.scalar.ph515.preheader, label %vector.main.loop.iter.check460

vector.main.loop.iter.check460:                   ; preds = %vector.memcheck407
  br i1 %min.iters.check461, label %vec.epilog.ph518, label %vector.ph462

vector.ph462:                                     ; preds = %vector.main.loop.iter.check460
  %i.de = getelementptr i8, ptr %.0149218.us, i64 %i.bx ; 2 uses
  %i.df = getelementptr i8, ptr %.0150217.us, i64 %i.bx ; 2 uses
  %i.dg = getelementptr i8, ptr %.0155215.us, i64 %i.bx ; 2 uses
  %i.dh = getelementptr i8, ptr %.0159214.us, i64 %i.bx ; 2 uses
  %i.di = getelementptr i8, ptr %.0163213.us, i64 %i.bx ; 2 uses
  %i.dj = getelementptr i8, ptr %.0167212.us, i64 %i.bx ; 2 uses
  %i.dk = load float, ptr %i.cq, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert475 = insertelement <16 x float> poison, float %i.dk, i64 0
  %broadcast.splat476 = shufflevector <16 x float> %broadcast.splatinsert475, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dl = load float, ptr %i.cw, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert478 = insertelement <16 x float> poison, float %i.dl, i64 0
  %broadcast.splat479 = shufflevector <16 x float> %broadcast.splatinsert478, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dm = load float, ptr %i.cx, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert481 = insertelement <16 x float> poison, float %i.dm, i64 0
  %broadcast.splat482 = shufflevector <16 x float> %broadcast.splatinsert481, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dn = load float, ptr %i.cu, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert484 = insertelement <16 x float> poison, float %i.dn, i64 0
  %broadcast.splat485 = shufflevector <16 x float> %broadcast.splatinsert484, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.do = load float, ptr %i.cy, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert487 = insertelement <16 x float> poison, float %i.do, i64 0
  %broadcast.splat488 = shufflevector <16 x float> %broadcast.splatinsert487, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dp = load float, ptr %i.cz, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert490 = insertelement <16 x float> poison, float %i.dp, i64 0
  %broadcast.splat491 = shufflevector <16 x float> %broadcast.splatinsert490, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dq = load float, ptr %i.cv, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert493 = insertelement <16 x float> poison, float %i.dq, i64 0
  %broadcast.splat494 = shufflevector <16 x float> %broadcast.splatinsert493, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dr = load float, ptr %i.da, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert496 = insertelement <16 x float> poison, float %i.dr, i64 0
  %broadcast.splat497 = shufflevector <16 x float> %broadcast.splatinsert496, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ds = load float, ptr %i.db, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert499 = insertelement <16 x float> poison, float %i.ds, i64 0
  %broadcast.splat500 = shufflevector <16 x float> %broadcast.splatinsert499, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body466

vector.body466:                                   ; preds = %vector.body466, %vector.ph462
  %index467 = phi i64 [ 0, %vector.ph462 ], [ %index.next504, %vector.body466 ] ; 2 uses
  %i.dt = shl i64 %index467, 2                    ; 6 uses
  %next.gep468 = getelementptr i8, ptr %.0149218.us, i64 %i.dt
  %next.gep469 = getelementptr i8, ptr %.0150217.us, i64 %i.dt
  %next.gep470 = getelementptr i8, ptr %.0155215.us, i64 %i.dt ; 3 uses
  %next.gep471 = getelementptr i8, ptr %.0159214.us, i64 %i.dt ; 3 uses
  %next.gep472 = getelementptr i8, ptr %.0163213.us, i64 %i.dt ; 3 uses
  %next.gep473 = getelementptr i8, ptr %.0167212.us, i64 %i.dt ; 3 uses
  %wide.load474 = load <16 x float>, ptr %next.gep470, align 4, !tbaa !45, !alias.scope !331
  %i.du = fmul fast <16 x float> %broadcast.splat476, %wide.load474
  %i.dv = fadd fast <16 x float> %i.du, %broadcast.splat465
  %i.dw = getelementptr inbounds nuw i8, ptr %next.gep470, i64 4
  %wide.load477 = load <16 x float>, ptr %i.dw, align 4, !tbaa !45, !alias.scope !331
  %i.dx = fmul fast <16 x float> %broadcast.splat479, %wide.load477
  %i.dy = fadd fast <16 x float> %i.dv, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %next.gep470, i64 8
  %wide.load480 = load <16 x float>, ptr %i.dz, align 4, !tbaa !45, !alias.scope !331
  %i.ea = fmul fast <16 x float> %broadcast.splat482, %wide.load480
  %i.eb = fadd fast <16 x float> %i.dy, %i.ea
  %wide.load483 = load <16 x float>, ptr %next.gep471, align 4, !tbaa !45, !alias.scope !333 ; 2 uses
  %i.ec = fmul fast <16 x float> %broadcast.splat485, %wide.load483
  %i.ed = fadd fast <16 x float> %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %next.gep471, i64 4
  %wide.load486 = load <16 x float>, ptr %i.ee, align 4, !tbaa !45, !alias.scope !333 ; 2 uses
  %i.ef = fmul fast <16 x float> %broadcast.splat488, %wide.load486
  %i.eg = fadd fast <16 x float> %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %next.gep471, i64 8
  %wide.load489 = load <16 x float>, ptr %i.eh, align 4, !tbaa !45, !alias.scope !333 ; 2 uses
  %i.ei = fmul fast <16 x float> %broadcast.splat491, %wide.load489
  %i.ej = fadd fast <16 x float> %i.eg, %i.ei
  %wide.load492 = load <16 x float>, ptr %next.gep472, align 4, !tbaa !45, !alias.scope !335 ; 2 uses
  %i.ek = fmul fast <16 x float> %broadcast.splat494, %wide.load492
  %i.el = fadd fast <16 x float> %i.ej, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %next.gep472, i64 4
  %wide.load495 = load <16 x float>, ptr %i.em, align 4, !tbaa !45, !alias.scope !335 ; 2 uses
  %i.en = fmul fast <16 x float> %broadcast.splat497, %wide.load495
  %i.eo = fadd fast <16 x float> %i.el, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %next.gep472, i64 8
  %wide.load498 = load <16 x float>, ptr %i.ep, align 4, !tbaa !45, !alias.scope !335 ; 2 uses
  %i.eq = fmul fast <16 x float> %broadcast.splat500, %wide.load498
  %i.er = fadd fast <16 x float> %i.eo, %i.eq
  %i.es = fmul fast <16 x float> %wide.load483, %broadcast.splat476
  %i.et = fadd fast <16 x float> %i.es, %broadcast.splat465
  %i.eu = fmul fast <16 x float> %wide.load486, %broadcast.splat479
  %i.ev = fadd fast <16 x float> %i.et, %i.eu
  %i.ew = fmul fast <16 x float> %wide.load489, %broadcast.splat482
  %i.ex = fadd fast <16 x float> %i.ev, %i.ew
  %i.ey = fmul fast <16 x float> %wide.load492, %broadcast.splat485
  %i.ez = fadd fast <16 x float> %i.ex, %i.ey
  %i.fa = fmul fast <16 x float> %wide.load495, %broadcast.splat488
  %i.fb = fadd fast <16 x float> %i.ez, %i.fa
  %i.fc = fmul fast <16 x float> %wide.load498, %broadcast.splat491
  %i.fd = fadd fast <16 x float> %i.fb, %i.fc
  %wide.load501 = load <16 x float>, ptr %next.gep473, align 4, !tbaa !45, !alias.scope !337
  %i.fe = fmul fast <16 x float> %wide.load501, %broadcast.splat494
  %i.ff = fadd fast <16 x float> %i.fd, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %next.gep473, i64 4
  %wide.load502 = load <16 x float>, ptr %i.fg, align 4, !tbaa !45, !alias.scope !337
  %i.fh = fmul fast <16 x float> %wide.load502, %broadcast.splat497
  %i.fi = fadd fast <16 x float> %i.ff, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %next.gep473, i64 8
  %wide.load503 = load <16 x float>, ptr %i.fj, align 4, !tbaa !45, !alias.scope !337
  %i.fk = fmul fast <16 x float> %wide.load503, %broadcast.splat500
  %i.fl = fadd fast <16 x float> %i.fi, %i.fk
  store <16 x float> %i.er, ptr %next.gep468, align 4, !tbaa !45, !alias.scope !339, !noalias !341
  store <16 x float> %i.fl, ptr %next.gep469, align 4, !tbaa !45, !alias.scope !343, !noalias !344
  %index.next504 = add nuw i64 %index467, 16      ; 2 uses
  %i.fm = icmp eq i64 %index.next504, %n.vec463
  br i1 %i.fm, label %middle.block505, label %vector.body466, !llvm.loop !345

middle.block505:                                  ; preds = %vector.body466
  br i1 %cmp.n506, label %._crit_edge.us, label %vec.epilog.iter.check516

vec.epilog.iter.check516:                         ; preds = %middle.block505
  br i1 %min.epilog.iters.check517, label %vec.epilog.scalar.ph515.preheader, label %vec.epilog.ph518, !prof !346

vec.epilog.ph518:                                 ; preds = %vector.main.loop.iter.check460, %vec.epilog.iter.check516
  %vec.epilog.resume.val507 = phi i64 [ %n.vec463, %vec.epilog.iter.check516 ], [ 0, %vector.main.loop.iter.check460 ]
  %i.fn = getelementptr i8, ptr %.0149218.us, i64 %i.ca ; 2 uses
  %i.fo = getelementptr i8, ptr %.0150217.us, i64 %i.ca ; 2 uses
  %i.fp = getelementptr i8, ptr %.0155215.us, i64 %i.ca ; 2 uses
  %i.fq = getelementptr i8, ptr %.0159214.us, i64 %i.ca ; 2 uses
  %i.fr = getelementptr i8, ptr %.0163213.us, i64 %i.ca ; 2 uses
  %i.fs = getelementptr i8, ptr %.0167212.us, i64 %i.ca ; 2 uses
  %i.ft = load float, ptr %i.cq, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert531 = insertelement <4 x float> poison, float %i.ft, i64 0
  %broadcast.splat532 = shufflevector <4 x float> %broadcast.splatinsert531, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fu = load float, ptr %i.cw, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert534 = insertelement <4 x float> poison, float %i.fu, i64 0
  %broadcast.splat535 = shufflevector <4 x float> %broadcast.splatinsert534, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fv = load float, ptr %i.cx, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert537 = insertelement <4 x float> poison, float %i.fv, i64 0
  %broadcast.splat538 = shufflevector <4 x float> %broadcast.splatinsert537, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fw = load float, ptr %i.cu, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert540 = insertelement <4 x float> poison, float %i.fw, i64 0
  %broadcast.splat541 = shufflevector <4 x float> %broadcast.splatinsert540, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fx = load float, ptr %i.cy, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert543 = insertelement <4 x float> poison, float %i.fx, i64 0
  %broadcast.splat544 = shufflevector <4 x float> %broadcast.splatinsert543, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fy = load float, ptr %i.cz, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert546 = insertelement <4 x float> poison, float %i.fy, i64 0
  %broadcast.splat547 = shufflevector <4 x float> %broadcast.splatinsert546, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fz = load float, ptr %i.cv, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert549 = insertelement <4 x float> poison, float %i.fz, i64 0
  %broadcast.splat550 = shufflevector <4 x float> %broadcast.splatinsert549, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ga = load float, ptr %i.da, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert552 = insertelement <4 x float> poison, float %i.ga, i64 0
  %broadcast.splat553 = shufflevector <4 x float> %broadcast.splatinsert552, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gb = load float, ptr %i.db, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert555 = insertelement <4 x float> poison, float %i.gb, i64 0
  %broadcast.splat556 = shufflevector <4 x float> %broadcast.splatinsert555, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body522

vec.epilog.vector.body522:                        ; preds = %vec.epilog.vector.body522, %vec.epilog.ph518
  %index523 = phi i64 [ %vec.epilog.resume.val507, %vec.epilog.ph518 ], [ %index.next560, %vec.epilog.vector.body522 ] ; 2 uses
  %i.gc = shl i64 %index523, 2                    ; 6 uses
  %next.gep524 = getelementptr i8, ptr %.0149218.us, i64 %i.gc
  %next.gep525 = getelementptr i8, ptr %.0150217.us, i64 %i.gc
  %next.gep526 = getelementptr i8, ptr %.0155215.us, i64 %i.gc ; 3 uses
  %next.gep527 = getelementptr i8, ptr %.0159214.us, i64 %i.gc ; 3 uses
  %next.gep528 = getelementptr i8, ptr %.0163213.us, i64 %i.gc ; 3 uses
  %next.gep529 = getelementptr i8, ptr %.0167212.us, i64 %i.gc ; 3 uses
  %wide.load530 = load <4 x float>, ptr %next.gep526, align 4, !tbaa !45, !alias.scope !331
  %i.gd = fmul fast <4 x float> %broadcast.splat532, %wide.load530
  %i.ge = fadd fast <4 x float> %i.gd, %broadcast.splat521
  %i.gf = getelementptr inbounds nuw i8, ptr %next.gep526, i64 4
  %wide.load533 = load <4 x float>, ptr %i.gf, align 4, !tbaa !45, !alias.scope !331
  %i.gg = fmul fast <4 x float> %broadcast.splat535, %wide.load533
  %i.gh = fadd fast <4 x float> %i.ge, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %next.gep526, i64 8
  %wide.load536 = load <4 x float>, ptr %i.gi, align 4, !tbaa !45, !alias.scope !331
  %i.gj = fmul fast <4 x float> %broadcast.splat538, %wide.load536
  %i.gk = fadd fast <4 x float> %i.gh, %i.gj
  %wide.load539 = load <4 x float>, ptr %next.gep527, align 4, !tbaa !45, !alias.scope !333 ; 2 uses
  %i.gl = fmul fast <4 x float> %broadcast.splat541, %wide.load539
  %i.gm = fadd fast <4 x float> %i.gk, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %next.gep527, i64 4
  %wide.load542 = load <4 x float>, ptr %i.gn, align 4, !tbaa !45, !alias.scope !333 ; 2 uses
  %i.go = fmul fast <4 x float> %broadcast.splat544, %wide.load542
  %i.gp = fadd fast <4 x float> %i.gm, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %next.gep527, i64 8
  %wide.load545 = load <4 x float>, ptr %i.gq, align 4, !tbaa !45, !alias.scope !333 ; 2 uses
  %i.gr = fmul fast <4 x float> %broadcast.splat547, %wide.load545
  %i.gs = fadd fast <4 x float> %i.gp, %i.gr
  %wide.load548 = load <4 x float>, ptr %next.gep528, align 4, !tbaa !45, !alias.scope !335 ; 2 uses
  %i.gt = fmul fast <4 x float> %broadcast.splat550, %wide.load548
  %i.gu = fadd fast <4 x float> %i.gs, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %next.gep528, i64 4
  %wide.load551 = load <4 x float>, ptr %i.gv, align 4, !tbaa !45, !alias.scope !335 ; 2 uses
  %i.gw = fmul fast <4 x float> %broadcast.splat553, %wide.load551
  %i.gx = fadd fast <4 x float> %i.gu, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %next.gep528, i64 8
  %wide.load554 = load <4 x float>, ptr %i.gy, align 4, !tbaa !45, !alias.scope !335 ; 2 uses
  %i.gz = fmul fast <4 x float> %broadcast.splat556, %wide.load554
  %i.ha = fadd fast <4 x float> %i.gx, %i.gz
  %i.hb = fmul fast <4 x float> %wide.load539, %broadcast.splat532
  %i.hc = fadd fast <4 x float> %i.hb, %broadcast.splat521
  %i.hd = fmul fast <4 x float> %wide.load542, %broadcast.splat535
  %i.he = fadd fast <4 x float> %i.hc, %i.hd
  %i.hf = fmul fast <4 x float> %wide.load545, %broadcast.splat538
  %i.hg = fadd fast <4 x float> %i.he, %i.hf
  %i.hh = fmul fast <4 x float> %wide.load548, %broadcast.splat541
  %i.hi = fadd fast <4 x float> %i.hg, %i.hh
  %i.hj = fmul fast <4 x float> %wide.load551, %broadcast.splat544
  %i.hk = fadd fast <4 x float> %i.hi, %i.hj
  %i.hl = fmul fast <4 x float> %wide.load554, %broadcast.splat547
  %i.hm = fadd fast <4 x float> %i.hk, %i.hl
  %wide.load557 = load <4 x float>, ptr %next.gep529, align 4, !tbaa !45, !alias.scope !337
  %i.hn = fmul fast <4 x float> %wide.load557, %broadcast.splat550
  %i.ho = fadd fast <4 x float> %i.hm, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %next.gep529, i64 4
  %wide.load558 = load <4 x float>, ptr %i.hp, align 4, !tbaa !45, !alias.scope !337
  %i.hq = fmul fast <4 x float> %wide.load558, %broadcast.splat553
  %i.hr = fadd fast <4 x float> %i.ho, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %next.gep529, i64 8
  %wide.load559 = load <4 x float>, ptr %i.hs, align 4, !tbaa !45, !alias.scope !337
  %i.ht = fmul fast <4 x float> %wide.load559, %broadcast.splat556
  %i.hu = fadd fast <4 x float> %i.hr, %i.ht
  store <4 x float> %i.ha, ptr %next.gep524, align 4, !tbaa !45, !alias.scope !339, !noalias !341
  store <4 x float> %i.hu, ptr %next.gep525, align 4, !tbaa !45, !alias.scope !343, !noalias !344
  %index.next560 = add nuw i64 %index523, 4       ; 2 uses
  %i.hv = icmp eq i64 %index.next560, %n.vec519
  br i1 %i.hv, label %vec.epilog.middle.block561, label %vec.epilog.vector.body522, !llvm.loop !347

vec.epilog.middle.block561:                       ; preds = %vec.epilog.vector.body522
  br i1 %cmp.n562, label %._crit_edge.us, label %vec.epilog.scalar.ph515.preheader

vec.epilog.scalar.ph515.preheader:                ; preds = %vector.memcheck407, %iter.check514, %vec.epilog.iter.check516, %vec.epilog.middle.block561
  %.1206.us.ph = phi ptr [ %.0149218.us, %iter.check514 ], [ %.0149218.us, %vector.memcheck407 ], [ %i.de, %vec.epilog.iter.check516 ], [ %i.fn, %vec.epilog.middle.block561 ]
  %.1151205.us.ph = phi ptr [ %.0150217.us, %iter.check514 ], [ %.0150217.us, %vector.memcheck407 ], [ %i.df, %vec.epilog.iter.check516 ], [ %i.fo, %vec.epilog.middle.block561 ]
  %.0152204.us.ph = phi i32 [ %i.s, %iter.check514 ], [ %i.s, %vector.memcheck407 ], [ %i.bz, %vec.epilog.iter.check516 ], [ %i.cc, %vec.epilog.middle.block561 ]
  %.1156203.us.ph = phi ptr [ %.0155215.us, %iter.check514 ], [ %.0155215.us, %vector.memcheck407 ], [ %i.dg, %vec.epilog.iter.check516 ], [ %i.fp, %vec.epilog.middle.block561 ]
  %.1160202.us.ph = phi ptr [ %.0159214.us, %iter.check514 ], [ %.0159214.us, %vector.memcheck407 ], [ %i.dh, %vec.epilog.iter.check516 ], [ %i.fq, %vec.epilog.middle.block561 ]
  %.1164201.us.ph = phi ptr [ %.0163213.us, %iter.check514 ], [ %.0163213.us, %vector.memcheck407 ], [ %i.di, %vec.epilog.iter.check516 ], [ %i.fr, %vec.epilog.middle.block561 ]
  %.1168200.us.ph = phi ptr [ %.0167212.us, %iter.check514 ], [ %.0167212.us, %vector.memcheck407 ], [ %i.dj, %vec.epilog.iter.check516 ], [ %i.fs, %vec.epilog.middle.block561 ]
  br label %vec.epilog.scalar.ph515

vec.epilog.scalar.ph515:                          ; preds = %vec.epilog.scalar.ph515.preheader, %vec.epilog.scalar.ph515
  %.1206.us = phi ptr [ %i.jj, %vec.epilog.scalar.ph515 ], [ %.1206.us.ph, %vec.epilog.scalar.ph515.preheader ] ; 2 uses
  %.1151205.us = phi ptr [ %i.jk, %vec.epilog.scalar.ph515 ], [ %.1151205.us.ph, %vec.epilog.scalar.ph515.preheader ] ; 2 uses
  %.0152204.us = phi i32 [ %i.jl, %vec.epilog.scalar.ph515 ], [ %.0152204.us.ph, %vec.epilog.scalar.ph515.preheader ] ; 2 uses
  %.1156203.us = phi ptr [ %i.hw, %vec.epilog.scalar.ph515 ], [ %.1156203.us.ph, %vec.epilog.scalar.ph515.preheader ] ; 3 uses
  %.1160202.us = phi ptr [ %i.hz, %vec.epilog.scalar.ph515 ], [ %.1160202.us.ph, %vec.epilog.scalar.ph515.preheader ] ; 2 uses
  %.1164201.us = phi ptr [ %i.ia, %vec.epilog.scalar.ph515 ], [ %.1164201.us.ph, %vec.epilog.scalar.ph515.preheader ] ; 3 uses
  %.1168200.us = phi ptr [ %i.ik, %vec.epilog.scalar.ph515 ], [ %.1168200.us.ph, %vec.epilog.scalar.ph515.preheader ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 4 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 8
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !45
  %i.hz = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 4 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.1164201.us, i64 4 ; 3 uses
  %i.ib = load <2 x float>, ptr %.1156203.us, align 4, !tbaa !45
  %i.ic = load <2 x float>, ptr %.1160202.us, align 4, !tbaa !45 ; 2 uses
  %i.id = load <2 x float>, ptr %.1164201.us, align 4, !tbaa !45 ; 2 uses
  %i.ie = load <8 x float>, ptr %i.cq, align 4, !tbaa !45 ; 4 uses
  %i.if = shufflevector <2 x float> %i.ic, <2 x float> %i.id, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3>
  %i.ig = insertelement <8 x float> %i.if, float %i.hy, i64 2
  %i.ih = shufflevector <2 x float> %i.ib, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ii = getelementptr inbounds nuw i8, ptr %.1164201.us, i64 8
  %i.ij = load float, ptr %i.db, align 4, !tbaa !45 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.1168200.us, i64 4 ; 2 uses
  %i.il = load <2 x float>, ptr %i.hz, align 4, !tbaa !45 ; 2 uses
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.in = shufflevector <8 x float> %i.ig, <8 x float> %i.im, <8 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 4, i32 9, i32 6, i32 7>
  %i.io = shufflevector <8 x float> %i.ih, <8 x float> %i.in, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ip = fmul fast <8 x float> %i.ie, %i.io
  %i.iq = load <2 x float>, ptr %i.ia, align 4, !tbaa !45
  %i.ir = load float, ptr %i.ii, align 4, !tbaa !45
  %i.is = fmul fast float %i.ij, %i.ir
  %op.rdx571 = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.is, <8 x float> %i.ip)
  %op.rdx572 = fadd fast float %op.rdx571, %i.cp
  %i.it = load <2 x float>, ptr %.1168200.us, align 4, !tbaa !45
  %i.iu = shufflevector <2 x float> %i.id, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iv = shufflevector <8 x float> %i.ie, <8 x float> %i.iu, <4 x i32> <i32 0, i32 1, i32 2, i32 8>
  %i.iw = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> %i.iv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 poison, i32 poison>
  %i.iy = shufflevector <2 x float> %i.it, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iz = shufflevector <8 x float> %i.ix, <8 x float> %i.iy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ja = shufflevector <2 x float> %i.ic, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jb = shufflevector <8 x float> %i.ja, <8 x float> %i.ie, <8 x i32> <i32 0, i32 poison, i32 poison, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jc = shufflevector <2 x float> %i.il, <2 x float> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jd = shufflevector <8 x float> %i.jb, <8 x float> %i.jc, <8 x i32> <i32 0, i32 9, i32 10, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.je = shufflevector <8 x float> %i.jd, <8 x float> %i.ie, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.jf = fmul fast <8 x float> %i.iz, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %.1168200.us, i64 8
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !45
  %i.ji = fmul fast float %i.jh, %i.ij
  %op.rdx573 = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.ji, <8 x float> %i.jf)
  %op.rdx574 = fadd fast float %op.rdx573, %i.cp
  store float %op.rdx572, ptr %.1206.us, align 4, !tbaa !45
  store float %op.rdx574, ptr %.1151205.us, align 4, !tbaa !45
  %i.jj = getelementptr inbounds nuw i8, ptr %.1206.us, i64 4 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.1151205.us, i64 4 ; 2 uses
  %i.jl = add nsw i32 %.0152204.us, -1
  %i.jm = icmp sgt i32 %.0152204.us, 1
  br i1 %i.jm, label %vec.epilog.scalar.ph515, label %._crit_edge.us, !llvm.loop !348

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph515, %vec.epilog.middle.block561, %middle.block505
  %.lcssa303 = phi ptr [ %i.fp, %vec.epilog.middle.block561 ], [ %i.dg, %middle.block505 ], [ %i.hw, %vec.epilog.scalar.ph515 ]
  %.lcssa302 = phi ptr [ %i.fq, %vec.epilog.middle.block561 ], [ %i.dh, %middle.block505 ], [ %i.hz, %vec.epilog.scalar.ph515 ]
  %.lcssa301 = phi ptr [ %i.fr, %vec.epilog.middle.block561 ], [ %i.di, %middle.block505 ], [ %i.ia, %vec.epilog.scalar.ph515 ]
  %.lcssa300 = phi ptr [ %i.fs, %vec.epilog.middle.block561 ], [ %i.dj, %middle.block505 ], [ %i.ik, %vec.epilog.scalar.ph515 ]
  %.lcssa299 = phi ptr [ %i.fn, %vec.epilog.middle.block561 ], [ %i.de, %middle.block505 ], [ %i.jj, %vec.epilog.scalar.ph515 ]
  %.lcssa = phi ptr [ %i.fo, %vec.epilog.middle.block561 ], [ %i.df, %middle.block505 ], [ %i.jk, %vec.epilog.scalar.ph515 ]
  %i.jn = getelementptr inbounds [4 x i8], ptr %.lcssa303, i64 %i.ai ; 2 uses
  %i.jo = getelementptr inbounds [4 x i8], ptr %.lcssa302, i64 %i.ai ; 2 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %.lcssa301, i64 %i.ai ; 2 uses
  %i.jq = getelementptr inbounds [4 x i8], ptr %.lcssa300, i64 %i.ai
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.lcssa299, i64 %i.bb ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.bb
  %i.jt = add nuw nsw i32 %.0153216.us, 2         ; 2 uses
  %i.ju = or disjoint i32 %i.jt, 1
  %i.jv = icmp slt i32 %i.ju, %i.af
  br i1 %i.jv, label %iter.check514, label %.preheader, !llvm.loop !349

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph219.split.preheader, %_ZN4ncnn3MatD2Ev.exit171
  %.0163.lcssa = phi ptr [ %i.ct, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv272, %.lr.ph219.split.preheader ], [ %i.jp, %._crit_edge.us ]
  %.0159.lcssa = phi ptr [ %i.cs, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv269, %.lr.ph219.split.preheader ], [ %i.jo, %._crit_edge.us ]
  %.0155.lcssa = phi ptr [ %i.cr, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv, %.lr.ph219.split.preheader ], [ %i.jn, %._crit_edge.us ]
  %.0153.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit171 ], [ %i.ay, %.lr.ph219.split.preheader ], [ %i.ay, %._crit_edge.us ] ; 2 uses
  %.0149.lcssa = phi ptr [ %i.cm, %_ZN4ncnn3MatD2Ev.exit171 ], [ %scevgep277, %.lr.ph219.split.preheader ], [ %i.jr, %._crit_edge.us ]
  %i.jw = icmp slt i32 %.0153.lcssa, %i.af
  br i1 %i.jw, label %.lr.ph244, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph244:                                        ; preds = %.preheader
  %i.jx = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.cq, i64 20 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.cq, i64 28 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 3 uses
  br i1 %i.bd, label %iter.check.preheader, label %_ZN4ncnn3MatD2Ev.exit

iter.check.preheader:                             ; preds = %.lr.ph244
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.cp, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert363 = insertelement <4 x float> poison, float %i.cp, i64 0
  %broadcast.splat364 = shufflevector <4 x float> %broadcast.splatinsert363, <4 x float> poison, <4 x i32> zeroinitializer
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge
  %.2243 = phi ptr [ %.lcssa308, %._crit_edge ], [ %.0149.lcssa, %iter.check.preheader ] ; 11 uses
  %.1154242 = phi i32 [ %i.oh, %._crit_edge ], [ %.0153.lcssa, %iter.check.preheader ]
  %.2157241 = phi ptr [ %i.oe, %._crit_edge ], [ %.0155.lcssa, %iter.check.preheader ] ; 8 uses
  %.2161240 = phi ptr [ %i.of, %._crit_edge ], [ %.0159.lcssa, %iter.check.preheader ] ; 8 uses
  %.2165239 = phi ptr [ %i.og, %._crit_edge ], [ %.0163.lcssa, %iter.check.preheader ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kd = getelementptr i8, ptr %.2243, i64 %i.bg
  %scevgep309 = getelementptr i8, ptr %i.kd, i64 4 ; 4 uses
  %scevgep310 = getelementptr i8, ptr %.2165239, i64 %i.bh
  %scevgep311 = getelementptr i8, ptr %.2161240, i64 %i.bh
  %scevgep312 = getelementptr i8, ptr %.2157241, i64 %i.bh
  %bound0 = icmp ult ptr %.2243, %scevgep310
  %bound1 = icmp ult ptr %.2165239, %scevgep309
  %found.conflict = and i1 %bound0, %bound1
  %bound0315 = icmp ult ptr %.2243, %scevgep311
  %bound1316 = icmp ult ptr %.2161240, %scevgep309
  %found.conflict317 = and i1 %bound0315, %bound1316
  %conflict.rdx = or i1 %found.conflict, %found.conflict317
  %bound0318 = icmp ult ptr %.2243, %scevgep312
  %bound1319 = icmp ult ptr %.2157241, %scevgep309
  %found.conflict320 = and i1 %bound0318, %bound1319
  %conflict.rdx321 = or i1 %conflict.rdx, %found.conflict320
  %bound0322 = icmp ult ptr %.2243, %scevgep314
  %bound1323 = icmp ult ptr %scevgep313, %scevgep309
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx325 = or i1 %conflict.rdx321, %found.conflict324
  br i1 %conflict.rdx325, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check326, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ke = getelementptr i8, ptr %.2243, i64 %i.cg ; 2 uses
  %i.kf = getelementptr i8, ptr %.2157241, i64 %i.cg ; 2 uses
  %i.kg = getelementptr i8, ptr %.2161240, i64 %i.cg ; 2 uses
  %i.kh = getelementptr i8, ptr %.2165239, i64 %i.cg ; 2 uses
  %i.ki = load float, ptr %i.cq, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert330 = insertelement <16 x float> poison, float %i.ki, i64 0
  %broadcast.splat331 = shufflevector <16 x float> %broadcast.splatinsert330, <16 x float> poison, <16 x i32> zeroinitializer
  %i.kj = load float, ptr %i.jx, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert333 = insertelement <16 x float> poison, float %i.kj, i64 0
  %broadcast.splat334 = shufflevector <16 x float> %broadcast.splatinsert333, <16 x float> poison, <16 x i32> zeroinitializer
  %i.kk = load float, ptr %i.jy, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert336 = insertelement <16 x float> poison, float %i.kk, i64 0
  %broadcast.splat337 = shufflevector <16 x float> %broadcast.splatinsert336, <16 x float> poison, <16 x i32> zeroinitializer
  %i.kl = load float, ptr %i.cu, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert339 = insertelement <16 x float> poison, float %i.kl, i64 0
  %broadcast.splat340 = shufflevector <16 x float> %broadcast.splatinsert339, <16 x float> poison, <16 x i32> zeroinitializer
  %i.km = load float, ptr %i.jz, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert342 = insertelement <16 x float> poison, float %i.km, i64 0
  %broadcast.splat343 = shufflevector <16 x float> %broadcast.splatinsert342, <16 x float> poison, <16 x i32> zeroinitializer
  %i.kn = load float, ptr %i.ka, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert345 = insertelement <16 x float> poison, float %i.kn, i64 0
  %broadcast.splat346 = shufflevector <16 x float> %broadcast.splatinsert345, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ko = load float, ptr %i.cv, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert348 = insertelement <16 x float> poison, float %i.ko, i64 0
  %broadcast.splat349 = shufflevector <16 x float> %broadcast.splatinsert348, <16 x float> poison, <16 x i32> zeroinitializer
  %i.kp = load float, ptr %i.kb, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert351 = insertelement <16 x float> poison, float %i.kp, i64 0
  %broadcast.splat352 = shufflevector <16 x float> %broadcast.splatinsert351, <16 x float> poison, <16 x i32> zeroinitializer
  %i.kq = load float, ptr %i.kc, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert354 = insertelement <16 x float> poison, float %i.kq, i64 0
  %broadcast.splat355 = shufflevector <16 x float> %broadcast.splatinsert354, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kr = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.2243, i64 %i.kr
  %next.gep327 = getelementptr i8, ptr %.2157241, i64 %i.kr ; 3 uses
  %next.gep328 = getelementptr i8, ptr %.2161240, i64 %i.kr ; 3 uses
  %next.gep329 = getelementptr i8, ptr %.2165239, i64 %i.kr ; 3 uses
  %wide.load = load <16 x float>, ptr %next.gep327, align 4, !tbaa !45, !alias.scope !353
  %i.ks = fmul fast <16 x float> %broadcast.splat331, %wide.load
  %i.kt = fadd fast <16 x float> %i.ks, %broadcast.splat
  %i.ku = getelementptr inbounds nuw i8, ptr %next.gep327, i64 4
  %wide.load332 = load <16 x float>, ptr %i.ku, align 4, !tbaa !45, !alias.scope !353
  %i.kv = fmul fast <16 x float> %broadcast.splat334, %wide.load332
  %i.kw = fadd fast <16 x float> %i.kt, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %next.gep327, i64 8
  %wide.load335 = load <16 x float>, ptr %i.kx, align 4, !tbaa !45, !alias.scope !353
  %i.ky = fmul fast <16 x float> %broadcast.splat337, %wide.load335
  %i.kz = fadd fast <16 x float> %i.kw, %i.ky
  %wide.load338 = load <16 x float>, ptr %next.gep328, align 4, !tbaa !45, !alias.scope !355
  %i.la = fmul fast <16 x float> %broadcast.splat340, %wide.load338
  %i.lb = fadd fast <16 x float> %i.kz, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %next.gep328, i64 4
  %wide.load341 = load <16 x float>, ptr %i.lc, align 4, !tbaa !45, !alias.scope !355
  %i.ld = fmul fast <16 x float> %broadcast.splat343, %wide.load341
  %i.le = fadd fast <16 x float> %i.lb, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %next.gep328, i64 8
  %wide.load344 = load <16 x float>, ptr %i.lf, align 4, !tbaa !45, !alias.scope !355
  %i.lg = fmul fast <16 x float> %broadcast.splat346, %wide.load344
  %i.lh = fadd fast <16 x float> %i.le, %i.lg
  %wide.load347 = load <16 x float>, ptr %next.gep329, align 4, !tbaa !45, !alias.scope !357
  %i.li = fmul fast <16 x float> %broadcast.splat349, %wide.load347
  %i.lj = fadd fast <16 x float> %i.lh, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %next.gep329, i64 4
  %wide.load350 = load <16 x float>, ptr %i.lk, align 4, !tbaa !45, !alias.scope !357
  %i.ll = fmul fast <16 x float> %broadcast.splat352, %wide.load350
  %i.lm = fadd fast <16 x float> %i.lj, %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %next.gep329, i64 8
  %wide.load353 = load <16 x float>, ptr %i.ln, align 4, !tbaa !45, !alias.scope !357
  %i.lo = fmul fast <16 x float> %broadcast.splat355, %wide.load353
  %i.lp = fadd fast <16 x float> %i.lm, %i.lo
  store <16 x float> %i.lp, ptr %next.gep, align 4, !tbaa !45, !alias.scope !359, !noalias !361
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.lq = icmp eq i64 %index.next, %n.vec
  br i1 %i.lq, label %middle.block, label %vector.body, !llvm.loop !362

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.kf, i64 -4
  %ind.escape356 = getelementptr i8, ptr %i.kg, i64 -4
  %ind.escape357 = getelementptr i8, ptr %i.kh, i64 -4
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !346

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.lr = getelementptr i8, ptr %.2243, i64 %i.cj ; 2 uses
  %i.ls = getelementptr i8, ptr %.2157241, i64 %i.cj ; 2 uses
  %i.lt = getelementptr i8, ptr %.2161240, i64 %i.cj ; 2 uses
  %i.lu = getelementptr i8, ptr %.2165239, i64 %i.cj ; 2 uses
  %i.lv = load float, ptr %i.cq, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert371 = insertelement <4 x float> poison, float %i.lv, i64 0
  %broadcast.splat372 = shufflevector <4 x float> %broadcast.splatinsert371, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lw = load float, ptr %i.jx, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert374 = insertelement <4 x float> poison, float %i.lw, i64 0
  %broadcast.splat375 = shufflevector <4 x float> %broadcast.splatinsert374, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lx = load float, ptr %i.jy, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert377 = insertelement <4 x float> poison, float %i.lx, i64 0
  %broadcast.splat378 = shufflevector <4 x float> %broadcast.splatinsert377, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ly = load float, ptr %i.cu, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert380 = insertelement <4 x float> poison, float %i.ly, i64 0
  %broadcast.splat381 = shufflevector <4 x float> %broadcast.splatinsert380, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lz = load float, ptr %i.jz, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert383 = insertelement <4 x float> poison, float %i.lz, i64 0
  %broadcast.splat384 = shufflevector <4 x float> %broadcast.splatinsert383, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ma = load float, ptr %i.ka, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert386 = insertelement <4 x float> poison, float %i.ma, i64 0
  %broadcast.splat387 = shufflevector <4 x float> %broadcast.splatinsert386, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mb = load float, ptr %i.cv, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert389 = insertelement <4 x float> poison, float %i.mb, i64 0
  %broadcast.splat390 = shufflevector <4 x float> %broadcast.splatinsert389, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mc = load float, ptr %i.kb, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert392 = insertelement <4 x float> poison, float %i.mc, i64 0
  %broadcast.splat393 = shufflevector <4 x float> %broadcast.splatinsert392, <4 x float> poison, <4 x i32> zeroinitializer
  %i.md = load float, ptr %i.kc, align 4, !tbaa !45, !alias.scope !350
  %broadcast.splatinsert395 = insertelement <4 x float> poison, float %i.md, i64 0
  %broadcast.splat396 = shufflevector <4 x float> %broadcast.splatinsert395, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index365 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next397, %vec.epilog.vector.body ] ; 2 uses
  %i.me = shl i64 %index365, 2                    ; 4 uses
  %next.gep366 = getelementptr i8, ptr %.2243, i64 %i.me
  %next.gep367 = getelementptr i8, ptr %.2157241, i64 %i.me ; 3 uses
  %next.gep368 = getelementptr i8, ptr %.2161240, i64 %i.me ; 3 uses
  %next.gep369 = getelementptr i8, ptr %.2165239, i64 %i.me ; 3 uses
  %wide.load370 = load <4 x float>, ptr %next.gep367, align 4, !tbaa !45, !alias.scope !353
  %i.mf = fmul fast <4 x float> %broadcast.splat372, %wide.load370
  %i.mg = fadd fast <4 x float> %i.mf, %broadcast.splat364
  %i.mh = getelementptr inbounds nuw i8, ptr %next.gep367, i64 4
  %wide.load373 = load <4 x float>, ptr %i.mh, align 4, !tbaa !45, !alias.scope !353
  %i.mi = fmul fast <4 x float> %broadcast.splat375, %wide.load373
  %i.mj = fadd fast <4 x float> %i.mg, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %next.gep367, i64 8
  %wide.load376 = load <4 x float>, ptr %i.mk, align 4, !tbaa !45, !alias.scope !353
  %i.ml = fmul fast <4 x float> %broadcast.splat378, %wide.load376
  %i.mm = fadd fast <4 x float> %i.mj, %i.ml
  %wide.load379 = load <4 x float>, ptr %next.gep368, align 4, !tbaa !45, !alias.scope !355
  %i.mn = fmul fast <4 x float> %broadcast.splat381, %wide.load379
  %i.mo = fadd fast <4 x float> %i.mm, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %next.gep368, i64 4
  %wide.load382 = load <4 x float>, ptr %i.mp, align 4, !tbaa !45, !alias.scope !355
  %i.mq = fmul fast <4 x float> %broadcast.splat384, %wide.load382
  %i.mr = fadd fast <4 x float> %i.mo, %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %next.gep368, i64 8
  %wide.load385 = load <4 x float>, ptr %i.ms, align 4, !tbaa !45, !alias.scope !355
  %i.mt = fmul fast <4 x float> %broadcast.splat387, %wide.load385
  %i.mu = fadd fast <4 x float> %i.mr, %i.mt
  %wide.load388 = load <4 x float>, ptr %next.gep369, align 4, !tbaa !45, !alias.scope !357
  %i.mv = fmul fast <4 x float> %broadcast.splat390, %wide.load388
  %i.mw = fadd fast <4 x float> %i.mu, %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %next.gep369, i64 4
  %wide.load391 = load <4 x float>, ptr %i.mx, align 4, !tbaa !45, !alias.scope !357
  %i.my = fmul fast <4 x float> %broadcast.splat393, %wide.load391
  %i.mz = fadd fast <4 x float> %i.mw, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %next.gep369, i64 8
  %wide.load394 = load <4 x float>, ptr %i.na, align 4, !tbaa !45, !alias.scope !357
  %i.nb = fmul fast <4 x float> %broadcast.splat396, %wide.load394
  %i.nc = fadd fast <4 x float> %i.mz, %i.nb
  store <4 x float> %i.nc, ptr %next.gep366, align 4, !tbaa !45, !alias.scope !359, !noalias !361
  %index.next397 = add nuw i64 %index365, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next397, %n.vec362
  br i1 %i.nd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !363

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape398 = getelementptr i8, ptr %i.ls, i64 -4
  %ind.escape399 = getelementptr i8, ptr %i.lt, i64 -4
  %ind.escape400 = getelementptr i8, ptr %i.lu, i64 -4
  br i1 %cmp.n401, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0148235.ph = phi i32 [ %i.s, %iter.check ], [ %i.s, %vector.memcheck ], [ %i.cf, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ]
  %.3234.ph = phi ptr [ %.2243, %iter.check ], [ %.2243, %vector.memcheck ], [ %i.ke, %vec.epilog.iter.check ], [ %i.lr, %vec.epilog.middle.block ]
  %.3158233.ph = phi ptr [ %.2157241, %iter.check ], [ %.2157241, %vector.memcheck ], [ %i.kf, %vec.epilog.iter.check ], [ %i.ls, %vec.epilog.middle.block ]
  %.3162232.ph = phi ptr [ %.2161240, %iter.check ], [ %.2161240, %vector.memcheck ], [ %i.kg, %vec.epilog.iter.check ], [ %i.lt, %vec.epilog.middle.block ]
  %.3166231.ph = phi ptr [ %.2165239, %iter.check ], [ %.2165239, %vector.memcheck ], [ %i.kh, %vec.epilog.iter.check ], [ %i.lu, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0148235 = phi i32 [ %i.oc, %vec.epilog.scalar.ph ], [ %.0148235.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3234 = phi ptr [ %i.ob, %vec.epilog.scalar.ph ], [ %.3234.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3158233 = phi ptr [ %i.ne, %vec.epilog.scalar.ph ], [ %.3158233.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %.3162232 = phi ptr [ %i.ni, %vec.epilog.scalar.ph ], [ %.3162232.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.3166231 = phi ptr [ %i.nj, %vec.epilog.scalar.ph ], [ %.3166231.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.3158233, i64 4
  %i.nf = getelementptr inbounds nuw i8, ptr %.3158233, i64 8
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !45
  %i.nh = load float, ptr %.3162232, align 4, !tbaa !45
  %i.ni = getelementptr inbounds nuw i8, ptr %.3162232, i64 4 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.3166231, i64 4
  %i.nk = load <2 x float>, ptr %.3158233, align 4, !tbaa !45
  %i.nl = load <2 x float>, ptr %i.ni, align 4, !tbaa !45
  %i.nm = load <2 x float>, ptr %.3166231, align 4, !tbaa !45
  %i.nn = load <8 x float>, ptr %i.cq, align 4, !tbaa !45
  %i.no = insertelement <8 x float> poison, float %i.ng, i64 2
  %i.np = insertelement <8 x float> %i.no, float %i.nh, i64 3
  %i.nq = shufflevector <2 x float> %i.nk, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nr = shufflevector <8 x float> %i.nq, <8 x float> %i.np, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ns = shufflevector <2 x float> %i.nl, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nt = shufflevector <8 x float> %i.nr, <8 x float> %i.ns, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.nu = shufflevector <2 x float> %i.nm, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nv = shufflevector <8 x float> %i.nt, <8 x float> %i.nu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.nw = fmul fast <8 x float> %i.nn, %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %.3166231, i64 8
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !45
  %i.nz = load float, ptr %i.kc, align 4, !tbaa !45
  %i.oa = fmul fast float %i.nz, %i.ny
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.oa, <8 x float> %i.nw)
  %op.rdx570 = fadd fast float %op.rdx, %i.cp
  store float %op.rdx570, ptr %.3234, align 4, !tbaa !45
  %i.ob = getelementptr inbounds nuw i8, ptr %.3234, i64 4 ; 2 uses
  %i.oc = add nsw i32 %.0148235, -1
  %i.od = icmp sgt i32 %.0148235, 1
  br i1 %i.od, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !364

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.3158233.lcssa = phi ptr [ %ind.escape398, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.3158233, %vec.epilog.scalar.ph ]
  %.3162232.lcssa = phi ptr [ %ind.escape399, %vec.epilog.middle.block ], [ %ind.escape356, %middle.block ], [ %.3162232, %vec.epilog.scalar.ph ]
  %.3166231.lcssa = phi ptr [ %ind.escape400, %vec.epilog.middle.block ], [ %ind.escape357, %middle.block ], [ %.3166231, %vec.epilog.scalar.ph ]
  %.lcssa308 = phi ptr [ %i.lr, %vec.epilog.middle.block ], [ %i.ke, %middle.block ], [ %i.ob, %vec.epilog.scalar.ph ]
  %i.oe = getelementptr inbounds nuw i8, ptr %.3158233.lcssa, i64 12
  %i.of = getelementptr inbounds nuw i8, ptr %.3162232.lcssa, i64 12
  %i.og = getelementptr inbounds nuw i8, ptr %.3166231.lcssa, i64 12
  %i.oh = add nuw nsw i32 %.1154242, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.oh, %i.af
  br i1 %exitcond.not, label %_ZN4ncnn3MatD2Ev.exit, label %iter.check, !llvm.loop !365

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
  %i.e = load i32, ptr %2, align 4, !tbaa !72     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !72
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !72
  %i.k = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %.not125 = icmp sgt i32 %i.k, %i.j
  br i1 %.not125, label %._crit_edge127, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !366
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !366
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70, !noalias !366
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !169    ; 2 uses
  %.not81 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %5, align 8, !tbaa !169    ; 3 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !18, !noalias !369
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !369
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !70, !noalias !369
  %factor.op.mul128 = mul i64 %i.u, %i.w
  %i.x = load i32, ptr %7, align 4, !tbaa !72     ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i32 %i.x, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = load i32, ptr %8, align 4, !tbaa !72    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us, label %._crit_edge127

_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us:       ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph
  %i.ad = load i32, ptr %9, align 4, !tbaa !72    ; 9 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = load i32, ptr %10, align 4, !tbaa !72
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
  %i.ao = mul nsw i64 %i.ah, 36                   ; 2 uses
  %i.ap = zext nneg i32 %i.ad to i64              ; 4 uses
  %i.aq = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.ar = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.as = getelementptr i8, ptr %i.ar, i64 36
  %min.iters.check = icmp ult i32 %i.ad, 5
  %min.iters.check165 = icmp ult i32 %i.ad, 17
  %i.at = and i64 %i.ap, 15                       ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = select i1 %i.au, i64 16, i64 %i.at      ; 2 uses
  %n.vec = sub nsw i64 %i.ap, %i.av               ; 5 uses
  %i.aw = trunc i64 %n.vec to i32
  %i.ax = sub i32 %i.ad, %i.aw
  %i.ay = shl nsw i64 %n.vec, 2
  %i.az = shl nsw i64 %n.vec, 3                   ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.av, 5
  %i.ba = and i64 %i.ap, 3                        ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = select i1 %i.bb, i64 4, i64 %i.ba
  %n.vec204 = sub nsw i64 %i.ap, %i.bc            ; 4 uses
  %i.bd = trunc i64 %n.vec204 to i32
  %i.be = sub i32 %i.ad, %i.bd
  %i.bf = shl nsw i64 %n.vec204, 2
  %i.bg = shl nsw i64 %n.vec204, 3                ; 3 uses
  br label %_ZN4ncnn3Mat7channelEi.exit.us.us

_ZN4ncnn3Mat7channelEi.exit.us.us:                ; preds = %_ZN4ncnn3Mat7channelEi.exit.us.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.us.us.preheader ], [ %indvar.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ah, %_ZN4ncnn3Mat7channelEi.exit.us.us.preheader ], [ %indvars.iv.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us ] ; 5 uses
  %i.bh = mul nuw nsw i64 %indvar, 36             ; 2 uses
  %scevgep152 = getelementptr i8, ptr %i.aq, i64 %i.bh
  %scevgep153 = getelementptr i8, ptr %i.as, i64 %i.bh
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us.us
  br i1 %.not81, label %_ZN4ncnn3MatD2Ev.exit82.us.us, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit.us.us
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit82.us.us

_ZN4ncnn3MatD2Ev.exit82.us.us:                    ; preds = %bb.c, %_ZN4ncnn3Mat7channelEi.exit.us.us
  %i.bl = phi fast float [ %i.bk, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit.us.us ] ; 3 uses
  %.idx = mul nsw i64 %indvars.iv, 36
  %i.bm = getelementptr inbounds i8, ptr %i.r, i64 %.idx ; 11 uses
  %.reass129.us.us = mul i64 %factor.op.mul128, %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass129.us.us ; 3 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.y
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 12 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 20 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 28 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 3 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.bl, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert205 = insertelement <4 x float> poison, float %i.bl, i64 0
  %broadcast.splat206 = shufflevector <4 x float> %broadcast.splatinsert205, <4 x float> poison, <4 x i32> zeroinitializer
  br label %iter.check

iter.check:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit82.us.us, %._crit_edge.us.us
  %.072123.us.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.fx, %._crit_edge.us.us ]
  %.073122.us.us = phi ptr [ %i.bi, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.fr, %._crit_edge.us.us ] ; 11 uses
  %.074121.us.us = phi ptr [ %i.bn, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.fu, %._crit_edge.us.us ] ; 8 uses
  %.076120.us.us = phi ptr [ %i.bo, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.fv, %._crit_edge.us.us ] ; 8 uses
  %.078119.us.us = phi ptr [ %i.bp, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.fw, %._crit_edge.us.us ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.by = getelementptr i8, ptr %.073122.us.us, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.by, i64 4   ; 4 uses
  %scevgep149 = getelementptr i8, ptr %.078119.us.us, i64 %i.an
  %scevgep150 = getelementptr i8, ptr %.076120.us.us, i64 %i.an
  %scevgep151 = getelementptr i8, ptr %.074121.us.us, i64 %i.an
  %bound0 = icmp ult ptr %.073122.us.us, %scevgep149
  %bound1 = icmp ult ptr %.078119.us.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0154 = icmp ult ptr %.073122.us.us, %scevgep150
  %bound1155 = icmp ult ptr %.076120.us.us, %scevgep
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx = or i1 %found.conflict, %found.conflict156
  %bound0157 = icmp ult ptr %.073122.us.us, %scevgep151
  %bound1158 = icmp ult ptr %.074121.us.us, %scevgep
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx, %found.conflict159
  %bound0161 = icmp ult ptr %.073122.us.us, %scevgep153
  %bound1162 = icmp ult ptr %scevgep152, %scevgep
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  br i1 %conflict.rdx164, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check165, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = getelementptr i8, ptr %.073122.us.us, i64 %i.ay
  %i.ca = getelementptr i8, ptr %.074121.us.us, i64 %i.az
  %i.cb = getelementptr i8, ptr %.076120.us.us, i64 %i.az
  %i.cc = getelementptr i8, ptr %.078119.us.us, i64 %i.az
  %i.cd = load float, ptr %i.bm, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert169 = insertelement <16 x float> poison, float %i.cd, i64 0
  %broadcast.splat170 = shufflevector <16 x float> %broadcast.splatinsert169, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ce = load float, ptr %i.bs, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert174 = insertelement <16 x float> poison, float %i.ce, i64 0
  %broadcast.splat175 = shufflevector <16 x float> %broadcast.splatinsert174, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cf = load float, ptr %i.bt, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert176 = insertelement <16 x float> poison, float %i.cf, i64 0
  %broadcast.splat177 = shufflevector <16 x float> %broadcast.splatinsert176, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cg = load float, ptr %i.bq, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert180 = insertelement <16 x float> poison, float %i.cg, i64 0
  %broadcast.splat181 = shufflevector <16 x float> %broadcast.splatinsert180, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ch = load float, ptr %i.bu, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert185 = insertelement <16 x float> poison, float %i.ch, i64 0
  %broadcast.splat186 = shufflevector <16 x float> %broadcast.splatinsert185, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ci = load float, ptr %i.bv, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert187 = insertelement <16 x float> poison, float %i.ci, i64 0
  %broadcast.splat188 = shufflevector <16 x float> %broadcast.splatinsert187, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cj = load float, ptr %i.br, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert191 = insertelement <16 x float> poison, float %i.cj, i64 0
  %broadcast.splat192 = shufflevector <16 x float> %broadcast.splatinsert191, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ck = load float, ptr %i.bw, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert196 = insertelement <16 x float> poison, float %i.ck, i64 0
  %broadcast.splat197 = shufflevector <16 x float> %broadcast.splatinsert196, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cl = load float, ptr %i.bx, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert198 = insertelement <16 x float> poison, float %i.cl, i64 0
  %broadcast.splat199 = shufflevector <16 x float> %broadcast.splatinsert198, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.073122.us.us, i64 %i.cm
  %i.cn = shl i64 %index, 3                       ; 3 uses
  %next.gep166 = getelementptr i8, ptr %.074121.us.us, i64 %i.cn ; 2 uses
  %next.gep167 = getelementptr i8, ptr %.076120.us.us, i64 %i.cn ; 2 uses
  %next.gep168 = getelementptr i8, ptr %.078119.us.us, i64 %i.cn ; 2 uses
  %wide.vec = load <32 x float>, ptr %next.gep166, align 4, !tbaa !45, !alias.scope !375
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.co = fmul fast <16 x float> %broadcast.splat170, %strided.vec
  %i.cp = fadd fast <16 x float> %i.co, %broadcast.splat
  %i.cq = getelementptr inbounds nuw i8, ptr %next.gep166, i64 4
  %wide.vec171 = load <32 x float>, ptr %i.cq, align 4, !tbaa !45, !alias.scope !375 ; 2 uses
  %strided.vec172 = shufflevector <32 x float> %wide.vec171, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec173 = shufflevector <32 x float> %wide.vec171, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.cr = fmul fast <16 x float> %broadcast.splat175, %strided.vec172
  %i.cs = fadd fast <16 x float> %i.cp, %i.cr
  %i.ct = fmul fast <16 x float> %broadcast.splat177, %strided.vec173
  %i.cu = fadd fast <16 x float> %i.cs, %i.ct
  %wide.vec178 = load <32 x float>, ptr %next.gep167, align 4, !tbaa !45, !alias.scope !377
  %strided.vec179 = shufflevector <32 x float> %wide.vec178, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.cv = fmul fast <16 x float> %broadcast.splat181, %strided.vec179
  %i.cw = fadd fast <16 x float> %i.cu, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %next.gep167, i64 4
  %wide.vec182 = load <32 x float>, ptr %i.cx, align 4, !tbaa !45, !alias.scope !377 ; 2 uses
  %strided.vec183 = shufflevector <32 x float> %wide.vec182, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec184 = shufflevector <32 x float> %wide.vec182, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.cy = fmul fast <16 x float> %broadcast.splat186, %strided.vec183
  %i.cz = fadd fast <16 x float> %i.cw, %i.cy
  %i.da = fmul fast <16 x float> %broadcast.splat188, %strided.vec184
  %i.db = fadd fast <16 x float> %i.cz, %i.da
  %wide.vec189 = load <32 x float>, ptr %next.gep168, align 4, !tbaa !45, !alias.scope !379
  %strided.vec190 = shufflevector <32 x float> %wide.vec189, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.dc = fmul fast <16 x float> %broadcast.splat192, %strided.vec190
  %i.dd = fadd fast <16 x float> %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %next.gep168, i64 4
  %wide.vec193 = load <32 x float>, ptr %i.de, align 4, !tbaa !45, !alias.scope !379 ; 2 uses
  %strided.vec194 = shufflevector <32 x float> %wide.vec193, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec195 = shufflevector <32 x float> %wide.vec193, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.df = fmul fast <16 x float> %broadcast.splat197, %strided.vec194
  %i.dg = fadd fast <16 x float> %i.dd, %i.df
  %i.dh = fmul fast <16 x float> %broadcast.splat199, %strided.vec195
  %i.di = fadd fast <16 x float> %i.dg, %i.dh
  store <16 x float> %i.di, ptr %next.gep, align 4, !tbaa !45, !alias.scope !381, !noalias !383
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !384

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !346

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dk = getelementptr i8, ptr %.073122.us.us, i64 %i.bf
  %i.dl = getelementptr i8, ptr %.074121.us.us, i64 %i.bg
  %i.dm = getelementptr i8, ptr %.076120.us.us, i64 %i.bg
  %i.dn = getelementptr i8, ptr %.078119.us.us, i64 %i.bg
  %i.do = load float, ptr %i.bm, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert214 = insertelement <4 x float> poison, float %i.do, i64 0
  %broadcast.splat215 = shufflevector <4 x float> %broadcast.splatinsert214, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = load float, ptr %i.bs, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert219 = insertelement <4 x float> poison, float %i.dp, i64 0
  %broadcast.splat220 = shufflevector <4 x float> %broadcast.splatinsert219, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = load float, ptr %i.bt, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert221 = insertelement <4 x float> poison, float %i.dq, i64 0
  %broadcast.splat222 = shufflevector <4 x float> %broadcast.splatinsert221, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = load float, ptr %i.bq, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert225 = insertelement <4 x float> poison, float %i.dr, i64 0
  %broadcast.splat226 = shufflevector <4 x float> %broadcast.splatinsert225, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ds = load float, ptr %i.bu, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert230 = insertelement <4 x float> poison, float %i.ds, i64 0
  %broadcast.splat231 = shufflevector <4 x float> %broadcast.splatinsert230, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = load float, ptr %i.bv, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert232 = insertelement <4 x float> poison, float %i.dt, i64 0
  %broadcast.splat233 = shufflevector <4 x float> %broadcast.splatinsert232, <4 x float> poison, <4 x i32> zeroinitializer
  %i.du = load float, ptr %i.br, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert236 = insertelement <4 x float> poison, float %i.du, i64 0
  %broadcast.splat237 = shufflevector <4 x float> %broadcast.splatinsert236, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = load float, ptr %i.bw, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert241 = insertelement <4 x float> poison, float %i.dv, i64 0
  %broadcast.splat242 = shufflevector <4 x float> %broadcast.splatinsert241, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = load float, ptr %i.bx, align 4, !tbaa !45, !alias.scope !372
  %broadcast.splatinsert243 = insertelement <4 x float> poison, float %i.dw, i64 0
  %broadcast.splat244 = shufflevector <4 x float> %broadcast.splatinsert243, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index207 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next245, %vec.epilog.vector.body ] ; 3 uses
  %i.dx = shl i64 %index207, 2
  %next.gep208 = getelementptr i8, ptr %.073122.us.us, i64 %i.dx
  %i.dy = shl i64 %index207, 3                    ; 3 uses
  %next.gep209 = getelementptr i8, ptr %.074121.us.us, i64 %i.dy ; 2 uses
  %next.gep210 = getelementptr i8, ptr %.076120.us.us, i64 %i.dy ; 2 uses
  %next.gep211 = getelementptr i8, ptr %.078119.us.us, i64 %i.dy ; 2 uses
  %wide.vec212 = load <8 x float>, ptr %next.gep209, align 4, !tbaa !45, !alias.scope !375
  %strided.vec213 = shufflevector <8 x float> %wide.vec212, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dz = fmul fast <4 x float> %broadcast.splat215, %strided.vec213
  %i.ea = fadd fast <4 x float> %i.dz, %broadcast.splat206
  %i.eb = getelementptr inbounds nuw i8, ptr %next.gep209, i64 4
  %wide.vec216 = load <8 x float>, ptr %i.eb, align 4, !tbaa !45, !alias.scope !375 ; 2 uses
  %strided.vec217 = shufflevector <8 x float> %wide.vec216, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec218 = shufflevector <8 x float> %wide.vec216, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ec = fmul fast <4 x float> %broadcast.splat220, %strided.vec217
  %i.ed = fadd fast <4 x float> %i.ea, %i.ec
  %i.ee = fmul fast <4 x float> %broadcast.splat222, %strided.vec218
  %i.ef = fadd fast <4 x float> %i.ed, %i.ee
  %wide.vec223 = load <8 x float>, ptr %next.gep210, align 4, !tbaa !45, !alias.scope !377
  %strided.vec224 = shufflevector <8 x float> %wide.vec223, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.eg = fmul fast <4 x float> %broadcast.splat226, %strided.vec224
  %i.eh = fadd fast <4 x float> %i.ef, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %next.gep210, i64 4
  %wide.vec227 = load <8 x float>, ptr %i.ei, align 4, !tbaa !45, !alias.scope !377 ; 2 uses
  %strided.vec228 = shufflevector <8 x float> %wide.vec227, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec229 = shufflevector <8 x float> %wide.vec227, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ej = fmul fast <4 x float> %broadcast.splat231, %strided.vec228
  %i.ek = fadd fast <4 x float> %i.eh, %i.ej
  %i.el = fmul fast <4 x float> %broadcast.splat233, %strided.vec229
  %i.em = fadd fast <4 x float> %i.ek, %i.el
  %wide.vec234 = load <8 x float>, ptr %next.gep211, align 4, !tbaa !45, !alias.scope !379
  %strided.vec235 = shufflevector <8 x float> %wide.vec234, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.en = fmul fast <4 x float> %broadcast.splat237, %strided.vec235
  %i.eo = fadd fast <4 x float> %i.em, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %next.gep211, i64 4
  %wide.vec238 = load <8 x float>, ptr %i.ep, align 4, !tbaa !45, !alias.scope !379 ; 2 uses
  %strided.vec239 = shufflevector <8 x float> %wide.vec238, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec240 = shufflevector <8 x float> %wide.vec238, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.eq = fmul fast <4 x float> %broadcast.splat242, %strided.vec239
  %i.er = fadd fast <4 x float> %i.eo, %i.eq
  %i.es = fmul fast <4 x float> %broadcast.splat244, %strided.vec240
  %i.et = fadd fast <4 x float> %i.er, %i.es
  store <4 x float> %i.et, ptr %next.gep208, align 4, !tbaa !45, !alias.scope !381, !noalias !383
  %index.next245 = add nuw i64 %index207, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next245, %n.vec204
  br i1 %i.eu, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !385

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %vector.memcheck, %iter.check, %vec.epilog.iter.check
  %.071115.us.us.ph = phi i32 [ %i.ad, %iter.check ], [ %i.ad, %vector.memcheck ], [ %i.ax, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.vector.body ]
  %.1114.us.us.ph = phi ptr [ %.073122.us.us, %iter.check ], [ %.073122.us.us, %vector.memcheck ], [ %i.bz, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.vector.body ]
  %.175113.us.us.ph = phi ptr [ %.074121.us.us, %iter.check ], [ %.074121.us.us, %vector.memcheck ], [ %i.ca, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.vector.body ]
  %.177112.us.us.ph = phi ptr [ %.076120.us.us, %iter.check ], [ %.076120.us.us, %vector.memcheck ], [ %i.cb, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.vector.body ]
  %.179111.us.us.ph = phi ptr [ %.078119.us.us, %iter.check ], [ %.078119.us.us, %vector.memcheck ], [ %i.cc, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.vector.body ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.071115.us.us = phi i32 [ %i.fs, %vec.epilog.scalar.ph ], [ %.071115.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1114.us.us = phi ptr [ %i.fr, %vec.epilog.scalar.ph ], [ %.1114.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.175113.us.us = phi ptr [ %i.ev, %vec.epilog.scalar.ph ], [ %.175113.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.177112.us.us = phi ptr [ %i.ez, %vec.epilog.scalar.ph ], [ %.177112.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.179111.us.us = phi ptr [ %i.fn, %vec.epilog.scalar.ph ], [ %.179111.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.175113.us.us, i64 8 ; 3 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !45
  %i.ex = load float, ptr %.177112.us.us, align 4, !tbaa !45
  %i.ey = getelementptr inbounds nuw i8, ptr %.177112.us.us, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %.177112.us.us, i64 8 ; 2 uses
  %i.fa = load <2 x float>, ptr %.175113.us.us, align 4, !tbaa !45
  %i.fb = load <2 x float>, ptr %i.ey, align 4, !tbaa !45
  %i.fc = load <2 x float>, ptr %.179111.us.us, align 4, !tbaa !45
  %i.fd = load <8 x float>, ptr %i.bm, align 4, !tbaa !45
  %i.fe = insertelement <8 x float> poison, float %i.ew, i64 2
  %i.ff = insertelement <8 x float> %i.fe, float %i.ex, i64 3
  %i.fg = shufflevector <2 x float> %i.fa, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fh = shufflevector <8 x float> %i.fg, <8 x float> %i.ff, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <2 x float> %i.fb, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fj = shufflevector <8 x float> %i.fh, <8 x float> %i.fi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.fk = shufflevector <2 x float> %i.fc, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fl = shufflevector <8 x float> %i.fj, <8 x float> %i.fk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.fm = fmul fast <8 x float> %i.fd, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %.179111.us.us, i64 8 ; 3 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !45
  %i.fp = load float, ptr %i.bx, align 4, !tbaa !45
  %i.fq = fmul fast float %i.fp, %i.fo
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.fq, <8 x float> %i.fm)
  %op.rdx251 = fadd fast float %op.rdx, %i.bl
  store float %op.rdx251, ptr %.1114.us.us, align 4, !tbaa !45
  %i.fr = getelementptr inbounds nuw i8, ptr %.1114.us.us, i64 4 ; 2 uses
  %i.fs = add nsw i32 %.071115.us.us, -1
  %i.ft = icmp sgt i32 %.071115.us.us, 1
  br i1 %i.ft, label %vec.epilog.scalar.ph, label %._crit_edge.us.us, !llvm.loop !386

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ag
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.ag
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.ag
  %i.fx = add nuw nsw i32 %.072123.us.us, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.fx, %i.ab
  br i1 %exitcond.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us, label %iter.check, !llvm.loop !387

._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us:           ; preds = %._crit_edge.us.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond136.not = icmp eq i32 %i.ai, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond136.not, label %._crit_edge127, label %_ZN4ncnn3Mat7channelEi.exit.us.us

._crit_edge127:                                   ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us, %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge127, %bb.a
  ret void
}

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn31ConvolutionDepthWise_x86_avx51216forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %10) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !72     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !72
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !72
  %i.k = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %.not421 = icmp sgt i32 %i.k, %i.j
  br i1 %.not421, label %._crit_edge423, label %_ZN4ncnn3MatD2Ev.exit91.lr.ph

_ZN4ncnn3MatD2Ev.exit91.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 752
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 576
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 280 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 648
  %i.aa = load i32, ptr %7, align 4, !tbaa !72    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4ncnn3MatD2Ev.exit91.preheader, label %._crit_edge423

_ZN4ncnn3MatD2Ev.exit91.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit91.lr.ph
  %i.ac = sext i32 %i.k to i64
  %i.ad = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3MatD2Ev.exit91

_ZN4ncnn3MatD2Ev.exit91:                          ; preds = %_ZN4ncnn3MatD2Ev.exit91.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.ae = phi i32 [ %i.aa, %_ZN4ncnn3MatD2Ev.exit91.preheader ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.af = phi i32 [ %i.aa, %_ZN4ncnn3MatD2Ev.exit91.preheader ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv429 = phi i64 [ %i.ac, %_ZN4ncnn3MatD2Ev.exit91.preheader ], [ %indvars.iv.next430, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.ah = load i32, ptr %5, align 4, !tbaa !72
  %i.ai = trunc nsw i64 %indvars.iv429 to i32
  %i.aj = shl i32 %i.ai, 3
  %i.ak = mul i32 %i.aj, %i.ah
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ag, i64 %i.al
  %i.an = load ptr, ptr %6, align 8, !tbaa !18, !noalias !388
  %i.ao = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !388
  %i.ap = mul i64 %i.ao, %indvars.iv429
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !70, !noalias !388 ; 2 uses
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  %i.at = icmp sgt i32 %i.af, 0
  br i1 %i.at, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit91
  %i.au = load i32, ptr %i.o, align 4, !tbaa !80, !noalias !388
  %i.av = sext i32 %i.au to i64
  %i.aw = mul i64 %i.aq, %i.av
  %i.ax = shl nsw i64 %indvars.iv429, 3           ; 4 uses
  %i.ay = load i32, ptr %8, align 4, !tbaa !72    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ba = load ptr, ptr %3, align 8, !tbaa !18, !noalias !391
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !70, !noalias !394
  %i.bc = mul i64 %i.bb, %indvars.iv429
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !391
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge415
  %i.bg = phi i32 [ %i.bl, %._crit_edge415 ], [ %i.ae, %.preheader.preheader ]
  %i.bh = phi i32 [ %i.bm, %._crit_edge415 ], [ %i.ay, %.preheader.preheader ] ; 2 uses
  %.080420 = phi ptr [ %.1.lcssa, %._crit_edge415 ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %.081419 = phi ptr [ %.182.lcssa, %._crit_edge415 ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %.084418 = phi i32 [ %i.bn, %._crit_edge415 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph414, label %._crit_edge415

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge415, %.preheader.lr.ph, %_ZN4ncnn3MatD2Ev.exit91
  %i.bj = phi i32 [ %i.ae, %_ZN4ncnn3MatD2Ev.exit91 ], [ %i.ae, %.preheader.lr.ph ], [ %i.bl, %._crit_edge415 ]
  %i.bk = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit91 ], [ %i.af, %.preheader.lr.ph ], [ %i.bl, %._crit_edge415 ]
  %indvars.iv.next430 = add nsw i64 %indvars.iv429, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next430 to i32
  %exitcond432.not = icmp eq i32 %i.ad, %lftr.wideiv
  br i1 %exitcond432.not, label %._crit_edge423, label %_ZN4ncnn3MatD2Ev.exit91, !llvm.loop !397

._crit_edge415.loopexit:                          ; preds = %bb.h
  %.pre = load i32, ptr %7, align 4, !tbaa !72
  br label %._crit_edge415

._crit_edge415:                                   ; preds = %._crit_edge415.loopexit, %.preheader
  %i.bl = phi i32 [ %i.bg, %.preheader ], [ %.pre, %._crit_edge415.loopexit ] ; 4 uses
  %i.bm = phi i32 [ %i.bh, %.preheader ], [ %i.pp, %._crit_edge415.loopexit ]
  %.182.lcssa = phi ptr [ %.081419, %.preheader ], [ %.283, %._crit_edge415.loopexit ]
  %.1.lcssa = phi ptr [ %.080420, %.preheader ], [ %.2, %._crit_edge415.loopexit ]
  %i.bn = add nuw nsw i32 %.084418, 1             ; 2 uses
end_hunk_0
