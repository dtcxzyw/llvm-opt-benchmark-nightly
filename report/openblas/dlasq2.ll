Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasq2?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dlasq2_:bb.a
._crit_edge700.loopexit:                          ; preds = %bb.bs
  %i.uj = add nsw i32 %.1560, 1
  br label %._crit_edge700

._crit_edge700:                                   ; preds = %._crit_edge700.loopexit, %bb.bn
  %.0559.lcssa = phi i32 [ %i.si, %bb.bn ], [ %i.uj, %._crit_edge700.loopexit ]
  %i.uk = phi <2 x double> [ %i.td, %bb.bn ], [ %i.ui, %._crit_edge700.loopexit ]
  %i.ul = getelementptr i8, ptr %i.sn, i64 -8
  store <2 x double> %i.uk, ptr %i.ul, align 8, !tbaa !35
  store i32 %.0559.lcssa, ptr %i.m, align 4, !tbaa !33
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bj, %bb.bk, %._crit_edge700, %bb.bm
  %i.um = add nuw nsw i32 %.0534705, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.um, %i.sa
  br i1 %exitcond.not, label %._crit_edge708.loopexit, label %.lr.ph707, !llvm.loop !22

._crit_edge708.loopexit:                          ; preds = %bb.bt
  %.pre803 = load i32, ptr %i.m, align 4, !tbaa !33
  %.pre804 = load i32, ptr %i.n, align 4, !tbaa !33
  %.promoted722.pre = load double, ptr %i.k, align 8, !tbaa !35
  br label %._crit_edge708

._crit_edge708:                                   ; preds = %.loopexit613, %._crit_edge708.loopexit
  %.promoted722 = phi double [ %.promoted722.pre, %._crit_edge708.loopexit ], [ %.promoted722806, %.loopexit613 ]
  %i.un = phi i32 [ %.pre804, %._crit_edge708.loopexit ], [ %i.om, %.loopexit613 ] ; 3 uses
  %i.uo = phi i32 [ %.pre803, %._crit_edge708.loopexit ], [ %i.pw, %.loopexit613 ] ; 4 uses
  store i32 2, ptr %2, align 4, !tbaa !33
  %i.up = shl i32 %i.uo, 2
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr [8 x i8], ptr %i.u, i64 %i.uq
  %i.us = getelementptr i8, ptr %i.ur, i64 -24    ; 2 uses
  %.not599.not715 = icmp slt i32 %i.uo, %i.un
  %i.ut = sext i32 %i.uo to i64                   ; 4 uses
  %wide.trip.count = sext i32 %i.un to i64        ; 3 uses
  %i.uu = sub nsw i64 %wide.trip.count, %i.ut
  %xtraiter987 = and i64 %i.uu, 1
  %lcmp.mod988.not = icmp eq i64 %xtraiter987, 0
  %indvars.iv.next779.prol = add nsw i64 %i.ut, 1 ; 2 uses
  %i.uv = trunc nsw i64 %indvars.iv.next779.prol to i32
  %i.uw = shl i32 %i.uv, 2
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr [8 x i8], ptr %i.u, i64 %i.ux ; 3 uses
  %i.uz = getelementptr i8, ptr %i.uy, i64 -40    ; 2 uses
  %i.va = getelementptr i8, ptr %i.uy, i64 -56
  %i.vb = getelementptr i8, ptr %i.uy, i64 -24    ; 2 uses
  %i.vc = add nsw i64 %wide.trip.count, -1
  %i.vd = icmp eq i64 %i.vc, %i.ut
  br label %bb.bu

bb.bu:                                            ; preds = %.critedge, %._crit_edge708
  %i.ve = phi double [ %.promoted722, %._crit_edge708 ], [ %i.xj, %.critedge ] ; 4 uses
  %.0540 = phi i32 [ %i.uo, %._crit_edge708 ], [ %.1541.lcssa, %.critedge ] ; 3 uses
  %i.vf = load double, ptr %i.us, align 8, !tbaa !35 ; 3 uses
  %i.vg = fadd double %i.vf, %i.ve
  store double %i.vg, ptr %i.us, align 8, !tbaa !35
  br i1 %.not599.not715, label %.lr.ph719.preheader, label %._crit_edge720

.lr.ph719.preheader:                              ; preds = %bb.bu
  br i1 %lcmp.mod988.not, label %.lr.ph719.prol.loopexit, label %.lr.ph719.prol

.lr.ph719.prol:                                   ; preds = %.lr.ph719.preheader
  %i.vh = load double, ptr %i.uz, align 8, !tbaa !35 ; 2 uses
  %i.vi = load double, ptr %i.va, align 8, !tbaa !35
  %i.vj = fdiv double %i.vf, %i.vi
  %i.vk = fmul double %i.vh, %i.vj                ; 2 uses
  store double %i.vk, ptr %i.uz, align 8, !tbaa !35
  %i.vl = load double, ptr %i.vb, align 8, !tbaa !35 ; 2 uses
  %i.vm = fadd double %i.ve, %i.vl
  %i.vn = fadd double %i.vh, %i.vm
  %i.vo = fsub double %i.vn, %i.vk
  store double %i.vo, ptr %i.vb, align 8, !tbaa !35
  br label %.lr.ph719.prol.loopexit

.lr.ph719.prol.loopexit:                          ; preds = %.lr.ph719.prol, %.lr.ph719.preheader
  %indvars.iv778.unr = phi i64 [ %i.ut, %.lr.ph719.preheader ], [ %indvars.iv.next779.prol, %.lr.ph719.prol ]
  %.0542717.unr = phi double [ %i.vf, %.lr.ph719.preheader ], [ %i.vl, %.lr.ph719.prol ]
  br i1 %i.vd, label %._crit_edge720, label %.lr.ph719

.lr.ph719:                                        ; preds = %.lr.ph719.prol.loopexit, %.lr.ph719
  %indvars.iv778 = phi i64 [ %indvars.iv.next779.1, %.lr.ph719 ], [ %indvars.iv778.unr, %.lr.ph719.prol.loopexit ] ; 2 uses
  %.0542717 = phi double [ %i.wq, %.lr.ph719 ], [ %.0542717.unr, %.lr.ph719.prol.loopexit ]
  %i.vp = trunc i64 %indvars.iv778 to i32
  %i.vq = shl i32 %i.vp, 2
  %i.vr = add i32 %i.vq, 4
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr [8 x i8], ptr %i.u, i64 %i.vs ; 3 uses
  %i.vu = getelementptr i8, ptr %i.vt, i64 -40    ; 2 uses
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !35 ; 2 uses
  %i.vw = getelementptr i8, ptr %i.vt, i64 -56
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !35
  %i.vy = fdiv double %.0542717, %i.vx
  %i.vz = fmul double %i.vv, %i.vy                ; 2 uses
  store double %i.vz, ptr %i.vu, align 8, !tbaa !35
  %i.wa = getelementptr i8, ptr %i.vt, i64 -24    ; 2 uses
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !35 ; 2 uses
  %i.wc = fadd double %i.ve, %i.wb
  %i.wd = fadd double %i.vv, %i.wc
  %i.we = fsub double %i.wd, %i.vz
  store double %i.we, ptr %i.wa, align 8, !tbaa !35
  %indvars.iv.next779.1 = add nsw i64 %indvars.iv778, 2 ; 3 uses
  %i.wf = trunc nsw i64 %indvars.iv.next779.1 to i32
  %i.wg = shl i32 %i.wf, 2
  %i.wh = sext i32 %i.wg to i64
  %i.wi = getelementptr [8 x i8], ptr %i.u, i64 %i.wh ; 3 uses
  %i.wj = getelementptr i8, ptr %i.wi, i64 -40    ; 2 uses
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !35 ; 2 uses
  %i.wl = getelementptr i8, ptr %i.wi, i64 -56
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !35
  %i.wn = fdiv double %i.wb, %i.wm
  %i.wo = fmul double %i.wk, %i.wn                ; 2 uses
  store double %i.wo, ptr %i.wj, align 8, !tbaa !35
  %i.wp = getelementptr i8, ptr %i.wi, i64 -24    ; 2 uses
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !35 ; 2 uses
  %i.wr = fadd double %i.ve, %i.wq
  %i.ws = fadd double %i.wk, %i.wr
  %i.wt = fsub double %i.ws, %i.wo
  store double %i.wt, ptr %i.wp, align 8, !tbaa !35
  %exitcond781.not.1 = icmp eq i64 %indvars.iv.next779.1, %wide.trip.count
  br i1 %exitcond781.not.1, label %._crit_edge720, label %.lr.ph719, !llvm.loop !23

._crit_edge720:                                   ; preds = %.lr.ph719.prol.loopexit, %.lr.ph719, %bb.bu
  %i.wu = icmp sgt i32 %.0540, 1
  br i1 %i.wu, label %.preheader612.preheader, label %bb.bw

.preheader612.preheader:                          ; preds = %._crit_edge720
  %i.wv = zext nneg i32 %.0540 to i64
  br label %.preheader612

.preheader612:                                    ; preds = %.preheader612.preheader, %bb.bv
  %indvars.iv782 = phi i64 [ %i.wv, %.preheader612.preheader ], [ %indvars.iv.next783, %bb.bv ] ; 3 uses
  %i.ww = trunc nuw nsw i64 %indvars.iv782 to i32 ; 2 uses
  %i.wx = shl i32 %i.ww, 2
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr [8 x i8], ptr %i.u, i64 %i.wy
  %i.xa = getelementptr i8, ptr %i.wz, i64 -40
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !35
  %i.xc = fcmp ult double %i.xb, 0.000000e+00
  br i1 %i.xc, label %.critedge, label %bb.bv

bb.bv:                                            ; preds = %.preheader612
  %indvars.iv.next783 = add nsw i64 %indvars.iv782, -1
  %i.xd = icmp sgt i64 %indvars.iv782, 2
  br i1 %i.xd, label %.preheader612, label %.critedge, !llvm.loop !24

.critedge:                                        ; preds = %bb.bv, %.preheader612
  %.1541.lcssa = phi i32 [ 1, %bb.bv ], [ %i.ww, %.preheader612 ]
  %i.xe = shl i32 %.0540, 2
  %i.xf = add i32 %i.xe, -5
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.xg
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !35
  %i.xj = fneg double %i.xi
  br label %bb.bu

bb.bw:                                            ; preds = %._crit_edge720
  %i.xk = load i32, ptr %0, align 4, !tbaa !33    ; 4 uses
  %.not600723 = icmp slt i32 %i.xk, 1
  br i1 %.not600723, label %.loopexit, label %.lr.ph726.preheader

.lr.ph726.preheader:                              ; preds = %bb.bw
  %i.xl = sext i32 %i.un to i64                   ; 3 uses
  %i.xm = zext nneg i32 %i.xk to i64              ; 2 uses
  %xtraiter989 = and i64 %i.xm, 1
  %i.xn = icmp eq i32 %i.xk, 1
  br i1 %i.xn, label %.lr.ph726.epil.preheader, label %.lr.ph726.preheader.new

.lr.ph726.preheader.new:                          ; preds = %.lr.ph726.preheader
  %unroll_iter = and i64 %i.xm, 2147483646
  br label %.lr.ph726

.lr.ph726:                                        ; preds = %bb.bz, %.lr.ph726.preheader.new
  %indvars.iv785 = phi i64 [ 1, %.lr.ph726.preheader.new ], [ %indvars.iv.next786.1, %bb.bz ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph726.preheader.new ], [ %niter.next.1, %bb.bz ]
  %i.xo = trunc nuw nsw i64 %indvars.iv785 to i32
  %i.xp = shl i32 %i.xo, 2
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr [8 x i8], ptr %i.u, i64 %i.xq ; 2 uses
  %i.xs = getelementptr i8, ptr %i.xr, i64 -24
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !35
  %i.xu = shl i64 %indvars.iv785, 33
  %i.xv = ashr exact i64 %i.xu, 29
  %i.xw = getelementptr i8, ptr %i.u, i64 %i.xv
  %i.xx = getelementptr i8, ptr %i.xw, i64 -8
  store double %i.xt, ptr %i.xx, align 8, !tbaa !35
  %i.xy = icmp slt i64 %indvars.iv785, %i.xl
  br i1 %i.xy, label %bb.bx, label %.lr.ph726.1

bb.bx:                                            ; preds = %.lr.ph726
  %i.xz = getelementptr i8, ptr %i.xr, i64 -8
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !35
  br label %.lr.ph726.1

.lr.ph726.1:                                      ; preds = %.lr.ph726, %bb.bx
  %.sink = phi double [ %i.ya, %bb.bx ], [ 0.000000e+00, %.lr.ph726 ]
  %.idx857 = shl nuw nsw i64 %indvars.iv785, 4
  %i.yb = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx857
  store double %.sink, ptr %i.yb, align 8, !tbaa !35
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 1 ; 4 uses
  %i.yc = trunc nuw nsw i64 %indvars.iv.next786 to i32
  %i.yd = shl nuw i32 %i.yc, 2
  %i.ye = sext i32 %i.yd to i64
  %i.yf = getelementptr [8 x i8], ptr %i.u, i64 %i.ye ; 2 uses
  %i.yg = getelementptr i8, ptr %i.yf, i64 -24
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !35
  %i.yi = shl i64 %indvars.iv.next786, 33
  %i.yj = ashr exact i64 %i.yi, 29
  %i.yk = getelementptr i8, ptr %i.u, i64 %i.yj
  %i.yl = getelementptr i8, ptr %i.yk, i64 -8
  store double %i.yh, ptr %i.yl, align 8, !tbaa !35
  %i.ym = icmp slt i64 %indvars.iv.next786, %i.xl
  br i1 %i.ym, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph726.1
  %i.yn = getelementptr i8, ptr %i.yf, i64 -8
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !35
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.lr.ph726.1
  %.sink.1 = phi double [ %i.yo, %bb.by ], [ 0.000000e+00, %.lr.ph726.1 ]
  %.idx857.1 = shl nuw nsw i64 %indvars.iv.next786, 4
  %i.yp = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx857.1
  store double %.sink.1, ptr %i.yp, align 8, !tbaa !35
  %indvars.iv.next786.1 = add nuw nsw i64 %indvars.iv785, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph726, !llvm.loop !25

bb.ca:                                            ; preds = %.lr.ph707
  %i.yq = add nuw i32 %.0535711, 1
  %exitcond777 = icmp eq i32 %.0535711, %i.ol
  br i1 %exitcond777, label %._crit_edge714, label %.lr.ph713, !llvm.loop !26

._crit_edge714:                                   ; preds = %bb.ca, %._crit_edge655.1
  store i32 3, ptr %2, align 4, !tbaa !33
  br label %.loopexit

bb.cb:                                            ; preds = %.lr.ph713
  %i.yr = load i32, ptr %0, align 4, !tbaa !33    ; 3 uses
  %.not602727 = icmp slt i32 %i.yr, 2
  br i1 %.not602727, label %._crit_edge731, label %iter.check

iter.check:                                       ; preds = %bb.cb
  %i.ys = add nuw i32 %i.yr, 1
  %wide.trip.count793 = zext i32 %i.ys to i64     ; 4 uses
  %i.yt = add nsw i64 %wide.trip.count793, -2     ; 6 uses
  %min.iters.check = icmp ult i64 %i.yt, 5
  br i1 %min.iters.check, label %.lr.ph730.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.yu = add nsw i64 %wide.trip.count793, -3     ; 2 uses
  %i.yv = trunc i64 %i.yu to i32
  %mul.result = shl i32 %i.yv, 2
  %i.yw = icmp ugt i32 %mul.result, 2147483639
  %i.yx = icmp ugt i64 %i.yu, 1073741823
  %i.yy = or i1 %i.yw, %i.yx
  br i1 %i.yy, label %.lr.ph730.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check905 = icmp ult i64 %i.yt, 17
  br i1 %min.iters.check905, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.yz = and i64 %i.yt, 15                       ; 2 uses
  %i.za = icmp eq i64 %i.yz, 0
  %i.zb = select i1 %i.za, i64 16, i64 %i.yz      ; 2 uses
  %n.vec = sub nsw i64 %i.yt, %i.zb               ; 3 uses
  %i.zc = add nsw i64 %n.vec, 2                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.zd = shl <4 x i32> %vec.ind, splat (i32 2)
  %step.add = shl <4 x i32> %vec.ind, splat (i32 2)
  %i.ze = add <4 x i32> %step.add, splat (i32 16)
  %step.add.2 = shl <4 x i32> %vec.ind, splat (i32 2)
  %i.zf = add <4 x i32> %step.add.2, splat (i32 32)
  %step.add.3 = shl <4 x i32> %vec.ind, splat (i32 2)
  %i.zg = add <4 x i32> %step.add.3, splat (i32 48)
  %i.zh = sext <4 x i32> %i.zd to <4 x i64>
  %i.zi = sext <4 x i32> %i.ze to <4 x i64>
  %i.zj = sext <4 x i32> %i.zf to <4 x i64>
  %i.zk = sext <4 x i32> %i.zg to <4 x i64>
  %wide.gep = getelementptr [8 x i8], ptr %i.u, <4 x i64> %i.zh
  %wide.gep906 = getelementptr [8 x i8], ptr %i.u, <4 x i64> %i.zi
  %wide.gep907 = getelementptr [8 x i8], ptr %i.u, <4 x i64> %i.zj
  %wide.gep908 = getelementptr [8 x i8], ptr %i.u, <4 x i64> %i.zk
  %wide.gep909 = getelementptr i8, <4 x ptr> %wide.gep, i64 -24
  %wide.gep910 = getelementptr i8, <4 x ptr> %wide.gep906, i64 -24
  %wide.gep911 = getelementptr i8, <4 x ptr> %wide.gep907, i64 -24
  %wide.gep912 = getelementptr i8, <4 x ptr> %wide.gep908, i64 -24
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep909, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !35
  %wide.masked.gather913 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep910, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !35
  %wide.masked.gather914 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep911, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !35
  %wide.masked.gather915 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep912, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !35
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 4 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 48
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zl, i64 80
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zl, i64 112
  store <4 x double> %wide.masked.gather, ptr %i.zm, align 8, !tbaa !35
  store <4 x double> %wide.masked.gather913, ptr %i.zn, align 8, !tbaa !35
  store <4 x double> %wide.masked.gather914, ptr %i.zo, align 8, !tbaa !35
  store <4 x double> %wide.masked.gather915, ptr %i.zp, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.zq = icmp eq i64 %index.next, %n.vec
  br i1 %i.zq, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !27

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.zb, 5
  br i1 %min.epilog.iters.check, label %.lr.ph730.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.zc, %vec.epilog.iter.check ], [ 2, %vector.main.loop.iter.check ]
  %i.zr = and i64 %i.yt, 3                        ; 2 uses
  %i.zs = icmp eq i64 %i.zr, 0
  %i.zt = select i1 %i.zs, i64 4, i64 %i.zr
  %n.vec916 = sub nsw i64 %i.yt, %i.zt            ; 2 uses
  %i.zu = add nsw i64 %n.vec916, 2
  %i.zv = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.zv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index917 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next922, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind918 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next923, %vec.epilog.vector.body ] ; 2 uses
  %i.zw = shl <4 x i32> %vec.ind918, splat (i32 2)
  %i.zx = sext <4 x i32> %i.zw to <4 x i64>
  %wide.gep919 = getelementptr [8 x i8], ptr %i.u, <4 x i64> %i.zx
  %wide.gep920 = getelementptr i8, <4 x ptr> %wide.gep919, i64 -24
  %wide.masked.gather921 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep920, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !35
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index917
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  store <4 x double> %wide.masked.gather921, ptr %i.zz, align 8, !tbaa !35
  %index.next922 = add nuw i64 %index917, 4       ; 2 uses
  %vec.ind.next923 = add <4 x i32> %vec.ind918, splat (i32 4)
  %i.aaa = icmp eq i64 %index.next922, %n.vec916
  br i1 %i.aaa, label %.lr.ph730.preheader, label %vec.epilog.vector.body, !llvm.loop !28

.lr.ph730.preheader:                              ; preds = %vec.epilog.vector.body, %iter.check, %vector.scevcheck, %vec.epilog.iter.check
  %indvars.iv790.ph = phi i64 [ 2, %iter.check ], [ 2, %vector.scevcheck ], [ %i.zc, %vec.epilog.iter.check ], [ %i.zu, %vec.epilog.vector.body ] ; 4 uses
  %i.aab = sub nsw i64 %wide.trip.count793, %indvars.iv790.ph
  %i.aac = zext nneg i32 %i.yr to i64
  %i.aad = sub nsw i64 %i.aac, %indvars.iv790.ph
  %xtraiter992 = and i64 %i.aab, 7                ; 2 uses
  %lcmp.mod993.not = icmp eq i64 %xtraiter992, 0
  br i1 %lcmp.mod993.not, label %.lr.ph730.prol.loopexit, label %.lr.ph730.prol

.lr.ph730.prol:                                   ; preds = %.lr.ph730.preheader, %.lr.ph730.prol
  %indvars.iv790.prol = phi i64 [ %indvars.iv.next791.prol, %.lr.ph730.prol ], [ %indvars.iv790.ph, %.lr.ph730.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph730.prol ], [ 0, %.lr.ph730.preheader ]
  %i.aae = trunc nuw nsw i64 %indvars.iv790.prol to i32
  %i.aaf = shl i32 %i.aae, 2
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = getelementptr [8 x i8], ptr %i.u, i64 %i.aag
  %i.aai = getelementptr i8, ptr %i.aah, i64 -24
  %i.aaj = load double, ptr %i.aai, align 8, !tbaa !35
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv790.prol
  store double %i.aaj, ptr %i.aak, align 8, !tbaa !35
  %indvars.iv.next791.prol = add nuw nsw i64 %indvars.iv790.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter992
  br i1 %prol.iter.cmp.not, label %.lr.ph730.prol.loopexit, label %.lr.ph730.prol, !llvm.loop !29

.lr.ph730.prol.loopexit:                          ; preds = %.lr.ph730.prol, %.lr.ph730.preheader
  %indvars.iv790.unr = phi i64 [ %indvars.iv790.ph, %.lr.ph730.preheader ], [ %indvars.iv.next791.prol, %.lr.ph730.prol ]
  %i.aal = icmp ult i64 %i.aad, 7
  br i1 %i.aal, label %._crit_edge731, label %.lr.ph730

.lr.ph730:                                        ; preds = %.lr.ph730.prol.loopexit, %.lr.ph730
  %indvars.iv790 = phi i64 [ %indvars.iv.next791.7, %.lr.ph730 ], [ %indvars.iv790.unr, %.lr.ph730.prol.loopexit ] ; 11 uses
  %i.aam = trunc nuw nsw i64 %indvars.iv790 to i32
  %i.aan = shl i32 %i.aam, 2
  %i.aao = sext i32 %i.aan to i64
  %i.aap = getelementptr [8 x i8], ptr %i.u, i64 %i.aao
  %i.aaq = getelementptr i8, ptr %i.aap, i64 -24
  %i.aar = load double, ptr %i.aaq, align 8, !tbaa !35
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv790
  store double %i.aar, ptr %i.aas, align 8, !tbaa !35
  %i.aat = trunc i64 %indvars.iv790 to i32
  %i.aau = shl i32 %i.aat, 2
  %i.aav = add i32 %i.aau, 4
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr [8 x i8], ptr %i.u, i64 %i.aaw
  %i.aay = getelementptr i8, ptr %i.aax, i64 -24
  %i.aaz = load double, ptr %i.aay, align 8, !tbaa !35
  %i.aba = getelementptr [8 x i8], ptr %1, i64 %indvars.iv790
  store double %i.aaz, ptr %i.aba, align 8, !tbaa !35
  %indvars.iv.next791.1 = add nuw nsw i64 %indvars.iv790, 2 ; 2 uses
  %i.abb = trunc nuw nsw i64 %indvars.iv.next791.1 to i32
  %i.abc = shl i32 %i.abb, 2
  %i.abd = sext i32 %i.abc to i64
  %i.abe = getelementptr [8 x i8], ptr %i.u, i64 %i.abd
  %i.abf = getelementptr i8, ptr %i.abe, i64 -24
  %i.abg = load double, ptr %i.abf, align 8, !tbaa !35
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next791.1
end_hunk_0
