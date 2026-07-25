inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 49
begin_hunk_0_@png_set_quantize:bb.a
.lr.ph499.preheader.new:                          ; preds = %.lr.ph499.preheader
  %unroll_iter725 = and i64 %wide.trip.count587, 2147483646
  br label %.lr.ph499

.lr.ph499:                                        ; preds = %.lr.ph499, %.lr.ph499.preheader.new
  %indvars.iv584 = phi i64 [ 0, %.lr.ph499.preheader.new ], [ %indvars.iv.next585.1, %.lr.ph499 ] ; 5 uses
  %niter726 = phi i64 [ 0, %.lr.ph499.preheader.new ], [ %niter726.next.1, %.lr.ph499 ]
  %i.ew = trunc i64 %indvars.iv584 to i8          ; 2 uses
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !76
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv584
  store i8 %i.ew, ptr %i.ey, align 1, !tbaa !29
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !77
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv584
  store i8 %i.ew, ptr %i.fa, align 1, !tbaa !29
  %indvars.iv.next585 = or disjoint i64 %indvars.iv584, 1 ; 3 uses
  %i.fb = trunc i64 %indvars.iv.next585 to i8     ; 2 uses
  %i.fc = load ptr, ptr %i.er, align 8, !tbaa !76
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv.next585
  store i8 %i.fb, ptr %i.fd, align 1, !tbaa !29
  %i.fe = load ptr, ptr %i.et, align 8, !tbaa !77
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %indvars.iv.next585
  store i8 %i.fb, ptr %i.ff, align 1, !tbaa !29
  %indvars.iv.next585.1 = add nuw nsw i64 %indvars.iv584, 2 ; 2 uses
  %niter726.next.1 = add i64 %niter726, 2         ; 2 uses
  %niter726.ncmp.1 = icmp eq i64 %niter726.next.1, %unroll_iter725
  br i1 %niter726.ncmp.1, label %.preheader459.lr.ph.loopexit.unr-lcssa, label %.lr.ph499, !llvm.loop !78

.preheader459.lr.ph.loopexit.unr-lcssa:           ; preds = %.lr.ph499
  %lcmp.mod723.not = icmp eq i64 %xtraiter721, 0
  br i1 %lcmp.mod723.not, label %.preheader459.lr.ph, label %.lr.ph499.epil.preheader

.lr.ph499.epil.preheader:                         ; preds = %.preheader459.lr.ph.loopexit.unr-lcssa, %.lr.ph499.preheader
  %indvars.iv584.epil.init = phi i64 [ 0, %.lr.ph499.preheader ], [ %indvars.iv.next585.1, %.preheader459.lr.ph.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod724 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod724)
  %i.fg = trunc i64 %indvars.iv584.epil.init to i8 ; 2 uses
  %i.fh = load ptr, ptr %i.er, align 8, !tbaa !76
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv584.epil.init
  store i8 %i.fg, ptr %i.fi, align 1, !tbaa !29
  %i.fj = load ptr, ptr %i.et, align 8, !tbaa !77
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv584.epil.init
  store i8 %i.fg, ptr %i.fk, align 1, !tbaa !29
  br label %.preheader459.lr.ph

.preheader459.lr.ph:                              ; preds = %.lr.ph499.epil.preheader, %.preheader459.lr.ph.loopexit.unr-lcssa, %bb.u
  %i.fl = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef 6152) #11 ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %wide.trip.count616 = zext nneg i32 %2 to i64
  br label %.preheader459

.preheader459:                                    ; preds = %.preheader459.lr.ph, %bb.ao
  %indvars.iv627 = phi i64 [ 97, %.preheader459.lr.ph ], [ %indvars.iv.next628, %bb.ao ] ; 4 uses
  %.0378520 = phi i32 [ 96, %.preheader459.lr.ph ], [ %i.nc, %bb.ao ] ; 2 uses
  %.0382519 = phi i32 [ %2, %.preheader459.lr.ph ], [ %.6, %bb.ao ] ; 8 uses
  %.0387518 = phi ptr [ null, %.preheader459.lr.ph ], [ %.9, %bb.ao ] ; 2 uses
  %i.fn = tail call i32 @llvm.smax.i32(i32 %.0382519, i32 1)
  %smax = add nsw i32 %i.fn, -1                   ; 2 uses
  %wide.trip.count599 = zext nneg i32 %smax to i64
  %wide.trip.count594 = zext i32 %.0382519 to i64
  %exitcond600.not696 = icmp eq i32 %smax, 0
  br i1 %exitcond600.not696, label %._crit_edge700, label %.lr.ph504

bb.v:                                             ; preds = %._crit_edge505
  %indvars.iv.next590 = add nuw nsw i64 %indvars.iv589698, 1
  %exitcond600.not = icmp eq i64 %indvars.iv.next597, %wide.trip.count599
  br i1 %exitcond600.not, label %._crit_edge700, label %.lr.ph504

.lr.ph504:                                        ; preds = %.preheader459, %bb.v
  %.1388699 = phi ptr [ %.4391.ph, %bb.v ], [ %.0387518, %.preheader459 ]
  %indvars.iv589698 = phi i64 [ %indvars.iv.next590, %bb.v ], [ 1, %.preheader459 ] ; 2 uses
  %indvars.iv596697 = phi i64 [ %indvars.iv.next597, %bb.v ], [ 0, %.preheader459 ] ; 3 uses
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596697, 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv596697 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %i.fr = trunc i64 %indvars.iv596697 to i8
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph504, %bb.z
  %indvars.iv591 = phi i64 [ %indvars.iv589698, %.lr.ph504 ], [ %indvars.iv.next592, %bb.z ] ; 3 uses
  %.2389502 = phi ptr [ %.1388699, %.lr.ph504 ], [ %.4391.ph, %bb.z ]
  %i.fs = load i8, ptr %i.fo, align 1, !tbaa !70
  %i.ft = zext i8 %i.fs to i32
  %i.fu = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv591 ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !70
  %i.fw = zext i8 %i.fv to i32
  %i.fx = sub nsw i32 %i.ft, %i.fw
  %i.fy = tail call i32 @llvm.abs.i32(i32 %i.fx, i1 true)
  %i.fz = load i8, ptr %i.fp, align 1, !tbaa !72
  %i.ga = zext i8 %i.fz to i32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !72
  %i.gd = zext i8 %i.gc to i32
  %i.ge = sub nsw i32 %i.ga, %i.gd
  %i.gf = tail call i32 @llvm.abs.i32(i32 %i.ge, i1 true)
  %i.gg = add nuw nsw i32 %i.gf, %i.fy
  %i.gh = load i8, ptr %i.fq, align 1, !tbaa !73
  %i.gi = zext i8 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !73
  %i.gl = zext i8 %i.gk to i32
  %i.gm = sub nsw i32 %i.gi, %i.gl
  %i.gn = tail call i32 @llvm.abs.i32(i32 %i.gm, i1 true)
  %i.go = add nuw nsw i32 %i.gg, %i.gn            ; 2 uses
  %.not419 = icmp samesign ugt i32 %i.go, %.0378520
  br i1 %.not419, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gp = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef 16) #11 ; 6 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %.thread450, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gr = zext nneg i32 %i.go to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.gr ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !79
  store ptr %i.gt, ptr %i.gp, align 8, !tbaa !81
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i8 %i.fr, ptr %i.gu, align 8, !tbaa !83
  %i.gv = trunc i64 %indvars.iv591 to i8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 9
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !84
  store ptr %i.gp, ptr %i.gs, align 8, !tbaa !79
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.4391.ph = phi ptr [ %.2389502, %bb.w ], [ %i.gp, %bb.y ] ; 4 uses
  %indvars.iv.next592 = add nuw nsw i64 %indvars.iv591, 1 ; 2 uses
  %exitcond595.not = icmp eq i64 %indvars.iv.next592, %wide.trip.count594
  br i1 %exitcond595.not, label %._crit_edge505, label %bb.w, !llvm.loop !85

._crit_edge505:                                   ; preds = %bb.z
  %i.gx = icmp eq ptr %.4391.ph, null
  br i1 %i.gx, label %.thread450, label %bb.v

._crit_edge700:                                   ; preds = %bb.v, %.preheader459
  %.1388.lcssa = phi ptr [ %.0387518, %.preheader459 ], [ %.4391.ph, %bb.v ] ; 7 uses
  %.not420 = icmp eq ptr %.1388.lcssa, null
  br i1 %.not420, label %.thread450, label %.preheader457

.preheader457:                                    ; preds = %._crit_edge700
  br i1 %i.h, label %.preheader457.split.us, label %.preheader457.split

.preheader457.split.us:                           ; preds = %.preheader457
  br i1 %i.eu, label %.preheader457.split.us.split.us, label %.preheader457.split.us.split

.preheader457.split.us.split.us:                  ; preds = %.preheader457.split.us, %.split.us.us.split.us.us.thread
  %indvars.iv618 = phi i64 [ %indvars.iv.next619, %.split.us.us.split.us.us.thread ], [ 0, %.preheader457.split.us ] ; 2 uses
  %.1383511.us.us = phi i32 [ %.5.us.us, %.split.us.us.split.us.us.thread ], [ %.0382519, %.preheader457.split.us ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv618
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !79 ; 2 uses
  %.not422.us.us = icmp eq ptr %i.gz, null
  br i1 %.not422.us.us, label %.split.us.us.split.us.us.thread, label %.preheader456.us.us

.split.us.us.split.us.us.thread:                  ; preds = %7, %.preheader457.split.us.split.us
  %.5.us.us = phi i32 [ %.1383511.us.us, %.preheader457.split.us.split.us ], [ %.3385.us.us.us.us, %7 ] ; 2 uses
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %exitcond622.not = icmp eq i64 %indvars.iv.next619, %indvars.iv627
  br i1 %exitcond622.not, label %.thread450, label %.preheader457.split.us.split.us, !llvm.loop !86

.preheader456.us.us:                              ; preds = %.preheader457.split.us.split.us, %7
  %.2384510.us.us.us.us = phi i32 [ %.3385.us.us.us.us, %7 ], [ %.1383511.us.us, %.preheader457.split.us.split.us ] ; 6 uses
  %.0395509.us.us.us.us = phi ptr [ %8, %7 ], [ %i.gz, %.preheader457.split.us.split.us ] ; 3 uses
  %i.ha = load ptr, ptr %i.er, align 8, !tbaa !76 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0395509.us.us.us.us, i64 8
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !83  ; 3 uses
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !29
  %i.hg = zext i8 %i.hf to i32
  %i.hh = icmp sgt i32 %.2384510.us.us.us.us, %i.hg
  br i1 %i.hh, label %bb.aa, label %6

bb.aa:                                            ; preds = %.preheader456.us.us
  %i.hi = getelementptr inbounds nuw i8, ptr %.0395509.us.us.us.us, i64 9
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !84  ; 3 uses
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !29
  %i.hn = zext i8 %i.hm to i32
  %i.ho = icmp samesign ugt i32 %.2384510.us.us.us.us, %i.hn
  br i1 %i.ho, label %.preheader.us.us.us.us, label %6

.preheader.us.us.us.us:                           ; preds = %bb.aa
  %i.hp = and i32 %.2384510.us.us.us.us, 1
  %.not424.us.us.us.us = icmp eq i32 %i.hp, 0     ; 2 uses
  %.440.us.us.us.us = select i1 %.not424.us.us.us.us, i8 %i.hc, i8 %i.hj
  %.441.us.us.us.us = select i1 %.not424.us.us.us.us, i8 %i.hj, i8 %i.hc ; 2 uses
  %i.hq = add nsw i32 %.2384510.us.us.us.us, -1   ; 4 uses
  %i.hr = zext i8 %.441.us.us.us.us to i64        ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !29
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.hu
  %i.hw = zext nneg i32 %i.hq to i64              ; 4 uses
  %i.hx = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.hw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hv, ptr noundef nonnull align 1 dereferenceable(3) %i.hx, i64 3, i1 false), !tbaa.struct !66
  %i.hy = zext i8 %.440.us.us.us.us to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %.preheader.us.us.us.us
  %indvars.iv613 = phi i64 [ %indvars.iv.next614, %bb.af ], [ 0, %.preheader.us.us.us.us ] ; 4 uses
  %i.hz = load ptr, ptr %i.fm, align 8, !tbaa !56 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %indvars.iv613 ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !29  ; 2 uses
  %i.ic = load ptr, ptr %i.er, align 8, !tbaa !76 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hr
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !29
  %i.if = icmp eq i8 %i.ib, %i.ie
  br i1 %i.if, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hy
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !29
  store i8 %i.ih, ptr %i.ia, align 1, !tbaa !29
  %.pre = load ptr, ptr %i.fm, align 8, !tbaa !56 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv613
  %.pre647 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ii = phi i8 [ %.pre647, %bb.ac ], [ %i.ib, %bb.ab ]
  %i.ij = phi ptr [ %.pre, %bb.ac ], [ %i.hz, %bb.ab ]
  %i.ik = zext i8 %i.ii to i32
  %i.il = icmp eq i32 %i.hq, %i.ik
  br i1 %i.il, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv613
  %i.in = load ptr, ptr %i.er, align 8, !tbaa !76
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.hr
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !29
  store i8 %i.ip, ptr %i.im, align 1, !tbaa !29
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %exitcond617.not = icmp eq i64 %indvars.iv.next614, %wide.trip.count616
  br i1 %exitcond617.not, label %..loopexit_crit_edge.us.us.us.us, label %bb.ab, !llvm.loop !87

6:                                                ; preds = %..loopexit_crit_edge.us.us.us.us, %bb.aa, %.preheader456.us.us
  %.3385.us.us.us.us = phi i32 [ %i.hq, %..loopexit_crit_edge.us.us.us.us ], [ %.2384510.us.us.us.us, %bb.aa ], [ %.2384510.us.us.us.us, %.preheader456.us.us ] ; 4 uses
  %.not425.us.us.us.us = icmp sgt i32 %.3385.us.us.us.us, %3
  br i1 %.not425.us.us.us.us, label %7, label %.thread450

7:                                                ; preds = %6
  %8 = load ptr, ptr %.0395509.us.us.us.us, align 8, !tbaa !81 ; 2 uses
  %.not423.us.us.us.us = icmp eq ptr %8, null
  br i1 %.not423.us.us.us.us, label %.split.us.us.split.us.us.thread, label %.preheader456.us.us, !llvm.loop !88

..loopexit_crit_edge.us.us.us.us:                 ; preds = %bb.af
  %i.iq = load ptr, ptr %i.er, align 8, !tbaa !76 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.hr
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !29
  %i.it = load ptr, ptr %i.et, align 8, !tbaa !77
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.hw
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !29
  %i.iw = zext i8 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.iw
  store i8 %i.is, ptr %i.ix, align 1, !tbaa !29
  %i.iy = load ptr, ptr %i.et, align 8, !tbaa !77 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.hw
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !29
  %i.jb = load ptr, ptr %i.er, align 8, !tbaa !76
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.hr
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !29
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.je
  store i8 %i.ja, ptr %i.jf, align 1, !tbaa !29
  %i.jg = trunc i32 %i.hq to i8
  %i.jh = load ptr, ptr %i.er, align 8, !tbaa !76
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.hr
  store i8 %i.jg, ptr %i.ji, align 1, !tbaa !29
  %i.jj = load ptr, ptr %i.et, align 8, !tbaa !77
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.hw
  store i8 %.441.us.us.us.us, ptr %i.jk, align 1, !tbaa !29
  br label %6

.preheader457.split.us.split:                     ; preds = %.preheader457.split.us, %.split.us.us.split.thread
  %indvars.iv608 = phi i64 [ %indvars.iv.next609, %.split.us.us.split.thread ], [ 0, %.preheader457.split.us ] ; 2 uses
  %.1383511.us = phi i32 [ %.5.us, %.split.us.us.split.thread ], [ %.0382519, %.preheader457.split.us ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv608
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !79 ; 2 uses
  %.not422.us = icmp eq ptr %i.jm, null
  br i1 %.not422.us, label %.split.us.us.split.thread, label %.preheader456.us

.split.us.us.split.thread:                        ; preds = %bb.ai, %.preheader457.split.us.split
  %.5.us = phi i32 [ %.1383511.us, %.preheader457.split.us.split ], [ %.3385.us.us, %bb.ai ] ; 2 uses
  %indvars.iv.next609 = add nuw nsw i64 %indvars.iv608, 1 ; 2 uses
  %exitcond612.not = icmp eq i64 %indvars.iv.next609, %indvars.iv627
  br i1 %exitcond612.not, label %.thread450, label %.preheader457.split.us.split, !llvm.loop !86

.preheader456.us:                                 ; preds = %.preheader457.split.us.split, %bb.ai
  %.2384510.us.us = phi i32 [ %.3385.us.us, %bb.ai ], [ %.1383511.us, %.preheader457.split.us.split ] ; 6 uses
  %.0395509.us.us = phi ptr [ %i.le, %bb.ai ], [ %i.jm, %.preheader457.split.us.split ] ; 3 uses
  %i.jn = load ptr, ptr %i.er, align 8, !tbaa !76 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.0395509.us.us, i64 8
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !83  ; 2 uses
  %i.jq = zext i8 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !29
  %i.jt = zext i8 %i.js to i32
  %i.ju = icmp sgt i32 %.2384510.us.us, %i.jt
  br i1 %i.ju, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.preheader456.us
  %i.jv = getelementptr inbounds nuw i8, ptr %.0395509.us.us, i64 9
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !84  ; 2 uses
  %i.jx = zext i8 %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !29
  %i.ka = zext i8 %i.jz to i32
  %i.kb = icmp samesign ugt i32 %.2384510.us.us, %i.ka
  br i1 %i.kb, label %.preheader.us.us, label %bb.ah

.preheader.us.us:                                 ; preds = %bb.ag
  %i.kc = and i32 %.2384510.us.us, 1
  %.not424.us.us = icmp eq i32 %i.kc, 0
  %.441.us.us = select i1 %.not424.us.us, i8 %i.jw, i8 %i.jp ; 2 uses
  %i.kd = add nsw i32 %.2384510.us.us, -1         ; 3 uses
  %i.ke = zext i8 %.441.us.us to i64              ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.ke ; 2 uses
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !29
  %i.kh = zext i8 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.kh
  %i.kj = zext nneg i32 %i.kd to i64              ; 4 uses
  %i.kk = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.kj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ki, ptr noundef nonnull align 1 dereferenceable(3) %i.kk, i64 3, i1 false), !tbaa.struct !66
  %i.kl = load i8, ptr %i.kf, align 1, !tbaa !29
  %i.km = load ptr, ptr %i.et, align 8, !tbaa !77
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kj
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !29
  %i.kp = zext i8 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.kp
  store i8 %i.kl, ptr %i.kq, align 1, !tbaa !29
  %i.kr = load ptr, ptr %i.et, align 8, !tbaa !77 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kj
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !29
  %i.ku = load ptr, ptr %i.er, align 8, !tbaa !76
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ke
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !29
  %i.kx = zext i8 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kx
  store i8 %i.kt, ptr %i.ky, align 1, !tbaa !29
  %i.kz = trunc i32 %i.kd to i8
  %i.la = load ptr, ptr %i.er, align 8, !tbaa !76
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.ke
  store i8 %i.kz, ptr %i.lb, align 1, !tbaa !29
  %i.lc = load ptr, ptr %i.et, align 8, !tbaa !77
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.kj
  store i8 %.441.us.us, ptr %i.ld, align 1, !tbaa !29
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader.us.us, %bb.ag, %.preheader456.us
  %.3385.us.us = phi i32 [ %i.kd, %.preheader.us.us ], [ %.2384510.us.us, %bb.ag ], [ %.2384510.us.us, %.preheader456.us ] ; 4 uses
  %.not425.us.us = icmp sgt i32 %.3385.us.us, %3
  br i1 %.not425.us.us, label %bb.ai, label %.thread450

bb.ai:                                            ; preds = %bb.ah
  %i.le = load ptr, ptr %.0395509.us.us, align 8, !tbaa !81 ; 2 uses
  %.not423.us.us = icmp eq ptr %i.le, null
  br i1 %.not423.us.us, label %.split.us.us.split.thread, label %.preheader456.us, !llvm.loop !88

.preheader457.split:                              ; preds = %.preheader457, %.split.thread
  %indvars.iv601 = phi i64 [ %indvars.iv.next602, %.split.thread ], [ 0, %.preheader457 ] ; 2 uses
  %.1383511 = phi i32 [ %.5, %.split.thread ], [ %.0382519, %.preheader457 ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv601
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !79 ; 2 uses
  %.not422 = icmp eq ptr %i.lg, null
  br i1 %.not422, label %.split.thread, label %.preheader456

.preheader456:                                    ; preds = %.preheader457.split, %bb.am
  %.2384510 = phi i32 [ %.3385, %bb.am ], [ %.1383511, %.preheader457.split ] ; 6 uses
  %.0395509 = phi ptr [ %i.my, %bb.am ], [ %i.lg, %.preheader457.split ] ; 3 uses
  %i.lh = load ptr, ptr %i.er, align 8, !tbaa !76 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.0395509, i64 8
  %i.lj = load i8, ptr %i.li, align 8, !tbaa !83  ; 2 uses
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !29
  %i.ln = zext i8 %i.lm to i32
  %i.lo = icmp sgt i32 %.2384510, %i.ln
  br i1 %i.lo, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.preheader456
  %i.lp = getelementptr inbounds nuw i8, ptr %.0395509, i64 9
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !84  ; 2 uses
  %i.lr = zext i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !29
  %i.lu = zext i8 %i.lt to i32
  %i.lv = icmp samesign ugt i32 %.2384510, %i.lu
  br i1 %i.lv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.lw = and i32 %.2384510, 1
  %.not424 = icmp eq i32 %i.lw, 0
  %.441 = select i1 %.not424, i8 %i.lq, i8 %i.lj  ; 2 uses
  %i.lx = add nsw i32 %.2384510, -1               ; 3 uses
  %i.ly = zext i8 %.441 to i64                    ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.ly ; 2 uses
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !29
  %i.mb = zext i8 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.mb
  %i.md = zext nneg i32 %i.lx to i64              ; 4 uses
  %i.me = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.md
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.mc, ptr noundef nonnull align 1 dereferenceable(3) %i.me, i64 3, i1 false), !tbaa.struct !66
  %i.mf = load i8, ptr %i.lz, align 1, !tbaa !29
  %i.mg = load ptr, ptr %i.et, align 8, !tbaa !77
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.md
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !29
  %i.mj = zext i8 %i.mi to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.mj
  store i8 %i.mf, ptr %i.mk, align 1, !tbaa !29
  %i.ml = load ptr, ptr %i.et, align 8, !tbaa !77 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.md
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !29
  %i.mo = load ptr, ptr %i.er, align 8, !tbaa !76
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.ly
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !29
  %i.mr = zext i8 %i.mq to i64
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mr
  store i8 %i.mn, ptr %i.ms, align 1, !tbaa !29
  %i.mt = trunc i32 %i.lx to i8
  %i.mu = load ptr, ptr %i.er, align 8, !tbaa !76
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.ly
  store i8 %i.mt, ptr %i.mv, align 1, !tbaa !29
  %i.mw = load ptr, ptr %i.et, align 8, !tbaa !77
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.md
  store i8 %.441, ptr %i.mx, align 1, !tbaa !29
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.preheader456
  %.3385 = phi i32 [ %i.lx, %bb.ak ], [ %.2384510, %bb.aj ], [ %.2384510, %.preheader456 ] ; 4 uses
  %.not425 = icmp sgt i32 %.3385, %3
  br i1 %.not425, label %bb.am, label %.thread450

bb.am:                                            ; preds = %bb.al
  %i.my = load ptr, ptr %.0395509, align 8, !tbaa !81 ; 2 uses
  %.not423 = icmp eq ptr %i.my, null
  br i1 %.not423, label %.split.thread, label %.preheader456, !llvm.loop !88

.split.thread:                                    ; preds = %bb.am, %.preheader457.split
  %.5 = phi i32 [ %.1383511, %.preheader457.split ], [ %.3385, %bb.am ] ; 2 uses
  %indvars.iv.next602 = add nuw nsw i64 %indvars.iv601, 1 ; 2 uses
  %exitcond607.not = icmp eq i64 %indvars.iv.next602, %indvars.iv627
  br i1 %exitcond607.not, label %.thread450, label %.preheader457.split, !llvm.loop !86

.thread450:                                       ; preds = %._crit_edge505, %.split.thread, %.split.us.us.split.thread, %.split.us.us.split.us.us.thread, %bb.x, %bb.al, %bb.ah, %6, %._crit_edge700
  %.6393453 = phi ptr [ %.1388.lcssa, %.split.thread ], [ %.1388.lcssa, %6 ], [ null, %._crit_edge700 ], [ %.1388.lcssa, %.split.us.us.split.us.us.thread ], [ %.1388.lcssa, %.split.us.us.split.thread ], [ %.1388.lcssa, %bb.ah ], [ %.1388.lcssa, %bb.al ], [ null, %bb.x ], [ null, %._crit_edge505 ]
  %.6 = phi i32 [ %.5, %.split.thread ], [ %.3385.us.us.us.us, %6 ], [ %.0382519, %._crit_edge700 ], [ %.5.us.us, %.split.us.us.split.us.us.thread ], [ %.5.us, %.split.us.us.split.thread ], [ %.3385.us.us, %bb.ah ], [ %.3385, %bb.al ], [ %.0382519, %bb.x ], [ %.0382519, %._crit_edge505 ] ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %.thread450, %.loopexit455
  %indvars.iv623 = phi i64 [ 0, %.thread450 ], [ %indvars.iv.next624, %.loopexit455 ] ; 2 uses
  %.7516 = phi ptr [ %.6393453, %.thread450 ], [ %.9, %.loopexit455 ]
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv623 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !79 ; 2 uses
  %.not427 = icmp eq ptr %i.na, null
  br i1 %.not427, label %.loopexit455, label %.preheader454

.preheader454:                                    ; preds = %bb.an, %.preheader454
  %.0399515 = phi ptr [ %i.nb, %.preheader454 ], [ %i.na, %bb.an ] ; 2 uses
  %i.nb = load ptr, ptr %.0399515, align 8, !tbaa !81 ; 2 uses
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %.0399515) #11
  %.not428 = icmp eq ptr %i.nb, null
  br i1 %.not428, label %.loopexit455, label %.preheader454, !llvm.loop !89

.loopexit455:                                     ; preds = %.preheader454, %bb.an
  %.9 = phi ptr [ %.7516, %bb.an ], [ null, %.preheader454 ] ; 2 uses
  store ptr null, ptr %i.mz, align 8, !tbaa !79
  %indvars.iv.next624 = add nuw nsw i64 %indvars.iv623, 1 ; 2 uses
  %exitcond626.not = icmp eq i64 %indvars.iv.next624, 769
  br i1 %exitcond626.not, label %bb.ao, label %bb.an, !llvm.loop !90

bb.ao:                                            ; preds = %.loopexit455
  %i.nc = add nuw nsw i32 %.0378520, 96
  %i.nd = icmp sgt i32 %.6, %3
  %indvars.iv.next628 = add nuw i64 %indvars.iv627, 96
  br i1 %i.nd, label %.preheader459, label %._crit_edge524, !llvm.loop !91

._crit_edge524:                                   ; preds = %bb.ao
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.fl) #11
  %i.ne = load ptr, ptr %i.et, align 8, !tbaa !77
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.ne) #11
  %i.nf = load ptr, ptr %i.er, align 8, !tbaa !76
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.nf) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 0, i64 16, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit462, %._crit_edge524, %.loopexit469
  %.0 = phi i32 [ %2, %.loopexit469 ], [ %3, %._crit_edge524 ], [ %3, %.loopexit462 ] ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !92
  %i.ni = icmp eq ptr %i.nh, null
  br i1 %i.ni, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store ptr %1, ptr %i.ng, align 8, !tbaa !92
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.nj = trunc i32 %.0 to i16
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i16 %i.nj, ptr %i.nk, align 8, !tbaa !93
  br i1 %i.h, label %png_rtran_ok.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nl = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef 32768) #11
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  store ptr %i.nl, ptr %i.nm, align 8, !tbaa !94
  %i.nn = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef 32768) #11 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32768) %i.nn, i8 -1, i64 32768, i1 false)
  %i.no = icmp sgt i32 %.0, 0
  br i1 %i.no, label %.lr.ph530.preheader, label %._crit_edge531

.lr.ph530.preheader:                              ; preds = %bb.as
  %wide.trip.count645 = zext nneg i32 %.0 to i64
  br label %.lr.ph530

.lr.ph530:                                        ; preds = %.lr.ph530.preheader, %bb.ba
  %indvars.iv642 = phi i64 [ 0, %.lr.ph530.preheader ], [ %indvars.iv.next643, %bb.ba ] ; 3 uses
  %i.np = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv642 ; 3 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !70
  %i.nr = lshr i8 %i.nq, 3                        ; 2 uses
  %i.ns = zext nneg i8 %i.nr to i32
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 1
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !72
  %i.nv = lshr i8 %i.nu, 3                        ; 2 uses
  %i.nw = zext nneg i8 %i.nv to i32
  %i.nx = getelementptr inbounds nuw i8, ptr %i.np, i64 2
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !73
  %i.nz = lshr i8 %i.ny, 3                        ; 2 uses
  %i.oa = zext nneg i8 %i.nz to i32
  %i.ob = trunc i64 %indvars.iv642 to i8
  %i.oc = zext nneg i8 %i.nz to i64               ; 2 uses
  %i.od = zext nneg i8 %i.nv to i64               ; 2 uses
  %i.oe = zext nneg i8 %i.nr to i64               ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph530, %bb.az
  %indvars.iv638 = phi i64 [ 0, %.lr.ph530 ], [ %indvars.iv.next639, %bb.az ] ; 5 uses
  %indvars640 = trunc i64 %indvars.iv638 to i32
  %i.of = icmp samesign ugt i64 %indvars.iv638, %i.oe
  %i.og = sub nuw nsw i32 %indvars640, %i.ns
  %i.oh = sub nuw nsw i64 %i.oe, %indvars.iv638
  %i.oi = trunc nuw nsw i64 %i.oh to i32
  %i.oj = select i1 %i.of, i32 %i.og, i32 %i.oi   ; 2 uses
  %i.ok = shl nuw nsw i64 %indvars.iv638, 10
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ay
  %indvars.iv634 = phi i64 [ 0, %bb.at ], [ %indvars.iv.next635, %bb.ay ] ; 5 uses
  %indvars636 = trunc i64 %indvars.iv634 to i32
  %i.ol = icmp samesign ugt i64 %indvars.iv634, %i.od
  %i.om = sub nuw nsw i32 %indvars636, %i.nw
  %i.on = sub nuw nsw i64 %i.od, %indvars.iv634
  %i.oo = trunc nuw nsw i64 %i.on to i32
  %i.op = select i1 %i.ol, i32 %i.om, i32 %i.oo   ; 2 uses
  %i.oq = add nuw nsw i32 %i.op, %i.oj
  %i.or = tail call i32 @llvm.umax.i32(i32 %i.oj, i32 %i.op)
  %i.os = shl nuw nsw i64 %indvars.iv634, 5
  %i.ot = add nuw nsw i64 %i.os, %i.ok
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ax
  %indvars.iv630 = phi i64 [ 0, %bb.au ], [ %indvars.iv.next631, %bb.ax ] ; 5 uses
  %indvars632 = trunc i64 %indvars.iv630 to i32
  %i.ou = add nuw nsw i64 %indvars.iv630, %i.ot   ; 2 uses
  %i.ov = icmp samesign ugt i64 %indvars.iv630, %i.oc
  %i.ow = sub nuw nsw i32 %indvars632, %i.oa
  %i.ox = sub nuw nsw i64 %i.oc, %indvars.iv630
  %i.oy = trunc nuw nsw i64 %i.ox to i32
  %i.oz = select i1 %i.ov, i32 %i.ow, i32 %i.oy   ; 2 uses
  %i.pa = tail call i32 @llvm.umax.i32(i32 %i.or, i32 %i.oz)
  %i.pb = add nuw nsw i32 %i.oq, %i.oz
  %i.pc = add nuw nsw i32 %i.pb, %i.pa            ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.ou ; 2 uses
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !29
  %i.pf = zext i8 %i.pe to i32
  %i.pg = icmp samesign ult i32 %i.pc, %i.pf
  br i1 %i.pg, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ph = trunc nuw i32 %i.pc to i8
  store i8 %i.ph, ptr %i.pd, align 1, !tbaa !29
  %i.pi = load ptr, ptr %i.nm, align 8, !tbaa !94
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.ou
  store i8 %i.ob, ptr %i.pj, align 1, !tbaa !29
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %indvars.iv.next631 = add nuw nsw i64 %indvars.iv630, 1 ; 2 uses
  %exitcond633.not = icmp eq i64 %indvars.iv.next631, 32
  br i1 %exitcond633.not, label %bb.ay, label %bb.av, !llvm.loop !95

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next635 = add nuw nsw i64 %indvars.iv634, 1 ; 2 uses
  %exitcond637.not = icmp eq i64 %indvars.iv.next635, 32
  br i1 %exitcond637.not, label %bb.az, label %bb.au, !llvm.loop !96

bb.az:                                            ; preds = %bb.ay
  %indvars.iv.next639 = add nuw nsw i64 %indvars.iv638, 1 ; 2 uses
  %exitcond641.not = icmp eq i64 %indvars.iv.next639, 32
  br i1 %exitcond641.not, label %bb.ba, label %bb.at, !llvm.loop !97

bb.ba:                                            ; preds = %bb.az
  %indvars.iv.next643 = add nuw nsw i64 %indvars.iv642, 1 ; 2 uses
  %exitcond646.not = icmp eq i64 %indvars.iv.next643, %wide.trip.count645
  br i1 %exitcond646.not, label %._crit_edge531, label %.lr.ph530, !llvm.loop !98

._crit_edge531:                                   ; preds = %bb.ba, %bb.as
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.nn) #11
  br label %png_rtran_ok.exit.thread

png_rtran_ok.exit.thread:                         ; preds = %bb.a, %bb.c, %._crit_edge531, %bb.ar
  ret void
}

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @png_set_gamma_fixed(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %png_rtran_ok.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7, !alias.scope !99 ; 2 uses
  %i.c = and i32 %i.b, 64
  %.not8.i = icmp eq i32 %i.c, 0
end_hunk_0
