inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@calc_combed_score:bb.a
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !95
  %i.jr = icmp eq i8 %i.jq, -1
  br i1 %i.jr, label %.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.js = add nuw nsw i64 %indvars.iv709, 1       ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.0542619, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !95
  %i.jv = icmp eq i8 %i.ju, -1
  br i1 %i.jv, label %.sink.split, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jw = getelementptr inbounds i8, ptr %i.ig, i64 %i.jl
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !95
  %i.jy = icmp eq i8 %i.jx, -1
  br i1 %i.jy, label %.sink.split, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.js
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !95
  %i.kb = icmp eq i8 %i.ka, -1
  br i1 %i.kb, label %.sink.split, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %gep799 = getelementptr i8, ptr %invariant.gep798, i64 %i.jl
  %i.kc = load i8, ptr %gep799, align 1, !tbaa !95
  %i.kd = icmp eq i8 %i.kc, -1
  br i1 %i.kd, label %.sink.split, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %gep801 = getelementptr i8, ptr %invariant.gep800, i64 %indvars.iv709
  %i.ke = load i8, ptr %gep801, align 1, !tbaa !95
  %i.kf = icmp eq i8 %i.ke, -1
  br i1 %i.kf, label %.sink.split, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %gep803 = getelementptr i8, ptr %invariant.gep802, i64 %i.js
  %i.kg = load i8, ptr %gep803, align 1, !tbaa !95
  %i.kh = icmp eq i8 %i.kg, -1
  br i1 %i.kh, label %.sink.split, label %bb.bb

.sink.split:                                      ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %indvars.iv709
  store i16 -1, ptr %i.ki, align 2, !tbaa !113
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.id, i64 %indvars.iv709
  store i16 -1, ptr %i.kj, align 2, !tbaa !113
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %., i64 %indvars.iv709
  store i16 -1, ptr %i.kk, align 2, !tbaa !113
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %bb.as, %bb.ba
  %indvars.iv.next710 = add nuw nsw i64 %indvars.iv709, 1 ; 2 uses
  %exitcond713.not = icmp eq i64 %indvars.iv.next710, %wide.trip.count712
  br i1 %exitcond713.not, label %._crit_edge614, label %bb.aj, !llvm.loop !115

._crit_edge614:                                   ; preds = %bb.bb
  %i.kl = add nuw nsw i32 %.1522621, 1
  %exitcond714.not = icmp eq i32 %.1522621, %i.ia
  br i1 %exitcond714.not, label %.loopexit, label %.lr.ph613, !llvm.loop !116

.loopexit:                                        ; preds = %._crit_edge614, %..loopexit_crit_edge, %bb.ai, %.lr.ph623
  %i.km = phi i32 [ %.pre749, %..loopexit_crit_edge ], [ %i.hh, %.lr.ph623 ], [ %i.hh, %bb.ai ], [ %i.hh, %._crit_edge614 ]
  %i.kn = phi i32 [ %.pre748, %..loopexit_crit_edge ], [ %i.hd, %.lr.ph623 ], [ %i.hd, %bb.ai ], [ %i.hd, %._crit_edge614 ]
  %i.ko = phi ptr [ %.pre747, %..loopexit_crit_edge ], [ %i.gy, %.lr.ph623 ], [ %i.gy, %bb.ai ], [ %i.gy, %._crit_edge614 ] ; 2 uses
  %i.kp = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.hl, %.lr.ph623 ], [ %i.hl, %bb.ai ], [ %i.hl, %._crit_edge614 ] ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !29 ; 12 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !30 ; 11 uses
  %i.ku = sdiv i32 %i.kr, 2                       ; 8 uses
  %i.kv = sdiv i32 %i.kt, 2                       ; 14 uses
  %i.kw = sext i32 %i.kp to i64                   ; 18 uses
  %.fr559 = freeze i32 %i.kn                      ; 8 uses
  %.fr = freeze i32 %i.km                         ; 4 uses
  %i.kx = add nsw i32 %.fr559, %i.ku
  %i.ky = sdiv i32 %i.kx, %i.kr
  %i.kz = shl i32 %i.ky, 2
  %i.la = add i32 %i.kz, 4                        ; 7 uses
  %i.lb = add nsw i32 %.fr, %i.kv
  %i.lc = sdiv i32 %i.lb, %i.kt
  %i.ld = add i32 %i.lc, 1
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !75 ; 19 uses
  %i.lg = mul i32 %i.la, %i.ld                    ; 4 uses
  %i.lh = srem i32 %.fr, %i.kv                    ; 2 uses
  %i.li = srem i32 %.fr559, %i.ku                 ; 2 uses
  %i.lj = sub nsw i32 %.fr559, %i.li              ; 2 uses
  %i.lk = icmp eq i32 %i.lh, 0
  %spec.select = select i1 %i.lk, i32 %i.kv, i32 %i.lh
  %.0550 = sub nsw i32 %.fr, %spec.select         ; 4 uses
  %i.ll = sext i32 %i.lg to i64
  %i.lm = shl nsw i64 %i.ll, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.lf, i8 0, i64 %i.lm, i1 false)
  %.0547628 = getelementptr inbounds i8, ptr %i.ko, i64 %i.kw ; 2 uses
  %i.ln = icmp sgt i32 %i.kt, 3
  br i1 %i.ln, label %.lr.ph632, label %.preheader583

.lr.ph632:                                        ; preds = %.loopexit
  %i.lo = icmp sgt i32 %.fr559, 0
  %smax721 = tail call i32 @llvm.smax.i32(i32 %i.kv, i32 2) ; 2 uses
  br i1 %i.lo, label %.lr.ph626.us.preheader, label %.lr.ph632.split.preheader

.lr.ph632.split.preheader:                        ; preds = %.lr.ph632
  %i.lp = zext nneg i32 %smax721 to i64
  %i.lq = mul nsw i64 %i.kw, %i.lp
  %scevgep715 = getelementptr i8, ptr %i.ko, i64 %i.lq
  br label %.preheader583

.lr.ph626.us.preheader:                           ; preds = %.lr.ph632
  %wide.trip.count719 = zext nneg i32 %.fr559 to i64
  br label %.lr.ph626.us

.lr.ph626.us:                                     ; preds = %.lr.ph626.us.preheader, %._crit_edge627.us
  %.0547630.us = phi ptr [ %.0547.us, %._crit_edge627.us ], [ %.0547628, %.lr.ph626.us.preheader ] ; 4 uses
  %.2523629.us = phi i32 [ %i.nj, %._crit_edge627.us ], [ 1, %.lr.ph626.us.preheader ] ; 3 uses
  %i.lr = udiv i32 %.2523629.us, %i.kt
  %i.ls = mul nsw i32 %i.lr, %i.la                ; 2 uses
  %i.lt = add nuw nsw i32 %.2523629.us, %i.kv
  %i.lu = udiv i32 %i.lt, %i.kt
  %i.lv = mul nsw i32 %i.lu, %i.la                ; 2 uses
  %invariant.gep804 = getelementptr i8, ptr %.0547630.us, i64 %i.kw
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph626.us, %bb.bg
  %indvars.iv716 = phi i64 [ 0, %.lr.ph626.us ], [ %indvars.iv.next717, %bb.bg ] ; 6 uses
  %i.lw = sub nsw i64 %indvars.iv716, %i.kw
  %i.lx = getelementptr inbounds i8, ptr %.0547630.us, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !95
  %i.lz = icmp eq i8 %i.ly, -1
  br i1 %i.lz, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.ma = getelementptr inbounds nuw i8, ptr %.0547630.us, i64 %indvars.iv716
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !95
  %i.mc = icmp eq i8 %i.mb, -1
  br i1 %i.mc, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %gep805 = getelementptr i8, ptr %invariant.gep804, i64 %indvars.iv716
  %i.md = load i8, ptr %gep805, align 1, !tbaa !95
  %i.me = icmp eq i8 %i.md, -1
  br i1 %i.me, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mf = trunc nuw nsw i64 %indvars.iv716 to i32
  %i.mg = sdiv i32 %i.mf, %i.kr
  %i.mh = shl nsw i32 %i.mg, 2                    ; 2 uses
  %i.mi = trunc i64 %indvars.iv716 to i32
  %i.mj = add i32 %i.ku, %i.mi
  %i.mk = sdiv i32 %i.mj, %i.kr
  %i.ml = shl nsw i32 %i.mk, 2                    ; 2 uses
  %i.mm = add nsw i32 %i.mh, %i.ls
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.mn ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !48
  %i.mq = add nsw i32 %i.mp, 1
  store i32 %i.mq, ptr %i.mo, align 4, !tbaa !48
  %i.mr = add nsw i32 %i.ml, %i.ls
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr [4 x i8], ptr %i.lf, i64 %i.ms
  %i.mu = getelementptr i8, ptr %i.mt, i64 4      ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !48
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %i.mu, align 4, !tbaa !48
  %i.mx = add nsw i32 %i.mh, %i.lv
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr [4 x i8], ptr %i.lf, i64 %i.my
  %i.na = getelementptr i8, ptr %i.mz, i64 8      ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !48
  %i.nc = add nsw i32 %i.nb, 1
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !48
  %i.nd = add nsw i32 %i.ml, %i.lv
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr [4 x i8], ptr %i.lf, i64 %i.ne
  %i.ng = getelementptr i8, ptr %i.nf, i64 12     ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !48
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.ng, align 4, !tbaa !48
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, 1 ; 2 uses
  %exitcond720.not = icmp eq i64 %indvars.iv.next717, %wide.trip.count719
  br i1 %exitcond720.not, label %._crit_edge627.us, label %bb.bc, !llvm.loop !117

._crit_edge627.us:                                ; preds = %bb.bg
  %i.nj = add nuw nsw i32 %.2523629.us, 1         ; 2 uses
  %.0547.us = getelementptr inbounds i8, ptr %.0547630.us, i64 %i.kw ; 2 uses
  %exitcond722.not = icmp eq i32 %i.nj, %smax721
  br i1 %exitcond722.not, label %.preheader583, label %.lr.ph626.us, !llvm.loop !118

.preheader583:                                    ; preds = %._crit_edge627.us, %.lr.ph632.split.preheader, %.loopexit
  %.0547.lcssa = phi ptr [ %.0547628, %.loopexit ], [ %scevgep715, %.lr.ph632.split.preheader ], [ %.0547.us, %._crit_edge627.us ] ; 2 uses
  %i.nk = icmp slt i32 %i.kv, %.0550
  br i1 %i.nk, label %.lr.ph661, label %.preheader580

.lr.ph661:                                        ; preds = %.preheader583
  %i.nl = icmp sgt i32 %i.lj, 0
  %i.nm = icmp slt i32 %i.kt, 2                   ; 2 uses
  %i.nn = icmp slt i32 %i.kr, 2
  %2 = icmp slt i32 %i.li, 1
  %i.no = sub nsw i32 0, %i.kp
  %i.np = sext i32 %i.no to i64                   ; 3 uses
  %i.nq = mul nsw i32 %i.kp, %i.kv
  %i.nr = sext i32 %i.nq to i64
  %i.ns = sext i32 %i.ku to i64                   ; 2 uses
  %i.nt = sext i32 %i.lj to i64                   ; 2 uses
  %i.nu = sext i32 %.fr559 to i64
  %wide.trip.count726 = zext i32 %i.ku to i64     ; 2 uses
  %brmerge = or i1 %i.nm, %i.nn
  %xtraiter829 = and i64 %wide.trip.count726, 1
  %i.nv = and i32 %i.kr, 2147483646
  %i.nw = icmp eq i32 %i.nv, 2
  %unroll_iter834 = and i64 %wide.trip.count726, 1073741822
  %lcmp.mod831.not = icmp eq i64 %xtraiter829, 0
  %lcmp.mod833 = trunc i32 %i.ku to i1
  %brmerge815 = or i1 %2, %i.nm
  %xtraiter836 = and i32 %i.kv, 1
  %i.nx = and i32 %i.kt, 2147483646
  %i.ny = icmp eq i32 %i.nx, 2
  %unroll_iter841 = and i32 %i.kv, 1073741822
  %lcmp.mod838.not = icmp eq i32 %xtraiter836, 0
  %lcmp.mod840 = trunc i32 %i.kv to i1
  br label %bb.bh

.preheader580:                                    ; preds = %._crit_edge658, %.preheader583
  %.1548.lcssa = phi ptr [ %.0547.lcssa, %.preheader583 ], [ %i.tc, %._crit_edge658 ]
  %i.nz = add nsw i32 %.fr, -1                    ; 2 uses
  %i.oa = icmp slt i32 %.0550, %i.nz
  %i.ob = icmp sgt i32 %.fr559, 0
  %or.cond = and i1 %i.oa, %i.ob
  br i1 %or.cond, label %.lr.ph665.preheader, label %.preheader

.lr.ph665.preheader:                              ; preds = %.preheader580
  %wide.trip.count739 = zext nneg i32 %.fr559 to i64
  br label %.lr.ph665

bb.bh:                                            ; preds = %.lr.ph661, %._crit_edge658
  %.3524660 = phi i32 [ %i.kv, %.lr.ph661 ], [ %i.oe, %._crit_edge658 ] ; 2 uses
  %.1548659 = phi ptr [ %.0547.lcssa, %.lr.ph661 ], [ %i.tc, %._crit_edge658 ] ; 3 uses
  %i.oc = sdiv i32 %.3524660, %i.kt
  %i.od = mul nsw i32 %i.oc, %i.la                ; 4 uses
  %i.oe = add nsw i32 %.3524660, %i.kv            ; 3 uses
  %i.of = sdiv i32 %i.oe, %i.kt
  %i.og = mul nsw i32 %i.of, %i.la                ; 4 uses
  br i1 %i.nl, label %.lr.ph648, label %.preheader582

.preheader582:                                    ; preds = %bb.br, %bb.bh
  br i1 %brmerge815, label %._crit_edge658, label %.lr.ph653.preheader

.lr.ph648:                                        ; preds = %bb.bh, %bb.br
  %indvars.iv729 = phi i64 [ %indvars.iv.next730.pre-phi, %bb.br ], [ 0, %bb.bh ] ; 4 uses
  br i1 %brmerge, label %._crit_edge643._crit_edge, label %.preheader581.us.preheader

.preheader581.us.preheader:                       ; preds = %.lr.ph648
  %i.oh = getelementptr inbounds i8, ptr %.1548659, i64 %indvars.iv729
  br label %.preheader581.us

.preheader581.us:                                 ; preds = %.preheader581.us.preheader, %._crit_edge638.us
  %.0536642.us = phi i32 [ %.2538.us.lcssa, %._crit_edge638.us ], [ 0, %.preheader581.us.preheader ] ; 2 uses
  %.0540641.us = phi i32 [ %i.pn, %._crit_edge638.us ], [ 0, %.preheader581.us.preheader ]
  %.0541640.us = phi ptr [ %i.pm, %._crit_edge638.us ], [ %i.oh, %.preheader581.us.preheader ] ; 8 uses
  %invariant.gep806 = getelementptr i8, ptr %.0541640.us, i64 %i.kw ; 3 uses
  br i1 %i.nw, label %.epil.preheader828, label %.preheader581.us.new

.preheader581.us.new:                             ; preds = %.preheader581.us, %bb.bn
  %indvars.iv723 = phi i64 [ %indvars.iv.next724.1, %bb.bn ], [ 0, %.preheader581.us ] ; 5 uses
  %.1537636.us = phi i32 [ %.2538.us.1, %bb.bn ], [ %.0536642.us, %.preheader581.us ] ; 3 uses
  %niter835 = phi i64 [ %niter835.next.1, %bb.bn ], [ 0, %.preheader581.us ]
  %i.oi = sub nsw i64 %indvars.iv723, %i.kw
  %i.oj = getelementptr inbounds i8, ptr %.0541640.us, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !95
  %i.ol = icmp eq i8 %i.ok, -1
  br i1 %i.ol, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.preheader581.us.new
  %i.om = getelementptr inbounds nuw i8, ptr %.0541640.us, i64 %indvars.iv723
  %i.on = load i8, ptr %i.om, align 1, !tbaa !95
  %i.oo = icmp eq i8 %i.on, -1
  br i1 %i.oo, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %gep807 = getelementptr i8, ptr %invariant.gep806, i64 %indvars.iv723
  %i.op = load i8, ptr %gep807, align 1, !tbaa !95
  %i.oq = icmp eq i8 %i.op, -1
  %i.or = zext i1 %i.oq to i32
  %spec.select570.us = add nsw i32 %.1537636.us, %i.or
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %.preheader581.us.new
  %.2538.us = phi i32 [ %.1537636.us, %.preheader581.us.new ], [ %spec.select570.us, %bb.bj ], [ %.1537636.us, %bb.bi ] ; 3 uses
  %indvars.iv.next724 = or disjoint i64 %indvars.iv723, 1 ; 3 uses
  %i.os = sub nsw i64 %indvars.iv.next724, %i.kw
  %i.ot = getelementptr inbounds i8, ptr %.0541640.us, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !95
  %i.ov = icmp eq i8 %i.ou, -1
  br i1 %i.ov, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.ow = getelementptr inbounds nuw i8, ptr %.0541640.us, i64 %indvars.iv.next724
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !95
  %i.oy = icmp eq i8 %i.ox, -1
  br i1 %i.oy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %gep807.1 = getelementptr i8, ptr %invariant.gep806, i64 %indvars.iv.next724
  %i.oz = load i8, ptr %gep807.1, align 1, !tbaa !95
  %i.pa = icmp eq i8 %i.oz, -1
  %i.pb = zext i1 %i.pa to i32
  %spec.select570.us.1 = add nsw i32 %.2538.us, %i.pb
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %.2538.us.1 = phi i32 [ %.2538.us, %bb.bk ], [ %spec.select570.us.1, %bb.bm ], [ %.2538.us, %bb.bl ] ; 3 uses
  %indvars.iv.next724.1 = add nuw nsw i64 %indvars.iv723, 2 ; 2 uses
  %niter835.next.1 = add i64 %niter835, 2         ; 2 uses
  %niter835.ncmp.1 = icmp eq i64 %niter835.next.1, %unroll_iter834
  br i1 %niter835.ncmp.1, label %._crit_edge638.us.unr-lcssa, label %.preheader581.us.new, !llvm.loop !119

._crit_edge638.us.unr-lcssa:                      ; preds = %bb.bn
  br i1 %lcmp.mod831.not, label %._crit_edge638.us, label %.epil.preheader828

.epil.preheader828:                               ; preds = %._crit_edge638.us.unr-lcssa, %.preheader581.us
  %indvars.iv723.epil.init = phi i64 [ 0, %.preheader581.us ], [ %indvars.iv.next724.1, %._crit_edge638.us.unr-lcssa ] ; 3 uses
  %.1537636.us.epil.init = phi i32 [ %.0536642.us, %.preheader581.us ], [ %.2538.us.1, %._crit_edge638.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod833)
  %i.pc = sub nsw i64 %indvars.iv723.epil.init, %i.kw
  %i.pd = getelementptr inbounds i8, ptr %.0541640.us, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !95
  %i.pf = icmp eq i8 %i.pe, -1
  br i1 %i.pf, label %bb.bo, label %._crit_edge638.us

bb.bo:                                            ; preds = %.epil.preheader828
  %i.pg = getelementptr inbounds nuw i8, ptr %.0541640.us, i64 %indvars.iv723.epil.init
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !95
  %i.pi = icmp eq i8 %i.ph, -1
  br i1 %i.pi, label %bb.bp, label %._crit_edge638.us

bb.bp:                                            ; preds = %bb.bo
  %gep807.epil = getelementptr i8, ptr %invariant.gep806, i64 %indvars.iv723.epil.init
  %i.pj = load i8, ptr %gep807.epil, align 1, !tbaa !95
  %i.pk = icmp eq i8 %i.pj, -1
  %i.pl = zext i1 %i.pk to i32
  %spec.select570.us.epil = add nsw i32 %.1537636.us.epil.init, %i.pl
  br label %._crit_edge638.us

._crit_edge638.us:                                ; preds = %.epil.preheader828, %bb.bo, %bb.bp, %._crit_edge638.us.unr-lcssa
  %.2538.us.lcssa = phi i32 [ %.2538.us.1, %._crit_edge638.us.unr-lcssa ], [ %.1537636.us.epil.init, %.epil.preheader828 ], [ %spec.select570.us.epil, %bb.bp ], [ %.1537636.us.epil.init, %bb.bo ] ; 6 uses
  %i.pm = getelementptr inbounds i8, ptr %.0541640.us, i64 %i.kw
  %i.pn = add nuw nsw i32 %.0540641.us, 1         ; 2 uses
  %exitcond728.not = icmp eq i32 %i.pn, %i.kv
  br i1 %exitcond728.not, label %._crit_edge643, label %.preheader581.us, !llvm.loop !120

._crit_edge643:                                   ; preds = %._crit_edge638.us
  %.not562 = icmp eq i32 %.2538.us.lcssa, 0
  br i1 %.not562, label %._crit_edge643._crit_edge, label %bb.bq

._crit_edge643._crit_edge:                        ; preds = %.lr.ph648, %._crit_edge643
  %.pre750 = add nsw i64 %indvars.iv729, %i.ns
  br label %bb.br

bb.bq:                                            ; preds = %._crit_edge643
  %i.po = trunc nsw i64 %indvars.iv729 to i32
  %i.pp = sdiv i32 %i.po, %i.kr
  %i.pq = shl nsw i32 %i.pp, 2                    ; 2 uses
  %i.pr = add nsw i64 %indvars.iv729, %i.ns       ; 2 uses
  %i.ps = trunc nsw i64 %i.pr to i32
  %i.pt = sdiv i32 %i.ps, %i.kr
  %i.pu = shl nsw i32 %i.pt, 2                    ; 2 uses
  %i.pv = add nsw i32 %i.pq, %i.od
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.pw ; 2 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !48
  %i.pz = add nsw i32 %i.py, %.2538.us.lcssa
  store i32 %i.pz, ptr %i.px, align 4, !tbaa !48
  %i.qa = add nsw i32 %i.pu, %i.od
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr [4 x i8], ptr %i.lf, i64 %i.qb
  %i.qd = getelementptr i8, ptr %i.qc, i64 4      ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !48
  %i.qf = add nsw i32 %i.qe, %.2538.us.lcssa
  store i32 %i.qf, ptr %i.qd, align 4, !tbaa !48
  %i.qg = add nsw i32 %i.pq, %i.og
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr [4 x i8], ptr %i.lf, i64 %i.qh
  %i.qj = getelementptr i8, ptr %i.qi, i64 8      ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !48
  %i.ql = add nsw i32 %i.qk, %.2538.us.lcssa
  store i32 %i.ql, ptr %i.qj, align 4, !tbaa !48
  %i.qm = add nsw i32 %i.pu, %i.og
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr [4 x i8], ptr %i.lf, i64 %i.qn
  %i.qp = getelementptr i8, ptr %i.qo, i64 12     ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !48
  %i.qr = add nsw i32 %i.qq, %.2538.us.lcssa
  store i32 %i.qr, ptr %i.qp, align 4, !tbaa !48
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge643._crit_edge, %bb.bq
  %indvars.iv.next730.pre-phi = phi i64 [ %.pre750, %._crit_edge643._crit_edge ], [ %i.pr, %bb.bq ] ; 2 uses
  %i.qs = icmp slt i64 %indvars.iv.next730.pre-phi, %i.nt
  br i1 %i.qs, label %.lr.ph648, label %.preheader582, !llvm.loop !121

.lr.ph653.preheader:                              ; preds = %.preheader582, %._crit_edge654.thread
  %indvars.iv733 = phi i64 [ %indvars.iv.next734, %._crit_edge654.thread ], [ %i.nt, %.preheader582 ] ; 4 uses
  %i.qt = getelementptr inbounds i8, ptr %.1548659, i64 %indvars.iv733 ; 2 uses
  br i1 %i.ny, label %.lr.ph653.epil.preheader, label %.lr.ph653

.lr.ph653:                                        ; preds = %.lr.ph653.preheader, %bb.bw
  %.0531651 = phi i32 [ %.1532.1, %bb.bw ], [ 0, %.lr.ph653.preheader ] ; 3 uses
  %.0534649 = phi ptr [ %i.rn, %bb.bw ], [ %i.qt, %.lr.ph653.preheader ] ; 4 uses
  %niter842 = phi i32 [ %niter842.next.1, %bb.bw ], [ 0, %.lr.ph653.preheader ]
  %i.qu = getelementptr inbounds i8, ptr %.0534649, i64 %i.np
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !95
  %i.qw = icmp eq i8 %i.qv, -1
  br i1 %i.qw, label %bb.bs, label %.lr.ph653.1

bb.bs:                                            ; preds = %.lr.ph653
  %i.qx = load i8, ptr %.0534649, align 1, !tbaa !95
  %i.qy = icmp eq i8 %i.qx, -1
  br i1 %i.qy, label %bb.bt, label %.lr.ph653.1

bb.bt:                                            ; preds = %bb.bs
  %i.qz = getelementptr inbounds i8, ptr %.0534649, i64 %i.kw
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !95
  %i.rb = icmp eq i8 %i.ra, -1
  %i.rc = zext i1 %i.rb to i32
  %spec.select571 = add nsw i32 %.0531651, %i.rc
  br label %.lr.ph653.1

.lr.ph653.1:                                      ; preds = %bb.bt, %bb.bs, %.lr.ph653
  %.1532 = phi i32 [ %.0531651, %.lr.ph653 ], [ %spec.select571, %bb.bt ], [ %.0531651, %bb.bs ] ; 3 uses
  %i.rd = getelementptr inbounds i8, ptr %.0534649, i64 %i.kw ; 4 uses
  %i.re = getelementptr inbounds i8, ptr %i.rd, i64 %i.np
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !95
  %i.rg = icmp eq i8 %i.rf, -1
  br i1 %i.rg, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %.lr.ph653.1
  %i.rh = load i8, ptr %i.rd, align 1, !tbaa !95
  %i.ri = icmp eq i8 %i.rh, -1
  br i1 %i.ri, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.rj = getelementptr inbounds i8, ptr %i.rd, i64 %i.kw
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !95
  %i.rl = icmp eq i8 %i.rk, -1
  %i.rm = zext i1 %i.rl to i32
  %spec.select571.1 = add nsw i32 %.1532, %i.rm
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %.lr.ph653.1
  %.1532.1 = phi i32 [ %.1532, %.lr.ph653.1 ], [ %spec.select571.1, %bb.bv ], [ %.1532, %bb.bu ] ; 3 uses
  %i.rn = getelementptr inbounds i8, ptr %i.rd, i64 %i.kw ; 2 uses
  %niter842.next.1 = add i32 %niter842, 2         ; 2 uses
  %niter842.ncmp.1 = icmp eq i32 %niter842.next.1, %unroll_iter841
  br i1 %niter842.ncmp.1, label %._crit_edge654.unr-lcssa, label %.lr.ph653, !llvm.loop !122

._crit_edge654.unr-lcssa:                         ; preds = %bb.bw
  br i1 %lcmp.mod838.not, label %._crit_edge654, label %.lr.ph653.epil.preheader

.lr.ph653.epil.preheader:                         ; preds = %._crit_edge654.unr-lcssa, %.lr.ph653.preheader
  %.0531651.epil.init = phi i32 [ 0, %.lr.ph653.preheader ], [ %.1532.1, %._crit_edge654.unr-lcssa ] ; 3 uses
  %.0534649.epil.init = phi ptr [ %i.qt, %.lr.ph653.preheader ], [ %i.rn, %._crit_edge654.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod840)
  %i.ro = getelementptr inbounds i8, ptr %.0534649.epil.init, i64 %i.np
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !95
  %i.rq = icmp eq i8 %i.rp, -1
  br i1 %i.rq, label %bb.bx, label %._crit_edge654

bb.bx:                                            ; preds = %.lr.ph653.epil.preheader
  %i.rr = load i8, ptr %.0534649.epil.init, align 1, !tbaa !95
  %i.rs = icmp eq i8 %i.rr, -1
  br i1 %i.rs, label %bb.by, label %._crit_edge654

bb.by:                                            ; preds = %bb.bx
  %i.rt = getelementptr inbounds i8, ptr %.0534649.epil.init, i64 %i.kw
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !95
  %i.rv = icmp eq i8 %i.ru, -1
  %i.rw = zext i1 %i.rv to i32
  %spec.select571.epil = add nsw i32 %.0531651.epil.init, %i.rw
  br label %._crit_edge654

._crit_edge654:                                   ; preds = %.lr.ph653.epil.preheader, %bb.bx, %bb.by, %._crit_edge654.unr-lcssa
  %.1532.lcssa = phi i32 [ %.1532.1, %._crit_edge654.unr-lcssa ], [ %.0531651.epil.init, %.lr.ph653.epil.preheader ], [ %spec.select571.epil, %bb.by ], [ %.0531651.epil.init, %bb.bx ] ; 5 uses
  %.not561 = icmp eq i32 %.1532.lcssa, 0
  br i1 %.not561, label %._crit_edge654.thread, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge654
  %i.rx = trunc nsw i64 %indvars.iv733 to i32
  %i.ry = sdiv i32 %i.rx, %i.kr
  %i.rz = shl nsw i32 %i.ry, 2                    ; 2 uses
  %i.sa = trunc i64 %indvars.iv733 to i32
  %i.sb = add i32 %i.ku, %i.sa
  %i.sc = sdiv i32 %i.sb, %i.kr
  %i.sd = shl nsw i32 %i.sc, 2                    ; 2 uses
  %i.se = add nsw i32 %i.rz, %i.od
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.sf ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !48
  %i.si = add nsw i32 %i.sh, %.1532.lcssa
  store i32 %i.si, ptr %i.sg, align 4, !tbaa !48
  %i.sj = add nsw i32 %i.sd, %i.od
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr [4 x i8], ptr %i.lf, i64 %i.sk
  %i.sm = getelementptr i8, ptr %i.sl, i64 4      ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !48
  %i.so = add nsw i32 %i.sn, %.1532.lcssa
  store i32 %i.so, ptr %i.sm, align 4, !tbaa !48
  %i.sp = add nsw i32 %i.rz, %i.og
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr [4 x i8], ptr %i.lf, i64 %i.sq
  %i.ss = getelementptr i8, ptr %i.sr, i64 8      ; 2 uses
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !48
  %i.su = add nsw i32 %i.st, %.1532.lcssa
  store i32 %i.su, ptr %i.ss, align 4, !tbaa !48
  %i.sv = add nsw i32 %i.sd, %i.og
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr [4 x i8], ptr %i.lf, i64 %i.sw
  %i.sy = getelementptr i8, ptr %i.sx, i64 12     ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !48
  %i.ta = add nsw i32 %i.sz, %.1532.lcssa
  store i32 %i.ta, ptr %i.sy, align 4, !tbaa !48
  br label %._crit_edge654.thread

._crit_edge654.thread:                            ; preds = %bb.bz, %._crit_edge654
  %indvars.iv.next734 = add nsw i64 %indvars.iv733, 1 ; 2 uses
  %i.tb = icmp slt i64 %indvars.iv.next734, %i.nu
  br i1 %i.tb, label %.lr.ph653.preheader, label %._crit_edge658, !llvm.loop !123

._crit_edge658:                                   ; preds = %._crit_edge654.thread, %.preheader582
  %i.tc = getelementptr inbounds i8, ptr %.1548659, i64 %i.nr ; 2 uses
  %i.td = icmp slt i32 %i.oe, %.0550
  br i1 %i.td, label %bb.bh, label %.preheader580, !llvm.loop !124

.preheader:                                       ; preds = %._crit_edge666, %.preheader580
  %i.te = icmp sgt i32 %i.lg, 0
  br i1 %i.te, label %.lr.ph672.preheader, label %._crit_edge673

.lr.ph672.preheader:                              ; preds = %.preheader
  %wide.trip.count745 = zext nneg i32 %i.lg to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.lg, 8
  br i1 %min.iters.check, label %.lr.ph672.preheader816, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph672.preheader
  %n.vec = and i64 %wide.trip.count745, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.th, %vector.body ]
  %vec.phi814 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ti, %vector.body ]
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %index ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %wide.load = load <4 x i32>, ptr %i.tf, align 4, !tbaa !48
  %wide.load815 = load <4 x i32>, ptr %i.tg, align 4, !tbaa !48
  %i.th = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.ti = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load815, <4 x i32> %vec.phi814) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.tj = icmp eq i64 %index.next, %n.vec
  br i1 %i.tj, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.th, <4 x i32> %i.ti)
  %i.tk = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count745
  br i1 %cmp.n, label %._crit_edge673, label %.lr.ph672.preheader816

.lr.ph672.preheader816:                           ; preds = %.lr.ph672.preheader, %middle.block
  %indvars.iv742.ph = phi i64 [ 0, %.lr.ph672.preheader ], [ %n.vec, %middle.block ]
  %.0527670.ph = phi i32 [ 0, %.lr.ph672.preheader ], [ %i.tk, %middle.block ]
  br label %.lr.ph672

.lr.ph665:                                        ; preds = %.lr.ph665.preheader, %._crit_edge666
  %.4525668 = phi i32 [ %i.ve, %._crit_edge666 ], [ %.0550, %.lr.ph665.preheader ] ; 3 uses
  %.2549667 = phi ptr [ %i.vd, %._crit_edge666 ], [ %.1548.lcssa, %.lr.ph665.preheader ] ; 4 uses
  %i.tl = sdiv i32 %.4525668, %i.kt
  %i.tm = mul nsw i32 %i.tl, %i.la                ; 2 uses
  %i.tn = add nsw i32 %.4525668, %i.kv
  %i.to = sdiv i32 %i.tn, %i.kt
  %i.tp = mul nsw i32 %i.to, %i.la                ; 2 uses
  %invariant.gep808 = getelementptr i8, ptr %.2549667, i64 %i.kw
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph665, %bb.ce
  %indvars.iv736 = phi i64 [ 0, %.lr.ph665 ], [ %indvars.iv.next737, %bb.ce ] ; 6 uses
  %i.tq = sub nsw i64 %indvars.iv736, %i.kw
  %i.tr = getelementptr inbounds i8, ptr %.2549667, i64 %i.tq
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !95
  %i.tt = icmp eq i8 %i.ts, -1
  br i1 %i.tt, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.tu = getelementptr inbounds nuw i8, ptr %.2549667, i64 %indvars.iv736
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !95
  %i.tw = icmp eq i8 %i.tv, -1
  br i1 %i.tw, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %gep809 = getelementptr i8, ptr %invariant.gep808, i64 %indvars.iv736
  %i.tx = load i8, ptr %gep809, align 1, !tbaa !95
  %i.ty = icmp eq i8 %i.tx, -1
  br i1 %i.ty, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.tz = trunc nuw nsw i64 %indvars.iv736 to i32
  %i.ua = sdiv i32 %i.tz, %i.kr
  %i.ub = shl nsw i32 %i.ua, 2                    ; 2 uses
  %i.uc = trunc i64 %indvars.iv736 to i32
  %i.ud = add i32 %i.ku, %i.uc
  %i.ue = sdiv i32 %i.ud, %i.kr
  %i.uf = shl nsw i32 %i.ue, 2                    ; 2 uses
  %i.ug = add nsw i32 %i.ub, %i.tm
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.uh ; 2 uses
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !48
  %i.uk = add nsw i32 %i.uj, 1
  store i32 %i.uk, ptr %i.ui, align 4, !tbaa !48
  %i.ul = add nsw i32 %i.uf, %i.tm
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr [4 x i8], ptr %i.lf, i64 %i.um
  %i.uo = getelementptr i8, ptr %i.un, i64 4      ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !48
  %i.uq = add nsw i32 %i.up, 1
  store i32 %i.uq, ptr %i.uo, align 4, !tbaa !48
  %i.ur = add nsw i32 %i.ub, %i.tp
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr [4 x i8], ptr %i.lf, i64 %i.us
  %i.uu = getelementptr i8, ptr %i.ut, i64 8      ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !48
  %i.uw = add nsw i32 %i.uv, 1
  store i32 %i.uw, ptr %i.uu, align 4, !tbaa !48
  %i.ux = add nsw i32 %i.uf, %i.tp
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr [4 x i8], ptr %i.lf, i64 %i.uy
  %i.va = getelementptr i8, ptr %i.uz, i64 12     ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !48
  %i.vc = add nsw i32 %i.vb, 1
  store i32 %i.vc, ptr %i.va, align 4, !tbaa !48
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.cd
  %indvars.iv.next737 = add nuw nsw i64 %indvars.iv736, 1 ; 2 uses
  %exitcond740.not = icmp eq i64 %indvars.iv.next737, %wide.trip.count739
  br i1 %exitcond740.not, label %._crit_edge666, label %bb.ca, !llvm.loop !128

._crit_edge666:                                   ; preds = %bb.ce
  %i.vd = getelementptr inbounds i8, ptr %.2549667, i64 %i.kw
  %i.ve = add nsw i32 %.4525668, 1                ; 2 uses
  %exitcond741.not = icmp eq i32 %i.ve, %i.nz
  br i1 %exitcond741.not, label %.preheader, label %.lr.ph665, !llvm.loop !129

.lr.ph672:                                        ; preds = %.lr.ph672.preheader816, %.lr.ph672
  %indvars.iv742 = phi i64 [ %indvars.iv.next743, %.lr.ph672 ], [ %indvars.iv742.ph, %.lr.ph672.preheader816 ] ; 2 uses
  %.0527670 = phi i32 [ %spec.select572, %.lr.ph672 ], [ %.0527670.ph, %.lr.ph672.preheader816 ]
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv742
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !48
  %spec.select572 = tail call i32 @llvm.smax.i32(i32 %i.vg, i32 %.0527670) ; 2 uses
  %indvars.iv.next743 = add nuw nsw i64 %indvars.iv742, 1 ; 2 uses
  %exitcond746.not = icmp eq i64 %indvars.iv.next743, %wide.trip.count745
  br i1 %exitcond746.not, label %._crit_edge673, label %.lr.ph672, !llvm.loop !130

._crit_edge673:                                   ; preds = %.lr.ph672, %middle.block, %.preheader
  %.0527.lcssa = phi i32 [ 0, %.preheader ], [ %i.tk, %middle.block ], [ %spec.select572, %.lr.ph672 ]
  ret i32 %.0527.lcssa
}

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @compare_fields(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, -1) %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = icmp slt i32 %1, 3
  %i.h = sub nsw i32 2, %3                        ; 2 uses
  %i.i = add nuw nsw i32 %3, 1                    ; 2 uses
  %i.j = select i1 %i.g, i32 %i.h, i32 %i.i       ; 3 uses
  %i.k = add nsw i32 %i.j, 1
  %i.l = icmp slt i32 %2, 3
  %i.m = select i1 %i.l, i32 %i.h, i32 %i.i
  %i.n = icmp sgt i32 %1, 2
  %i.o = icmp ne i32 %3, 1
  %or.cond392 = xor i1 %i.n, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.v = icmp ult i32 %1, 5
  %i.w = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.compare_fields.3, i64 %i.w
  %i.x = icmp ult i32 %2, 5
  %i.y = zext nneg i32 %2 to i64
  %switch.gep489 = getelementptr inbounds nuw i8, ptr @switch.table.compare_fields.3, i64 %i.y
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv470 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next471, %._crit_edge ] ; 13 uses
  %.0311465 = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.0312464 = phi i64 [ 0, %bb.a ], [ %.1313.lcssa, %._crit_edge ] ; 3 uses
  %.0318463 = phi i64 [ 0, %bb.a ], [ %.1319.lcssa, %._crit_edge ] ; 3 uses
  %.0324462 = phi i64 [ 0, %bb.a ], [ %.1325.lcssa, %._crit_edge ] ; 3 uses
  %.0330461 = phi i64 [ 0, %bb.a ], [ %.1331.lcssa, %._crit_edge ] ; 3 uses
  %.0337460 = phi i64 [ 0, %bb.a ], [ %.1338.lcssa, %._crit_edge ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv470
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !92  ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv470
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !48 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv470
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv470
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !48 ; 2 uses
  %i.ah = shl i32 %i.ag, 1
  %.not.i = icmp eq i64 %indvars.iv470, 0
  br i1 %.not.i, label %.thread386, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !48  ; 2 uses
  %i.aj = load i32, ptr %i.q, align 8, !tbaa !93
  %i.ak = sub nsw i32 0, %i.aj
  %i.al = ashr i32 %i.ak, %i.ai
  %i.am = sub nsw i32 0, %i.al
  %i.an = load i32, ptr %i.r, align 8, !tbaa !48  ; 3 uses
end_hunk_0
