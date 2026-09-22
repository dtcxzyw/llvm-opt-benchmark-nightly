Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convhull?download=true
inline.NumInlined: 336
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv10convexHullERKNS_11_InputArrayERKNS_12_OutputArrayEbb:bb.a
bb.bl:                                            ; preds = %bb.bk
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !34
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !34
  %i.iy = icmp eq i32 %i.iv, %i.ix
  br i1 %i.iy, label %bb.bm, label %.thread450

bb.bm:                                            ; preds = %bb.bl, %bb.bi
  %i.iz = call i32 @llvm.smin.i32(i32 %.0441, i32 2)
  %i.ja = call i32 @llvm.smin.i32(i32 %.0438, i32 2)
  br label %.thread450

.thread450:                                       ; preds = %bb.bg, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bd
  %.1442 = phi i32 [ %i.iz, %bb.bm ], [ %.0441, %bb.bl ], [ %.0441, %bb.bk ], [ %.0441, %bb.bj ], [ %.0441, %bb.bd ], [ %.0441, %bb.bg ] ; 3 uses
  %.1439 = phi i32 [ %i.ja, %bb.bm ], [ %.0438, %bb.bl ], [ %.0438, %bb.bk ], [ %.0438, %bb.bj ], [ %.0438, %bb.bd ], [ %.0438, %bb.bg ] ; 3 uses
  %i.jb = icmp sgt i32 %.1442, 1
  br i1 %i.jb, label %.lr.ph499.preheader, label %.preheader469

.lr.ph499.preheader:                              ; preds = %.thread450
  %i.jc = add nsw i32 %.1442, -1
  %i.jd = zext i32 %.1282.lcssa625 to i64         ; 5 uses
  %wide.trip.count565 = zext i32 %i.jc to i64     ; 5 uses
  %min.iters.check676 = icmp ult i32 %.1442, 13
  br i1 %min.iters.check676, label %.lr.ph499.preheader717, label %vector.memcheck672

vector.memcheck672:                               ; preds = %.lr.ph499.preheader
  %i.je = shl nuw nsw i64 %i.jd, 2
  %i.jf = add i64 %i.je, %i.bi
  %i.jg = sub i64 %.0443673, %i.jf
  %diff.check674 = icmp ugt i64 %i.jg, -32
  br i1 %diff.check674, label %.lr.ph499.preheader717, label %vector.ph677

vector.ph677:                                     ; preds = %vector.memcheck672
  %n.vec678 = and i64 %wide.trip.count565, 2147483640 ; 4 uses
  %i.jh = add nuw nsw i64 %n.vec678, %i.jd        ; 2 uses
  %invariant.gep766 = getelementptr [4 x i8], ptr %i.bg, i64 %i.jd
  br label %vector.body679

vector.body679:                                   ; preds = %vector.body679, %vector.ph677
  %index680 = phi i64 [ 0, %vector.ph677 ], [ %index.next683, %vector.body679 ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %index680 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %wide.load681 = load <4 x i32>, ptr %i.ji, align 4, !tbaa !41
  %wide.load682 = load <4 x i32>, ptr %i.jj, align 4, !tbaa !41
  %gep767 = getelementptr [4 x i8], ptr %invariant.gep766, i64 %index680 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %gep767, i64 16
  store <4 x i32> %wide.load681, ptr %gep767, align 4, !tbaa !41
  store <4 x i32> %wide.load682, ptr %i.jk, align 4, !tbaa !41
  %index.next683 = add nuw i64 %index680, 8       ; 2 uses
  %i.jl = icmp eq i64 %index.next683, %n.vec678
  br i1 %i.jl, label %middle.block684, label %vector.body679, !llvm.loop !67

middle.block684:                                  ; preds = %vector.body679
  %cmp.n685 = icmp eq i64 %n.vec678, %wide.trip.count565
  br i1 %cmp.n685, label %.preheader469.loopexit, label %.lr.ph499.preheader717

.lr.ph499.preheader717:                           ; preds = %vector.memcheck672, %.lr.ph499.preheader, %middle.block684
  %indvars.iv560.ph = phi i64 [ 0, %vector.memcheck672 ], [ 0, %.lr.ph499.preheader ], [ %n.vec678, %middle.block684 ] ; 3 uses
  %indvars.iv558.ph = phi i64 [ %i.jd, %vector.memcheck672 ], [ %i.jd, %.lr.ph499.preheader ], [ %i.jh, %middle.block684 ] ; 2 uses
  %xtraiter742 = and i64 %wide.trip.count565, 3   ; 2 uses
  %lcmp.mod743.not = icmp eq i64 %xtraiter742, 0
  br i1 %lcmp.mod743.not, label %.lr.ph499.prol.loopexit, label %.lr.ph499.prol

.lr.ph499.prol:                                   ; preds = %.lr.ph499.preheader717, %.lr.ph499.prol
  %indvars.iv560.prol = phi i64 [ %indvars.iv.next561.prol, %.lr.ph499.prol ], [ %indvars.iv560.ph, %.lr.ph499.preheader717 ] ; 2 uses
  %indvars.iv558.prol = phi i64 [ %indvars.iv.next559.prol, %.lr.ph499.prol ], [ %indvars.iv558.ph, %.lr.ph499.preheader717 ] ; 2 uses
  %prol.iter744 = phi i64 [ %prol.iter744.next, %.lr.ph499.prol ], [ 0, %.lr.ph499.preheader717 ]
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560.prol
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !41
  %indvars.iv.next559.prol = add nuw nsw i64 %indvars.iv558.prol, 1 ; 3 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv558.prol
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !41
  %indvars.iv.next561.prol = add nuw nsw i64 %indvars.iv560.prol, 1 ; 2 uses
  %prol.iter744.next = add i64 %prol.iter744, 1   ; 2 uses
  %prol.iter744.cmp.not = icmp eq i64 %prol.iter744.next, %xtraiter742
  br i1 %prol.iter744.cmp.not, label %.lr.ph499.prol.loopexit, label %.lr.ph499.prol, !llvm.loop !68

.lr.ph499.prol.loopexit:                          ; preds = %.lr.ph499.prol, %.lr.ph499.preheader717
  %indvars.iv.next559.lcssa718.unr = phi i64 [ poison, %.lr.ph499.preheader717 ], [ %indvars.iv.next559.prol, %.lr.ph499.prol ]
  %indvars.iv560.unr = phi i64 [ %indvars.iv560.ph, %.lr.ph499.preheader717 ], [ %indvars.iv.next561.prol, %.lr.ph499.prol ]
  %indvars.iv558.unr = phi i64 [ %indvars.iv558.ph, %.lr.ph499.preheader717 ], [ %indvars.iv.next559.prol, %.lr.ph499.prol ]
  %i.jp = sub nsw i64 %indvars.iv560.ph, %wide.trip.count565
  %i.jq = icmp ugt i64 %i.jp, -4
  br i1 %i.jq, label %.preheader469.loopexit, label %.lr.ph499

.preheader469.loopexit:                           ; preds = %.lr.ph499.prol.loopexit, %.lr.ph499, %middle.block684
  %indvars.iv.next559.lcssa = phi i64 [ %i.jh, %middle.block684 ], [ %indvars.iv.next559.lcssa718.unr, %.lr.ph499.prol.loopexit ], [ %indvars.iv.next559.3, %.lr.ph499 ]
  %i.jr = trunc nuw i64 %indvars.iv.next559.lcssa to i32
  br label %.preheader469

.preheader469:                                    ; preds = %.preheader469.loopexit, %.thread450
  %.2283.lcssa = phi i32 [ %.1282.lcssa625, %.thread450 ], [ %i.jr, %.preheader469.loopexit ] ; 2 uses
  %i.js = icmp sgt i32 %.1439, 1
  br i1 %i.js, label %.lr.ph503.preheader, label %._crit_edge504

.lr.ph503.preheader:                              ; preds = %.preheader469
  %i.jt = zext i32 %.2283.lcssa to i64            ; 5 uses
  %i.ju = zext nneg i32 %.1439 to i64             ; 6 uses
  %i.jv = add nsw i64 %i.ju, -1                   ; 2 uses
  %min.iters.check698 = icmp ult i32 %.1439, 25
  br i1 %min.iters.check698, label %.lr.ph503.preheader715, label %vector.memcheck688

vector.memcheck688:                               ; preds = %.lr.ph503.preheader
  %i.jw = shl nuw nsw i64 %i.jt, 2                ; 2 uses
  %scevgep689 = getelementptr i8, ptr %i.bg, i64 %i.jw
  %i.jx = shl nuw nsw i64 %i.ju, 2                ; 2 uses
  %i.jy = getelementptr i8, ptr %i.bg, i64 %i.jx
  %i.jz = getelementptr i8, ptr %i.jy, i64 %i.jw
  %scevgep691 = getelementptr i8, ptr %i.jz, i64 -4
  %scevgep692 = getelementptr i8, ptr %.0440, i64 4
  %scevgep693 = getelementptr i8, ptr %.0440, i64 %i.jx
  %bound0694 = icmp ult ptr %scevgep689, %scevgep693
  %bound1695 = icmp ult ptr %scevgep692, %scevgep691
  %found.conflict696 = and i1 %bound0694, %bound1695
  br i1 %found.conflict696, label %.lr.ph503.preheader715, label %vector.ph699

vector.ph699:                                     ; preds = %vector.memcheck688
  %n.vec700 = and i64 %i.jv, -8                   ; 4 uses
  %i.ka = sub nsw i64 %i.ju, %n.vec700
  %i.kb = add nsw i64 %n.vec700, %i.jt            ; 2 uses
  %invariant.gep768 = getelementptr [4 x i8], ptr %.0440, i64 %i.ju
  %invariant.gep770 = getelementptr [4 x i8], ptr %i.bg, i64 %i.jt
  br label %vector.body701

vector.body701:                                   ; preds = %vector.body701, %vector.ph699
  %index702 = phi i64 [ 0, %vector.ph699 ], [ %index.next707, %vector.body701 ] ; 3 uses
  %i.kc = xor i64 %index702, -1
  %gep769 = getelementptr [4 x i8], ptr %invariant.gep768, i64 %i.kc ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %gep769, i64 -12
  %i.ke = getelementptr inbounds i8, ptr %gep769, i64 -28
  %wide.load703 = load <4 x i32>, ptr %i.kd, align 4, !tbaa !41, !alias.scope !99
  %wide.load704 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !41, !alias.scope !99
  %reverse705 = shufflevector <4 x i32> %wide.load703, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse706 = shufflevector <4 x i32> %wide.load704, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %gep771 = getelementptr [4 x i8], ptr %invariant.gep770, i64 %index702 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %gep771, i64 16
  store <4 x i32> %reverse705, ptr %gep771, align 4, !tbaa !41, !alias.scope !100, !noalias !99
  store <4 x i32> %reverse706, ptr %i.kf, align 4, !tbaa !41, !alias.scope !100, !noalias !99
  %index.next707 = add nuw i64 %index702, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next707, %n.vec700
  br i1 %i.kg, label %middle.block708, label %vector.body701, !llvm.loop !72

middle.block708:                                  ; preds = %vector.body701
  %cmp.n709 = icmp eq i64 %i.jv, %n.vec700
  br i1 %cmp.n709, label %._crit_edge504.loopexit, label %.lr.ph503.preheader715

.lr.ph503.preheader715:                           ; preds = %vector.memcheck688, %.lr.ph503.preheader, %middle.block708
  %indvars.iv569.ph = phi i64 [ %i.ju, %vector.memcheck688 ], [ %i.ju, %.lr.ph503.preheader ], [ %i.ka, %middle.block708 ]
  %indvars.iv567.ph = phi i64 [ %i.jt, %vector.memcheck688 ], [ %i.jt, %.lr.ph503.preheader ], [ %i.kb, %middle.block708 ]
  br label %.lr.ph503

.lr.ph499:                                        ; preds = %.lr.ph499.prol.loopexit, %.lr.ph499
  %indvars.iv560 = phi i64 [ %indvars.iv.next561.3, %.lr.ph499 ], [ %indvars.iv560.unr, %.lr.ph499.prol.loopexit ] ; 5 uses
  %indvars.iv558 = phi i64 [ %indvars.iv.next559.3, %.lr.ph499 ], [ %indvars.iv558.unr, %.lr.ph499.prol.loopexit ] ; 5 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !41
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv558
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !41
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !41
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv558
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  store i32 %i.km, ptr %i.ko, align 4, !tbaa !41
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !41
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv558
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store i32 %i.kr, ptr %i.kt, align 4, !tbaa !41
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !41
  %indvars.iv.next559.3 = add nuw nsw i64 %indvars.iv558, 4 ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv558
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  store i32 %i.kw, ptr %i.ky, align 4, !tbaa !41
  %indvars.iv.next561.3 = add nuw nsw i64 %indvars.iv560, 4 ; 2 uses
  %exitcond566.not.3 = icmp eq i64 %indvars.iv.next561.3, %wide.trip.count565
  br i1 %exitcond566.not.3, label %.preheader469.loopexit, label %.lr.ph499, !llvm.loop !73

.lr.ph503:                                        ; preds = %.lr.ph503.preheader715, %.lr.ph503
  %indvars.iv569 = phi i64 [ %indvars.iv.next570, %.lr.ph503 ], [ %indvars.iv569.ph, %.lr.ph503.preheader715 ] ; 2 uses
  %indvars.iv567 = phi i64 [ %indvars.iv.next568, %.lr.ph503 ], [ %indvars.iv567.ph, %.lr.ph503.preheader715 ] ; 2 uses
  %indvars.iv.next570 = add nsw i64 %indvars.iv569, -1 ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.0440, i64 %indvars.iv.next570
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !41
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv567
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !41
  %i.lc = icmp samesign ugt i64 %indvars.iv569, 2
  br i1 %i.lc, label %.lr.ph503, label %._crit_edge504.loopexit, !llvm.loop !74

._crit_edge504.loopexit:                          ; preds = %.lr.ph503, %middle.block708
  %indvars.iv.next568.lcssa = phi i64 [ %i.kb, %middle.block708 ], [ %indvars.iv.next568, %.lr.ph503 ]
  %i.ld = trunc nuw i64 %indvars.iv.next568.lcssa to i32
  br label %._crit_edge504

._crit_edge504:                                   ; preds = %._crit_edge504.loopexit, %.preheader469
  %.3284.lcssa = phi i32 [ %.2283.lcssa, %.preheader469 ], [ %i.ld, %._crit_edge504.loopexit ] ; 20 uses
  %i.le = icmp eq i32 %.3284.lcssa, 0             ; 2 uses
  %or.cond522.not = select i1 %i.ai, i1 true, i1 %i.le
  br i1 %or.cond522.not, label %.loopexit468, label %.lr.ph507.preheader

.lr.ph507.preheader:                              ; preds = %._crit_edge504
  %i.lf = zext nneg i32 %i.o to i64               ; 2 uses
  br label %.lr.ph507

.lr.ph507:                                        ; preds = %.lr.ph507.preheader, %.loopexit
  %.7506 = phi i32 [ %19, %.loopexit ], [ 0, %.lr.ph507.preheader ] ; 4 uses
  %i.lg = icmp eq i32 %.7506, 0
  %17 = select i1 %i.lg, i32 %.3284.lcssa, i32 %.7506
  %18 = zext nneg i32 %17 to i64
  %i.lh = getelementptr [4 x i8], ptr %i.bg, i64 %18
  %i.li = getelementptr i8, ptr %i.lh, i64 -4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !41
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.lk
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !31 ; 4 uses
  %19 = add nuw i32 %.7506, 1                     ; 4 uses
  %i.ln = icmp eq i32 %19, %.3284.lcssa
  %20 = select i1 %i.ln, i32 0, i32 %19
  %21 = sext i32 %20 to i64
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %21
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !41
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.lq
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !31 ; 4 uses
  %22 = sext i32 %.7506 to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %22 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !41
  %i.lv = sext i32 %i.lu to i64                   ; 2 uses
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.lv
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !31 ; 5 uses
  %i.ly = icmp ult ptr %i.lm, %i.lx
  %i.lz = icmp ult ptr %i.lx, %i.ls
  %or.cond355 = select i1 %i.ly, i1 %i.lz, i1 false
  br i1 %or.cond355, label %.loopexit, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph507
  %i.ma = icmp ugt ptr %i.lm, %i.lx
  %i.mb = icmp ugt ptr %i.lx, %i.ls
  %or.cond356 = select i1 %i.ma, i1 %i.mb, i1 false
  br i1 %or.cond356, label %.loopexit, label %.preheader466

.preheader466:                                    ; preds = %bb.bn
  %indvars.iv.next575637 = add nsw i64 %i.lv, 1   ; 2 uses
  %i.mc = icmp slt i64 %indvars.iv.next575637, %i.lf
  br i1 %i.mc, label %.lr.ph639.preheader, label %.loopexit

.lr.ph639.preheader:                              ; preds = %.preheader466
  %i.md = load <2 x i32>, ptr %i.lx, align 4
  br label %.lr.ph639

bb.bo:                                            ; preds = %bb.bq
  %indvars.iv.next575 = add nsw i64 %indvars.iv.next575638, 1 ; 2 uses
  %i.me = icmp slt i64 %indvars.iv.next575, %i.lf
  br i1 %i.me, label %.lr.ph639, label %.loopexit, !llvm.loop !75

.lr.ph639:                                        ; preds = %.lr.ph639.preheader, %bb.bo
  %indvars.iv.next575638 = phi i64 [ %indvars.iv.next575, %bb.bo ], [ %indvars.iv.next575637, %.lr.ph639.preheader ] ; 3 uses
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv.next575638
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !31 ; 5 uses
  %i.mh = load <2 x i32>, ptr %i.mg, align 4
  %i.mi = icmp eq <2 x i32> %i.md, %i.mh          ; 2 uses
  %i.mj = extractelement <2 x i1> %i.mi, i64 0
  %i.mk = extractelement <2 x i1> %i.mi, i64 1
  %i.ml = select i1 %i.mj, i1 %i.mk, i1 false
  br i1 %i.ml, label %bb.bp, label %.loopexit

bb.bp:                                            ; preds = %.lr.ph639
  %i.mm = icmp ult ptr %i.lm, %i.mg
  %i.mn = icmp ult ptr %i.mg, %i.ls
  %or.cond357 = select i1 %i.mm, i1 %i.mn, i1 false
  br i1 %or.cond357, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mo = icmp ugt ptr %i.lm, %i.mg
  %i.mp = icmp ugt ptr %i.mg, %i.ls
  %or.cond358 = select i1 %i.mo, i1 %i.mp, i1 false
  br i1 %or.cond358, label %bb.br, label %bb.bo, !llvm.loop !75

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.mq = trunc nsw i64 %indvars.iv.next575638 to i32
  store i32 %i.mq, ptr %i.lt, align 4, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph639, %bb.bo, %.preheader466, %bb.br, %.lr.ph507, %bb.bn
  %exitcond577.not = icmp eq i32 %19, %.3284.lcssa
  br i1 %exitcond577.not, label %.loopexit468, label %.lr.ph507, !llvm.loop !76

.loopexit468:                                     ; preds = %.loopexit, %._crit_edge504
  br i1 %i.le, label %._crit_edge511.thread, label %.lr.ph510

.lr.ph510:                                        ; preds = %.loopexit468
  %i.mr = ptrtoint ptr %i.bl to i64               ; 3 uses
  %wide.trip.count581 = zext i32 %.3284.lcssa to i64 ; 2 uses
  %xtraiter745 = and i64 %wide.trip.count581, 1
  %i.ms = icmp eq i32 %.3284.lcssa, 1
  br i1 %i.ms, label %.epil.preheader, label %.lr.ph510.new

.lr.ph510.new:                                    ; preds = %.lr.ph510
  %unroll_iter748 = and i64 %wide.trip.count581, 4294967294
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.lr.ph510.new
  %indvars.iv578 = phi i64 [ 0, %.lr.ph510.new ], [ %indvars.iv.next579.1, %bb.bs ] ; 3 uses
  %niter749 = phi i64 [ 0, %.lr.ph510.new ], [ %niter749.next.1, %bb.bs ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv578 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !41
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.mv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !31
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = sub i64 %i.my, %i.mr
  %i.na = lshr exact i64 %i.mz, 3
  %i.nb = trunc i64 %i.na to i32
  store i32 %i.nb, ptr %i.mt, align 4, !tbaa !41
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv578
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !41
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.nf
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !31
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = sub i64 %i.ni, %i.mr
  %i.nk = lshr exact i64 %i.nj, 3
  %i.nl = trunc i64 %i.nk to i32
  store i32 %i.nl, ptr %i.nd, align 4, !tbaa !41
  %indvars.iv.next579.1 = add nuw nsw i64 %indvars.iv578, 2 ; 2 uses
  %niter749.next.1 = add i64 %niter749, 2         ; 2 uses
  %niter749.ncmp.1 = icmp eq i64 %niter749.next.1, %unroll_iter748
  br i1 %niter749.ncmp.1, label %._crit_edge511.unr-lcssa, label %bb.bs, !llvm.loop !77

._crit_edge511.unr-lcssa:                         ; preds = %bb.bs
  %lcmp.mod746.not = icmp eq i64 %xtraiter745, 0
  br i1 %lcmp.mod746.not, label %._crit_edge511, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge511.unr-lcssa, %.lr.ph510
  %indvars.iv578.epil.init = phi i64 [ 0, %.lr.ph510 ], [ %indvars.iv.next579.1, %._crit_edge511.unr-lcssa ]
  %lcmp.mod747 = trunc i32 %.3284.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod747)
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv578.epil.init ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !41
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.no
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !31
  %i.nr = ptrtoint ptr %i.nq to i64
  %i.ns = sub i64 %i.nr, %i.mr
  %i.nt = lshr exact i64 %i.ns, 3
  %i.nu = trunc i64 %i.nt to i32
  store i32 %i.nu, ptr %i.nm, align 4, !tbaa !41
  br label %._crit_edge511

._crit_edge511:                                   ; preds = %._crit_edge511.unr-lcssa, %.epil.preheader
  %i.nv = icmp samesign ugt i32 %.3284.lcssa, 2
  br i1 %i.nv, label %.preheader465.preheader, label %._crit_edge511.thread

.preheader465.preheader:                          ; preds = %._crit_edge511
  %wide.trip.count586 = zext i32 %.3284.lcssa to i64 ; 3 uses
  br label %.preheader465

.preheader465:                                    ; preds = %.preheader465.preheader, %bb.bt
  %indvars.iv583 = phi i64 [ 1, %.preheader465.preheader ], [ %indvars.iv.next584, %bb.bt ] ; 4 uses
  %.0261515 = phi i32 [ 0, %.preheader465.preheader ], [ %i.oc, %bb.bt ]
  %.0263514 = phi i32 [ 0, %.preheader465.preheader ], [ %.1264, %bb.bt ] ; 3 uses
  %.0265513 = phi i32 [ 0, %.preheader465.preheader ], [ %spec.select360, %bb.bt ] ; 3 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv583 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !41 ; 3 uses
  %i.ny = getelementptr i8, ptr %i.nw, i64 -4
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !41
  %i.oa = icmp slt i32 %i.nz, %i.nx
  %i.ob = zext i1 %i.oa to i32
  %i.oc = add nuw nsw i32 %.0261515, %i.ob        ; 5 uses
  %i.od = icmp samesign ult i32 %i.oc, 2
  %i.oe = add nsw i64 %indvars.iv583, -2
  %i.of = zext nneg i32 %i.oc to i64
  %.not339 = icmp slt i64 %i.oe, %i.of
  %or.cond359 = select i1 %i.od, i1 true, i1 %.not339
  br i1 %or.cond359, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.preheader465
  %i.og = zext nneg i32 %.0265513 to i64
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !41
  %i.oj = icmp slt i32 %i.nx, %i.oi
  %i.ok = trunc nuw nsw i64 %indvars.iv583 to i32 ; 2 uses
  %spec.select360 = select i1 %i.oj, i32 %i.ok, i32 %.0265513 ; 2 uses
  %i.ol = zext nneg i32 %.0263514 to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 4, !tbaa !41
  %i.oo = icmp sgt i32 %i.nx, %i.on
  %.1264 = select i1 %i.oo, i32 %i.ok, i32 %.0263514 ; 2 uses
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond587.not = icmp eq i64 %indvars.iv.next584, %wide.trip.count586
  br i1 %exitcond587.not, label %bb.bu, label %.preheader465, !llvm.loop !78

bb.bu:                                            ; preds = %.preheader465, %bb.bt
  %.0265.lcssa = phi i32 [ %.0265513, %.preheader465 ], [ %spec.select360, %bb.bt ] ; 3 uses
  %.0263.lcssa = phi i32 [ %.0263514, %.preheader465 ], [ %.1264, %bb.bt ] ; 3 uses
  %i.op = sub nsw i32 %.0263.lcssa, %.0265.lcssa
  %i.oq = call i32 @llvm.abs.i32(i32 %i.op, i1 true) ; 2 uses
  %i.or = icmp eq i32 %i.oq, 1
  %i.os = add nsw i32 %.3284.lcssa, -1            ; 2 uses
  %i.ot = icmp eq i32 %i.oq, %i.os
  %or.cond362 = select i1 %i.or, i1 true, i1 %i.ot
  br i1 %or.cond362, label %bb.bv, label %._crit_edge511.thread

bb.bv:                                            ; preds = %bb.bu
  %i.ou = icmp samesign ugt i32 %i.oc, 1
  %i.ov = add nsw i32 %.3284.lcssa, -2
  %.not340 = icmp slt i32 %i.oc, %i.ov
  %or.cond363 = select i1 %i.ou, i1 %.not340, i1 false
  br i1 %or.cond363, label %._crit_edge511.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ow = add nuw nsw i32 %.0263.lcssa, 1
  %i.ox = urem i32 %i.ow, %.3284.lcssa
  %i.oy = icmp eq i32 %i.ox, %.0265.lcssa         ; 2 uses
  %i.oz = select i1 %i.oy, i32 %.0265.lcssa, i32 %.0263.lcssa ; 2 uses
  %.not463 = icmp eq i32 %i.oz, 0
  br i1 %.not463, label %._crit_edge511.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bw
  %i.pa = sext i32 %i.os to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.by
  %indvars.iv588 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next589, %bb.by ] ; 4 uses
  %.0517 = phi i32 [ %i.oz, %.preheader.preheader ], [ %i.ph, %bb.by ] ; 2 uses
  %i.pb = zext nneg i32 %.0517 to i64
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !41 ; 2 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv588
  store i32 %i.pd, ptr %i.pe, align 4, !tbaa !41
  %i.pf = add nuw nsw i32 %.0517, 1               ; 2 uses
  %i.pg = icmp slt i32 %i.pf, %.3284.lcssa
  %i.ph = select i1 %i.pg, i32 %i.pf, i32 0       ; 2 uses
  %i.pi = icmp slt i64 %indvars.iv588, %i.pa
  br i1 %i.pi, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.preheader
  %i.pj = zext nneg i32 %i.ph to i64
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.pj
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !41
  %i.pm = icmp sge i32 %i.pd, %i.pl
  %.not341 = xor i1 %i.oy, %i.pm
  br i1 %.not341, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.preheader, %bb.bx
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1 ; 2 uses
  %exitcond592.not = icmp eq i64 %indvars.iv.next589, %wide.trip.count586
  br i1 %exitcond592.not, label %.thread, label %.preheader, !llvm.loop !79

bb.bz:                                            ; preds = %bb.bx
  %i.pn = trunc nuw nsw i64 %indvars.iv588 to i32
  %i.po = icmp eq i32 %.3284.lcssa, %i.pn
  br i1 %i.po, label %.thread, label %._crit_edge511.thread

.thread:                                          ; preds = %bb.by, %bb.bz
  %i.pp = shl nuw nsw i64 %wide.trip.count586, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr nonnull align 4 %i.bh, i64 %i.pp, i1 false)
  br label %._crit_edge511.thread

._crit_edge511.thread:                            ; preds = %.loopexit468, %._crit_edge511, %bb.bw, %.thread, %bb.bz, %bb.bv, %bb.bu, %bb.ap
  %.4285 = phi i32 [ 1, %bb.ap ], [ %.3284.lcssa, %bb.bu ], [ %.3284.lcssa, %bb.bv ], [ %.3284.lcssa, %bb.bz ], [ %.3284.lcssa, %.thread ], [ %.3284.lcssa, %bb.bw ], [ %.3284.lcssa, %._crit_edge511 ], [ 0, %.loopexit468 ] ; 6 uses
  br i1 %i.ai, label %bb.cg, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge511.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef %.4285, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.bg, i64 noundef 0)
          to label %bb.cb unwind label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.cm

bb.cd:                                            ; preds = %bb.ca
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cb
  %i.pr = landingpad { ptr, i32 }
end_hunk_0
