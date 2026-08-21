Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/wparser_def?download=true
inline.NumInlined: 59
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@prsd_headline:bb.a
  %i.ig = load i8, ptr %i.if, align 4, !range !4, !noundef !5
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.ch, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph402.i.us
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 17
  %i.ij = load i8, ptr %i.ii, align 1, !range !4, !noundef !5
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.im = load i32, ptr %i.il, align 4            ; 3 uses
  %i.in = icmp slt i32 %.0258401.i.us, %i.im
  br i1 %i.in, label %._crit_edge481.i.us, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.io = icmp eq i32 %.0258401.i.us, %i.im
  br i1 %i.io, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  %i.iq = load i32, ptr %i.ip, align 4            ; 2 uses
  %i.ir = icmp sgt i32 %.0260400.i.us, %i.iq
  br i1 %i.ir, label %bb.cg, label %bb.ch

._crit_edge481.i.us:                              ; preds = %bb.cd
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  %.pre.i.us = load i32, ptr %.phi.trans.insert.i.us, align 4
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge481.i.us, %bb.cf
  %i.is = phi i32 [ %.pre.i.us, %._crit_edge481.i.us ], [ %i.iq, %bb.cf ]
  %i.it = trunc nuw nsw i64 %indvars.iv.i104.us to i32
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cc, %.lr.ph402.i.us
  %.1263.i.us = phi i32 [ %.0262399.i.us, %.lr.ph402.i.us ], [ %.0262399.i.us, %bb.cc ], [ %i.it, %bb.cg ], [ %.0262399.i.us, %bb.cf ], [ %.0262399.i.us, %bb.ce ] ; 3 uses
  %.1261.i.us = phi i32 [ %.0260400.i.us, %.lr.ph402.i.us ], [ %.0260400.i.us, %bb.cc ], [ %i.is, %bb.cg ], [ %.0260400.i.us, %bb.cf ], [ %.0260400.i.us, %bb.ce ]
  %.1259.i.us = phi i32 [ %.0258401.i.us, %.lr.ph402.i.us ], [ %.0258401.i.us, %bb.cc ], [ %i.im, %bb.cg ], [ %.0258401.i.us, %bb.cf ], [ %.0258401.i.us, %bb.ce ]
  %indvars.iv.next.i105.us = add nuw nsw i64 %indvars.iv.i104.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i105.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %._crit_edge.i106.us, label %.lr.ph402.i.us, !llvm.loop !19

._crit_edge.i106.us:                              ; preds = %bb.ch
  %i.iu = icmp sgt i32 %.1263.i.us, -1
  br i1 %i.iu, label %bb.ci, label %._crit_edge455.i

bb.ci:                                            ; preds = %._crit_edge.i106.us
  %i.iv = zext nneg i32 %.1263.i.us to i64        ; 2 uses
  %i.iw = getelementptr inbounds nuw [20 x i8], ptr %.1.lcssa.i, i64 %i.iv ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store i8 1, ptr %i.ix, align 4
  %i.iy = load i32, ptr %i.iw, align 4            ; 7 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 4 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4            ; 7 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 12 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4            ; 6 uses
  %i.jd = icmp slt i32 %i.jc, %.087.lcssa236
  br i1 %i.jd, label %bb.cj, label %.critedge6.i.us

bb.cj:                                            ; preds = %bb.ci
  %i.je = sub i32 %.087.lcssa236, %i.jc           ; 2 uses
  %i.jf = sdiv i32 %i.je, 2
  %.1276404.i.us = add i32 %i.iy, -1              ; 2 uses
  %i.jg = icmp sgt i32 %.1276404.i.us, -1
  %i.jh = icmp sgt i32 %i.je, 1
  %or.cond405.i.us = and i1 %i.jg, %i.jh
  br i1 %or.cond405.i.us, label %.lr.ph411.i.us, label %.critedge2.i.us

.lr.ph411.i.us:                                   ; preds = %bb.cj
  %i.ji = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.jj = zext nneg i32 %.1276404.i.us to i64     ; 2 uses
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %i.ji, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 8            ; 2 uses
  %i.jm = and i32 %i.jl, 2
  %.not.i108153.us = icmp eq i32 %i.jm, 0
  br i1 %.not.i108153.us, label %.lr.ph157.us, label %.critedge2.i.us

bb.ck:                                            ; preds = %bb.cm
  %indvars.iv.next195 = add nsw i64 %indvars.iv194, -1 ; 2 uses
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %i.ji, i64 %indvars.iv.next195
  %i.jo = load i32, ptr %i.jn, align 8            ; 2 uses
  %i.jp = and i32 %i.jo, 2
  %.not.i108.us = icmp eq i32 %i.jp, 0
  br i1 %.not.i108.us, label %.lr.ph157.us, label %.critedge.i.us, !llvm.loop !20

.lr.ph157.us:                                     ; preds = %.lr.ph411.i.us, %bb.ck
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %bb.ck ], [ %i.jj, %.lr.ph411.i.us ] ; 4 uses
  %i.jq = phi i32 [ %i.jo, %bb.ck ], [ %i.jl, %.lr.ph411.i.us ]
  %.0355406.i156.us = phi i32 [ %.1356.i.us, %bb.ck ], [ %i.jc, %.lr.ph411.i.us ] ; 7 uses
  %.0271407.i155.us = phi i32 [ %.1272.i.us, %bb.ck ], [ 0, %.lr.ph411.i.us ] ; 7 uses
  %i.jr = lshr i32 %i.jq, 8
  %trunc380.i.us = trunc i32 %i.jr to i8
  switch i8 %trunc380.i.us, label %bb.cl [
    i8 12, label %bb.cm
    i8 13, label %bb.cm
    i8 5, label %bb.cm
    i8 15, label %bb.cm
    i8 16, label %bb.cm
    i8 17, label %bb.cm
  ]

bb.cl:                                            ; preds = %.lr.ph157.us
  %i.js = add i32 %.0355406.i156.us, 1
  %i.jt = add nsw i32 %.0271407.i155.us, 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph157.us, %.lr.ph157.us, %.lr.ph157.us, %.lr.ph157.us, %.lr.ph157.us, %.lr.ph157.us
  %.1356.i.us = phi i32 [ %i.js, %bb.cl ], [ %.0355406.i156.us, %.lr.ph157.us ], [ %.0355406.i156.us, %.lr.ph157.us ], [ %.0355406.i156.us, %.lr.ph157.us ], [ %.0355406.i156.us, %.lr.ph157.us ], [ %.0355406.i156.us, %.lr.ph157.us ], [ %.0355406.i156.us, %.lr.ph157.us ] ; 3 uses
  %.1272.i.us = phi i32 [ %i.jt, %bb.cl ], [ %.0271407.i155.us, %.lr.ph157.us ], [ %.0271407.i155.us, %.lr.ph157.us ], [ %.0271407.i155.us, %.lr.ph157.us ], [ %.0271407.i155.us, %.lr.ph157.us ], [ %.0271407.i155.us, %.lr.ph157.us ], [ %.0271407.i155.us, %.lr.ph157.us ] ; 2 uses
  %i.ju = icmp sgt i64 %indvars.iv194, 0
  %i.jv = icmp slt i32 %.1272.i.us, %i.jf
  %or.cond.i109.us = select i1 %i.ju, i1 %i.jv, i1 false
  br i1 %or.cond.i109.us, label %bb.ck, label %..critedge.i_crit_edge.us, !llvm.loop !20

.critedge.i.us:                                   ; preds = %bb.ck, %..critedge.i_crit_edge.us
  %i.jw = trunc nuw nsw i64 %indvars.iv194 to i32 ; 2 uses
  %i.jx = icmp sgt i32 %i.iy, %i.jw
  br i1 %i.jx, label %.lr.ph419.i.us, label %.critedge2.i.us

.lr.ph419.i.us:                                   ; preds = %.critedge.i.us, %bb.cq
  %indvars.iv465.i.us = phi i64 [ %indvars.iv.next466.i.us, %bb.cq ], [ %indvars.iv194, %.critedge.i.us ] ; 4 uses
  %.2357417.i.us = phi i32 [ %.3358.i.us, %bb.cq ], [ %.1356.i.us, %.critedge.i.us ] ; 9 uses
  %i.jy = getelementptr inbounds [24 x i8], ptr %i.ji, i64 %indvars.iv465.i.us ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 8            ; 3 uses
  %i.ka = lshr i32 %i.jz, 8
  %trunc375.i.us = trunc i32 %i.ka to i8          ; 2 uses
  switch i8 %trunc375.i.us, label %bb.cn [
    i8 12, label %bb.co
    i8 13, label %bb.co
    i8 5, label %bb.co
    i8 15, label %bb.co
    i8 16, label %bb.co
    i8 17, label %bb.co
    i8 7, label %bb.co
    i8 8, label %bb.co
    i8 20, label %bb.co
    i8 21, label %bb.co
    i8 22, label %bb.co
    i8 14, label %bb.co
    i8 23, label %bb.co
  ]

bb.cn:                                            ; preds = %.lr.ph419.i.us
  %i.kb = lshr i32 %i.jz, 16
  %.not292.i.us = icmp sgt i32 %i.kb, %.085.lcssa238
  br i1 %.not292.i.us, label %.critedge2.loopexit.split.loop.exit507.i.us, label %bb.co

bb.co:                                            ; preds = %bb.cn, %.lr.ph419.i.us, %.lr.ph419.i.us, %.lr.ph419.i.us, %.lr.ph419.i.us, %.lr.ph419.i.us, %.lr.ph419.i.us, %.lr.ph419.i.us, %.lr.ph419.i.us, %.lr.ph419.i.us, %.lr.ph419.i.us, %.lr.ph419.i.us, %.lr.ph419.i.us, %.lr.ph419.i.us
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8
  %.not293.i.us = icmp eq ptr %i.kd, null
  %i.ke = and i32 %i.jz, 8
  %.not294.i.us = icmp ne i32 %i.ke, 0
  %or.cond370.i.us = or i1 %.not294.i.us, %.not293.i.us
  br i1 %or.cond370.i.us, label %.critedge308.i.us, label %.critedge2.loopexit.split.loop.exit.i.us

.critedge308.i.us:                                ; preds = %bb.co
  switch i8 %trunc375.i.us, label %bb.cp [
    i8 12, label %bb.cq
    i8 13, label %bb.cq
    i8 5, label %bb.cq
    i8 15, label %bb.cq
    i8 16, label %bb.cq
    i8 17, label %bb.cq
  ]

bb.cp:                                            ; preds = %.critedge308.i.us
  %i.kf = add i32 %.2357417.i.us, -1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.critedge308.i.us, %.critedge308.i.us, %.critedge308.i.us, %.critedge308.i.us, %.critedge308.i.us, %.critedge308.i.us
  %.3358.i.us = phi i32 [ %i.kf, %bb.cp ], [ %.2357417.i.us, %.critedge308.i.us ], [ %.2357417.i.us, %.critedge308.i.us ], [ %.2357417.i.us, %.critedge308.i.us ], [ %.2357417.i.us, %.critedge308.i.us ], [ %.2357417.i.us, %.critedge308.i.us ], [ %.2357417.i.us, %.critedge308.i.us ] ; 2 uses
  %indvars.iv.next466.i.us = add nsw i64 %indvars.iv465.i.us, 1 ; 2 uses
  %lftr.wideiv.i.us = trunc i64 %indvars.iv.next466.i.us to i32
  %exitcond468.not.i.us = icmp eq i32 %i.iy, %lftr.wideiv.i.us
  br i1 %exitcond468.not.i.us, label %.critedge2.i.us, label %.lr.ph419.i.us, !llvm.loop !21

.critedge2.loopexit.split.loop.exit.i.us:         ; preds = %bb.co
  %i.kg = trunc nsw i64 %indvars.iv465.i.us to i32
  br label %.critedge2.i.us

.critedge2.loopexit.split.loop.exit507.i.us:      ; preds = %bb.cn
  %i.kh = trunc nsw i64 %indvars.iv465.i.us to i32
  br label %.critedge2.i.us

.critedge2.i.us:                                  ; preds = %bb.cq, %.lr.ph411.i.us, %.critedge2.loopexit.split.loop.exit507.i.us, %.critedge2.loopexit.split.loop.exit.i.us, %.critedge.i.us, %bb.cj
  %.2357.lcssa.i.us = phi i32 [ %.1356.i.us, %.critedge.i.us ], [ %i.jc, %bb.cj ], [ %.2357417.i.us, %.critedge2.loopexit.split.loop.exit.i.us ], [ %.2357417.i.us, %.critedge2.loopexit.split.loop.exit507.i.us ], [ %i.jc, %.lr.ph411.i.us ], [ %.3358.i.us, %bb.cq ] ; 4 uses
  %.2277.lcssa.i.us = phi i32 [ %i.jw, %.critedge.i.us ], [ %i.iy, %bb.cj ], [ %i.kg, %.critedge2.loopexit.split.loop.exit.i.us ], [ %i.kh, %.critedge2.loopexit.split.loop.exit507.i.us ], [ %i.iy, %.lr.ph411.i.us ], [ %i.iy, %bb.cq ] ; 6 uses
  %i.ki = load i32, ptr %i.id, align 4            ; 2 uses
  %.3428.i.us = add i32 %i.ja, 1                  ; 2 uses
  %i.kj = icmp slt i32 %.3428.i.us, %i.ki
  %i.kk = icmp slt i32 %.2357.lcssa.i.us, %.087.lcssa236
  %or.cond372429.i.us = select i1 %i.kj, i1 %i.kk, i1 false
  br i1 %or.cond372429.i.us, label %.lr.ph433.i.us, label %.critedge6.i.us

.lr.ph433.i.us:                                   ; preds = %.critedge2.i.us
  %i.kl = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.km = sext i32 %.3428.i.us to i64             ; 2 uses
  %i.kn = getelementptr inbounds [24 x i8], ptr %i.kl, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 8            ; 2 uses
  %i.kp = and i32 %i.ko, 2
  %.not295.i163.us = icmp eq i32 %i.kp, 0
  br i1 %.not295.i163.us, label %.lr.ph166.us.preheader, label %.critedge6.i.us

.lr.ph166.us.preheader:                           ; preds = %.lr.ph433.i.us
  %2 = sext i32 %i.ki to i64
  br label %.lr.ph166.us

bb.cr:                                            ; preds = %bb.ct
  %i.kq = getelementptr inbounds [24 x i8], ptr %i.kl, i64 %indvars.iv.next198
  %i.kr = load i32, ptr %i.kq, align 8            ; 2 uses
  %i.ks = and i32 %i.kr, 2
  %.not295.i.us = icmp eq i32 %i.ks, 0
  br i1 %.not295.i.us, label %.lr.ph166.us, label %.critedge4.i.us, !llvm.loop !22

.lr.ph166.us:                                     ; preds = %.lr.ph166.us.preheader, %bb.cr
  %indvars.iv197 = phi i64 [ %i.km, %.lr.ph166.us.preheader ], [ %indvars.iv.next198, %bb.cr ] ; 3 uses
  %i.kt = phi i32 [ %i.ko, %.lr.ph166.us.preheader ], [ %i.kr, %bb.cr ]
  %.4359430.i165.us = phi i32 [ %.2357.lcssa.i.us, %.lr.ph166.us.preheader ], [ %.5360.i.us, %bb.cr ] ; 7 uses
  %i.ku = lshr i32 %i.kt, 8
  %trunc379.i.us = trunc i32 %i.ku to i8
  switch i8 %trunc379.i.us, label %bb.cs [
    i8 12, label %bb.ct
    i8 13, label %bb.ct
    i8 5, label %bb.ct
    i8 15, label %bb.ct
    i8 16, label %bb.ct
    i8 17, label %bb.ct
  ]

bb.cs:                                            ; preds = %.lr.ph166.us
  %i.kv = add nsw i32 %.4359430.i165.us, 1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.lr.ph166.us, %.lr.ph166.us, %.lr.ph166.us, %.lr.ph166.us, %.lr.ph166.us, %.lr.ph166.us
  %.5360.i.us = phi i32 [ %i.kv, %bb.cs ], [ %.4359430.i165.us, %.lr.ph166.us ], [ %.4359430.i165.us, %.lr.ph166.us ], [ %.4359430.i165.us, %.lr.ph166.us ], [ %.4359430.i165.us, %.lr.ph166.us ], [ %.4359430.i165.us, %.lr.ph166.us ], [ %.4359430.i165.us, %.lr.ph166.us ] ; 4 uses
  %indvars.iv.next198 = add nsw i64 %indvars.iv197, 1 ; 3 uses
  %i.kw = icmp slt i64 %indvars.iv.next198, %2
  %i.kx = icmp slt i32 %.5360.i.us, %.087.lcssa236
  %or.cond372.i.us = select i1 %i.kw, i1 %i.kx, i1 false
  br i1 %or.cond372.i.us, label %bb.cr, label %..critedge4.i_crit_edge.us, !llvm.loop !22

.critedge4.i.us:                                  ; preds = %bb.cr, %..critedge4.i_crit_edge.us
  %i.ky = trunc nsw i64 %indvars.iv197 to i32     ; 2 uses
  %i.kz = icmp slt i32 %i.ja, %i.ky
  br i1 %i.kz, label %.lr.ph441.i.us, label %.critedge6.i.us

.lr.ph441.i.us:                                   ; preds = %.critedge4.i.us
  %i.la = sext i32 %i.ja to i64
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cy, %.lr.ph441.i.us
  %indvars.iv469.i.us = phi i64 [ %indvars.iv197, %.lr.ph441.i.us ], [ %indvars.iv.next470.i.us, %bb.cy ] ; 4 uses
  %.6361439.i.us = phi i32 [ %.5360.i.us, %.lr.ph441.i.us ], [ %.7.i107.us, %bb.cy ] ; 9 uses
  %i.lb = getelementptr inbounds [24 x i8], ptr %i.kl, i64 %indvars.iv469.i.us ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 8            ; 3 uses
  %i.ld = lshr i32 %i.lc, 8
  %trunc377.i.us = trunc i32 %i.ld to i8          ; 2 uses
  switch i8 %trunc377.i.us, label %bb.cv [
    i8 12, label %bb.cw
    i8 13, label %bb.cw
    i8 5, label %bb.cw
    i8 15, label %bb.cw
    i8 16, label %bb.cw
    i8 17, label %bb.cw
    i8 7, label %bb.cw
    i8 8, label %bb.cw
    i8 20, label %bb.cw
    i8 21, label %bb.cw
    i8 22, label %bb.cw
    i8 14, label %bb.cw
    i8 23, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.le = lshr i32 %i.lc, 16
  %.not296.i.us = icmp sgt i32 %i.le, %.085.lcssa238
  br i1 %.not296.i.us, label %.critedge6.loopexit.split.loop.exit511.i.us, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8
  %.not297.i.us = icmp eq ptr %i.lg, null
  %i.lh = and i32 %i.lc, 8
  %.not298.i.us = icmp ne i32 %i.lh, 0
  %or.cond374.i.us = or i1 %.not298.i.us, %.not297.i.us
  br i1 %or.cond374.i.us, label %.critedge310.i.us, label %.critedge6.loopexit.split.loop.exit.i.us

.critedge310.i.us:                                ; preds = %bb.cw
  switch i8 %trunc377.i.us, label %bb.cx [
    i8 12, label %bb.cy
    i8 13, label %bb.cy
    i8 5, label %bb.cy
    i8 15, label %bb.cy
    i8 16, label %bb.cy
    i8 17, label %bb.cy
  ]

bb.cx:                                            ; preds = %.critedge310.i.us
  %i.li = add i32 %.6361439.i.us, -1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.critedge310.i.us, %.critedge310.i.us, %.critedge310.i.us, %.critedge310.i.us, %.critedge310.i.us, %.critedge310.i.us
  %.7.i107.us = phi i32 [ %i.li, %bb.cx ], [ %.6361439.i.us, %.critedge310.i.us ], [ %.6361439.i.us, %.critedge310.i.us ], [ %.6361439.i.us, %.critedge310.i.us ], [ %.6361439.i.us, %.critedge310.i.us ], [ %.6361439.i.us, %.critedge310.i.us ], [ %.6361439.i.us, %.critedge310.i.us ] ; 2 uses
  %indvars.iv.next470.i.us = add nsw i64 %indvars.iv469.i.us, -1 ; 2 uses
  %i.lj = icmp sgt i64 %indvars.iv.next470.i.us, %i.la
  br i1 %i.lj, label %bb.cu, label %.critedge6.i.us, !llvm.loop !23

.critedge6.loopexit.split.loop.exit.i.us:         ; preds = %bb.cw
  %i.lk = trunc nsw i64 %indvars.iv469.i.us to i32
  br label %.critedge6.i.us

.critedge6.loopexit.split.loop.exit511.i.us:      ; preds = %bb.cv
  %i.ll = trunc nsw i64 %indvars.iv469.i.us to i32
  br label %.critedge6.i.us

.critedge6.i.us:                                  ; preds = %bb.cy, %.lr.ph433.i.us, %.critedge6.loopexit.split.loop.exit511.i.us, %.critedge6.loopexit.split.loop.exit.i.us, %.critedge4.i.us, %.critedge2.i.us, %bb.ci
  %.8.i.us = phi i32 [ %i.jc, %bb.ci ], [ %.5360.i.us, %.critedge4.i.us ], [ %.2357.lcssa.i.us, %.critedge2.i.us ], [ %.6361439.i.us, %.critedge6.loopexit.split.loop.exit.i.us ], [ %.6361439.i.us, %.critedge6.loopexit.split.loop.exit511.i.us ], [ %.2357.lcssa.i.us, %.lr.ph433.i.us ], [ %.7.i107.us, %bb.cy ]
  %.0353.i.us = phi i32 [ %i.iy, %bb.ci ], [ %.2277.lcssa.i.us, %.critedge4.i.us ], [ %.2277.lcssa.i.us, %.critedge2.i.us ], [ %.2277.lcssa.i.us, %.critedge6.loopexit.split.loop.exit.i.us ], [ %.2277.lcssa.i.us, %.critedge6.loopexit.split.loop.exit511.i.us ], [ %.2277.lcssa.i.us, %.lr.ph433.i.us ], [ %.2277.lcssa.i.us, %bb.cy ] ; 4 uses
  %.0350.i.us = phi i32 [ %i.ja, %bb.ci ], [ %i.ky, %.critedge4.i.us ], [ %i.ja, %.critedge2.i.us ], [ %i.lk, %.critedge6.loopexit.split.loop.exit.i.us ], [ %i.ll, %.critedge6.loopexit.split.loop.exit511.i.us ], [ %i.ja, %.lr.ph433.i.us ], [ %i.ja, %bb.cy ] ; 4 uses
  store i32 %.0353.i.us, ptr %i.iw, align 4
  store i32 %.0350.i.us, ptr %i.iz, align 4
  store i32 %.8.i.us, ptr %i.jb, align 4
  call fastcc void @mark_fragment(ptr noundef readonly %i.i, i1 noundef zeroext %.082.lcssa242, i32 noundef %.0353.i.us, i32 noundef %.0350.i.us)
  br label %.lr.ph451.i.us

.lr.ph451.i.us:                                   ; preds = %bb.dc, %.critedge6.i.us
  %indvars.iv472.i.us = phi i64 [ %indvars.iv.next473.i.us, %bb.dc ], [ 0, %.critedge6.i.us ] ; 3 uses
  %.not299.i.us = icmp eq i64 %indvars.iv472.i.us, %i.iv
  br i1 %.not299.i.us, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph451.i.us
  %i.lm = getelementptr inbounds nuw [20 x i8], ptr %.1.lcssa.i, i64 %indvars.iv472.i.us ; 3 uses
  %i.ln = load i32, ptr %i.lm, align 4            ; 2 uses
  %.not300.i.us = icmp slt i32 %i.ln, %.0353.i.us ; 2 uses
  %.not301.i.us = icmp sgt i32 %i.ln, %.0350.i.us
  %or.cond311.i.us = or i1 %.not300.i.us, %.not301.i.us
  br i1 %or.cond311.i.us, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lp = load i32, ptr %i.lo, align 4            ; 2 uses
  %.not302.i.us = icmp sge i32 %i.lp, %.0353.i.us
  %.not303.i.us = icmp sgt i32 %i.lp, %.0350.i.us
  %or.cond381.i.us = select i1 %.not303.i.us, i1 %.not300.i.us, i1 %.not302.i.us
  br i1 %or.cond381.i.us, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 17
  store i8 1, ptr %i.lq, align 1
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %.lr.ph451.i.us
  %indvars.iv.next473.i.us = add nuw nsw i64 %indvars.iv472.i.us, 1 ; 2 uses
  %exitcond476.not.i.us = icmp eq i64 %indvars.iv.next473.i.us, %wide.trip.count.i
  br i1 %exitcond476.not.i.us, label %._crit_edge452.i.us, label %.lr.ph451.i.us, !llvm.loop !24

._crit_edge452.i.us:                              ; preds = %bb.dc
  %i.lr = add nuw nsw i32 %.0273454.i.us, 1       ; 2 uses
  %exitcond477.not.i.us = icmp eq i32 %i.lr, %.083.lcssa240
  br i1 %exitcond477.not.i.us, label %._crit_edge455.i, label %.preheader382.i.us, !llvm.loop !25

..critedge.i_crit_edge.us:                        ; preds = %bb.cm
  br label %.critedge.i.us, !llvm.loop !20

..critedge4.i_crit_edge.us:                       ; preds = %bb.ct
  br label %.critedge4.i.us, !llvm.loop !22

.lr.ph.i110:                                      ; preds = %bb.cb, %.loopexit.i
  %.0395.i = phi ptr [ %.1.lcssa.i, %.loopexit.i ], [ %i.hy, %bb.cb ] ; 2 uses
  %.0264394.i = phi i32 [ %.1265.lcssa.i, %.loopexit.i ], [ 32, %bb.cb ] ; 2 uses
  %.0267393.i = phi i32 [ %.1268.lcssa.i, %.loopexit.i ], [ 0, %bb.cb ] ; 2 uses
  %i.ls = load i32, ptr %i.b, align 4             ; 2 uses
  %storemerge384.i = load i32, ptr %i.c, align 4  ; 2 uses
  %.not305385.i = icmp sgt i32 %i.ls, %storemerge384.i
  br i1 %.not305385.i, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i110, %bb.dn
  %storemerge390.i = phi i32 [ %storemerge.i, %bb.dn ], [ %storemerge384.i, %.lr.ph.i110 ] ; 7 uses
  %.1389.i = phi ptr [ %.2.i, %bb.dn ], [ %.0395.i, %.lr.ph.i110 ] ; 2 uses
  %.1265388.i = phi i32 [ %.2266.i, %bb.dn ], [ %.0264394.i, %.lr.ph.i110 ] ; 3 uses
  %.1268387.i = phi i32 [ %i.ng, %bb.dn ], [ %.0267393.i, %.lr.ph.i110 ] ; 3 uses
  %storemerge304386.i = phi i32 [ %i.nh, %bb.dn ], [ %i.ls, %.lr.ph.i110 ]
  %i.lt = load ptr, ptr %i.i, align 8             ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.backedge, %.lr.ph.i.preheader.i
  %.075.i.i = phi i32 [ %storemerge304386.i, %.lr.ph.i.preheader.i ], [ %.075.i.i.be, %.lr.ph.i.i.backedge ] ; 8 uses
  %i.lu = sext i32 %.075.i.i to i64
  %i.lv = getelementptr inbounds [24 x i8], ptr %i.lt, i64 %i.lu ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8
  %.not65.i.i = icmp eq ptr %i.lx, null
  br i1 %.not65.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph.i.i
  %i.ly = load i32, ptr %i.lv, align 8
  %i.lz = and i32 %i.ly, 8
  %.not66.i.i = icmp eq i32 %i.lz, 0
  %i.ma = add i32 %.075.i.i, 1                    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ma, %storemerge390.i
  %or.cond366.i = or i1 %.not.i.i, %.not66.i.i
  br i1 %or.cond366.i, label %._crit_edge.i.i, label %.lr.ph.i.i.backedge

bb.de:                                            ; preds = %.lr.ph.i.i
  %.old.i = add i32 %.075.i.i, 1                  ; 2 uses
  %.not.i.old.i = icmp sgt i32 %.old.i, %storemerge390.i
  br i1 %.not.i.old.i, label %._crit_edge.i.i, label %.lr.ph.i.i.backedge

.lr.ph.i.i.backedge:                              ; preds = %bb.de, %bb.dd
  %.075.i.i.be = phi i32 [ %.old.i, %bb.de ], [ %i.ma, %bb.dd ]
  br label %.lr.ph.i.i, !llvm.loop !26

._crit_edge.i.i:                                  ; preds = %bb.de, %bb.dd
  %.not6777.i.i = icmp sgt i32 %.075.i.i, %storemerge390.i
  br i1 %.not6777.i.i, label %get_next_fragment.exit.i, label %.lr.ph80.i.i

.lr.ph80.i.i:                                     ; preds = %._crit_edge.i.i, %bb.dh
  %.0362.i = phi i32 [ %.2364.i113, %bb.dh ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.11.i111 = phi i32 [ %.15.i, %bb.dh ], [ 0, %._crit_edge.i.i ] ; 9 uses
  %.178.i.i = phi i32 [ %i.ml, %bb.dh ], [ %.075.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.mb = icmp slt i32 %.11.i111, %.087.lcssa236
  br i1 %i.mb, label %bb.df, label %.critedge.i.i

bb.df:                                            ; preds = %.lr.ph80.i.i
  %i.mc = sext i32 %.178.i.i to i64
  %i.md = getelementptr inbounds [24 x i8], ptr %i.lt, i64 %i.mc ; 2 uses
  %i.me = load i32, ptr %i.md, align 8            ; 2 uses
  %i.mf = lshr i32 %i.me, 8
  %trunc.i.i = trunc i32 %i.mf to i8
  switch i8 %trunc.i.i, label %bb.dg [
    i8 12, label %bb.dh
    i8 13, label %bb.dh
    i8 5, label %bb.dh
    i8 15, label %bb.dh
    i8 16, label %bb.dh
    i8 17, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %i.mg = add nsw i32 %.11.i111, 1
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.df, %bb.df, %bb.df, %bb.df, %bb.df
  %.15.i = phi i32 [ %i.mg, %bb.dg ], [ %.11.i111, %bb.df ], [ %.11.i111, %bb.df ], [ %.11.i111, %bb.df ], [ %.11.i111, %bb.df ], [ %.11.i111, %bb.df ], [ %.11.i111, %bb.df ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8
  %.not71.i.i = icmp ne ptr %i.mi, null
  %i.mj = and i32 %i.me, 8
  %.not72.i.i = icmp eq i32 %i.mj, 0
  %or.cond368.i = and i1 %.not72.i.i, %.not71.i.i
  %i.mk = zext i1 %or.cond368.i to i32
  %.2364.i113 = add i32 %.0362.i, %i.mk           ; 2 uses
end_hunk_0
