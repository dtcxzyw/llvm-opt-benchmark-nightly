Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/smooth.dispatch?download=true
inline.NumInlined: 2390
inline.NumDeleted: 435
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN2cv12cpu_baseline12_GLOBAL__N_120hlineSmoothONa_yzy_aIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib:bb.a
  %i.hc = mul nuw nsw i32 %i.hb, %i.gz
  %.sroa.speculated.i183.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.hc, i32 65535)
  %i.hd = trunc nuw i32 %.sroa.speculated.i183.1 to i16
  %i.he = load i16, ptr %i.gx, align 2, !tbaa !47, !noalias !1628
  %i.hf = tail call i16 @llvm.uadd.sat.i16(i16 %i.he, i16 %i.hd)
  store i16 %i.hf, ptr %i.gx, align 2, !tbaa !47
  %indvars.iv.next369.1 = add nuw nsw i64 %indvars.iv368, 2 ; 2 uses
  %exitcond372.not.1 = icmp eq i64 %indvars.iv.next369.1, %i.h
  br i1 %exitcond372.not.1, label %._crit_edge266, label %scalar.ph, !llvm.loop !1560

.loopexit240:                                     ; preds = %._crit_edge266, %._crit_edge258
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %i.hg = getelementptr [2 x i8], ptr %.0174270, i64 %i.e ; 2 uses
  %indvars.iv.next346 = add nsw i32 %indvars.iv345, -1
  %indvars.iv.next350 = add i32 %indvars.iv349, 1
  %indvars.iv.next357 = add nsw i64 %indvars.iv356, -1
  %exitcond381.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count380
  br i1 %exitcond381.not, label %._crit_edge273.loopexit, label %.preheader242, !llvm.loop !1561

._crit_edge273.loopexit:                          ; preds = %.loopexit240
  %i.hh = mul nsw i32 %.sroa.speculated215, %1
  br label %._crit_edge273

._crit_edge273:                                   ; preds = %._crit_edge273.loopexit, %bb.a
  %.0174.lcssa = phi ptr [ %4, %bb.a ], [ %i.hg, %._crit_edge273.loopexit ] ; 9 uses
  %.0170.lcssa = phi i32 [ 0, %bb.a ], [ %i.hh, %._crit_edge273.loopexit ] ; 7 uses
  %reass.sub = sub i32 %5, %i.b
  %i.hi = add i32 %reass.sub, 1
  %i.hj = mul nsw i32 %i.hi, %1                   ; 7 uses
  %i.hk = icmp slt i32 %.0170.lcssa, %i.hj
  br i1 %i.hk, label %.lr.ph284, label %._crit_edge285

.lr.ph284:                                        ; preds = %._crit_edge273
  %i.hl = sext i32 %i.a to i64                    ; 2 uses
  %i.hm = getelementptr [2 x i8], ptr %2, i64 %i.hl ; 4 uses
  %i.hn = mul i32 %i.a, %1
  %i.ho = sext i32 %i.hn to i64                   ; 5 uses
  %i.hp = icmp sgt i32 %3, 1
  br i1 %i.hp, label %.lr.ph278.us.preheader, label %.lr.ph284.split.preheader

.lr.ph284.split.preheader:                        ; preds = %.lr.ph284
  %i.hq = xor i32 %.0170.lcssa, -1
  %i.hr = add i32 %i.hj, %i.hq                    ; 2 uses
  %i.hs = zext i32 %i.hr to i64                   ; 3 uses
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check542 = icmp ult i32 %i.hr, 23
  br i1 %min.iters.check542, label %.lr.ph284.split.preheader650, label %vector.memcheck543

vector.memcheck543:                               ; preds = %.lr.ph284.split.preheader
  %i.hu = shl nuw nsw i64 %i.hs, 1
  %i.hv = getelementptr i8, ptr %.0174.lcssa, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 2      ; 2 uses
  %i.hx = shl nsw i64 %i.hl, 1
  %i.hy = getelementptr i8, ptr %2, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 2
  %i.ia = getelementptr i8, ptr %0, i64 %i.ho
  %i.ib = getelementptr i8, ptr %0, i64 %i.ho
  %i.ic = getelementptr i8, ptr %i.ib, i64 %i.hs
  %i.id = getelementptr i8, ptr %i.ic, i64 1
  %bound0544 = icmp ult ptr %.0174.lcssa, %i.hz
  %bound1545 = icmp ult ptr %i.hm, %i.hw
  %found.conflict546 = and i1 %bound0544, %bound1545
  %bound0547 = icmp ult ptr %.0174.lcssa, %i.id
  %bound1548 = icmp ult ptr %i.ia, %i.hw
  %found.conflict549 = and i1 %bound0547, %bound1548
  %conflict.rdx550 = or i1 %found.conflict546, %found.conflict549
  br i1 %conflict.rdx550, label %.lr.ph284.split.preheader650, label %vector.ph551

vector.ph551:                                     ; preds = %vector.memcheck543
  %n.vec552 = and i64 %i.ht, 8589934584           ; 5 uses
  %i.ie = trunc i64 %n.vec552 to i32
  %i.if = add i32 %.0170.lcssa, %i.ie
  %i.ig = getelementptr i8, ptr %0, i64 %n.vec552 ; 2 uses
  %i.ih = shl nuw nsw i64 %n.vec552, 1
  %i.ii = getelementptr i8, ptr %.0174.lcssa, i64 %i.ih ; 2 uses
  %i.ij = load i16, ptr %i.hm, align 2, !tbaa !47, !alias.scope !1629, !noalias !1630
  %broadcast.splatinsert553 = insertelement <8 x i16> poison, i16 %i.ij, i64 0
  %broadcast.splat554 = shufflevector <8 x i16> %broadcast.splatinsert553, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ik = zext <8 x i16> %broadcast.splat554 to <8 x i32>
  %invariant.gep672 = getelementptr i8, ptr %0, i64 %i.ho
  br label %vector.body555

vector.body555:                                   ; preds = %vector.body555, %vector.ph551
  %index556 = phi i64 [ 0, %vector.ph551 ], [ %index.next559, %vector.body555 ] ; 3 uses
  %i.il = shl i64 %index556, 1
  %next.gep557 = getelementptr i8, ptr %.0174.lcssa, i64 %i.il
  %gep673 = getelementptr i8, ptr %invariant.gep672, i64 %index556
  %wide.load558 = load <8 x i8>, ptr %gep673, align 1, !tbaa !22, !alias.scope !1631, !noalias !1630
  %i.im = zext <8 x i8> %wide.load558 to <8 x i32>
  %i.in = mul nuw nsw <8 x i32> %i.im, %i.ik
  %i.io = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.in, <8 x i32> splat (i32 65535))
  %i.ip = trunc nuw <8 x i32> %i.io to <8 x i16>
  store <8 x i16> %i.ip, ptr %next.gep557, align 2, !tbaa !47, !alias.scope !1632, !noalias !1633
  %index.next559 = add nuw i64 %index556, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next559, %n.vec552
  br i1 %i.iq, label %middle.block560, label %vector.body555, !llvm.loop !1568

middle.block560:                                  ; preds = %vector.body555
  %cmp.n561 = icmp eq i64 %i.ht, %n.vec552
  br i1 %cmp.n561, label %._crit_edge285, label %.lr.ph284.split.preheader650

.lr.ph284.split.preheader650:                     ; preds = %vector.memcheck543, %.lr.ph284.split.preheader, %middle.block560
  %.1171282.ph = phi i32 [ %.0170.lcssa, %vector.memcheck543 ], [ %.0170.lcssa, %.lr.ph284.split.preheader ], [ %i.if, %middle.block560 ]
  %.0172281.ph = phi ptr [ %0, %vector.memcheck543 ], [ %0, %.lr.ph284.split.preheader ], [ %i.ig, %middle.block560 ]
  %.1175280.ph = phi ptr [ %.0174.lcssa, %vector.memcheck543 ], [ %.0174.lcssa, %.lr.ph284.split.preheader ], [ %i.ii, %middle.block560 ]
  br label %.lr.ph284.split

.lr.ph278.us.preheader:                           ; preds = %.lr.ph284
  %i.ir = sext i32 %1 to i64                      ; 2 uses
  %i.is = zext nneg i32 %3 to i64
  %wide.trip.count384 = zext nneg i32 %i.a to i64
  br label %.lr.ph278.us

.lr.ph278.us:                                     ; preds = %.lr.ph278.us.preheader, %._crit_edge279.us
  %.1171282.us = phi i32 [ %i.ju, %._crit_edge279.us ], [ %.0170.lcssa, %.lr.ph278.us.preheader ]
  %.0172281.us = phi ptr [ %i.jv, %._crit_edge279.us ], [ %0, %.lr.ph278.us.preheader ] ; 4 uses
  %.1175280.us = phi ptr [ %i.jw, %._crit_edge279.us ], [ %.0174.lcssa, %.lr.ph278.us.preheader ] ; 3 uses
  %i.it = getelementptr inbounds i8, ptr %.0172281.us, i64 %i.ho
  %i.iu = load i16, ptr %i.hm, align 2, !tbaa !47, !noalias !1630
  %i.iv = zext i16 %i.iu to i32
  %i.iw = load i8, ptr %i.it, align 1, !tbaa !22, !noalias !1630
  %i.ix = zext i8 %i.iw to i32
  %i.iy = mul nuw nsw i32 %i.ix, %i.iv
  %.sroa.speculated.i184.us = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.iy, i32 65535)
  %i.iz = trunc nuw i32 %.sroa.speculated.i184.us to i16 ; 2 uses
  store i16 %i.iz, ptr %.1175280.us, align 2, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph278.us, %bb.c
  %indvars.iv382 = phi i64 [ 0, %.lr.ph278.us ], [ %indvars.iv.next383, %bb.c ] ; 4 uses
  %i.ja = phi i16 [ %i.iz, %.lr.ph278.us ], [ %i.jt, %bb.c ]
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv382
  %i.jc = mul nsw i64 %indvars.iv382, %i.ir
  %i.jd = getelementptr inbounds i8, ptr %.0172281.us, i64 %i.jc
  %i.je = load i16, ptr %i.jb, align 2, !tbaa !47, !noalias !1634
  %i.jf = zext i16 %i.je to i32                   ; 2 uses
  %i.jg = load i8, ptr %i.jd, align 1, !tbaa !22, !noalias !1634
  %i.jh = zext i8 %i.jg to i32
  %i.ji = mul nuw nsw i32 %i.jh, %i.jf
  %.sroa.speculated.i185.us = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ji, i32 65535)
  %i.jj = trunc nuw i32 %.sroa.speculated.i185.us to i16
  %i.jk = tail call i16 @llvm.uadd.sat.i16(i16 %i.ja, i16 %i.jj)
  %i.jl = xor i64 %indvars.iv382, -1
  %i.jm = add nsw i64 %i.is, %i.jl
  %i.jn = mul nsw i64 %i.jm, %i.ir
  %i.jo = getelementptr inbounds i8, ptr %.0172281.us, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !22, !noalias !1635
  %i.jq = zext i8 %i.jp to i32
  %i.jr = mul nuw nsw i32 %i.jq, %i.jf
  %.sroa.speculated.i186.us = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.jr, i32 65535)
  %i.js = trunc nuw i32 %.sroa.speculated.i186.us to i16
  %i.jt = tail call i16 @llvm.uadd.sat.i16(i16 %i.jk, i16 %i.js) ; 2 uses
  store i16 %i.jt, ptr %.1175280.us, align 2, !tbaa !47
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next383, %wide.trip.count384
  br i1 %exitcond385.not, label %._crit_edge279.us, label %bb.c, !llvm.loop !1573

._crit_edge279.us:                                ; preds = %bb.c
  %i.ju = add nsw i32 %.1171282.us, 1             ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.0172281.us, i64 1 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.1175280.us, i64 2 ; 2 uses
  %i.jx = icmp slt i32 %i.ju, %i.hj
  br i1 %i.jx, label %.lr.ph278.us, label %._crit_edge285, !llvm.loop !1574

.lr.ph284.split:                                  ; preds = %.lr.ph284.split.preheader650, %.lr.ph284.split
  %.1171282 = phi i32 [ %i.kf, %.lr.ph284.split ], [ %.1171282.ph, %.lr.ph284.split.preheader650 ]
  %.0172281 = phi ptr [ %i.kg, %.lr.ph284.split ], [ %.0172281.ph, %.lr.ph284.split.preheader650 ] ; 2 uses
  %.1175280 = phi ptr [ %i.kh, %.lr.ph284.split ], [ %.1175280.ph, %.lr.ph284.split.preheader650 ] ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %.0172281, i64 %i.ho
  %i.jz = load i16, ptr %i.hm, align 2, !tbaa !47, !noalias !1630
  %i.ka = zext i16 %i.jz to i32
  %i.kb = load i8, ptr %i.jy, align 1, !tbaa !22, !noalias !1630
  %i.kc = zext i8 %i.kb to i32
  %i.kd = mul nuw nsw i32 %i.kc, %i.ka
  %.sroa.speculated.i184 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.kd, i32 65535)
  %i.ke = trunc nuw i32 %.sroa.speculated.i184 to i16
  store i16 %i.ke, ptr %.1175280, align 2, !tbaa !47
  %i.kf = add nsw i32 %.1171282, 1                ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0172281, i64 1 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.1175280, i64 2 ; 2 uses
  %i.ki = icmp slt i32 %i.kf, %i.hj
  br i1 %i.ki, label %.lr.ph284.split, label %._crit_edge285, !llvm.loop !1575

._crit_edge285:                                   ; preds = %.lr.ph284.split, %._crit_edge279.us, %middle.block560, %._crit_edge273
  %.1175.lcssa = phi ptr [ %.0174.lcssa, %._crit_edge273 ], [ %i.jw, %._crit_edge279.us ], [ %i.ii, %middle.block560 ], [ %i.kh, %.lr.ph284.split ] ; 6 uses
  %.0172.lcssa = phi ptr [ %0, %._crit_edge273 ], [ %i.jv, %._crit_edge279.us ], [ %i.ig, %middle.block560 ], [ %i.kg, %.lr.ph284.split ] ; 6 uses
  %.1171.lcssa = phi i32 [ %.0170.lcssa, %._crit_edge273 ], [ %i.hj, %._crit_edge279.us ], [ %i.hj, %middle.block560 ], [ %i.hj, %.lr.ph284.split ]
  %i.kj = sdiv i32 %.1171.lcssa, %1               ; 3 uses
  %i.kk = icmp slt i32 %i.kj, %5
  br i1 %i.kk, label %.preheader237.lr.ph, label %._crit_edge316

.preheader237.lr.ph:                              ; preds = %._crit_edge285
  %i.kl = sub i32 %5, %i.a
  %i.km = sub i32 %i.kj, %i.a
  %i.kn = icmp sgt i32 %1, 0                      ; 2 uses
  %.not = icmp ne i32 %6, 0
  %i.ko = sext i32 %1 to i64                      ; 9 uses
  %i.kp = add i32 %i.a, %5
  %i.kq = sub i32 %i.kp, %i.kj
  %i.kr = zext i32 %1 to i64                      ; 23 uses
  %i.ks = sext i32 %i.km to i64                   ; 5 uses
  %i.kt = sext i32 %5 to i64                      ; 4 uses
  %i.ku = sext i32 %i.kl to i64                   ; 2 uses
  %invariant.op = add nsw i64 %i.kt, -1
  %i.kv = shl nuw nsw i64 %i.kr, 1                ; 2 uses
  %i.kw = shl nsw i64 %i.ko, 1
  %scevgep570 = getelementptr i8, ptr %2, i64 2   ; 2 uses
  %i.kx = shl nsw i64 %i.ko, 1
  %i.ky = sub nsw i64 %i.kt, %i.ks
  %i.kz = mul i64 %i.ky, %i.kr
  %i.la = sub nsw i64 %i.ko, %i.kr
  %i.lb = add nsw i64 %i.ks, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ku, i64 %i.lb)
  %i.lc = xor i64 %i.ks, -1
  %i.ld = add i64 %smax, %i.lc                    ; 2 uses
  %i.le = mul i64 %i.ld, %i.ko
  %i.lf = add i64 %i.le, %i.kr
  %i.lg = shl i64 %i.lf, 1
  %scevgep622 = getelementptr i8, ptr %.1175.lcssa, i64 %i.lg ; 2 uses
  %scevgep623 = getelementptr i8, ptr %2, i64 2
  %i.lh = mul i64 %i.ld, %i.ko
  %i.li = getelementptr i8, ptr %.0172.lcssa, i64 %i.lh
  %scevgep624 = getelementptr i8, ptr %i.li, i64 %i.kr
  %i.lj = getelementptr i8, ptr %.1175.lcssa, i64 %i.kv
  %invariant.gep674 = getelementptr i8, ptr %.0172.lcssa, i64 %i.kr
  %i.lk = getelementptr i8, ptr %.0172.lcssa, i64 %i.kz
  %i.ll = getelementptr i8, ptr %.1175.lcssa, i64 %i.kv
  %invariant.gep676 = getelementptr i8, ptr %.0172.lcssa, i64 %i.kr
  %min.iters.check635 = icmp ult i32 %1, 16
  %bound0625 = icmp ult ptr %.1175.lcssa, %scevgep623
  %bound1626 = icmp ult ptr %2, %scevgep622
  %found.conflict627 = and i1 %bound0625, %bound1626
  %bound0628 = icmp ult ptr %.1175.lcssa, %scevgep624
  %bound1629 = icmp ult ptr %.0172.lcssa, %scevgep622
  %found.conflict630 = and i1 %bound0628, %bound1629
  %conflict.rdx633 = or i1 %found.conflict627, %found.conflict630
  %n.vec637 = and i64 %i.kr, 2147483640           ; 3 uses
  %cmp.n645 = icmp eq i64 %n.vec637, %i.kr
  %xtraiter662 = and i64 %i.kr, 1
  %lcmp.mod663.not = icmp eq i64 %xtraiter662, 0
  %i.lm = add nsw i64 %i.kr, -1
  %min.iters.check608 = icmp ult i32 %1, 8
  %n.vec610 = and i64 %i.kr, 2147483640           ; 3 uses
  %cmp.n619 = icmp eq i64 %n.vec610, %i.kr
  %xtraiter664 = and i64 %i.kr, 1
  %lcmp.mod665.not = icmp eq i64 %xtraiter664, 0
  %i.ln = add nsw i64 %i.kr, -1
  %min.iters.check582 = icmp ult i32 %1, 8
  %n.vec584 = and i64 %i.kr, 2147483640           ; 3 uses
  %cmp.n593 = icmp eq i64 %n.vec584, %i.kr
  %xtraiter666 = and i64 %i.kr, 1
  %lcmp.mod667.not = icmp eq i64 %xtraiter666, 0
  %i.lo = add nsw i64 %i.kr, -1
  br label %.preheader237

.preheader237:                                    ; preds = %.preheader237.lr.ph, %.loopexit
  %indvar566 = phi i64 [ 0, %.preheader237.lr.ph ], [ %indvar.next567, %.loopexit ] ; 7 uses
  %indvars.iv410 = phi i64 [ %i.ks, %.preheader237.lr.ph ], [ %indvars.iv.next411, %.loopexit ] ; 5 uses
  %indvars.iv391 = phi i32 [ %i.kq, %.preheader237.lr.ph ], [ %indvars.iv.next392, %.loopexit ] ; 3 uses
  %.1173310 = phi ptr [ %.0172.lcssa, %.preheader237.lr.ph ], [ %i.rf, %.loopexit ] ; 7 uses
  %.2176307 = phi ptr [ %.1175.lcssa, %.preheader237.lr.ph ], [ %i.rg, %.loopexit ] ; 17 uses
  %i.lp = mul i64 %i.kx, %indvar566
  %scevgep596 = getelementptr i8, ptr %i.lj, i64 %i.lp ; 2 uses
  %8 = add i64 %indvar566, %i.ks
  %i.lq = sub i64 %i.kt, %8
  %i.lr = shl i64 %i.lq, 1
  %scevgep597 = getelementptr i8, ptr %2, i64 %i.lr
  %i.ls = mul i64 %indvar566, %i.ko
  %gep675 = getelementptr i8, ptr %invariant.gep674, i64 %i.ls
  %i.lt = mul i64 %i.la, %indvar566
  %scevgep599 = getelementptr i8, ptr %i.lk, i64 %i.lt
  %i.lu = mul i64 %i.kw, %indvar566
  %scevgep568 = getelementptr i8, ptr %i.ll, i64 %i.lu ; 2 uses
  %i.lv = mul i64 %indvar566, %i.ko
  %gep677 = getelementptr i8, ptr %invariant.gep676, i64 %i.lv
  br i1 %i.kn, label %.lr.ph293.preheader, label %.preheader236.thread

.lr.ph293.preheader:                              ; preds = %.preheader237
  %brmerge679 = select i1 %min.iters.check635, i1 true, i1 %conflict.rdx633
  br i1 %brmerge679, label %.lr.ph293.preheader648, label %vector.ph636

vector.ph636:                                     ; preds = %.lr.ph293.preheader
  %i.lw = load i16, ptr %2, align 2, !tbaa !47, !alias.scope !1636, !noalias !1637
  %broadcast.splatinsert638 = insertelement <8 x i16> poison, i16 %i.lw, i64 0
  %broadcast.splat639 = shufflevector <8 x i16> %broadcast.splatinsert638, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.lx = zext <8 x i16> %broadcast.splat639 to <8 x i32>
  br label %vector.body640

vector.body640:                                   ; preds = %vector.body640, %vector.ph636
  %index641 = phi i64 [ 0, %vector.ph636 ], [ %index.next643, %vector.body640 ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.1173310, i64 %index641
  %wide.load642 = load <8 x i8>, ptr %i.ly, align 1, !tbaa !22, !alias.scope !1638, !noalias !1637
  %i.lz = zext <8 x i8> %wide.load642 to <8 x i32>
  %i.ma = mul nuw nsw <8 x i32> %i.lz, %i.lx
  %i.mb = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ma, <8 x i32> splat (i32 65535))
  %i.mc = trunc nuw <8 x i32> %i.mb to <8 x i16>
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.2176307, i64 %index641
  store <8 x i16> %i.mc, ptr %i.md, align 2, !tbaa !47, !alias.scope !1639, !noalias !1640
  %index.next643 = add nuw i64 %index641, 8       ; 2 uses
  %i.me = icmp eq i64 %index.next643, %n.vec637
  br i1 %i.me, label %middle.block644, label %vector.body640, !llvm.loop !1582

middle.block644:                                  ; preds = %vector.body640
  br i1 %cmp.n645, label %.preheader236, label %.lr.ph293.preheader648

.lr.ph293.preheader648:                           ; preds = %.lr.ph293.preheader, %middle.block644
  %indvars.iv386.ph = phi i64 [ %n.vec637, %middle.block644 ], [ 0, %.lr.ph293.preheader ] ; 5 uses
  br i1 %lcmp.mod663.not, label %.lr.ph293.prol.loopexit, label %.lr.ph293.prol

.lr.ph293.prol:                                   ; preds = %.lr.ph293.preheader648
  %i.mf = getelementptr inbounds nuw i8, ptr %.1173310, i64 %indvars.iv386.ph
  %i.mg = load i16, ptr %2, align 2, !tbaa !47, !noalias !1637
  %i.mh = zext i16 %i.mg to i32
  %i.mi = load i8, ptr %i.mf, align 1, !tbaa !22, !noalias !1637
  %i.mj = zext i8 %i.mi to i32
  %i.mk = mul nuw nsw i32 %i.mj, %i.mh
  %.sroa.speculated.i187.prol = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.mk, i32 65535)
  %i.ml = trunc nuw i32 %.sroa.speculated.i187.prol to i16
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.2176307, i64 %indvars.iv386.ph
  store i16 %i.ml, ptr %i.mm, align 2, !tbaa !47
  %indvars.iv.next387.prol = or disjoint i64 %indvars.iv386.ph, 1
  br label %.lr.ph293.prol.loopexit

.lr.ph293.prol.loopexit:                          ; preds = %.lr.ph293.prol, %.lr.ph293.preheader648
  %indvars.iv386.unr = phi i64 [ %indvars.iv386.ph, %.lr.ph293.preheader648 ], [ %indvars.iv.next387.prol, %.lr.ph293.prol ]
  %i.mn = icmp eq i64 %indvars.iv386.ph, %i.lm
  br i1 %i.mn, label %.preheader236, label %.lr.ph293

.preheader236:                                    ; preds = %.lr.ph293.prol.loopexit, %.lr.ph293, %middle.block644
  %i.mo = sub nsw i64 %i.kt, %indvars.iv410       ; 2 uses
  %i.mp = icmp slt i64 %i.mo, 2                   ; 2 uses
  %.mux450 = select i1 %i.mp, i32 1, i32 %indvars.iv391
  br i1 %i.mp, label %._crit_edge298, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader236
  %bound0600 = icmp ult ptr %.2176307, %scevgep597
  %bound1601 = icmp ult ptr %scevgep570, %scevgep596
  %found.conflict602 = and i1 %bound0600, %bound1601
  %bound0603 = icmp ult ptr %.2176307, %scevgep599
  %bound1604 = icmp ult ptr %gep675, %scevgep596
  %found.conflict605 = and i1 %bound0603, %bound1604
  %conflict.rdx606 = or i1 %found.conflict602, %found.conflict605
  br label %.preheader.us

.preheader236.thread:                             ; preds = %.preheader237
  %i.mq = icmp slt i64 %indvars.iv410, %invariant.op
  %spec.select446 = select i1 %i.mq, i32 %indvars.iv391, i32 1
  br label %._crit_edge298

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge296.us
  %indvars.iv398 = phi i64 [ %indvars.iv.next399, %._crit_edge296.us ], [ 1, %.preheader.us.preheader ] ; 3 uses
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv398 ; 4 uses
  %i.ms = mul nuw nsw i64 %indvars.iv398, %i.kr
  %invariant.gep438 = getelementptr inbounds nuw i8, ptr %.1173310, i64 %i.ms ; 4 uses
  %brmerge680 = select i1 %min.iters.check608, i1 true, i1 %conflict.rdx606
  br i1 %brmerge680, label %scalar.ph607.preheader, label %vector.ph609

vector.ph609:                                     ; preds = %.preheader.us
  %i.mt = load i16, ptr %i.mr, align 2, !tbaa !47, !alias.scope !1641, !noalias !1642
  %broadcast.splatinsert611 = insertelement <8 x i16> poison, i16 %i.mt, i64 0
  %broadcast.splat612 = shufflevector <8 x i16> %broadcast.splatinsert611, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.mu = zext <8 x i16> %broadcast.splat612 to <8 x i32>
  br label %vector.body613

vector.body613:                                   ; preds = %vector.body613, %vector.ph609
  %index614 = phi i64 [ 0, %vector.ph609 ], [ %index.next617, %vector.body613 ] ; 3 uses
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %.2176307, i64 %index614 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %invariant.gep438, i64 %index614
  %wide.load615 = load <8 x i8>, ptr %i.mw, align 1, !tbaa !22, !alias.scope !1643, !noalias !1642
  %i.mx = zext <8 x i8> %wide.load615 to <8 x i32>
  %i.my = mul nuw nsw <8 x i32> %i.mx, %i.mu
  %i.mz = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.my, <8 x i32> splat (i32 65535))
  %i.na = trunc nuw <8 x i32> %i.mz to <8 x i16>
  %wide.load616 = load <8 x i16>, ptr %i.mv, align 2, !tbaa !47, !alias.scope !1644, !noalias !1645
  %i.nb = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load616, <8 x i16> %i.na)
  store <8 x i16> %i.nb, ptr %i.mv, align 2, !tbaa !47, !alias.scope !1644, !noalias !1646
  %index.next617 = add nuw i64 %index614, 8       ; 2 uses
  %i.nc = icmp eq i64 %index.next617, %n.vec610
  br i1 %i.nc, label %middle.block618, label %vector.body613, !llvm.loop !1591

middle.block618:                                  ; preds = %vector.body613
  br i1 %cmp.n619, label %._crit_edge296.us, label %scalar.ph607.preheader

scalar.ph607.preheader:                           ; preds = %.preheader.us, %middle.block618
  %indvars.iv393.ph = phi i64 [ %n.vec610, %middle.block618 ], [ 0, %.preheader.us ] ; 5 uses
  br i1 %lcmp.mod665.not, label %scalar.ph607.prol.loopexit, label %scalar.ph607.prol

scalar.ph607.prol:                                ; preds = %scalar.ph607.preheader
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %.2176307, i64 %indvars.iv393.ph ; 2 uses
  %gep439.prol = getelementptr inbounds nuw i8, ptr %invariant.gep438, i64 %indvars.iv393.ph
  %i.ne = load i16, ptr %i.mr, align 2, !tbaa !47, !noalias !1642
  %i.nf = zext i16 %i.ne to i32
  %i.ng = load i8, ptr %gep439.prol, align 1, !tbaa !22, !noalias !1642
  %i.nh = zext i8 %i.ng to i32
  %i.ni = mul nuw nsw i32 %i.nh, %i.nf
  %.sroa.speculated.i188.us.prol = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ni, i32 65535)
  %i.nj = trunc nuw i32 %.sroa.speculated.i188.us.prol to i16
  %i.nk = load i16, ptr %i.nd, align 2, !tbaa !47, !noalias !1647
  %i.nl = tail call i16 @llvm.uadd.sat.i16(i16 %i.nk, i16 %i.nj)
  store i16 %i.nl, ptr %i.nd, align 2, !tbaa !47
  %indvars.iv.next394.prol = or disjoint i64 %indvars.iv393.ph, 1
  br label %scalar.ph607.prol.loopexit

scalar.ph607.prol.loopexit:                       ; preds = %scalar.ph607.prol, %scalar.ph607.preheader
  %indvars.iv393.unr = phi i64 [ %indvars.iv393.ph, %scalar.ph607.preheader ], [ %indvars.iv.next394.prol, %scalar.ph607.prol ]
  %i.nm = icmp eq i64 %indvars.iv393.ph, %i.ln
  br i1 %i.nm, label %._crit_edge296.us, label %scalar.ph607

scalar.ph607:                                     ; preds = %scalar.ph607.prol.loopexit, %scalar.ph607
  %indvars.iv393 = phi i64 [ %indvars.iv.next394.1, %scalar.ph607 ], [ %indvars.iv393.unr, %scalar.ph607.prol.loopexit ] ; 4 uses
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.2176307, i64 %indvars.iv393 ; 2 uses
  %gep439 = getelementptr inbounds nuw i8, ptr %invariant.gep438, i64 %indvars.iv393
  %i.no = load i16, ptr %i.mr, align 2, !tbaa !47, !noalias !1642
  %i.np = zext i16 %i.no to i32
  %i.nq = load i8, ptr %gep439, align 1, !tbaa !22, !noalias !1642
  %i.nr = zext i8 %i.nq to i32
  %i.ns = mul nuw nsw i32 %i.nr, %i.np
  %.sroa.speculated.i188.us = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ns, i32 65535)
  %i.nt = trunc nuw i32 %.sroa.speculated.i188.us to i16
  %i.nu = load i16, ptr %i.nn, align 2, !tbaa !47, !noalias !1647
  %i.nv = tail call i16 @llvm.uadd.sat.i16(i16 %i.nu, i16 %i.nt)
  store i16 %i.nv, ptr %i.nn, align 2, !tbaa !47
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv393, 1 ; 2 uses
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %.2176307, i64 %indvars.iv.next394 ; 2 uses
  %gep439.1 = getelementptr inbounds nuw i8, ptr %invariant.gep438, i64 %indvars.iv.next394
  %i.nx = load i16, ptr %i.mr, align 2, !tbaa !47, !noalias !1642
  %i.ny = zext i16 %i.nx to i32
  %i.nz = load i8, ptr %gep439.1, align 1, !tbaa !22, !noalias !1642
  %i.oa = zext i8 %i.nz to i32
  %i.ob = mul nuw nsw i32 %i.oa, %i.ny
  %.sroa.speculated.i188.us.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ob, i32 65535)
  %i.oc = trunc nuw i32 %.sroa.speculated.i188.us.1 to i16
  %i.od = load i16, ptr %i.nw, align 2, !tbaa !47, !noalias !1647
  %i.oe = tail call i16 @llvm.uadd.sat.i16(i16 %i.od, i16 %i.oc)
  store i16 %i.oe, ptr %i.nw, align 2, !tbaa !47
  %indvars.iv.next394.1 = add nuw nsw i64 %indvars.iv393, 2 ; 2 uses
  %exitcond397.not.1 = icmp eq i64 %indvars.iv.next394.1, %i.kr
  br i1 %exitcond397.not.1, label %._crit_edge296.us, label %scalar.ph607, !llvm.loop !1592

._crit_edge296.us:                                ; preds = %scalar.ph607.prol.loopexit, %scalar.ph607, %middle.block618
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1 ; 3 uses
  %i.of = icmp slt i64 %indvars.iv.next399, %i.mo
  br i1 %i.of, label %.preheader.us, label %._crit_edge298.loopexit, !llvm.loop !1593

.lr.ph293:                                        ; preds = %.lr.ph293.prol.loopexit, %.lr.ph293
  %indvars.iv386 = phi i64 [ %indvars.iv.next387.1, %.lr.ph293 ], [ %indvars.iv386.unr, %.lr.ph293.prol.loopexit ] ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.1173310, i64 %indvars.iv386
  %i.oh = load i16, ptr %2, align 2, !tbaa !47, !noalias !1637
  %i.oi = zext i16 %i.oh to i32
  %i.oj = load i8, ptr %i.og, align 1, !tbaa !22, !noalias !1637
  %i.ok = zext i8 %i.oj to i32
  %i.ol = mul nuw nsw i32 %i.ok, %i.oi
  %.sroa.speculated.i187 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ol, i32 65535)
  %i.om = trunc nuw i32 %.sroa.speculated.i187 to i16
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %.2176307, i64 %indvars.iv386
  store i16 %i.om, ptr %i.on, align 2, !tbaa !47
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.1173310, i64 %indvars.iv.next387
  %i.op = load i16, ptr %2, align 2, !tbaa !47, !noalias !1637
  %i.oq = zext i16 %i.op to i32
  %i.or = load i8, ptr %i.oo, align 1, !tbaa !22, !noalias !1637
  %i.os = zext i8 %i.or to i32
  %i.ot = mul nuw nsw i32 %i.os, %i.oq
  %.sroa.speculated.i187.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ot, i32 65535)
  %i.ou = trunc nuw i32 %.sroa.speculated.i187.1 to i16
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline12_GLOBAL__N_111hlineSmoothIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib:bb.a
._crit_edge260.loopexit:                          ; preds = %.loopexit227
  %i.hh = mul nsw i32 %.sroa.speculated204, %1
  br label %._crit_edge260

._crit_edge260:                                   ; preds = %._crit_edge260.loopexit, %bb.a
  %.0168.lcssa = phi ptr [ %4, %bb.a ], [ %i.hg, %._crit_edge260.loopexit ] ; 9 uses
  %.0164.lcssa = phi i32 [ 0, %bb.a ], [ %i.hh, %._crit_edge260.loopexit ] ; 7 uses
  %reass.sub = sub i32 %5, %i.b
  %i.hi = add i32 %reass.sub, 1
  %i.hj = mul nsw i32 %i.hi, %1                   ; 7 uses
  %i.hk = icmp slt i32 %.0164.lcssa, %i.hj
  br i1 %i.hk, label %.lr.ph271, label %._crit_edge272

.lr.ph271:                                        ; preds = %._crit_edge260
  %i.hl = icmp sgt i32 %3, 1
  br i1 %i.hl, label %.lr.ph265.us.preheader, label %.lr.ph271.split.preheader

.lr.ph271.split.preheader:                        ; preds = %.lr.ph271
  %i.hm = xor i32 %.0164.lcssa, -1
  %i.hn = add i32 %i.hj, %i.hm                    ; 2 uses
  %i.ho = zext i32 %i.hn to i64                   ; 2 uses
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 3 uses
  %min.iters.check528 = icmp ult i32 %i.hn, 23
  br i1 %min.iters.check528, label %.lr.ph271.split.preheader636, label %vector.memcheck529

vector.memcheck529:                               ; preds = %.lr.ph271.split.preheader
  %i.hq = shl nuw nsw i64 %i.ho, 1
  %i.hr = getelementptr i8, ptr %.0168.lcssa, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 2      ; 2 uses
  %i.ht = getelementptr i8, ptr %2, i64 2
  %i.hu = getelementptr i8, ptr %0, i64 %i.hp
  %bound0530 = icmp ult ptr %.0168.lcssa, %i.ht
  %bound1531 = icmp ult ptr %2, %i.hs
  %found.conflict532 = and i1 %bound0530, %bound1531
  %bound0533 = icmp ult ptr %.0168.lcssa, %i.hu
  %bound1534 = icmp ult ptr %0, %i.hs
  %found.conflict535 = and i1 %bound0533, %bound1534
  %conflict.rdx536 = or i1 %found.conflict532, %found.conflict535
  br i1 %conflict.rdx536, label %.lr.ph271.split.preheader636, label %vector.ph537

vector.ph537:                                     ; preds = %vector.memcheck529
  %n.vec538 = and i64 %i.hp, 8589934584           ; 5 uses
  %i.hv = trunc i64 %n.vec538 to i32
  %i.hw = add i32 %.0164.lcssa, %i.hv
  %i.hx = getelementptr i8, ptr %0, i64 %n.vec538 ; 2 uses
  %i.hy = shl nuw nsw i64 %n.vec538, 1
  %i.hz = getelementptr i8, ptr %.0168.lcssa, i64 %i.hy ; 2 uses
  %i.ia = load i16, ptr %2, align 2, !tbaa !47, !alias.scope !1757, !noalias !1758
  %broadcast.splatinsert539 = insertelement <8 x i16> poison, i16 %i.ia, i64 0
  %broadcast.splat540 = shufflevector <8 x i16> %broadcast.splatinsert539, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ib = zext <8 x i16> %broadcast.splat540 to <8 x i32>
  br label %vector.body541

vector.body541:                                   ; preds = %vector.body541, %vector.ph537
  %index542 = phi i64 [ 0, %vector.ph537 ], [ %index.next545, %vector.body541 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index542
  %i.ic = shl i64 %index542, 1
  %next.gep543 = getelementptr i8, ptr %.0168.lcssa, i64 %i.ic
  %wide.load544 = load <8 x i8>, ptr %next.gep, align 1, !tbaa !22, !alias.scope !1759, !noalias !1758
  %i.id = zext <8 x i8> %wide.load544 to <8 x i32>
  %i.ie = mul nuw nsw <8 x i32> %i.id, %i.ib
  %i.if = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ie, <8 x i32> splat (i32 65535))
  %i.ig = trunc nuw <8 x i32> %i.if to <8 x i16>
  store <8 x i16> %i.ig, ptr %next.gep543, align 2, !tbaa !47, !alias.scope !1760, !noalias !1761
  %index.next545 = add nuw i64 %index542, 8       ; 2 uses
  %i.ih = icmp eq i64 %index.next545, %n.vec538
  br i1 %i.ih, label %middle.block546, label %vector.body541, !llvm.loop !1698

middle.block546:                                  ; preds = %vector.body541
  %cmp.n547 = icmp eq i64 %i.hp, %n.vec538
  br i1 %cmp.n547, label %._crit_edge272, label %.lr.ph271.split.preheader636

.lr.ph271.split.preheader636:                     ; preds = %vector.memcheck529, %.lr.ph271.split.preheader, %middle.block546
  %.1165269.ph = phi i32 [ %.0164.lcssa, %vector.memcheck529 ], [ %.0164.lcssa, %.lr.ph271.split.preheader ], [ %i.hw, %middle.block546 ]
  %.0166268.ph = phi ptr [ %0, %vector.memcheck529 ], [ %0, %.lr.ph271.split.preheader ], [ %i.hx, %middle.block546 ]
  %.1169267.ph = phi ptr [ %.0168.lcssa, %vector.memcheck529 ], [ %.0168.lcssa, %.lr.ph271.split.preheader ], [ %i.hz, %middle.block546 ]
  br label %.lr.ph271.split

.lr.ph265.us.preheader:                           ; preds = %.lr.ph271
  %i.ii = sext i32 %1 to i64                      ; 3 uses
  %wide.trip.count371 = zext nneg i32 %3 to i64
  %i.ij = add nsw i64 %wide.trip.count371, -1     ; 3 uses
  %xtraiter649 = and i64 %i.ij, 1
  %i.ik = icmp eq i32 %3, 2
  %unroll_iter652 = and i64 %i.ij, -2
  %lcmp.mod650.not = icmp eq i64 %xtraiter649, 0
  %lcmp.mod651 = trunc i64 %i.ij to i1
  br label %.lr.ph265.us

.lr.ph265.us:                                     ; preds = %.lr.ph265.us.preheader, %._crit_edge266.us
  %.1165269.us = phi i32 [ %i.jw, %._crit_edge266.us ], [ %.0164.lcssa, %.lr.ph265.us.preheader ]
  %.0166268.us = phi ptr [ %i.jx, %._crit_edge266.us ], [ %0, %.lr.ph265.us.preheader ] ; 5 uses
  %.1169267.us = phi ptr [ %i.jy, %._crit_edge266.us ], [ %.0168.lcssa, %.lr.ph265.us.preheader ] ; 5 uses
  %i.il = load i16, ptr %2, align 2, !tbaa !47, !noalias !1758
  %i.im = zext i16 %i.il to i32
  %i.in = load i8, ptr %.0166268.us, align 1, !tbaa !22, !noalias !1758
  %i.io = zext i8 %i.in to i32
  %i.ip = mul nuw nsw i32 %i.io, %i.im
  %.sroa.speculated.i178.us = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ip, i32 65535)
  %i.iq = trunc nuw i32 %.sroa.speculated.i178.us to i16 ; 3 uses
  store i16 %i.iq, ptr %.1169267.us, align 2, !tbaa !47
  br i1 %i.ik, label %.epil.preheader648, label %.lr.ph265.us.new

.lr.ph265.us.new:                                 ; preds = %.lr.ph265.us, %.lr.ph265.us.new
  %indvars.iv369 = phi i64 [ %indvars.iv.next370.1, %.lr.ph265.us.new ], [ 1, %.lr.ph265.us ] ; 4 uses
  %i.ir = phi i16 [ %i.jl, %.lr.ph265.us.new ], [ %i.iq, %.lr.ph265.us ]
  %niter653 = phi i64 [ %niter653.next.1, %.lr.ph265.us.new ], [ 0, %.lr.ph265.us ]
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv369
  %i.it = mul nsw i64 %indvars.iv369, %i.ii
  %i.iu = getelementptr inbounds i8, ptr %.0166268.us, i64 %i.it
  %i.iv = load i16, ptr %i.is, align 2, !tbaa !47, !noalias !1762
  %i.iw = zext i16 %i.iv to i32
  %i.ix = load i8, ptr %i.iu, align 1, !tbaa !22, !noalias !1762
  %i.iy = zext i8 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.iy, %i.iw
  %.sroa.speculated.i179.us = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.iz, i32 65535)
  %i.ja = trunc nuw i32 %.sroa.speculated.i179.us to i16
  %i.jb = tail call i16 @llvm.uadd.sat.i16(i16 %i.ir, i16 %i.ja) ; 2 uses
  store i16 %i.jb, ptr %.1169267.us, align 2, !tbaa !47
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next370
  %i.jd = mul nsw i64 %indvars.iv.next370, %i.ii
  %i.je = getelementptr inbounds i8, ptr %.0166268.us, i64 %i.jd
  %i.jf = load i16, ptr %i.jc, align 2, !tbaa !47, !noalias !1762
  %i.jg = zext i16 %i.jf to i32
  %i.jh = load i8, ptr %i.je, align 1, !tbaa !22, !noalias !1762
  %i.ji = zext i8 %i.jh to i32
  %i.jj = mul nuw nsw i32 %i.ji, %i.jg
  %.sroa.speculated.i179.us.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.jj, i32 65535)
  %i.jk = trunc nuw i32 %.sroa.speculated.i179.us.1 to i16
  %i.jl = tail call i16 @llvm.uadd.sat.i16(i16 %i.jb, i16 %i.jk) ; 3 uses
  store i16 %i.jl, ptr %.1169267.us, align 2, !tbaa !47
  %indvars.iv.next370.1 = add nuw nsw i64 %indvars.iv369, 2 ; 2 uses
  %niter653.next.1 = add nuw i64 %niter653, 2     ; 2 uses
  %niter653.ncmp.1 = icmp eq i64 %niter653.next.1, %unroll_iter652
  br i1 %niter653.ncmp.1, label %._crit_edge266.us.unr-lcssa, label %.lr.ph265.us.new, !llvm.loop !1701

._crit_edge266.us.unr-lcssa:                      ; preds = %.lr.ph265.us.new
  br i1 %lcmp.mod650.not, label %._crit_edge266.us, label %.epil.preheader648

.epil.preheader648:                               ; preds = %._crit_edge266.us.unr-lcssa, %.lr.ph265.us
  %indvars.iv369.epil.init = phi i64 [ 1, %.lr.ph265.us ], [ %indvars.iv.next370.1, %._crit_edge266.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi i16 [ %i.iq, %.lr.ph265.us ], [ %i.jl, %._crit_edge266.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod651)
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv369.epil.init
  %i.jn = mul nsw i64 %indvars.iv369.epil.init, %i.ii
  %i.jo = getelementptr inbounds i8, ptr %.0166268.us, i64 %i.jn
  %i.jp = load i16, ptr %i.jm, align 2, !tbaa !47, !noalias !1762
  %i.jq = zext i16 %i.jp to i32
  %i.jr = load i8, ptr %i.jo, align 1, !tbaa !22, !noalias !1762
  %i.js = zext i8 %i.jr to i32
  %i.jt = mul nuw nsw i32 %i.js, %i.jq
  %.sroa.speculated.i179.us.epil = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.jt, i32 65535)
  %i.ju = trunc nuw i32 %.sroa.speculated.i179.us.epil to i16
  %i.jv = tail call i16 @llvm.uadd.sat.i16(i16 %.epil.init, i16 %i.ju)
  store i16 %i.jv, ptr %.1169267.us, align 2, !tbaa !47
  br label %._crit_edge266.us

._crit_edge266.us:                                ; preds = %._crit_edge266.us.unr-lcssa, %.epil.preheader648
  %i.jw = add nsw i32 %.1165269.us, 1             ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.0166268.us, i64 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.1169267.us, i64 2 ; 2 uses
  %i.jz = icmp slt i32 %i.jw, %i.hj
  br i1 %i.jz, label %.lr.ph265.us, label %._crit_edge272, !llvm.loop !1702

.lr.ph271.split:                                  ; preds = %.lr.ph271.split.preheader636, %.lr.ph271.split
  %.1165269 = phi i32 [ %i.kg, %.lr.ph271.split ], [ %.1165269.ph, %.lr.ph271.split.preheader636 ]
  %.0166268 = phi ptr [ %i.kh, %.lr.ph271.split ], [ %.0166268.ph, %.lr.ph271.split.preheader636 ] ; 2 uses
  %.1169267 = phi ptr [ %i.ki, %.lr.ph271.split ], [ %.1169267.ph, %.lr.ph271.split.preheader636 ] ; 2 uses
  %i.ka = load i16, ptr %2, align 2, !tbaa !47, !noalias !1758
  %i.kb = zext i16 %i.ka to i32
  %i.kc = load i8, ptr %.0166268, align 1, !tbaa !22, !noalias !1758
  %i.kd = zext i8 %i.kc to i32
  %i.ke = mul nuw nsw i32 %i.kd, %i.kb
  %.sroa.speculated.i178 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ke, i32 65535)
  %i.kf = trunc nuw i32 %.sroa.speculated.i178 to i16
  store i16 %i.kf, ptr %.1169267, align 2, !tbaa !47
  %i.kg = add nsw i32 %.1165269, 1                ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.0166268, i64 1 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.1169267, i64 2 ; 2 uses
  %i.kj = icmp slt i32 %i.kg, %i.hj
  br i1 %i.kj, label %.lr.ph271.split, label %._crit_edge272, !llvm.loop !1703

._crit_edge272:                                   ; preds = %.lr.ph271.split, %._crit_edge266.us, %middle.block546, %._crit_edge260
  %.1169.lcssa = phi ptr [ %.0168.lcssa, %._crit_edge260 ], [ %i.jy, %._crit_edge266.us ], [ %i.hz, %middle.block546 ], [ %i.ki, %.lr.ph271.split ] ; 6 uses
  %.0166.lcssa = phi ptr [ %0, %._crit_edge260 ], [ %i.jx, %._crit_edge266.us ], [ %i.hx, %middle.block546 ], [ %i.kh, %.lr.ph271.split ] ; 6 uses
  %.1165.lcssa = phi i32 [ %.0164.lcssa, %._crit_edge260 ], [ %i.hj, %._crit_edge266.us ], [ %i.hj, %middle.block546 ], [ %i.hj, %.lr.ph271.split ]
  %i.kk = sdiv i32 %.1165.lcssa, %1               ; 3 uses
  %i.kl = icmp slt i32 %i.kk, %5
  br i1 %i.kl, label %.preheader224.lr.ph, label %._crit_edge303

.preheader224.lr.ph:                              ; preds = %._crit_edge272
  %i.km = sub i32 %5, %i.a
  %i.kn = sub i32 %i.kk, %i.a
  %i.ko = icmp sgt i32 %1, 0                      ; 2 uses
  %.not = icmp ne i32 %6, 0
  %i.kp = sext i32 %1 to i64                      ; 9 uses
  %i.kq = add i32 %i.a, %5
  %i.kr = sub i32 %i.kq, %i.kk
  %i.ks = zext i32 %1 to i64                      ; 23 uses
  %i.kt = sext i32 %i.kn to i64                   ; 5 uses
  %i.ku = sext i32 %5 to i64                      ; 4 uses
  %i.kv = sext i32 %i.km to i64                   ; 2 uses
  %invariant.op = add nsw i64 %i.ku, -1
  %i.kw = shl nuw nsw i64 %i.ks, 1                ; 2 uses
  %i.kx = shl nsw i64 %i.kp, 1
  %scevgep556 = getelementptr i8, ptr %2, i64 2   ; 2 uses
  %i.ky = shl nsw i64 %i.kp, 1
  %i.kz = sub nsw i64 %i.ku, %i.kt
  %i.la = mul i64 %i.kz, %i.ks
  %i.lb = sub nsw i64 %i.kp, %i.ks
  %i.lc = add nsw i64 %i.kt, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.kv, i64 %i.lc)
  %i.ld = xor i64 %i.kt, -1
  %i.le = add i64 %smax, %i.ld                    ; 2 uses
  %i.lf = mul i64 %i.le, %i.kp
  %i.lg = add i64 %i.lf, %i.ks
  %i.lh = shl i64 %i.lg, 1
  %scevgep608 = getelementptr i8, ptr %.1169.lcssa, i64 %i.lh ; 2 uses
  %scevgep609 = getelementptr i8, ptr %2, i64 2
  %i.li = mul i64 %i.le, %i.kp
  %i.lj = getelementptr i8, ptr %.0166.lcssa, i64 %i.li
  %scevgep610 = getelementptr i8, ptr %i.lj, i64 %i.ks
  %i.lk = getelementptr i8, ptr %.1169.lcssa, i64 %i.kw
  %invariant.gep665 = getelementptr i8, ptr %.0166.lcssa, i64 %i.ks
  %i.ll = getelementptr i8, ptr %.0166.lcssa, i64 %i.la
  %i.lm = getelementptr i8, ptr %.1169.lcssa, i64 %i.kw
  %invariant.gep667 = getelementptr i8, ptr %.0166.lcssa, i64 %i.ks
  %min.iters.check621 = icmp ult i32 %1, 16
  %bound0611 = icmp ult ptr %.1169.lcssa, %scevgep609
  %bound1612 = icmp ult ptr %2, %scevgep608
  %found.conflict613 = and i1 %bound0611, %bound1612
  %bound0614 = icmp ult ptr %.1169.lcssa, %scevgep610
  %bound1615 = icmp ult ptr %.0166.lcssa, %scevgep608
  %found.conflict616 = and i1 %bound0614, %bound1615
  %conflict.rdx619 = or i1 %found.conflict613, %found.conflict616
  %n.vec623 = and i64 %i.ks, 2147483640           ; 3 uses
  %cmp.n631 = icmp eq i64 %n.vec623, %i.ks
  %xtraiter654 = and i64 %i.ks, 1
  %lcmp.mod655.not = icmp eq i64 %xtraiter654, 0
  %i.ln = add nsw i64 %i.ks, -1
  %min.iters.check594 = icmp ult i32 %1, 8
  %n.vec596 = and i64 %i.ks, 2147483640           ; 3 uses
  %cmp.n605 = icmp eq i64 %n.vec596, %i.ks
  %xtraiter656 = and i64 %i.ks, 1
  %lcmp.mod657.not = icmp eq i64 %xtraiter656, 0
  %i.lo = add nsw i64 %i.ks, -1
  %min.iters.check568 = icmp ult i32 %1, 8
  %n.vec570 = and i64 %i.ks, 2147483640           ; 3 uses
  %cmp.n579 = icmp eq i64 %n.vec570, %i.ks
  %xtraiter658 = and i64 %i.ks, 1
  %lcmp.mod659.not = icmp eq i64 %xtraiter658, 0
  %i.lp = add nsw i64 %i.ks, -1
  br label %.preheader224

.preheader224:                                    ; preds = %.preheader224.lr.ph, %.loopexit
  %indvar552 = phi i64 [ 0, %.preheader224.lr.ph ], [ %indvar.next553, %.loopexit ] ; 7 uses
  %indvars.iv397 = phi i64 [ %i.kt, %.preheader224.lr.ph ], [ %indvars.iv.next398, %.loopexit ] ; 5 uses
  %indvars.iv378 = phi i32 [ %i.kr, %.preheader224.lr.ph ], [ %indvars.iv.next379, %.loopexit ] ; 3 uses
  %.1167297 = phi ptr [ %.0166.lcssa, %.preheader224.lr.ph ], [ %i.rg, %.loopexit ] ; 7 uses
  %.2170294 = phi ptr [ %.1169.lcssa, %.preheader224.lr.ph ], [ %i.rh, %.loopexit ] ; 17 uses
  %i.lq = mul i64 %i.ky, %indvar552
  %scevgep582 = getelementptr i8, ptr %i.lk, i64 %i.lq ; 2 uses
  %8 = add i64 %indvar552, %i.kt
  %i.lr = sub i64 %i.ku, %8
  %i.ls = shl i64 %i.lr, 1
  %scevgep583 = getelementptr i8, ptr %2, i64 %i.ls
  %i.lt = mul i64 %indvar552, %i.kp
  %gep666 = getelementptr i8, ptr %invariant.gep665, i64 %i.lt
  %i.lu = mul i64 %i.lb, %indvar552
  %scevgep585 = getelementptr i8, ptr %i.ll, i64 %i.lu
  %i.lv = mul i64 %i.kx, %indvar552
  %scevgep554 = getelementptr i8, ptr %i.lm, i64 %i.lv ; 2 uses
  %i.lw = mul i64 %indvar552, %i.kp
  %gep668 = getelementptr i8, ptr %invariant.gep667, i64 %i.lw
  br i1 %i.ko, label %.lr.ph280.preheader, label %.preheader223.thread

.lr.ph280.preheader:                              ; preds = %.preheader224
  %brmerge670 = select i1 %min.iters.check621, i1 true, i1 %conflict.rdx619
  br i1 %brmerge670, label %.lr.ph280.preheader634, label %vector.ph622

vector.ph622:                                     ; preds = %.lr.ph280.preheader
  %i.lx = load i16, ptr %2, align 2, !tbaa !47, !alias.scope !1763, !noalias !1764
  %broadcast.splatinsert624 = insertelement <8 x i16> poison, i16 %i.lx, i64 0
  %broadcast.splat625 = shufflevector <8 x i16> %broadcast.splatinsert624, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ly = zext <8 x i16> %broadcast.splat625 to <8 x i32>
  br label %vector.body626

vector.body626:                                   ; preds = %vector.body626, %vector.ph622
  %index627 = phi i64 [ 0, %vector.ph622 ], [ %index.next629, %vector.body626 ] ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.1167297, i64 %index627
  %wide.load628 = load <8 x i8>, ptr %i.lz, align 1, !tbaa !22, !alias.scope !1765, !noalias !1764
  %i.ma = zext <8 x i8> %wide.load628 to <8 x i32>
  %i.mb = mul nuw nsw <8 x i32> %i.ma, %i.ly
  %i.mc = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.mb, <8 x i32> splat (i32 65535))
  %i.md = trunc nuw <8 x i32> %i.mc to <8 x i16>
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %.2170294, i64 %index627
  store <8 x i16> %i.md, ptr %i.me, align 2, !tbaa !47, !alias.scope !1766, !noalias !1767
  %index.next629 = add nuw i64 %index627, 8       ; 2 uses
  %i.mf = icmp eq i64 %index.next629, %n.vec623
  br i1 %i.mf, label %middle.block630, label %vector.body626, !llvm.loop !1710

middle.block630:                                  ; preds = %vector.body626
  br i1 %cmp.n631, label %.preheader223, label %.lr.ph280.preheader634

.lr.ph280.preheader634:                           ; preds = %.lr.ph280.preheader, %middle.block630
  %indvars.iv373.ph = phi i64 [ %n.vec623, %middle.block630 ], [ 0, %.lr.ph280.preheader ] ; 5 uses
  br i1 %lcmp.mod655.not, label %.lr.ph280.prol.loopexit, label %.lr.ph280.prol

.lr.ph280.prol:                                   ; preds = %.lr.ph280.preheader634
  %i.mg = getelementptr inbounds nuw i8, ptr %.1167297, i64 %indvars.iv373.ph
  %i.mh = load i16, ptr %2, align 2, !tbaa !47, !noalias !1764
  %i.mi = zext i16 %i.mh to i32
  %i.mj = load i8, ptr %i.mg, align 1, !tbaa !22, !noalias !1764
  %i.mk = zext i8 %i.mj to i32
  %i.ml = mul nuw nsw i32 %i.mk, %i.mi
  %.sroa.speculated.i180.prol = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ml, i32 65535)
  %i.mm = trunc nuw i32 %.sroa.speculated.i180.prol to i16
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %.2170294, i64 %indvars.iv373.ph
  store i16 %i.mm, ptr %i.mn, align 2, !tbaa !47
  %indvars.iv.next374.prol = or disjoint i64 %indvars.iv373.ph, 1
  br label %.lr.ph280.prol.loopexit

.lr.ph280.prol.loopexit:                          ; preds = %.lr.ph280.prol, %.lr.ph280.preheader634
  %indvars.iv373.unr = phi i64 [ %indvars.iv373.ph, %.lr.ph280.preheader634 ], [ %indvars.iv.next374.prol, %.lr.ph280.prol ]
  %i.mo = icmp eq i64 %indvars.iv373.ph, %i.ln
  br i1 %i.mo, label %.preheader223, label %.lr.ph280

.preheader223:                                    ; preds = %.lr.ph280.prol.loopexit, %.lr.ph280, %middle.block630
  %i.mp = sub nsw i64 %i.ku, %indvars.iv397       ; 2 uses
  %i.mq = icmp slt i64 %i.mp, 2                   ; 2 uses
  %.mux437 = select i1 %i.mq, i32 1, i32 %indvars.iv378
  br i1 %i.mq, label %._crit_edge285, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader223
  %bound0586 = icmp ult ptr %.2170294, %scevgep583
  %bound1587 = icmp ult ptr %scevgep556, %scevgep582
  %found.conflict588 = and i1 %bound0586, %bound1587
  %bound0589 = icmp ult ptr %.2170294, %scevgep585
  %bound1590 = icmp ult ptr %gep666, %scevgep582
  %found.conflict591 = and i1 %bound0589, %bound1590
  %conflict.rdx592 = or i1 %found.conflict588, %found.conflict591
  br label %.preheader.us

.preheader223.thread:                             ; preds = %.preheader224
  %i.mr = icmp slt i64 %indvars.iv397, %invariant.op
  %spec.select433 = select i1 %i.mr, i32 %indvars.iv378, i32 1
  br label %._crit_edge285

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge283.us
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %._crit_edge283.us ], [ 1, %.preheader.us.preheader ] ; 3 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv385 ; 4 uses
  %i.mt = mul nuw nsw i64 %indvars.iv385, %i.ks
  %invariant.gep425 = getelementptr inbounds nuw i8, ptr %.1167297, i64 %i.mt ; 4 uses
  %brmerge671 = select i1 %min.iters.check594, i1 true, i1 %conflict.rdx592
  br i1 %brmerge671, label %scalar.ph593.preheader, label %vector.ph595

vector.ph595:                                     ; preds = %.preheader.us
  %i.mu = load i16, ptr %i.ms, align 2, !tbaa !47, !alias.scope !1768, !noalias !1769
  %broadcast.splatinsert597 = insertelement <8 x i16> poison, i16 %i.mu, i64 0
  %broadcast.splat598 = shufflevector <8 x i16> %broadcast.splatinsert597, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.mv = zext <8 x i16> %broadcast.splat598 to <8 x i32>
  br label %vector.body599

vector.body599:                                   ; preds = %vector.body599, %vector.ph595
  %index600 = phi i64 [ 0, %vector.ph595 ], [ %index.next603, %vector.body599 ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %.2170294, i64 %index600 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %invariant.gep425, i64 %index600
  %wide.load601 = load <8 x i8>, ptr %i.mx, align 1, !tbaa !22, !alias.scope !1770, !noalias !1769
  %i.my = zext <8 x i8> %wide.load601 to <8 x i32>
  %i.mz = mul nuw nsw <8 x i32> %i.my, %i.mv
  %i.na = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.mz, <8 x i32> splat (i32 65535))
  %i.nb = trunc nuw <8 x i32> %i.na to <8 x i16>
  %wide.load602 = load <8 x i16>, ptr %i.mw, align 2, !tbaa !47, !alias.scope !1771, !noalias !1772
  %i.nc = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load602, <8 x i16> %i.nb)
  store <8 x i16> %i.nc, ptr %i.mw, align 2, !tbaa !47, !alias.scope !1771, !noalias !1773
  %index.next603 = add nuw i64 %index600, 8       ; 2 uses
  %i.nd = icmp eq i64 %index.next603, %n.vec596
  br i1 %i.nd, label %middle.block604, label %vector.body599, !llvm.loop !1719

middle.block604:                                  ; preds = %vector.body599
  br i1 %cmp.n605, label %._crit_edge283.us, label %scalar.ph593.preheader

scalar.ph593.preheader:                           ; preds = %.preheader.us, %middle.block604
  %indvars.iv380.ph = phi i64 [ %n.vec596, %middle.block604 ], [ 0, %.preheader.us ] ; 5 uses
  br i1 %lcmp.mod657.not, label %scalar.ph593.prol.loopexit, label %scalar.ph593.prol

scalar.ph593.prol:                                ; preds = %scalar.ph593.preheader
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %.2170294, i64 %indvars.iv380.ph ; 2 uses
  %gep426.prol = getelementptr inbounds nuw i8, ptr %invariant.gep425, i64 %indvars.iv380.ph
  %i.nf = load i16, ptr %i.ms, align 2, !tbaa !47, !noalias !1769
  %i.ng = zext i16 %i.nf to i32
  %i.nh = load i8, ptr %gep426.prol, align 1, !tbaa !22, !noalias !1769
  %i.ni = zext i8 %i.nh to i32
  %i.nj = mul nuw nsw i32 %i.ni, %i.ng
  %.sroa.speculated.i181.us.prol = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.nj, i32 65535)
  %i.nk = trunc nuw i32 %.sroa.speculated.i181.us.prol to i16
  %i.nl = load i16, ptr %i.ne, align 2, !tbaa !47, !noalias !1774
  %i.nm = tail call i16 @llvm.uadd.sat.i16(i16 %i.nl, i16 %i.nk)
  store i16 %i.nm, ptr %i.ne, align 2, !tbaa !47
  %indvars.iv.next381.prol = or disjoint i64 %indvars.iv380.ph, 1
  br label %scalar.ph593.prol.loopexit

scalar.ph593.prol.loopexit:                       ; preds = %scalar.ph593.prol, %scalar.ph593.preheader
  %indvars.iv380.unr = phi i64 [ %indvars.iv380.ph, %scalar.ph593.preheader ], [ %indvars.iv.next381.prol, %scalar.ph593.prol ]
  %i.nn = icmp eq i64 %indvars.iv380.ph, %i.lo
  br i1 %i.nn, label %._crit_edge283.us, label %scalar.ph593

scalar.ph593:                                     ; preds = %scalar.ph593.prol.loopexit, %scalar.ph593
  %indvars.iv380 = phi i64 [ %indvars.iv.next381.1, %scalar.ph593 ], [ %indvars.iv380.unr, %scalar.ph593.prol.loopexit ] ; 4 uses
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %.2170294, i64 %indvars.iv380 ; 2 uses
  %gep426 = getelementptr inbounds nuw i8, ptr %invariant.gep425, i64 %indvars.iv380
  %i.np = load i16, ptr %i.ms, align 2, !tbaa !47, !noalias !1769
  %i.nq = zext i16 %i.np to i32
  %i.nr = load i8, ptr %gep426, align 1, !tbaa !22, !noalias !1769
  %i.ns = zext i8 %i.nr to i32
  %i.nt = mul nuw nsw i32 %i.ns, %i.nq
  %.sroa.speculated.i181.us = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.nt, i32 65535)
  %i.nu = trunc nuw i32 %.sroa.speculated.i181.us to i16
  %i.nv = load i16, ptr %i.no, align 2, !tbaa !47, !noalias !1774
  %i.nw = tail call i16 @llvm.uadd.sat.i16(i16 %i.nv, i16 %i.nu)
  store i16 %i.nw, ptr %i.no, align 2, !tbaa !47
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1 ; 2 uses
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %.2170294, i64 %indvars.iv.next381 ; 2 uses
  %gep426.1 = getelementptr inbounds nuw i8, ptr %invariant.gep425, i64 %indvars.iv.next381
  %i.ny = load i16, ptr %i.ms, align 2, !tbaa !47, !noalias !1769
  %i.nz = zext i16 %i.ny to i32
  %i.oa = load i8, ptr %gep426.1, align 1, !tbaa !22, !noalias !1769
  %i.ob = zext i8 %i.oa to i32
  %i.oc = mul nuw nsw i32 %i.ob, %i.nz
  %.sroa.speculated.i181.us.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.oc, i32 65535)
  %i.od = trunc nuw i32 %.sroa.speculated.i181.us.1 to i16
  %i.oe = load i16, ptr %i.nx, align 2, !tbaa !47, !noalias !1774
  %i.of = tail call i16 @llvm.uadd.sat.i16(i16 %i.oe, i16 %i.od)
  store i16 %i.of, ptr %i.nx, align 2, !tbaa !47
  %indvars.iv.next381.1 = add nuw nsw i64 %indvars.iv380, 2 ; 2 uses
  %exitcond384.not.1 = icmp eq i64 %indvars.iv.next381.1, %i.ks
  br i1 %exitcond384.not.1, label %._crit_edge283.us, label %scalar.ph593, !llvm.loop !1720

._crit_edge283.us:                                ; preds = %scalar.ph593.prol.loopexit, %scalar.ph593, %middle.block604
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 3 uses
  %i.og = icmp slt i64 %indvars.iv.next386, %i.mp
  br i1 %i.og, label %.preheader.us, label %._crit_edge285.loopexit, !llvm.loop !1721

.lr.ph280:                                        ; preds = %.lr.ph280.prol.loopexit, %.lr.ph280
  %indvars.iv373 = phi i64 [ %indvars.iv.next374.1, %.lr.ph280 ], [ %indvars.iv373.unr, %.lr.ph280.prol.loopexit ] ; 4 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.1167297, i64 %indvars.iv373
  %i.oi = load i16, ptr %2, align 2, !tbaa !47, !noalias !1764
  %i.oj = zext i16 %i.oi to i32
  %i.ok = load i8, ptr %i.oh, align 1, !tbaa !22, !noalias !1764
  %i.ol = zext i8 %i.ok to i32
  %i.om = mul nuw nsw i32 %i.ol, %i.oj
  %.sroa.speculated.i180 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.om, i32 65535)
  %i.on = trunc nuw i32 %.sroa.speculated.i180 to i16
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %.2170294, i64 %indvars.iv373
  store i16 %i.on, ptr %i.oo, align 2, !tbaa !47
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.1167297, i64 %indvars.iv.next374
  %i.oq = load i16, ptr %2, align 2, !tbaa !47, !noalias !1764
  %i.or = zext i16 %i.oq to i32
  %i.os = load i8, ptr %i.op, align 1, !tbaa !22, !noalias !1764
  %i.ot = zext i8 %i.os to i32
  %i.ou = mul nuw nsw i32 %i.ot, %i.or
  %.sroa.speculated.i180.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ou, i32 65535)
  %i.ov = trunc nuw i32 %.sroa.speculated.i180.1 to i16
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baseline12_GLOBAL__N_120vlineSmoothONa_yzy_aIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKPKT0_S7_iPT_iib:bb.a
  %i.bo = trunc nuw i32 %.sroa.speculated.i.1 to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge24.loopexit40.unr-lcssa, label %.lr.ph23.split, !llvm.loop !1893

._crit_edge24.loopexit40.unr-lcssa:               ; preds = %.lr.ph23.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge24, label %.lr.ph23.split.epil.preheader

.lr.ph23.split.epil.preheader:                    ; preds = %._crit_edge24.loopexit40.unr-lcssa, %.lr.ph23.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph23.split.preheader ], [ %indvars.iv.next.1, %._crit_edge24.loopexit40.unr-lcssa ] ; 2 uses
  %lcmp.mod41 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.bq = load ptr, ptr %0, align 8, !tbaa !114
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %indvars.iv.epil.init
  %i.bs = load i16, ptr %1, align 2, !tbaa !47, !noalias !1894
  %i.bt = zext i16 %i.bs to i32
  %i.bu = load i16, ptr %i.br, align 2, !tbaa !47, !noalias !1894
  %i.bv = zext i16 %i.bu to i32
  %i.bw = mul nuw i32 %i.bv, %i.bt
  %i.bx = add nuw i32 %i.bw, 32768
  %i.by = lshr i32 %i.bx, 16
  %.sroa.speculated.i.epil = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.by, i32 255)
  %i.bz = trunc nuw i32 %.sroa.speculated.i.epil to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.epil.init
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !22
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %.lr.ph23.split.epil.preheader, %._crit_edge24.loopexit40.unr-lcssa, %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_111vlineSmoothIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKPKT0_S7_iPT_iib(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) #17 {
bb.a:
  %i.a = icmp sgt i32 %5, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 1
  %wide.trip.count107 = zext nneg i32 %5 to i64   ; 3 uses
  br i1 %i.b, label %.lr.ph.us.preheader, label %.lr.ph72.split.preheader

.lr.ph72.split.preheader:                         ; preds = %.lr.ph72
  %xtraiter = and i64 %wide.trip.count107, 1
  %i.c = icmp eq i32 %5, 1
  br i1 %i.c, label %.lr.ph72.split.epil.preheader, label %.lr.ph72.split.preheader.new

.lr.ph72.split.preheader.new:                     ; preds = %.lr.ph72.split.preheader
  %unroll_iter = and i64 %wide.trip.count107, 2147483646
  br label %.lr.ph72.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph72
  %wide.trip.count102 = zext nneg i32 %2 to i64
  %i.d = add nsw i64 %wide.trip.count102, -1      ; 3 uses
  %xtraiter150 = and i64 %i.d, 1
  %i.e = icmp eq i32 %2, 2
  %unroll_iter154 = and i64 %i.d, -2
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  %lcmp.mod153 = trunc i64 %i.d to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv104 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next105, %._crit_edge.us ] ; 6 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv104
  %i.h = load i16, ptr %1, align 2, !tbaa !47, !noalias !1914
  %i.i = zext i16 %i.h to i32
  %i.j = load i16, ptr %i.g, align 2, !tbaa !47, !noalias !1914
  %i.k = zext i16 %i.j to i32
  %i.l = mul nuw i32 %i.k, %i.i                   ; 2 uses
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.1, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 4 uses
  %.sroa.066.068.us = phi i32 [ %i.af, %.lr.ph.us.new ], [ %i.l, %.lr.ph.us ]
  %niter155 = phi i64 [ %niter155.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv99
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv99
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv104
  %i.q = load i16, ptr %i.m, align 2, !tbaa !47, !noalias !1915
  %i.r = zext i16 %i.q to i32
  %i.s = load i16, ptr %i.p, align 2, !tbaa !47, !noalias !1915
  %i.t = zext i16 %i.s to i32
  %i.u = mul nuw i32 %i.t, %i.r
  %i.v = tail call i32 @llvm.uadd.sat.i32(i32 %.sroa.066.068.us, i32 %i.u)
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next100
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next100
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !114
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv104
  %i.aa = load i16, ptr %i.w, align 2, !tbaa !47, !noalias !1915
  %i.ab = zext i16 %i.aa to i32
  %i.ac = load i16, ptr %i.z, align 2, !tbaa !47, !noalias !1915
  %i.ad = zext i16 %i.ac to i32
  %i.ae = mul nuw i32 %i.ad, %i.ab
  %i.af = tail call i32 @llvm.uadd.sat.i32(i32 %i.v, i32 %i.ae) ; 3 uses
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99, 2 ; 2 uses
  %niter155.next.1 = add nuw i64 %niter155, 2     ; 2 uses
  %niter155.ncmp.1 = icmp eq i64 %niter155.next.1, %unroll_iter154
  br i1 %niter155.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !1900

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod151.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv99.epil.init = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next100.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.sroa.066.068.us.epil.init = phi i32 [ %i.l, %.lr.ph.us ], [ %i.af, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod153)
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv99.epil.init
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv99.epil.init
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv104
  %i.ak = load i16, ptr %i.ag, align 2, !tbaa !47, !noalias !1915
  %i.al = zext i16 %i.ak to i32
  %i.am = load i16, ptr %i.aj, align 2, !tbaa !47, !noalias !1915
  %i.an = zext i16 %i.am to i32
  %i.ao = mul nuw i32 %i.an, %i.al
  %i.ap = tail call i32 @llvm.uadd.sat.i32(i32 %.sroa.066.068.us.epil.init, i32 %i.ao)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa147 = phi i32 [ %i.af, %._crit_edge.us.unr-lcssa ], [ %i.ap, %.epil.preheader ]
  %i.aq = add i32 %.lcssa147, 32768
  %i.ar = lshr i32 %i.aq, 16
  %.sroa.speculated.i.us = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.ar, i32 255)
  %i.as = trunc nuw i32 %.sroa.speculated.i.us to i8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv104
  store i8 %i.as, ptr %i.at, align 1, !tbaa !22
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %._crit_edge73, label %.lr.ph.us, !llvm.loop !1901

.lr.ph72.split:                                   ; preds = %.lr.ph72.split, %.lr.ph72.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph72.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph72.split ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph72.split.preheader.new ], [ %niter.next.1, %.lr.ph72.split ]
  %i.au = load ptr, ptr %0, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load i16, ptr %1, align 2, !tbaa !47, !noalias !1914
  %i.ax = zext i16 %i.aw to i32
  %i.ay = load i16, ptr %i.av, align 2, !tbaa !47, !noalias !1914
  %i.az = zext i16 %i.ay to i32
  %i.ba = mul nuw i32 %i.az, %i.ax
  %i.bb = add nuw i32 %i.ba, 32768
  %i.bc = lshr i32 %i.bb, 16
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.bc, i32 255)
  %i.bd = trunc nuw i32 %.sroa.speculated.i to i8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !114
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.next
  %i.bh = load i16, ptr %1, align 2, !tbaa !47, !noalias !1914
  %i.bi = zext i16 %i.bh to i32
  %i.bj = load i16, ptr %i.bg, align 2, !tbaa !47, !noalias !1914
  %i.bk = zext i16 %i.bj to i32
  %i.bl = mul nuw i32 %i.bk, %i.bi
  %i.bm = add nuw i32 %i.bl, 32768
  %i.bn = lshr i32 %i.bm, 16
  %.sroa.speculated.i.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.bn, i32 255)
  %i.bo = trunc nuw i32 %.sroa.speculated.i.1 to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge73.loopexit148.unr-lcssa, label %.lr.ph72.split, !llvm.loop !1901

._crit_edge73.loopexit148.unr-lcssa:              ; preds = %.lr.ph72.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge73, label %.lr.ph72.split.epil.preheader

.lr.ph72.split.epil.preheader:                    ; preds = %._crit_edge73.loopexit148.unr-lcssa, %.lr.ph72.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph72.split.preheader ], [ %indvars.iv.next.1, %._crit_edge73.loopexit148.unr-lcssa ] ; 2 uses
  %lcmp.mod149 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod149)
  %i.bq = load ptr, ptr %0, align 8, !tbaa !114
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %indvars.iv.epil.init
  %i.bs = load i16, ptr %1, align 2, !tbaa !47, !noalias !1914
  %i.bt = zext i16 %i.bs to i32
  %i.bu = load i16, ptr %i.br, align 2, !tbaa !47, !noalias !1914
  %i.bv = zext i16 %i.bu to i32
  %i.bw = mul nuw i32 %i.bv, %i.bt
  %i.bx = add nuw i32 %i.bw, 32768
  %i.by = lshr i32 %i.bx, 16
  %.sroa.speculated.i.epil = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.by, i32 255)
  %i.bz = trunc nuw i32 %.sroa.speculated.i.epil to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.epil.init
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !22
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %.lr.ph72.split.epil.preheader, %._crit_edge73.loopexit148.unr-lcssa, %._crit_edge.us, %bb.a
  %.053.lcssa = phi i32 [ 0, %bb.a ], [ %5, %._crit_edge.us ], [ %5, %._crit_edge73.loopexit148.unr-lcssa ], [ %5, %.lr.ph72.split.epil.preheader ] ; 4 uses
  br i1 %6, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge73
  %i.cb = sub nsw i32 %4, %5                      ; 3 uses
  %i.cc = icmp slt i32 %.053.lcssa, %i.cb
  br i1 %i.cc, label %.lr.ph78, label %.loopexit

.lr.ph78:                                         ; preds = %.preheader
  %i.cd = icmp sgt i32 %2, 1
  %i.ce = zext nneg i32 %.053.lcssa to i64        ; 5 uses
  br i1 %i.cd, label %.lr.ph.us79.preheader, label %.lr.ph78.split.preheader

.lr.ph78.split.preheader:                         ; preds = %.lr.ph78
  %7 = add i32 %.053.lcssa, %5
  %i.cf = sub i32 %4, %7
  %i.cg = xor i32 %.053.lcssa, -1
  %i.ch = add i32 %4, %i.cg
  %xtraiter156 = and i32 %i.cf, 1
  %lcmp.mod157.not = icmp eq i32 %xtraiter156, 0
  br i1 %lcmp.mod157.not, label %.lr.ph78.split.prol.loopexit, label %.lr.ph78.split.prol

.lr.ph78.split.prol:                              ; preds = %.lr.ph78.split.preheader
  %i.ci = load ptr, ptr %0, align 8, !tbaa !114
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.ce
  %i.ck = load i16, ptr %1, align 2, !tbaa !47, !noalias !1916
  %i.cl = zext i16 %i.ck to i32
  %i.cm = load i16, ptr %i.cj, align 2, !tbaa !47, !noalias !1916
  %i.cn = zext i16 %i.cm to i32
  %i.co = mul nuw i32 %i.cn, %i.cl
  %i.cp = add nuw i32 %i.co, 32768
  %i.cq = lshr i32 %i.cp, 16
  %.sroa.speculated.i55.prol = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.cq, i32 255)
  %i.cr = trunc nuw i32 %.sroa.speculated.i55.prol to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 %i.ce
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !22
  %indvars.iv.next110.prol = add nuw nsw i64 %i.ce, 1
  br label %.lr.ph78.split.prol.loopexit

.lr.ph78.split.prol.loopexit:                     ; preds = %.lr.ph78.split.prol, %.lr.ph78.split.preheader
  %indvars.iv109.unr = phi i64 [ %i.ce, %.lr.ph78.split.preheader ], [ %indvars.iv.next110.prol, %.lr.ph78.split.prol ]
  %i.ct = icmp eq i32 %i.ch, %5
  br i1 %i.ct, label %.loopexit, label %.lr.ph78.split

.lr.ph.us79.preheader:                            ; preds = %.lr.ph78
  %wide.trip.count115 = zext nneg i32 %2 to i64
  %i.cu = add nsw i64 %wide.trip.count115, -1     ; 3 uses
  %xtraiter159 = and i64 %i.cu, 1
  %i.cv = icmp eq i32 %2, 2
  %unroll_iter163 = and i64 %i.cu, -2
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  %lcmp.mod162 = trunc i64 %i.cu to i1
  br label %.lr.ph.us79

.lr.ph.us79:                                      ; preds = %.lr.ph.us79.preheader, %._crit_edge.us80
  %indvars.iv117 = phi i64 [ %i.ce, %.lr.ph.us79.preheader ], [ %indvars.iv.next118, %._crit_edge.us80 ] ; 6 uses
  %i.cw = load ptr, ptr %0, align 8, !tbaa !114
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %indvars.iv117
  %i.cy = load i16, ptr %1, align 2, !tbaa !47, !noalias !1916
  %i.cz = zext i16 %i.cy to i32
  %i.da = load i16, ptr %i.cx, align 2, !tbaa !47, !noalias !1916
  %i.db = zext i16 %i.da to i32
  %i.dc = mul nuw i32 %i.db, %i.cz                ; 2 uses
  br i1 %i.cv, label %.epil.preheader158, label %.lr.ph.us79.new

.lr.ph.us79.new:                                  ; preds = %.lr.ph.us79, %.lr.ph.us79.new
  %indvars.iv112 = phi i64 [ %indvars.iv.next113.1, %.lr.ph.us79.new ], [ 1, %.lr.ph.us79 ] ; 4 uses
  %.sroa.062.075.us = phi i32 [ %i.dw, %.lr.ph.us79.new ], [ %i.dc, %.lr.ph.us79 ]
  %niter164 = phi i64 [ %niter164.next.1, %.lr.ph.us79.new ], [ 0, %.lr.ph.us79 ]
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv112
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv112
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !114
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %indvars.iv117
  %i.dh = load i16, ptr %i.dd, align 2, !tbaa !47, !noalias !1917
  %i.di = zext i16 %i.dh to i32
  %i.dj = load i16, ptr %i.dg, align 2, !tbaa !47, !noalias !1917
  %i.dk = zext i16 %i.dj to i32
  %i.dl = mul nuw i32 %i.dk, %i.di
  %i.dm = tail call i32 @llvm.uadd.sat.i32(i32 %.sroa.062.075.us, i32 %i.dl)
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next113
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next113
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !114
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv117
  %i.dr = load i16, ptr %i.dn, align 2, !tbaa !47, !noalias !1917
  %i.ds = zext i16 %i.dr to i32
  %i.dt = load i16, ptr %i.dq, align 2, !tbaa !47, !noalias !1917
  %i.du = zext i16 %i.dt to i32
  %i.dv = mul nuw i32 %i.du, %i.ds
  %i.dw = tail call i32 @llvm.uadd.sat.i32(i32 %i.dm, i32 %i.dv) ; 3 uses
  %indvars.iv.next113.1 = add nuw nsw i64 %indvars.iv112, 2 ; 2 uses
  %niter164.next.1 = add nuw i64 %niter164, 2     ; 2 uses
  %niter164.ncmp.1 = icmp eq i64 %niter164.next.1, %unroll_iter163
  br i1 %niter164.ncmp.1, label %._crit_edge.us80.unr-lcssa, label %.lr.ph.us79.new, !llvm.loop !1906

._crit_edge.us80.unr-lcssa:                       ; preds = %.lr.ph.us79.new
  br i1 %lcmp.mod160.not, label %._crit_edge.us80, label %.epil.preheader158

.epil.preheader158:                               ; preds = %._crit_edge.us80.unr-lcssa, %.lr.ph.us79
  %indvars.iv112.epil.init = phi i64 [ 1, %.lr.ph.us79 ], [ %indvars.iv.next113.1, %._crit_edge.us80.unr-lcssa ] ; 2 uses
  %.sroa.062.075.us.epil.init = phi i32 [ %i.dc, %.lr.ph.us79 ], [ %i.dw, %._crit_edge.us80.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod162)
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv112.epil.init
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv112.epil.init
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !114
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %indvars.iv117
  %i.eb = load i16, ptr %i.dx, align 2, !tbaa !47, !noalias !1917
  %i.ec = zext i16 %i.eb to i32
  %i.ed = load i16, ptr %i.ea, align 2, !tbaa !47, !noalias !1917
  %i.ee = zext i16 %i.ed to i32
  %i.ef = mul nuw i32 %i.ee, %i.ec
  %i.eg = tail call i32 @llvm.uadd.sat.i32(i32 %.sroa.062.075.us.epil.init, i32 %i.ef)
  br label %._crit_edge.us80

._crit_edge.us80:                                 ; preds = %._crit_edge.us80.unr-lcssa, %.epil.preheader158
  %.lcssa145 = phi i32 [ %i.dw, %._crit_edge.us80.unr-lcssa ], [ %i.eg, %.epil.preheader158 ]
  %i.eh = add i32 %.lcssa145, 32768
  %i.ei = lshr i32 %i.eh, 16
  %.sroa.speculated.i55.us = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.ei, i32 255)
  %i.ej = trunc nuw i32 %.sroa.speculated.i55.us to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv117
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !22
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.el = trunc nuw i64 %indvars.iv.next118 to i32
  %i.em = icmp sgt i32 %i.cb, %i.el
  br i1 %i.em, label %.lr.ph.us79, label %.loopexit, !llvm.loop !1907

.lr.ph78.split:                                   ; preds = %.lr.ph78.split.prol.loopexit, %.lr.ph78.split
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.1, %.lr.ph78.split ], [ %indvars.iv109.unr, %.lr.ph78.split.prol.loopexit ] ; 4 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !114
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %indvars.iv109
  %i.ep = load i16, ptr %1, align 2, !tbaa !47, !noalias !1916
  %i.eq = zext i16 %i.ep to i32
  %i.er = load i16, ptr %i.eo, align 2, !tbaa !47, !noalias !1916
  %i.es = zext i16 %i.er to i32
  %i.et = mul nuw i32 %i.es, %i.eq
  %i.eu = add nuw i32 %i.et, 32768
  %i.ev = lshr i32 %i.eu, 16
  %.sroa.speculated.i55 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.ev, i32 255)
  %i.ew = trunc nuw i32 %.sroa.speculated.i55 to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv109
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !22
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ey = load ptr, ptr %0, align 8, !tbaa !114
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv.next110
  %i.fa = load i16, ptr %1, align 2, !tbaa !47, !noalias !1916
  %i.fb = zext i16 %i.fa to i32
  %i.fc = load i16, ptr %i.ez, align 2, !tbaa !47, !noalias !1916
  %i.fd = zext i16 %i.fc to i32
  %i.fe = mul nuw i32 %i.fd, %i.fb
  %i.ff = add nuw i32 %i.fe, 32768
  %i.fg = lshr i32 %i.ff, 16
  %.sroa.speculated.i55.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.fg, i32 255)
  %i.fh = trunc nuw i32 %.sroa.speculated.i55.1 to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next110
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !22
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %i.fj = trunc nuw i64 %indvars.iv.next110.1 to i32
  %i.fk = icmp sgt i32 %i.cb, %i.fj
  br i1 %i.fk, label %.lr.ph78.split, label %.loopexit, !llvm.loop !1907

.loopexit:                                        ; preds = %.lr.ph78.split.prol.loopexit, %.lr.ph78.split, %._crit_edge.us80, %.preheader, %._crit_edge73
  br i1 %i.a, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.loopexit
  %i.fl = sub i32 %4, %5
  %i.fm = icmp sgt i32 %2, 1
  %i.fn = sext i32 %i.fl to i64                   ; 2 uses
  %i.fo = sext i32 %4 to i64                      ; 2 uses
  br i1 %i.fm, label %.lr.ph.us88.preheader, label %.lr.ph86.split

.lr.ph.us88.preheader:                            ; preds = %.lr.ph86
  %wide.trip.count126 = zext nneg i32 %2 to i64
  %i.fp = add nsw i64 %wide.trip.count126, -1     ; 3 uses
  %xtraiter166 = and i64 %i.fp, 1
  %i.fq = icmp eq i32 %2, 2
  %unroll_iter170 = and i64 %i.fp, -2
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  %lcmp.mod169 = trunc i64 %i.fp to i1
  br label %.lr.ph.us88

.lr.ph.us88:                                      ; preds = %.lr.ph.us88.preheader, %._crit_edge.us89
  %indvars.iv128 = phi i64 [ %i.fn, %.lr.ph.us88.preheader ], [ %indvars.iv.next129, %._crit_edge.us89 ] ; 6 uses
  %i.fr = load ptr, ptr %0, align 8, !tbaa !114
  %i.fs = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %indvars.iv128
  %i.ft = load i16, ptr %1, align 2, !tbaa !47, !noalias !1918
  %i.fu = zext i16 %i.ft to i32
  %i.fv = load i16, ptr %i.fs, align 2, !tbaa !47, !noalias !1918
  %i.fw = zext i16 %i.fv to i32
  %i.fx = mul nuw i32 %i.fw, %i.fu                ; 2 uses
  br i1 %i.fq, label %.epil.preheader165, label %.lr.ph.us88.new

.lr.ph.us88.new:                                  ; preds = %.lr.ph.us88, %.lr.ph.us88.new
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.1, %.lr.ph.us88.new ], [ 1, %.lr.ph.us88 ] ; 4 uses
  %.sroa.058.082.us = phi i32 [ %i.gr, %.lr.ph.us88.new ], [ %i.fx, %.lr.ph.us88 ]
  %niter171 = phi i64 [ %niter171.next.1, %.lr.ph.us88.new ], [ 0, %.lr.ph.us88 ]
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv123
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv123
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !114
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.ga, i64 %indvars.iv128
  %i.gc = load i16, ptr %i.fy, align 2, !tbaa !47, !noalias !1919
  %i.gd = zext i16 %i.gc to i32
  %i.ge = load i16, ptr %i.gb, align 2, !tbaa !47, !noalias !1919
  %i.gf = zext i16 %i.ge to i32
  %i.gg = mul nuw i32 %i.gf, %i.gd
  %i.gh = tail call i32 @llvm.uadd.sat.i32(i32 %.sroa.058.082.us, i32 %i.gg)
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next124
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next124
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !114
  %i.gl = getelementptr inbounds [2 x i8], ptr %i.gk, i64 %indvars.iv128
  %i.gm = load i16, ptr %i.gi, align 2, !tbaa !47, !noalias !1919
  %i.gn = zext i16 %i.gm to i32
  %i.go = load i16, ptr %i.gl, align 2, !tbaa !47, !noalias !1919
  %i.gp = zext i16 %i.go to i32
  %i.gq = mul nuw i32 %i.gp, %i.gn
end_hunk_2
