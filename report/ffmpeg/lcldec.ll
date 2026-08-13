loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@decode_frame:bb.a
  store i8 %i.gc, ptr %i.fx, align 1, !tbaa !34
  %i.gd = getelementptr i8, ptr %i.fd, i64 6      ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !34
  %i.gf = trunc i32 %.0507658 to i8
  %i.gg = sub i8 %i.gf, %i.ge                     ; 2 uses
  store i8 %i.gg, ptr %i.gd, align 1, !tbaa !34
  %i.gh = getelementptr i8, ptr %i.fd, i64 7      ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !34
  %i.gj = zext i8 %i.gi to i32
  %i.gk = zext i8 %i.gg to i32
  %i.gl = sub nsw i32 %i.gk, %i.gj                ; 2 uses
  %i.gm = trunc i32 %i.gl to i8
  store i8 %i.gm, ptr %i.gh, align 1, !tbaa !34
  %i.gn = add nsw i64 %.2503659, 8                ; 2 uses
  %i.go = add nuw nsw i32 %.1529655, 1            ; 2 uses
  %exitcond759.not = icmp eq i32 %i.go, %i.dv
  br i1 %exitcond759.not, label %._crit_edge661, label %bb.ap, !llvm.loop !53

._crit_edge661:                                   ; preds = %bb.ap
  %i.gp = add nuw nsw i32 %.1522663, 1            ; 2 uses
  %exitcond760.not = icmp eq i32 %i.gp, %i.j
  br i1 %exitcond760.not, label %.loopexit617, label %.preheader618, !llvm.loop !54

.preheader621:                                    ; preds = %.preheader621.lr.ph, %._crit_edge652
  %.3654 = phi i64 [ %i.hm, %._crit_edge652 ], [ 0, %.preheader621.lr.ph ]
  %.2523653 = phi i32 [ %i.ho, %._crit_edge652 ], [ 0, %.preheader621.lr.ph ]
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader621, %bb.aq
  %.4650 = phi i64 [ %.3654, %.preheader621 ], [ %i.hm, %bb.aq ] ; 2 uses
  %.1508649 = phi i8 [ 0, %.preheader621 ], [ %i.hl, %bb.aq ]
  %.1512648 = phi i8 [ 0, %.preheader621 ], [ %i.hi, %bb.aq ]
  %.2518647 = phi i32 [ 0, %.preheader621 ], [ %i.he, %bb.aq ]
  %.2530646 = phi i32 [ 0, %.preheader621 ], [ %i.hn, %bb.aq ]
  %i.gq = getelementptr inbounds i8, ptr %.0553, i64 %.4650 ; 7 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !34
  %i.gs = trunc i32 %.2518647 to i8
  %i.gt = sub i8 %i.gs, %i.gr                     ; 2 uses
  store i8 %i.gt, ptr %i.gq, align 1, !tbaa !34
  %i.gu = getelementptr i8, ptr %i.gq, i64 1      ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !34
  %i.gw = sub i8 %i.gt, %i.gv                     ; 2 uses
  store i8 %i.gw, ptr %i.gu, align 1, !tbaa !34
  %i.gx = getelementptr i8, ptr %i.gq, i64 2      ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !34
  %i.gz = sub i8 %i.gw, %i.gy                     ; 2 uses
  store i8 %i.gz, ptr %i.gx, align 1, !tbaa !34
  %i.ha = getelementptr i8, ptr %i.gq, i64 3      ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !34
  %i.hc = zext i8 %i.hb to i32
  %i.hd = zext i8 %i.gz to i32
  %i.he = sub nsw i32 %i.hd, %i.hc                ; 2 uses
  %i.hf = trunc i32 %i.he to i8
  store i8 %i.hf, ptr %i.ha, align 1, !tbaa !34
  %i.hg = getelementptr i8, ptr %i.gq, i64 4      ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !34
  %i.hi = sub i8 %.1512648, %i.hh                 ; 2 uses
  store i8 %i.hi, ptr %i.hg, align 1, !tbaa !34
  %i.hj = getelementptr i8, ptr %i.gq, i64 5      ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !34
  %i.hl = sub i8 %.1508649, %i.hk                 ; 2 uses
  store i8 %i.hl, ptr %i.hj, align 1, !tbaa !34
  %i.hm = add nsw i64 %.4650, 6                   ; 2 uses
  %i.hn = add nuw nsw i32 %.2530646, 1            ; 2 uses
  %exitcond757.not = icmp eq i32 %i.hn, %i.ds
  br i1 %exitcond757.not, label %._crit_edge652, label %bb.aq, !llvm.loop !55

._crit_edge652:                                   ; preds = %bb.aq
  %i.ho = add nuw nsw i32 %.2523653, 1            ; 2 uses
  %exitcond758.not = icmp eq i32 %i.ho, %i.j
  br i1 %exitcond758.not, label %.loopexit617, label %.preheader621, !llvm.loop !56

.lr.ph642:                                        ; preds = %.lr.ph642.preheader, %._crit_edge643
  %indvars.iv752 = phi i64 [ 0, %.lr.ph642.preheader ], [ %indvars.iv.next753, %._crit_edge643 ] ; 2 uses
  %i.hp = trunc nuw nsw i64 %indvars.iv752 to i32
  %i.hq = mul i32 %i.do, %i.hp
  %i.hr = sext i32 %i.hq to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph642, %bb.ar
  %.5640 = phi i64 [ %i.hr, %.lr.ph642 ], [ %i.ii, %bb.ar ] ; 2 uses
  %.2509639 = phi i8 [ 0, %.lr.ph642 ], [ %i.ih, %bb.ar ]
  %.2513638 = phi i8 [ 0, %.lr.ph642 ], [ %i.ie, %bb.ar ]
  %.3519637 = phi i32 [ 0, %.lr.ph642 ], [ %i.ia, %bb.ar ]
  %.3531636 = phi i32 [ 0, %.lr.ph642 ], [ %i.ij, %bb.ar ]
  %i.hs = getelementptr inbounds i8, ptr %.0553, i64 %.5640 ; 5 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !34
  %i.hu = trunc i32 %.3519637 to i8
  %i.hv = sub i8 %i.hu, %i.ht                     ; 2 uses
  store i8 %i.hv, ptr %i.hs, align 1, !tbaa !34
  %i.hw = getelementptr i8, ptr %i.hs, i64 1      ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !34
  %i.hy = zext i8 %i.hx to i32
  %i.hz = zext i8 %i.hv to i32
  %i.ia = sub nsw i32 %i.hz, %i.hy                ; 2 uses
  %i.ib = trunc i32 %i.ia to i8
  store i8 %i.ib, ptr %i.hw, align 1, !tbaa !34
  %i.ic = getelementptr i8, ptr %i.hs, i64 2      ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !34
  %i.ie = sub i8 %.2513638, %i.id                 ; 2 uses
  store i8 %i.ie, ptr %i.ic, align 1, !tbaa !34
  %i.if = getelementptr i8, ptr %i.hs, i64 3      ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !34
  %i.ih = sub i8 %.2509639, %i.ig                 ; 2 uses
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !34
  %i.ii = add nsw i64 %.5640, 4
  %i.ij = add nuw nsw i32 %.3531636, 1            ; 2 uses
  %exitcond751.not = icmp eq i32 %i.ij, %i.dp
  br i1 %exitcond751.not, label %._crit_edge643, label %bb.ar, !llvm.loop !57

._crit_edge643:                                   ; preds = %bb.ar
  %indvars.iv.next753 = add nuw nsw i64 %indvars.iv752, 1 ; 2 uses
  %exitcond756.not = icmp eq i64 %indvars.iv.next753, %wide.trip.count755
  br i1 %exitcond756.not, label %.loopexit617, label %.lr.ph642, !llvm.loop !58

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ik = trunc nuw nsw i64 %indvars.iv to i32
  %i.il = mul i32 %i.dk, %i.ik
  %i.im = sext i32 %i.il to i64
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.as
  %.6633 = phi i64 [ %i.im, %.lr.ph ], [ %i.jn, %bb.as ] ; 2 uses
  %.3510632 = phi i8 [ 0, %.lr.ph ], [ %i.jm, %bb.as ]
  %.3514631 = phi i8 [ 0, %.lr.ph ], [ %i.jj, %bb.as ]
  %.0515630 = phi i32 [ 0, %.lr.ph ], [ %i.jf, %bb.as ]
  %.4520629 = phi i32 [ 0, %.lr.ph ], [ %i.iv, %bb.as ]
  %.4532628 = phi i32 [ 0, %.lr.ph ], [ %i.jo, %bb.as ]
  %i.in = getelementptr inbounds i8, ptr %.0553, i64 %.6633 ; 7 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !34
  %i.ip = trunc i32 %.4520629 to i8
  %i.iq = sub i8 %i.ip, %i.io                     ; 2 uses
  store i8 %i.iq, ptr %i.in, align 1, !tbaa !34
  %i.ir = getelementptr i8, ptr %i.in, i64 1      ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !34
  %i.it = zext i8 %i.is to i32
  %i.iu = zext i8 %i.iq to i32
  %i.iv = sub nsw i32 %i.iu, %i.it                ; 2 uses
  %i.iw = trunc i32 %i.iv to i8
  store i8 %i.iw, ptr %i.ir, align 1, !tbaa !34
  %i.ix = getelementptr i8, ptr %i.in, i64 2      ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !34
  %i.iz = trunc i32 %.0515630 to i8
  %i.ja = sub i8 %i.iz, %i.iy                     ; 2 uses
  store i8 %i.ja, ptr %i.ix, align 1, !tbaa !34
  %i.jb = getelementptr i8, ptr %i.in, i64 3      ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !34
  %i.jd = zext i8 %i.jc to i32
  %i.je = zext i8 %i.ja to i32
  %i.jf = sub nsw i32 %i.je, %i.jd                ; 2 uses
  %i.jg = trunc i32 %i.jf to i8
  store i8 %i.jg, ptr %i.jb, align 1, !tbaa !34
  %i.jh = getelementptr i8, ptr %i.in, i64 4      ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !34
  %i.jj = sub i8 %.3514631, %i.ji                 ; 2 uses
  store i8 %i.jj, ptr %i.jh, align 1, !tbaa !34
  %i.jk = getelementptr i8, ptr %i.in, i64 5      ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !34
  %i.jm = sub i8 %.3510632, %i.jl                 ; 2 uses
  store i8 %i.jm, ptr %i.jk, align 1, !tbaa !34
  %i.jn = add nsw i64 %.6633, 6
  %i.jo = add nuw nsw i32 %.4532628, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.jo, %i.dl
  br i1 %exitcond.not, label %._crit_edge, label %bb.as, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.as
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond750.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond750.not, label %.loopexit617, label %.lr.ph, !llvm.loop !60

bb.at:                                            ; preds = %bb.an
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.34) #7
  br label %bb.ba

.loopexit617:                                     ; preds = %._crit_edge, %._crit_edge643, %._crit_edge652, %._crit_edge661, %._crit_edge671, %.preheader626, %.lr.ph635, %.preheader624, %.lr.ph645, %.preheader622, %.preheader621.lr.ph, %.preheader619, %.preheader618.lr.ph, %bb.ao, %.lr.ph674, %bb.am, %bb.al
  %i.jp = load ptr, ptr %1, align 8, !tbaa !49
  %i.jq = add i32 %i.j, -1                        ; 7 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 10 uses
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !42
  %i.jt = mul nsw i32 %i.js, %i.jq
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds i8, ptr %i.jp, i64 %i.ju ; 5 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 6 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !42 ; 2 uses
  %i.jy = mul nsw i32 %i.jx, %i.jq
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !49 ; 2 uses
  %i.kb = sext i32 %i.jy to i64
  %i.kc = getelementptr inbounds i8, ptr %i.ka, i64 %i.kb ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !42 ; 2 uses
  %i.kf = mul nsw i32 %i.ke, %i.jq
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !49 ; 2 uses
  %i.ki = sext i32 %i.kf to i64
  %i.kj = getelementptr inbounds i8, ptr %i.kh, i64 %i.ki ; 4 uses
  %i.kk = load i32, ptr %i.f, align 8, !tbaa !35
  switch i32 %i.kk, label %bb.az [
    i32 0, label %.preheader604
    i32 1, label %.preheader606.a
    i32 2, label %bb.av
    i32 3, label %.preheader610
    i32 4, label %.preheader613
    i32 5, label %bb.ax
  ]

.preheader613:                                    ; preds = %.loopexit617
  %i.kl = icmp sgt i32 %i.j, 0
  %i.km = icmp sgt i32 %i.h, 1
  %or.cond841 = select i1 %i.kl, i1 %i.km, i1 false
  br i1 %or.cond841, label %.preheader612.preheader, label %.loopexit

.preheader612.preheader:                          ; preds = %.preheader613
  %i.kn = add nsw i32 %i.h, -1
  %i.ko = zext nneg i32 %i.kn to i64              ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ko, i64 2)
  %i.kp = add nsw i64 %umax, -1                   ; 2 uses
  %i.kq = and i64 %i.kp, -2
  %i.kr = lshr i64 %i.kp, 1                       ; 2 uses
  %i.ks = add nuw nsw i64 %i.kr, 1                ; 2 uses
  %i.kt = shl nuw nsw i64 %i.kr, 2
  %i.ku = tail call i64 @llvm.umax.i64(i64 %i.ko, i64 2)
  %i.kv = add nsw i64 %i.ku, -1
  %i.kw = lshr i64 %i.kv, 1
  %i.kx = add nuw nsw i64 %i.kw, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 34
  %i.ky = and i64 %i.kx, 7                        ; 2 uses
  %i.kz = icmp eq i64 %i.ky, 0
  %i.la = select i1 %i.kz, i64 8, i64 %i.ky
  %n.vec = sub nsw i64 %i.kx, %i.la               ; 3 uses
  %i.lb = shl i64 %n.vec, 1
  %i.lc = shl i64 %n.vec, 2
  br label %.preheader612

.preheader610:                                    ; preds = %.loopexit617
  %i.ld = icmp sgt i32 %i.j, 0
  br i1 %i.ld, label %.preheader609.lr.ph, label %.loopexit

.preheader609.lr.ph:                              ; preds = %.preheader610
  %i.le = add nsw i32 %i.h, -3
  %i.lf = icmp sgt i32 %i.h, 3
  %i.lg = zext nneg i32 %i.le to i64
  br label %.preheader609

.preheader606.a:                                  ; preds = %.loopexit617
  %i.lh = icmp sgt i32 %i.j, 0
  br i1 %i.lh, label %.preheader605.lr.ph, label %.loopexit

.preheader605.lr.ph:                              ; preds = %.preheader606.a
  %4 = add i32 %i.h, -3                           ; 2 uses
  %5 = icmp sgt i32 %i.h, 3
  %6 = zext i32 %4 to i64                         ; 3 uses
  %umax890 = tail call i64 @llvm.umax.i64(i64 %6, i64 4)
  %i.li = add nsw i64 %umax890, -1                ; 2 uses
  %i.lj = and i64 %i.li, -4
  %i.lk = lshr i64 %i.li, 2                       ; 2 uses
  %i.ll = shl nuw nsw i64 %i.lk, 1
  %i.lm = add nuw nsw i64 %i.ll, 2                ; 2 uses
  %i.ln = shl nuw nsw i64 %i.lk, 3
  %i.lo = tail call i64 @llvm.umax.i64(i64 %6, i64 4)
  %i.lp = add nsw i64 %i.lo, -1
  %i.lq = lshr i64 %i.lp, 2
  %i.lr = add nuw nsw i64 %i.lq, 1                ; 2 uses
  %min.iters.check919 = icmp ult i32 %4, 33
  %i.ls = and i64 %i.lr, 3                        ; 2 uses
  %i.lt = icmp eq i64 %i.ls, 0
  %i.lu = select i1 %i.lt, i64 4, i64 %i.ls
  %n.vec921 = sub nsw i64 %i.lr, %i.lu            ; 3 uses
  %i.lv = shl i64 %n.vec921, 2
  %i.lw = shl i64 %n.vec921, 3
  br label %.preheader605

.preheader604:                                    ; preds = %.loopexit617
  %i.lx = icmp sgt i32 %i.j, 0
  %i.ly = icmp sgt i32 %i.h, 0
  %or.cond731 = select i1 %i.lx, i1 %i.ly, i1 false
  br i1 %or.cond731, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader604
  %wide.trip.count785 = zext nneg i32 %i.h to i64 ; 12 uses
  %i.lz = mul nuw nsw i64 %wide.trip.count785, 3
  %min.iters.check962 = icmp ult i32 %i.h, 8
  %min.iters.check963 = icmp ult i32 %i.h, 16
  %i.ma = and i64 %wide.trip.count785, 8
  %n.vec965 = and i64 %wide.trip.count785, 2147483632 ; 5 uses
  %i.mb = mul nuw nsw i64 %n.vec965, 3
  %cmp.n = icmp eq i64 %n.vec965, %wide.trip.count785
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ma, 0
  %n.vec987 = and i64 %wide.trip.count785, 2147483640 ; 4 uses
  %i.mc = mul nuw nsw i64 %n.vec987, 3
  %cmp.n998 = icmp eq i64 %n.vec987, %wide.trip.count785
  %xtraiter1021 = and i64 %wide.trip.count785, 1
  %lcmp.mod1022.not = icmp eq i64 %xtraiter1021, 0
  %i.md = add nsw i64 %wide.trip.count785, -1
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge724
  %.5526730 = phi i32 [ %i.wu, %._crit_edge724 ], [ 0, %.preheader.preheader ]
  %.0538729 = phi ptr [ %i.wt, %._crit_edge724 ], [ %i.kj, %.preheader.preheader ] ; 10 uses
  %.0543728 = phi ptr [ %i.wp, %._crit_edge724 ], [ %i.kc, %.preheader.preheader ] ; 10 uses
  %.0548727 = phi ptr [ %i.wl, %._crit_edge724 ], [ %i.jv, %.preheader.preheader ] ; 10 uses
  %.1554726 = phi ptr [ %.lcssa, %._crit_edge724 ], [ %.0553, %.preheader.preheader ] ; 32 uses
  br i1 %min.iters.check962, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck933

vector.memcheck933:                               ; preds = %iter.check
  %scevgep934 = getelementptr i8, ptr %.0548727, i64 %wide.trip.count785 ; 3 uses
  %scevgep935 = getelementptr i8, ptr %.0543728, i64 %wide.trip.count785 ; 3 uses
  %scevgep936 = getelementptr i8, ptr %.0538729, i64 %wide.trip.count785 ; 3 uses
  %scevgep937 = getelementptr i8, ptr %.1554726, i64 %i.lz ; 3 uses
  %bound0938 = icmp ult ptr %.0548727, %scevgep935
  %bound1939 = icmp ult ptr %.0543728, %scevgep934
  %found.conflict940 = and i1 %bound0938, %bound1939
  %bound0941 = icmp ult ptr %.0548727, %scevgep936
  %bound1942 = icmp ult ptr %.0538729, %scevgep934
  %found.conflict943 = and i1 %bound0941, %bound1942
  %conflict.rdx944 = or i1 %found.conflict940, %found.conflict943
  %bound0945 = icmp ult ptr %.0548727, %scevgep937
  %bound1946 = icmp ult ptr %.1554726, %scevgep934
  %found.conflict947 = and i1 %bound0945, %bound1946
  %conflict.rdx948 = or i1 %conflict.rdx944, %found.conflict947
  %bound0949 = icmp ult ptr %.0543728, %scevgep936
  %bound1950 = icmp ult ptr %.0538729, %scevgep935
  %found.conflict951 = and i1 %bound0949, %bound1950
  %conflict.rdx952 = or i1 %conflict.rdx948, %found.conflict951
  %bound0953 = icmp ult ptr %.0543728, %scevgep937
  %bound1954 = icmp ult ptr %.1554726, %scevgep935
  %found.conflict955 = and i1 %bound0953, %bound1954
  %conflict.rdx956 = or i1 %conflict.rdx952, %found.conflict955
  %bound0957 = icmp ult ptr %.0538729, %scevgep937
  %bound1958 = icmp ult ptr %.1554726, %scevgep936
  %found.conflict959 = and i1 %bound0957, %bound1958
  %conflict.rdx960 = or i1 %conflict.rdx956, %found.conflict959
  br i1 %conflict.rdx960, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck933
  br i1 %min.iters.check963, label %vec.epilog.ph, label %vector.ph964

vector.ph964:                                     ; preds = %vector.main.loop.iter.check
  %i.me = getelementptr i8, ptr %.1554726, i64 %i.mb ; 2 uses
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %vector.ph964
  %index967 = phi i64 [ 0, %vector.ph964 ], [ %index.next984, %vector.body966 ] ; 5 uses
  %i.mf = mul i64 %index967, 3                    ; 16 uses
  %next.gep968 = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %i.mg = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep969 = getelementptr i8, ptr %i.mg, i64 3
  %i.mh = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep970 = getelementptr i8, ptr %i.mh, i64 6
  %i.mi = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep971 = getelementptr i8, ptr %i.mi, i64 9
  %i.mj = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep972 = getelementptr i8, ptr %i.mj, i64 12
  %i.mk = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep973 = getelementptr i8, ptr %i.mk, i64 15
  %i.ml = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep974 = getelementptr i8, ptr %i.ml, i64 18
  %i.mm = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep975 = getelementptr i8, ptr %i.mm, i64 21
  %i.mn = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep976 = getelementptr i8, ptr %i.mn, i64 24
  %i.mo = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep977 = getelementptr i8, ptr %i.mo, i64 27
  %i.mp = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep978 = getelementptr i8, ptr %i.mp, i64 30
  %i.mq = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep979 = getelementptr i8, ptr %i.mq, i64 33
  %i.mr = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep980 = getelementptr i8, ptr %i.mr, i64 36
  %i.ms = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep981 = getelementptr i8, ptr %i.ms, i64 39
  %i.mt = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep982 = getelementptr i8, ptr %i.mt, i64 42
  %i.mu = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep983 = getelementptr i8, ptr %i.mu, i64 45
  %i.mv = getelementptr inbounds nuw i8, ptr %next.gep968, i64 1
  %i.mw = getelementptr i8, ptr %i.mg, i64 4
  %i.mx = getelementptr i8, ptr %i.mh, i64 7
  %i.my = getelementptr i8, ptr %i.mi, i64 10
  %i.mz = getelementptr i8, ptr %i.mj, i64 13
  %i.na = getelementptr i8, ptr %i.mk, i64 16
  %i.nb = getelementptr i8, ptr %i.ml, i64 19
  %i.nc = getelementptr i8, ptr %i.mm, i64 22
  %i.nd = getelementptr i8, ptr %i.mn, i64 25
  %i.ne = getelementptr i8, ptr %i.mo, i64 28
  %i.nf = getelementptr i8, ptr %i.mp, i64 31
  %i.ng = getelementptr i8, ptr %i.mq, i64 34
  %i.nh = getelementptr i8, ptr %i.mr, i64 37
  %i.ni = getelementptr i8, ptr %i.ms, i64 40
  %i.nj = getelementptr i8, ptr %i.mt, i64 43
  %i.nk = getelementptr i8, ptr %i.mu, i64 46
  %i.nl = load i8, ptr %next.gep968, align 1, !tbaa !34, !alias.scope !61
  %i.nm = load i8, ptr %next.gep969, align 1, !tbaa !34, !alias.scope !61
  %i.nn = load i8, ptr %next.gep970, align 1, !tbaa !34, !alias.scope !61
  %i.no = load i8, ptr %next.gep971, align 1, !tbaa !34, !alias.scope !61
  %i.np = load i8, ptr %next.gep972, align 1, !tbaa !34, !alias.scope !61
  %i.nq = load i8, ptr %next.gep973, align 1, !tbaa !34, !alias.scope !61
  %i.nr = load i8, ptr %next.gep974, align 1, !tbaa !34, !alias.scope !61
  %i.ns = load i8, ptr %next.gep975, align 1, !tbaa !34, !alias.scope !61
  %i.nt = load i8, ptr %next.gep976, align 1, !tbaa !34, !alias.scope !61
  %i.nu = load i8, ptr %next.gep977, align 1, !tbaa !34, !alias.scope !61
  %i.nv = load i8, ptr %next.gep978, align 1, !tbaa !34, !alias.scope !61
  %i.nw = load i8, ptr %next.gep979, align 1, !tbaa !34, !alias.scope !61
  %i.nx = load i8, ptr %next.gep980, align 1, !tbaa !34, !alias.scope !61
  %i.ny = load i8, ptr %next.gep981, align 1, !tbaa !34, !alias.scope !61
  %i.nz = load i8, ptr %next.gep982, align 1, !tbaa !34, !alias.scope !61
  %i.oa = load i8, ptr %next.gep983, align 1, !tbaa !34, !alias.scope !61
  %i.ob = insertelement <16 x i8> poison, i8 %i.nl, i64 0
  %i.oc = insertelement <16 x i8> %i.ob, i8 %i.nm, i64 1
  %i.od = insertelement <16 x i8> %i.oc, i8 %i.nn, i64 2
  %i.oe = insertelement <16 x i8> %i.od, i8 %i.no, i64 3
  %i.of = insertelement <16 x i8> %i.oe, i8 %i.np, i64 4
  %i.og = insertelement <16 x i8> %i.of, i8 %i.nq, i64 5
  %i.oh = insertelement <16 x i8> %i.og, i8 %i.nr, i64 6
  %i.oi = insertelement <16 x i8> %i.oh, i8 %i.ns, i64 7
  %i.oj = insertelement <16 x i8> %i.oi, i8 %i.nt, i64 8
  %i.ok = insertelement <16 x i8> %i.oj, i8 %i.nu, i64 9
  %i.ol = insertelement <16 x i8> %i.ok, i8 %i.nv, i64 10
  %i.om = insertelement <16 x i8> %i.ol, i8 %i.nw, i64 11
  %i.on = insertelement <16 x i8> %i.om, i8 %i.nx, i64 12
  %i.oo = insertelement <16 x i8> %i.on, i8 %i.ny, i64 13
  %i.op = insertelement <16 x i8> %i.oo, i8 %i.nz, i64 14
  %i.oq = insertelement <16 x i8> %i.op, i8 %i.oa, i64 15
  %i.or = getelementptr inbounds nuw i8, ptr %.0548727, i64 %index967
  store <16 x i8> %i.oq, ptr %i.or, align 1, !tbaa !34, !alias.scope !64, !noalias !66
  %i.os = getelementptr inbounds nuw i8, ptr %next.gep968, i64 2
  %i.ot = getelementptr i8, ptr %i.mg, i64 5
  %i.ou = getelementptr i8, ptr %i.mh, i64 8
  %i.ov = getelementptr i8, ptr %i.mi, i64 11
  %i.ow = getelementptr i8, ptr %i.mj, i64 14
  %i.ox = getelementptr i8, ptr %i.mk, i64 17
  %i.oy = getelementptr i8, ptr %i.ml, i64 20
  %i.oz = getelementptr i8, ptr %i.mm, i64 23
  %i.pa = getelementptr i8, ptr %i.mn, i64 26
  %i.pb = getelementptr i8, ptr %i.mo, i64 29
  %i.pc = getelementptr i8, ptr %i.mp, i64 32
  %i.pd = getelementptr i8, ptr %i.mq, i64 35
  %i.pe = getelementptr i8, ptr %i.mr, i64 38
  %i.pf = getelementptr i8, ptr %i.ms, i64 41
  %i.pg = getelementptr i8, ptr %i.mt, i64 44
  %i.ph = getelementptr i8, ptr %i.mu, i64 47
  %i.pi = load i8, ptr %i.mv, align 1, !tbaa !34, !alias.scope !61
  %i.pj = load i8, ptr %i.mw, align 1, !tbaa !34, !alias.scope !61
  %i.pk = load i8, ptr %i.mx, align 1, !tbaa !34, !alias.scope !61
  %i.pl = load i8, ptr %i.my, align 1, !tbaa !34, !alias.scope !61
  %i.pm = load i8, ptr %i.mz, align 1, !tbaa !34, !alias.scope !61
  %i.pn = load i8, ptr %i.na, align 1, !tbaa !34, !alias.scope !61
  %i.po = load i8, ptr %i.nb, align 1, !tbaa !34, !alias.scope !61
  %i.pp = load i8, ptr %i.nc, align 1, !tbaa !34, !alias.scope !61
  %i.pq = load i8, ptr %i.nd, align 1, !tbaa !34, !alias.scope !61
  %i.pr = load i8, ptr %i.ne, align 1, !tbaa !34, !alias.scope !61
  %i.ps = load i8, ptr %i.nf, align 1, !tbaa !34, !alias.scope !61
  %i.pt = load i8, ptr %i.ng, align 1, !tbaa !34, !alias.scope !61
  %i.pu = load i8, ptr %i.nh, align 1, !tbaa !34, !alias.scope !61
  %i.pv = load i8, ptr %i.ni, align 1, !tbaa !34, !alias.scope !61
  %i.pw = load i8, ptr %i.nj, align 1, !tbaa !34, !alias.scope !61
  %i.px = load i8, ptr %i.nk, align 1, !tbaa !34, !alias.scope !61
  %i.py = insertelement <16 x i8> poison, i8 %i.pi, i64 0
  %i.pz = insertelement <16 x i8> %i.py, i8 %i.pj, i64 1
  %i.qa = insertelement <16 x i8> %i.pz, i8 %i.pk, i64 2
  %i.qb = insertelement <16 x i8> %i.qa, i8 %i.pl, i64 3
  %i.qc = insertelement <16 x i8> %i.qb, i8 %i.pm, i64 4
  %i.qd = insertelement <16 x i8> %i.qc, i8 %i.pn, i64 5
  %i.qe = insertelement <16 x i8> %i.qd, i8 %i.po, i64 6
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  %i.rw = xor <16 x i8> %i.rv, splat (i8 -128)
  %i.rx = getelementptr inbounds nuw i8, ptr %.0538729, i64 %index967
  store <16 x i8> %i.rw, ptr %i.rx, align 1, !tbaa !34, !alias.scope !71, !noalias !61
  %index.next984 = add nuw i64 %index967, 16      ; 2 uses
  %i.ry = icmp eq i64 %index.next984, %n.vec965
  br i1 %i.ry, label %middle.block985, label %vector.body966, !llvm.loop !72

middle.block985:                                  ; preds = %vector.body966
  br i1 %cmp.n, label %._crit_edge724, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block985
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec965, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.rz = getelementptr i8, ptr %.1554726, i64 %i.mc ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index988 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next997, %vec.epilog.vector.body ] ; 5 uses
  %i.sa = mul i64 %index988, 3                    ; 8 uses
  %next.gep989 = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %i.sb = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep990 = getelementptr i8, ptr %i.sb, i64 3
  %i.sc = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep991 = getelementptr i8, ptr %i.sc, i64 6
  %i.sd = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep992 = getelementptr i8, ptr %i.sd, i64 9
  %i.se = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep993 = getelementptr i8, ptr %i.se, i64 12
  %i.sf = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep994 = getelementptr i8, ptr %i.sf, i64 15
  %i.sg = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep995 = getelementptr i8, ptr %i.sg, i64 18
  %i.sh = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep996 = getelementptr i8, ptr %i.sh, i64 21
  %i.si = getelementptr inbounds nuw i8, ptr %next.gep989, i64 1
  %i.sj = getelementptr i8, ptr %i.sb, i64 4
  %i.sk = getelementptr i8, ptr %i.sc, i64 7
  %i.sl = getelementptr i8, ptr %i.sd, i64 10
  %i.sm = getelementptr i8, ptr %i.se, i64 13
  %i.sn = getelementptr i8, ptr %i.sf, i64 16
  %i.so = getelementptr i8, ptr %i.sg, i64 19
  %i.sp = getelementptr i8, ptr %i.sh, i64 22
  %i.sq = load i8, ptr %next.gep989, align 1, !tbaa !34, !alias.scope !61
  %i.sr = load i8, ptr %next.gep990, align 1, !tbaa !34, !alias.scope !61
  %i.ss = load i8, ptr %next.gep991, align 1, !tbaa !34, !alias.scope !61
  %i.st = load i8, ptr %next.gep992, align 1, !tbaa !34, !alias.scope !61
  %i.su = load i8, ptr %next.gep993, align 1, !tbaa !34, !alias.scope !61
  %i.sv = load i8, ptr %next.gep994, align 1, !tbaa !34, !alias.scope !61
  %i.sw = load i8, ptr %next.gep995, align 1, !tbaa !34, !alias.scope !61
  %i.sx = load i8, ptr %next.gep996, align 1, !tbaa !34, !alias.scope !61
  %i.sy = insertelement <8 x i8> poison, i8 %i.sq, i64 0
  %i.sz = insertelement <8 x i8> %i.sy, i8 %i.sr, i64 1
  %i.ta = insertelement <8 x i8> %i.sz, i8 %i.ss, i64 2
  %i.tb = insertelement <8 x i8> %i.ta, i8 %i.st, i64 3
  %i.tc = insertelement <8 x i8> %i.tb, i8 %i.su, i64 4
  %i.td = insertelement <8 x i8> %i.tc, i8 %i.sv, i64 5
  %i.te = insertelement <8 x i8> %i.td, i8 %i.sw, i64 6
  %i.tf = insertelement <8 x i8> %i.te, i8 %i.sx, i64 7
  %i.tg = getelementptr inbounds nuw i8, ptr %.0548727, i64 %index988
  store <8 x i8> %i.tf, ptr %i.tg, align 1, !tbaa !34, !alias.scope !64, !noalias !66
  %i.th = getelementptr inbounds nuw i8, ptr %next.gep989, i64 2
  %i.ti = getelementptr i8, ptr %i.sb, i64 5
  %i.tj = getelementptr i8, ptr %i.sc, i64 8
  %i.tk = getelementptr i8, ptr %i.sd, i64 11
  %i.tl = getelementptr i8, ptr %i.se, i64 14
  %i.tm = getelementptr i8, ptr %i.sf, i64 17
  %i.tn = getelementptr i8, ptr %i.sg, i64 20
  %i.to = getelementptr i8, ptr %i.sh, i64 23
  %i.tp = load i8, ptr %i.si, align 1, !tbaa !34, !alias.scope !61
  %i.tq = load i8, ptr %i.sj, align 1, !tbaa !34, !alias.scope !61
  %i.tr = load i8, ptr %i.sk, align 1, !tbaa !34, !alias.scope !61
  %i.ts = load i8, ptr %i.sl, align 1, !tbaa !34, !alias.scope !61
  %i.tt = load i8, ptr %i.sm, align 1, !tbaa !34, !alias.scope !61
  %i.tu = load i8, ptr %i.sn, align 1, !tbaa !34, !alias.scope !61
  %i.tv = load i8, ptr %i.so, align 1, !tbaa !34, !alias.scope !61
  %i.tw = load i8, ptr %i.sp, align 1, !tbaa !34, !alias.scope !61
  %i.tx = insertelement <8 x i8> poison, i8 %i.tp, i64 0
  %i.ty = insertelement <8 x i8> %i.tx, i8 %i.tq, i64 1
  %i.tz = insertelement <8 x i8> %i.ty, i8 %i.tr, i64 2
  %i.ua = insertelement <8 x i8> %i.tz, i8 %i.ts, i64 3
  %i.ub = insertelement <8 x i8> %i.ua, i8 %i.tt, i64 4
  %i.uc = insertelement <8 x i8> %i.ub, i8 %i.tu, i64 5
  %i.ud = insertelement <8 x i8> %i.uc, i8 %i.tv, i64 6
  %i.ue = insertelement <8 x i8> %i.ud, i8 %i.tw, i64 7
  %i.uf = xor <8 x i8> %i.ue, splat (i8 -128)
  %i.ug = getelementptr inbounds nuw i8, ptr %.0543728, i64 %index988
  store <8 x i8> %i.uf, ptr %i.ug, align 1, !tbaa !34, !alias.scope !69, !noalias !70
  %i.uh = load i8, ptr %i.th, align 1, !tbaa !34, !alias.scope !61
  %i.ui = load i8, ptr %i.ti, align 1, !tbaa !34, !alias.scope !61
  %i.uj = load i8, ptr %i.tj, align 1, !tbaa !34, !alias.scope !61
  %i.uk = load i8, ptr %i.tk, align 1, !tbaa !34, !alias.scope !61
  %i.ul = load i8, ptr %i.tl, align 1, !tbaa !34, !alias.scope !61
  %i.um = load i8, ptr %i.tm, align 1, !tbaa !34, !alias.scope !61
  %i.un = load i8, ptr %i.tn, align 1, !tbaa !34, !alias.scope !61
  %i.uo = load i8, ptr %i.to, align 1, !tbaa !34, !alias.scope !61
  %i.up = insertelement <8 x i8> poison, i8 %i.uh, i64 0
  %i.uq = insertelement <8 x i8> %i.up, i8 %i.ui, i64 1
  %i.ur = insertelement <8 x i8> %i.uq, i8 %i.uj, i64 2
  %i.us = insertelement <8 x i8> %i.ur, i8 %i.uk, i64 3
  %i.ut = insertelement <8 x i8> %i.us, i8 %i.ul, i64 4
  %i.uu = insertelement <8 x i8> %i.ut, i8 %i.um, i64 5
  %i.uv = insertelement <8 x i8> %i.uu, i8 %i.un, i64 6
  %i.uw = insertelement <8 x i8> %i.uv, i8 %i.uo, i64 7
  %i.ux = xor <8 x i8> %i.uw, splat (i8 -128)
  %i.uy = getelementptr inbounds nuw i8, ptr %.0538729, i64 %index988
  store <8 x i8> %i.ux, ptr %i.uy, align 1, !tbaa !34, !alias.scope !71, !noalias !61
  %index.next997 = add nuw i64 %index988, 8       ; 2 uses
  %i.uz = icmp eq i64 %index.next997, %n.vec987
  br i1 %i.uz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n998, label %._crit_edge724, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck933, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv782.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck933 ], [ %n.vec965, %vec.epilog.iter.check ], [ %n.vec987, %vec.epilog.middle.block ] ; 6 uses
  %.2555721.ph = phi ptr [ %.1554726, %iter.check ], [ %.1554726, %vector.memcheck933 ], [ %i.me, %vec.epilog.iter.check ], [ %i.rz, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod1022.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.va = getelementptr inbounds nuw i8, ptr %.2555721.ph, i64 1
  %i.vb = load i8, ptr %.2555721.ph, align 1, !tbaa !34
  %i.vc = getelementptr inbounds nuw i8, ptr %.0548727, i64 %indvars.iv782.ph
  store i8 %i.vb, ptr %i.vc, align 1, !tbaa !34
  %i.vd = getelementptr inbounds nuw i8, ptr %.2555721.ph, i64 2
  %i.ve = load i8, ptr %i.va, align 1, !tbaa !34
  %i.vf = xor i8 %i.ve, -128
  %i.vg = getelementptr inbounds nuw i8, ptr %.0543728, i64 %indvars.iv782.ph
  store i8 %i.vf, ptr %i.vg, align 1, !tbaa !34
  %i.vh = getelementptr inbounds nuw i8, ptr %.2555721.ph, i64 3 ; 2 uses
  %i.vi = load i8, ptr %i.vd, align 1, !tbaa !34
  %i.vj = xor i8 %i.vi, -128
  %i.vk = getelementptr inbounds nuw i8, ptr %.0538729, i64 %indvars.iv782.ph
  store i8 %i.vj, ptr %i.vk, align 1, !tbaa !34
  %indvars.iv.next783.prol = or disjoint i64 %indvars.iv782.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa1001.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.vh, %vec.epilog.scalar.ph.prol ]
  %indvars.iv782.unr = phi i64 [ %indvars.iv782.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next783.prol, %vec.epilog.scalar.ph.prol ]
  %.2555721.unr = phi ptr [ %.2555721.ph, %vec.epilog.scalar.ph.preheader ], [ %i.vh, %vec.epilog.scalar.ph.prol ]
  %i.vl = icmp eq i64 %indvars.iv782.ph, %i.md
  br i1 %i.vl, label %._crit_edge724, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv782 = phi i64 [ %indvars.iv.next783.1, %vec.epilog.scalar.ph ], [ %indvars.iv782.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.2555721 = phi ptr [ %i.we, %vec.epilog.scalar.ph ], [ %.2555721.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.2555721, i64 1
  %i.vn = load i8, ptr %.2555721, align 1, !tbaa !34
  %i.vo = getelementptr inbounds nuw i8, ptr %.0548727, i64 %indvars.iv782
  store i8 %i.vn, ptr %i.vo, align 1, !tbaa !34
  %i.vp = getelementptr inbounds nuw i8, ptr %.2555721, i64 2
  %i.vq = load i8, ptr %i.vm, align 1, !tbaa !34
  %i.vr = xor i8 %i.vq, -128
  %i.vs = getelementptr inbounds nuw i8, ptr %.0543728, i64 %indvars.iv782
  store i8 %i.vr, ptr %i.vs, align 1, !tbaa !34
  %i.vt = getelementptr inbounds nuw i8, ptr %.2555721, i64 3
  %i.vu = load i8, ptr %i.vp, align 1, !tbaa !34
  %i.vv = xor i8 %i.vu, -128
  %i.vw = getelementptr inbounds nuw i8, ptr %.0538729, i64 %indvars.iv782
  store i8 %i.vv, ptr %i.vw, align 1, !tbaa !34
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 1 ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.2555721, i64 4
  %i.vy = load i8, ptr %i.vt, align 1, !tbaa !34
  %i.vz = getelementptr inbounds nuw i8, ptr %.0548727, i64 %indvars.iv.next783
  store i8 %i.vy, ptr %i.vz, align 1, !tbaa !34
  %i.wa = getelementptr inbounds nuw i8, ptr %.2555721, i64 5
  %i.wb = load i8, ptr %i.vx, align 1, !tbaa !34
  %i.wc = xor i8 %i.wb, -128
  %i.wd = getelementptr inbounds nuw i8, ptr %.0543728, i64 %indvars.iv.next783
  store i8 %i.wc, ptr %i.wd, align 1, !tbaa !34
  %i.we = getelementptr inbounds nuw i8, ptr %.2555721, i64 6 ; 2 uses
  %i.wf = load i8, ptr %i.wa, align 1, !tbaa !34
  %i.wg = xor i8 %i.wf, -128
  %i.wh = getelementptr inbounds nuw i8, ptr %.0538729, i64 %indvars.iv.next783
  store i8 %i.wg, ptr %i.wh, align 1, !tbaa !34
  %indvars.iv.next783.1 = add nuw nsw i64 %indvars.iv782, 2 ; 2 uses
  %exitcond786.not.1 = icmp eq i64 %indvars.iv.next783.1, %wide.trip.count785
  br i1 %exitcond786.not.1, label %._crit_edge724, label %vec.epilog.scalar.ph, !llvm.loop !77

._crit_edge724:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block985
  %.lcssa = phi ptr [ %i.rz, %vec.epilog.middle.block ], [ %i.me, %middle.block985 ], [ %.lcssa1001.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.we, %vec.epilog.scalar.ph ]
  %i.wi = load i32, ptr %i.jr, align 8, !tbaa !42
  %i.wj = sext i32 %i.wi to i64
  %i.wk = sub nsw i64 0, %i.wj
  %i.wl = getelementptr inbounds i8, ptr %.0548727, i64 %i.wk
  %i.wm = load i32, ptr %i.jw, align 4, !tbaa !42
  %i.wn = sext i32 %i.wm to i64
  %i.wo = sub nsw i64 0, %i.wn
  %i.wp = getelementptr inbounds i8, ptr %.0543728, i64 %i.wo
  %i.wq = load i32, ptr %i.kd, align 8, !tbaa !42
  %i.wr = sext i32 %i.wq to i64
  %i.ws = sub nsw i64 0, %i.wr
  %i.wt = getelementptr inbounds i8, ptr %.0538729, i64 %i.ws
  %i.wu = add nuw nsw i32 %.5526730, 1            ; 2 uses
  %exitcond787.not = icmp eq i32 %i.wu, %i.j
  br i1 %exitcond787.not, label %.loopexit, label %iter.check, !llvm.loop !78

.preheader605:                                    ; preds = %.preheader605.lr.ph, %._crit_edge713.thread
  %.6527720 = phi i32 [ 0, %.preheader605.lr.ph ], [ %i.aaw, %._crit_edge713.thread ]
  %.1539719 = phi ptr [ %i.kj, %.preheader605.lr.ph ], [ %i.aav, %._crit_edge713.thread ] ; 10 uses
  %.1544718 = phi ptr [ %i.kc, %.preheader605.lr.ph ], [ %i.aar, %._crit_edge713.thread ] ; 10 uses
  %.1549717 = phi ptr [ %i.jv, %.preheader605.lr.ph ], [ %i.aan, %._crit_edge713.thread ] ; 7 uses
  %.3556716 = phi ptr [ %.0553, %.preheader605.lr.ph ], [ %.4557.lcssa820, %._crit_edge713.thread ] ; 12 uses
  br i1 %5, label %.lr.ph712.preheader, label %._crit_edge713.thread

.lr.ph712.preheader:                              ; preds = %.preheader605
  br i1 %min.iters.check919, label %.lr.ph712.preheader1002, label %vector.memcheck889

vector.memcheck889:                               ; preds = %.lr.ph712.preheader
  %i.wv = getelementptr i8, ptr %.1549717, i64 %i.lj
  %scevgep891 = getelementptr i8, ptr %i.wv, i64 4 ; 3 uses
  %scevgep892 = getelementptr i8, ptr %.1544718, i64 %i.lm ; 3 uses
  %scevgep893 = getelementptr i8, ptr %.1539719, i64 %i.lm ; 3 uses
  %i.ww = getelementptr i8, ptr %.3556716, i64 %i.ln
  %scevgep894 = getelementptr i8, ptr %i.ww, i64 8 ; 3 uses
  %bound0895 = icmp ult ptr %.1549717, %scevgep892
  %bound1896 = icmp ult ptr %.1544718, %scevgep891
  %found.conflict897 = and i1 %bound0895, %bound1896
  %bound0898 = icmp ult ptr %.1549717, %scevgep893
  %bound1899 = icmp ult ptr %.1539719, %scevgep891
  %found.conflict900 = and i1 %bound0898, %bound1899
  %conflict.rdx901 = or i1 %found.conflict897, %found.conflict900
  %bound0902 = icmp ult ptr %.1549717, %scevgep894
  %bound1903 = icmp ult ptr %.3556716, %scevgep891
  %found.conflict904 = and i1 %bound0902, %bound1903
  %conflict.rdx905 = or i1 %conflict.rdx901, %found.conflict904
  %bound0906 = icmp ult ptr %.1544718, %scevgep893
  %bound1907 = icmp ult ptr %.1539719, %scevgep892
  %found.conflict908 = and i1 %bound0906, %bound1907
  %conflict.rdx909 = or i1 %conflict.rdx905, %found.conflict908
  %bound0910 = icmp ult ptr %.1544718, %scevgep894
  %bound1911 = icmp ult ptr %.3556716, %scevgep892
  %found.conflict912 = and i1 %bound0910, %bound1911
  %conflict.rdx913 = or i1 %conflict.rdx909, %found.conflict912
  %bound0914 = icmp ult ptr %.1539719, %scevgep894
  %bound1915 = icmp ult ptr %.3556716, %scevgep893
  %found.conflict916 = and i1 %bound0914, %bound1915
  %conflict.rdx917 = or i1 %conflict.rdx913, %found.conflict916
  br i1 %conflict.rdx917, label %.lr.ph712.preheader1002, label %vector.ph920

vector.ph920:                                     ; preds = %vector.memcheck889
  %i.wx = getelementptr i8, ptr %.3556716, i64 %i.lw
  br label %vector.body922

vector.body922:                                   ; preds = %vector.body922, %vector.ph920
  %index923 = phi i64 [ 0, %vector.ph920 ], [ %index.next929, %vector.body922 ] ; 4 uses
  %i.wy = shl nuw i64 %index923, 2
  %i.wz = shl i64 %index923, 3                    ; 4 uses
  %next.gep924 = getelementptr i8, ptr %.3556716, i64 %i.wz ; 5 uses
  %i.xa = getelementptr i8, ptr %.3556716, i64 %i.wz ; 4 uses
  %i.xb = getelementptr i8, ptr %.3556716, i64 %i.wz ; 4 uses
  %i.xc = getelementptr i8, ptr %.3556716, i64 %i.wz ; 4 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.1549717, i64 %i.wy
  %wide.vec = load <8 x i32>, ptr %next.gep924, align 1, !alias.scope !79
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x i32> %strided.vec, ptr %i.xd, align 1, !alias.scope !82, !noalias !84
  %i.xe = getelementptr i8, ptr %i.xa, i64 12
  %i.xf = getelementptr i8, ptr %i.xb, i64 20
  %i.xg = getelementptr i8, ptr %i.xc, i64 28
  %i.xh = getelementptr i8, ptr %i.xa, i64 13
  %i.xi = getelementptr i8, ptr %i.xb, i64 21
  %i.xj = getelementptr i8, ptr %i.xc, i64 29
  %i.xk = load <16 x i8>, ptr %next.gep924, align 1
  %i.xl = shufflevector <16 x i8> %i.xk, <16 x i8> poison, <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>
  %i.xm = load i8, ptr %i.xe, align 1, !tbaa !34, !alias.scope !79
  %i.xn = load i8, ptr %i.xf, align 1, !tbaa !34, !alias.scope !79
  %i.xo = load i8, ptr %i.xg, align 1, !tbaa !34, !alias.scope !79
  %i.xp = insertelement <4 x i8> %i.xl, i8 %i.xm, i64 1
  %i.xq = insertelement <4 x i8> %i.xp, i8 %i.xn, i64 2
  %i.xr = insertelement <4 x i8> %i.xq, i8 %i.xo, i64 3
  %i.xs = shl nuw nsw i64 %index923, 1            ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.1544718, i64 %i.xs
  %i.xu = getelementptr i8, ptr %i.xa, i64 14
  %i.xv = getelementptr i8, ptr %i.xb, i64 22
  %i.xw = getelementptr i8, ptr %i.xc, i64 30
  %i.xx = load <16 x i8>, ptr %next.gep924, align 1
  %i.xy = shufflevector <16 x i8> %i.xx, <16 x i8> poison, <4 x i32> <i32 5, i32 poison, i32 poison, i32 poison>
  %i.xz = load i8, ptr %i.xh, align 1, !tbaa !34, !alias.scope !79
  %i.ya = load i8, ptr %i.xi, align 1, !tbaa !34, !alias.scope !79
  %i.yb = load i8, ptr %i.xj, align 1, !tbaa !34, !alias.scope !79
  %i.yc = insertelement <4 x i8> %i.xy, i8 %i.xz, i64 1
  %i.yd = insertelement <4 x i8> %i.yc, i8 %i.ya, i64 2
  %i.ye = insertelement <4 x i8> %i.yd, i8 %i.yb, i64 3
  %i.yf = shufflevector <4 x i8> %i.xr, <4 x i8> %i.ye, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = xor <8 x i8> %i.yf, splat (i8 -128)
  store <8 x i8> %interleaved.vec, ptr %i.xt, align 1, !tbaa !34, !alias.scope !87, !noalias !88
  %i.yg = getelementptr i8, ptr %i.xa, i64 15
  %i.yh = getelementptr i8, ptr %i.xb, i64 23
  %i.yi = getelementptr i8, ptr %i.xc, i64 31
  %i.yj = load <16 x i8>, ptr %next.gep924, align 1
  %i.yk = shufflevector <16 x i8> %i.yj, <16 x i8> poison, <4 x i32> <i32 6, i32 poison, i32 poison, i32 poison>
  %i.yl = load i8, ptr %i.xu, align 1, !tbaa !34, !alias.scope !79
  %i.ym = load i8, ptr %i.xv, align 1, !tbaa !34, !alias.scope !79
  %i.yn = load i8, ptr %i.xw, align 1, !tbaa !34, !alias.scope !79
  %i.yo = insertelement <4 x i8> %i.yk, i8 %i.yl, i64 1
  %i.yp = insertelement <4 x i8> %i.yo, i8 %i.ym, i64 2
  %i.yq = insertelement <4 x i8> %i.yp, i8 %i.yn, i64 3
  %i.yr = getelementptr inbounds nuw i8, ptr %.1539719, i64 %i.xs
  %i.ys = load <16 x i8>, ptr %next.gep924, align 1
  %i.yt = shufflevector <16 x i8> %i.ys, <16 x i8> poison, <4 x i32> <i32 7, i32 poison, i32 poison, i32 poison>
  %i.yu = load i8, ptr %i.yg, align 1, !tbaa !34, !alias.scope !79
  %i.yv = load i8, ptr %i.yh, align 1, !tbaa !34, !alias.scope !79
  %i.yw = load i8, ptr %i.yi, align 1, !tbaa !34, !alias.scope !79
  %i.yx = insertelement <4 x i8> %i.yt, i8 %i.yu, i64 1
  %i.yy = insertelement <4 x i8> %i.yx, i8 %i.yv, i64 2
  %i.yz = insertelement <4 x i8> %i.yy, i8 %i.yw, i64 3
  %i.za = shufflevector <4 x i8> %i.yq, <4 x i8> %i.yz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec928 = xor <8 x i8> %i.za, splat (i8 -128)
  store <8 x i8> %interleaved.vec928, ptr %i.yr, align 1, !tbaa !34, !alias.scope !89, !noalias !79
  %index.next929 = add nuw i64 %index923, 4       ; 2 uses
  %i.zb = icmp eq i64 %index.next929, %n.vec921
  br i1 %i.zb, label %.lr.ph712.preheader1002, label %vector.body922, !llvm.loop !90

.lr.ph712.preheader1002:                          ; preds = %vector.body922, %vector.memcheck889, %.lr.ph712.preheader
  %indvars.iv778.ph = phi i64 [ 0, %vector.memcheck889 ], [ 0, %.lr.ph712.preheader ], [ %i.lv, %vector.body922 ]
  %.4557710.ph = phi ptr [ %.3556716, %vector.memcheck889 ], [ %.3556716, %.lr.ph712.preheader ], [ %i.wx, %vector.body922 ]
  br label %.lr.ph712

.lr.ph712:                                        ; preds = %.lr.ph712.preheader1002, %.lr.ph712
  %indvars.iv778 = phi i64 [ %indvars.iv.next779, %.lr.ph712 ], [ %indvars.iv778.ph, %.lr.ph712.preheader1002 ] ; 3 uses
  %.4557710 = phi ptr [ %i.zt, %.lr.ph712 ], [ %.4557710.ph, %.lr.ph712.preheader1002 ] ; 6 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.1549717, i64 %indvars.iv778
  %i.zd = load i32, ptr %.4557710, align 1
  store i32 %i.zd, ptr %i.zc, align 1
  %i.ze = getelementptr inbounds nuw i8, ptr %.4557710, i64 4
  %i.zf = getelementptr inbounds nuw i8, ptr %.4557710, i64 5
  %i.zg = load i8, ptr %i.ze, align 1, !tbaa !34
  %i.zh = xor i8 %i.zg, -128
  %i.zi = lshr exact i64 %indvars.iv778, 1        ; 3 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.1544718, i64 %i.zi
  store i8 %i.zh, ptr %i.zj, align 1, !tbaa !34
  %i.zk = getelementptr inbounds nuw i8, ptr %.4557710, i64 6
  %i.zl = load i8, ptr %i.zf, align 1, !tbaa !34
  %i.zm = xor i8 %i.zl, -128
  %i.zn = or disjoint i64 %i.zi, 1                ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.1544718, i64 %i.zn
  store i8 %i.zm, ptr %i.zo, align 1, !tbaa !34
  %i.zp = getelementptr inbounds nuw i8, ptr %.4557710, i64 7
  %i.zq = load i8, ptr %i.zk, align 1, !tbaa !34
  %i.zr = xor i8 %i.zq, -128
  %i.zs = getelementptr inbounds nuw i8, ptr %.1539719, i64 %i.zi
  store i8 %i.zr, ptr %i.zs, align 1, !tbaa !34
  %i.zt = getelementptr inbounds nuw i8, ptr %.4557710, i64 8 ; 3 uses
  %i.zu = load i8, ptr %i.zp, align 1, !tbaa !34
  %i.zv = xor i8 %i.zu, -128
  %i.zw = getelementptr inbounds nuw i8, ptr %.1539719, i64 %i.zn
  store i8 %i.zv, ptr %i.zw, align 1, !tbaa !34
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778, 4 ; 3 uses
  %i.zx = icmp samesign ult i64 %indvars.iv.next779, %6
  br i1 %i.zx, label %.lr.ph712, label %._crit_edge713, !llvm.loop !91

._crit_edge713:                                   ; preds = %.lr.ph712
  %i.zy = trunc nuw nsw i64 %indvars.iv.next779 to i32 ; 2 uses
  %i.zz = icmp sgt i32 %i.h, %i.zy
  br i1 %i.zz, label %bb.au, label %._crit_edge713.thread

bb.au:                                            ; preds = %._crit_edge713
  %i.aaa = lshr exact i32 %i.zy, 1                ; 2 uses
  %i.aab = add nsw i32 %i.aaa, -1
  %i.aac = zext nneg i32 %i.aab to i64            ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.1544718, i64 %i.aac
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !34
  %i.aaf = zext nneg i32 %i.aaa to i64            ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.1544718, i64 %i.aaf
  store i8 %i.aae, ptr %i.aag, align 1, !tbaa !34
  %i.aah = getelementptr inbounds nuw i8, ptr %.1539719, i64 %i.aac
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !34
  %i.aaj = getelementptr inbounds nuw i8, ptr %.1539719, i64 %i.aaf
  store i8 %i.aai, ptr %i.aaj, align 1, !tbaa !34
  br label %._crit_edge713.thread

._crit_edge713.thread:                            ; preds = %.preheader605, %bb.au, %._crit_edge713
  %.4557.lcssa820 = phi ptr [ %i.zt, %._crit_edge713 ], [ %i.zt, %bb.au ], [ %.3556716, %.preheader605 ]
  %i.aak = load i32, ptr %i.jr, align 8, !tbaa !42
  %i.aal = sext i32 %i.aak to i64
  %i.aam = sub nsw i64 0, %i.aal
  %i.aan = getelementptr inbounds i8, ptr %.1549717, i64 %i.aam
  %i.aao = load i32, ptr %i.jw, align 4, !tbaa !42
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = sub nsw i64 0, %i.aap
  %i.aar = getelementptr inbounds i8, ptr %.1544718, i64 %i.aaq
  %i.aas = load i32, ptr %i.kd, align 8, !tbaa !42
  %i.aat = sext i32 %i.aas to i64
  %i.aau = sub nsw i64 0, %i.aat
  %i.aav = getelementptr inbounds i8, ptr %.1539719, i64 %i.aau
  %i.aaw = add nuw nsw i32 %.6527720, 1           ; 2 uses
  %exitcond781.not = icmp eq i32 %i.aaw, %i.j
  br i1 %exitcond781.not, label %.loopexit, label %.preheader605, !llvm.loop !92

bb.av:                                            ; preds = %.loopexit617
  %i.aax = icmp sgt i32 %i.j, 0
  br i1 %i.aax, label %.lr.ph709, label %.loopexit

.lr.ph709:                                        ; preds = %bb.av
  %i.aay = mul nsw i32 %i.h, 3                    ; 3 uses
  %i.aaz = add nsw i32 %i.aay, 3
  %i.aba = and i32 %i.aaz, -4                     ; 2 uses
  %i.abb = mul nsw i32 %i.aba, %i.j
  %i.abc = icmp ult i32 %.2506, %i.abb
  %.602 = select i1 %i.abc, i32 %i.aay, i32 %i.aba
  %i.abd = sext i32 %i.aay to i64                 ; 3 uses
  %i.abe = sext i32 %.602 to i64                  ; 3 uses
  %xtraiter1019 = and i32 %i.j, 1
  %lcmp.mod1020.not = icmp eq i32 %xtraiter1019, 0
  br i1 %lcmp.mod1020.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph709
  %i.abf = load i32, ptr %i.jr, align 8, !tbaa !42
  %i.abg = mul nsw i32 %i.abf, %i.jq
  %i.abh = sext i32 %i.abg to i64
  %i.abi = getelementptr inbounds i8, ptr %i.m, i64 %i.abh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abi, ptr align 1 %.0553, i64 %i.abd, i1 false)
  %i.abj = getelementptr inbounds i8, ptr %.0553, i64 %i.abe
  %i.abk = add nsw i32 %i.j, -2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph709
  %.7707.unr = phi i32 [ %i.jq, %.lr.ph709 ], [ %i.abk, %.prol.loopexit.unr-lcssa ]
  %.5558706.unr = phi ptr [ %.0553, %.lr.ph709 ], [ %i.abj, %.prol.loopexit.unr-lcssa ]
  %i.abl = icmp eq i32 %i.jq, 0
  br i1 %i.abl, label %.loopexit, label %.lr.ph709.new

.lr.ph709.new:                                    ; preds = %.prol.loopexit, %.lr.ph709.new
  %.7707 = phi i32 [ %i.abx, %.lr.ph709.new ], [ %.7707.unr, %.prol.loopexit ] ; 3 uses
  %.5558706 = phi ptr [ %i.abw, %.lr.ph709.new ], [ %.5558706.unr, %.prol.loopexit ] ; 2 uses
  %i.abm = load i32, ptr %i.jr, align 8, !tbaa !42
  %i.abn = mul nsw i32 %i.abm, %.7707
  %i.abo = sext i32 %i.abn to i64
  %i.abp = getelementptr inbounds i8, ptr %i.m, i64 %i.abo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abp, ptr align 1 %.5558706, i64 %i.abd, i1 false)
  %i.abq = getelementptr inbounds i8, ptr %.5558706, i64 %i.abe ; 2 uses
  %i.abr = add nsw i32 %.7707, -1                 ; 2 uses
  %i.abs = load i32, ptr %i.jr, align 8, !tbaa !42
  %i.abt = mul nsw i32 %i.abs, %i.abr
  %i.abu = sext i32 %i.abt to i64
  %i.abv = getelementptr inbounds i8, ptr %i.m, i64 %i.abu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abv, ptr align 1 %i.abq, i64 %i.abd, i1 false)
  %i.abw = getelementptr inbounds i8, ptr %i.abq, i64 %i.abe
  %i.abx = add nsw i32 %.7707, -2
  %.not843.1 = icmp eq i32 %i.abr, 0
  br i1 %.not843.1, label %.loopexit, label %.lr.ph709.new, !llvm.loop !93

.preheader609:                                    ; preds = %.preheader609.lr.ph, %._crit_edge698.thread
  %.8705 = phi i32 [ 0, %.preheader609.lr.ph ], [ %i.adj, %._crit_edge698.thread ]
  %.2540704 = phi ptr [ %i.kj, %.preheader609.lr.ph ], [ %i.adi, %._crit_edge698.thread ] ; 4 uses
  %.2545703 = phi ptr [ %i.kc, %.preheader609.lr.ph ], [ %i.ade, %._crit_edge698.thread ] ; 4 uses
  %.2550702 = phi ptr [ %i.jv, %.preheader609.lr.ph ], [ %i.ada, %._crit_edge698.thread ] ; 2 uses
  %.6559701 = phi ptr [ %.0553, %.preheader609.lr.ph ], [ %.7560.lcssa825, %._crit_edge698.thread ] ; 2 uses
  br i1 %i.lf, label %.lr.ph697, label %._crit_edge698.thread

.lr.ph697:                                        ; preds = %.preheader609, %.lr.ph697
  %indvars.iv774 = phi i64 [ %indvars.iv.next775, %.lr.ph697 ], [ 0, %.preheader609 ] ; 3 uses
  %.7560695 = phi ptr [ %i.acg, %.lr.ph697 ], [ %.6559701, %.preheader609 ] ; 4 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.2550702, i64 %indvars.iv774
  %i.abz = load i32, ptr %.7560695, align 1
  store i32 %i.abz, ptr %i.aby, align 1
  %i.aca = getelementptr inbounds nuw i8, ptr %.7560695, i64 4
  %i.acb = getelementptr inbounds nuw i8, ptr %.7560695, i64 5
  %i.acc = load i8, ptr %i.aca, align 1, !tbaa !34
  %i.acd = xor i8 %i.acc, -128
  %i.ace = lshr exact i64 %indvars.iv774, 2       ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.2545703, i64 %i.ace
  store i8 %i.acd, ptr %i.acf, align 1, !tbaa !34
  %i.acg = getelementptr inbounds nuw i8, ptr %.7560695, i64 6 ; 3 uses
  %i.ach = load i8, ptr %i.acb, align 1, !tbaa !34
  %i.aci = xor i8 %i.ach, -128
  %i.acj = getelementptr inbounds nuw i8, ptr %.2540704, i64 %i.ace
  store i8 %i.aci, ptr %i.acj, align 1, !tbaa !34
  %indvars.iv.next775 = add nuw nsw i64 %indvars.iv774, 4 ; 3 uses
  %i.ack = icmp samesign ult i64 %indvars.iv.next775, %i.lg
  br i1 %i.ack, label %.lr.ph697, label %._crit_edge698, !llvm.loop !94

._crit_edge698:                                   ; preds = %.lr.ph697
  %i.acl = trunc nuw nsw i64 %indvars.iv.next775 to i32 ; 2 uses
  %i.acm = icmp sgt i32 %i.h, %i.acl
  br i1 %i.acm, label %bb.aw, label %._crit_edge698.thread

bb.aw:                                            ; preds = %._crit_edge698
  %i.acn = lshr exact i32 %i.acl, 2               ; 2 uses
  %i.aco = add nsw i32 %i.acn, -1
  %i.acp = zext nneg i32 %i.aco to i64            ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.2545703, i64 %i.acp
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !34
  %i.acs = zext nneg i32 %i.acn to i64            ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %.2545703, i64 %i.acs
  store i8 %i.acr, ptr %i.act, align 1, !tbaa !34
  %i.acu = getelementptr inbounds nuw i8, ptr %.2540704, i64 %i.acp
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !34
  %i.acw = getelementptr inbounds nuw i8, ptr %.2540704, i64 %i.acs
  store i8 %i.acv, ptr %i.acw, align 1, !tbaa !34
  br label %._crit_edge698.thread

._crit_edge698.thread:                            ; preds = %.preheader609, %bb.aw, %._crit_edge698
  %.7560.lcssa825 = phi ptr [ %i.acg, %._crit_edge698 ], [ %i.acg, %bb.aw ], [ %.6559701, %.preheader609 ]
  %i.acx = load i32, ptr %i.jr, align 8, !tbaa !42
  %i.acy = sext i32 %i.acx to i64
  %i.acz = sub nsw i64 0, %i.acy
  %i.ada = getelementptr inbounds i8, ptr %.2550702, i64 %i.acz
  %i.adb = load i32, ptr %i.jw, align 4, !tbaa !42
  %i.adc = sext i32 %i.adb to i64
  %i.add = sub nsw i64 0, %i.adc
  %i.ade = getelementptr inbounds i8, ptr %.2545703, i64 %i.add
  %i.adf = load i32, ptr %i.kd, align 8, !tbaa !42
  %i.adg = sext i32 %i.adf to i64
  %i.adh = sub nsw i64 0, %i.adg
  %i.adi = getelementptr inbounds i8, ptr %.2540704, i64 %i.adh
  %i.adj = add nuw nsw i32 %.8705, 1              ; 2 uses
  %exitcond777.not = icmp eq i32 %i.adj, %i.j
  br i1 %exitcond777.not, label %.loopexit, label %.preheader609, !llvm.loop !95

.preheader612:                                    ; preds = %.preheader612.preheader, %._crit_edge688
  %.9694 = phi i32 [ %i.ahn, %._crit_edge688 ], [ 0, %.preheader612.preheader ]
  %.3541693 = phi ptr [ %i.ahm, %._crit_edge688 ], [ %i.kj, %.preheader612.preheader ] ; 7 uses
  %.3546692 = phi ptr [ %i.ahi, %._crit_edge688 ], [ %i.kc, %.preheader612.preheader ] ; 7 uses
  %.3551691 = phi ptr [ %i.ahe, %._crit_edge688 ], [ %i.jv, %.preheader612.preheader ] ; 7 uses
  %.8561690 = phi ptr [ %i.agw, %._crit_edge688 ], [ %.0553, %.preheader612.preheader ] ; 15 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader612
  %i.adk = getelementptr i8, ptr %.3551691, i64 %i.kq
  %scevgep = getelementptr i8, ptr %i.adk, i64 2  ; 3 uses
  %scevgep859 = getelementptr i8, ptr %.3546692, i64 %i.ks ; 3 uses
  %scevgep860 = getelementptr i8, ptr %.3541693, i64 %i.ks ; 3 uses
  %i.adl = getelementptr i8, ptr %.8561690, i64 %i.kt
  %scevgep861 = getelementptr i8, ptr %i.adl, i64 4 ; 3 uses
  %bound0 = icmp ult ptr %.3551691, %scevgep859
  %bound1 = icmp ult ptr %.3546692, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0862 = icmp ult ptr %.3551691, %scevgep860
  %bound1863 = icmp ult ptr %.3541693, %scevgep
  %found.conflict864 = and i1 %bound0862, %bound1863
  %conflict.rdx = or i1 %found.conflict, %found.conflict864
  %bound0865 = icmp ult ptr %.3551691, %scevgep861
  %bound1866 = icmp ult ptr %.8561690, %scevgep
  %found.conflict867 = and i1 %bound0865, %bound1866
  %conflict.rdx868 = or i1 %conflict.rdx, %found.conflict867
  %bound0869 = icmp ult ptr %.3546692, %scevgep860
  %bound1870 = icmp ult ptr %.3541693, %scevgep859
  %found.conflict871 = and i1 %bound0869, %bound1870
  %conflict.rdx872 = or i1 %conflict.rdx868, %found.conflict871
  %bound0873 = icmp ult ptr %.3546692, %scevgep861
  %bound1874 = icmp ult ptr %.8561690, %scevgep859
  %found.conflict875 = and i1 %bound0873, %bound1874
  %conflict.rdx876 = or i1 %conflict.rdx872, %found.conflict875
  %bound0877 = icmp ult ptr %.3541693, %scevgep861
  %bound1878 = icmp ult ptr %.8561690, %scevgep860
  %found.conflict879 = and i1 %bound0877, %bound1878
  %conflict.rdx880 = or i1 %conflict.rdx876, %found.conflict879
  br i1 %conflict.rdx880, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.adm = getelementptr i8, ptr %.8561690, i64 %i.lc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.adn = shl nuw i64 %index, 1
  %i.ado = shl i64 %index, 2                      ; 8 uses
  %next.gep = getelementptr i8, ptr %.8561690, i64 %i.ado ; 3 uses
  %i.adp = getelementptr i8, ptr %.8561690, i64 %i.ado ; 3 uses
  %next.gep881 = getelementptr i8, ptr %i.adp, i64 4
  %i.adq = getelementptr i8, ptr %.8561690, i64 %i.ado ; 3 uses
  %next.gep882 = getelementptr i8, ptr %i.adq, i64 8
  %i.adr = getelementptr i8, ptr %.8561690, i64 %i.ado ; 3 uses
  %next.gep883 = getelementptr i8, ptr %i.adr, i64 12
  %i.ads = getelementptr i8, ptr %.8561690, i64 %i.ado ; 3 uses
  %next.gep884 = getelementptr i8, ptr %i.ads, i64 16
  %i.adt = getelementptr i8, ptr %.8561690, i64 %i.ado ; 3 uses
  %next.gep885 = getelementptr i8, ptr %i.adt, i64 20
  %i.adu = getelementptr i8, ptr %.8561690, i64 %i.ado ; 3 uses
  %next.gep886 = getelementptr i8, ptr %i.adu, i64 24
  %i.adv = getelementptr i8, ptr %.8561690, i64 %i.ado ; 3 uses
  %next.gep887 = getelementptr i8, ptr %i.adv, i64 28
  %i.adw = getelementptr inbounds nuw i8, ptr %.3551691, i64 %i.adn
  %i.adx = load i16, ptr %next.gep, align 1, !alias.scope !96
  %i.ady = load i16, ptr %next.gep881, align 1, !alias.scope !96
  %i.adz = load i16, ptr %next.gep882, align 1, !alias.scope !96
  %i.aea = load i16, ptr %next.gep883, align 1, !alias.scope !96
  %i.aeb = load i16, ptr %next.gep884, align 1, !alias.scope !96
  %i.aec = load i16, ptr %next.gep885, align 1, !alias.scope !96
  %i.aed = load i16, ptr %next.gep886, align 1, !alias.scope !96
  %i.aee = load i16, ptr %next.gep887, align 1, !alias.scope !96
  %i.aef = insertelement <8 x i16> poison, i16 %i.adx, i64 0
  %i.aeg = insertelement <8 x i16> %i.aef, i16 %i.ady, i64 1
  %i.aeh = insertelement <8 x i16> %i.aeg, i16 %i.adz, i64 2
  %i.aei = insertelement <8 x i16> %i.aeh, i16 %i.aea, i64 3
  %i.aej = insertelement <8 x i16> %i.aei, i16 %i.aeb, i64 4
  %i.aek = insertelement <8 x i16> %i.aej, i16 %i.aec, i64 5
  %i.ael = insertelement <8 x i16> %i.aek, i16 %i.aed, i64 6
  %i.aem = insertelement <8 x i16> %i.ael, i16 %i.aee, i64 7
  store <8 x i16> %i.aem, ptr %i.adw, align 1, !alias.scope !99, !noalias !101
  %i.aen = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.aeo = getelementptr i8, ptr %i.adp, i64 6
  %i.aep = getelementptr i8, ptr %i.adq, i64 10
  %i.aeq = getelementptr i8, ptr %i.adr, i64 14
  %i.aer = getelementptr i8, ptr %i.ads, i64 18
  %i.aes = getelementptr i8, ptr %i.adt, i64 22
  %i.aet = getelementptr i8, ptr %i.adu, i64 26
  %i.aeu = getelementptr i8, ptr %i.adv, i64 30
  %i.aev = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %i.aew = getelementptr i8, ptr %i.adp, i64 7
  %i.aex = getelementptr i8, ptr %i.adq, i64 11
  %i.aey = getelementptr i8, ptr %i.adr, i64 15
  %i.aez = getelementptr i8, ptr %i.ads, i64 19
  %i.afa = getelementptr i8, ptr %i.adt, i64 23
  %i.afb = getelementptr i8, ptr %i.adu, i64 27
  %i.afc = getelementptr i8, ptr %i.adv, i64 31
  %i.afd = load i8, ptr %i.aen, align 1, !tbaa !34, !alias.scope !96
  %i.afe = load i8, ptr %i.aeo, align 1, !tbaa !34, !alias.scope !96
  %i.aff = load i8, ptr %i.aep, align 1, !tbaa !34, !alias.scope !96
  %i.afg = load i8, ptr %i.aeq, align 1, !tbaa !34, !alias.scope !96
  %i.afh = load i8, ptr %i.aer, align 1, !tbaa !34, !alias.scope !96
  %i.afi = load i8, ptr %i.aes, align 1, !tbaa !34, !alias.scope !96
  %i.afj = load i8, ptr %i.aet, align 1, !tbaa !34, !alias.scope !96
  %i.afk = load i8, ptr %i.aeu, align 1, !tbaa !34, !alias.scope !96
  %i.afl = insertelement <8 x i8> poison, i8 %i.afd, i64 0
  %i.afm = insertelement <8 x i8> %i.afl, i8 %i.afe, i64 1
  %i.afn = insertelement <8 x i8> %i.afm, i8 %i.aff, i64 2
  %i.afo = insertelement <8 x i8> %i.afn, i8 %i.afg, i64 3
  %i.afp = insertelement <8 x i8> %i.afo, i8 %i.afh, i64 4
  %i.afq = insertelement <8 x i8> %i.afp, i8 %i.afi, i64 5
  %i.afr = insertelement <8 x i8> %i.afq, i8 %i.afj, i64 6
  %i.afs = insertelement <8 x i8> %i.afr, i8 %i.afk, i64 7
  %i.aft = xor <8 x i8> %i.afs, splat (i8 -128)
  %i.afu = getelementptr inbounds nuw i8, ptr %.3546692, i64 %index
  store <8 x i8> %i.aft, ptr %i.afu, align 1, !tbaa !34, !alias.scope !104, !noalias !105
  %i.afv = load i8, ptr %i.aev, align 1, !tbaa !34, !alias.scope !96
  %i.afw = load i8, ptr %i.aew, align 1, !tbaa !34, !alias.scope !96
  %i.afx = load i8, ptr %i.aex, align 1, !tbaa !34, !alias.scope !96
  %i.afy = load i8, ptr %i.aey, align 1, !tbaa !34, !alias.scope !96
  %i.afz = load i8, ptr %i.aez, align 1, !tbaa !34, !alias.scope !96
  %i.aga = load i8, ptr %i.afa, align 1, !tbaa !34, !alias.scope !96
  %i.agb = load i8, ptr %i.afb, align 1, !tbaa !34, !alias.scope !96
  %i.agc = load i8, ptr %i.afc, align 1, !tbaa !34, !alias.scope !96
  %i.agd = insertelement <8 x i8> poison, i8 %i.afv, i64 0
  %i.age = insertelement <8 x i8> %i.agd, i8 %i.afw, i64 1
  %i.agf = insertelement <8 x i8> %i.age, i8 %i.afx, i64 2
  %i.agg = insertelement <8 x i8> %i.agf, i8 %i.afy, i64 3
  %i.agh = insertelement <8 x i8> %i.agg, i8 %i.afz, i64 4
  %i.agi = insertelement <8 x i8> %i.agh, i8 %i.aga, i64 5
  %i.agj = insertelement <8 x i8> %i.agi, i8 %i.agb, i64 6
  %i.agk = insertelement <8 x i8> %i.agj, i8 %i.agc, i64 7
  %i.agl = xor <8 x i8> %i.agk, splat (i8 -128)
  %i.agm = getelementptr inbounds nuw i8, ptr %.3541693, i64 %index
  store <8 x i8> %i.agl, ptr %i.agm, align 1, !tbaa !34, !alias.scope !106, !noalias !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.agn = icmp eq i64 %index.next, %n.vec
  br i1 %i.agn, label %scalar.ph.preheader, label %vector.body, !llvm.loop !107

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.preheader612
  %indvars.iv770.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader612 ], [ %i.lb, %vector.body ]
  %.9562685.ph = phi ptr [ %.8561690, %vector.memcheck ], [ %.8561690, %.preheader612 ], [ %i.adm, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %scalar.ph ], [ %indvars.iv770.ph, %scalar.ph.preheader ] ; 3 uses
  %.9562685 = phi ptr [ %i.agw, %scalar.ph ], [ %.9562685.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %.3551691, i64 %indvars.iv770
  %i.agp = load i16, ptr %.9562685, align 1
  store i16 %i.agp, ptr %i.ago, align 1
  %i.agq = getelementptr inbounds nuw i8, ptr %.9562685, i64 2
  %i.agr = getelementptr inbounds nuw i8, ptr %.9562685, i64 3
  %i.ags = load i8, ptr %i.agq, align 1, !tbaa !34
  %i.agt = xor i8 %i.ags, -128
  %i.agu = lshr exact i64 %indvars.iv770, 1       ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.3546692, i64 %i.agu
  store i8 %i.agt, ptr %i.agv, align 1, !tbaa !34
  %i.agw = getelementptr inbounds nuw i8, ptr %.9562685, i64 4 ; 2 uses
  %i.agx = load i8, ptr %i.agr, align 1, !tbaa !34
  %i.agy = xor i8 %i.agx, -128
  %i.agz = getelementptr inbounds nuw i8, ptr %.3541693, i64 %i.agu
  store i8 %i.agy, ptr %i.agz, align 1, !tbaa !34
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, 2 ; 2 uses
  %i.aha = icmp samesign ult i64 %indvars.iv.next771, %i.ko
  br i1 %i.aha, label %scalar.ph, label %._crit_edge688, !llvm.loop !108

._crit_edge688:                                   ; preds = %scalar.ph
  %i.ahb = load i32, ptr %i.jr, align 8, !tbaa !42
  %i.ahc = sext i32 %i.ahb to i64
  %i.ahd = sub nsw i64 0, %i.ahc
  %i.ahe = getelementptr inbounds i8, ptr %.3551691, i64 %i.ahd
  %i.ahf = load i32, ptr %i.jw, align 4, !tbaa !42
  %i.ahg = sext i32 %i.ahf to i64
  %i.ahh = sub nsw i64 0, %i.ahg
  %i.ahi = getelementptr inbounds i8, ptr %.3546692, i64 %i.ahh
  %i.ahj = load i32, ptr %i.kd, align 8, !tbaa !42
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = sub nsw i64 0, %i.ahk
  %i.ahm = getelementptr inbounds i8, ptr %.3541693, i64 %i.ahl
  %i.ahn = add nuw nsw i32 %.9694, 1              ; 2 uses
  %exitcond773.not = icmp eq i32 %i.ahn, %i.j
  br i1 %exitcond773.not, label %.loopexit, label %.preheader612, !llvm.loop !109

bb.ax:                                            ; preds = %.loopexit617
  %i.aho = icmp sgt i32 %i.j, 1
  %i.ahp = icmp sgt i32 %i.h, 1
  %or.cond842 = select i1 %i.aho, i1 %i.ahp, i1 false
  br i1 %or.cond842, label %.preheader615.preheader, label %.loopexit

.preheader615.preheader:                          ; preds = %bb.ax
  %i.ahq = add nsw i32 %i.h, -1
  %i.ahr = lshr i32 %i.j, 1
  %i.ahs = add nsw i32 %i.ahr, -1                 ; 2 uses
  %i.aht = mul nsw i32 %i.jx, %i.ahs
  %i.ahu = sext i32 %i.aht to i64
  %i.ahv = getelementptr inbounds i8, ptr %i.ka, i64 %i.ahu
  %i.ahw = mul nsw i32 %i.ke, %i.ahs
  %i.ahx = sext i32 %i.ahw to i64
  %i.ahy = getelementptr inbounds i8, ptr %i.kh, i64 %i.ahx
  %i.ahz = zext nneg i32 %i.ahq to i64
  br label %.preheader615

.preheader615:                                    ; preds = %.preheader615.preheader, %._crit_edge678
  %.10684 = phi i32 [ %i.ajg, %._crit_edge678 ], [ 0, %.preheader615.preheader ]
  %.4542683 = phi ptr [ %i.ajf, %._crit_edge678 ], [ %i.ahy, %.preheader615.preheader ] ; 2 uses
  %.4547682 = phi ptr [ %i.ajb, %._crit_edge678 ], [ %i.ahv, %.preheader615.preheader ] ; 2 uses
  %.4552681 = phi ptr [ %i.aix, %._crit_edge678 ], [ %i.jv, %.preheader615.preheader ] ; 2 uses
  %.10563680 = phi ptr [ %i.aio, %._crit_edge678 ], [ %.0553, %.preheader615.preheader ]
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader615, %bb.ay
  %indvars.iv767 = phi i64 [ 0, %.preheader615 ], [ %indvars.iv.next768, %bb.ay ] ; 3 uses
  %.11675 = phi ptr [ %.10563680, %.preheader615 ], [ %i.aio, %bb.ay ] ; 5 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %.4552681, i64 %indvars.iv767 ; 2 uses
  %i.aib = load i16, ptr %.11675, align 1
  store i16 %i.aib, ptr %i.aia, align 1
  %i.aic = getelementptr inbounds nuw i8, ptr %.11675, i64 2
  %i.aid = load i32, ptr %i.jr, align 8, !tbaa !42
  %i.aie = sext i32 %i.aid to i64
  %i.aif = sub nsw i64 0, %i.aie
  %i.aig = getelementptr inbounds i8, ptr %i.aia, i64 %i.aif
  %i.aih = load i16, ptr %i.aic, align 1
  store i16 %i.aih, ptr %i.aig, align 1
  %i.aii = getelementptr inbounds nuw i8, ptr %.11675, i64 4
  %i.aij = getelementptr inbounds nuw i8, ptr %.11675, i64 5
  %i.aik = load i8, ptr %i.aii, align 1, !tbaa !34
  %i.ail = xor i8 %i.aik, -128
  %i.aim = lshr exact i64 %indvars.iv767, 1       ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.4547682, i64 %i.aim
  store i8 %i.ail, ptr %i.ain, align 1, !tbaa !34
  %i.aio = getelementptr inbounds nuw i8, ptr %.11675, i64 6 ; 2 uses
  %i.aip = load i8, ptr %i.aij, align 1, !tbaa !34
  %i.aiq = xor i8 %i.aip, -128
  %i.air = getelementptr inbounds nuw i8, ptr %.4542683, i64 %i.aim
  store i8 %i.aiq, ptr %i.air, align 1, !tbaa !34
  %indvars.iv.next768 = add nuw nsw i64 %indvars.iv767, 2 ; 2 uses
  %i.ais = icmp samesign ult i64 %indvars.iv.next768, %i.ahz
  br i1 %i.ais, label %bb.ay, label %._crit_edge678, !llvm.loop !110

._crit_edge678:                                   ; preds = %bb.ay
  %i.ait = load i32, ptr %i.jr, align 8, !tbaa !42
  %i.aiu = shl i32 %i.ait, 1
  %i.aiv = sext i32 %i.aiu to i64
  %i.aiw = sub nsw i64 0, %i.aiv
  %i.aix = getelementptr inbounds i8, ptr %.4552681, i64 %i.aiw
  %i.aiy = load i32, ptr %i.jw, align 4, !tbaa !42
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = sub nsw i64 0, %i.aiz
  %i.ajb = getelementptr inbounds i8, ptr %.4547682, i64 %i.aja
  %i.ajc = load i32, ptr %i.kd, align 8, !tbaa !42
  %i.ajd = sext i32 %i.ajc to i64
  %i.aje = sub nsw i64 0, %i.ajd
  %i.ajf = getelementptr inbounds i8, ptr %.4542683, i64 %i.aje
  %i.ajg = add nuw nsw i32 %.10684, 2             ; 2 uses
  %i.ajh = icmp slt i32 %i.ajg, %i.jq
  br i1 %i.ajh, label %.preheader615, label %.loopexit, !llvm.loop !111

bb.az:                                            ; preds = %.loopexit617
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.35) #7
  br label %bb.ba

.loopexit:                                        ; preds = %._crit_edge678, %._crit_edge688, %._crit_edge698.thread, %.prol.loopexit, %.lr.ph709.new, %._crit_edge713.thread, %._crit_edge724, %bb.ax, %.preheader613, %.preheader610, %bb.av, %.preheader606.a, %.preheader604
  store i32 1, ptr %2, align 4, !tbaa !42
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ag, %bb.af, %bb.p, %bb.a, %bb.x, %bb.ai, %.loopexit, %bb.az, %bb.at, %bb.ak, %bb.y, %bb.m, %bb.k, %bb.i
  %.2 = phi i32 [ %i.cy, %bb.ai ], [ -1094995529, %bb.ak ], [ -1094995529, %bb.y ], [ -1094995529, %bb.at ], [ -1094995529, %bb.az ], [ %i.d, %.loopexit ], [ -1094995529, %bb.i ], [ -1094995529, %bb.k ], [ -1094995529, %bb.m ], [ %i.k, %bb.a ], [ -1094995529, %bb.x ], [ -1094995529, %bb.p ], [ %i.co, %bb.af ], [ %i.ct, %bb.ag ]
  ret i32 %.2
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @ff_inflate_end(ptr noundef nonnull %i.d) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare i32 @ff_inflate_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mszh_decomp(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a ; 3 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = icmp sgt i32 %1, 1
  %i.f = icmp ne i32 %3, 0                        ; 2 uses
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph88, label %._crit_edge

.lr.ph88:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %0, align 1, !tbaa !34
  %i.j = zext i8 %i.i to i32
  %i.k = ptrtoint ptr %2 to i64
  %i.l = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.d to i64                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph88, %.loopexit
  %.087 = phi i32 [ 128, %.lr.ph88 ], [ %.1, %.loopexit ] ; 2 uses
  %.04886 = phi i32 [ %i.j, %.lr.ph88 ], [ %.2, %.loopexit ] ; 2 uses
  %.05085 = phi ptr [ %2, %.lr.ph88 ], [ %.3, %.loopexit ] ; 6 uses
  %.07084 = phi ptr [ %i.h, %.lr.ph88 ], [ %.272, %.loopexit ] ; 4 uses
  %i.n = and i32 %.087, %.04886
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %.07084, align 1
  store i32 %i.o, ptr %.05085, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.05085, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %.07084, i64 4
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.07084, i64 2
  %i.s = load i16, ptr %.07084, align 1, !tbaa !34
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 2047
  %i.v = zext nneg i32 %i.u to i64
  %i.w = ptrtoint ptr %.05085 to i64              ; 2 uses
  %i.x = sub i64 %i.w, %i.k
  %i.y = tail call i64 @llvm.smin.i64(i64 %i.x, i64 %i.v)
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = lshr i32 %i.t, 9
  %i.ab = and i32 %i.aa, 124
  %i.ac = add nuw nsw i32 %i.ab, 4
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = sub i64 %i.l, %i.w
  %i.af = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.ad) ; 3 uses
  %.not59 = icmp eq i32 %i.z, 0
  br i1 %.not59, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = trunc i64 %i.af to i32
  tail call void @av_memcpy_backptr(ptr noundef %.05085, i32 noundef %i.z, i32 noundef %i.ag) #7
  %.pre = and i64 %i.af, 4294967295
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = and i64 %i.af, 4294967295               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.05085, i8 0, i64 %i.ah, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi = phi i64 [ %i.ah, %bb.f ], [ %.pre, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.05085, i64 %.pre-phi
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.171 = phi ptr [ %i.q, %bb.c ], [ %i.r, %bb.g ] ; 3 uses
  %.151 = phi ptr [ %i.p, %bb.c ], [ %i.ai, %bb.g ] ; 5 uses
  %i.aj = lshr i32 %.087, 1                       ; 2 uses
  %.not60 = icmp eq i32 %i.aj, 0
  br i1 %.not60, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.171, i64 1 ; 4 uses
  %.149.in77 = load i8, ptr %.171, align 1, !tbaa !34 ; 2 uses
  %.not6178 = icmp ne i8 %.149.in77, 0
  %i.al = ptrtoint ptr %.151 to i64
  %i.am = sub i64 %i.l, %i.al
  %i.an = icmp slt i64 %i.am, 32
  %or.cond79 = select i1 %.not6178, i1 true, i1 %i.an
  br i1 %or.cond79, label %.loopexit.split.loop.exit73, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.m, %i.ao
  %i.aq = icmp slt i64 %i.ap, 32
  br i1 %i.aq, label %.loopexit, label %.lr.ph114

.lr.ph:                                           ; preds = %.lr.ph114
  %i.ar = ptrtoint ptr %i.aw to i64
  %i.as = sub i64 %i.m, %i.ar
  %i.at = icmp slt i64 %i.as, 32
  br i1 %i.at, label %.loopexit, label %.lr.ph114, !llvm.loop !112

.lr.ph114:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge80113 = phi ptr [ %i.aw, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ] ; 3 uses
  %.25281112 = phi ptr [ %i.au, %.lr.ph ], [ %.151, %.lr.ph.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.25281112, ptr noundef nonnull align 1 dereferenceable(32) %storemerge80113, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.25281112, i64 32 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge80113, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge80113, i64 33 ; 4 uses
  %.149.in = load i8, ptr %i.av, align 1, !tbaa !34 ; 2 uses
  %.not61 = icmp ne i8 %.149.in, 0
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.l, %i.ax
  %i.az = icmp slt i64 %i.ay, 32
  %or.cond = select i1 %.not61, i1 true, i1 %i.az
  br i1 %or.cond, label %.loopexit.split.loop.exit73, label %.lr.ph, !llvm.loop !112

.loopexit.split.loop.exit73:                      ; preds = %.lr.ph114, %bb.i
  %.149.in.lcssa = phi i8 [ %.149.in77, %bb.i ], [ %.149.in, %.lr.ph114 ]
  %storemerge.lcssa.ph74 = phi ptr [ %i.ak, %bb.i ], [ %i.aw, %.lr.ph114 ]
  %.252.lcssa.ph75 = phi ptr [ %.151, %bb.i ], [ %i.au, %.lr.ph114 ]
  %.149.le = zext i8 %.149.in.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %.loopexit.split.loop.exit73, %bb.h
  %.272 = phi ptr [ %.171, %bb.h ], [ %storemerge.lcssa.ph74, %.loopexit.split.loop.exit73 ], [ %i.ak, %.lr.ph.preheader ], [ %i.aw, %.lr.ph ] ; 2 uses
  %.3 = phi ptr [ %.151, %bb.h ], [ %.252.lcssa.ph75, %.loopexit.split.loop.exit73 ], [ %.151, %.lr.ph.preheader ], [ %i.au, %.lr.ph ] ; 3 uses
  %.2 = phi i32 [ %.04886, %bb.h ], [ %.149.le, %.loopexit.split.loop.exit73 ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ]
  %.1 = phi i32 [ %i.aj, %bb.h ], [ 128, %.loopexit.split.loop.exit73 ], [ 128, %.lr.ph.preheader ], [ 128, %.lr.ph ]
  %i.ba = icmp ult ptr %.272, %i.d
  %i.bb = icmp ult ptr %.3, %i.b                  ; 2 uses
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %bb.b, label %._crit_edge, !llvm.loop !113

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.050.lcssa = phi ptr [ %2, %bb.a ], [ %.3, %.loopexit ] ; 3 uses
  %.lcssa = phi i1 [ %i.f, %bb.a ], [ %i.bb, %.loopexit ]
  br i1 %.lcssa, label %bb.j, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre97 = ptrtoint ptr %.050.lcssa to i64
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.bd = ptrtoint ptr %i.b to i64
  %i.be = ptrtoint ptr %.050.lcssa to i64         ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @llvm.memset.p0.i64(ptr align 1 %.050.lcssa, i8 0, i64 %i.bf, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge, %bb.j
  %.pre-phi98 = phi i64 [ %.pre97, %._crit_edge._crit_edge ], [ %i.be, %bb.j ]
  %i.bg = ptrtoint ptr %2 to i64
  %i.bh = sub i64 %.pre-phi98, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  ret i32 %i.bi
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zlib_decomp(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
end_hunk_1
