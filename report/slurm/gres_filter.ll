Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/gres_filter?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@_foreach_gres_filter_sock_core:bb.a
bb.dw:                                            ; preds = %bb.dv
  %i.rx = load ptr, ptr %i.ov, align 8            ; 2 uses
  %.not49.i = icmp eq ptr %i.rx, null
  br i1 %.not49.i, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %indvars.iv.i
  %i.rz = load ptr, ptr %i.ry, align 8            ; 2 uses
  %.not50.i = icmp eq ptr %i.rz, null
  br i1 %.not50.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.sa = call i32 @bit_overlap_any(ptr noundef nonnull %i.rz, ptr noundef nonnull %i.rw) #6
  %.not51.i = icmp eq i32 %i.sa, 0
  br i1 %.not51.i, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw, %bb.dv
  %i.sb = load ptr, ptr %i.ow, align 8
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %indvars.iv.i
  %i.sd = load i64, ptr %i.sc, align 8
  %i.se = load ptr, ptr %i.ox, align 8
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %indvars.iv.i
  %i.sg = load i64, ptr %i.sf, align 8
  %i.sh = sub i64 %i.sd, %i.sg
  %sext.i = shl i64 %i.sh, 32
  %i.si = ashr exact i64 %sext.i, 32
  %i.sj = load i64, ptr %i.cp, align 8
  %i.sk = udiv i64 %i.si, %i.sj
  %i.sl = trunc i64 %i.sk to i32                  ; 2 uses
  %i.sm = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1200), align 8
  %.not54.i757 = icmp sgt i16 %i.sm, -1
  br i1 %.not54.i757, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.sn = add nsw i32 %.03855.i, %i.sl
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.so = call i32 @llvm.smax.i32(i32 %.03855.i, i32 %i.sl)
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dy, %bb.du
  %.1.i755 = phi i32 [ %.03855.i, %bb.du ], [ %.03855.i, %bb.dy ], [ %i.sn, %bb.ea ], [ %i.so, %bb.eb ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.sp = load i16, ptr %i.oq, align 8
  %i.sq = zext i16 %i.sp to i64
  %i.sr = icmp samesign ult i64 %indvars.iv.next.i, %i.sq
  br i1 %i.sr, label %.lr.ph.split.split.split.i, label %_shared_gres_task_limit.exit, !llvm.loop !17

_shared_gres_task_limit.exit:                     ; preds = %bb.dt, %bb.ec, %bb.da, %bb.dk, %bb.df, %bb.ct
  %.038.lcssa.i = phi i32 [ 0, %bb.ct ], [ %.1.i755, %bb.ec ], [ %.1.us.i, %bb.dk ], [ %.1.us.us88.i, %bb.df ], [ %.1.us.us.i, %bb.da ], [ %.1.us66.i, %bb.dt ]
  %i.ss = sext i32 %.038.lcssa.i to i64
  br label %bb.ee

bb.ed:                                            ; preds = %bb.cq
  %i.st = load i64, ptr %i.cp, align 8
  %i.su = udiv i64 %.4, %i.st
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %_shared_gres_task_limit.exit
  %.0590 = phi i64 [ %i.ss, %_shared_gres_task_limit.exit ], [ %i.su, %bb.ed ]
  %i.sv = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4
  %i.sx = zext i32 %i.sw to i64
  %i.sy = call i64 @llvm.umin.i64(i64 %.0590, i64 %i.sx)
  %i.sz = trunc nuw i64 %i.sy to i32
  store i32 %i.sz, ptr %i.sv, align 4
  %i.ta = load i64, ptr %i.dh, align 8
  %.not681 = icmp eq i64 %i.ta, 0
  br i1 %.not681, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.tb = load ptr, ptr %i.bt, align 8
  %i.tc = load i32, ptr %i.tb, align 4
  %i.td = zext i32 %i.tc to i64
  %i.te = load i64, ptr %i.cp, align 8
  %i.tf = mul i64 %i.te, %i.td
  %..4 = call i64 @llvm.umin.i64(i64 %i.tf, i64 %.4)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ee, %bb.ef, %bb.cp
  %.5 = phi i64 [ %.4, %bb.ee ], [ %..4, %bb.ef ], [ %.4, %bb.cp ] ; 5 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.th = load i16, ptr %i.tg, align 8            ; 2 uses
  switch i16 %i.th, label %bb.eh [
    i16 0, label %bb.ej
    i16 -2, label %bb.ej
  ]

bb.eh:                                            ; preds = %bb.eg
  %i.ti = zext i16 %i.th to i64                   ; 2 uses
  %i.tj = mul i64 %.5, %i.ti                      ; 3 uses
  %i.tk = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4
  %i.tm = zext i32 %i.tl to i64                   ; 2 uses
  %i.tn = icmp ugt i64 %i.tj, %i.tm
  br i1 %i.tn, label %.lr.ph836, label %._crit_edge837

.lr.ph836:                                        ; preds = %bb.eh
  %i.to = load i64, ptr %i.dh, align 8
  %.not720 = icmp eq i64 %i.to, 0
  %i.tp = sext i1 %.not720 to i64
  br label %bb.ei

bb.ei:                                            ; preds = %.lr.ph836, %bb.ei
  %.1591834 = phi i64 [ %i.tj, %.lr.ph836 ], [ %i.tq, %bb.ei ]
  %.6833 = phi i64 [ %.5, %.lr.ph836 ], [ %spec.select740, %bb.ei ]
  %i.tq = sub i64 %.1591834, %i.ti                ; 3 uses
  %spec.select740 = add i64 %.6833, %i.tp         ; 2 uses
  %i.tr = icmp ugt i64 %i.tq, %i.tm
  br i1 %i.tr, label %bb.ei, label %._crit_edge837, !llvm.loop !18

._crit_edge837:                                   ; preds = %bb.ei, %bb.eh
  %.6.lcssa = phi i64 [ %.5, %bb.eh ], [ %spec.select740, %bb.ei ]
  %.1591.lcssa = phi i64 [ %i.tj, %bb.eh ], [ %i.tq, %bb.ei ]
  %i.ts = trunc nuw i64 %.1591.lcssa to i32
  store i32 %i.ts, ptr %i.tk, align 4
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eg, %bb.eg, %._crit_edge837
  %.8 = phi i64 [ %.6.lcssa, %._crit_edge837 ], [ %.5, %bb.eg ], [ %.5, %bb.eg ] ; 3 uses
  %i.tt = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 4
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.tw = load i32, ptr %i.tv, align 8
  %.fr = freeze i32 %i.tu                         ; 2 uses
  %i.tx = urem i32 %.fr, %i.tw
  %i.ty = sub nuw i32 %.fr, %i.tx
  store i32 %i.ty, ptr %i.tt, align 4
  %i.tz = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 4
  %i.ub = load i32, ptr %i.tv, align 8
  %.fr684 = freeze i32 %i.ua                      ; 2 uses
  %i.uc = urem i32 %.fr684, %i.ub
  %i.ud = sub nuw i32 %.fr684, %i.uc
  store i32 %i.ud, ptr %i.tz, align 4
  %i.ue = load ptr, ptr %i.bt, align 8
  %i.uf = load i32, ptr %i.ue, align 4
  %i.ug = icmp eq i32 %i.uf, 0
  br i1 %i.ug, label %bb.ij, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.uh = load i16, ptr %i.fq, align 8            ; 5 uses
  %i.ui = zext i16 %i.uh to i32
  %.not685 = icmp eq i32 %.0582.lcssa, %i.ui
  br i1 %.not685, label %bb.ew, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.uk = load i8, ptr %i.uj, align 2, !range !10, !noundef !11
  %i.ul = trunc nuw i8 %i.uk to i1
  br i1 %i.ul, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.um = load i8, ptr %i.e, align 1, !range !10, !noundef !11
  %i.un = trunc nuw i8 %i.um to i1
  br i1 %i.un, label %bb.en, label %bb.ew

bb.en:                                            ; preds = %bb.em, %bb.el
  %.not913 = icmp eq i16 %i.uh, 0
  br i1 %.not913, label %.loopexit787, label %.lr.ph861

.lr.ph861:                                        ; preds = %bb.en
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.eo

bb.eo:                                            ; preds = %.lr.ph861, %.loopexit786
  %i.uu = phi i16 [ %i.uh, %.lr.ph861 ], [ %i.wn, %.loopexit786 ] ; 2 uses
  %indvars.iv938 = phi i64 [ 0, %.lr.ph861 ], [ %indvars.iv.next939, %.loopexit786 ] ; 5 uses
  %.lcssa842853858 = phi i16 [ %.promoted851, %.lr.ph861 ], [ %.lcssa842852, %.loopexit786 ] ; 3 uses
  %.lcssa844856857 = phi i16 [ %.promoted854, %.lr.ph861 ], [ %.lcssa844855, %.loopexit786 ] ; 3 uses
  %i.uv = load ptr, ptr %i.uo, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 %indvars.iv938
  %i.ux = load i8, ptr %i.uw, align 1, !range !10, !noundef !11
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %.loopexit786, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.uz = load i16, ptr %i.up, align 8            ; 2 uses
  %.not914 = icmp eq i16 %i.uz, 0
  br i1 %.not914, label %.loopexit786, label %.lr.ph848.preheader

.lr.ph848.preheader:                              ; preds = %bb.ep
  %i.va = zext i16 %i.uz to i32
  %i.vb = trunc nuw nsw i64 %indvars.iv938 to i32
  br label %.lr.ph848

.lr.ph848:                                        ; preds = %.lr.ph848.preheader, %bb.ev
  %.0569846.in = phi i32 [ %.0569846, %bb.ev ], [ %i.va, %.lr.ph848.preheader ] ; 2 uses
  %i.vc = phi i16 [ %i.wl, %bb.ev ], [ %.lcssa842853858, %.lr.ph848.preheader ] ; 2 uses
  %i.vd = phi i16 [ %i.wk, %bb.ev ], [ %.lcssa844856857, %.lr.ph848.preheader ] ; 4 uses
  %.0569846 = add nsw i32 %.0569846.in, -1        ; 2 uses
  %i.ve = load i16, ptr %i.up, align 8
  %i.vf = zext i16 %i.ve to i32
  %i.vg = mul nuw nsw i32 %i.vb, %i.vf
  %i.vh = add nsw i32 %i.vg, %.0569846
  %i.vi = load ptr, ptr %1, align 8
  %2 = sext i32 %i.vh to i64                      ; 3 uses
  %i.vj = call i32 @slurm_bit_test(ptr noundef %i.vi, i64 noundef %2) #6
  %.not717 = icmp eq i32 %i.vj, 0
  br i1 %.not717, label %bb.ev, label %bb.eq

bb.eq:                                            ; preds = %.lr.ph848
  %i.vk = load ptr, ptr %1, align 8
  call void @bit_clear(ptr noundef %i.vk, i64 noundef %2) #6
  %i.vl = add i16 %i.vc, -1                       ; 4 uses
  %i.vm = load ptr, ptr @avail_cores_per_sock, align 8
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %i.vm, i64 %indvars.iv938 ; 2 uses
  %i.vo = load i16, ptr %i.vn, align 2
  %i.vp = add i16 %i.vo, -1
  store i16 %i.vp, ptr %i.vn, align 2
  %i.vq = zext i16 %i.vl to i32
  %i.vr = load i16, ptr %i.eb, align 2
  %i.vs = zext i16 %i.vr to i32
  %i.vt = mul nuw nsw i32 %i.vs, %i.vq            ; 2 uses
  %i.vu = load ptr, ptr %i.uq, align 8            ; 2 uses
  %i.vv = load i16, ptr %i.vu, align 2
  %i.vw = zext i16 %i.vv to i32
  %i.vx = icmp samesign ult i32 %i.vt, %i.vw
  br i1 %i.vx, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.vy = trunc nuw i32 %i.vt to i16
  store i16 %i.vy, ptr %i.vu, align 2
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.not718 = icmp eq i16 %i.vd, 0
  br i1 %.not718, label %bb.ev, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.vz = load ptr, ptr %i.ur, align 8
  %i.wa = load i32, ptr %i.us, align 8
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.vz, i64 %i.wb
  %i.wd = load ptr, ptr %i.wc, align 8
  %i.we = call i32 @slurm_bit_test(ptr noundef %i.wd, i64 noundef %2) #6
  %.not719 = icmp eq i32 %i.we, 0
  br i1 %.not719, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.wf = add i16 %i.vd, -1
  %i.wg = load ptr, ptr %i.ut, align 8
  %i.wh = getelementptr inbounds nuw [2 x i8], ptr %i.wg, i64 %indvars.iv938 ; 2 uses
  %i.wi = load i16, ptr %i.wh, align 2
  %i.wj = add i16 %i.wi, -1
  store i16 %i.wj, ptr %i.wh, align 2
  br label %bb.ev

bb.ev:                                            ; preds = %bb.es, %bb.et, %bb.eu, %.lr.ph848
  %i.wk = phi i16 [ 0, %bb.es ], [ %i.vd, %bb.et ], [ %i.wf, %bb.eu ], [ %i.vd, %.lr.ph848 ] ; 2 uses
  %i.wl = phi i16 [ %i.vl, %bb.es ], [ %i.vl, %bb.et ], [ %i.vl, %bb.eu ], [ %i.vc, %.lr.ph848 ] ; 2 uses
  %i.wm = icmp samesign ugt i32 %.0569846.in, 1
  br i1 %i.wm, label %.lr.ph848, label %.loopexit786.loopexit, !llvm.loop !19

.loopexit786.loopexit:                            ; preds = %bb.ev
  %.pre955 = load i16, ptr %i.fq, align 8
  br label %.loopexit786

.loopexit786:                                     ; preds = %.loopexit786.loopexit, %bb.ep, %bb.eo
  %i.wn = phi i16 [ %i.uu, %bb.eo ], [ %i.uu, %bb.ep ], [ %.pre955, %.loopexit786.loopexit ] ; 3 uses
  %.lcssa844855 = phi i16 [ %.lcssa844856857, %bb.eo ], [ %.lcssa844856857, %bb.ep ], [ %i.wk, %.loopexit786.loopexit ] ; 2 uses
  %.lcssa842852 = phi i16 [ %.lcssa842853858, %bb.eo ], [ %.lcssa842853858, %bb.ep ], [ %i.wl, %.loopexit786.loopexit ] ; 2 uses
  %indvars.iv.next939 = add nuw nsw i64 %indvars.iv938, 1 ; 2 uses
  %i.wo = zext i16 %i.wn to i64
  %i.wp = icmp samesign ult i64 %indvars.iv.next939, %i.wo
  br i1 %i.wp, label %bb.eo, label %.loopexit787, !llvm.loop !20

.loopexit787:                                     ; preds = %.loopexit786, %bb.en
  %i.wq = phi i16 [ 0, %bb.en ], [ %i.wn, %.loopexit786 ]
  %.lcssa844856.lcssa = phi i16 [ %.promoted854, %bb.en ], [ %.lcssa844855, %.loopexit786 ]
  %.lcssa842853.lcssa = phi i16 [ %.promoted851, %bb.en ], [ %.lcssa842852, %.loopexit786 ]
  store i16 %.lcssa842853.lcssa, ptr %i.a, align 2
  store i16 %.lcssa844856.lcssa, ptr %i.b, align 2
  br label %bb.ew

bb.ew:                                            ; preds = %.loopexit787, %bb.em, %bb.ek
  %i.wr = phi i16 [ %i.wq, %.loopexit787 ], [ %i.uh, %bb.em ], [ %i.uh, %bb.ek ]
  br i1 %.0581759, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.wt = load i16, ptr %i.ws, align 4
  %i.wu = zext i16 %i.wt to i64
  %i.wv = mul i64 %.8, %i.wu
  %i.ww = load ptr, ptr %1, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.xa = load ptr, ptr %i.wz, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.xc = load i32, ptr %i.xb, align 8
  %i.xd = sext i32 %i.xc to i64
  %i.xe = getelementptr inbounds [8 x i8], ptr %i.xa, i64 %i.xd
  %i.xf = load ptr, ptr %i.xe, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.xh = load ptr, ptr %i.xg, align 8
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xj = load i16, ptr %i.xi, align 8
  %i.xk = load i16, ptr %i.eb, align 2
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.xm = load ptr, ptr %i.xl, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.xo = load i8, ptr %i.xn, align 2, !range !10, !noundef !11
  %i.xp = trunc nuw i8 %i.xo to i1
  %i.xq = load i8, ptr %i.e, align 1, !range !10, !noundef !11
  %i.xr = trunc nuw i8 %i.xq to i1
  call fastcc void @_reduce_restricted_cores(ptr noundef %i.ww, ptr noundef %i.wy, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.xf, ptr noundef %i.xh, i64 noundef %i.wv, i16 noundef zeroext %i.wr, i16 noundef zeroext %i.xj, i16 noundef zeroext %i.xk, ptr noundef %i.xm, i1 noundef zeroext %i.xp, i1 noundef zeroext %i.xr)
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.xs = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.xt = load i32, ptr %i.xs, align 4            ; 4 uses
  %i.xu = icmp eq i32 %i.xt, -2
  br i1 %i.xu, label %bb.ez, label %bb.fe

bb.ez:                                            ; preds = %bb.ey
  br i1 %.not677, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xw = load ptr, ptr %i.xv, align 8
  %i.xx = load i16, ptr %i.xw, align 2
  %i.xy = udiv i16 %i.xx, %.pre954
  %i.xz = zext i16 %i.xy to i64
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.yb = load i64, ptr %i.ya, align 8
  %.741 = call i64 @llvm.umin.i64(i64 %i.yb, i64 %i.xz)
  store i64 %.741, ptr %i.ya, align 8
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ez, %bb.fa
  %i.yc = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.yd = and i64 %i.yc, 1
  %.not716 = icmp eq i64 %i.yd, 0
  br i1 %.not716, label %bb.ij, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ye = call i32 @get_log_level() #6
  %i.yf = icmp sgt i32 %i.ye, 3
  br i1 %i.yf, label %bb.fd, label %bb.ij

bb.fd:                                            ; preds = %bb.fc
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.yh = load ptr, ptr %i.yg, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._foreach_gres_filter_sock_core, ptr noundef %i.yh) #6
  br label %bb.ij

bb.fe:                                            ; preds = %bb.ey
  %i.yi = load ptr, ptr %i.bq, align 8
  %i.yj = load i32, ptr %i.yi, align 4            ; 2 uses
  %i.yk = icmp ult i32 %i.xt, %i.yj
  br i1 %i.yk, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ym = load ptr, ptr %i.yl, align 8
  %i.yn = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._foreach_gres_filter_sock_core, ptr noundef %i.ym, i32 noundef %i.yj, i32 noundef %i.xt) #6 ; 0 uses
  %.pre956 = load ptr, ptr %i.bt, align 8         ; 2 uses
  %.pre957 = load i32, ptr %.pre956, align 4
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.yo = phi i32 [ %.pre957, %bb.ff ], [ %i.xt, %bb.fe ] ; 3 uses
  %i.yp = phi ptr [ %.pre956, %bb.ff ], [ %i.xs, %bb.fe ]
  %i.yq = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 10
  %i.ys = load i16, ptr %i.yr, align 2            ; 3 uses
  %i.yt = zext i16 %i.ys to i32                   ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 22
  %i.yv = load i16, ptr %i.yu, align 2
  %i.yw = icmp eq i16 %i.yv, 1
  br i1 %i.yw, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  %i.yx = load i16, ptr %i.eb, align 2            ; 3 uses
  %i.yy = urem i16 %i.ys, %i.yx
  %i.yz = udiv i16 %i.ys, %i.yx
  %.not686 = icmp eq i16 %i.yy, 0
  br i1 %.not686, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.za = zext i16 %i.yx to i32
  %.zext775 = zext i16 %i.yz to i32
  %i.zb = add nuw nsw i32 %.zext775, 1
  %i.zc = mul nuw nsw i32 %i.zb, %i.za
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh, %bb.fg
  %.0577 = phi i32 [ %i.zc, %bb.fi ], [ %i.yt, %bb.fh ], [ %i.yt, %bb.fg ] ; 2 uses
  %.0585864 = mul nsw i32 %i.yo, %.0577           ; 2 uses
  %i.zd = load ptr, ptr %i.bq, align 8
  %i.ze = load i32, ptr %i.zd, align 4
  %.not687865 = icmp ult i32 %i.yo, %i.ze
  br i1 %.not687865, label %.loopexit785, label %.lr.ph870

.lr.ph870:                                        ; preds = %bb.fj
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 92
end_hunk_0
