inline.NumInlined: 25
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 72
begin_hunk_0_@H5Z__xform_eval_full:bb.a
  br label %.thread

.thread.loopexit7733.unr-lcssa:                   ; preds = %.lr.ph3494
  %lcmp.mod7745.not = icmp eq i64 %xtraiter7743, 0
  br i1 %lcmp.mod7745.not, label %.thread, label %.lr.ph3494.epil.preheader

.lr.ph3494.epil.preheader:                        ; preds = %.thread.loopexit7733.unr-lcssa, %.lr.ph3494.preheader
  %.024013493.epil.init = phi ptr [ %i.fdz, %.lr.ph3494.preheader ], [ %i.fer, %.thread.loopexit7733.unr-lcssa ]
  %lcmp.mod7746 = icmp ne i64 %xtraiter7743, 0
  tail call void @llvm.assume(i1 %lcmp.mod7746)
  br label %.lr.ph3494.epil

.lr.ph3494.epil:                                  ; preds = %.lr.ph3494.epil, %.lr.ph3494.epil.preheader
  %.024013493.epil = phi ptr [ %i.fky, %.lr.ph3494.epil ], [ %.024013493.epil.init, %.lr.ph3494.epil.preheader ] ; 3 uses
  %epil.iter7744 = phi i64 [ %epil.iter7744.next, %.lr.ph3494.epil ], [ 0, %.lr.ph3494.epil.preheader ]
  %.0.copyload489.epil = load x86_fp80, ptr %.024013493.epil, align 1
  %i.fkv = fptrunc x86_fp80 %.0.copyload489.epil to double
  %i.fkw = fdiv double %i.fkv, %i.fdx
  %i.fkx = fpext double %i.fkw to x86_fp80
  store x86_fp80 %i.fkx, ptr %.024013493.epil, align 1
  %i.fky = getelementptr inbounds nuw i8, ptr %.024013493.epil, i64 16
  %epil.iter7744.next = add i64 %epil.iter7744, 1 ; 2 uses
  %epil.iter7744.cmp.not = icmp eq i64 %epil.iter7744.next, %xtraiter7743
  br i1 %epil.iter7744.cmp.not, label %.thread, label %.lr.ph3494.epil, !llvm.loop !585

.thread.loopexit7734.unr-lcssa:                   ; preds = %.lr.ph3491
  %lcmp.mod7739.not = icmp eq i64 %xtraiter7737, 0
  br i1 %lcmp.mod7739.not, label %.thread, label %.lr.ph3491.epil.preheader

.lr.ph3491.epil.preheader:                        ; preds = %.thread.loopexit7734.unr-lcssa, %.lr.ph3491.preheader
  %.023993490.epil.init = phi ptr [ %i.ffb, %.lr.ph3491.preheader ], [ %i.fft, %.thread.loopexit7734.unr-lcssa ]
  %lcmp.mod7740 = icmp ne i64 %xtraiter7737, 0
  tail call void @llvm.assume(i1 %lcmp.mod7740)
  br label %.lr.ph3491.epil

.lr.ph3491.epil:                                  ; preds = %.lr.ph3491.epil, %.lr.ph3491.epil.preheader
  %.023993490.epil = phi ptr [ %i.flc, %.lr.ph3491.epil ], [ %.023993490.epil.init, %.lr.ph3491.epil.preheader ] ; 3 uses
  %epil.iter7738 = phi i64 [ %epil.iter7738.next, %.lr.ph3491.epil ], [ 0, %.lr.ph3491.epil.preheader ]
  %.0.copyload480.epil = load x86_fp80, ptr %.023993490.epil, align 1
  %i.fkz = fptrunc x86_fp80 %.0.copyload480.epil to double
  %i.fla = fdiv double %.02398, %i.fkz
  %i.flb = fpext double %i.fla to x86_fp80
  store x86_fp80 %i.flb, ptr %.023993490.epil, align 1
  %i.flc = getelementptr inbounds nuw i8, ptr %.023993490.epil, i64 16
  %epil.iter7738.next = add i64 %epil.iter7738, 1 ; 2 uses
  %epil.iter7738.cmp.not = icmp eq i64 %epil.iter7738.next, %xtraiter7737
  br i1 %epil.iter7738.cmp.not, label %.thread, label %.lr.ph3491.epil, !llvm.loop !586

.thread.loopexit7735.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.thread.loopexit7735.unr-lcssa, %.lr.ph.preheader
  %.023933488.epil.init = phi ptr [ %i.ffv, %.lr.ph.preheader ], [ %i.fgl, %.thread.loopexit7735.unr-lcssa ]
  %.023943487.epil.init = phi ptr [ %i.ffx, %.lr.ph.preheader ], [ %i.fgk, %.thread.loopexit7735.unr-lcssa ]
  %lcmp.mod7736 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7736)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.023933488.epil = phi ptr [ %i.flf, %.lr.ph.epil ], [ %.023933488.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.023943487.epil = phi ptr [ %i.fle, %.lr.ph.epil ], [ %.023943487.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.0.copyload469.epil = load x86_fp80, ptr %.023943487.epil, align 1
  %.0.copyload.epil = load x86_fp80, ptr %.023933488.epil, align 1
  %i.fld = fdiv x86_fp80 %.0.copyload469.epil, %.0.copyload.epil
  store x86_fp80 %i.fld, ptr %.023943487.epil, align 1
  %i.fle = getelementptr inbounds nuw i8, ptr %.023943487.epil, i64 16
  %i.flf = getelementptr inbounds nuw i8, ptr %.023933488.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread, label %.lr.ph.epil, !llvm.loop !587

.thread:                                          ; preds = %.thread.loopexit7735.unr-lcssa, %.lr.ph.epil, %.thread.loopexit7734.unr-lcssa, %.lr.ph3491.epil, %.thread.loopexit7733.unr-lcssa, %.lr.ph3494.epil, %.lr.ph3498.prol.loopexit, %.lr.ph3498, %.lr.ph3501, %.lr.ph3504, %.lr.ph3508.prol.loopexit, %.lr.ph3508, %.lr.ph3511, %.lr.ph3514, %.lr.ph3518.epil.preheader, %.thread.loopexit7720.unr-lcssa, %.lr.ph3521, %.lr.ph3524, %.lr.ph3528.epil.preheader, %.thread.loopexit7715.unr-lcssa, %.lr.ph3531, %.lr.ph3534, %.lr.ph3538.epil.preheader, %.thread.loopexit7710.unr-lcssa, %.lr.ph3541, %.lr.ph3544, %.lr.ph3548.epil.preheader, %.thread.loopexit7705.unr-lcssa, %.lr.ph3551, %.lr.ph3554, %.lr.ph3558.epil.preheader, %.thread.loopexit7700.unr-lcssa, %.lr.ph3561, %.lr.ph3564, %.lr.ph3568.epil.preheader, %.thread.loopexit7695.unr-lcssa, %.lr.ph3571, %.lr.ph3574, %.lr.ph3578.epil.preheader, %.thread.loopexit7690.unr-lcssa, %.lr.ph3581, %.lr.ph3584, %.lr.ph3588.epil.preheader, %.thread.loopexit7685.unr-lcssa, %.lr.ph3591, %.lr.ph3594, %.lr.ph3598.epil.preheader, %.thread.loopexit7680.unr-lcssa, %.lr.ph3601, %.lr.ph3604, %.lr.ph3608.epil.preheader, %.thread.loopexit7677.unr-lcssa, %.lr.ph3611, %.lr.ph3614, %.thread.loopexit7674.unr-lcssa, %.lr.ph3618.epil, %.thread.loopexit7673.unr-lcssa, %.lr.ph3621.epil, %.thread.loopexit7672.unr-lcssa, %.lr.ph3624.epil, %.lr.ph3628.prol.loopexit, %.lr.ph3628, %.lr.ph3631, %.lr.ph3634, %.lr.ph3638.prol.loopexit, %.lr.ph3638, %.lr.ph3641, %.lr.ph3644, %.thread.loopexit7659.unr-lcssa, %.lr.ph3648.epil, %.lr.ph3651, %.lr.ph3654, %.thread.loopexit7654.unr-lcssa, %.lr.ph3658.epil, %.thread.loopexit7653.unr-lcssa, %.lr.ph3661.epil, %.thread.loopexit7652.unr-lcssa, %.lr.ph3664.epil, %.thread.loopexit7651.unr-lcssa, %.lr.ph3668.epil, %.lr.ph3671, %.lr.ph3674, %.thread.loopexit7646.unr-lcssa, %.lr.ph3678.epil, %.thread.loopexit7645.unr-lcssa, %.lr.ph3681.epil, %.thread.loopexit7644.unr-lcssa, %.lr.ph3684.epil, %.lr.ph3688.prol.loopexit, %.lr.ph3688, %.lr.ph3691, %.lr.ph3694, %.lr.ph3698.prol.loopexit, %.lr.ph3698, %.lr.ph3701, %.lr.ph3704, %.lr.ph3708.prol.loopexit, %.lr.ph3708, %.lr.ph3711, %.lr.ph3714, %.lr.ph3718.prol.loopexit, %.lr.ph3718, %.lr.ph3721, %.lr.ph3724, %.lr.ph3728.prol.loopexit, %.lr.ph3728, %.lr.ph3731, %.lr.ph3734, %.lr.ph3738.prol.loopexit, %.lr.ph3738, %.lr.ph3741, %.lr.ph3744, %.thread.loopexit7615.unr-lcssa, %.lr.ph3748.epil, %.thread.loopexit7614.unr-lcssa, %.lr.ph3751.epil, %.thread.loopexit7613.unr-lcssa, %.lr.ph3754.epil, %.lr.ph3758.prol.loopexit, %.lr.ph3758, %.lr.ph3761, %.lr.ph3764, %.lr.ph3768.prol.loopexit, %.lr.ph3768, %.lr.ph3771, %.lr.ph3774, %.lr.ph3778.prol.loopexit, %.lr.ph3778, %.lr.ph3781, %.lr.ph3784, %.lr.ph3788.prol.loopexit, %.lr.ph3788, %.thread.loopexit7592.unr-lcssa, %.lr.ph3791.epil, %.thread.loopexit7591.unr-lcssa, %.lr.ph3794.epil, %.lr.ph3798.prol.loopexit, %.lr.ph3798, %.lr.ph3801, %.lr.ph3804, %.lr.ph3808.prol.loopexit, %.lr.ph3808, %.thread.loopexit7582.unr-lcssa, %.lr.ph3811.epil, %.thread.loopexit7581.unr-lcssa, %.lr.ph3814.epil, %.lr.ph3818.prol.loopexit, %.lr.ph3818, %.lr.ph3821, %.lr.ph3824, %.lr.ph3828.prol.loopexit, %.lr.ph3828, %.lr.ph3831, %.lr.ph3834, %.lr.ph3838.prol.loopexit, %.lr.ph3838, %.lr.ph3841, %.lr.ph3844, %.lr.ph3848.prol.loopexit, %.lr.ph3848, %.lr.ph3851, %.lr.ph3854, %.lr.ph3858.prol.loopexit, %.lr.ph3858, %.lr.ph3861, %.lr.ph3864, %.lr.ph3868.prol.loopexit, %.lr.ph3868, %.lr.ph3871, %.lr.ph3874, %.thread.loopexit7552.unr-lcssa, %.lr.ph3878.epil, %.thread.loopexit7551.unr-lcssa, %.lr.ph3881.epil, %.thread.loopexit7550.unr-lcssa, %.lr.ph3884.epil, %.lr.ph3888.prol.loopexit, %.lr.ph3888, %.lr.ph3891, %.lr.ph3894, %.lr.ph3898.prol.loopexit, %.lr.ph3898, %.lr.ph3901, %.lr.ph3904, %.lr.ph3908.prol.loopexit, %.lr.ph3908, %.lr.ph3911, %.lr.ph3914, %.lr.ph3918.prol.loopexit, %.lr.ph3918, %.thread.loopexit7529.unr-lcssa, %.lr.ph3921.epil, %.thread.loopexit7528.unr-lcssa, %.lr.ph3924.epil, %.lr.ph3928.prol.loopexit, %.lr.ph3928, %.lr.ph3931, %.lr.ph3934, %.lr.ph3938.prol.loopexit, %.lr.ph3938, %.thread.loopexit7519.unr-lcssa, %.lr.ph3941.epil, %.thread.loopexit7518.unr-lcssa, %.lr.ph3944.epil, %.lr.ph3948.prol.loopexit, %.lr.ph3948, %.lr.ph3951, %.lr.ph3954, %.lr.ph3958.prol.loopexit, %.lr.ph3958, %.lr.ph3961, %.lr.ph3964, %.lr.ph3968.prol.loopexit, %.lr.ph3968, %.lr.ph3971, %.lr.ph3974, %.lr.ph3978.prol.loopexit, %.lr.ph3978, %.lr.ph3981, %.lr.ph3984, %.lr.ph3988.prol.loopexit, %.lr.ph3988, %.lr.ph3991, %.lr.ph3994, %.lr.ph3998.prol.loopexit, %.lr.ph3998, %.lr.ph4001, %.lr.ph4004, %middle.block, %middle.block4905, %middle.block4920, %middle.block4941, %middle.block4957, %middle.block4972, %middle.block4987, %middle.block5002, %middle.block5017, %middle.block5032, %middle.block5047, %middle.block5062, %middle.block5077, %middle.block5092, %middle.block5107, %middle.block5122, %middle.block5137, %middle.block5152, %middle.block5167, %middle.block5182, %middle.block5197, %middle.block5212, %middle.block5228, %vec.epilog.middle.block, %middle.block5254, %vec.epilog.middle.block5271, %middle.block5288, %vec.epilog.middle.block5305, %middle.block5322, %vec.epilog.middle.block5339, %middle.block5362, %middle.block5379, %middle.block5395, %middle.block5418, %middle.block5435, %middle.block5451, %middle.block5466, %middle.block5481, %middle.block5496, %middle.block5511, %middle.block5534, %middle.block5550, %middle.block5565, %middle.block5588, %middle.block5604, %middle.block5619, %middle.block5644, %vec.epilog.middle.block5662, %middle.block5678, %middle.block5693, %middle.block5718, %vec.epilog.middle.block5736, %middle.block5752, %middle.block5767, %middle.block5792, %vec.epilog.middle.block5810, %middle.block5828, %vec.epilog.middle.block5845, %middle.block5862, %vec.epilog.middle.block5879, %middle.block5904, %vec.epilog.middle.block5922, %middle.block5940, %vec.epilog.middle.block5957, %middle.block5974, %vec.epilog.middle.block5991, %middle.block6014, %middle.block6031, %middle.block6047, %middle.block6070, %middle.block6087, %middle.block6103, %middle.block6126, %middle.block6142, %middle.block6157, %middle.block6180, %middle.block6204, %middle.block6220, %middle.block6235, %middle.block6258, %middle.block6282, %middle.block6298, %middle.block6313, %middle.block6336, %middle.block6352, %middle.block6367, %middle.block6392, %vec.epilog.middle.block6410, %middle.block6426, %middle.block6441, %middle.block6466, %vec.epilog.middle.block6484, %middle.block6500, %middle.block6515, %middle.block6540, %vec.epilog.middle.block6558, %middle.block6576, %vec.epilog.middle.block6593, %middle.block6610, %vec.epilog.middle.block6627, %middle.block6652, %vec.epilog.middle.block6670, %middle.block6688, %vec.epilog.middle.block6705, %middle.block6722, %vec.epilog.middle.block6739, %middle.block6762, %middle.block6779, %middle.block6795, %middle.block6818, %middle.block6835, %middle.block6851, %middle.block6874, %middle.block6890, %middle.block6905, %middle.block6928, %middle.block6952, %middle.block6968, %middle.block6983, %middle.block7006, %middle.block7030, %middle.block7046, %middle.block7061, %middle.block7084, %middle.block7100, %middle.block7115, %middle.block7140, %vec.epilog.middle.block7158, %middle.block7174, %middle.block7189, %middle.block7214, %vec.epilog.middle.block7232, %middle.block7248, %middle.block7263, %middle.block7288, %vec.epilog.middle.block7306, %middle.block7324, %vec.epilog.middle.block7341, %middle.block7358, %vec.epilog.middle.block7375, %middle.block7400, %vec.epilog.middle.block7418, %middle.block7436, %vec.epilog.middle.block7453, %middle.block7470, %vec.epilog.middle.block7487, %bb.tj, %bb.th, %bb.td, %bb.sz, %bb.sx, %bb.st, %bb.sp, %bb.sn, %bb.sj, %bb.sf, %bb.sd, %bb.rz, %bb.rv, %bb.rt, %bb.rp, %bb.rl, %bb.rj, %bb.rf, %bb.rb, %bb.qz, %bb.qv, %bb.qr, %bb.qp, %bb.ql, %bb.qh, %bb.qf, %bb.qb, %bb.px, %bb.pv, %bb.pr, %bb.pn, %bb.pl, %bb.ph, %bb.pd, %bb.pb, %bb.ox, %bb.ot, %bb.or, %bb.on, %bb.oj, %bb.oh, %bb.od, %bb.nz, %bb.nx, %bb.nt, %bb.np, %bb.nn, %bb.nj, %bb.nf, %bb.nd, %bb.mz, %bb.mv, %bb.mt, %bb.mp, %bb.ml, %bb.mj, %bb.mf, %bb.mb, %bb.lz, %bb.lv, %bb.lr, %bb.lp, %bb.ll, %bb.lh, %bb.lf, %bb.lb, %bb.kx, %bb.kv, %bb.kr, %bb.kn, %bb.kl, %bb.kh, %bb.kd, %bb.kb, %bb.jx, %bb.jt, %bb.jr, %bb.jn, %bb.jj, %bb.jh, %bb.jd, %bb.iz, %bb.ix, %bb.it, %bb.ip, %bb.in, %bb.ij, %bb.if, %bb.id, %bb.hz, %bb.hv, %bb.ht, %bb.hp, %bb.hl, %bb.hj, %bb.hf, %bb.hb, %bb.gz, %bb.gv, %bb.gr, %bb.gp, %bb.gl, %bb.gh, %bb.gf, %bb.gb, %bb.fx, %bb.fv, %bb.fr, %bb.fn, %bb.fl, %bb.fh, %bb.fd, %bb.fb, %bb.ex, %bb.et, %bb.er, %bb.en, %bb.ej, %bb.eh, %bb.ed, %bb.dz, %bb.dx, %bb.dt, %bb.dp, %bb.dn, %bb.dj, %bb.df, %bb.dd, %bb.cz, %bb.cv, %bb.ct, %bb.cp, %bb.cl, %bb.cj, %bb.cf, %bb.cb, %bb.bz, %bb.bv, %bb.br, %bb.bp, %bb.bl, %bb.bh, %bb.bf, %bb.bb, %bb.ax, %bb.av, %bb.ar, %bb.an, %bb.al, %bb.ah, %bb.ad, %bb.ab, %bb.x, %bb.t, %bb.r, %bb.n, %bb.tb, %bb.ob, %bb.jb, %bb.eb
  %i.flg = load i32, ptr %4, align 8, !tbaa !44
  %i.flh = icmp eq i32 %i.flg, 3
  br i1 %i.flh, label %bb.tm, label %bb.tn

bb.tm:                                            ; preds = %.thread
  %i.fli = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.flj = load ptr, ptr %i.fli, align 8, !tbaa !22
  %i.flk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.flj, ptr %i.flk, align 8, !tbaa !22
  br label %bb.tq

bb.tn:                                            ; preds = %.thread
  %i.fll = load i32, ptr %5, align 8, !tbaa !44
  %i.flm = icmp eq i32 %i.fll, 3
  br i1 %i.flm, label %bb.to, label %bb.tp

bb.to:                                            ; preds = %bb.tn
  %i.fln = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.flo = load ptr, ptr %i.fln, align 8, !tbaa !22
  %i.flp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.flo, ptr %i.flp, align 8, !tbaa !22
  br label %bb.tq

bb.tp:                                            ; preds = %bb.tn
  %i.flq = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !13
  %i.flr = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !13
  %i.fls = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z__xform_eval_full, i32 noundef 1127, i64 noundef %i.flq, i64 noundef %i.flr, ptr noundef nonnull @.str.14) #12 ; 0 uses
  br label %bb.tq

bb.tq:                                            ; preds = %bb.tk, %bb.ta, %bb.sq, %bb.sg, %bb.rw, %bb.rm, %bb.rc, %bb.qs, %bb.qi, %bb.py, %bb.po, %bb.pe, %bb.ou, %bb.ok, %bb.oa, %bb.nq, %bb.ng, %bb.mw, %bb.mm, %bb.mc, %bb.ls, %bb.li, %bb.ky, %bb.ko, %bb.ke, %bb.ju, %bb.jk, %bb.ja, %bb.iq, %bb.ig, %bb.hw, %bb.hm, %bb.hc, %bb.gs, %bb.gi, %bb.fy, %bb.fo, %bb.fe, %bb.eu, %bb.ek, %bb.ea, %bb.dq, %bb.dg, %bb.cw, %bb.cm, %bb.cc, %bb.bs, %bb.bi, %bb.ay, %bb.ao, %bb.ae, %bb.u, %bb.a, %bb.c, %bb.e, %bb.to, %bb.tm, %bb.d, %bb.tp, %bb.tl, %bb.j, %bb.h
  %.53 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %bb.tl ], [ 0, %bb.tm ], [ 0, %bb.to ], [ -1, %bb.tp ], [ -1, %bb.u ], [ -1, %bb.ae ], [ -1, %bb.ao ], [ -1, %bb.ay ], [ -1, %bb.bi ], [ -1, %bb.bs ], [ -1, %bb.cc ], [ -1, %bb.cm ], [ -1, %bb.cw ], [ -1, %bb.dg ], [ -1, %bb.dq ], [ -1, %bb.ea ], [ -1, %bb.ek ], [ -1, %bb.eu ], [ -1, %bb.fe ], [ -1, %bb.fo ], [ -1, %bb.fy ], [ -1, %bb.gi ], [ -1, %bb.gs ], [ -1, %bb.hc ], [ -1, %bb.hm ], [ -1, %bb.hw ], [ -1, %bb.ig ], [ -1, %bb.iq ], [ -1, %bb.ja ], [ -1, %bb.jk ], [ -1, %bb.ju ], [ -1, %bb.ke ], [ -1, %bb.ko ], [ -1, %bb.ky ], [ -1, %bb.li ], [ -1, %bb.ls ], [ -1, %bb.mc ], [ -1, %bb.mm ], [ -1, %bb.mw ], [ -1, %bb.ng ], [ -1, %bb.nq ], [ -1, %bb.oa ], [ -1, %bb.ok ], [ -1, %bb.ou ], [ -1, %bb.pe ], [ -1, %bb.po ], [ -1, %bb.py ], [ -1, %bb.qi ], [ -1, %bb.qs ], [ -1, %bb.rc ], [ -1, %bb.rm ], [ -1, %bb.rw ], [ -1, %bb.sg ], [ -1, %bb.sq ], [ -1, %bb.ta ], [ -1, %bb.tk ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.53
}

declare ptr @H5MM_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef ptr @H5Z_xform_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.H5Z_token, align 8          ; 7 uses
  %i.a = load i8, ptr @H5Z_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5Z_init_g, align 1, !tbaa !8
  %i.f = tail call i32 @H5Z__init_package() #12
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge97

._crit_edge97:                                    ; preds = %bb.b
  %.pre = load i8, ptr @H5Z_init_g, align 1, !tbaa !8, !range !10
  %.pre98 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre108 = trunc nuw i8 %.pre to i1
  %.pre109 = trunc nuw i8 %.pre98 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5Z_init_g, align 1, !tbaa !8
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !13
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_create, i32 noundef 1422, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.1) #12 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %._crit_edge97, %bb.a
  %.pre-phi110 = phi i1 [ %.pre109, %._crit_edge97 ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre108, %._crit_edge97 ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi110, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %.thread, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #14 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.p = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_create, i32 noundef 1428, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.5) #12 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.r = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !34
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %.thread139, label %bb.h

.thread139:                                       ; preds = %bb.g
  %i.u = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.v = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_create, i32 noundef 1432, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.6) #12 ; 0 uses
  br label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.x = tail call noalias ptr @H5MM_xstrdup(ptr noundef %0) #12 ; 3 uses
  store ptr %i.x, ptr %i.m, align 8, !tbaa !588
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15 ; 4 uses
  %.not94 = icmp eq i64 %i.z, 0
  br i1 %.not94, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aa = tail call ptr @__ctype_b_loc() #16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !589 ; 4 uses
  %i.ac = add i64 %i.z, -1
  %i.ad = load i8, ptr %0, align 1, !tbaa !22
  %i.ae = sext i8 %i.ad to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !23
  %i.ah = lshr i16 %i.ag, 10
  %.lobit = and i16 %i.ah, 1
  %spec.select = zext nneg i16 %.lobit to i32     ; 2 uses
  %.not119 = icmp eq i64 %i.z, 1
  br i1 %.not119, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 1, %.lr.ph ] ; 5 uses
  %.05693 = phi i32 [ %.157, %bb.n ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !22  ; 2 uses
  %i.ak = sext i8 %i.aj to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !23
  %i.an = and i16 %i.am, 1024
  %.not71 = icmp eq i16 %i.an, 0
  br i1 %.not71, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.peel.next
  %i.ao = icmp ugt i64 %i.ac, %indvars.iv
  br i1 %i.ao, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  switch i8 %i.aj, label %bb.m [
    i8 69, label %bb.k
    i8 101, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ap = add i64 %indvars.iv, 4294967295
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22  ; 2 uses
  %i.at = sext i8 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !23
  %i.aw = and i16 %i.av, 2048
  %.not73 = icmp ne i16 %i.aw, 0
  %i.ax = icmp eq i8 %i.as, 46
  %or.cond82 = or i1 %i.ax, %.not73
  br i1 %or.cond82, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = add nuw i64 %indvars.iv, 1
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !22  ; 2 uses
  %i.bc = sext i8 %i.bb to i64
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !23
  %.fr90 = freeze i16 %i.be
  %i.bf = and i16 %.fr90, 2048
  %.not74.not = icmp eq i16 %i.bf, 0
  br i1 %.not74.not, label %switch.early.test, label %bb.n

switch.early.test:                                ; preds = %bb.l
  switch i8 %i.bb, label %bb.m [
    i8 45, label %bb.n
    i8 43, label %bb.n
  ]

bb.m:                                             ; preds = %switch.early.test, %bb.k, %bb.j, %bb.i
  %i.bg = add i32 %.05693, 1
  br label %bb.n

bb.n:                                             ; preds = %switch.early.test, %switch.early.test, %bb.l, %.peel.next, %bb.m
  %.157 = phi i32 [ %.05693, %switch.early.test ], [ %.05693, %.peel.next ], [ %i.bg, %bb.m ], [ %.05693, %bb.l ], [ %.05693, %switch.early.test ] ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %i.bh = and i64 %indvars.iv.next, 4294967295
  %i.bi = icmp ugt i64 %i.z, %i.bh
  br i1 %i.bi, label %.peel.next, label %._crit_edge, !llvm.loop !591

._crit_edge:                                      ; preds = %bb.n, %.lr.ph
  %.056.lcssa = phi i32 [ %spec.select, %.lr.ph ], [ %.157, %bb.n ] ; 3 uses
  %.not = icmp eq i32 %.056.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bj = zext i32 %.056.lcssa to i64
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.bk) #14 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !38
  %i.bn = icmp eq ptr %i.bl, null
  br i1 %i.bn, label %bb.p, label %._crit_edge.thread

bb.p:                                             ; preds = %bb.o
  %i.bo = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.bp = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.bq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_create, i32 noundef 1462, i64 noundef %i.bo, i64 noundef %i.bp, ptr noundef nonnull @.str.8) #12 ; 0 uses
  br label %.thread123

._crit_edge.thread:                               ; preds = %.preheader, %bb.o, %._crit_edge
  %.056.lcssa122 = phi i32 [ 0, %._crit_edge ], [ %.056.lcssa, %bb.o ], [ 0, %.preheader ] ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.br = load i8, ptr @H5Z_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = xor i1 %i.bu, true
  %i.bw = select i1 %i.bs, i1 true, i1 %i.bv
  br i1 %i.bw, label %H5Z__xform_parse.exit, label %H5Z__xform_parse.exit.thread, !prof !12

H5Z__xform_parse.exit.thread:                     ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.q

H5Z__xform_parse.exit:                            ; preds = %._crit_edge.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %0, ptr %i.bx, align 8, !tbaa !593
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %0, ptr %i.by, align 8, !tbaa !595
  store ptr %0, ptr %1, align 8, !tbaa !596
  %i.bz = call fastcc ptr @H5Z__parse_expression(ptr noundef %1, ptr noundef nonnull %i.r) ; 4 uses
  tail call fastcc void @H5Z__xform_reduce_tree(ptr noundef %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !15
  %i.cb = icmp eq ptr %i.bz, null
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %H5Z__xform_parse.exit.thread, %H5Z__xform_parse.exit
  %i.cc = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.cd = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.ce = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_create, i32 noundef 1471, i64 noundef %i.cc, i64 noundef %i.cd, ptr noundef nonnull @.str.9) #12 ; 0 uses
  br label %.thread123

bb.r:                                             ; preds = %H5Z__xform_parse.exit
  %i.cf = load i32, ptr %i.r, align 8, !tbaa !35
  %.not70 = icmp eq i32 %.056.lcssa122, %i.cf
  br i1 %.not70, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !13
  %i.ch = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !13
  %i.ci = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_create, i32 noundef 1477, i64 noundef %i.cg, i64 noundef %i.ch, ptr noundef nonnull @.str.10) #12 ; 0 uses
  tail call fastcc void @H5Z__xform_destroy_parse_tree(ptr noundef nonnull %i.bz)
  br label %.thread123

.thread123:                                       ; preds = %bb.s, %bb.q, %bb.p
  %.2128 = phi i32 [ %.056.lcssa122, %bb.s ], [ 1, %bb.p ], [ %.056.lcssa122, %bb.q ]
  %i.cj = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.x) #12 ; 0 uses
  %.not77 = icmp eq i32 %.2128, 0
  br i1 %.not77, label %.thread130, label %bb.t

bb.t:                                             ; preds = %.thread123
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !38 ; 2 uses
  %.not78 = icmp eq ptr %i.cl, null
  br i1 %.not78, label %.thread130, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.cl) #12 ; 0 uses
  br label %.thread130

bb.v:                                             ; preds = %bb.h
  %i.cn = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.co = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.cp = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_create, i32 noundef 1437, i64 noundef %i.cn, i64 noundef %i.co, ptr noundef nonnull @.str.7) #12 ; 0 uses
  br label %.thread130

.thread130:                                       ; preds = %.thread123, %bb.v, %bb.t, %bb.u
  %i.cq = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.r) #12 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.thread139, %.thread130
  %i.cr = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.m) #12 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.c, %bb.r, %bb.w, %bb.d
  %.1 = phi ptr [ null, %bb.w ], [ null, %bb.c ], [ null, %bb.d ], [ %i.m, %bb.r ], [ null, %bb.f ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare noalias ptr @H5MM_xstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @H5Z__xform_destroy_parse_tree(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5Z_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  %i.g = icmp ne ptr %0, null
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.b, label %common.ret5, !prof !597

common.ret5:                                      ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !46
  tail call fastcc void @H5Z__xform_destroy_parse_tree(ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  tail call fastcc void @H5Z__xform_destroy_parse_tree(ptr noundef %i.j)
  %i.k = tail call ptr @H5MM_xfree(ptr noundef nonnull %0) #12 ; 0 uses
  br label %common.ret5
}

; Function Attrs: nounwind uwtable
define noundef i32 @H5Z_xform_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5Z_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  %i.g = icmp ne ptr %0, null
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.b, label %bb.e, !prof !597

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  tail call fastcc void @H5Z__xform_destroy_parse_tree(ptr noundef %i.i)
  %i.j = load ptr, ptr %0, align 8, !tbaa !588
  %i.k = tail call ptr @H5MM_xfree(ptr noundef %i.j) #12 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !35
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = tail call ptr @H5MM_xfree(ptr noundef %i.p) #12 ; 0 uses
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.m, %bb.b ]
  %i.s = tail call ptr @H5MM_xfree(ptr noundef %i.r) #12 ; 0 uses
  %i.t = tail call ptr @H5MM_xfree(ptr noundef nonnull %0) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Z_xform_copy(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5Z_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5Z_init_g, align 1, !tbaa !8
  %i.f = tail call i32 @H5Z__init_package() #12
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge58

._crit_edge58:                                    ; preds = %bb.b
  %.pre = load i8, ptr @H5Z_init_g, align 1, !tbaa !8, !range !10
  %.pre59 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre60 = trunc nuw i8 %.pre to i1
  %.pre61 = trunc nuw i8 %.pre59 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5Z_init_g, align 1, !tbaa !8
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !13
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_copy, i32 noundef 1561, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.1) #12 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %._crit_edge58, %bb.a
  %.pre-phi62 = phi i1 [ %.pre61, %._crit_edge58 ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre60, %._crit_edge58 ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi62, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %.thread, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !598    ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #14 ; 8 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.q = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_copy, i32 noundef 1566, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.5) #12 ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !588
  %i.t = tail call noalias ptr @H5MM_xstrdup(ptr noundef %i.s) #12 ; 4 uses
  store ptr %i.t, ptr %i.n, align 8, !tbaa !588
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.w = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.x = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_copy, i32 noundef 1571, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.7) #12 ; 0 uses
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.y = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !34
  %i.aa = icmp eq ptr %i.y, null
  br i1 %i.aa, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #15 ; 2 uses
  %.not56 = icmp eq i64 %i.ab, 0
  br i1 %.not56, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = tail call ptr @__ctype_b_loc() #16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !589
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.af = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.ag = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_copy, i32 noundef 1576, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.6) #12 ; 0 uses
  br label %bb.s

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.03855 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.l ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !22
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !23
  %i.am = lshr i16 %i.al, 10
  %i.an = and i16 %i.am, 1
  %i.ao = zext nneg i16 %i.an to i32
  %spec.select = add i32 %.03855, %i.ao           ; 4 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %i.ap = and i64 %indvars.iv.next, 4294967295
  %i.aq = icmp ugt i64 %i.ab, %i.ap
  br i1 %i.aq, label %bb.l, label %._crit_edge, !llvm.loop !600

._crit_edge:                                      ; preds = %bb.l
  %.not46 = icmp eq i32 %spec.select, 0
  br i1 %.not46, label %._crit_edge.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ar = zext i32 %spec.select to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.as) #14 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !38
  %i.av = icmp eq ptr %i.at, null
  br i1 %i.av, label %bb.n, label %._crit_edge.thread

bb.n:                                             ; preds = %bb.m
  %i.aw = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.ax = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.ay = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_copy, i32 noundef 1588, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull @.str.8) #12 ; 0 uses
  br label %bb.s

._crit_edge.thread:                               ; preds = %.preheader, %bb.m, %._crit_edge
  %.038.lcssa71 = phi i32 [ 0, %._crit_edge ], [ %spec.select, %bb.m ], [ 0, %.preheader ]
  store i32 0, ptr %i.y, align 8, !tbaa !35
  %i.az = load ptr, ptr %0, align 8, !tbaa !598
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15
  %i.bc = tail call fastcc ptr @H5Z__xform_copy_tree(ptr noundef %i.bb, ptr noundef nonnull %i.y) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !15
  %i.be = icmp eq ptr %i.bc, null
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.thread
  %i.bf = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !13
  %i.bg = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !13
  %i.bh = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_copy, i32 noundef 1598, i64 noundef %i.bf, i64 noundef %i.bg, ptr noundef nonnull @.str.11) #12 ; 0 uses
  br label %bb.s

bb.p:                                             ; preds = %._crit_edge.thread
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !35
  %.not47 = icmp eq i32 %.038.lcssa71, %i.bj
  br i1 %.not47, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !13
  %i.bl = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !13
  %i.bm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z_xform_copy, i32 noundef 1604, i64 noundef %i.bk, i64 noundef %i.bl, ptr noundef nonnull @.str.10) #12 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store ptr %i.n, ptr %0, align 8, !tbaa !598
  br label %.thread

bb.s:                                             ; preds = %bb.i, %bb.k, %bb.n, %bb.o, %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !15 ; 2 uses
  %.not49 = icmp eq ptr %i.bo, null
  br i1 %.not49, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @H5Z__xform_destroy_parse_tree(ptr noundef nonnull %i.bo)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bp = load ptr, ptr %i.n, align 8, !tbaa !588 ; 2 uses
  %.not50 = icmp eq ptr %i.bp, null
  br i1 %.not50, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.bp) #12 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.br = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.n) #12 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.c, %bb.e, %bb.r, %bb.w, %bb.d
  %.1 = phi i32 [ -1, %bb.w ], [ -1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.r ], [ -1, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @H5Z__xform_copy_tree(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5Z_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %common.ret15, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20
  switch i32 %i.h, label %bb.an [
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 6, label %bb.l
    i32 4, label %bb.s
    i32 5, label %bb.z
    i32 7, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.l = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z__xform_copy_tree, i32 noundef 1221, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.28) #12 ; 0 uses
  br label %common.ret15

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 1, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.p, ptr %i.q, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %common.ret15

bb.f:                                             ; preds = %bb.b
  %i.r = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.u = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z__xform_copy_tree, i32 noundef 1231, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.28) #12 ; 0 uses
  br label %common.ret15

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i32 2, ptr %i.w, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load double, ptr %i.x, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store double %i.y, ptr %i.z, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %common.ret15

bb.i:                                             ; preds = %bb.b
  %i.aa = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.ad = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.ae = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z__xform_copy_tree, i32 noundef 1241, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.28) #12 ; 0 uses
  br label %common.ret15

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i32 3, ptr %i.af, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = load i32, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !22
  %i.am = add i32 %i.ai, 1
  store i32 %i.am, ptr %1, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %common.ret15

bb.l:                                             ; preds = %bb.b
  %i.an = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 7 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.aq = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.ar = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Z__xform_copy_tree, i32 noundef 1252, i64 noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull @.str.28) #12 ; 0 uses
  br label %common.ret15

bb.n:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 6, ptr %i.as, align 8, !tbaa !20
  %i.at = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %.not107 = icmp eq ptr %i.at, null
  br i1 %.not107, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = tail call fastcc ptr @H5Z__xform_copy_tree(ptr noundef nonnull %i.at, ptr noundef %1)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
end_hunk_0
