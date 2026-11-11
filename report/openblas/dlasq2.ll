Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasq2?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dlasq2_:bb.a
  %i.qw = icmp sge i32 %i.qv, %.pre-phi
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
  %.0534705 = phi i32 [ %i.um, %bb.bt ], [ 1, %.lr.ph707.preheader ]
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
  %i.tk = phi double [ %i.tb, %.lr.ph699 ], [ %i.uh, %bb.bs ] ; 2 uses
  %i.tl = phi <2 x double> [ %i.td, %.lr.ph699 ], [ %i.ui, %bb.bs ] ; 2 uses
  %i.tm = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv774 ; 6 uses
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !35
  %i.to = getelementptr i8, ptr %i.tm, i64 -24
  %i.tp = load double, ptr %i.to, align 8, !tbaa !35
  %i.tq = fmul double %i.y, %i.tp
  %i.tr = fcmp ugt double %i.tn, %i.tq
  br i1 %i.tr, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ts = getelementptr i8, ptr %i.tm, i64 -8
  %i.tt = load <2 x double>, ptr %i.ts, align 8, !tbaa !35 ; 3 uses
  %i.tu = extractelement <2 x double> %i.tt, i64 0
  %i.tv = fcmp ugt double %i.tu, %i.th
  br i1 %i.tv, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.tw = getelementptr i8, ptr %i.tm, i64 -8
  store double %i.ti, ptr %i.tw, align 8, !tbaa !35
  %i.tx = trunc nsw i64 %indvars.iv774 to i32
  %i.ty = ashr exact i32 %i.tx, 2
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !35
  %i.tz = getelementptr i8, ptr %i.tm, i64 24
  %i.ua = load <2 x double>, ptr %i.tz, align 8, !tbaa !35
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.ub = getelementptr i8, ptr %i.tm, i64 8
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !35 ; 2 uses
  %i.ud = fcmp oge double %i.tk, %i.uc
  %i.ue = select i1 %i.ud, double %i.tk, double %i.uc ; 2 uses
  store double %i.ue, ptr %i.e, align 8, !tbaa !35
  %i.uf = fcmp ole <2 x double> %i.tl, %i.tt
  %i.ug = select <2 x i1> %i.uf, <2 x double> %i.tl, <2 x double> %i.tt
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.uh = phi double [ 0.000000e+00, %bb.bq ], [ %i.ue, %bb.br ]
  %.1560 = phi i32 [ %i.ty, %bb.bq ], [ %.0559695, %bb.br ] ; 2 uses
  %i.ui = phi <2 x double> [ %i.ua, %bb.bq ], [ %i.ug, %bb.br ] ; 2 uses
  %indvars.iv.next775 = add nsw i64 %indvars.iv774, 4
  %.not601.not = icmp slt i64 %indvars.iv774, %i.tj
  br i1 %.not601.not, label %bb.bo, label %._crit_edge700.loopexit, !llvm.loop !21

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
  %i.us = getelementptr i8, ptr %i.ur, i64 -24    ; 3 uses
  %.not599.not715 = icmp slt i32 %i.uo, %i.un
  %i.ut = sext i32 %i.uo to i64                   ; 4 uses
  %.pre808 = load double, ptr %i.us, align 8, !tbaa !35
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
  %i.ve = phi double [ %.pre808, %._crit_edge708 ], [ %4, %.critedge ] ; 3 uses
  %3 = phi double [ %.promoted722, %._crit_edge708 ], [ %i.xi, %.critedge ] ; 4 uses
  %.0540 = phi i32 [ %i.uo, %._crit_edge708 ], [ %.1541.lcssa, %.critedge ] ; 3 uses
  %i.vf = fadd double %i.ve, %3                   ; 2 uses
  store double %i.vf, ptr %i.us, align 8, !tbaa !35
  br i1 %.not599.not715, label %.lr.ph719.preheader, label %._crit_edge720

.lr.ph719.preheader:                              ; preds = %bb.bu
  br i1 %lcmp.mod988.not, label %.lr.ph719.prol.loopexit, label %.lr.ph719.prol

.lr.ph719.prol:                                   ; preds = %.lr.ph719.preheader
  %i.vg = load double, ptr %i.uz, align 8, !tbaa !35 ; 2 uses
  %i.vh = load double, ptr %i.va, align 8, !tbaa !35
  %i.vi = fdiv double %i.ve, %i.vh
  %i.vj = fmul double %i.vg, %i.vi                ; 2 uses
  store double %i.vj, ptr %i.uz, align 8, !tbaa !35
  %i.vk = load double, ptr %i.vb, align 8, !tbaa !35 ; 2 uses
  %i.vl = fadd double %3, %i.vk
  %i.vm = fadd double %i.vg, %i.vl
  %i.vn = fsub double %i.vm, %i.vj
  store double %i.vn, ptr %i.vb, align 8, !tbaa !35
  br label %.lr.ph719.prol.loopexit

.lr.ph719.prol.loopexit:                          ; preds = %.lr.ph719.prol, %.lr.ph719.preheader
  %indvars.iv778.unr = phi i64 [ %i.ut, %.lr.ph719.preheader ], [ %indvars.iv.next779.prol, %.lr.ph719.prol ]
  %.0542717.unr = phi double [ %i.ve, %.lr.ph719.preheader ], [ %i.vk, %.lr.ph719.prol ]
  br i1 %i.vd, label %._crit_edge720.loopexit, label %.lr.ph719

.lr.ph719:                                        ; preds = %.lr.ph719.prol.loopexit, %.lr.ph719
  %indvars.iv778 = phi i64 [ %indvars.iv.next779.1, %.lr.ph719 ], [ %indvars.iv778.unr, %.lr.ph719.prol.loopexit ] ; 2 uses
  %.0542717 = phi double [ %i.wp, %.lr.ph719 ], [ %.0542717.unr, %.lr.ph719.prol.loopexit ]
  %i.vo = trunc i64 %indvars.iv778 to i32
  %i.vp = shl i32 %i.vo, 2
  %i.vq = add i32 %i.vp, 4
  %i.vr = sext i32 %i.vq to i64
  %i.vs = getelementptr [8 x i8], ptr %i.u, i64 %i.vr ; 3 uses
  %i.vt = getelementptr i8, ptr %i.vs, i64 -40    ; 2 uses
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !35 ; 2 uses
  %i.vv = getelementptr i8, ptr %i.vs, i64 -56
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !35
  %i.vx = fdiv double %.0542717, %i.vw
  %i.vy = fmul double %i.vu, %i.vx                ; 2 uses
  store double %i.vy, ptr %i.vt, align 8, !tbaa !35
  %i.vz = getelementptr i8, ptr %i.vs, i64 -24    ; 2 uses
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !35 ; 2 uses
  %i.wb = fadd double %3, %i.wa
  %i.wc = fadd double %i.vu, %i.wb
  %i.wd = fsub double %i.wc, %i.vy
  store double %i.wd, ptr %i.vz, align 8, !tbaa !35
  %indvars.iv.next779.1 = add nsw i64 %indvars.iv778, 2 ; 3 uses
  %i.we = trunc nsw i64 %indvars.iv.next779.1 to i32
  %i.wf = shl i32 %i.we, 2
  %i.wg = sext i32 %i.wf to i64
  %i.wh = getelementptr [8 x i8], ptr %i.u, i64 %i.wg ; 3 uses
  %i.wi = getelementptr i8, ptr %i.wh, i64 -40    ; 2 uses
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !35 ; 2 uses
  %i.wk = getelementptr i8, ptr %i.wh, i64 -56
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !35
  %i.wm = fdiv double %i.wa, %i.wl
  %i.wn = fmul double %i.wj, %i.wm                ; 2 uses
  store double %i.wn, ptr %i.wi, align 8, !tbaa !35
  %i.wo = getelementptr i8, ptr %i.wh, i64 -24    ; 2 uses
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !35 ; 2 uses
  %i.wq = fadd double %3, %i.wp
  %i.wr = fadd double %i.wj, %i.wq
  %i.ws = fsub double %i.wr, %i.wn
  store double %i.ws, ptr %i.wo, align 8, !tbaa !35
  %exitcond781.not.1 = icmp eq i64 %indvars.iv.next779.1, %wide.trip.count
  br i1 %exitcond781.not.1, label %._crit_edge720.loopexit, label %.lr.ph719, !llvm.loop !23

._crit_edge720.loopexit:                          ; preds = %.lr.ph719, %.lr.ph719.prol.loopexit
  %.pre807 = load double, ptr %i.us, align 8, !tbaa !35
  br label %._crit_edge720

._crit_edge720:                                   ; preds = %._crit_edge720.loopexit, %bb.bu
  %4 = phi double [ %.pre807, %._crit_edge720.loopexit ], [ %i.vf, %bb.bu ]
  %i.wt = icmp sgt i32 %.0540, 1
  br i1 %i.wt, label %.preheader612.preheader, label %bb.bw

.preheader612.preheader:                          ; preds = %._crit_edge720
  %i.wu = zext nneg i32 %.0540 to i64
  br label %.preheader612

.preheader612:                                    ; preds = %.preheader612.preheader, %bb.bv
  %indvars.iv782 = phi i64 [ %i.wu, %.preheader612.preheader ], [ %indvars.iv.next783, %bb.bv ] ; 3 uses
  %i.wv = trunc nuw nsw i64 %indvars.iv782 to i32 ; 2 uses
  %i.ww = shl i32 %i.wv, 2
  %i.wx = sext i32 %i.ww to i64
  %i.wy = getelementptr [8 x i8], ptr %i.u, i64 %i.wx
  %i.wz = getelementptr i8, ptr %i.wy, i64 -40
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !35
  %i.xb = fcmp ult double %i.xa, 0.000000e+00
  br i1 %i.xb, label %.critedge, label %bb.bv

bb.bv:                                            ; preds = %.preheader612
  %indvars.iv.next783 = add nsw i64 %indvars.iv782, -1
  %i.xc = icmp sgt i64 %indvars.iv782, 2
  br i1 %i.xc, label %.preheader612, label %.critedge, !llvm.loop !24

.critedge:                                        ; preds = %bb.bv, %.preheader612
  %.1541.lcssa = phi i32 [ 1, %bb.bv ], [ %i.wv, %.preheader612 ]
  %i.xd = shl i32 %.0540, 2
  %i.xe = add i32 %i.xd, -5
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.xf
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !35
  %i.xi = fneg double %i.xh
  br label %bb.bu

bb.bw:                                            ; preds = %._crit_edge720
  %i.xj = load i32, ptr %0, align 4, !tbaa !33    ; 4 uses
  %.not600723 = icmp slt i32 %i.xj, 1
  br i1 %.not600723, label %.loopexit, label %.lr.ph726.preheader

.lr.ph726.preheader:                              ; preds = %bb.bw
  %i.xk = sext i32 %i.un to i64                   ; 3 uses
  %i.xl = zext nneg i32 %i.xj to i64              ; 2 uses
  %xtraiter989 = and i64 %i.xl, 1
  %i.xm = icmp eq i32 %i.xj, 1
  br i1 %i.xm, label %.lr.ph726.epil.preheader, label %.lr.ph726.preheader.new

.lr.ph726.preheader.new:                          ; preds = %.lr.ph726.preheader
  %unroll_iter = and i64 %i.xl, 2147483646
  br label %.lr.ph726

.lr.ph726:                                        ; preds = %bb.bz, %.lr.ph726.preheader.new
  %indvars.iv785 = phi i64 [ 1, %.lr.ph726.preheader.new ], [ %indvars.iv.next786.1, %bb.bz ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph726.preheader.new ], [ %niter.next.1, %bb.bz ]
  %i.xn = trunc nuw nsw i64 %indvars.iv785 to i32
  %i.xo = shl i32 %i.xn, 2
  %i.xp = sext i32 %i.xo to i64
  %i.xq = getelementptr [8 x i8], ptr %i.u, i64 %i.xp ; 2 uses
  %i.xr = getelementptr i8, ptr %i.xq, i64 -24
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !35
  %i.xt = shl i64 %indvars.iv785, 33
  %i.xu = ashr exact i64 %i.xt, 29
  %i.xv = getelementptr i8, ptr %i.u, i64 %i.xu
  %i.xw = getelementptr i8, ptr %i.xv, i64 -8
  store double %i.xs, ptr %i.xw, align 8, !tbaa !35
  %i.xx = icmp slt i64 %indvars.iv785, %i.xk
  br i1 %i.xx, label %bb.bx, label %.lr.ph726.1

bb.bx:                                            ; preds = %.lr.ph726
  %i.xy = getelementptr i8, ptr %i.xq, i64 -8
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !35
  br label %.lr.ph726.1

.lr.ph726.1:                                      ; preds = %.lr.ph726, %bb.bx
  %.sink = phi double [ %i.xz, %bb.bx ], [ 0.000000e+00, %.lr.ph726 ]
  %.idx857 = shl nuw nsw i64 %indvars.iv785, 4
  %i.ya = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx857
  store double %.sink, ptr %i.ya, align 8, !tbaa !35
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 1 ; 4 uses
  %i.yb = trunc nuw nsw i64 %indvars.iv.next786 to i32
  %i.yc = shl i32 %i.yb, 2
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr [8 x i8], ptr %i.u, i64 %i.yd ; 2 uses
  %i.yf = getelementptr i8, ptr %i.ye, i64 -24
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !35
  %i.yh = shl i64 %indvars.iv.next786, 33
  %i.yi = ashr exact i64 %i.yh, 29
  %i.yj = getelementptr i8, ptr %i.u, i64 %i.yi
  %i.yk = getelementptr i8, ptr %i.yj, i64 -8
  store double %i.yg, ptr %i.yk, align 8, !tbaa !35
  %i.yl = icmp slt i64 %indvars.iv.next786, %i.xk
  br i1 %i.yl, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph726.1
  %i.ym = getelementptr i8, ptr %i.ye, i64 -8
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !35
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.lr.ph726.1
  %.sink.1 = phi double [ %i.yn, %bb.by ], [ 0.000000e+00, %.lr.ph726.1 ]
  %.idx857.1 = shl nuw nsw i64 %indvars.iv.next786, 4
  %i.yo = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx857.1
  store double %.sink.1, ptr %i.yo, align 8, !tbaa !35
  %indvars.iv.next786.1 = add nuw nsw i64 %indvars.iv785, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph726, !llvm.loop !25

bb.ca:                                            ; preds = %.lr.ph707
  %i.yp = add nuw i32 %.0535711, 1
  %exitcond777 = icmp eq i32 %.0535711, %i.ol
  br i1 %exitcond777, label %._crit_edge714, label %.lr.ph713, !llvm.loop !26

._crit_edge714:                                   ; preds = %bb.ca, %._crit_edge655.1
  store i32 3, ptr %2, align 4, !tbaa !33
  br label %.loopexit

bb.cb:                                            ; preds = %.lr.ph713
  %i.yq = load i32, ptr %0, align 4, !tbaa !33    ; 3 uses
  %.not602727 = icmp slt i32 %i.yq, 2
  br i1 %.not602727, label %._crit_edge731, label %iter.check

iter.check:                                       ; preds = %bb.cb
  %i.yr = add nuw i32 %i.yq, 1
  %wide.trip.count793 = zext i32 %i.yr to i64     ; 4 uses
  %i.ys = add nsw i64 %wide.trip.count793, -2     ; 6 uses
  %min.iters.check = icmp ult i64 %i.ys, 5
  br i1 %min.iters.check, label %.lr.ph730.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.yt = add nsw i64 %wide.trip.count793, -3     ; 2 uses
  %i.yu = trunc i64 %i.yt to i32
  %mul.result = shl i32 %i.yu, 2
  %i.yv = icmp ugt i32 %mul.result, 2147483639
  %i.yw = icmp ugt i64 %i.yt, 1073741823
  %i.yx = or i1 %i.yv, %i.yw
  br i1 %i.yx, label %.lr.ph730.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check905 = icmp ult i64 %i.ys, 17
  br i1 %min.iters.check905, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.yy = and i64 %i.ys, 15                       ; 2 uses
  %i.yz = icmp eq i64 %i.yy, 0
  %i.za = select i1 %i.yz, i64 16, i64 %i.yy      ; 2 uses
  %n.vec = sub nsw i64 %i.ys, %i.za               ; 3 uses
  %i.zb = add nsw i64 %n.vec, 2                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.zc = shl <4 x i32> %vec.ind, splat (i32 2)
  %step.add = shl <4 x i32> %vec.ind, splat (i32 2)
  %i.zd = add <4 x i32> %step.add, splat (i32 16)
  %step.add.2 = shl <4 x i32> %vec.ind, splat (i32 2)
  %i.ze = add <4 x i32> %step.add.2, splat (i32 32)
  %step.add.3 = shl <4 x i32> %vec.ind, splat (i32 2)
  %i.zf = add <4 x i32> %step.add.3, splat (i32 48)
  %i.zg = sext <4 x i32> %i.zc to <4 x i64>
  %i.zh = sext <4 x i32> %i.zd to <4 x i64>
  %i.zi = sext <4 x i32> %i.ze to <4 x i64>
  %i.zj = sext <4 x i32> %i.zf to <4 x i64>
  %wide.gep = getelementptr [8 x i8], ptr %i.u, <4 x i64> %i.zg
  %wide.gep906 = getelementptr [8 x i8], ptr %i.u, <4 x i64> %i.zh
  %wide.gep907 = getelementptr [8 x i8], ptr %i.u, <4 x i64> %i.zi
  %wide.gep908 = getelementptr [8 x i8], ptr %i.u, <4 x i64> %i.zj
  %wide.gep909 = getelementptr i8, <4 x ptr> %wide.gep, i64 -24
  %wide.gep910 = getelementptr i8, <4 x ptr> %wide.gep906, i64 -24
  %wide.gep911 = getelementptr i8, <4 x ptr> %wide.gep907, i64 -24
  %wide.gep912 = getelementptr i8, <4 x ptr> %wide.gep908, i64 -24
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep909, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !35
  %wide.masked.gather913 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep910, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !35
  %wide.masked.gather914 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep911, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !35
  %wide.masked.gather915 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep912, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !35
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 4 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zk, i64 48
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zk, i64 80
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zk, i64 112
  store <4 x double> %wide.masked.gather, ptr %i.zl, align 8, !tbaa !35
  store <4 x double> %wide.masked.gather913, ptr %i.zm, align 8, !tbaa !35
  store <4 x double> %wide.masked.gather914, ptr %i.zn, align 8, !tbaa !35
  store <4 x double> %wide.masked.gather915, ptr %i.zo, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.zp = icmp eq i64 %index.next, %n.vec
  br i1 %i.zp, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !27

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.za, 5
  br i1 %min.epilog.iters.check, label %.lr.ph730.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.zb, %vec.epilog.iter.check ], [ 2, %vector.main.loop.iter.check ]
  %i.zq = and i64 %i.ys, 3                        ; 2 uses
  %i.zr = icmp eq i64 %i.zq, 0
  %i.zs = select i1 %i.zr, i64 4, i64 %i.zq
  %n.vec916 = sub nsw i64 %i.ys, %i.zs            ; 2 uses
  %i.zt = add nsw i64 %n.vec916, 2
end_hunk_0
