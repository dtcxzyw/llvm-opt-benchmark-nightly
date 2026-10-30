Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convhull?download=true
inline.NumInlined: 336
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv10convexHullERKNS_11_InputArrayERKNS_12_OutputArrayEbb:bb.a

bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %i.jd = call i32 @llvm.smin.i32(i32 %.0441, i32 2)
  %i.je = call i32 @llvm.smin.i32(i32 %.0438, i32 2)
  br label %.thread450

.thread450:                                       ; preds = %bb.bf, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bc
  %.1442 = phi i32 [ %i.jd, %bb.bl ], [ %.0441, %bb.bk ], [ %.0441, %bb.bj ], [ %.0441, %bb.bi ], [ %.0441, %bb.bc ], [ %.0441, %bb.bf ] ; 3 uses
  %.1439 = phi i32 [ %i.je, %bb.bl ], [ %.0438, %bb.bk ], [ %.0438, %bb.bj ], [ %.0438, %bb.bi ], [ %.0438, %bb.bc ], [ %.0438, %bb.bf ] ; 3 uses
  %i.jf = icmp sgt i32 %.1442, 1
  br i1 %i.jf, label %.lr.ph499.preheader, label %.preheader469

.lr.ph499.preheader:                              ; preds = %.thread450
  %i.jg = add nsw i32 %.1442, -1
  %i.jh = zext i32 %.1282.lcssa626 to i64         ; 5 uses
  %wide.trip.count565 = zext i32 %i.jg to i64     ; 5 uses
  %min.iters.check680 = icmp ult i32 %.1442, 13
  br i1 %min.iters.check680, label %.lr.ph499.preheader725, label %vector.memcheck681

vector.memcheck681:                               ; preds = %.lr.ph499.preheader
  %i.ji = shl nuw nsw i64 %i.jh, 2
  %i.jj = add i64 %i.ji, %i.bh
  %i.jk = sub i64 %.0443678, %i.jj
  %diff.check682 = icmp ugt i64 %i.jk, -32
  br i1 %diff.check682, label %.lr.ph499.preheader725, label %vector.ph683

vector.ph683:                                     ; preds = %vector.memcheck681
  %n.vec684 = and i64 %wide.trip.count565, 2147483640 ; 4 uses
  %i.jl = add nuw nsw i64 %n.vec684, %i.jh        ; 2 uses
  %invariant.gep774 = getelementptr [4 x i8], ptr %i.bf, i64 %i.jh
  br label %vector.body685

vector.body685:                                   ; preds = %vector.body685, %vector.ph683
  %index686 = phi i64 [ 0, %vector.ph683 ], [ %index.next689, %vector.body685 ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %index686 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %wide.load687 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !41
  %wide.load688 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !41
  %gep775 = getelementptr [4 x i8], ptr %invariant.gep774, i64 %index686 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %gep775, i64 16
  store <4 x i32> %wide.load687, ptr %gep775, align 4, !tbaa !41
  store <4 x i32> %wide.load688, ptr %i.jo, align 4, !tbaa !41
  %index.next689 = add nuw i64 %index686, 8       ; 2 uses
  %i.jp = icmp eq i64 %index.next689, %n.vec684
  br i1 %i.jp, label %middle.block690, label %vector.body685, !llvm.loop !68

middle.block690:                                  ; preds = %vector.body685
  %cmp.n691 = icmp eq i64 %n.vec684, %wide.trip.count565
  br i1 %cmp.n691, label %.preheader469.loopexit, label %.lr.ph499.preheader725

.lr.ph499.preheader725:                           ; preds = %vector.memcheck681, %.lr.ph499.preheader, %middle.block690
  %indvars.iv560.ph = phi i64 [ 0, %vector.memcheck681 ], [ 0, %.lr.ph499.preheader ], [ %n.vec684, %middle.block690 ] ; 3 uses
  %indvars.iv558.ph = phi i64 [ %i.jh, %vector.memcheck681 ], [ %i.jh, %.lr.ph499.preheader ], [ %i.jl, %middle.block690 ] ; 2 uses
  %xtraiter750 = and i64 %wide.trip.count565, 3   ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  br i1 %lcmp.mod751.not, label %.lr.ph499.prol.loopexit, label %.lr.ph499.prol

.lr.ph499.prol:                                   ; preds = %.lr.ph499.preheader725, %.lr.ph499.prol
  %indvars.iv560.prol = phi i64 [ %indvars.iv.next561.prol, %.lr.ph499.prol ], [ %indvars.iv560.ph, %.lr.ph499.preheader725 ] ; 2 uses
  %indvars.iv558.prol = phi i64 [ %indvars.iv.next559.prol, %.lr.ph499.prol ], [ %indvars.iv558.ph, %.lr.ph499.preheader725 ] ; 2 uses
  %prol.iter752 = phi i64 [ %prol.iter752.next, %.lr.ph499.prol ], [ 0, %.lr.ph499.preheader725 ]
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560.prol
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !41
  %indvars.iv.next559.prol = add nuw nsw i64 %indvars.iv558.prol, 1 ; 3 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv558.prol
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !41
  %indvars.iv.next561.prol = add nuw nsw i64 %indvars.iv560.prol, 1 ; 2 uses
  %prol.iter752.next = add i64 %prol.iter752, 1   ; 2 uses
  %prol.iter752.cmp.not = icmp eq i64 %prol.iter752.next, %xtraiter750
  br i1 %prol.iter752.cmp.not, label %.lr.ph499.prol.loopexit, label %.lr.ph499.prol, !llvm.loop !69

.lr.ph499.prol.loopexit:                          ; preds = %.lr.ph499.prol, %.lr.ph499.preheader725
  %indvars.iv.next559.lcssa726.unr = phi i64 [ poison, %.lr.ph499.preheader725 ], [ %indvars.iv.next559.prol, %.lr.ph499.prol ]
  %indvars.iv560.unr = phi i64 [ %indvars.iv560.ph, %.lr.ph499.preheader725 ], [ %indvars.iv.next561.prol, %.lr.ph499.prol ]
  %indvars.iv558.unr = phi i64 [ %indvars.iv558.ph, %.lr.ph499.preheader725 ], [ %indvars.iv.next559.prol, %.lr.ph499.prol ]
  %i.jt = sub nsw i64 %indvars.iv560.ph, %wide.trip.count565
  %i.ju = icmp ugt i64 %i.jt, -4
  br i1 %i.ju, label %.preheader469.loopexit, label %.lr.ph499

.preheader469.loopexit:                           ; preds = %.lr.ph499.prol.loopexit, %.lr.ph499, %middle.block690
  %indvars.iv.next559.lcssa = phi i64 [ %i.jl, %middle.block690 ], [ %indvars.iv.next559.lcssa726.unr, %.lr.ph499.prol.loopexit ], [ %indvars.iv.next559.3, %.lr.ph499 ]
  %i.jv = trunc nuw i64 %indvars.iv.next559.lcssa to i32
  br label %.preheader469

.preheader469:                                    ; preds = %.preheader469.loopexit, %.thread450
  %.2283.lcssa = phi i32 [ %.1282.lcssa626, %.thread450 ], [ %i.jv, %.preheader469.loopexit ] ; 2 uses
  %i.jw = icmp sgt i32 %.1439, 1
  br i1 %i.jw, label %.lr.ph503.preheader, label %._crit_edge504

.lr.ph503.preheader:                              ; preds = %.preheader469
  %i.jx = zext i32 %.2283.lcssa to i64            ; 5 uses
  %i.jy = zext nneg i32 %.1439 to i64             ; 6 uses
  %i.jz = add nsw i64 %i.jy, -1                   ; 2 uses
  %min.iters.check702 = icmp ult i32 %.1439, 17
  br i1 %min.iters.check702, label %.lr.ph503.preheader723, label %vector.memcheck703

vector.memcheck703:                               ; preds = %.lr.ph503.preheader
  %i.ka = shl nuw nsw i64 %i.jx, 2                ; 2 uses
  %i.kb = getelementptr i8, ptr %i.bf, i64 %i.ka
  %i.kc = shl nuw nsw i64 %i.jy, 2                ; 2 uses
  %i.kd = getelementptr i8, ptr %i.bf, i64 %i.kc
  %i.ke = getelementptr i8, ptr %i.kd, i64 %i.ka
  %i.kf = getelementptr i8, ptr %i.ke, i64 -4
  %i.kg = getelementptr i8, ptr %.0440, i64 4
  %i.kh = getelementptr i8, ptr %.0440, i64 %i.kc
  %bound0704 = icmp ult ptr %i.kb, %i.kh
  %bound1705 = icmp ult ptr %i.kg, %i.kf
  %found.conflict706 = and i1 %bound0704, %bound1705
  br i1 %found.conflict706, label %.lr.ph503.preheader723, label %vector.ph707

vector.ph707:                                     ; preds = %vector.memcheck703
  %n.vec708 = and i64 %i.jz, -8                   ; 4 uses
  %i.ki = sub nsw i64 %i.jy, %n.vec708
  %i.kj = add nsw i64 %n.vec708, %i.jx            ; 2 uses
  %invariant.gep776 = getelementptr [4 x i8], ptr %.0440, i64 %i.jy
  %invariant.gep778 = getelementptr [4 x i8], ptr %i.bf, i64 %i.jx
  br label %vector.body709

vector.body709:                                   ; preds = %vector.body709, %vector.ph707
  %index710 = phi i64 [ 0, %vector.ph707 ], [ %index.next715, %vector.body709 ] ; 3 uses
  %i.kk = xor i64 %index710, -1
  %gep777 = getelementptr [4 x i8], ptr %invariant.gep776, i64 %i.kk ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %gep777, i64 -12
  %i.km = getelementptr inbounds i8, ptr %gep777, i64 -28
  %wide.load711 = load <4 x i32>, ptr %i.kl, align 4, !tbaa !41, !alias.scope !101
  %wide.load712 = load <4 x i32>, ptr %i.km, align 4, !tbaa !41, !alias.scope !101
  %reverse713 = shufflevector <4 x i32> %wide.load711, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse714 = shufflevector <4 x i32> %wide.load712, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %gep779 = getelementptr [4 x i8], ptr %invariant.gep778, i64 %index710 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %gep779, i64 16
  store <4 x i32> %reverse713, ptr %gep779, align 4, !tbaa !41, !alias.scope !102, !noalias !101
  store <4 x i32> %reverse714, ptr %i.kn, align 4, !tbaa !41, !alias.scope !102, !noalias !101
  %index.next715 = add nuw i64 %index710, 8       ; 2 uses
  %i.ko = icmp eq i64 %index.next715, %n.vec708
  br i1 %i.ko, label %middle.block716, label %vector.body709, !llvm.loop !73

middle.block716:                                  ; preds = %vector.body709
  %cmp.n717 = icmp eq i64 %i.jz, %n.vec708
  br i1 %cmp.n717, label %._crit_edge504.loopexit, label %.lr.ph503.preheader723

.lr.ph503.preheader723:                           ; preds = %vector.memcheck703, %.lr.ph503.preheader, %middle.block716
  %indvars.iv569.ph = phi i64 [ %i.jy, %vector.memcheck703 ], [ %i.jy, %.lr.ph503.preheader ], [ %i.ki, %middle.block716 ]
  %indvars.iv567.ph = phi i64 [ %i.jx, %vector.memcheck703 ], [ %i.jx, %.lr.ph503.preheader ], [ %i.kj, %middle.block716 ]
  br label %.lr.ph503

.lr.ph499:                                        ; preds = %.lr.ph499.prol.loopexit, %.lr.ph499
  %indvars.iv560 = phi i64 [ %indvars.iv.next561.3, %.lr.ph499 ], [ %indvars.iv560.unr, %.lr.ph499.prol.loopexit ] ; 5 uses
  %indvars.iv558 = phi i64 [ %indvars.iv.next559.3, %.lr.ph499 ], [ %indvars.iv558.unr, %.lr.ph499.prol.loopexit ] ; 5 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !41
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv558
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !41
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !41
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv558
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  store i32 %i.ku, ptr %i.kw, align 4, !tbaa !41
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !41
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv558
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store i32 %i.kz, ptr %i.lb, align 4, !tbaa !41
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !41
  %indvars.iv.next559.3 = add nuw nsw i64 %indvars.iv558, 4 ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv558
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  store i32 %i.le, ptr %i.lg, align 4, !tbaa !41
  %indvars.iv.next561.3 = add nuw nsw i64 %indvars.iv560, 4 ; 2 uses
  %exitcond566.not.3 = icmp eq i64 %indvars.iv.next561.3, %wide.trip.count565
  br i1 %exitcond566.not.3, label %.preheader469.loopexit, label %.lr.ph499, !llvm.loop !74

.lr.ph503:                                        ; preds = %.lr.ph503.preheader723, %.lr.ph503
  %indvars.iv569 = phi i64 [ %indvars.iv.next570, %.lr.ph503 ], [ %indvars.iv569.ph, %.lr.ph503.preheader723 ] ; 2 uses
  %indvars.iv567 = phi i64 [ %indvars.iv.next568, %.lr.ph503 ], [ %indvars.iv567.ph, %.lr.ph503.preheader723 ] ; 2 uses
  %indvars.iv.next570 = add nsw i64 %indvars.iv569, -1 ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.0440, i64 %indvars.iv.next570
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !41
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv567
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !41
  %i.lk = icmp samesign ugt i64 %indvars.iv569, 2
  br i1 %i.lk, label %.lr.ph503, label %._crit_edge504.loopexit, !llvm.loop !75

._crit_edge504.loopexit:                          ; preds = %.lr.ph503, %middle.block716
  %indvars.iv.next568.lcssa = phi i64 [ %i.kj, %middle.block716 ], [ %indvars.iv.next568, %.lr.ph503 ]
  %i.ll = trunc nuw i64 %indvars.iv.next568.lcssa to i32
  br label %._crit_edge504

._crit_edge504:                                   ; preds = %._crit_edge504.loopexit, %.preheader469
  %.3284.lcssa = phi i32 [ %.2283.lcssa, %.preheader469 ], [ %i.ll, %._crit_edge504.loopexit ] ; 19 uses
  %i.lm = icmp eq i32 %.3284.lcssa, 0             ; 2 uses
  %or.cond522.not = select i1 %i.ah, i1 true, i1 %i.lm
  br i1 %or.cond522.not, label %.loopexit468, label %.lr.ph507.preheader

.lr.ph507.preheader:                              ; preds = %._crit_edge504
  %i.ln = zext nneg i32 %i.o to i64               ; 2 uses
  %17 = zext i32 %.3284.lcssa to i64
  %18 = zext nneg i32 %.3284.lcssa to i64
  br label %.lr.ph507

.lr.ph507:                                        ; preds = %.lr.ph507.preheader, %.loopexit
  %indvars.iv577 = phi i64 [ 0, %.lr.ph507.preheader ], [ %indvars.iv.next578, %.loopexit ] ; 4 uses
  %i.lo = icmp eq i64 %indvars.iv577, 0
  %19 = select i1 %i.lo, i64 %18, i64 %indvars.iv577
  %i.lp = getelementptr [4 x i8], ptr %i.bf, i64 %19
  %i.lq = getelementptr i8, ptr %i.lp, i64 -4
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !41
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.ls
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !31 ; 4 uses
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 3 uses
  %.not621 = icmp eq i64 %indvars.iv.next578, %17 ; 2 uses
  %20 = select i1 %.not621, i64 0, i64 %indvars.iv.next578
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %20
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !41
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.lx
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !31 ; 4 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv577 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !41
  %i.mc = sext i32 %i.mb to i64                   ; 2 uses
  %i.md = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !31 ; 5 uses
  %i.mf = icmp ult ptr %i.lu, %i.me
  %i.mg = icmp ult ptr %i.me, %i.lz
  %or.cond355 = select i1 %i.mf, i1 %i.mg, i1 false
  br i1 %or.cond355, label %.loopexit, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph507
  %i.mh = icmp ugt ptr %i.lu, %i.me
  %i.mi = icmp ugt ptr %i.me, %i.lz
  %or.cond356 = select i1 %i.mh, i1 %i.mi, i1 false
  br i1 %or.cond356, label %.loopexit, label %.preheader466

.preheader466:                                    ; preds = %bb.bm
  %indvars.iv.next575638 = add nsw i64 %i.mc, 1   ; 2 uses
  %i.mj = icmp slt i64 %indvars.iv.next575638, %i.ln
  br i1 %i.mj, label %.lr.ph640.preheader, label %.loopexit

.lr.ph640.preheader:                              ; preds = %.preheader466
  %i.mk = load <2 x i32>, ptr %i.me, align 4
  br label %.lr.ph640

bb.bn:                                            ; preds = %bb.bp
  %indvars.iv.next575 = add nsw i64 %indvars.iv.next575639, 1 ; 2 uses
  %i.ml = icmp slt i64 %indvars.iv.next575, %i.ln
  br i1 %i.ml, label %.lr.ph640, label %.loopexit, !llvm.loop !76

.lr.ph640:                                        ; preds = %.lr.ph640.preheader, %bb.bn
  %indvars.iv.next575639 = phi i64 [ %indvars.iv.next575, %bb.bn ], [ %indvars.iv.next575638, %.lr.ph640.preheader ] ; 3 uses
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv.next575639
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !31 ; 5 uses
  %i.mo = load <2 x i32>, ptr %i.mn, align 4
  %i.mp = icmp eq <2 x i32> %i.mk, %i.mo          ; 2 uses
  %i.mq = extractelement <2 x i1> %i.mp, i64 0
  %i.mr = extractelement <2 x i1> %i.mp, i64 1
  %i.ms = select i1 %i.mq, i1 %i.mr, i1 false
  br i1 %i.ms, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %.lr.ph640
  %i.mt = icmp ult ptr %i.lu, %i.mn
  %i.mu = icmp ult ptr %i.mn, %i.lz
  %or.cond357 = select i1 %i.mt, i1 %i.mu, i1 false
  br i1 %or.cond357, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mv = icmp ugt ptr %i.lu, %i.mn
  %i.mw = icmp ugt ptr %i.mn, %i.lz
  %or.cond358 = select i1 %i.mv, i1 %i.mw, i1 false
  br i1 %or.cond358, label %bb.bq, label %bb.bn, !llvm.loop !76

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.mx = trunc nsw i64 %indvars.iv.next575639 to i32
  store i32 %i.mx, ptr %i.ma, align 4, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph640, %bb.bn, %.preheader466, %bb.bq, %.lr.ph507, %bb.bm
  br i1 %.not621, label %.loopexit468, label %.lr.ph507, !llvm.loop !77

.loopexit468:                                     ; preds = %.loopexit, %._crit_edge504
  br i1 %i.lm, label %._crit_edge511.thread, label %.lr.ph510

.lr.ph510:                                        ; preds = %.loopexit468
  %i.my = ptrtoint ptr %i.bk to i64               ; 3 uses
  %wide.trip.count581 = zext i32 %.3284.lcssa to i64 ; 2 uses
  %xtraiter753 = and i64 %wide.trip.count581, 1
  %i.mz = icmp eq i32 %.3284.lcssa, 1
  br i1 %i.mz, label %.epil.preheader, label %.lr.ph510.new

.lr.ph510.new:                                    ; preds = %.lr.ph510
  %unroll_iter756 = and i64 %wide.trip.count581, 4294967294
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.lr.ph510.new
  %indvars.iv578 = phi i64 [ 0, %.lr.ph510.new ], [ %indvars.iv.next579.1, %bb.br ] ; 3 uses
  %niter757 = phi i64 [ 0, %.lr.ph510.new ], [ %niter757.next.1, %bb.br ]
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv578 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !41
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.nc
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !31
  %i.nf = ptrtoint ptr %i.ne to i64
  %i.ng = sub i64 %i.nf, %i.my
  %i.nh = lshr exact i64 %i.ng, 3
  %i.ni = trunc i64 %i.nh to i32
  store i32 %i.ni, ptr %i.na, align 4, !tbaa !41
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv578
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4 ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !41
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.nm
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !31
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = sub i64 %i.np, %i.my
  %i.nr = lshr exact i64 %i.nq, 3
  %i.ns = trunc i64 %i.nr to i32
  store i32 %i.ns, ptr %i.nk, align 4, !tbaa !41
  %indvars.iv.next579.1 = add nuw nsw i64 %indvars.iv578, 2 ; 2 uses
  %niter757.next.1 = add i64 %niter757, 2         ; 2 uses
  %niter757.ncmp.1 = icmp eq i64 %niter757.next.1, %unroll_iter756
  br i1 %niter757.ncmp.1, label %._crit_edge511.unr-lcssa, label %bb.br, !llvm.loop !78

._crit_edge511.unr-lcssa:                         ; preds = %bb.br
  %lcmp.mod754.not = icmp eq i64 %xtraiter753, 0
  br i1 %lcmp.mod754.not, label %._crit_edge511, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge511.unr-lcssa, %.lr.ph510
  %indvars.iv578.epil.init = phi i64 [ 0, %.lr.ph510 ], [ %indvars.iv.next579.1, %._crit_edge511.unr-lcssa ]
  %lcmp.mod755 = trunc i32 %.3284.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod755)
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv578.epil.init ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !41
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.nv
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !31
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = sub i64 %i.ny, %i.my
  %i.oa = lshr exact i64 %i.nz, 3
  %i.ob = trunc i64 %i.oa to i32
  store i32 %i.ob, ptr %i.nt, align 4, !tbaa !41
  br label %._crit_edge511

._crit_edge511:                                   ; preds = %._crit_edge511.unr-lcssa, %.epil.preheader
  %i.oc = icmp samesign ugt i32 %.3284.lcssa, 2
  br i1 %i.oc, label %.preheader465.preheader, label %._crit_edge511.thread

.preheader465.preheader:                          ; preds = %._crit_edge511
  %wide.trip.count586 = zext i32 %.3284.lcssa to i64 ; 3 uses
  br label %.preheader465

.preheader465:                                    ; preds = %.preheader465.preheader, %bb.bs
  %indvars.iv583 = phi i64 [ 1, %.preheader465.preheader ], [ %indvars.iv.next584, %bb.bs ] ; 4 uses
  %.0261515 = phi i32 [ 0, %.preheader465.preheader ], [ %i.oj, %bb.bs ]
  %.0263514 = phi i32 [ 0, %.preheader465.preheader ], [ %.1264, %bb.bs ] ; 3 uses
  %.0265513 = phi i32 [ 0, %.preheader465.preheader ], [ %spec.select360, %bb.bs ] ; 3 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv583 ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !41 ; 3 uses
  %i.of = getelementptr i8, ptr %i.od, i64 -4
  %i.og = load i32, ptr %i.of, align 4, !tbaa !41
  %i.oh = icmp slt i32 %i.og, %i.oe
  %i.oi = zext i1 %i.oh to i32
  %i.oj = add nuw nsw i32 %.0261515, %i.oi        ; 5 uses
  %i.ok = icmp samesign ult i32 %i.oj, 2
  %i.ol = add nsw i64 %indvars.iv583, -2
  %i.om = zext nneg i32 %i.oj to i64
  %.not339 = icmp slt i64 %i.ol, %i.om
  %or.cond359 = select i1 %i.ok, i1 true, i1 %.not339
  br i1 %or.cond359, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.preheader465
  %i.on = zext nneg i32 %.0265513 to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !41
  %i.oq = icmp slt i32 %i.oe, %i.op
  %i.or = trunc nuw nsw i64 %indvars.iv583 to i32 ; 2 uses
  %spec.select360 = select i1 %i.oq, i32 %i.or, i32 %.0265513 ; 2 uses
  %i.os = zext nneg i32 %.0263514 to i64
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.os
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !41
  %i.ov = icmp sgt i32 %i.oe, %i.ou
  %.1264 = select i1 %i.ov, i32 %i.or, i32 %.0263514 ; 2 uses
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond587.not = icmp eq i64 %indvars.iv.next584, %wide.trip.count586
  br i1 %exitcond587.not, label %bb.bt, label %.preheader465, !llvm.loop !79

bb.bt:                                            ; preds = %.preheader465, %bb.bs
  %.0265.lcssa = phi i32 [ %.0265513, %.preheader465 ], [ %spec.select360, %bb.bs ] ; 3 uses
  %.0263.lcssa = phi i32 [ %.0263514, %.preheader465 ], [ %.1264, %bb.bs ] ; 3 uses
  %i.ow = sub nsw i32 %.0263.lcssa, %.0265.lcssa
  %i.ox = call i32 @llvm.abs.i32(i32 %i.ow, i1 true) ; 2 uses
  %i.oy = icmp eq i32 %i.ox, 1
  %i.oz = add nsw i32 %.3284.lcssa, -1            ; 2 uses
  %i.pa = icmp eq i32 %i.ox, %i.oz
  %or.cond362 = select i1 %i.oy, i1 true, i1 %i.pa
  br i1 %or.cond362, label %bb.bu, label %._crit_edge511.thread

bb.bu:                                            ; preds = %bb.bt
  %i.pb = icmp samesign ugt i32 %i.oj, 1
  %i.pc = add nsw i32 %.3284.lcssa, -2
  %.not340 = icmp slt i32 %i.oj, %i.pc
  %or.cond363 = select i1 %i.pb, i1 %.not340, i1 false
  br i1 %or.cond363, label %._crit_edge511.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pd = add nuw nsw i32 %.0263.lcssa, 1
  %i.pe = urem i32 %i.pd, %.3284.lcssa
  %i.pf = icmp eq i32 %i.pe, %.0265.lcssa         ; 2 uses
  %i.pg = select i1 %i.pf, i32 %.0265.lcssa, i32 %.0263.lcssa ; 2 uses
  %.not463 = icmp eq i32 %i.pg, 0
  br i1 %.not463, label %._crit_edge511.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bv
  %i.ph = sext i32 %i.oz to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.bx
  %indvars.iv588 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next589, %bb.bx ] ; 4 uses
  %.0517 = phi i32 [ %i.pg, %.preheader.preheader ], [ %i.po, %bb.bx ] ; 2 uses
  %i.pi = zext nneg i32 %.0517 to i64
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.pi
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !41 ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv588
  store i32 %i.pk, ptr %i.pl, align 4, !tbaa !41
  %i.pm = add nuw nsw i32 %.0517, 1               ; 2 uses
  %i.pn = icmp slt i32 %i.pm, %.3284.lcssa
  %i.po = select i1 %i.pn, i32 %i.pm, i32 0       ; 2 uses
  %i.pp = icmp slt i64 %indvars.iv588, %i.ph
  br i1 %i.pp, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.preheader
  %i.pq = zext nneg i32 %i.po to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !41
  %i.pt = icmp sge i32 %i.pk, %i.ps
  %.not341 = xor i1 %i.pf, %i.pt
  br i1 %.not341, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.preheader, %bb.bw
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1 ; 2 uses
  %exitcond592.not = icmp eq i64 %indvars.iv.next589, %wide.trip.count586
  br i1 %exitcond592.not, label %.thread, label %.preheader, !llvm.loop !80

bb.by:                                            ; preds = %bb.bw
  %i.pu = trunc nuw nsw i64 %indvars.iv588 to i32
  %i.pv = icmp eq i32 %.3284.lcssa, %i.pu
  br i1 %i.pv, label %.thread, label %._crit_edge511.thread

.thread:                                          ; preds = %bb.bx, %bb.by
  %i.pw = shl nuw nsw i64 %wide.trip.count586, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr nonnull align 4 %i.bg, i64 %i.pw, i1 false)
  br label %._crit_edge511.thread

._crit_edge511.thread:                            ; preds = %.loopexit468, %._crit_edge511, %bb.bv, %.thread, %bb.by, %bb.bu, %bb.bt, %bb.ao
  %.4285 = phi i32 [ 1, %bb.ao ], [ %.3284.lcssa, %bb.bt ], [ %.3284.lcssa, %bb.bu ], [ %.3284.lcssa, %bb.by ], [ %.3284.lcssa, %.thread ], [ %.3284.lcssa, %bb.bv ], [ %.3284.lcssa, %._crit_edge511 ], [ 0, %.loopexit468 ] ; 5 uses
  br i1 %i.ah, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge511.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef %.4285, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.bf, i64 noundef 0)
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.cb unwind label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.cm

bb.cc:                                            ; preds = %bb.bz
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.ca
  %i.py = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #19
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn342 = phi { ptr, i32 } [ %i.py, %bb.cd ], [ %i.px, %bb.cc ]
end_hunk_0
