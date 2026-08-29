Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeglsdec?download=true
inline.NumInlined: 14
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ff_jpegls_decode_picture:bb.a
  %.not447 = icmp eq i32 %.1282, 0
  br i1 %.not447, label %.loopexit404, label %.lr.ph436

.lr.ph436:                                        ; preds = %bb.aj
  %i.fh = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !14
  %i.fj = add nsw i32 %.0289, 2                   ; 5 uses
  %i.fk = icmp slt i32 %i.fj, %i.fe               ; 4 uses
  %i.fl = sext i32 %.0289 to i64                  ; 4 uses
  %i.fm = sext i32 %i.fe to i64                   ; 4 uses
  %i.fn = sext i32 %i.fj to i64
  %i.fo = sext i32 %i.fj to i64
  %i.fp = sext i32 %i.fj to i64
  %i.fq = sext i32 %i.fj to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph436, %.loopexit397
  %.0274434 = phi ptr [ %i.fi, %.lr.ph436 ], [ %i.je, %.loopexit397 ] ; 9 uses
  %.2307433 = phi i32 [ 0, %.lr.ph436 ], [ %i.jf, %.loopexit397 ]
  %i.fr = load i32, ptr %i.ex, align 4, !tbaa !94
  switch i32 %i.fr, label %.loopexit397 [
    i32 1, label %.preheader396
    i32 2, label %.preheader398
    i32 3, label %.preheader400
    i32 4, label %.preheader402
  ]

.preheader402:                                    ; preds = %bb.ak
  br i1 %i.fk, label %.lr.ph426, label %.loopexit397

.preheader400:                                    ; preds = %bb.ak
  br i1 %i.fk, label %.lr.ph428, label %.loopexit397

.preheader398:                                    ; preds = %bb.ak
  br i1 %i.fk, label %.lr.ph430, label %.loopexit397

.preheader396:                                    ; preds = %bb.ak
  br i1 %i.fk, label %.lr.ph432, label %.loopexit397

.lr.ph432:                                        ; preds = %.preheader396, %.lr.ph432
  %indvars.iv476 = phi i64 [ %indvars.iv.next477, %.lr.ph432 ], [ %i.fl, %.preheader396 ] ; 3 uses
  %i.fs = phi i64 [ %i.gc, %.lr.ph432 ], [ %i.fq, %.preheader396 ]
  %i.ft = getelementptr i8, ptr %.0274434, i64 %indvars.iv476 ; 3 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !15
  %i.fw = xor i8 %i.fv, -128                      ; 2 uses
  %i.fx = load i8, ptr %i.ft, align 1, !tbaa !15
  %i.fy = add i8 %i.fw, %i.fx
  store i8 %i.fy, ptr %i.ft, align 1, !tbaa !15
  %i.fz = getelementptr inbounds i8, ptr %.0274434, i64 %i.fs ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !15
  %i.gb = add i8 %i.ga, %i.fw
  store i8 %i.gb, ptr %i.fz, align 1, !tbaa !15
  %indvars.iv.next477 = add nsw i64 %indvars.iv476, 3
  %i.gc = add nsw i64 %indvars.iv476, 5           ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.fm
  br i1 %i.gd, label %.lr.ph432, label %.loopexit397, !llvm.loop !95

.lr.ph430:                                        ; preds = %.preheader398, %.lr.ph430
  %indvars.iv473 = phi i64 [ %indvars.iv.next474, %.lr.ph430 ], [ %i.fl, %.preheader398 ] ; 3 uses
  %i.ge = phi i64 [ %i.gu, %.lr.ph430 ], [ %i.fp, %.preheader398 ]
  %i.gf = getelementptr i8, ptr %.0274434, i64 %indvars.iv473 ; 3 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 1
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !15  ; 2 uses
  %i.gi = xor i8 %i.gh, -128
  %i.gj = load i8, ptr %i.gf, align 1, !tbaa !15
  %i.gk = add i8 %i.gi, %i.gj                     ; 2 uses
  store i8 %i.gk, ptr %i.gf, align 1, !tbaa !15
  %i.gl = zext i8 %i.gk to i16
  %i.gm = zext i8 %i.gh to i16
  %i.gn = add nuw nsw i16 %i.gl, %i.gm
  %i.go = lshr i16 %i.gn, 1
  %i.gp = getelementptr inbounds i8, ptr %.0274434, i64 %i.ge ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !15
  %i.gr = trunc nuw i16 %i.go to i8
  %i.gs = xor i8 %i.gr, -128
  %i.gt = add i8 %i.gs, %i.gq
  store i8 %i.gt, ptr %i.gp, align 1, !tbaa !15
  %indvars.iv.next474 = add nsw i64 %indvars.iv473, 3
  %i.gu = add nsw i64 %indvars.iv473, 5           ; 2 uses
  %i.gv = icmp slt i64 %i.gu, %i.fm
  br i1 %i.gv, label %.lr.ph430, label %.loopexit397, !llvm.loop !96

.lr.ph428:                                        ; preds = %.preheader400, %.lr.ph428
  %indvars.iv470 = phi i64 [ %indvars.iv.next471, %.lr.ph428 ], [ %i.fl, %.preheader400 ] ; 3 uses
  %i.gw = phi i64 [ %i.ho, %.lr.ph428 ], [ %i.fo, %.preheader400 ]
  %i.gx = getelementptr inbounds i8, ptr %.0274434, i64 %indvars.iv470 ; 3 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !15
  %i.gz = getelementptr inbounds i8, ptr %.0274434, i64 %i.gw ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !15  ; 2 uses
  %i.hb = zext i8 %i.ha to i16
  %i.hc = getelementptr i8, ptr %i.gx, i64 1      ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !15  ; 2 uses
  %i.he = zext i8 %i.hd to i16
  %i.hf = add nuw nsw i16 %i.he, %i.hb
  %i.hg = lshr i16 %i.hf, 2
  %i.hh = trunc nuw nsw i16 %i.hg to i8
  %i.hi = sub i8 %i.gy, %i.hh
  %i.hj = add i8 %i.hi, 64                        ; 3 uses
  %i.hk = add i8 %i.hj, %i.ha
  %i.hl = xor i8 %i.hk, -128
  store i8 %i.hl, ptr %i.gx, align 1, !tbaa !15
  %i.hm = add i8 %i.hj, %i.hd
  %i.hn = xor i8 %i.hm, -128
  store i8 %i.hn, ptr %i.gz, align 1, !tbaa !15
  store i8 %i.hj, ptr %i.hc, align 1, !tbaa !15
  %indvars.iv.next471 = add nsw i64 %indvars.iv470, 3
  %i.ho = add nsw i64 %indvars.iv470, 5           ; 2 uses
  %i.hp = icmp slt i64 %i.ho, %i.fm
  br i1 %i.hp, label %.lr.ph428, label %.loopexit397, !llvm.loop !97

.lr.ph426:                                        ; preds = %.preheader402, %.lr.ph426
  %indvars.iv467 = phi i64 [ %indvars.iv.next468, %.lr.ph426 ], [ %i.fl, %.preheader402 ] ; 3 uses
  %i.hq = phi i64 [ %i.iy, %.lr.ph426 ], [ %i.fn, %.preheader402 ]
  %i.hr = getelementptr inbounds i8, ptr %.0274434, i64 %indvars.iv467 ; 3 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !15
  %i.ht = zext i8 %i.hs to i32                    ; 3 uses
  %i.hu = getelementptr inbounds i8, ptr %.0274434, i64 %i.hq ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !15
  %i.hw = zext i8 %i.hv to i32
  %i.hx = add nsw i32 %i.hw, -128                 ; 2 uses
  %i.hy = mul nsw i32 %i.hx, 359
  %i.hz = add nsw i32 %i.hy, 490
  %i.ia = ashr i32 %i.hz, 8
  %i.ib = sub nsw i32 %i.ht, %i.ia                ; 3 uses
  %i.ic = getelementptr i8, ptr %i.hr, i64 1      ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !15
  %i.ie = zext i8 %i.id to i32
  %i.if = add nsw i32 %i.ie, -128                 ; 2 uses
  %i.ig = mul nsw i32 %i.if, 88
  %.neg = mul nsw i32 %i.hx, -183
  %i.ih = add nsw i32 %.neg, 30
  %i.ii = add nsw i32 %i.ih, %i.ig
  %i.ij = ashr i32 %i.ii, 8
  %i.ik = sub nsw i32 %i.ht, %i.ij                ; 3 uses
  %i.il = mul nsw i32 %i.if, 454
  %i.im = add nsw i32 %i.il, 574
  %i.in = ashr i32 %i.im, 8
  %i.io = add nsw i32 %i.in, %i.ht                ; 3 uses
  %i.ip = icmp ugt i32 %i.ib, 255
  %isnotneg.i346 = icmp sgt i32 %i.ib, -1
  %i.iq = sext i1 %isnotneg.i346 to i8
  %i.ir = trunc nuw i32 %i.ib to i8
  %.0.i347 = select i1 %i.ip, i8 %i.iq, i8 %i.ir
  store i8 %.0.i347, ptr %i.hr, align 1, !tbaa !15
  %i.is = icmp ugt i32 %i.ik, 255
  %isnotneg.i344 = icmp sgt i32 %i.ik, -1
  %i.it = sext i1 %isnotneg.i344 to i8
  %i.iu = trunc nuw i32 %i.ik to i8
  %.0.i345 = select i1 %i.is, i8 %i.it, i8 %i.iu
  store i8 %.0.i345, ptr %i.ic, align 1, !tbaa !15
  %i.iv = icmp ugt i32 %i.io, 255
  %isnotneg.i = icmp sgt i32 %i.io, -1
  %i.iw = sext i1 %isnotneg.i to i8
  %i.ix = trunc nuw i32 %i.io to i8
  %.0.i343 = select i1 %i.iv, i8 %i.iw, i8 %i.ix
  store i8 %.0.i343, ptr %i.hu, align 1, !tbaa !15
  %indvars.iv.next468 = add nsw i64 %indvars.iv467, 3
  %i.iy = add nsw i64 %indvars.iv467, 5           ; 2 uses
  %i.iz = icmp slt i64 %i.iy, %i.fm
  br i1 %i.iz, label %.lr.ph426, label %.loopexit397, !llvm.loop !98

.loopexit397:                                     ; preds = %.lr.ph426, %.lr.ph428, %.lr.ph430, %.lr.ph432, %.preheader402, %.preheader400, %.preheader398, %.preheader396, %bb.ak
  %i.ja = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 64
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !62
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds i8, ptr %.0274434, i64 %i.jd
  %i.jf = add nuw nsw i32 %.2307433, 1            ; 2 uses
  %exitcond479.not = icmp eq i32 %i.jf, %.1282
  br i1 %exitcond479.not, label %.loopexit404, label %bb.ak, !llvm.loop !99

bb.al:                                            ; preds = %bb.ai
  %i.jg = load ptr, ptr %i.bd, align 8, !tbaa !36
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.jg, ptr noundef nonnull @.str.10) #9
  br label %.loopexit404

.loopexit404:                                     ; preds = %.loopexit397, %bb.aj, %bb.al, %bb.ah, %.loopexit405
  %.not341 = icmp eq i32 %.0287, 0
  br i1 %.not341, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %.loopexit404
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ji = load i32, ptr %i.jh, align 16, !tbaa !81
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.jk = load i32, ptr %i.jj, align 16, !tbaa !87
  %i.jl = mul i32 %i.jk, %i.ji                    ; 6 uses
  %i.jm = load i32, ptr %i.ab, align 4, !tbaa !74
  %i.jn = icmp slt i32 %i.jm, 9
  br i1 %i.jn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.jo = icmp ne i32 %.1282, 0
  %i.jp = icmp slt i32 %.0289, %i.jl
  %or.cond446 = select i1 %i.jo, i1 %i.jp, i1 false
  br i1 %or.cond446, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.an
  %i.jq = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !14
  %i.js = sext i32 %.0289 to i64                  ; 6 uses
  %i.jt = zext nneg i32 %.0288 to i64
  %i.ju = sext i32 %i.jl to i64                   ; 2 uses
  %i.jv = sub nsw i64 %i.ju, %i.js                ; 7 uses
  %min.iters.check556 = icmp ugt i64 %i.jv, 3
  %ident.check.not = icmp eq i32 %.0288, 1
  %or.cond586 = select i1 %min.iters.check556, i1 %ident.check.not, i1 false
  %min.iters.check558 = icmp ult i64 %i.jv, 16
  %i.jw = and i64 %i.jv, 12
  %n.vec560 = and i64 %i.jv, -16                  ; 4 uses
  %i.jx = add nsw i64 %n.vec560, %i.js
  %broadcast.splatinsert561 = insertelement <16 x i32> poison, i32 %.0287, i64 0
  %broadcast.splat562 = shufflevector <16 x i32> %broadcast.splatinsert561, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n568 = icmp eq i64 %i.jv, %n.vec560
  %min.epilog.iters.check574 = icmp eq i64 %i.jw, 0
  %n.vec576 = and i64 %i.jv, -4                   ; 3 uses
  %i.jy = add nsw i64 %n.vec576, %i.js
  %broadcast.splatinsert577 = insertelement <4 x i32> poison, i32 %.0287, i64 0
  %broadcast.splat578 = shufflevector <4 x i32> %broadcast.splatinsert577, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n584 = icmp eq i64 %i.jv, %n.vec576
  br label %iter.check571

iter.check571:                                    ; preds = %.preheader.preheader, %._crit_edge443
  %.0271445 = phi ptr [ %i.kr, %._crit_edge443 ], [ %i.jr, %.preheader.preheader ] ; 4 uses
  %.3308444 = phi i32 [ %i.ks, %._crit_edge443 ], [ 0, %.preheader.preheader ]
  br i1 %or.cond586, label %vector.main.loop.iter.check557, label %vec.epilog.scalar.ph572.preheader

vector.main.loop.iter.check557:                   ; preds = %iter.check571
  br i1 %min.iters.check558, label %vec.epilog.ph575, label %vector.ph559

vector.ph559:                                     ; preds = %vector.main.loop.iter.check557
  %invariant.gep = getelementptr i8, ptr %.0271445, i64 %i.js
  br label %vector.body563

vector.body563:                                   ; preds = %vector.body563, %vector.ph559
  %index564 = phi i64 [ 0, %vector.ph559 ], [ %index.next566, %vector.body563 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index564 ; 2 uses
  %wide.load565 = load <16 x i8>, ptr %gep, align 1, !tbaa !15
  %i.jz = zext <16 x i8> %wide.load565 to <16 x i32>
  %i.ka = shl nuw nsw <16 x i32> %i.jz, %broadcast.splat562
  %i.kb = trunc <16 x i32> %i.ka to <16 x i8>
  store <16 x i8> %i.kb, ptr %gep, align 1, !tbaa !15
  %index.next566 = add nuw i64 %index564, 16      ; 2 uses
  %i.kc = icmp eq i64 %index.next566, %n.vec560
  br i1 %i.kc, label %middle.block567, label %vector.body563, !llvm.loop !100

middle.block567:                                  ; preds = %vector.body563
  br i1 %cmp.n568, label %._crit_edge443, label %vec.epilog.iter.check573

vec.epilog.iter.check573:                         ; preds = %middle.block567
  br i1 %min.epilog.iters.check574, label %vec.epilog.scalar.ph572.preheader, label %vec.epilog.ph575, !prof !103

vec.epilog.ph575:                                 ; preds = %vector.main.loop.iter.check557, %vec.epilog.iter.check573
  %vec.epilog.resume.val569 = phi i64 [ %n.vec560, %vec.epilog.iter.check573 ], [ 0, %vector.main.loop.iter.check557 ]
  %invariant.gep616 = getelementptr i8, ptr %.0271445, i64 %i.js
  br label %vec.epilog.vector.body579

vec.epilog.vector.body579:                        ; preds = %vec.epilog.vector.body579, %vec.epilog.ph575
  %index580 = phi i64 [ %vec.epilog.resume.val569, %vec.epilog.ph575 ], [ %index.next582, %vec.epilog.vector.body579 ] ; 2 uses
  %gep617 = getelementptr i8, ptr %invariant.gep616, i64 %index580 ; 2 uses
  %wide.load581 = load <4 x i8>, ptr %gep617, align 1, !tbaa !15
  %i.kd = zext <4 x i8> %wide.load581 to <4 x i32>
  %i.ke = shl nuw nsw <4 x i32> %i.kd, %broadcast.splat578
  %i.kf = trunc <4 x i32> %i.ke to <4 x i8>
  store <4 x i8> %i.kf, ptr %gep617, align 1, !tbaa !15
  %index.next582 = add nuw i64 %index580, 4       ; 2 uses
  %i.kg = icmp eq i64 %index.next582, %n.vec576
  br i1 %i.kg, label %vec.epilog.middle.block583, label %vec.epilog.vector.body579, !llvm.loop !104

vec.epilog.middle.block583:                       ; preds = %vec.epilog.vector.body579
  br i1 %cmp.n584, label %._crit_edge443, label %vec.epilog.scalar.ph572.preheader

vec.epilog.scalar.ph572.preheader:                ; preds = %iter.check571, %vec.epilog.iter.check573, %vec.epilog.middle.block583
  %indvars.iv486.ph = phi i64 [ %i.js, %iter.check571 ], [ %i.jx, %vec.epilog.iter.check573 ], [ %i.jy, %vec.epilog.middle.block583 ]
  br label %vec.epilog.scalar.ph572

vec.epilog.scalar.ph572:                          ; preds = %vec.epilog.scalar.ph572.preheader, %vec.epilog.scalar.ph572
  %indvars.iv486 = phi i64 [ %indvars.iv.next487, %vec.epilog.scalar.ph572 ], [ %indvars.iv486.ph, %vec.epilog.scalar.ph572.preheader ] ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %.0271445, i64 %indvars.iv486 ; 2 uses
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !15
  %i.kj = zext i8 %i.ki to i32
  %i.kk = shl nuw nsw i32 %i.kj, %.0287
  %i.kl = trunc i32 %i.kk to i8
  store i8 %i.kl, ptr %i.kh, align 1, !tbaa !15
  %indvars.iv.next487 = add nsw i64 %indvars.iv486, %i.jt ; 2 uses
  %i.km = icmp slt i64 %indvars.iv.next487, %i.ju
  br i1 %i.km, label %vec.epilog.scalar.ph572, label %._crit_edge443, !llvm.loop !105

._crit_edge443:                                   ; preds = %vec.epilog.scalar.ph572, %vec.epilog.middle.block583, %middle.block567
  %i.kn = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 64
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !62
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds i8, ptr %.0271445, i64 %i.kq
  %i.ks = add nuw nsw i32 %.3308444, 1            ; 2 uses
  %exitcond489.not = icmp eq i32 %i.ks, %.1282
  br i1 %exitcond489.not, label %.loopexit, label %iter.check571, !llvm.loop !106

bb.ao:                                            ; preds = %bb.am
  %.not448 = icmp eq i32 %.1282, 0
  br i1 %.not448, label %.loopexit, label %.preheader394.lr.ph

.preheader394.lr.ph:                              ; preds = %bb.ao
  %i.kt = load ptr, ptr %i.s, align 8, !tbaa !54  ; 2 uses
  %i.ku = icmp sgt i32 %i.jl, 0
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 64
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !62
  %i.kx = sdiv i32 %i.kw, 2
  %i.ky = sext i32 %i.kx to i64
  br i1 %i.ku, label %.preheader394.preheader, label %.loopexit

.preheader394.preheader:                          ; preds = %.preheader394.lr.ph
  %i.kz = load ptr, ptr %i.kt, align 8, !tbaa !14
  %wide.trip.count483 = zext nneg i32 %i.jl to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.jl, 4
  %min.iters.check547 = icmp ult i32 %i.jl, 16
  %i.la = and i64 %wide.trip.count483, 12
  %n.vec = and i64 %wide.trip.count483, 2147483632 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.0287, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count483
  %min.epilog.iters.check = icmp eq i64 %i.la, 0
  %n.vec549 = and i64 %wide.trip.count483, 2147483644 ; 3 uses
  %broadcast.splatinsert550 = insertelement <4 x i32> poison, i32 %.0287, i64 0
  %broadcast.splat551 = shufflevector <4 x i32> %broadcast.splatinsert550, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n555 = icmp eq i64 %n.vec549, %wide.trip.count483
  br label %iter.check

iter.check:                                       ; preds = %.preheader394.preheader, %._crit_edge
  %.0440 = phi ptr [ %i.lu, %._crit_edge ], [ %i.kz, %.preheader394.preheader ] ; 4 uses
  %.4309439 = phi i32 [ %i.lv, %._crit_edge ], [ 0, %.preheader394.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check547, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %.0440, i64 %index ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.lb, align 2, !tbaa !88
  %wide.load548 = load <8 x i16>, ptr %i.lc, align 2, !tbaa !88
  %i.ld = zext <8 x i16> %wide.load to <8 x i32>
  %i.le = zext <8 x i16> %wide.load548 to <8 x i32>
  %i.lf = shl nuw nsw <8 x i32> %i.ld, %broadcast.splat
  %i.lg = shl nuw nsw <8 x i32> %i.le, %broadcast.splat
  %i.lh = trunc <8 x i32> %i.lf to <8 x i16>
  %i.li = trunc <8 x i32> %i.lg to <8 x i16>
  store <8 x i16> %i.lh, ptr %i.lb, align 2, !tbaa !88
  store <8 x i16> %i.li, ptr %i.lc, align 2, !tbaa !88
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.lj = icmp eq i64 %index.next, %n.vec
  br i1 %i.lj, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !103

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index552 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next554, %vec.epilog.vector.body ] ; 2 uses
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %.0440, i64 %index552 ; 2 uses
  %wide.load553 = load <4 x i16>, ptr %i.lk, align 2, !tbaa !88
  %i.ll = zext <4 x i16> %wide.load553 to <4 x i32>
  %i.lm = shl nuw nsw <4 x i32> %i.ll, %broadcast.splat551
  %i.ln = trunc <4 x i32> %i.lm to <4 x i16>
  store <4 x i16> %i.ln, ptr %i.lk, align 2, !tbaa !88
  %index.next554 = add nuw i64 %index552, 4       ; 2 uses
  %i.lo = icmp eq i64 %index.next554, %n.vec549
  br i1 %i.lo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n555, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv480.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec549, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv480 = phi i64 [ %indvars.iv.next481, %vec.epilog.scalar.ph ], [ %indvars.iv480.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %.0440, i64 %indvars.iv480 ; 2 uses
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !88
  %i.lr = zext i16 %i.lq to i32
  %i.ls = shl nuw nsw i32 %i.lr, %.0287
  %i.lt = trunc i32 %i.ls to i16
  store i16 %i.lt, ptr %i.lp, align 2, !tbaa !88
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %exitcond484.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count483
  br i1 %exitcond484.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.lu = getelementptr inbounds [2 x i8], ptr %.0440, i64 %i.ky
  %i.lv = add nuw nsw i32 %.4309439, 1            ; 2 uses
  %exitcond485.not = icmp eq i32 %i.lv, %.1282
  br i1 %exitcond485.not, label %.loopexit, label %iter.check, !llvm.loop !110

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge443, %bb.ao, %.preheader394.lr.ph, %bb.an, %ff_mjpeg_handle_restart.exit, %bb.v, %bb.n, %bb.j, %bb.f, %bb.g, %bb.h, %bb.i, %.loopexit404, %bb.ag, %bb.af
  %.11 = phi i32 [ -1163346256, %bb.ag ], [ -1094995529, %bb.f ], [ -1094995529, %bb.j ], [ -1094995529, %bb.n ], [ %.10, %.loopexit404 ], [ %i.cm, %bb.v ], [ %i.dz, %ff_mjpeg_handle_restart.exit ], [ -1163346256, %bb.af ], [ -1094995529, %bb.i ], [ -1094995529, %bb.h ], [ -1094995529, %bb.g ], [ %.10, %bb.an ], [ %.10, %bb.ao ], [ %.10, %._crit_edge443 ], [ %.10, %.preheader394.lr.ph ], [ %.10, %._crit_edge ]
  tail call void @av_free(ptr noundef nonnull %i.x) #9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.e, %bb.c, %bb.a, %.loopexit
  %.0273 = phi i32 [ -1094995529, %bb.a ], [ %.11, %.loopexit ], [ -12, %bb.e ], [ -12, %bb.c ]
  ret i32 %.0273
}

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare void @ff_jpegls_reset_coding_parameters(ptr noundef, i32 noundef) local_unnamed_addr #2

end_hunk_0
begin_hunk_1_@ls_get_code_regular:bb.a

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @get_ur_golomb_jpegls(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114  ; 8 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !113    ; 4 uses
  %i.f = lshr i32 %i.b, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 1, !tbaa !15
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = and i32 %i.b, 7
  %i.l = shl i32 %i.j, %i.k                       ; 6 uses
  %.not.i = icmp ult i32 %i.l, 65536              ; 2 uses
  %i.m = lshr i32 %i.l, 16
  %spec.select.i = select i1 %.not.i, i32 %i.l, i32 %i.m ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.n = lshr i32 %spec.select.i, 8
  %i.o = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.n
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.o
  %i.p = zext nneg i32 %.110.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !15
  %i.s = zext i8 %i.r to i32
  %i.t = add nuw nsw i32 %.1.i, %i.s              ; 4 uses
  %i.u = sub nsw i32 %i.t, %1                     ; 2 uses
  %i.v = icmp sgt i32 %i.u, 6
  %i.w = sub nsw i32 32, %i.t
  %i.x = icmp slt i32 %i.w, %2
  %or.cond = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.b, label %.preheader130

.preheader130:                                    ; preds = %bb.a
  %i.y = icmp sgt i32 %2, 24
  %i.z = icmp ult i32 %i.l, 128
  %i.aa = and i1 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader130
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !112
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = lshr i32 %i.l, %i.u
  %i.ae = sub nsw i32 30, %i.t
  %i.af = shl i32 %i.ae, %1
  %i.ag = add i32 %i.ad, %i.af
  %i.ah = add nsw i32 %1, 32
  %i.ai = add i32 %i.ah, %i.b
  %i.aj = sub i32 %i.ai, %i.t
  %. = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.aj)
  br label %.loopexit

.preheader:                                       ; preds = %bb.d, %.preheader130
  %.0109.lcssa = phi i32 [ %i.b, %.preheader130 ], [ %i.ap, %bb.d ] ; 2 uses
  %.0107.lcssa = phi i32 [ %i.l, %.preheader130 ], [ %i.aw, %bb.d ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.preheader130 ], [ %i.an, %bb.d ] ; 3 uses
  %i.ak = icmp slt i32 %.0.lcssa, %2
  %i.al = icmp sgt i32 %.0107.lcssa, -1
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph140, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %i.an = phi i32 [ 25, %.lr.ph ], [ %i.ax, %bb.d ] ; 2 uses
  %.0109134 = phi i32 [ %i.b, %.lr.ph ], [ %i.ap, %bb.d ] ; 3 uses
  %.not125 = icmp ugt i32 %i.ac, %.0109134
  br i1 %.not125, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ao = add i32 %.0109134, 25
  %i.ap = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ao) ; 4 uses
  %i.aq = lshr i32 %i.ap, 3
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 1, !tbaa !15
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at)
  %i.av = and i32 %i.ap, 7
  %i.aw = shl i32 %i.au, %i.av                    ; 2 uses
  %i.ax = add nuw nsw i32 %i.an, 25               ; 2 uses
  %i.ay = icmp sle i32 %i.ax, %2
  %i.az = icmp ult i32 %i.aw, 128
  %i.ba = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %i.ba, label %bb.c, label %.preheader, !llvm.loop !138

.lr.ph140:                                        ; preds = %.preheader, %.lr.ph140
  %.1139 = phi i32 [ %i.be, %.lr.ph140 ], [ %.0.lcssa, %.preheader ]
  %.1108138 = phi i32 [ %i.bb, %.lr.ph140 ], [ %.0107.lcssa, %.preheader ]
  %.1110137 = phi i32 [ %i.bd, %.lr.ph140 ], [ %.0109.lcssa, %.preheader ]
  %i.bb = shl nuw i32 %.1108138, 1                ; 2 uses
  %i.bc = add i32 %.1110137, 1
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.bc) ; 2 uses
  %i.be = add nuw nsw i32 %.1139, 1               ; 3 uses
  %i.bf = icmp slt i32 %i.be, %2
  %i.bg = icmp sgt i32 %i.bb, -1
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %.lr.ph140, label %._crit_edge, !llvm.loop !139

._crit_edge:                                      ; preds = %.lr.ph140, %.preheader
  %.1110.lcssa = phi i32 [ %.0109.lcssa, %.preheader ], [ %i.bd, %.lr.ph140 ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %i.be, %.lr.ph140 ] ; 3 uses
  %i.bi = add i32 %.1110.lcssa, 1
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.bi) ; 7 uses
  %i.bk = lshr i32 %i.bj, 3
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 1, !tbaa !15
  %i.bo = tail call i32 @llvm.bswap.i32(i32 %i.bn)
  %i.bp = and i32 %i.bj, 7
  %i.bq = shl i32 %i.bo, %i.bp                    ; 3 uses
  %i.br = add nsw i32 %2, -1                      ; 2 uses
  %i.bs = icmp slt i32 %.1.lcssa, %i.br
  br i1 %i.bs, label %bb.e, label %bb.j

bb.e:                                             ; preds = %._crit_edge
  %.not124 = icmp eq i32 %1, 0
  br i1 %.not124, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = icmp sgt i32 %1, 24
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bu = lshr i32 %i.bq, 16
  %i.bv = add nsw i32 %1, -16                     ; 2 uses
  %i.bw = shl i32 %i.bu, %i.bv
  %i.bx = add i32 %i.bj, 16
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.bx) ; 3 uses
  %i.bz = lshr i32 %i.by, 3
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !15
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %i.cc)
  %i.ce = and i32 %i.by, 7
  %i.cf = shl i32 %i.cd, %i.ce
  %i.cg = sub nsw i32 48, %1
  %i.ch = lshr i32 %i.cf, %i.cg
  %i.ci = or i32 %i.ch, %i.bw
  %i.cj = add i32 %i.by, %i.bv
  %.128 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.cj)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ck = sub nsw i32 32, %1
  %i.cl = lshr i32 %i.bq, %i.ck
  %i.cm = add i32 %i.bj, %1
  %i.cn = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.cm)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h
  %.0111 = phi i32 [ %i.ci, %bb.g ], [ %i.cl, %bb.h ], [ 0, %bb.e ]
  %.2 = phi i32 [ %.128, %bb.g ], [ %i.cn, %bb.h ], [ %i.bj, %bb.e ]
  %i.co = shl i32 %.1.lcssa, %1
  %i.cp = add i32 %.0111, %i.co
  br label %.loopexit

bb.j:                                             ; preds = %._crit_edge
  %.not = icmp ne i32 %3, 0
  %i.cq = icmp eq i32 %.1.lcssa, %i.br
  %or.cond129 = and i1 %.not, %i.cq
  br i1 %or.cond129, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.cr = sub nsw i32 32, %3
  %i.cs = lshr i32 %i.bq, %i.cr
  %i.ct = add i32 %i.bj, %3
  %i.cu = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ct)
  %i.cv = add i32 %i.cs, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.j, %bb.k, %bb.i, %bb.b
  %storemerge126 = phi i32 [ %., %bb.b ], [ %i.bj, %bb.j ], [ %.2, %bb.i ], [ %i.cu, %bb.k ], [ %.0109134, %bb.c ]
  %.1114 = phi i32 [ %i.ag, %bb.b ], [ -1, %bb.j ], [ %i.cp, %bb.i ], [ %i.cv, %bb.k ], [ -1, %bb.c ]
  store i32 %storemerge126, ptr %i.a, align 8, !tbaa !111
  ret i32 %.1114
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"GetByteContext", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !11, i64 0}
!14 = !{!11, !11, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !6, i64 984}
!17 = !{!"MJpegDecodeContext", !18, i64 0, !19, i64 8, !20, i64 16, !10, i64 40, !6, i64 64, !6, i64 68, !11, i64 72, !7, i64 80, !7, i64 592, !7, i64 880, !6, i64 896, !6, i64 900, !6, i64 904, !6, i64 908, !6, i64 912, !6, i64 916, !6, i64 920, !6, i64 924, !6, i64 928, !7, i64 932, !7, i64 936, !6, i64 940, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !6, i64 964, !6, i64 968, !6, i64 972, !6, i64 976, !6, i64 980, !6, i64 984, !6, i64 988, !6, i64 992, !6, i64 996, !6, i64 1000, !6, i64 1004, !6, i64 1008, !6, i64 1012, !6, i64 1016, !6, i64 1020, !6, i64 1024, !7, i64 1028, !7, i64 1044, !7, i64 1060, !7, i64 1076, !7, i64 1092, !7, i64 1108, !7, i64 1124, !7, i64 1140, !7, i64 1156, !7, i64 1172, !7, i64 1188, !6, i64 1204, !6, i64 1208, !7, i64 1212, !7, i64 1228, !21, i64 1248, !21, i64 1256, !6, i64 1264, !6, i64 1268, !7, i64 1272, !7, i64 1296, !7, i64 1424, !7, i64 1456, !7, i64 1488, !6, i64 1520, !6, i64 1524, !7, i64 1528, !22, i64 1592, !23, i64 1624, !12, i64 1744, !6, i64 1752, !6, i64 1756, !6, i64 1760, !6, i64 1764, !6, i64 1768, !6, i64 1772, !6, i64 1776, !24, i64 1784, !6, i64 1792, !25, i64 1800, !6, i64 1808, !6, i64 1812, !26, i64 1816, !28, i64 1832, !29, i64 1840, !30, i64 1848, !6, i64 1856, !6, i64 1860, !21, i64 1864, !6, i64 1872, !6, i64 1876, !11, i64 1880, !24, i64 1888, !7, i64 1896, !7, i64 2024, !6, i64 4072, !6, i64 4076, !12, i64 4080, !31, i64 4088, !11, i64 4096, !24, i64 4104, !21, i64 4112}
!18 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!19 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!20 = !{!"GetBitContext", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!21 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!22 = !{!"BlockDSPContext", !12, i64 0, !12, i64 8, !7, i64 16}
!23 = !{!"IDCTDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !7, i64 48, !6, i64 112, !6, i64 116}
!24 = !{!"long", !7, i64 0}
!25 = !{!"p1 short", !12, i64 0}
!26 = !{!"AVExifMetadata", !27, i64 0, !6, i64 8, !6, i64 12}
!27 = !{!"p1 _ZTS11AVExifEntry", !12, i64 0}
!28 = !{!"p1 _ZTS10AVStereo3D", !12, i64 0}
!29 = !{!"p1 _ZTS18AVPixFmtDescriptor", !12, i64 0}
!30 = !{!"p1 _ZTS8ICCEntry", !12, i64 0}
!31 = !{!"p1 _ZTS8JLSState", !12, i64 0}
!32 = !{!17, !6, i64 992}
!33 = !{!17, !6, i64 996}
!34 = !{!17, !6, i64 1000}
!35 = !{!17, !6, i64 1004}
!36 = !{!17, !19, i64 8}
!37 = !{!38, !6, i64 524}
!38 = !{!"AVCodecContext", !18, i64 0, !6, i64 8, !6, i64 12, !39, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !40, i64 40, !12, i64 48, !24, i64 56, !6, i64 64, !6, i64 68, !11, i64 72, !6, i64 80, !41, i64 84, !41, i64 92, !41, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !41, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !25, i64 288, !25, i64 296, !25, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !43, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !42, i64 428, !42, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !44, i64 456, !24, i64 464, !24, i64 472, !42, i64 480, !42, i64 484, !6, i64 488, !6, i64 492, !11, i64 496, !11, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !45, i64 536, !12, i64 544, !46, i64 552, !46, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !47, i64 728, !11, i64 736, !6, i64 744, !6, i64 748, !11, i64 752, !11, i64 760, !11, i64 768, !48, i64 776, !6, i64 784, !6, i64 788, !24, i64 792, !6, i64 800, !6, i64 804, !24, i64 808, !12, i64 816, !24, i64 824, !49, i64 832, !6, i64 840, !50, i64 848, !6, i64 856, !6, i64 860}
!39 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!40 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!41 = !{!"AVRational", !6, i64 0, !6, i64 4}
!42 = !{!"float", !7, i64 0}
!43 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!44 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!45 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!46 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!47 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!48 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!49 = !{!"p1 int", !12, i64 0}
!50 = !{!"p2 _ZTS15AVFrameSideData", !51, i64 0}
!51 = !{!"any p2 pointer", !12, i64 0}
!52 = !{!17, !6, i64 1520}
!53 = !{!38, !6, i64 136}
!54 = !{!17, !21, i64 1256}
!55 = !{!56, !6, i64 116}
!56 = !{!"AVFrame", !7, i64 0, !7, i64 64, !57, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !41, i64 124, !24, i64 136, !24, i64 144, !41, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !58, i64 248, !6, i64 256, !50, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !24, i64 304, !59, i64 312, !6, i64 320, !46, i64 328, !46, i64 336, !24, i64 344, !24, i64 352, !24, i64 360, !24, i64 368, !12, i64 376, !43, i64 384, !24, i64 408, !6, i64 416}
!57 = !{!"p2 omnipotent char", !51, i64 0}
!58 = !{!"p2 _ZTS11AVBufferRef", !51, i64 0}
!59 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!60 = !{!38, !6, i64 652}
!61 = !{!17, !6, i64 1524}
!62 = !{!6, !6, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = distinct !{!65, !64}
!66 = !{!17, !6, i64 968}
!67 = !{!17, !6, i64 980}
!68 = !{!17, !6, i64 972}
!69 = !{!17, !24, i64 1784}
!70 = !{!17, !6, i64 1012}
!71 = !{!17, !31, i64 4088}
!72 = !{!73, !6, i64 5900}
!73 = !{!"JLSState", !6, i64 0, !6, i64 4, !6, i64 8, !7, i64 12, !7, i64 1480, !7, i64 2948, !7, i64 4408, !6, i64 5876, !6, i64 5880, !6, i64 5884, !6, i64 5888, !6, i64 5892, !6, i64 5896, !6, i64 5900, !6, i64 5904, !7, i64 5908}
!74 = !{!17, !6, i64 948}
!75 = !{!73, !6, i64 5884}
!76 = !{!73, !6, i64 5892}
!77 = !{!73, !6, i64 8}
!78 = !{!73, !6, i64 5880}
!79 = !{!73, !6, i64 0}
!80 = !{!73, !6, i64 4}
!81 = !{!17, !6, i64 1008}
!82 = !{!73, !6, i64 5876}
!83 = !{!73, !6, i64 5888}
!84 = !{!73, !6, i64 5896}
!85 = !{!17, !6, i64 1776}
!86 = !{!17, !6, i64 1756}
!87 = !{!17, !6, i64 1024}
!88 = !{!89, !89, i64 0}
!89 = !{!"short", !7, i64 0}
!90 = distinct !{!90, !64}
!91 = !{!17, !6, i64 1752}
!92 = distinct !{!92, !64}
!93 = distinct !{!93, !64}
!94 = !{!17, !6, i64 956}
!95 = distinct !{!95, !64}
!96 = distinct !{!96, !64}
!97 = distinct !{!97, !64}
!98 = distinct !{!98, !64}
!99 = distinct !{!99, !64}
!100 = distinct !{!100, !64, !101, !102}
!101 = !{!"llvm.loop.isvectorized", i32 1}
!102 = !{!"llvm.loop.unroll.runtime.disable"}
!103 = !{!"branch_weights", i32 4, i32 12}
!104 = distinct !{!104, !64, !101, !102}
!105 = distinct !{!105, !64, !101}
!106 = distinct !{!106, !64}
!107 = distinct !{!107, !64, !101, !102}
!108 = distinct !{!108, !64, !101, !102}
!109 = distinct !{!109, !64, !102, !101}
!110 = distinct !{!110, !64}
!111 = !{!20, !6, i64 8}
!112 = !{!20, !6, i64 12}
!113 = !{!20, !11, i64 0}
!114 = !{!20, !6, i64 16}
!115 = distinct !{!115, !64, !101, !102}
!116 = distinct !{!116, !64, !101, !102}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = distinct !{!119, !64, !101, !102}
!120 = !{!"branch_weights", i32 8, i32 24}
!121 = distinct !{!121, !64, !101, !102}
!122 = distinct !{!122, !118}
!123 = distinct !{!123, !64, !101}
!124 = distinct !{!124, !64, !101}
!125 = distinct !{!125, !64}
!126 = distinct !{!126, !64, !101, !102}
!127 = distinct !{!127, !64, !101, !102}
!128 = distinct !{!128, !118}
!129 = distinct !{!129, !64, !101, !102}
!130 = distinct !{!130, !64, !101, !102}
!131 = distinct !{!131, !118}
!132 = distinct !{!132, !64, !101}
!133 = distinct !{!133, !64, !101}
!134 = distinct !{!134, !64}
!135 = !{!73, !6, i64 5904}
!136 = distinct !{!136, !64}
!137 = distinct !{!137, !64}
!138 = distinct !{!138, !64}
!139 = distinct !{!139, !64}
end_hunk_1
