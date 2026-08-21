inline.NumInlined: 830
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 540
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 554
begin_hunk_0_@pcmpxstrx:bb.a
  %i.ee = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.by, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next515, %vector.body507 ] ; 2 uses
  %vec.phi509 = phi <4 x i32> [ %i.ee, %vector.ph505 ], [ %i.ep, %vector.body507 ]
  %vec.phi510 = phi <4 x i32> [ zeroinitializer, %vector.ph505 ], [ %i.eq, %vector.body507 ]
  %i.ef = sub i64 %i.br, %index508
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -3
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -7
  %wide.load511 = load <4 x i8>, ptr %i.eh, align 1
  %wide.load512 = load <4 x i8>, ptr %i.ei, align 1
  %reverse513 = shufflevector <4 x i8> %wide.load511, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse514 = shufflevector <4 x i8> %wide.load512, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ej = zext <4 x i8> %reverse513 to <4 x i32>
  %i.ek = zext <4 x i8> %reverse514 to <4 x i32>
  %i.el = icmp eq <4 x i32> %broadcast.splat, %i.ej
  %i.em = icmp eq <4 x i32> %broadcast.splat, %i.ek
  %i.en = zext <4 x i1> %i.el to <4 x i32>
  %i.eo = zext <4 x i1> %i.em to <4 x i32>
  %i.ep = or <4 x i32> %vec.phi509, %i.en         ; 2 uses
  %i.eq = or <4 x i32> %vec.phi510, %i.eo         ; 2 uses
  %index.next515 = add nuw i64 %index508, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next515, %n.vec506
  br i1 %i.er, label %middle.block516, label %vector.body507, !llvm.loop !44

middle.block516:                                  ; preds = %vector.body507
  %bin.rdx517 = or <4 x i32> %i.eq, %i.ep
  %i.es = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx517) ; 2 uses
  br i1 %cmp.n518, label %._crit_edge268, label %pcmp_val.exit140.us.preheader585

pcmp_val.exit140.us.preheader585:                 ; preds = %pcmp_val.exit140.us.preheader, %middle.block516
  %indvars.iv354.ph = phi i64 [ %i.br, %pcmp_val.exit140.us.preheader ], [ %i.bx, %middle.block516 ]
  %.1266.us.ph = phi i32 [ %i.by, %pcmp_val.exit140.us.preheader ], [ %i.es, %middle.block516 ]
  br label %pcmp_val.exit140.us

pcmp_val.exit140.us:                              ; preds = %pcmp_val.exit140.us.preheader585, %pcmp_val.exit140.us
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %pcmp_val.exit140.us ], [ %indvars.iv354.ph, %pcmp_val.exit140.us.preheader585 ] ; 3 uses
  %.1266.us = phi i32 [ %i.ey, %pcmp_val.exit140.us ], [ %.1266.us.ph, %pcmp_val.exit140.us.preheader585 ]
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv354
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i32
  %i.ew = icmp eq i32 %.0.i, %i.ev
  %i.ex = zext i1 %i.ew to i32
  %i.ey = or i32 %.1266.us, %i.ex                 ; 2 uses
  %indvars.iv.next355 = add nsw i64 %indvars.iv354, -1
  %.not395 = icmp eq i64 %indvars.iv354, 0
  br i1 %.not395, label %._crit_edge268, label %pcmp_val.exit140.us, !llvm.loop !45

pcmp_val.exit140.us274:                           ; preds = %pcmp_val.exit140.us274.preheader586, %pcmp_val.exit140.us274
  %indvars.iv351 = phi i64 [ %indvars.iv.next352, %pcmp_val.exit140.us274 ], [ %indvars.iv351.ph, %pcmp_val.exit140.us274.preheader586 ] ; 3 uses
  %.1266.us272 = phi i32 [ %i.fe, %pcmp_val.exit140.us274 ], [ %.1266.us272.ph, %pcmp_val.exit140.us274.preheader586 ]
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv351
  %i.fa = load i16, ptr %i.ez, align 2
  %i.fb = zext i16 %i.fa to i32
  %i.fc = icmp eq i32 %.0.i, %i.fb
  %i.fd = zext i1 %i.fc to i32
  %i.fe = or i32 %.1266.us272, %i.fd              ; 2 uses
  %indvars.iv.next352 = add nsw i64 %indvars.iv351, -1
  %.not394 = icmp eq i64 %indvars.iv351, 0
  br i1 %.not394, label %._crit_edge268, label %pcmp_val.exit140.us274, !llvm.loop !46

pcmp_val.exit140.us281:                           ; preds = %pcmp_val.exit140.us281.preheader588, %pcmp_val.exit140.us281
  %indvars.iv348 = phi i64 [ %indvars.iv.next349, %pcmp_val.exit140.us281 ], [ %indvars.iv348.ph, %pcmp_val.exit140.us281.preheader588 ] ; 3 uses
  %.1266.us279 = phi i32 [ %i.fk, %pcmp_val.exit140.us281 ], [ %.1266.us279.ph, %pcmp_val.exit140.us281.preheader588 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv348
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = sext i8 %i.fg to i32
  %i.fi = icmp eq i32 %.0.i, %i.fh
  %i.fj = zext i1 %i.fi to i32
  %i.fk = or i32 %.1266.us279, %i.fj              ; 2 uses
  %indvars.iv.next349 = add nsw i64 %indvars.iv348, -1
  %.not393 = icmp eq i64 %indvars.iv348, 0
  br i1 %.not393, label %._crit_edge268, label %pcmp_val.exit140.us281, !llvm.loop !47

pcmp_val.exit140.us288:                           ; preds = %pcmp_val.exit140.us288.preheader590, %pcmp_val.exit140.us288
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %pcmp_val.exit140.us288 ], [ %indvars.iv345.ph, %pcmp_val.exit140.us288.preheader590 ] ; 3 uses
  %.1266.us286 = phi i32 [ %i.fq, %pcmp_val.exit140.us288 ], [ %.1266.us286.ph, %pcmp_val.exit140.us288.preheader590 ]
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv345
  %i.fm = load i16, ptr %i.fl, align 2
  %i.fn = sext i16 %i.fm to i32
  %i.fo = icmp eq i32 %.0.i, %i.fn
  %i.fp = zext i1 %i.fo to i32
  %i.fq = or i32 %.1266.us286, %i.fp              ; 2 uses
  %indvars.iv.next346 = add nsw i64 %indvars.iv345, -1
  %i.fr = icmp sgt i64 %indvars.iv345, 0
  br i1 %i.fr, label %pcmp_val.exit140.us288, label %._crit_edge268, !llvm.loop !48

._crit_edge268:                                   ; preds = %pcmp_val.exit140.us288, %pcmp_val.exit140.us281, %pcmp_val.exit140.us274, %pcmp_val.exit140.us, %middle.block576, %middle.block556, %middle.block536, %middle.block516, %pcmp_val.exit
  %.1.lcssa = phi i32 [ %i.by, %pcmp_val.exit ], [ %i.fe, %pcmp_val.exit140.us274 ], [ %i.fk, %pcmp_val.exit140.us281 ], [ %i.ey, %pcmp_val.exit140.us ], [ %i.es, %middle.block516 ], [ %i.ed, %middle.block536 ], [ %i.do, %middle.block556 ], [ %i.cz, %middle.block576 ], [ %i.fq, %pcmp_val.exit140.us288 ] ; 2 uses
  %indvars.iv.next358 = add nsw i64 %indvars.iv357, -1
  %i.fs = icmp sgt i64 %indvars.iv357, 0
  br i1 %i.fs, label %bb.q, label %.loopexit, !llvm.loop !49

bb.v:                                             ; preds = %bb.a
  %i.ft = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.e) ; 2 uses
  %i.fu = sub i32 %i.c, %i.ft
  %notmask = shl nsw i32 -1, %i.fu
  %i.fv = xor i32 %notmask, -1
  %i.fw = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.e) ; 3 uses
  %i.fx = sub i32 %i.ft, %i.fw
  %i.fy = shl i32 %i.fv, %i.fx                    ; 2 uses
  %i.fz = icmp sgt i32 %i.fw, -1
  br i1 %i.fz, label %.lr.ph233, label %.loopexit

.lr.ph233:                                        ; preds = %bb.v
  %i.ga = and i8 %3, 3
  %i.gb = zext nneg i32 %i.fw to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph233, %pcmp_val.exit155
  %indvars.iv336 = phi i64 [ %i.gb, %.lr.ph233 ], [ %indvars.iv.next337, %pcmp_val.exit155 ] ; 10 uses
  %.4231 = phi i32 [ %i.fy, %.lr.ph233 ], [ %i.hd, %pcmp_val.exit155 ]
  %i.gc = shl i32 %.4231, 1
  switch i8 %i.ga, label %.unreachabledefault392 [
    i8 0, label %bb.x
    i8 1, label %bb.y
    i8 2, label %bb.z
    i8 3, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv336
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = zext i8 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv336
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = zext i8 %i.gh to i32
  br label %pcmp_val.exit155

bb.y:                                             ; preds = %bb.w
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv336
  %i.gk = load i16, ptr %i.gj, align 2
  %i.gl = zext i16 %i.gk to i32
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv336
  %i.gn = load i16, ptr %i.gm, align 2
  %i.go = zext i16 %i.gn to i32
  br label %pcmp_val.exit155

bb.z:                                             ; preds = %bb.w
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv336
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = sext i8 %i.gq to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv336
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = sext i8 %i.gt to i32
  br label %pcmp_val.exit155

bb.aa:                                            ; preds = %bb.w
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv336
  %i.gw = load i16, ptr %i.gv, align 2
  %i.gx = sext i16 %i.gw to i32
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv336
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = sext i16 %i.gz to i32
  br label %pcmp_val.exit155

pcmp_val.exit155:                                 ; preds = %bb.x, %bb.y, %bb.z, %bb.aa
  %.0.i150163 = phi i32 [ %i.gf, %bb.x ], [ %i.gl, %bb.y ], [ %i.gr, %bb.z ], [ %i.gx, %bb.aa ]
  %.0.i153 = phi i32 [ %i.gi, %bb.x ], [ %i.go, %bb.y ], [ %i.gu, %bb.z ], [ %i.ha, %bb.aa ]
  %i.hb = icmp eq i32 %.0.i150163, %.0.i153
  %i.hc = zext i1 %i.hb to i32
  %i.hd = or disjoint i32 %i.gc, %i.hc            ; 2 uses
  %indvars.iv.next337 = add nsw i64 %indvars.iv336, -1
  %i.he = icmp sgt i64 %indvars.iv336, 0
  br i1 %i.he, label %bb.w, label %.loopexit, !llvm.loop !50

bb.ab:                                            ; preds = %bb.a
  %i.hf = icmp eq i32 %5, 0
  br i1 %i.hf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hg = shl nuw nsw i32 2, %i.c
  %i.hh = add nsw i32 %i.hg, -1
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.hi = icmp eq i32 %i.d, %i.c
  %i.hj = sub i32 %4, %5
  %i.hk = select i1 %i.hi, i32 %i.d, i32 %i.hj    ; 7 uses
  %i.hl = icmp sgt i32 %i.hk, -1
  br i1 %i.hl, label %.lr.ph229, label %.loopexit

.lr.ph229:                                        ; preds = %bb.ad
  %i.hm = and i8 %3, 3
  %i.hn = sub i32 %i.d, %i.hk
  %i.ho = zext nneg i32 %i.hk to i64
  %i.hp = zext nneg i32 %i.hk to i33
  %i.hq = zext nneg i32 %i.hk to i33
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph229, %._crit_edge
  %indvar424 = phi i33 [ 0, %.lr.ph229 ], [ %indvar.next425, %._crit_edge ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph229 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv333 = phi i64 [ %i.ho, %.lr.ph229 ], [ %indvars.iv.next334, %._crit_edge ] ; 11 uses
  %indvars.iv = phi i32 [ %i.hn, %.lr.ph229 ], [ %indvars.iv.next, %._crit_edge ] ; 6 uses
  %.5227 = phi i32 [ 0, %.lr.ph229 ], [ %i.ne, %._crit_edge ]
  %6 = sub i33 %i.hq, %indvar424
  %7 = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.e)
  %i.hr = zext i32 %7 to i33
  %i.hs = add i33 %6, %i.hr                       ; 2 uses
  %i.ht = shl i33 %i.hs, 1
  %8 = trunc i33 %indvar424 to i32
  %9 = sub i32 %i.hk, %8
  %10 = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.e)
  %i.hu = add i32 %9, %10                         ; 2 uses
  %11 = sub i33 %i.hp, %indvar424
  %12 = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.e)
  %i.hv = zext i32 %12 to i33
  %i.hw = add i33 %11, %i.hv                      ; 2 uses
  %i.hx = shl i33 %i.hw, 1
  %13 = sub i32 %i.hk, %indvar
  %14 = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.e)
  %i.hy = add i32 %13, %14                        ; 2 uses
  %i.hz = shl i32 %.5227, 1
  %i.ia = trunc nuw nsw i64 %indvars.iv333 to i32
  %i.ib = sub i32 %i.d, %i.ia
  %i.ic = tail call i32 @llvm.smin.i32(i32 %i.ib, i32 %i.e)
  %i.id = icmp sgt i32 %i.ic, -1
  br i1 %i.id, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ae
  %i.ie = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.e) ; 9 uses
  %smin330 = sext i32 %i.ie to i64                ; 17 uses
  %i.if = add nsw i64 %smin330, 1                 ; 12 uses
  switch i8 %i.hm, label %.lr.ph.unreachabledefault [
    i8 0, label %pcmp_val.exit161.us.preheader
    i8 1, label %pcmp_val.exit161.us201.preheader
    i8 2, label %pcmp_val.exit161.us209.preheader
    i8 3, label %pcmp_val.exit161.us217.preheader
  ]

pcmp_val.exit161.us217.preheader:                 ; preds = %.lr.ph
  %min.iters.check481 = icmp ult i64 %i.if, 16
  br i1 %min.iters.check481, label %pcmp_val.exit161.us217.preheader612, label %vector.scevcheck475

vector.scevcheck475:                              ; preds = %pcmp_val.exit161.us217.preheader
  %i.ig = zext i32 %i.ie to i33
  %mul.overflow479 = icmp slt i32 %i.ie, 0
  %i.ih = sub i33 %i.hs, %i.ig
  %i.ii = shl i33 %i.ih, 1
  %i.ij = icmp sgt i33 %i.ii, %i.ht
  %i.ik = or i1 %i.ij, %mul.overflow479
  br i1 %i.ik, label %pcmp_val.exit161.us217.preheader612, label %vector.ph482

vector.ph482:                                     ; preds = %vector.scevcheck475
  %n.vec483 = and i64 %i.if, 4294967288           ; 3 uses
  %i.il = sub nsw i64 %smin330, %n.vec483
  br label %vector.body484

vector.body484:                                   ; preds = %vector.body484, %vector.ph482
  %index485 = phi i64 [ 0, %vector.ph482 ], [ %index.next496, %vector.body484 ] ; 2 uses
  %vec.phi486 = phi <4 x i1> [ zeroinitializer, %vector.ph482 ], [ %i.ja, %vector.body484 ]
  %vec.phi487 = phi <4 x i1> [ zeroinitializer, %vector.ph482 ], [ %i.jb, %vector.body484 ]
  %i.im = sub i64 %smin330, %index485             ; 2 uses
  %i.in = add nuw i64 %i.im, %indvars.iv333
  %i.io = shl i64 %i.in, 32
  %i.ip = ashr exact i64 %i.io, 31
  %i.iq = getelementptr inbounds i8, ptr %2, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 -6
  %i.is = getelementptr inbounds i8, ptr %i.iq, i64 -14
  %wide.load488 = load <4 x i16>, ptr %i.ir, align 2
  %wide.load489 = load <4 x i16>, ptr %i.is, align 2
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.im ; 2 uses
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 -6
  %i.iv = getelementptr inbounds i8, ptr %i.it, i64 -14
  %wide.load492 = load <4 x i16>, ptr %i.iu, align 2
  %wide.load493 = load <4 x i16>, ptr %i.iv, align 2
  %i.iw = icmp ne <4 x i16> %wide.load488, %wide.load492
  %i.ix = shufflevector <4 x i1> %i.iw, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.iy = icmp ne <4 x i16> %wide.load489, %wide.load493
  %i.iz = shufflevector <4 x i1> %i.iy, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ja = or <4 x i1> %vec.phi486, %i.ix          ; 2 uses
  %i.jb = or <4 x i1> %vec.phi487, %i.iz          ; 2 uses
  %index.next496 = add nuw i64 %index485, 8       ; 2 uses
  %i.jc = icmp eq i64 %index.next496, %n.vec483
  br i1 %i.jc, label %middle.block497, label %vector.body484, !llvm.loop !51

middle.block497:                                  ; preds = %vector.body484
  %bin.rdx498 = or <4 x i1> %i.jb, %i.ja
  %bin.rdx498.fr = freeze <4 x i1> %bin.rdx498
  %i.jd = bitcast <4 x i1> %bin.rdx498.fr to i4
  %.not581 = icmp eq i4 %i.jd, 0
  %rdx.select499 = zext i1 %.not581 to i32        ; 2 uses
  %cmp.n500 = icmp eq i64 %i.if, %n.vec483
  br i1 %cmp.n500, label %._crit_edge, label %pcmp_val.exit161.us217.preheader612

pcmp_val.exit161.us217.preheader612:              ; preds = %vector.scevcheck475, %pcmp_val.exit161.us217.preheader, %middle.block497
  %indvars.iv322.ph = phi i64 [ %smin330, %vector.scevcheck475 ], [ %smin330, %pcmp_val.exit161.us217.preheader ], [ %i.il, %middle.block497 ]
  %.0124197.us215.ph = phi i32 [ 1, %vector.scevcheck475 ], [ 1, %pcmp_val.exit161.us217.preheader ], [ %rdx.select499, %middle.block497 ]
  br label %pcmp_val.exit161.us217

pcmp_val.exit161.us209.preheader:                 ; preds = %.lr.ph
  %min.iters.check453 = icmp ult i64 %i.if, 8
  br i1 %min.iters.check453, label %pcmp_val.exit161.us209.preheader610, label %vector.scevcheck449

vector.scevcheck449:                              ; preds = %pcmp_val.exit161.us209.preheader
  %15 = sub i32 %i.hu, %i.ie
  %i.je = icmp sgt i32 %15, %i.hu
  %i.jf = icmp slt i32 %i.ie, 0
  %i.jg = or i1 %i.je, %i.jf
  br i1 %i.jg, label %pcmp_val.exit161.us209.preheader610, label %vector.ph454

vector.ph454:                                     ; preds = %vector.scevcheck449
  %n.vec455 = and i64 %i.if, 4294967288           ; 3 uses
  %i.jh = sub nsw i64 %smin330, %n.vec455
  br label %vector.body456

vector.body456:                                   ; preds = %vector.body456, %vector.ph454
  %index457 = phi i64 [ 0, %vector.ph454 ], [ %index.next468, %vector.body456 ] ; 2 uses
  %vec.phi458 = phi <4 x i1> [ zeroinitializer, %vector.ph454 ], [ %i.jw, %vector.body456 ]
  %vec.phi459 = phi <4 x i1> [ zeroinitializer, %vector.ph454 ], [ %i.jx, %vector.body456 ]
  %i.ji = sub i64 %smin330, %index457             ; 2 uses
  %i.jj = add nuw i64 %i.ji, %indvars.iv333
  %i.jk = shl i64 %i.jj, 32
  %i.jl = ashr exact i64 %i.jk, 32
  %i.jm = getelementptr inbounds i8, ptr %2, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -3
  %i.jo = getelementptr inbounds i8, ptr %i.jm, i64 -7
  %wide.load460 = load <4 x i8>, ptr %i.jn, align 1
  %wide.load461 = load <4 x i8>, ptr %i.jo, align 1
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 %i.ji ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -3
  %i.jr = getelementptr inbounds i8, ptr %i.jp, i64 -7
  %wide.load464 = load <4 x i8>, ptr %i.jq, align 1
  %wide.load465 = load <4 x i8>, ptr %i.jr, align 1
  %i.js = icmp ne <4 x i8> %wide.load460, %wide.load464
  %i.jt = shufflevector <4 x i1> %i.js, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ju = icmp ne <4 x i8> %wide.load461, %wide.load465
  %i.jv = shufflevector <4 x i1> %i.ju, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.jw = or <4 x i1> %vec.phi458, %i.jt          ; 2 uses
  %i.jx = or <4 x i1> %vec.phi459, %i.jv          ; 2 uses
  %index.next468 = add nuw i64 %index457, 8       ; 2 uses
  %i.jy = icmp eq i64 %index.next468, %n.vec455
  br i1 %i.jy, label %middle.block469, label %vector.body456, !llvm.loop !52

middle.block469:                                  ; preds = %vector.body456
  %bin.rdx470 = or <4 x i1> %i.jx, %i.jw
  %bin.rdx470.fr = freeze <4 x i1> %bin.rdx470
  %i.jz = bitcast <4 x i1> %bin.rdx470.fr to i4
  %.not582 = icmp eq i4 %i.jz, 0
  %rdx.select471 = zext i1 %.not582 to i32        ; 2 uses
  %cmp.n472 = icmp eq i64 %i.if, %n.vec455
  br i1 %cmp.n472, label %._crit_edge, label %pcmp_val.exit161.us209.preheader610

pcmp_val.exit161.us209.preheader610:              ; preds = %vector.scevcheck449, %pcmp_val.exit161.us209.preheader, %middle.block469
  %indvars.iv325.ph = phi i64 [ %smin330, %vector.scevcheck449 ], [ %smin330, %pcmp_val.exit161.us209.preheader ], [ %i.jh, %middle.block469 ]
  %.0124197.us207.ph = phi i32 [ 1, %vector.scevcheck449 ], [ 1, %pcmp_val.exit161.us209.preheader ], [ %rdx.select471, %middle.block469 ]
  br label %pcmp_val.exit161.us209

pcmp_val.exit161.us201.preheader:                 ; preds = %.lr.ph
  %min.iters.check427 = icmp ult i64 %i.if, 16
  br i1 %min.iters.check427, label %pcmp_val.exit161.us201.preheader608, label %vector.scevcheck422

vector.scevcheck422:                              ; preds = %pcmp_val.exit161.us201.preheader
  %i.ka = zext i32 %i.ie to i33
  %mul.overflow = icmp slt i32 %i.ie, 0
  %i.kb = sub i33 %i.hw, %i.ka
  %i.kc = shl i33 %i.kb, 1
  %i.kd = icmp sgt i33 %i.kc, %i.hx
  %i.ke = or i1 %i.kd, %mul.overflow
  br i1 %i.ke, label %pcmp_val.exit161.us201.preheader608, label %vector.ph428

vector.ph428:                                     ; preds = %vector.scevcheck422
  %n.vec429 = and i64 %i.if, 4294967288           ; 3 uses
  %i.kf = sub nsw i64 %smin330, %n.vec429
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next442, %vector.body430 ] ; 2 uses
  %vec.phi432 = phi <4 x i1> [ zeroinitializer, %vector.ph428 ], [ %i.ku, %vector.body430 ]
  %vec.phi433 = phi <4 x i1> [ zeroinitializer, %vector.ph428 ], [ %i.kv, %vector.body430 ]
  %i.kg = sub i64 %smin330, %index431             ; 2 uses
  %i.kh = add nuw i64 %i.kg, %indvars.iv333
  %i.ki = shl i64 %i.kh, 32
  %i.kj = ashr exact i64 %i.ki, 31
  %i.kk = getelementptr inbounds i8, ptr %2, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -6
  %i.km = getelementptr inbounds i8, ptr %i.kk, i64 -14
  %wide.load434 = load <4 x i16>, ptr %i.kl, align 2
  %wide.load435 = load <4 x i16>, ptr %i.km, align 2
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.kg ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 -6
  %i.kp = getelementptr inbounds i8, ptr %i.kn, i64 -14
  %wide.load438 = load <4 x i16>, ptr %i.ko, align 2
  %wide.load439 = load <4 x i16>, ptr %i.kp, align 2
  %i.kq = icmp ne <4 x i16> %wide.load434, %wide.load438
  %i.kr = shufflevector <4 x i1> %i.kq, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ks = icmp ne <4 x i16> %wide.load435, %wide.load439
  %i.kt = shufflevector <4 x i1> %i.ks, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ku = or <4 x i1> %vec.phi432, %i.kr          ; 2 uses
  %i.kv = or <4 x i1> %vec.phi433, %i.kt          ; 2 uses
  %index.next442 = add nuw i64 %index431, 8       ; 2 uses
  %i.kw = icmp eq i64 %index.next442, %n.vec429
  br i1 %i.kw, label %middle.block443, label %vector.body430, !llvm.loop !53

middle.block443:                                  ; preds = %vector.body430
  %bin.rdx444 = or <4 x i1> %i.kv, %i.ku
  %bin.rdx444.fr = freeze <4 x i1> %bin.rdx444
  %i.kx = bitcast <4 x i1> %bin.rdx444.fr to i4
  %.not583 = icmp eq i4 %i.kx, 0
  %rdx.select445 = zext i1 %.not583 to i32        ; 2 uses
  %cmp.n446 = icmp eq i64 %i.if, %n.vec429
  br i1 %cmp.n446, label %._crit_edge, label %pcmp_val.exit161.us201.preheader608

pcmp_val.exit161.us201.preheader608:              ; preds = %vector.scevcheck422, %pcmp_val.exit161.us201.preheader, %middle.block443
  %indvars.iv328.ph = phi i64 [ %smin330, %vector.scevcheck422 ], [ %smin330, %pcmp_val.exit161.us201.preheader ], [ %i.kf, %middle.block443 ]
  %.0124197.us199.ph = phi i32 [ 1, %vector.scevcheck422 ], [ 1, %pcmp_val.exit161.us201.preheader ], [ %rdx.select445, %middle.block443 ]
  br label %pcmp_val.exit161.us201

pcmp_val.exit161.us.preheader:                    ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %i.if, 8
  br i1 %min.iters.check, label %pcmp_val.exit161.us.preheader607, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %pcmp_val.exit161.us.preheader
  %16 = sub i32 %i.hy, %i.ie
  %i.ky = icmp sgt i32 %16, %i.hy
  %i.kz = icmp slt i32 %i.ie, 0
  %i.la = or i1 %i.ky, %i.kz
  br i1 %i.la, label %pcmp_val.exit161.us.preheader607, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.if, 4294967288              ; 3 uses
  %i.lb = sub nsw i64 %smin330, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.lq, %vector.body ]
  %vec.phi415 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.lr, %vector.body ]
  %i.lc = sub i64 %smin330, %index                ; 2 uses
  %i.ld = add nuw i64 %i.lc, %indvars.iv333
  %i.le = shl i64 %i.ld, 32
  %i.lf = ashr exact i64 %i.le, 32
  %i.lg = getelementptr inbounds i8, ptr %2, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 -3
  %i.li = getelementptr inbounds i8, ptr %i.lg, i64 -7
  %wide.load = load <4 x i8>, ptr %i.lh, align 1
  %wide.load416 = load <4 x i8>, ptr %i.li, align 1
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 %i.lc ; 2 uses
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 -3
  %i.ll = getelementptr inbounds i8, ptr %i.lj, i64 -7
  %wide.load418 = load <4 x i8>, ptr %i.lk, align 1
  %wide.load419 = load <4 x i8>, ptr %i.ll, align 1
  %i.lm = icmp ne <4 x i8> %wide.load, %wide.load418
  %i.ln = shufflevector <4 x i1> %i.lm, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.lo = icmp ne <4 x i8> %wide.load416, %wide.load419
  %i.lp = shufflevector <4 x i1> %i.lo, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.lq = or <4 x i1> %vec.phi, %i.ln             ; 2 uses
  %i.lr = or <4 x i1> %vec.phi415, %i.lp          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ls = icmp eq i64 %index.next, %n.vec
  br i1 %i.ls, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.lr, %i.lq
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.lt = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not584 = icmp eq i4 %i.lt, 0
  %rdx.select = zext i1 %.not584 to i32           ; 2 uses
  %cmp.n = icmp eq i64 %i.if, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %pcmp_val.exit161.us.preheader607

pcmp_val.exit161.us.preheader607:                 ; preds = %vector.scevcheck, %pcmp_val.exit161.us.preheader, %middle.block
  %indvars.iv331.ph = phi i64 [ %smin330, %vector.scevcheck ], [ %smin330, %pcmp_val.exit161.us.preheader ], [ %i.lb, %middle.block ]
  %.0124197.us.ph = phi i32 [ 1, %vector.scevcheck ], [ 1, %pcmp_val.exit161.us.preheader ], [ %rdx.select, %middle.block ]
  br label %pcmp_val.exit161.us

pcmp_val.exit161.us:                              ; preds = %pcmp_val.exit161.us.preheader607, %pcmp_val.exit161.us
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %pcmp_val.exit161.us ], [ %indvars.iv331.ph, %pcmp_val.exit161.us.preheader607 ] ; 4 uses
  %.0124197.us = phi i32 [ %i.mb, %pcmp_val.exit161.us ], [ %.0124197.us.ph, %pcmp_val.exit161.us.preheader607 ]
  %i.lu = add nuw i64 %indvars.iv331, %indvars.iv333
  %sext366 = shl i64 %i.lu, 32
  %i.lv = ashr exact i64 %sext366, 32
  %i.lw = getelementptr inbounds i8, ptr %2, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv331
  %i.lz = load i8, ptr %i.ly, align 1
  %i.ma = icmp eq i8 %i.lx, %i.lz
  %i.mb = select i1 %i.ma, i32 %.0124197.us, i32 0 ; 2 uses
  %indvars.iv.next332 = add nsw i64 %indvars.iv331, -1
  %i.mc = icmp sgt i64 %indvars.iv331, 0
  br i1 %i.mc, label %pcmp_val.exit161.us, label %._crit_edge, !llvm.loop !55

pcmp_val.exit161.us201:                           ; preds = %pcmp_val.exit161.us201.preheader608, %pcmp_val.exit161.us201
  %indvars.iv328 = phi i64 [ %indvars.iv.next329, %pcmp_val.exit161.us201 ], [ %indvars.iv328.ph, %pcmp_val.exit161.us201.preheader608 ] ; 4 uses
  %.0124197.us199 = phi i32 [ %i.mk, %pcmp_val.exit161.us201 ], [ %.0124197.us199.ph, %pcmp_val.exit161.us201.preheader608 ]
  %i.md = add nuw i64 %indvars.iv328, %indvars.iv333
  %sext365 = shl i64 %i.md, 32
  %i.me = ashr exact i64 %sext365, 31
  %i.mf = getelementptr inbounds i8, ptr %2, i64 %i.me
  %i.mg = load i16, ptr %i.mf, align 2
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv328
  %i.mi = load i16, ptr %i.mh, align 2
  %i.mj = icmp eq i16 %i.mg, %i.mi
  %i.mk = select i1 %i.mj, i32 %.0124197.us199, i32 0 ; 2 uses
  %indvars.iv.next329 = add nsw i64 %indvars.iv328, -1
  %i.ml = icmp sgt i64 %indvars.iv328, 0
  br i1 %i.ml, label %pcmp_val.exit161.us201, label %._crit_edge, !llvm.loop !56

pcmp_val.exit161.us209:                           ; preds = %pcmp_val.exit161.us209.preheader610, %pcmp_val.exit161.us209
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %pcmp_val.exit161.us209 ], [ %indvars.iv325.ph, %pcmp_val.exit161.us209.preheader610 ] ; 4 uses
  %.0124197.us207 = phi i32 [ %i.mt, %pcmp_val.exit161.us209 ], [ %.0124197.us207.ph, %pcmp_val.exit161.us209.preheader610 ]
  %i.mm = add nuw i64 %indvars.iv325, %indvars.iv333
  %sext364 = shl i64 %i.mm, 32
  %i.mn = ashr exact i64 %sext364, 32
  %i.mo = getelementptr inbounds i8, ptr %2, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv325
  %i.mr = load i8, ptr %i.mq, align 1
  %i.ms = icmp eq i8 %i.mp, %i.mr
  %i.mt = select i1 %i.ms, i32 %.0124197.us207, i32 0 ; 2 uses
  %indvars.iv.next326 = add nsw i64 %indvars.iv325, -1
  %i.mu = icmp sgt i64 %indvars.iv325, 0
  br i1 %i.mu, label %pcmp_val.exit161.us209, label %._crit_edge, !llvm.loop !57

pcmp_val.exit161.us217:                           ; preds = %pcmp_val.exit161.us217.preheader612, %pcmp_val.exit161.us217
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %pcmp_val.exit161.us217 ], [ %indvars.iv322.ph, %pcmp_val.exit161.us217.preheader612 ] ; 4 uses
  %.0124197.us215 = phi i32 [ %i.nc, %pcmp_val.exit161.us217 ], [ %.0124197.us215.ph, %pcmp_val.exit161.us217.preheader612 ]
  %i.mv = add nuw i64 %indvars.iv322, %indvars.iv333
  %sext = shl i64 %i.mv, 32
  %i.mw = ashr exact i64 %sext, 31
  %i.mx = getelementptr inbounds i8, ptr %2, i64 %i.mw
  %i.my = load i16, ptr %i.mx, align 2
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv322
  %i.na = load i16, ptr %i.mz, align 2
  %i.nb = icmp eq i16 %i.my, %i.na
  %i.nc = select i1 %i.nb, i32 %.0124197.us215, i32 0 ; 2 uses
  %indvars.iv.next323 = add nsw i64 %indvars.iv322, -1
  %i.nd = icmp sgt i64 %indvars.iv322, 0
  br i1 %i.nd, label %pcmp_val.exit161.us217, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %pcmp_val.exit161.us217, %pcmp_val.exit161.us209, %pcmp_val.exit161.us201, %pcmp_val.exit161.us, %middle.block497, %middle.block469, %middle.block443, %middle.block, %bb.ae
  %.0124.lcssa = phi i32 [ 1, %bb.ae ], [ %i.mk, %pcmp_val.exit161.us201 ], [ %i.mt, %pcmp_val.exit161.us209 ], [ %i.mb, %pcmp_val.exit161.us ], [ %rdx.select, %middle.block ], [ %rdx.select445, %middle.block443 ], [ %rdx.select471, %middle.block469 ], [ %rdx.select499, %middle.block497 ], [ %i.nc, %pcmp_val.exit161.us217 ]
  %i.ne = or i32 %.0124.lcssa, %i.hz              ; 2 uses
  %indvars.iv.next334 = add nsw i64 %indvars.iv333, -1
  %i.nf = icmp sgt i64 %indvars.iv333, 0
  %indvars.iv.next = add i32 %indvars.iv, 1
  %indvar.next = add i32 %indvar, 1
  %indvar.next425 = add i33 %indvar424, 1
  br i1 %i.nf, label %bb.ae, label %.loopexit, !llvm.loop !59

.unreachabledefault391:                           ; preds = %bb.q
  unreachable

.lr.ph267.unreachabledefault:                     ; preds = %.lr.ph267
  unreachable

.unreachabledefault:                              ; preds = %bb.f
  unreachable

.unreachabledefault390:                           ; preds = %bb.k
  unreachable

.lr.ph244.split.us.split.split.us.unreachabledefault: ; preds = %.lr.ph244.split.us.split.split.us
  unreachable

.unreachabledefault392:                           ; preds = %bb.w
  unreachable

.lr.ph.unreachabledefault:                        ; preds = %.lr.ph
  unreachable

default.unreachable363:                           ; preds = %bb.a
  unreachable

.loopexit:                                        ; preds = %._crit_edge, %pcmp_val.exit155, %._crit_edge240.us.us, %._crit_edge268, %.lr.ph244, %bb.ad, %bb.v, %.preheader181, %.preheader, %bb.ac
  %.6 = phi i32 [ %i.bk, %._crit_edge240.us.us ], [ %i.hd, %pcmp_val.exit155 ], [ 0, %.lr.ph244 ], [ %i.hh, %bb.ac ], [ 0, %.preheader ], [ 0, %.preheader181 ], [ 0, %bb.ad ], [ %.1.lcssa, %._crit_edge268 ], [ %i.fy, %bb.v ], [ %i.ne, %._crit_edge ] ; 3 uses
  %i.ng = lshr i32 %i.a, 4
  %i.nh = and i32 %i.ng, 3
  switch i32 %i.nh, label %bb.ah [
    i32 1, label %bb.af
    i32 3, label %bb.ag
  ]

bb.af:                                            ; preds = %.loopexit
  %i.ni = shl nuw nsw i32 2, %i.c
  %i.nj = add nsw i32 %i.ni, -1
  %i.nk = xor i32 %.6, %i.nj
  br label %bb.ah

bb.ag:                                            ; preds = %.loopexit
  %notmask135 = shl nsw i32 -1, %4
  %i.nl = xor i32 %notmask135, %.6
  %i.nm = xor i32 %i.nl, -1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.loopexit
  %.7 = phi i32 [ %.6, %.loopexit ], [ %i.nk, %bb.af ], [ %i.nm, %bb.ag ] ; 3 uses
  %.not136 = icmp eq i32 %.7, 0
  br i1 %.not136, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.nn = or disjoint i64 %i.j, 1
  store i64 %i.nn, ptr %i.k, align 8
  %i.no = and i32 %.7, 1
  %.not137 = icmp eq i32 %i.no, 0
  br i1 %.not137, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.np = or disjoint i64 %i.j, 2049
  store i64 %i.np, ptr %i.k, align 8
  br label %.thread

.thread:                                          ; preds = %bb.ah, %bb.aj, %bb.ai
  ret i32 %.7
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pcmpestrm_xmm(ptr nofree noundef captures(none) initializes((280, 288), (296, 300), (960, 976)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = trunc i32 %3 to i8
  %.not.i = icmp ult i32 %3, 256                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %sext.i = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext.i, 32
  %.012.i = select i1 %.not.i, i64 %i.d, i64 %i.c ; 3 uses
  %i.e = and i32 %3, 1
  %.not14.i = icmp eq i32 %i.e, 0                 ; 3 uses
  %..neg.i = select i1 %.not14.i, i64 -16, i64 -8 ; 2 uses
  %..i = select i1 %.not14.i, i64 16, i64 8       ; 3 uses
  %i.f = icmp sgt i64 %.012.i, %..i
end_hunk_0
