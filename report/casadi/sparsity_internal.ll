Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sparsity_internal?download=true
inline.NumInlined: 4371
inline.NumDeleted: 628
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZNK6casadi16SparsityInternal6dmpermERSt6vectorIxSaIxEES4_S4_S4_S4_S4_:bb.a
  %.0149364.epil.init = phi i64 [ 0, %.lr.ph365 ], [ %i.wh, %.lr.ph367.unr-lcssa ]
  %lcmp.mod681 = icmp ne i64 %xtraiter678, 0
  call void @llvm.assume(i1 %lcmp.mod681)
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.epil.preheader677
  %.0149364.epil = phi i64 [ %.0149364.epil.init, %.epil.preheader677 ], [ %i.vf, %bb.co ] ; 3 uses
  %epil.iter679 = phi i64 [ 0, %.epil.preheader677 ], [ %epil.iter679.next, %bb.co ]
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %.0149364.epil
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !43
  %i.vc = load i64, ptr %i.to, align 8, !tbaa !43
  %i.vd = getelementptr [8 x i8], ptr %i.tp, i64 %.0149364.epil
  %i.ve = getelementptr [8 x i8], ptr %i.vd, i64 %i.vc
  store i64 %i.vb, ptr %i.ve, align 8, !tbaa !43
  %i.vf = add nuw nsw i64 %.0149364.epil, 1
  %epil.iter679.next = add i64 %epil.iter679, 1   ; 2 uses
  %epil.iter679.cmp.not = icmp eq i64 %epil.iter679.next, %xtraiter678
  br i1 %epil.iter679.cmp.not, label %.lr.ph367, label %bb.co, !llvm.loop !313

.lr.ph367:                                        ; preds = %bb.co, %.lr.ph367.unr-lcssa
  %.pre402.pre536 = load ptr, ptr %3, align 8, !tbaa !53 ; 12 uses
  %i.vg = load ptr, ptr %5, align 8, !tbaa !53
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8 ; 5 uses
  %i.vi = load ptr, ptr %1, align 8, !tbaa !53    ; 5 uses
  %xtraiter685 = and i64 %i.ln, 3                 ; 3 uses
  %i.vj = icmp ult i64 %i.tc, 3
  br i1 %i.vj, label %.epil.preheader684, label %.lr.ph367.new

.lr.ph367.new:                                    ; preds = %.lr.ph367
  %unroll_iter689 = and i64 %i.ln, 9223372036854775804
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cp, %.lr.ph365.new
  %.0149364 = phi i64 [ 0, %.lr.ph365.new ], [ %i.wh, %bb.cp ] ; 6 uses
  %niter683 = phi i64 [ 0, %.lr.ph365.new ], [ %niter683.next.3, %bb.cp ]
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %.0149364
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !43
  %i.vm = load i64, ptr %i.to, align 8, !tbaa !43
  %i.vn = getelementptr [8 x i8], ptr %i.tp, i64 %.0149364
  %i.vo = getelementptr [8 x i8], ptr %i.vn, i64 %i.vm
  store i64 %i.vl, ptr %i.vo, align 8, !tbaa !43
  %i.vp = or disjoint i64 %.0149364, 1            ; 2 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.vp
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !43
  %i.vs = load i64, ptr %i.to, align 8, !tbaa !43
  %i.vt = getelementptr [8 x i8], ptr %i.tp, i64 %i.vp
  %i.vu = getelementptr [8 x i8], ptr %i.vt, i64 %i.vs
  store i64 %i.vr, ptr %i.vu, align 8, !tbaa !43
  %i.vv = or disjoint i64 %.0149364, 2            ; 2 uses
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.vv
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !43
  %i.vy = load i64, ptr %i.to, align 8, !tbaa !43
  %i.vz = getelementptr [8 x i8], ptr %i.tp, i64 %i.vv
  %i.wa = getelementptr [8 x i8], ptr %i.vz, i64 %i.vy
  store i64 %i.vx, ptr %i.wa, align 8, !tbaa !43
  %i.wb = or disjoint i64 %.0149364, 3            ; 2 uses
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.wb
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !43
  %i.we = load i64, ptr %i.to, align 8, !tbaa !43
  %i.wf = getelementptr [8 x i8], ptr %i.tp, i64 %i.wb
  %i.wg = getelementptr [8 x i8], ptr %i.wf, i64 %i.we
  store i64 %i.wd, ptr %i.wg, align 8, !tbaa !43
  %i.wh = add nuw nsw i64 %.0149364, 4            ; 2 uses
  %niter683.next.3 = add i64 %niter683, 4         ; 2 uses
  %niter683.ncmp.3 = icmp eq i64 %niter683.next.3, %unroll_iter682
  br i1 %niter683.ncmp.3, label %.lr.ph367.unr-lcssa, label %bb.cp, !llvm.loop !314

.preheader:                                       ; preds = %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit260
  %.pre402.pre = load ptr, ptr %3, align 8, !tbaa !53
  br label %._crit_edge370

.lr.ph369.unr-lcssa:                              ; preds = %bb.cr
  %lcmp.mod687.not = icmp eq i64 %xtraiter685, 0
  br i1 %lcmp.mod687.not, label %.lr.ph369, label %.epil.preheader684

.epil.preheader684:                               ; preds = %.lr.ph369.unr-lcssa, %.lr.ph367
  %.0148366.epil.init = phi i64 [ 0, %.lr.ph367 ], [ %i.xz, %.lr.ph369.unr-lcssa ]
  %lcmp.mod688 = icmp ne i64 %xtraiter685, 0
  call void @llvm.assume(i1 %lcmp.mod688)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %.epil.preheader684
  %.0148366.epil = phi i64 [ %.0148366.epil.init, %.epil.preheader684 ], [ %i.wp, %bb.cq ] ; 3 uses
  %epil.iter686 = phi i64 [ 0, %.epil.preheader684 ], [ %epil.iter686.next, %bb.cq ]
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %.0148366.epil
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !43
  %i.wk = load i64, ptr %i.vh, align 8, !tbaa !43
  %i.wl = getelementptr [8 x i8], ptr %i.vi, i64 %i.wj
  %i.wm = getelementptr [8 x i8], ptr %i.wl, i64 %i.wk
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !43
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre536, i64 %.0148366.epil
  store i64 %i.wn, ptr %i.wo, align 8, !tbaa !43
  %i.wp = add nuw nsw i64 %.0148366.epil, 1
  %epil.iter686.next = add i64 %epil.iter686, 1   ; 2 uses
  %epil.iter686.cmp.not = icmp eq i64 %epil.iter686.next, %xtraiter685
  br i1 %epil.iter686.cmp.not, label %.lr.ph369, label %bb.cq, !llvm.loop !315

.lr.ph369:                                        ; preds = %bb.cq, %.lr.ph369.unr-lcssa
  %i.wq = load ptr, ptr %5, align 8, !tbaa !53
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 8 ; 5 uses
  %i.ws = load ptr, ptr %1, align 8, !tbaa !53    ; 5 uses
  %xtraiter692 = and i64 %i.ln, 3                 ; 3 uses
  %i.wt = icmp ult i64 %i.tc, 3
  br i1 %i.wt, label %.epil.preheader691, label %.lr.ph369.new

.lr.ph369.new:                                    ; preds = %.lr.ph369
  %unroll_iter696 = and i64 %i.ln, 9223372036854775804
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cr, %.lr.ph367.new
  %.0148366 = phi i64 [ 0, %.lr.ph367.new ], [ %i.xz, %bb.cr ] ; 6 uses
  %niter690 = phi i64 [ 0, %.lr.ph367.new ], [ %niter690.next.3, %bb.cr ]
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %.0148366
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !43
  %i.ww = load i64, ptr %i.vh, align 8, !tbaa !43
  %i.wx = getelementptr [8 x i8], ptr %i.vi, i64 %i.wv
  %i.wy = getelementptr [8 x i8], ptr %i.wx, i64 %i.ww
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !43
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre536, i64 %.0148366
  store i64 %i.wz, ptr %i.xa, align 8, !tbaa !43
  %i.xb = or disjoint i64 %.0148366, 1            ; 2 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %i.xb
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !43
  %i.xe = load i64, ptr %i.vh, align 8, !tbaa !43
  %i.xf = getelementptr [8 x i8], ptr %i.vi, i64 %i.xd
  %i.xg = getelementptr [8 x i8], ptr %i.xf, i64 %i.xe
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !43
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre536, i64 %i.xb
  store i64 %i.xh, ptr %i.xi, align 8, !tbaa !43
  %i.xj = or disjoint i64 %.0148366, 2            ; 2 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %i.xj
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !43
  %i.xm = load i64, ptr %i.vh, align 8, !tbaa !43
  %i.xn = getelementptr [8 x i8], ptr %i.vi, i64 %i.xl
  %i.xo = getelementptr [8 x i8], ptr %i.xn, i64 %i.xm
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !43
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre536, i64 %i.xj
  store i64 %i.xp, ptr %i.xq, align 8, !tbaa !43
  %i.xr = or disjoint i64 %.0148366, 3            ; 2 uses
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %i.xr
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !43
  %i.xu = load i64, ptr %i.vh, align 8, !tbaa !43
  %i.xv = getelementptr [8 x i8], ptr %i.vi, i64 %i.xt
  %i.xw = getelementptr [8 x i8], ptr %i.xv, i64 %i.xu
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !43
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre536, i64 %i.xr
  store i64 %i.xx, ptr %i.xy, align 8, !tbaa !43
  %i.xz = add nuw nsw i64 %.0148366, 4            ; 2 uses
  %niter690.next.3 = add i64 %niter690, 4         ; 2 uses
  %niter690.ncmp.3 = icmp eq i64 %niter690.next.3, %unroll_iter689
  br i1 %niter690.ncmp.3, label %.lr.ph369.unr-lcssa, label %bb.cr, !llvm.loop !316

._crit_edge370.loopexit.unr-lcssa:                ; preds = %bb.ct
  %lcmp.mod694.not = icmp eq i64 %xtraiter692, 0
  br i1 %lcmp.mod694.not, label %._crit_edge370, label %.epil.preheader691

.epil.preheader691:                               ; preds = %._crit_edge370.loopexit.unr-lcssa, %.lr.ph369
  %.0147368.epil.init = phi i64 [ 0, %.lr.ph369 ], [ %i.aas, %._crit_edge370.loopexit.unr-lcssa ]
  %lcmp.mod695 = icmp ne i64 %xtraiter692, 0
  call void @llvm.assume(i1 %lcmp.mod695)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %.epil.preheader691
  %.0147368.epil = phi i64 [ %.0147368.epil.init, %.epil.preheader691 ], [ %i.yf, %bb.cs ] ; 3 uses
  %epil.iter693 = phi i64 [ 0, %.epil.preheader691 ], [ %epil.iter693.next, %bb.cs ]
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre536, i64 %.0147368.epil
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !43
  %i.yc = load i64, ptr %i.wr, align 8, !tbaa !43
  %i.yd = getelementptr [8 x i8], ptr %i.ws, i64 %.0147368.epil
  %i.ye = getelementptr [8 x i8], ptr %i.yd, i64 %i.yc
  store i64 %i.yb, ptr %i.ye, align 8, !tbaa !43
  %i.yf = add nuw nsw i64 %.0147368.epil, 1
  %epil.iter693.next = add i64 %epil.iter693, 1   ; 2 uses
  %epil.iter693.cmp.not = icmp eq i64 %epil.iter693.next, %xtraiter692
  br i1 %epil.iter693.cmp.not, label %._crit_edge370, label %bb.cs, !llvm.loop !317

._crit_edge370:                                   ; preds = %._crit_edge370.loopexit.unr-lcssa, %bb.cs, %.preheader
  %.pre402.pre538540 = phi ptr [ %.pre402.pre, %.preheader ], [ %.pre402.pre536, %bb.cs ], [ %.pre402.pre536, %._crit_edge370.loopexit.unr-lcssa ] ; 11 uses
  %i.yg = load ptr, ptr %4, align 8, !tbaa !53    ; 12 uses
  store i64 0, ptr %i.yg, align 8, !tbaa !43
  store i64 0, ptr %.pre402.pre538540, align 8, !tbaa !43
  %i.yh = load ptr, ptr %6, align 8, !tbaa !53    ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 16 ; 7 uses
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !43
  %i.yk = icmp sgt i64 %i.yj, 0                   ; 2 uses
  %spec.select = zext i1 %i.yk to i64             ; 5 uses
  %i.yl = icmp sgt i64 %i.rt, 0
  %.pre403 = load ptr, ptr %5, align 8, !tbaa !53 ; 3 uses
  br i1 %i.yl, label %.lr.ph374, label %._crit_edge375

.lr.ph374:                                        ; preds = %._crit_edge370
  %i.ym = getelementptr inbounds nuw i8, ptr %.pre403, i64 8 ; 6 uses
  %min.iters.check581 = icmp ult i64 %i.rt, 28
  br i1 %min.iters.check581, label %scalar.ph580.preheader, label %vector.memcheck582

vector.memcheck582:                               ; preds = %.lr.ph374
  %i.yn = select i1 %i.yk, i64 8, i64 0           ; 3 uses
  %i.yo = getelementptr i8, ptr %.pre402.pre538540, i64 %i.yn ; 4 uses
  %i.yp = shl i64 %i.rt, 3                        ; 2 uses
  %i.yq = add i64 %i.yp, %i.yn                    ; 2 uses
  %i.yr = getelementptr i8, ptr %.pre402.pre538540, i64 %i.yq ; 4 uses
  %i.ys = getelementptr i8, ptr %i.yg, i64 %i.yn  ; 4 uses
  %i.yt = getelementptr i8, ptr %i.yg, i64 %i.yq  ; 4 uses
  %bound0583 = icmp ult ptr %i.yo, %i.yt
  %bound0583.a = icmp ult ptr %i.ys, %i.yr
  %found.conflict585 = and i1 %bound0583, %bound0583.a
  %16 = getelementptr i8, ptr %i.sr, i64 %i.yp    ; 2 uses
  %bound0586 = icmp ult ptr %i.yo, %16
  %bound1587 = icmp ult ptr %i.sr, %i.yr
  %found.conflict588 = and i1 %bound0586, %bound1587
  %conflict.rdx = or i1 %found.conflict585, %found.conflict588
  %17 = getelementptr i8, ptr %.pre403, i64 16    ; 2 uses
  %bound0589 = icmp ult ptr %i.yo, %17
  %bound1590 = icmp ult ptr %i.ym, %i.yr
  %found.conflict591 = and i1 %bound0589, %bound1590
  %conflict.rdx592 = or i1 %conflict.rdx, %found.conflict591
  %18 = getelementptr i8, ptr %i.yh, i64 24       ; 2 uses
  %bound0593 = icmp ult ptr %i.yo, %18
  %bound1594 = icmp ult ptr %i.yi, %i.yr
  %found.conflict595 = and i1 %bound0593, %bound1594
  %conflict.rdx596 = or i1 %conflict.rdx592, %found.conflict595
  %bound0597 = icmp ult ptr %i.ys, %16
  %bound1598 = icmp ult ptr %i.sr, %i.yt
  %found.conflict599 = and i1 %bound0597, %bound1598
  %conflict.rdx600 = or i1 %conflict.rdx596, %found.conflict599
  %bound0601 = icmp ult ptr %i.ys, %17
  %bound1602 = icmp ult ptr %i.ym, %i.yt
  %found.conflict603 = and i1 %bound0601, %bound1602
  %conflict.rdx604 = or i1 %conflict.rdx600, %found.conflict603
  %bound0605 = icmp ult ptr %i.ys, %18
  %bound1606 = icmp ult ptr %i.yi, %i.yt
  %found.conflict607 = and i1 %bound0605, %bound1606
  %conflict.rdx608 = or i1 %conflict.rdx604, %found.conflict607
  br i1 %conflict.rdx608, label %scalar.ph580.preheader, label %vector.ph609

vector.ph609:                                     ; preds = %vector.memcheck582
  %n.vec610 = and i64 %i.rt, 9223372036854775804  ; 4 uses
  %i.yu = or disjoint i64 %n.vec610, %spec.select ; 2 uses
  %i.yv = load i64, ptr %i.ym, align 8, !tbaa !43, !alias.scope !330
  %broadcast.splatinsert615 = insertelement <2 x i64> poison, i64 %i.yv, i64 0
  %broadcast.splat616 = shufflevector <2 x i64> %broadcast.splatinsert615, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yw = load i64, ptr %i.yi, align 8, !tbaa !43, !alias.scope !331
  %broadcast.splatinsert619 = insertelement <2 x i64> poison, i64 %i.yw, i64 0
  %broadcast.splat620 = shufflevector <2 x i64> %broadcast.splatinsert619, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body611

vector.body611:                                   ; preds = %vector.body611, %vector.ph609
  %index612 = phi i64 [ 0, %vector.ph609 ], [ %index.next621, %vector.body611 ] ; 3 uses
  %i.yx = or disjoint i64 %index612, %spec.select ; 2 uses
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %index612 ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 16 ; 2 uses
  %wide.load613 = load <2 x i64>, ptr %i.yy, align 8, !tbaa !43, !alias.scope !332
  %wide.load614 = load <2 x i64>, ptr %i.yz, align 8, !tbaa !43, !alias.scope !332
  %i.za = add nsw <2 x i64> %broadcast.splat616, %wide.load613
  %i.zb = add nsw <2 x i64> %broadcast.splat616, %wide.load614
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre538540, i64 %i.yx ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  store <2 x i64> %i.za, ptr %i.zc, align 8, !tbaa !43, !alias.scope !333, !noalias !334
  store <2 x i64> %i.zb, ptr %i.zd, align 8, !tbaa !43, !alias.scope !333, !noalias !334
  %wide.load617 = load <2 x i64>, ptr %i.yy, align 8, !tbaa !43, !alias.scope !332
  %wide.load618 = load <2 x i64>, ptr %i.yz, align 8, !tbaa !43, !alias.scope !332
  %i.ze = add nsw <2 x i64> %broadcast.splat620, %wide.load617
  %i.zf = add nsw <2 x i64> %broadcast.splat620, %wide.load618
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %i.yx ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  store <2 x i64> %i.ze, ptr %i.zg, align 8, !tbaa !43, !alias.scope !335, !noalias !336
  store <2 x i64> %i.zf, ptr %i.zh, align 8, !tbaa !43, !alias.scope !335, !noalias !336
  %index.next621 = add nuw i64 %index612, 4       ; 2 uses
  %i.zi = icmp eq i64 %index.next621, %n.vec610
  br i1 %i.zi, label %middle.block622, label %vector.body611, !llvm.loop !324

middle.block622:                                  ; preds = %vector.body611
  %cmp.n623 = icmp eq i64 %i.rt, %n.vec610
  br i1 %cmp.n623, label %._crit_edge375, label %scalar.ph580.preheader

scalar.ph580.preheader:                           ; preds = %vector.memcheck582, %.lr.ph374, %middle.block622
  %.0372.ph = phi i64 [ 0, %vector.memcheck582 ], [ 0, %.lr.ph374 ], [ %n.vec610, %middle.block622 ] ; 4 uses
  %.1371.ph = phi i64 [ %spec.select, %vector.memcheck582 ], [ %spec.select, %.lr.ph374 ], [ %i.yu, %middle.block622 ] ; 4 uses
  %.neg = or disjoint i64 %.0372.ph, 1
  %xtraiter698 = and i64 %i.rt, 1
  %lcmp.mod699.not = icmp eq i64 %xtraiter698, 0
  br i1 %lcmp.mod699.not, label %scalar.ph580.prol.loopexit, label %scalar.ph580.prol

scalar.ph580.prol:                                ; preds = %scalar.ph580.preheader
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %.0372.ph ; 2 uses
  %i.zk = load i64, ptr %i.zj, align 8, !tbaa !43
  %i.zl = load i64, ptr %i.ym, align 8, !tbaa !43
  %i.zm = add nsw i64 %i.zl, %i.zk
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre538540, i64 %.1371.ph
  store i64 %i.zm, ptr %i.zn, align 8, !tbaa !43
  %i.zo = load i64, ptr %i.zj, align 8, !tbaa !43
  %i.zp = load i64, ptr %i.yi, align 8, !tbaa !43
  %i.zq = add nsw i64 %i.zp, %i.zo
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %.1371.ph
  store i64 %i.zq, ptr %i.zr, align 8, !tbaa !43
  %i.zs = add nuw nsw i64 %.1371.ph, 1            ; 2 uses
  %i.zt = or disjoint i64 %.0372.ph, 1
  br label %scalar.ph580.prol.loopexit

scalar.ph580.prol.loopexit:                       ; preds = %scalar.ph580.prol, %scalar.ph580.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph580.preheader ], [ %i.zs, %scalar.ph580.prol ]
  %.0372.unr = phi i64 [ %.0372.ph, %scalar.ph580.preheader ], [ %i.zt, %scalar.ph580.prol ]
  %.1371.unr = phi i64 [ %.1371.ph, %scalar.ph580.preheader ], [ %i.zs, %scalar.ph580.prol ]
  %i.zu = icmp eq i64 %i.rt, %.neg
  br i1 %i.zu, label %._crit_edge375, label %scalar.ph580

bb.ct:                                            ; preds = %bb.ct, %.lr.ph369.new
  %.0147368 = phi i64 [ 0, %.lr.ph369.new ], [ %i.aas, %bb.ct ] ; 6 uses
  %niter697 = phi i64 [ 0, %.lr.ph369.new ], [ %niter697.next.3, %bb.ct ]
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre536, i64 %.0147368
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !43
  %i.zx = load i64, ptr %i.wr, align 8, !tbaa !43
  %i.zy = getelementptr [8 x i8], ptr %i.ws, i64 %.0147368
  %i.zz = getelementptr [8 x i8], ptr %i.zy, i64 %i.zx
  store i64 %i.zw, ptr %i.zz, align 8, !tbaa !43
  %i.aaa = or disjoint i64 %.0147368, 1           ; 2 uses
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre536, i64 %i.aaa
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !43
  %i.aad = load i64, ptr %i.wr, align 8, !tbaa !43
  %i.aae = getelementptr [8 x i8], ptr %i.ws, i64 %i.aaa
  %i.aaf = getelementptr [8 x i8], ptr %i.aae, i64 %i.aad
  store i64 %i.aac, ptr %i.aaf, align 8, !tbaa !43
  %i.aag = or disjoint i64 %.0147368, 2           ; 2 uses
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre536, i64 %i.aag
  %i.aai = load i64, ptr %i.aah, align 8, !tbaa !43
  %i.aaj = load i64, ptr %i.wr, align 8, !tbaa !43
  %i.aak = getelementptr [8 x i8], ptr %i.ws, i64 %i.aag
  %i.aal = getelementptr [8 x i8], ptr %i.aak, i64 %i.aaj
  store i64 %i.aai, ptr %i.aal, align 8, !tbaa !43
  %i.aam = or disjoint i64 %.0147368, 3           ; 2 uses
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre536, i64 %i.aam
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !43
  %i.aap = load i64, ptr %i.wr, align 8, !tbaa !43
  %i.aaq = getelementptr [8 x i8], ptr %i.ws, i64 %i.aam
  %i.aar = getelementptr [8 x i8], ptr %i.aaq, i64 %i.aap
  store i64 %i.aao, ptr %i.aar, align 8, !tbaa !43
  %i.aas = add nuw nsw i64 %.0147368, 4           ; 2 uses
  %niter697.next.3 = add i64 %niter697, 4         ; 2 uses
  %niter697.ncmp.3 = icmp eq i64 %niter697.next.3, %unroll_iter696
  br i1 %niter697.ncmp.3, label %._crit_edge370.loopexit.unr-lcssa, label %bb.ct, !llvm.loop !325

._crit_edge375:                                   ; preds = %scalar.ph580.prol.loopexit, %scalar.ph580, %middle.block622, %._crit_edge370
  %.1.lcssa = phi i64 [ %spec.select, %._crit_edge370 ], [ %i.yu, %middle.block622 ], [ %.lcssa.unr, %scalar.ph580.prol.loopexit ], [ %i.abs, %scalar.ph580 ] ; 4 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.pre403, i64 16
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !43 ; 2 uses
  %i.aav = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !43 ; 2 uses
  %i.aax = icmp slt i64 %i.aau, %i.aaw
  br i1 %i.aax, label %bb.cu, label %bb.cx

scalar.ph580:                                     ; preds = %scalar.ph580.prol.loopexit, %scalar.ph580
  %.0372 = phi i64 [ %i.abt, %scalar.ph580 ], [ %.0372.unr, %scalar.ph580.prol.loopexit ] ; 3 uses
  %.1371 = phi i64 [ %i.abs, %scalar.ph580 ], [ %.1371.unr, %scalar.ph580.prol.loopexit ] ; 4 uses
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %.0372 ; 2 uses
  %i.aaz = load i64, ptr %i.aay, align 8, !tbaa !43
  %i.aba = load i64, ptr %i.ym, align 8, !tbaa !43
  %i.abb = add nsw i64 %i.aba, %i.aaz
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre538540, i64 %.1371
  store i64 %i.abb, ptr %i.abc, align 8, !tbaa !43
  %i.abd = load i64, ptr %i.aay, align 8, !tbaa !43
  %i.abe = load i64, ptr %i.yi, align 8, !tbaa !43
  %i.abf = add nsw i64 %i.abe, %i.abd
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %.1371
  store i64 %i.abf, ptr %i.abg, align 8, !tbaa !43
  %i.abh = add nuw nsw i64 %.1371, 1              ; 2 uses
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %.0372
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 8 ; 2 uses
  %i.abk = load i64, ptr %i.abj, align 8, !tbaa !43
  %i.abl = load i64, ptr %i.ym, align 8, !tbaa !43
  %i.abm = add nsw i64 %i.abl, %i.abk
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre538540, i64 %i.abh
  store i64 %i.abm, ptr %i.abn, align 8, !tbaa !43
  %i.abo = load i64, ptr %i.abj, align 8, !tbaa !43
  %i.abp = load i64, ptr %i.yi, align 8, !tbaa !43
  %i.abq = add nsw i64 %i.abp, %i.abo
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %i.abh
  store i64 %i.abq, ptr %i.abr, align 8, !tbaa !43
  %i.abs = add nuw nsw i64 %.1371, 2              ; 2 uses
  %i.abt = add nuw nsw i64 %.0372, 2              ; 2 uses
  %exitcond381.not.1 = icmp eq i64 %i.abt, %i.rt
  br i1 %exitcond381.not.1, label %._crit_edge375, label %scalar.ph580, !llvm.loop !326

bb.cu:                                            ; preds = %._crit_edge375
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre538540, i64 %.1.lcssa
  store i64 %i.aau, ptr %i.abu, align 8, !tbaa !43
  %i.abv = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  %i.abw = load i64, ptr %i.abv, align 8, !tbaa !43
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %.1.lcssa
  store i64 %i.abw, ptr %i.abx, align 8, !tbaa !43
  %i.aby = add nuw nsw i64 %.1.lcssa, 1
  %.pre404 = load i64, ptr %i.aav, align 8, !tbaa !43
  br label %bb.cx

bb.cv:                                            ; preds = %bb.db, %bb.cy
  %i.abz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.sr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.sr, i64 noundef %i.sn) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

bb.cx:                                            ; preds = %bb.cu, %._crit_edge375
  %i.aca = phi i64 [ %.pre404, %bb.cu ], [ %i.aaw, %._crit_edge375 ]
  %.2 = phi i64 [ %i.aby, %bb.cu ], [ %.1.lcssa, %._crit_edge375 ] ; 3 uses
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %.pre402.pre538540, i64 %.2
  store i64 %i.aca, ptr %i.acb, align 8, !tbaa !43
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !43
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %.2
  store i64 %i.acd, ptr %i.ace, align 8, !tbaa !43
  %i.acf = add nsw i64 %.2, 1                     ; 8 uses
  %i.acg = load ptr, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.ach = ptrtoint ptr %i.acg to i64
  %i.aci = ptrtoint ptr %.pre402.pre538540 to i64
  %i.acj = sub i64 %i.ach, %i.aci
  %i.ack = ashr exact i64 %i.acj, 3               ; 3 uses
  %i.acl = icmp ugt i64 %i.acf, %i.ack
  br i1 %i.acl, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.acm = sub nuw i64 %i.acf, %i.ack
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.acm)
          to label %._ZNSt6vectorIxSaIxEE6resizeEm.exit264_crit_edge unwind label %bb.cv

._ZNSt6vectorIxSaIxEE6resizeEm.exit264_crit_edge: ; preds = %bb.cy
  %.pre405 = load ptr, ptr %4, align 8, !tbaa !53
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit264

bb.cz:                                            ; preds = %bb.cx
end_hunk_0
begin_hunk_1_@_ZNK6casadi16SparsityInternal13_appendVectorERKS0_:bb.a
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.cs = load i64, ptr %i.ck, align 8, !tbaa !76
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.ct) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.10, label %bb.ab, label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.10, label %bb.ab, label %bb.au

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.thread
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105.ph = phi { ptr, i32 } [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.m) #29
  br label %bb.au

bb.ac:                                            ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !43 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.cw = getelementptr i8, ptr %i.d, i64 32      ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !alias.scope !502
  %.idx.i = shl nsw i64 %i.cv, 3                  ; 8 uses
  %i.cx = icmp ugt i64 %.idx.i, 9223372036854775800
  br i1 %i.cx, label %.noexc.i.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.ac
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27, !noalias !502
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.ac
  %.not.i.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !54, !alias.scope !502
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.da = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #28, !noalias !502 ; 6 uses
  store ptr %i.da, ptr %17, align 8, !tbaa !53, !alias.scope !502
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !54, !alias.scope !502
  %i.dd = icmp samesign ugt i64 %.idx.i, 8
  br i1 %i.dd, label %bb.ad, label %bb.ae, !prof !99

bb.ad:                                            ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.da, ptr align 8 %i.cw, i64 %.idx.i, i1 false), !noalias !502
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

bb.ae:                                            ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  %i.de = load i64, ptr %i.cw, align 8, !tbaa !43, !noalias !502
  store i64 %i.de, ptr %i.da, align 8, !tbaa !43, !noalias !502
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

_ZNK6casadi16SparsityInternal7get_rowEv.exit:     ; preds = %.thread.i.i.i, %bb.ad, %bb.ae
  %i.df = phi ptr [ %i.da, %bb.ad ], [ null, %.thread.i.i.i ], [ %i.da, %bb.ae ] ; 9 uses
  %i.dg = phi ptr [ %i.db, %bb.ad ], [ %i.cy, %.thread.i.i.i ], [ %i.db, %bb.ae ] ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !55, !alias.scope !502
  %i.di = load ptr, ptr %i.h, align 8, !tbaa !69  ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !43 ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %i.di, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 24     ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dk
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !43
  %i.dq = add nsw i64 %i.dp, %i.cv                ; 4 uses
  %i.dr = ptrtoint ptr %i.dg to i64
  %i.ds = ptrtoint ptr %i.df to i64               ; 4 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 5 uses
  %i.du = ashr exact i64 %i.dt, 3                 ; 7 uses
  %i.dv = icmp ugt i64 %i.dq, %i.du
  br i1 %i.dv, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %_ZNK6casadi16SparsityInternal7get_rowEv.exit
  %i.dw = sub nuw i64 %i.dq, %i.du                ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dy = icmp ult i64 %i.du, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = xor i64 %i.du, 1152921504606846975
  %i.ea = icmp ult i64 %i.dz, %i.dw
  br i1 %i.ea, label %bb.ag, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #27
          to label %.noexc101 unwind label %bb.al

.noexc101:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.af
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.du, i64 %i.dw)
  %i.eb = add nuw nsw i64 %.sroa.speculated.i.i, %i.du
  %i.ec = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 1152921504606846975) ; 2 uses
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #28
          to label %.noexc102 unwind label %bb.al ; 6 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dt ; 3 uses
  store i64 0, ptr %i.ef, align 8, !tbaa !43
  %i.eg = add nsw i64 %i.dw, -1                   ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc102
  %i.ei = getelementptr i8, ptr %i.ef, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.eg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ei, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !43
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc102
  %i.ej = icmp sgt i64 %i.dt, 0
  br i1 %i.ej, label %bb.ah, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i

bb.ah:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr align 8 %i.df, i64 %i.dt, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i: ; preds = %bb.ah, %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.df, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dt) #30
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i: ; preds = %bb.ai, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  store ptr %i.ee, ptr %17, align 8, !tbaa !53
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.dw ; 2 uses
  store ptr %i.ek, ptr %i.dh, align 8, !tbaa !55
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.el, ptr %i.dx, align 8, !tbaa !54
  %.pre118 = ptrtoint ptr %i.ee to i64
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.aj:                                            ; preds = %_ZNK6casadi16SparsityInternal7get_rowEv.exit
  %i.em = icmp ult i64 %i.dq, %i.du
  br i1 %i.em, label %bb.ak, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.ak:                                            ; preds = %bb.aj
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dq ; 3 uses
  %.not.i.i = icmp eq ptr %i.dg, %i.en
  br i1 %.not.i.i, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ak
  store ptr %i.en, ptr %i.dh, align 8, !tbaa !55
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i, %bb.aj, %bb.ak, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %i.ds, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %.pre118, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ], [ %i.ds, %bb.aj ], [ %i.ds, %bb.ak ]
  %i.eo = phi ptr [ %i.df, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ee, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ], [ %i.df, %bb.aj ], [ %i.df, %bb.ak ] ; 6 uses
  %i.ep = phi ptr [ %i.en, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ek, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ], [ %i.dg, %bb.aj ], [ %i.dg, %bb.ak ]
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %.pre-phi                ; 2 uses
  %i.es = ashr exact i64 %i.er, 3                 ; 7 uses
  %i.et = icmp ult i64 %i.cv, %i.es
  br i1 %i.et, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.eu = load ptr, ptr %i.c, align 8, !tbaa !53  ; 6 uses
  %i.ev = sub nuw i64 %i.es, %i.cv                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ev, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ew = getelementptr i8, ptr %i.eo, i64 %.idx.i ; 2 uses
  %i.ex = getelementptr i8, ptr %i.eo, i64 %i.er  ; 2 uses
  %i.ey = add i64 %i.dk, %i.es
  %i.ez = shl i64 %i.ey, 3
  %i.fa = add i64 %i.ez, 24
  %i.fb = sub i64 %i.fa, %.idx.i
  %i.fc = getelementptr i8, ptr %i.di, i64 %i.fb
  %bound0 = icmp ult ptr %i.ew, %i.fc
  %bound0.a = icmp ult ptr %i.dm, %i.ex
  %found.conflict = and i1 %bound0, %bound0.a
  %19 = getelementptr i8, ptr %i.eu, i64 8
  %bound0168 = icmp ult ptr %i.ew, %19
  %bound1169 = icmp ult ptr %i.eu, %i.ex
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx = or i1 %found.conflict, %found.conflict170
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ev, -4                      ; 3 uses
  %i.fd = add i64 %i.cv, %n.vec
  %i.fe = load i64, ptr %i.eu, align 8, !tbaa !43, !alias.scope !503
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.fe, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %wide.load = load <2 x i64>, ptr %i.fg, align 8, !tbaa !43, !alias.scope !504
  %wide.load171 = load <2 x i64>, ptr %i.fh, align 8, !tbaa !43, !alias.scope !504
  %i.fi = add nsw <2 x i64> %broadcast.splat, %wide.load
  %i.fj = add nsw <2 x i64> %broadcast.splat, %wide.load171
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %index ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <2 x i64> %i.fi, ptr %i.fk, align 8, !tbaa !43, !alias.scope !505, !noalias !506
  store <2 x i64> %i.fj, ptr %i.fl, align 8, !tbaa !43, !alias.scope !505, !noalias !506
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !499

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ev, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.0117.ph = phi i64 [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph ], [ %i.fd, %middle.block ] ; 6 uses
  %i.fn = sub i64 %i.es, %.0117.ph
  %.neg = add i64 %.0117.ph, 1
  %xtraiter = and i64 %i.fn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fo = sub nuw nsw i64 %.0117.ph, %i.cv
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !43
  %i.fr = load i64, ptr %i.eu, align 8, !tbaa !43
  %i.fs = add nsw i64 %i.fr, %i.fq
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.0117.ph
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !43
  %i.fu = add nuw nsw i64 %.0117.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0117.unr = phi i64 [ %.0117.ph, %scalar.ph.preheader ], [ %i.fu, %scalar.ph.prol ]
  %i.fv = icmp eq i64 %i.es, %.neg
  br i1 %i.fv, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.fw = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %.noexc94 unwind label %bb.ap  ; 4 uses

.noexc94:                                         ; preds = %._crit_edge
  store ptr %i.fw, ptr %18, align 8, !tbaa !53
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !54
  store i64 0, ptr %i.fw, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.fx, ptr %i.fz, align 8, !tbaa !55
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i64 %i.es, ptr %i.ga, align 8, !tbaa !43
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !43
  %i.gd = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !43
  %i.gf = add nsw i64 %i.ge, %i.gc
  invoke void @_ZN6casadi8SparsityC1ExxRKSt6vectorIxSaIxEES5_b(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.gf, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %17, i1 noundef zeroext false)
          to label %bb.am unwind label %bb.aq

bb.al:                                            ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i, %bb.ag
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0117 = phi i64 [ %i.gu, %scalar.ph ], [ %.0117.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.gh = sub nuw nsw i64 %.0117, %i.cv
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !43
  %i.gk = load i64, ptr %i.eu, align 8, !tbaa !43
  %i.gl = add nsw i64 %i.gk, %i.gj
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.0117
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !43
  %i.gn = add nuw nsw i64 %.0117, 1               ; 2 uses
  %i.go = sub nuw nsw i64 %i.gn, %i.cv
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.go
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !43
  %i.gr = load i64, ptr %i.eu, align 8, !tbaa !43
  %i.gs = add nsw i64 %i.gr, %i.gq
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.gn
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !43
  %i.gu = add nuw nsw i64 %.0117, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.gu, %i.es
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !500

bb.am:                                            ; preds = %.noexc94
  %i.gv = load ptr, ptr %18, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gw = load ptr, ptr %i.fy, align 8, !tbaa !54
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = sub i64 %i.gx, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.gz) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.ha = load ptr, ptr %17, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i95 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIxSaIxEED2Ev.exit96, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !54
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit96

_ZNSt6vectorIxSaIxEED2Ev.exit96:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  ret void

bb.ap:                                            ; preds = %._crit_edge
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit98

bb.aq:                                            ; preds = %.noexc94
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = load ptr, ptr %18, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIxSaIxEED2Ev.exit98, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hj = load ptr, ptr %i.fy, align 8, !tbaa !54
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hm) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit98

_ZNSt6vectorIxSaIxEED2Ev.exit98:                  ; preds = %bb.ar, %bb.aq, %bb.ap
  %.pn57 = phi { ptr, i32 } [ %i.hg, %bb.ap ], [ %i.hh, %bb.aq ], [ %i.hh, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %.pre = load ptr, ptr %17, align 8, !tbaa !53
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit98, %bb.al
  %i.hn = phi ptr [ %.pre, %_ZNSt6vectorIxSaIxEED2Ev.exit98 ], [ %i.df, %bb.al ] ; 3 uses
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %_ZNSt6vectorIxSaIxEED2Ev.exit98 ], [ %i.gg, %bb.al ]
  %.not.i.i.i99 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorIxSaIxEED2Ev.exit100, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ho = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !54
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.hn to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hs) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit100

_ZNSt6vectorIxSaIxEED2Ev.exit100:                 ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.ab, %_ZNSt6vectorIxSaIxEED2Ev.exit100
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit100 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105, %bb.ab ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ]
  resume { ptr, i32 } %.pn57.pn.pn

bb.av:                                            ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16SparsityInternal14_appendColumnsERKS0_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Sparsity") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_1
