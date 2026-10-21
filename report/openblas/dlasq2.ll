Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasq2?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dlasq2_:bb.a
  %i.qx = fmul double %i.oz, 5.000000e-01
  %i.qy = fcmp ugt double %.0536.lcssa, %i.qx
  %or.cond611 = select i1 %i.qw, i1 true, i1 %i.qy
  br i1 %or.cond611, label %.loopexit613, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge685
  %i.qz = add nuw nsw i32 %i.pw, %i.om            ; 2 uses
  store i32 2, ptr %i.q, align 4, !tbaa !33
  %i.ra = shl nuw i32 %i.qz, 1
  %i.rb = add i32 %i.ra, -2                       ; 2 uses
  %.not597688 = icmp sgt i32 %i.pz, %i.rb
  br i1 %.not597688, label %.loopexit613, label %.lr.ph691.preheader

.lr.ph691.preheader:                              ; preds = %bb.bi
  %i.rc = shl i32 %i.qz, 2
  %i.rd = and i32 %.5, 2147483644
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = sext i32 %i.rc to i64
  %i.rg = zext nneg i32 %i.rb to i64
  br label %.lr.ph691

.lr.ph691:                                        ; preds = %.lr.ph691.preheader, %.lr.ph691
  %indvars.iv771 = phi i64 [ %i.re, %.lr.ph691.preheader ], [ %indvars.iv.next772, %.lr.ph691 ] ; 3 uses
  %i.rh = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv771
  %i.ri = getelementptr i8, ptr %i.rh, i64 -24    ; 2 uses
  %i.rj = sub nsw i64 %i.rf, %indvars.iv771
  %i.rk = getelementptr [8 x i8], ptr %i.u, i64 %i.rj
  %i.rl = getelementptr i8, ptr %i.rk, i64 -40    ; 2 uses
  %i.rm = load <4 x double>, ptr %i.ri, align 8, !tbaa !35
  %i.rn = load <4 x double>, ptr %i.rl, align 8, !tbaa !35
  %i.ro = shufflevector <4 x double> %i.rn, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x double> %i.ro, ptr %i.ri, align 8, !tbaa !35
  %i.rp = shufflevector <4 x double> %i.rm, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x double> %i.rp, ptr %i.rl, align 8, !tbaa !35
  %indvars.iv.next772 = add nuw nsw i64 %indvars.iv771, 4 ; 2 uses
  %.not597 = icmp samesign ugt i64 %indvars.iv.next772, %i.rg
  br i1 %.not597, label %.loopexit613, label %.lr.ph691, !llvm.loop !20

.loopexit613:                                     ; preds = %.lr.ph691, %bb.bi, %._crit_edge685, %._crit_edge670
  %i.rq = call double @sqrt(double noundef %.0562.lcssa) #7
  %i.rr = call double @sqrt(double noundef %.0566.lcssa) #7
  %i.rs = fmul double %i.rq, -2.000000e+00
  %i.rt = call double @llvm.fmuladd.f64(double %i.rs, double %i.rr, double %.0562.lcssa) ; 2 uses
  %i.ru = fcmp ole double %i.rt, 0.000000e+00
  %.neg = fneg double %i.rt
  %i.rv = select i1 %i.ru, double -0.000000e+00, double %.neg
  store double %i.rv, ptr %i.b, align 8, !tbaa !35
  %i.rw = mul i32 %i.px, 100
  %i.rx = add i32 %i.rw, 100
  %.not598704 = icmp slt i32 %i.rx, 1
  br i1 %.not598704, label %._crit_edge708, label %.lr.ph707.preheader

.lr.ph707.preheader:                              ; preds = %.loopexit613
  %i.ry = mul i32 %i.om, 100
  %i.rz = add i32 %i.ry, 101
  %.neg856 = mul i32 %i.pw, -100
  %i.sa = add i32 %.neg856, %i.rz
  br label %.lr.ph707

.lr.ph707:                                        ; preds = %.lr.ph707.preheader, %bb.bt
  %.0534705 = phi i32 [ %i.un, %bb.bt ], [ 1, %.lr.ph707.preheader ]
  %i.sb = load i32, ptr %i.m, align 4, !tbaa !33
  %i.sc = load i32, ptr %i.n, align 4, !tbaa !33  ; 2 uses
  %i.sd = icmp sgt i32 %i.sb, %i.sc
  br i1 %i.sd, label %bb.ca, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph707
  call void @dlasq3_(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %1, ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.o, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t) #7
  %i.se = load i32, ptr %i.q, align 4, !tbaa !33  ; 2 uses
  %i.sf = sub nsw i32 1, %i.se
  store i32 %i.sf, ptr %i.q, align 4, !tbaa !33
  %i.sg = icmp eq i32 %i.se, 1
  br i1 %i.sg, label %bb.bk, label %bb.bt

bb.bk:                                            ; preds = %bb.bj
  %i.sh = load i32, ptr %i.n, align 4, !tbaa !33  ; 2 uses
  %i.si = load i32, ptr %i.m, align 4, !tbaa !33  ; 4 uses
  %i.sj = sub nsw i32 %i.sh, %i.si
  %i.sk = icmp sgt i32 %i.sj, 2
  br i1 %i.sk, label %bb.bl, label %bb.bt

bb.bl:                                            ; preds = %bb.bk
  %i.sl = shl nsw i32 %i.sh, 2                    ; 2 uses
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.sm ; 3 uses
  %i.so = load double, ptr %i.sn, align 8, !tbaa !35
  %i.sp = load double, ptr %i.e, align 8, !tbaa !35
  %i.sq = fmul double %i.y, %i.sp
  %i.sr = fcmp ugt double %i.so, %i.sq
  br i1 %i.sr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ss = getelementptr i8, ptr %i.sn, i64 -8
  %i.st = load double, ptr %i.ss, align 8, !tbaa !35
  %i.su = load double, ptr %i.k, align 8, !tbaa !35
  %i.sv = fmul double %i.y, %i.su
  %i.sw = fcmp ugt double %i.st, %i.sv
  br i1 %i.sw, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.sx = shl i32 %i.si, 2                        ; 2 uses
  %i.sy = sext i32 %i.sx to i64                   ; 2 uses
  %i.sz = getelementptr [8 x i8], ptr %i.u, i64 %i.sy ; 2 uses
  %i.ta = getelementptr i8, ptr %i.sz, i64 -24
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !35 ; 2 uses
  store double %i.tb, ptr %i.e, align 8, !tbaa !35
  %i.tc = getelementptr i8, ptr %i.sz, i64 -8
  %i.td = load <2 x double>, ptr %i.tc, align 8, !tbaa !35 ; 2 uses
  %i.te = add i32 %i.sl, -12                      ; 2 uses
  %.not601693 = icmp sgt i32 %i.sx, %i.te
  br i1 %.not601693, label %._crit_edge700, label %.lr.ph699

.lr.ph699:                                        ; preds = %bb.bn
  %i.tf = add nsw i32 %i.si, -1
  %i.tg = load double, ptr %i.k, align 8          ; 2 uses
  %i.th = fmul double %i.y, %i.tg
  %i.ti = fneg double %i.tg
  %i.tj = sext i32 %i.te to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph699, %bb.bs
  %indvars.iv774 = phi i64 [ %i.sy, %.lr.ph699 ], [ %indvars.iv.next775, %bb.bs ] ; 4 uses
  %.0559695 = phi i32 [ %i.tf, %.lr.ph699 ], [ %.1560, %bb.bs ]
  %i.tk = phi double [ %i.tb, %.lr.ph699 ], [ %i.ui, %bb.bs ] ; 2 uses
  %i.tl = phi <2 x double> [ %i.td, %.lr.ph699 ], [ %i.uj, %bb.bs ] ; 2 uses
  %i.tm = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv774 ; 6 uses
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !35 ; 2 uses
  %i.to = getelementptr i8, ptr %i.tm, i64 -24
  %i.tp = load double, ptr %i.to, align 8, !tbaa !35
  %i.tq = fmul double %i.y, %i.tp
  %i.tr = fcmp ugt double %i.tn, %i.tq
  br i1 %i.tr, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ts = getelementptr i8, ptr %i.tm, i64 -8
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !35 ; 2 uses
  %i.tu = fcmp ugt double %i.tt, %i.th
  br i1 %i.tu, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.tv = getelementptr i8, ptr %i.tm, i64 -8
  store double %i.ti, ptr %i.tv, align 8, !tbaa !35
  %i.tw = trunc nsw i64 %indvars.iv774 to i32
  %i.tx = ashr exact i32 %i.tw, 2
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !35
  %i.ty = getelementptr i8, ptr %i.tm, i64 24
  %i.tz = load <2 x double>, ptr %i.ty, align 8, !tbaa !35
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.ua = getelementptr i8, ptr %i.tm, i64 8
  %i.ub = load double, ptr %i.ua, align 8, !tbaa !35 ; 2 uses
  %i.uc = fcmp oge double %i.tk, %i.ub
  %i.ud = select i1 %i.uc, double %i.tk, double %i.ub ; 2 uses
  store double %i.ud, ptr %i.e, align 8, !tbaa !35
  %i.ue = insertelement <2 x double> poison, double %i.tt, i64 0
  %i.uf = insertelement <2 x double> %i.ue, double %i.tn, i64 1 ; 2 uses
  %i.ug = fcmp ole <2 x double> %i.tl, %i.uf
  %i.uh = select <2 x i1> %i.ug, <2 x double> %i.tl, <2 x double> %i.uf
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.ui = phi double [ 0.000000e+00, %bb.bq ], [ %i.ud, %bb.br ]
  %.1560 = phi i32 [ %i.tx, %bb.bq ], [ %.0559695, %bb.br ] ; 2 uses
  %i.uj = phi <2 x double> [ %i.tz, %bb.bq ], [ %i.uh, %bb.br ] ; 2 uses
  %indvars.iv.next775 = add nsw i64 %indvars.iv774, 4
  %.not601.not = icmp slt i64 %indvars.iv774, %i.tj
  br i1 %.not601.not, label %bb.bo, label %._crit_edge700.loopexit, !llvm.loop !21

._crit_edge700.loopexit:                          ; preds = %bb.bs
  %i.uk = add nsw i32 %.1560, 1
  br label %._crit_edge700

._crit_edge700:                                   ; preds = %._crit_edge700.loopexit, %bb.bn
  %.0559.lcssa = phi i32 [ %i.si, %bb.bn ], [ %i.uk, %._crit_edge700.loopexit ]
  %i.ul = phi <2 x double> [ %i.td, %bb.bn ], [ %i.uj, %._crit_edge700.loopexit ]
  %i.um = getelementptr i8, ptr %i.sn, i64 -8
  store <2 x double> %i.ul, ptr %i.um, align 8, !tbaa !35
  store i32 %.0559.lcssa, ptr %i.m, align 4, !tbaa !33
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bj, %bb.bk, %._crit_edge700, %bb.bm
  %i.un = add nuw nsw i32 %.0534705, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.un, %i.sa
  br i1 %exitcond.not, label %._crit_edge708.loopexit, label %.lr.ph707, !llvm.loop !22

._crit_edge708.loopexit:                          ; preds = %bb.bt
  %.pre803 = load i32, ptr %i.m, align 4, !tbaa !33
  %.pre804 = load i32, ptr %i.n, align 4, !tbaa !33
  %.promoted722.pre = load double, ptr %i.k, align 8, !tbaa !35
  br label %._crit_edge708

._crit_edge708:                                   ; preds = %.loopexit613, %._crit_edge708.loopexit
  %.promoted722 = phi double [ %.promoted722.pre, %._crit_edge708.loopexit ], [ %.promoted722806, %.loopexit613 ]
  %i.uo = phi i32 [ %.pre804, %._crit_edge708.loopexit ], [ %i.om, %.loopexit613 ] ; 3 uses
  %i.up = phi i32 [ %.pre803, %._crit_edge708.loopexit ], [ %i.pw, %.loopexit613 ] ; 4 uses
  store i32 2, ptr %2, align 4, !tbaa !33
  %i.uq = shl i32 %i.up, 2
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr [8 x i8], ptr %i.u, i64 %i.ur
  %i.ut = getelementptr i8, ptr %i.us, i64 -24    ; 2 uses
  %.not599.not715 = icmp slt i32 %i.up, %i.uo
  %i.uu = sext i32 %i.up to i64                   ; 4 uses
  %wide.trip.count = sext i32 %i.uo to i64        ; 3 uses
  %i.uv = sub nsw i64 %wide.trip.count, %i.uu
  %xtraiter988 = and i64 %i.uv, 1
  %lcmp.mod989.not = icmp eq i64 %xtraiter988, 0
  %indvars.iv.next779.prol = add nsw i64 %i.uu, 1 ; 2 uses
  %i.uw = trunc nsw i64 %indvars.iv.next779.prol to i32
  %i.ux = shl i32 %i.uw, 2
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr [8 x i8], ptr %i.u, i64 %i.uy ; 3 uses
  %i.va = getelementptr i8, ptr %i.uz, i64 -40    ; 2 uses
  %i.vb = getelementptr i8, ptr %i.uz, i64 -56
  %i.vc = getelementptr i8, ptr %i.uz, i64 -24    ; 2 uses
  %i.vd = add nsw i64 %wide.trip.count, -1
  %i.ve = icmp eq i64 %i.vd, %i.uu
  br label %bb.bu

bb.bu:                                            ; preds = %.critedge, %._crit_edge708
  %i.vf = phi double [ %.promoted722, %._crit_edge708 ], [ %i.xj, %.critedge ] ; 4 uses
  %.0540 = phi i32 [ %i.up, %._crit_edge708 ], [ %.1541.lcssa, %.critedge ] ; 3 uses
  %3 = load double, ptr %i.ut, align 8, !tbaa !35 ; 3 uses
  %i.vg = fadd double %3, %i.vf
  store double %i.vg, ptr %i.ut, align 8, !tbaa !35
  br i1 %.not599.not715, label %.lr.ph719.preheader, label %._crit_edge720

.lr.ph719.preheader:                              ; preds = %bb.bu
  br i1 %lcmp.mod989.not, label %.lr.ph719.prol.loopexit, label %.lr.ph719.prol

.lr.ph719.prol:                                   ; preds = %.lr.ph719.preheader
  %i.vh = load double, ptr %i.va, align 8, !tbaa !35 ; 2 uses
  %i.vi = load double, ptr %i.vb, align 8, !tbaa !35
  %i.vj = fdiv double %3, %i.vi
  %i.vk = fmul double %i.vh, %i.vj                ; 2 uses
  store double %i.vk, ptr %i.va, align 8, !tbaa !35
  %i.vl = load double, ptr %i.vc, align 8, !tbaa !35 ; 2 uses
  %i.vm = fadd double %i.vf, %i.vl
  %i.vn = fadd double %i.vh, %i.vm
  %i.vo = fsub double %i.vn, %i.vk
  store double %i.vo, ptr %i.vc, align 8, !tbaa !35
  br label %.lr.ph719.prol.loopexit

.lr.ph719.prol.loopexit:                          ; preds = %.lr.ph719.prol, %.lr.ph719.preheader
  %indvars.iv778.unr = phi i64 [ %i.uu, %.lr.ph719.preheader ], [ %indvars.iv.next779.prol, %.lr.ph719.prol ]
  %.0542717.unr = phi double [ %3, %.lr.ph719.preheader ], [ %i.vl, %.lr.ph719.prol ]
  br i1 %i.ve, label %._crit_edge720, label %.lr.ph719

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
  %i.wc = fadd double %i.vf, %i.wb
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
  %i.wr = fadd double %i.vf, %i.wq
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
  %i.xl = sext i32 %i.uo to i64                   ; 3 uses
  %i.xm = zext nneg i32 %i.xk to i64              ; 2 uses
  %xtraiter990 = and i64 %i.xm, 1
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
  %i.yd = shl i32 %i.yc, 2
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
end_hunk_0
